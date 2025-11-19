uint64_t HKIntervalTree<double>::_enumeratePreOrder(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      std::function<void ()(HKIntervalTreeNode<double> *)>::operator()(a3, v4);
      result = HKIntervalTree<double>::_enumeratePreOrder(v5, *(v4 + 24), a3);
      v4 = *(v4 + 32);
    }

    while (v4);
  }

  return result;
}

uint64_t std::function<void ()(HKIntervalTreeNode<double> *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(HKIntervalTreeNode<double> *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__CFString *HKStringFromOntologyLocalizedEducationContentSectionType(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E737D408[a1];
  }

  return v2;
}

void sub_191A53838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HKDateMid(void *a1, void *a2)
{
  v3 = a2;
  [a1 timeIntervalSinceReferenceDate];
  v5 = v4;
  [v3 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = MEMORY[0x1E695DF00];

  return [v8 dateWithTimeIntervalSinceReferenceDate:(v5 + v7) * 0.5];
}

uint64_t HKSleepTestMorningIndex(void *a1)
{
  v1 = HKSleepTestDate(a1);
  v2 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithCupertinoTimeZone];
  v3 = [v1 hk_morningIndexWithCalendar:v2];

  return v3;
}

id HKSleepTestDate(void *a1)
{
  v1 = HKSleepTestDate_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    HKSleepTestDate_cold_1();
  }

  v3 = [HKSleepTestDate_dateFormatter dateFromString:v2];

  return v3;
}

void __HKSleepTestDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = HKSleepTestDate_dateFormatter;
  HKSleepTestDate_dateFormatter = v0;

  [HKSleepTestDate_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
  v2 = HKSleepTestDate_dateFormatter;
  v4 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithCupertinoTimeZone];
  v3 = [v4 timeZone];
  [v2 setTimeZone:v3];
}

id HKSleepTestDateWithSeconds(void *a1)
{
  v1 = HKSleepTestDateWithSeconds_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    HKSleepTestDateWithSeconds_cold_1();
  }

  v3 = [HKSleepTestDateWithSeconds_dateFormatter dateFromString:v2];

  return v3;
}

void __HKSleepTestDateWithSeconds_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = HKSleepTestDateWithSeconds_dateFormatter;
  HKSleepTestDateWithSeconds_dateFormatter = v0;

  [HKSleepTestDateWithSeconds_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v2 = HKSleepTestDateWithSeconds_dateFormatter;
  v4 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithCupertinoTimeZone];
  v3 = [v4 timeZone];
  [v2 setTimeZone:v3];
}

id HKSleepTestDateInterval(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AB80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = HKSleepTestDate(v5);

  v8 = HKSleepTestDate(v4);

  v9 = [v6 initWithStartDate:v7 endDate:v8];

  return v9;
}

id HKSleepTestDateIntervalWithSeconds(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AB80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = HKSleepTestDateWithSeconds(v5);

  v8 = HKSleepTestDateWithSeconds(v4);

  v9 = [v6 initWithStartDate:v7 endDate:v8];

  return v9;
}

id HKSleepTestSegment(void *a1, void *a2, uint64_t a3)
{
  v4 = HKSleepTestDateInterval(a1, a2);
  v5 = [HKSleepPeriodSegment sleepPeriodSegmentWithDateInterval:v4 category:a3];

  return v5;
}

id HKAppleSleepTrackingTestSegment(void *a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = HKSleepTestDateInterval(a1, a2);
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [HKSleepPeriodSegment sleepPeriodSegmentWithDateInterval:v2 sampleIntervals:v3 category:_HKCategoryValueSleepAnalysisDefaultAsleepValue() containsAppleSleepTrackingData:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id HKSleepTestPeriod(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = HKSleepTestDateInterval(a1, a2);
  v7 = [HKSleepPeriod sleepPeriodWithDateInterval:v6 segments:v5];

  return v7;
}

id HKSleepTestDaySummary(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (v14)
  {
    v17 = +[HKUnit hourUnit];
    [v14 doubleValue];
    v18 = [HKQuantity quantityWithUnit:v17 doubleValue:?];
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = +[HKUnit hourUnit];
    [v15 doubleValue];
    v20 = [HKQuantity quantityWithUnit:v19 doubleValue:?];
  }

  else
  {
    v20 = 0;
  }

  v21 = HKSleepTestDateInterval(v29, v28);
  v22 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithCupertinoTimeZone];
  v23 = [HKSleepDaySummary daySummaryWithMorningIndex:a1 dateInterval:v21 calendar:v22 periods:v27 schedules:v26 sleepDurationGoal:v18 minimumRecommendedSleepDurationGoal:v20 creationInterval:v16];

  return v23;
}

id HKSleepTestSleepSampleWithValueAndMetadata(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [HKCategoryType _categoryTypeWithCode:63];
  v11 = [HKCategorySample categorySampleWithType:v10 value:a1 startDate:v9 endDate:v8 metadata:v7];

  return v11;
}

id HKTestSleepSampleWithValueAndSource(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = HKSleepTestSleepSampleWithValueAndMetadata(a1, a2, a3, 0);
  [v8 _setSourceRevision:v7];

  return v8;
}

id HKSleepTestAsleepSampleWithSourceRevision(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = _HKCategoryValueSleepAnalysisDefaultAsleepValue();
  v9 = HKSleepTestSleepSampleWithValueAndMetadata(v8, v7, v6, 0);

  if (v5)
  {
    [v9 _setSourceRevision:v5];
  }

  return v9;
}

id HKSleepTestGoalSample(void *a1, double a2)
{
  v3 = a1;
  v4 = +[(HKObjectType *)HKQuantityType];
  v5 = +[HKUnit hourUnit];
  v6 = [HKQuantity quantityWithUnit:v5 doubleValue:a2];
  v7 = [HKQuantitySample quantitySampleWithType:v4 quantity:v6 startDate:v3 endDate:v3];

  return v7;
}

id HKSleepTestScheduleWithMetadata(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = MEMORY[0x1E695DF10];
  v10 = a5;
  v11 = a1;
  v12 = [v9 hk_componentsWithHour:a4 minute:0];
  v13 = [MEMORY[0x1E695DF10] hk_componentsWithHour:a3 minute:0];
  v14 = [HKSleepSchedule sleepScheduleWithDate:v11 weekdays:a2 wakeTimeComponents:v12 bedTimeComponents:v13 overrideDayIndex:0 device:0 metadata:v10];

  return v14;
}

id HKSleepTestOverrideSchedule(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E695DF10];
  v8 = a1;
  v9 = [v7 hk_componentsWithHour:a4 minute:0];
  v10 = [MEMORY[0x1E695DF10] hk_componentsWithHour:a3 minute:0];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v12 = [HKSleepSchedule sleepScheduleWithDate:v8 weekdays:0 wakeTimeComponents:v9 bedTimeComponents:v10 overrideDayIndex:v11 device:0 metadata:0];

  return v12;
}

id HKCreationInterval(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 hk_map:&__block_literal_global_30];
    v3 = objc_alloc(MEMORY[0x1E696AB80]);
    v4 = [v2 firstObject];
    v5 = [v2 lastObject];
    v6 = [v3 initWithStartDate:v4 endDate:v5];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB80]);
  }

  return v6;
}

id HKSleepCopyViaSecureCoding(void *a1)
{
  v1 = MEMORY[0x1E696ACC8];
  v2 = a1;
  v3 = [[v1 alloc] initRequiringSecureCoding:1];
  [v3 encodeObject:v2 forKey:@"key"];
  [v3 finishEncoding];
  v4 = objc_alloc(MEMORY[0x1E696ACD0]);
  v5 = [v3 encodedData];
  v10 = 0;
  v6 = [v4 initForReadingFromData:v5 error:&v10];

  v7 = objc_opt_class();
  v8 = [v6 decodeObjectOfClass:v7 forKey:@"key"];
  [v6 finishDecoding];

  return v8;
}

uint64_t HKCodablePluginSharableModelDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___HKCodablePluginSharableModelData__sourceLocaleIdentifier;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___HKCodablePluginSharableModelData__userData;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR___HKCodablePluginSharableModelData__sourceTimeZoneIdentifier;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

unint64_t HKFeatureAvailabilityOnboardingIneligibilityReasonsForRescindedStatus(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 0;
  }

  else
  {
    return a1 << 6;
  }
}

void sub_191A5993C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__19(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_191A59FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HKHealthWrapCodableMessageHeaderReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 != 6)
          {
            if (v13 != 7)
            {
LABEL_73:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_90;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              v50 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v50 & 0x7F) << v16;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_78:
            v45 = 56;
            goto LABEL_87;
          }

          v14 = PBReaderReadData();
          v15 = 16;
        }

        else
        {
          if (v13 == 8)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              v49 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v49 & 0x7F) << v30;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v32;
            }

LABEL_86:
            v45 = 60;
LABEL_87:
            *(a1 + v45) = v22;
            goto LABEL_90;
          }

          if (v13 == 9)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 76) |= 8u;
            while (1)
            {
              v51 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v51 & 0x7F) << v37;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                LOBYTE(v43) = 0;
                goto LABEL_89;
              }
            }

            v43 = (v39 != 0) & ~[a2 hasError];
LABEL_89:
            *(a1 + 72) = v43;
            goto LABEL_90;
          }

          if (v13 != 10)
          {
            goto LABEL_73;
          }

          v14 = PBReaderReadData();
          v15 = 48;
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 76) |= 1u;
          while (1)
          {
            v48 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_82:
          *(a1 + 8) = v29;
          goto LABEL_90;
        }

        if (v13 != 2)
        {
          goto LABEL_73;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 32;
            break;
          case 4:
            v14 = PBReaderReadData();
            v15 = 64;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          default:
            goto LABEL_73;
        }
      }

      v36 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_90:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_191A5EBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKHealthRecordsAccountsEventFromNSNumber(void *a1)
{
  result = [a1 integerValue];
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

__CFString *NSStringFromHKHealthRecordsAccountsEvent(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E737D7E8[a1 - 1];
  }
}

void sub_191A62B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringForSignedClinicalDataRecordSignatureStatus(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unrecognized status code";
  }

  else
  {
    return off_1E737DB88[a1];
  }
}

__CFString *NSStringForSignedClinicalDataSourceType(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"EU DCC";
  }

  if (a1 == 1)
  {
    return @"SMART Health Card";
  }

  else
  {
    return v1;
  }
}

void sub_191A674A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  binarysample::Electrocardiogram::~Electrocardiogram(&a9);

  binarysample::Electrocardiogram::~Electrocardiogram(&a15);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::__emplace_unique_key_args<binarysample::ElectrocardiogramLead_Name,std::piecewise_construct_t const&,std::tuple<binarysample::ElectrocardiogramLead_Name const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      binarysample::ElectrocardiogramLead::~ElectrocardiogramLead((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<binarysample::ElectrocardiogramLead>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<binarysample::ElectrocardiogramLead>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::destroy(a1, a2[1]);
    binarysample::ElectrocardiogramLead::~ElectrocardiogramLead((a2 + 5));

    operator delete(a2);
  }
}

void sub_191A68188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191A691C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _HKCreateAuthorizationPresentationController()
{
  v10 = *MEMORY[0x1E69E9840];
  if (NSClassFromString(&cfstr_Uiapplication.isa))
  {
    v7[0] = 0;
    if (!HealthUILibraryCore_frameworkLibrary_0)
    {
      v7[1] = MEMORY[0x1E69E9820];
      v7[2] = 3221225472;
      v7[3] = __HealthUILibraryCore_block_invoke_0;
      v7[4] = &__block_descriptor_40_e5_v8__0l;
      v7[5] = v7;
      v8 = xmmword_1E737DCB8;
      v9 = 0;
      HealthUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    }

    if (!HealthUILibraryCore_frameworkLibrary_0)
    {
      _HKCreateAuthorizationPresentationController_cold_3(v7);
    }

    if (v7[0])
    {
      free(v7[0]);
    }

    v0 = NSClassFromString(&cfstr_Hkauthorizatio_0.isa);
    if (v0)
    {
      v1 = v0;
      v2 = &unk_1F06F7538;
      if (([(objc_class *)v1 conformsToProtocol:v2]& 1) != 0)
      {
        v3 = objc_alloc_init(v1);
        goto LABEL_18;
      }

      _HKInitializeLogging();
      v4 = HKLogAuthorization();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        _HKCreateRecalibrateEstimatesPresentationController_cold_1(v1, v2, v4);
      }
    }

    else
    {
      _HKInitializeLogging();
      v2 = HKLogAuthorization();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        _HKCreateAuthorizationPresentationController_cold_2(v2);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v2 = HKLogAuthorization();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _HKCreateRecalibrateEstimatesPresentationController_cold_4(v2);
    }
  }

  v3 = 0;
LABEL_18:

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __HealthUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *HKDataCollectionTypeToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E737DCD0[a1];
  }

  return v2;
}

id HKSleepDaySummarySampleTypes()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierSleepAnalysis"];
  v7[0] = v0;
  v1 = +[HKObjectType sleepScheduleType];
  v7[1] = v1;
  v2 = +[HKObjectType sleepDurationGoalType];
  v7[2] = v2;
  v3 = [(HKObjectType *)HKCharacteristicType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id HKSleepDurationGoalAdultRecommendation()
{
  v0 = +[HKUnit hourUnit];
  v1 = [HKQuantity quantityWithUnit:v0 doubleValue:7.0];

  return v1;
}

id HKSleepDurationGoalChildRecommendation()
{
  v0 = +[HKUnit hourUnit];
  v1 = [HKQuantity quantityWithUnit:v0 doubleValue:8.0];

  return v1;
}

void sub_191A6DF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HKHealthRecordsStoreServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7598];
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_remote_fetchClinicalConnectedAccountsWithCompletion_ argumentIndex:0 ofReply:1];
  v4 = [MEMORY[0x1E696ACB0] hk_JSONObjectSecureCodingClasses];
  [v0 setClasses:v4 forSelector:sel_remote_fetchFHIRJSONDocumentWithAccountIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_191A716AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191A71A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_0_14(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id _HKCreateActivityForSampleType(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69636A8];
  v2 = a1;
  v3 = [[v1 alloc] initWithActivityType:@"com.apple.health.dataType"];
  [v3 setEligibleForHandoff:1];
  [v3 setEligibleForSearch:0];
  [v3 setEligibleForPublicIndexing:0];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:@"HKSampleTypeActivityKey"];
  [v3 setRequiredUserInfoKeys:v4];
  v5 = MEMORY[0x1E696AD98];
  v6 = [v2 code];

  v7 = [v5 numberWithInteger:v6];
  v11 = @"HKSampleTypeActivityKey";
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v3 setUserInfo:v8];

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

id _HKCreateActivityForCHRAPIAppSettings(void *a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69636A8];
  v2 = a1;
  v3 = [[v1 alloc] initWithActivityType:@"com.apple.health.plugin"];
  [v3 setEligibleForHandoff:0];
  [v3 setEligibleForPrediction:0];
  [v3 setEligibleForPublicIndexing:0];
  [v3 setEligibleForSearch:0];
  v11[0] = @"bundleIdentifier";
  v11[1] = @"bundleName";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
  [v3 setRequiredUserInfoKeys:v5];

  v9[0] = @"bundleIdentifier";
  v9[1] = @"bundleName";
  v10[0] = v2;
  v10[1] = @"HealthRecords";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  [v3 setUserInfo:v6];
  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

id _HKCreateURLForSampleType(void *a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AF20];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setScheme:@"x-apple-health"];
  [v3 setHost:@"SampleType"];
  v4 = [v2 identifier];

  v5 = MEMORY[0x1E696AEC0];
  v11[0] = @"/";
  v11[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v5 pathWithComponents:v6];

  [v3 setPath:v7];
  v8 = [v3 URL];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id _HKSampleTypeFromURL(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = [v1 scheme];
  v3 = [v1 host];
  v4 = [v1 path];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 pathComponents];
  }

  else
  {
    v6 = 0;
  }

  if ([v2 isEqualToString:@"x-apple-health"] && (objc_msgSend(v3, "isEqualToString:", @"SampleType") ? (v7 = v6 == 0) : (v7 = 1), !v7 && objc_msgSend(v6, "count") == 2 && (objc_msgSend(v6, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"/"), v8, v9)))
  {
    v10 = [v6 objectAtIndexedSubscript:1];
    v11 = [HKObjectType _typeWithIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

__CFString *HKStringFromOntologyShardSettings(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Manual Override"];
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"[%@]", v5];
  }

  else
  {
    v6 = @"none";
  }

  return v6;
}

__CFString *HKStringFromOntologyShardState(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E737E498[a1];
  }

  return v2;
}

__CFString *HKStringFromOntologyShardVersion(uint64_t a1)
{
  if (a1 == -1)
  {
    v2 = @"Undetermined";
  }

  else if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v%ld", a1];
  }

  else
  {
    v2 = @"None";
  }

  return v2;
}

__CFString *HKStringFromOntologyFeatureRequestOptions(uint64_t a1)
{
  v1 = @"Mark Not Required";
  if (a1)
  {
    v2 = a1;
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = v3;
    if (v2)
    {
      v5 = @"Mark Required";
    }

    else
    {
      v5 = @"Mark Not Required";
    }

    [v3 addObject:v5];
    if ((v2 & 2) != 0)
    {
      [v4 addObject:@"First Launch"];
    }

    if ((v2 & 4) != 0)
    {
      [v4 addObject:@"User Initiated"];
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = [v4 componentsJoinedByString:{@", "}];
    v1 = [v6 stringWithFormat:@"[%@]", v7];
  }

  return v1;
}

__CFString *HKStringFromHKOntologyPruneOptions(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Force"];
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"[%@]", v5];
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

__CFString *HKStringFromOntologyUpdateReason(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown reason (%zd)", a1];
  }

  else
  {
    v2 = off_1E737E4B8[a1];
  }

  return v2;
}

uint64_t HKIsKnownOntologyShardIdentifier(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = @"manifest";
  v8 = @"CoreMeds";
  v9 = @"Interactions";
  v10 = @"MedsEducation";
  v11 = @"CHR";
  v12 = @"MedsScanning";
  v13 = @"Universal";
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v7 count:7];
  v4 = [v3 containsObject:{v2, v7, v8, v9, v10, v11, v12, v13, v14}];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

__CFString *HKOntologyShardSchemaTypeForShardIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"manifest"])
  {
    v2 = @"manifestCSV";
  }

  else if ([v1 isEqualToString:@"CoreMeds"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Interactions") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"MedsEducation") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"CHR") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"MedsDemoData") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Universal"))
  {
    v2 = @"MercuryZipTSV";
  }

  else if ([v1 isEqualToString:@"MedsScanning"])
  {
    v2 = @"MedsScanningResourcesZip";
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogHealthOntology();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      HKOntologyShardSchemaTypeForShardIdentifier_cold_1(v1, v4);
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKOntologyShardSchemaType  _Nonnull HKOntologyShardSchemaTypeForShardIdentifier(HKOntologyShardIdentifier  _Nonnull __strong)"];
    [v5 handleFailureInFunction:v6 file:@"HKOntologyShardRegistryEntry.m" lineNumber:828 description:@"Unreachable code has been executed"];

    v2 = &stru_1F05FF230;
  }

  return v2;
}

uint64_t HKCurrentSchemaVersionForShardIdentifier(void *a1)
{
  v1 = a1;
  v2 = HKOntologyShardSchemaTypeForShardIdentifier(v1);
  if ([v2 isEqualToString:@"manifestCSV"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"MercuryZipTSV"])
  {
    if ([v1 isEqualToString:@"MedsEducation"])
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }
  }

  else if ([v2 isEqualToString:@"MedsScanningResourcesZip"])
  {
    v3 = 2;
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogHealthOntology();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      HKCurrentSchemaVersionForShardIdentifier_cold_1(v1, v4);
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger HKCurrentSchemaVersionForShardIdentifier(HKOntologyShardIdentifier  _Nonnull __strong)"];
    [v5 handleFailureInFunction:v6 file:@"HKOntologyShardRegistryEntry.m" lineNumber:857 description:@"Unreachable code has been executed"];

    v3 = -1;
  }

  return v3;
}

__CFString *HKDefaultOntologyServerBaseURL()
{
  v0 = +[_HKBehavior sharedBehavior];
  if ([v0 isAppleInternalInstall])
  {
    v1 = @"https://ontology-carry.health.apple.com";
  }

  else
  {
    v1 = @"https://ontology.health.apple.com";
  }

  v2 = v1;

  return v1;
}

id HKFeatureAvailabilityHealthDataRequirementStoreClientInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AE848];
  v1 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v2 = HKAllFeatureAvailabilityRequirementTypes();
  v3 = [v1 setByAddingObjectsFromArray:v2];

  [v0 setClasses:v3 forSelector:sel_client_featureAvailabilityRequirement_didUpdateSatisfaction_ argumentIndex:0 ofReply:0];

  return v0;
}

id HKFeatureAvailabilityHealthDataRequirementStoreServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F76B8];
  v1 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v2 = HKAllFeatureAvailabilityRequirementTypes();
  v3 = [v1 setByAddingObjectsFromArray:v2];

  [v0 setClasses:v3 forSelector:sel_remote_getEvaluationOfRequirements_completion_ argumentIndex:0 ofReply:0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = HKAllFeatureAvailabilityRequirementTypes();
  v8 = [v6 setByAddingObjectsFromArray:v7];

  [v0 setClasses:v8 forSelector:sel_remote_getEvaluationOfRequirements_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v3 forSelector:sel_remote_startObservingChangesInRequirements_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_0_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_191A80A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *HKStateOfMindValenceClassificationForValence(double a1)
{
  v2 = [HKStateOfMind validateValence:?];

  if (v2)
  {
    return 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __HKStateOfMindValenceClassificationForValence_block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_d16__0q8l;
  aBlock[4] = 0x3FD2492492492492;
  v4 = _Block_copy(aBlock);
  if (v4[2](v4, 1) <= a1)
  {
    if (v4[2](v4, 2) <= a1)
    {
      if (v4[2](v4, 3) <= a1)
      {
        if (v4[2](v4, 4) >= a1)
        {
          v3 = &unk_1F0683B70;
        }

        else if (v4[2](v4, 5) >= a1)
        {
          v3 = &unk_1F0683B88;
        }

        else if (v4[2](v4, 6) >= a1)
        {
          v3 = &unk_1F0683BA0;
        }

        else
        {
          v3 = &unk_1F0683BB8;
        }
      }

      else
      {
        v3 = &unk_1F0683B58;
      }
    }

    else
    {
      v3 = &unk_1F0683B40;
    }
  }

  else
  {
    v3 = &unk_1F0683B28;
  }

  return v3;
}

void *HKStateOfMindLabelOptionsForValence(double a1)
{
  v1 = HKStateOfMindValenceClassificationForValence(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
    if ((v3 - 4) > 3)
    {
      v4 = &unk_1F06869D0;
    }

    else
    {
      v4 = qword_1E737E7B0[v3 - 4];
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void *HKStateOfMindDomainsInCategory(uint64_t a1)
{
  v1 = &unk_1F0686A18;
  if (a1 == 1)
  {
    v1 = &unk_1F0686A30;
  }

  if (a1 == 2)
  {
    return &unk_1F0686A48;
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromHKStateOfMindReflectiveInterval(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 2)
  {
    v1 = @"daily";
  }

  if (a1 == 1)
  {
    return @"momentary";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromHKStateOfMindLabel(uint64_t a1)
{
  if ((a1 - 1) > 0x25)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E737E7D0[a1 - 1];
  }
}

__CFString *NSStringFromHKStateOfMindDomain(uint64_t a1)
{
  if ((a1 - 1) > 0x11)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E737E900[a1 - 1];
  }
}

__CFString *NSStringFromHKStateOfMindValenceClassification(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E737E990[a1 - 1];
  }
}

void *HKStateOfMindReflectiveIntervalFromNSString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"momentary"])
  {
    v2 = &unk_1F0683B28;
  }

  else if ([v1 isEqualToString:@"daily"])
  {
    v2 = &unk_1F0683B40;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *HKStateOfMindLabelFromNSString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"amazed"])
  {
    v2 = &unk_1F0683B28;
  }

  else if ([v1 isEqualToString:@"amused"])
  {
    v2 = &unk_1F0683B40;
  }

  else if ([v1 isEqualToString:@"angry"])
  {
    v2 = &unk_1F0683B58;
  }

  else if ([v1 isEqualToString:@"anxious"])
  {
    v2 = &unk_1F0683B70;
  }

  else if ([v1 isEqualToString:@"ashamed"])
  {
    v2 = &unk_1F0683B88;
  }

  else if ([v1 isEqualToString:@"brave"])
  {
    v2 = &unk_1F0683BA0;
  }

  else if ([v1 isEqualToString:@"calm"])
  {
    v2 = &unk_1F0683BB8;
  }

  else if ([v1 isEqualToString:@"content"])
  {
    v2 = &unk_1F0683BD0;
  }

  else if ([v1 isEqualToString:@"disappointed"])
  {
    v2 = &unk_1F0683BE8;
  }

  else if ([v1 isEqualToString:@"discouraged"])
  {
    v2 = &unk_1F0683C00;
  }

  else if ([v1 isEqualToString:@"disgusted"])
  {
    v2 = &unk_1F0683C18;
  }

  else if ([v1 isEqualToString:@"embarrassed"])
  {
    v2 = &unk_1F0683C30;
  }

  else if ([v1 isEqualToString:@"excited"])
  {
    v2 = &unk_1F0683C48;
  }

  else if ([v1 isEqualToString:@"frustrated"])
  {
    v2 = &unk_1F0683C60;
  }

  else if ([v1 isEqualToString:@"grateful"])
  {
    v2 = &unk_1F0683C78;
  }

  else if ([v1 isEqualToString:@"guilty"])
  {
    v2 = &unk_1F0683C90;
  }

  else if ([v1 isEqualToString:@"happy"])
  {
    v2 = &unk_1F0683CA8;
  }

  else if ([v1 isEqualToString:@"hopeless"])
  {
    v2 = &unk_1F0683CC0;
  }

  else if ([v1 isEqualToString:@"irritated"])
  {
    v2 = &unk_1F0683CD8;
  }

  else if ([v1 isEqualToString:@"jealous"])
  {
    v2 = &unk_1F0683CF0;
  }

  else if ([v1 isEqualToString:@"joyful"])
  {
    v2 = &unk_1F0683D08;
  }

  else if ([v1 isEqualToString:@"lonely"])
  {
    v2 = &unk_1F0683D20;
  }

  else if ([v1 isEqualToString:@"passionate"])
  {
    v2 = &unk_1F0683D38;
  }

  else if ([v1 isEqualToString:@"peaceful"])
  {
    v2 = &unk_1F0683D50;
  }

  else if ([v1 isEqualToString:@"proud"])
  {
    v2 = &unk_1F0683D68;
  }

  else if ([v1 isEqualToString:@"relieved"])
  {
    v2 = &unk_1F0683D80;
  }

  else if ([v1 isEqualToString:@"sad"])
  {
    v2 = &unk_1F0683D98;
  }

  else if ([v1 isEqualToString:@"scared"])
  {
    v2 = &unk_1F0683DB0;
  }

  else if ([v1 isEqualToString:@"stressed"])
  {
    v2 = &unk_1F0683DC8;
  }

  else if ([v1 isEqualToString:@"surprised"])
  {
    v2 = &unk_1F0683DE0;
  }

  else if ([v1 isEqualToString:@"worried"])
  {
    v2 = &unk_1F0683DF8;
  }

  else if ([v1 isEqualToString:@"annoyed"])
  {
    v2 = &unk_1F0683E10;
  }

  else if ([v1 isEqualToString:@"confident"])
  {
    v2 = &unk_1F0683E28;
  }

  else if ([v1 isEqualToString:@"drained"])
  {
    v2 = &unk_1F0683E40;
  }

  else if ([v1 isEqualToString:@"hopeful"])
  {
    v2 = &unk_1F0683E58;
  }

  else if ([v1 isEqualToString:@"indifferent"])
  {
    v2 = &unk_1F0683E70;
  }

  else if ([v1 isEqualToString:@"overwhelmed"])
  {
    v2 = &unk_1F0683E88;
  }

  else if ([v1 isEqualToString:@"satisfied"])
  {
    v2 = &unk_1F0683EA0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *HKStateOfMindDomainFromNSString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"community"])
  {
    v2 = &unk_1F0683B28;
  }

  else if ([v1 isEqualToString:@"current_events"])
  {
    v2 = &unk_1F0683B40;
  }

  else if ([v1 isEqualToString:@"dating"])
  {
    v2 = &unk_1F0683B58;
  }

  else if ([v1 isEqualToString:@"education"])
  {
    v2 = &unk_1F0683B70;
  }

  else if ([v1 isEqualToString:@"family"])
  {
    v2 = &unk_1F0683B88;
  }

  else if ([v1 isEqualToString:@"fitness"])
  {
    v2 = &unk_1F0683BA0;
  }

  else if ([v1 isEqualToString:@"friends"])
  {
    v2 = &unk_1F0683BB8;
  }

  else if ([v1 isEqualToString:@"health"])
  {
    v2 = &unk_1F0683BD0;
  }

  else if ([v1 isEqualToString:@"hobbies"])
  {
    v2 = &unk_1F0683BE8;
  }

  else if ([v1 isEqualToString:@"identity"])
  {
    v2 = &unk_1F0683C00;
  }

  else if ([v1 isEqualToString:@"money"])
  {
    v2 = &unk_1F0683C18;
  }

  else if ([v1 isEqualToString:@"partner"])
  {
    v2 = &unk_1F0683C30;
  }

  else if ([v1 isEqualToString:@"self_care"])
  {
    v2 = &unk_1F0683C48;
  }

  else if ([v1 isEqualToString:@"spirituality"])
  {
    v2 = &unk_1F0683C60;
  }

  else if ([v1 isEqualToString:@"tasks"])
  {
    v2 = &unk_1F0683C78;
  }

  else if ([v1 isEqualToString:@"travel"])
  {
    v2 = &unk_1F0683C90;
  }

  else if ([v1 isEqualToString:@"work"])
  {
    v2 = &unk_1F0683CA8;
  }

  else if ([v1 isEqualToString:@"weather"])
  {
    v2 = &unk_1F0683CC0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_191A8494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191A855DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HKPrettyPrintedFeatureOnboardingRecord(void *a1)
{
  v56[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = [[HKTableFormatter alloc] initWithColumnTitles:0];
  v4 = [v1 onboardingState];
  v5 = @"YES";
  if (v4 == 1)
  {
    v5 = @"NO";
  }

  v56[0] = @"Onboarding record present:";
  v56[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  [(HKTableFormatter *)v3 appendRow:v6];

  if (v4 == 1)
  {
    v7 = [(HKTableFormatter *)v3 formattedTable];
    [v2 appendString:v7];
  }

  else
  {
    v39 = [v1 allOnboardedCountryCodesRegardlessOfSupportedState];
    v8 = [v39 allObjects];
    v9 = [v8 sortedArrayUsingSelector:sel_compare_];

    v38 = v9;
    v10 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v9];
    if (![(__CFString *)v10 length])
    {

      v10 = @"<none>";
    }

    v55[0] = @"Onboarded countries:";
    v55[1] = v10;
    v37 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    [(HKTableFormatter *)v3 appendRow:v11];

    v40 = v3;
    v12 = [(HKTableFormatter *)v3 formattedTable];
    [v2 appendString:v12];

    [v2 appendString:@"\n"];
    v41 = v1;
    v13 = [v1 allOnboardingCompletionsRegardlessOfSupportedState];
    v44 = [v13 count];
    v45 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v45 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v14)
    {
      v15 = v14;
      v43 = *v47;
      v16 = 1;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v47 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v46 + 1) + 8 * i);
          [v2 appendFormat:@"======== Onboarding Completion (%ld/%ld) ========\n", v16, v44];
          v19 = [[HKTableFormatter alloc] initWithColumnTitles:0];
          v53[0] = @"Country code:";
          v20 = [v18 countryCode];
          v21 = v20;
          v22 = @"<none>";
          if (v20)
          {
            v22 = v20;
          }

          v53[1] = v22;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
          [(HKTableFormatter *)v19 appendRow:v23];

          v52[0] = @"Version:";
          v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "version")}];
          v52[1] = v24;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
          [(HKTableFormatter *)v19 appendHeterogenousRow:v25];

          v51[0] = @"Date onboarding completed:";
          v26 = [v18 completionDate];
          v27 = [v45 stringFromDate:v26];
          v51[1] = v27;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
          [(HKTableFormatter *)v19 appendRow:v28];

          v50[0] = @"Country code provenance:";
          v29 = NSStringFromHKOnboardingCompletionCountryCodeProvenance([v18 countryCodeProvenance]);
          v50[1] = v29;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
          [(HKTableFormatter *)v19 appendRow:v30];

          v31 = [(HKTableFormatter *)v19 formattedTable];
          [v2 appendString:v31];

          [v2 appendString:@"\n"];
          ++v16;
        }

        v15 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v15);
    }

    [v2 appendString:@"======== Settings ========\n"];
    v1 = v41;
    v32 = [v41 featureSettings];
    v33 = HKPrettyPrintedFeatureSettings(v32);
    [v2 appendString:v33];

    v7 = v39;
    v3 = v40;
  }

  v34 = [v2 copy];
  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

id HKAuthorizationStoreReadServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7778];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v46 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v46 forSelector:sel_remote_fetchAuthorizationRecordsForSourceBundleIdentifier_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v46 forSelector:sel_remote_fetchAuthorizationRecordsForType_completion_ argumentIndex:0 ofReply:1];
  v5 = [v0 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_fetchSourcesRequestingAuthorizationForTypes_completion_ argumentIndex:0 ofReply:0];
  v6 = [v0 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_fetchSourcesRequestingAuthorizationForTypes_completion_ argumentIndex:0 ofReply:1];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v45 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v45 forSelector:sel_remote_fetchAuthorizationStatusesForDocumentType_sourceBundleIdentifier_completion_ argumentIndex:0 ofReply:1];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v44 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  [v0 setClasses:v44 forSelector:sel_remote_fetchAuthorizationStatusesForSampleUUID_completion_ argumentIndex:0 ofReply:1];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v43 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
  [v0 setClasses:v43 forSelector:sel_remote_fetchAuthorizationStatusesForHealthConceptIdentifier_completion_ argumentIndex:0 ofReply:1];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v42 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v0 setClasses:v42 forSelector:sel_remote_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain_completion_ argumentIndex:0 ofReply:1];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v41 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
  [v0 setClasses:v41 forSelector:sel_remote_fetchConceptAuthorizationRecordsForSource_completion_ argumentIndex:0 ofReply:1];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v21 setWithObjects:{v22, v23, v24, v25, v26, v27, v28, v29, objc_opt_class(), 0}];
  [v0 setClasses:v30 forSelector:sel_remote_fetchAuthorizationContextForPromptSession_completion_ argumentIndex:0 ofReply:1];
  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = [v31 setWithObjects:{v32, v33, v34, v35, v36, v37, v38, objc_opt_class(), 0}];
  [v0 setClasses:v39 forSelector:sel_remote_fetchConceptAuthorizationContextForPromptSession_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

id HKAuthorizationStoreWriteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F77D8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_remote_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v5 forSelector:sel_remote_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion_ argumentIndex:1 ofReply:0];
  [v0 setClasses:v5 forSelector:sel_remote_setRequestedAuthorizationForBundleIdentifier_shareTypes_readTypes_completion_ argumentIndex:1 ofReply:0];
  [v0 setClasses:v5 forSelector:sel_remote_setRequestedAuthorizationForBundleIdentifier_shareTypes_readTypes_completion_ argumentIndex:2 ofReply:0];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_remote_setObjectAuthorizationStatuses_objectType_bundleIdentifier_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

id HKAuthorizationStoreResetServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7838];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_resetAuthorizationStatusesForObjects_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_191A88C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A89AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _HKPredicateMatchingPredicates(void *a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = MEMORY[0x1E696AB28];
    v12[0] = v3;
    v12[1] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v8 = [v6 andPredicateWithSubpredicates:v7];
  }

  else
  {
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }

    v8 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

id _HKDateIntervalCreate(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = [v7 laterDate:v9];

    v12 = [v8 laterDate:v9];

    v8 = v12;
    v7 = v11;
  }

  if (v10)
  {
    v13 = [v7 earlierDate:v10];

    v14 = [v8 earlierDate:v10];

    v8 = v14;
    v7 = v13;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v8];

  return v15;
}

void sub_191A8D674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A8E13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191A8E56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191A8EB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191A8F8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRDevicePropertySystemBuildVersion()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getNRDevicePropertySystemBuildVersionSymbolLoc_ptr_0;
  v7 = getNRDevicePropertySystemBuildVersionSymbolLoc_ptr_0;
  if (!getNRDevicePropertySystemBuildVersionSymbolLoc_ptr_0)
  {
    v1 = NanoRegistryLibrary_2();
    v5[3] = dlsym(v1, "NRDevicePropertySystemBuildVersion");
    getNRDevicePropertySystemBuildVersionSymbolLoc_ptr_0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getNRDevicePropertySystemBuildVersion_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_191A8FADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A8FC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A8FD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A8FEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A8FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A9011C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A9024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191A90428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke_2(uint64_t a1)
{
  NanoRegistryLibrary_2();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1_2();
  }

  getNRPairedDeviceRegistryClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary_2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_3)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E737F6A8;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary_3;
  if (!NanoRegistryLibraryCore_frameworkLibrary_3)
  {
    NanoRegistryLibrary_cold_1_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getNRRawVersionFromStringSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRRawVersionFromString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRRawVersionFromStringSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertySystemVersionSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRDevicePropertySystemVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemVersionSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertySystemBuildVersionSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRDevicePropertySystemBuildVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemBuildVersionSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRWatchOSVersionForRemoteDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRWatchOSVersionForRemoteDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyRegionCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRDevicePropertyRegionCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyRegionCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyRegionInfoSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRDevicePropertyRegionInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyRegionInfoSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyModelNumberSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRDevicePropertyModelNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyModelNumberSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyBuildTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRDevicePropertyBuildType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyBuildTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyProductTypeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRDevicePropertyProductType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyProductTypeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyBackgroundAtrialFibrillationVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_2();
  result = dlsym(v2, "NRDevicePropertyBackgroundAtrialFibrillationVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyBackgroundAtrialFibrillationVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_191A90BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191A94CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191A94F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

BOOL HKIndexableObjectCheckCardinalityForIndexRestore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Failed to restore %lu elements to key path '%@' which only has %lu underlying codeable objects", a1, a3, a2}];
  }

  return a1 == a2;
}

void sub_191A95F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHKElectrocardiogramSessionEndReason(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E737F8F8[a1];
  }
}

uint64_t HKCodableQuantitySeriesDatumReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 28) |= 4u;
        LODWORD(v27) = 0;
        v18 = [a2 position] + 4;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 24) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          *(a1 + 28) |= 2u;
          v27 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v22 = v27;
          v23 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          *(a1 + 28) |= 1u;
          v27 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v22 = v27;
          v23 = 8;
        }

        *(a1 + v23) = v22;
      }

LABEL_38:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id SetNoDataErrorIfNeeded(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    goto LABEL_2;
  }

  if (v6)
  {
    if (a3)
    {
      v10 = v6;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError(v6);
    }

LABEL_2:
    v8 = v5;
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696ABC0] hk_error:11 format:@"Nil value returned not an error!"];;
  v12 = v11;
  if (v11)
  {
    if (a3)
    {
      v13 = v11;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError(v11);
    }
  }

LABEL_3:

  return v5;
}

void sub_191A98830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191A98C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *_HKStringForFitnessMachineConnectionState(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E737FA20[a1];
  }
}

__CFString *_HKStringForFitnessMachineState(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E737FA58[a1];
  }
}

void sub_191A99420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HKTypeIsEnabled(uint64_t a1)
{
  v1 = a1 + 2;
  if ((a1 - 254) <= 0x22)
  {
    if (((1 << v1) & 0x640000000) != 0)
    {
      v2 = +[_HKBehavior sharedBehavior];
      v3 = [v2 features];
      v4 = [v3 chamomile];
      goto LABEL_10;
    }

    if (((1 << v1) & 0x80000001) != 0)
    {
      v2 = +[_HKBehavior sharedBehavior];
      v3 = [v2 features];
      v4 = [v3 hermit];
      goto LABEL_10;
    }

    if (a1 == 257)
    {
      v2 = +[_HKBehavior sharedBehavior];
      v3 = [v2 features];
      v4 = [v3 vrx];
      goto LABEL_10;
    }
  }

  if (a1 != 341)
  {
    return 1;
  }

  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 features];
  v4 = [v3 sleepDetails];
LABEL_10:
  v5 = v4;

  return v5;
}

uint64_t HKDataTypeRequiresPerObjectAuthorization(uint64_t a1)
{
  v1 = a1 == 306;
  if (a1 == 257)
  {
    v1 = 1;
  }

  return a1 == 107 || v1;
}

uint64_t HKAllowShareAuthorizationForTypeWithEntitlements(uint64_t a1, void *a2)
{
  result = 0;
  switch(a1)
  {
    case 6:
    case 11:
    case 59:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 74:
    case 75:
    case 76:
    case 77:
    case 80:
    case 81:
    case 82:
    case 84:
    case 85:
    case 86:
    case 88:
    case 93:
    case 94:
    case 98:
    case 100:
    case 103:
    case 104:
    case 105:
    case 106:
    case 108:
    case 109:
    case 112:
    case 115:
    case 116:
    case 117:
    case 120:
    case 121:
    case 122:
    case 123:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 184:
    case 185:
    case 186:
    case 190:
    case 194:
    case 197:
    case 198:
    case 199:
    case 200:
    case 208:
    case 211:
    case 215:
    case 216:
    case 217:
    case 218:
    case 227:
    case 228:
    case 236:
    case 238:
    case 239:
    case 247:
    case 248:
    case 249:
    case 250:
    case 252:
    case 253:
    case 254:
    case 256:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 267:
    case 268:
    case 271:
    case 273:
    case 275:
    case 276:
    case 285:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 299:
    case 300:
    case 305:
    case 306:
      return result;
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 61:
    case 62:
    case 63:
    case 71:
    case 72:
    case 73:
    case 78:
    case 79:
    case 83:
    case 87:
    case 89:
    case 90:
    case 91:
    case 92:
    case 95:
    case 96:
    case 97:
    case 99:
    case 101:
    case 102:
    case 107:
    case 110:
    case 111:
    case 113:
    case 114:
    case 118:
    case 119:
    case 124:
    case 125:
    case 138:
    case 139:
    case 145:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 182:
    case 183:
    case 187:
    case 188:
    case 189:
    case 191:
    case 192:
    case 193:
    case 195:
    case 196:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 209:
    case 210:
    case 212:
    case 213:
    case 214:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 237:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 251:
    case 255:
    case 257:
    case 258:
    case 259:
    case 260:
    case 266:
    case 269:
    case 270:
    case 272:
    case 274:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 286:
    case 287:
    case 288:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 301:
    case 302:
    case 303:
    case 304:
      goto LABEL_4;
    case 13:
      result = [a2 hasEntitlement:@"com.apple.developer.healthkit.nikefuel-source"];
      break;
    default:
      if (a1 != 341)
      {
LABEL_4:
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t HKAllowReadAuthorizationForTypeWithEntitlements(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 <= 246)
  {
    switch(a1)
    {
      case 67:
      case 68:
      case 69:
      case 74:
      case 76:
      case 77:
      case 80:
      case 81:
      case 82:
      case 84:
      case 85:
      case 86:
      case 93:
      case 94:
      case 98:
      case 104:
      case 105:
      case 106:
      case 108:
      case 109:
      case 112:
      case 115:
      case 116:
      case 117:
      case 120:
      case 121:
      case 122:
      case 123:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 141:
      case 142:
      case 143:
      case 146:
      case 148:
      case 174:
      case 175:
      case 176:
      case 180:
      case 181:
      case 184:
      case 185:
      case 190:
      case 200:
      case 208:
      case 215:
      case 216:
      case 227:
      case 228:
      case 238:
      case 239:
        goto LABEL_17;
      case 70:
      case 71:
      case 72:
      case 73:
      case 75:
      case 78:
      case 79:
      case 83:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 95:
      case 96:
      case 97:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 107:
      case 110:
      case 111:
      case 113:
      case 114:
      case 118:
      case 119:
      case 124:
      case 125:
      case 137:
      case 138:
      case 139:
      case 140:
      case 144:
      case 145:
      case 147:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 177:
      case 178:
      case 179:
      case 182:
      case 183:
      case 186:
      case 187:
      case 188:
      case 189:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 199:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
        goto LABEL_4;
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 217:
        goto LABEL_3;
      case 197:
      case 198:
        v6 = &HKPrivateHealthKitAccessIdentifierSleep;
        goto LABEL_16;
      case 218:
        v6 = &HKPrivateHealthKitAccessIdentifierCardioFitnessMedicationUse;
        goto LABEL_16;
      default:
        if (a1 > 0x3B || ((1 << a1) & 0x800000000000840) == 0)
        {
          goto LABEL_4;
        }

        break;
    }

    goto LABEL_17;
  }

  if ((a1 - 247) > 0x3B)
  {
    goto LABEL_8;
  }

  if (((1 << (a1 + 9)) & 0xC302C4005104461) != 0)
  {
    goto LABEL_17;
  }

  if (a1 != 268)
  {
LABEL_8:
    if (a1 == 341)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

LABEL_3:
  if ([v3 hasAccessEntitlementWithIdentifier:@"health-records"])
  {
LABEL_4:
    v5 = 1;
    goto LABEL_17;
  }

  v6 = &HKPrivateHealthKitAccessIdentifierHealthRecordsPrivate;
LABEL_16:
  v5 = [v4 hasPrivateAccessEntitlementWithIdentifier:*v6];
LABEL_17:

  return v5;
}

__CFString *HKAuthorizationSchemaProviderForType(void *a1)
{
  v1 = [a1 code];
  v2 = @"HDDefaultAuthorizationSchemaProvider";
  if (v1 == 257)
  {
    v2 = @"HDVisionPrescriptionAuthorizationSchemaProvider";
  }

  if (v1 == 273)
  {
    v2 = @"HDConceptAuthorizationSchemaProvider";
  }

  if (v1 == 306)
  {
    return @"HDConceptAuthorizationSchemaProvider";
  }

  else
  {
    return v2;
  }
}

double HKMinimumSampleDurationForType(uint64_t a1)
{
  result = 0.001;
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) != 0xAC)
  {
    return 0.0;
  }

  return result;
}

double HKMaximumSampleDurationForType(uint64_t a1)
{
  result = 1209600.0;
  if (a1 > 214)
  {
    if (a1 > 290)
    {
      if ((a1 - 291) <= 0x17 && ((1 << (a1 - 35)) & 0xC08003) != 0)
      {
        return -1.0;
      }

      else
      {
        return 345600.0;
      }
    }

    else
    {
      switch(a1)
      {
        case 227:
        case 228:
        case 238:
        case 239:
        case 247:
        case 257:
        case 261:
        case 271:
          return -1.0;
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 237:
        case 240:
        case 241:
        case 242:
        case 245:
        case 246:
        case 251:
        case 252:
        case 253:
        case 255:
        case 256:
        case 258:
        case 259:
        case 260:
        case 266:
        case 267:
        case 268:
        case 269:
        case 270:
        case 272:
        case 273:
        case 274:
        case 275:
          return 345600.0;
        case 236:
          result = 7344000.0;
          break;
        case 243:
        case 244:
          return result;
        case 248:
LABEL_18:
          result = 691200.0;
          break;
        case 249:
        case 250:
          result = 864000.0;
          break;
        case 254:
        case 276:
          result = 2678400.0;
          break;
        case 262:
        case 263:
        case 264:
        case 265:
          result = 31536000.0;
          break;
        default:
          if (a1 != 215 && a1 != 218)
          {
            return 345600.0;
          }

          return -1.0;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 59:
      case 64:
      case 65:
      case 66:
      case 69:
      case 74:
      case 82:
      case 84:
      case 85:
      case 86:
      case 88:
      case 93:
      case 94:
      case 95:
      case 103:
      case 106:
      case 109:
      case 115:
      case 117:
      case 120:
      case 121:
      case 122:
      case 123:
      case 135:
      case 136:
      case 146:
      case 148:
      case 174:
      case 175:
      case 176:
      case 177:
      case 181:
      case 184:
      case 185:
      case 191:
      case 192:
      case 193:
      case 200:
      case 208:
        return -1.0;
      case 60:
      case 61:
      case 62:
      case 63:
      case 67:
      case 68:
      case 70:
      case 71:
      case 72:
      case 73:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 83:
      case 87:
      case 89:
      case 90:
      case 98:
      case 100:
      case 101:
      case 102:
      case 104:
      case 105:
      case 107:
      case 108:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 116:
      case 118:
      case 119:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 147:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 172:
      case 173:
      case 178:
      case 179:
      case 180:
      case 182:
      case 183:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
        return 345600.0;
      case 91:
      case 92:
      case 96:
      case 97:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
        return result;
      case 99:
        result = 2419200.0;
        break;
      case 199:
        goto LABEL_18;
      default:
        if (a1 != 6 && a1 != 11)
        {
          return 345600.0;
        }

        return -1.0;
    }
  }

  return result;
}

BOOL HKComparisonResultMatchesPredicateOperator(unint64_t a1, uint64_t a2)
{
  v2 = a1 < 2;
  v3 = a1 == 0;
  v4 = a1 != 0;
  if (a2 != 5)
  {
    v4 = 0;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  v5 = a1 == -1;
  v6 = a1 + 1 < 2;
  v7 = a1 == 1;
  if (a2 != 2)
  {
    v7 = 0;
  }

  if (a2 != 1)
  {
    v6 = v7;
  }

  if (a2)
  {
    v5 = v6;
  }

  if (a2 <= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

__CFString *HKStringFromPredicateOperatorType(uint64_t a1)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      if (a1 > 98)
      {
        if (a1 == 99)
        {
          v2 = @"Contains";

          return v2;
        }

        if (a1 == 100)
        {
          v2 = @"Between";

          return v2;
        }
      }

      else
      {
        if (a1 == 10)
        {
          v2 = @"In";

          return v2;
        }

        if (a1 == 11)
        {
          v2 = @"Custom Selector";

          return v2;
        }
      }

LABEL_59:
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown predicate operator type (%ld)", a1];

      return v2;
    }

    if (a1 == 7)
    {
      v2 = @"Like";
    }

    else if (a1 == 8)
    {
      v2 = @"Begins With";
    }

    else
    {
      v2 = @"Ends With";
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 > 4)
      {
        if (a1 == 5)
        {
          v2 = @"Not Equal To";
        }

        else
        {
          v2 = @"Matches";
        }
      }

      else if (a1 == 3)
      {
        v2 = @"Greater Than or Equal To";
      }

      else
      {
        v2 = @"Equal To";
      }

      return v2;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v2 = @"Greater Than";

          return v2;
        }

        goto LABEL_59;
      }

      v2 = @"Less Than Or Equal To";
    }

    else
    {
      v2 = @"Less Than";
    }
  }

  return v2;
}

__CFString *HKStringFromCompoundOperatorType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown compound operator type (%ld)", a1];
  }

  else
  {
    v2 = off_1E737FB70[a1];
  }

  return v2;
}

id HKAllPredicateOperatorTypes()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F0683F00, &unk_1F0683F18, &unk_1F0683F30, &unk_1F0683F48, &unk_1F0683F60, &unk_1F0683F78, &unk_1F0683F90, &unk_1F0683FA8, &unk_1F0683FC0, &unk_1F0683FD8, &unk_1F0683FF0, &unk_1F0684008, &unk_1F0684020, &unk_1F0684038, 0}];

  return v0;
}

uint64_t HKImproveHealthAndActivityAnalyticsAllowed()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 isHealthDataSubmissionAllowed];

  return v1;
}

uint64_t HKCurrentOptInVersionOnDiskForOnBoardingBundle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v3 length])
  {
    HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_1();
  }

  if (![v4 length])
  {
    HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_2();
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/System/Library/OnBoardingBundles/%@.bundle/%@.plist", v3, v4];
  v6 = [GSSystemRootDirectory() stringByAppendingPathComponent:v5];
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
  v14 = 0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7 error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"ContentVersion"];
    v11 = [v10 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_FAULT))
    {
      HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_3(v3, v9, v12);
    }

    v11 = 0;
  }

  return v11;
}

id HKQuantityRangeInclusive(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [HKQuantity quantityWithUnit:v5 doubleValue:a2];
  v7 = [HKQuantity quantityWithUnit:v5 doubleValue:a3];

  v8 = [HKQuantityRange inclusiveRangeWithMinimum:v6 maximum:v7];

  return v8;
}

void sub_191A9F2C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_191A9FC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringForHealthRecordsAccountInfoStatus(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown status %zd", a1];
  }

  else
  {
    v2 = off_1E737FD00[a1];
  }

  return v2;
}

void sub_191AA2100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HKDoseUnitStringForLoggingUnitCode(unint64_t a1)
{
  if (a1 > 0x22)
  {
    return @"unit";
  }

  else
  {
    return off_1E737FD78[a1];
  }
}

void sub_191AA84FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL HKWorkoutEventValidateAlpineSlopeGradeMetadata(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (HKValidateWorkoutEventTypeSegment(a1, @"HKAlpineSlopeGrade", a3))
  {
    v6 = +[HKUnit percentUnit];
    v7 = [HKMetadataValidationUtilities hk_validateQuantityMetadataValue:@"HKAlpineSlopeGrade" value:v5 compatibleUnit:v6 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL HKValidateWorkoutEventTypeSegment(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 != 7)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = a2;
    v7 = _HKWorkoutEventTypeName(a1);
    [v5 hk_assignError:a3 code:3 format:{@"Invalid metadata key %@ for %@", v6, v7}];
  }

  return a1 == 7;
}

__CFString *HKSeriesBuilderStateToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E7380010[a1];
  }

  return v2;
}

void sub_191AA99E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(result + 32) + 72);
  return result;
}

uint64_t binarysample::Electrocardiogram::Electrocardiogram(uint64_t this)
{
  *this = &unk_1F05F35A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  return this;
}

void binarysample::Electrocardiogram::~Electrocardiogram(binarysample::Electrocardiogram *this)
{
  *this = &unk_1F05F35A0;
  v2 = (this + 16);
  std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

{
  *this = &unk_1F05F35A0;
  v2 = (this + 16);
  std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
  MEMORY[0x193B035A0]();
}

uint64_t binarysample::Electrocardiogram::Electrocardiogram(uint64_t this, const binarysample::Electrocardiogram *a2)
{
  *this = &unk_1F05F35A0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    PB::PtrVector<binarysample::ElectrocardiogramLead>::emplace_back<binarysample::ElectrocardiogramLead const&>();
  }

  if (*(a2 + 40))
  {
    v4 = *(a2 + 1);
    *(this + 40) |= 1u;
    *(this + 8) = v4;
  }

  return this;
}

uint64_t binarysample::Electrocardiogram::operator=(uint64_t a1, const binarysample::Electrocardiogram *a2)
{
  if (a1 != a2)
  {
    binarysample::Electrocardiogram::Electrocardiogram(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    v8 = &unk_1F05F35A0;
    v13 = &v10;
    std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__destroy_vector::operator()[abi:ne200100](&v13);
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t binarysample::Electrocardiogram::Electrocardiogram(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F05F35A0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__vdeallocate((a1 + 16));
  *v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t binarysample::Electrocardiogram::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    binarysample::Electrocardiogram::Electrocardiogram(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    v8 = &unk_1F05F35A0;
    v13 = &v10;
    std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__destroy_vector::operator()[abi:ne200100](&v13);
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t binarysample::Electrocardiogram::formatText(binarysample::Electrocardiogram *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 40))
  {
    PB::TextFormatter::format(a2, "frequency", *(this + 1));
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "lead");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t binarysample::Electrocardiogram::readFrom(binarysample::Electrocardiogram *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_35;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 40) |= 1u;
        v22 = *(a2 + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v22);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          PB::PtrVector<binarysample::ElectrocardiogramLead>::emplace_back<>();
        }

        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v24 = 0;
          return v24 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t binarysample::Electrocardiogram::writeTo(uint64_t this, PB::Writer *a2, __n128 a3)
{
  v4 = this;
  v5 = *(this + 16);
  v6 = *(this + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if (*(v4 + 40))
  {
    a3.n128_u64[0] = *(v4 + 8);

    return MEMORY[0x1EEE30B50](a2, 2, a3);
  }

  return this;
}

void std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<binarysample::ElectrocardiogramLead>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__CFString *HKStringFromMedicalRecordCategoryType(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown medical record category type (%ld)", a1];
  }

  else
  {
    v2 = off_1E73801C8[a1];
  }

  return v2;
}

id _HKCreateObjectPickerPresentationController()
{
  v10 = *MEMORY[0x1E69E9840];
  if (NSClassFromString(&cfstr_Uiapplication.isa))
  {
    v7[0] = 0;
    if (!HealthUILibraryCore_frameworkLibrary_1)
    {
      v7[1] = MEMORY[0x1E69E9820];
      v7[2] = 3221225472;
      v7[3] = __HealthUILibraryCore_block_invoke_1;
      v7[4] = &__block_descriptor_40_e5_v8__0l;
      v7[5] = v7;
      v8 = xmmword_1E7380398;
      v9 = 0;
      HealthUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
    }

    if (!HealthUILibraryCore_frameworkLibrary_1)
    {
      _HKCreateObjectPickerPresentationController_cold_3(v7);
    }

    if (v7[0])
    {
      free(v7[0]);
    }

    v0 = NSClassFromString(&cfstr_Hkobjectpicker.isa);
    if (v0)
    {
      v1 = v0;
      v2 = &unk_1F06F7DD8;
      if (([(objc_class *)v1 conformsToProtocol:v2]& 1) != 0)
      {
        v3 = objc_alloc_init(v1);
        goto LABEL_18;
      }

      _HKInitializeLogging();
      v4 = HKLogAuthorization();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        _HKCreateRecalibrateEstimatesPresentationController_cold_1(v1, v2, v4);
      }
    }

    else
    {
      _HKInitializeLogging();
      v2 = HKLogAuthorization();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        _HKCreateObjectPickerPresentationController_cold_2(v2);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v2 = HKLogAuthorization();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _HKCreateRecalibrateEstimatesPresentationController_cold_4(v2);
    }
  }

  v3 = 0;
LABEL_18:

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __HealthUILibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _HKDataTypeCodeIsDeprecated(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w4(v3, &HKDataTypeDefinitions[6 * a1]);
  v1 = *&v3[0] == 0;
  __destructor_8_s0_s8_s16_s24_s32(v3);
  return v1;
}

id __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void __destructor_8_s0_s8_s16_s24_s32(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_191AB3E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __destructor_8_s0_s8_s16_s24_s32(va);
  _Unwind_Resume(a1);
}

uint64_t _HKTypeIdentifierToTypeCode(uint64_t a1)
{
  v1 = [HKObjectType _typeWithIdentifier:a1];
  v2 = [v1 code];

  return v2;
}

BOOL _HKValidateFileSize(unint64_t a1, void *a2)
{
  if (a1 >= 0x1900001)
  {
    v4 = [MEMORY[0x1E696ABC0] hk_error:3 format:@"File size is too large"];
    v5 = v4;
    if (v4)
    {
      if (a2)
      {
        v6 = v4;
        *a2 = v5;
      }

      else
      {
        _HKLogDroppedError(v4);
      }
    }
  }

  return a1 < 0x1900001;
}

void sub_191AB7908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HKStringFromUserDomainConceptLinkType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Is Associated With";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
    }
  }

  else
  {
    v2 = @"None";
  }

  return v2;
}

void _HKRemoveRunningWorkoutSessionUUID(void *a1)
{
  if (a1)
  {
    v1 = a1;
    os_unfair_lock_lock(&_HKRunningWorkoutSessionLock);
    [_HKRunningWorkoutSessionStatesByUUIDs removeObjectForKey:v1];

    os_unfair_lock_unlock(&_HKRunningWorkoutSessionLock);
  }
}

__CFString *HKWorkoutSessionStateToString(uint64_t a1)
{
  if ((a1 - 1) >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E7380780[a1 - 1];
  }

  return v2;
}

__CFString *HKWorkoutSessionTypeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Mirrored";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", a1];
    }
  }

  else
  {
    v2 = @"Primary";
  }

  return v2;
}

__CFString *HKWorkoutSessionEventToString(uint64_t a1)
{
  if ((a1 - 1) >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E73807B0[a1 - 1];
  }

  return v2;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191AC0E5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id _HKPausedIntervalsWithWorkoutEvents(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = [a1 sortedArrayUsingSelector:sel_compare_];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if ([v9 type] == 1)
        {
          v10 = [v9 dateInterval];
          v11 = [v10 startDate];
          v12 = v6;
          v6 = v10;
LABEL_13:

          v6 = v11;
          continue;
        }

        if ([v9 type] == 2 && v6 != 0)
        {
          v14 = objc_alloc(MEMORY[0x1E696AB80]);
          v12 = [v9 dateInterval];
          v15 = [v12 startDate];
          v16 = [v14 initWithStartDate:v6 endDate:v15];
          [v2 addObject:v16];

          v11 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v5)
      {

        if (v6)
        {
          v17 = objc_alloc(MEMORY[0x1E696AB80]);
          v18 = [MEMORY[0x1E695DF00] distantFuture];
          v19 = [v17 initWithStartDate:v6 endDate:v18];
          [v2 addObject:v19];

          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }
  }

  v6 = 0;
  v18 = v3;
LABEL_19:

LABEL_20:
  v20 = *MEMORY[0x1E69E9840];

  return v2;
}

BOOL _AcceptsDataObject(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = v11;
  if (a1 == 2)
  {
    v13 = a5;
  }

  else
  {
    if (a1 == 1)
    {
      if (![v11 isMaximumDurationRestricted])
      {
        v17 = 1;
        goto LABEL_12;
      }

      [v12 maximumAllowedDuration];
      v15 = a6 - v14;
      v13 = a4;
      goto LABEL_9;
    }

    if (a1)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _AcceptsDataObject(_KeyPathEnumValue, NSTimeInterval, NSTimeInterval, NSTimeInterval, HKSampleType * _Nonnull __strong, NSPredicateOperatorType)"}];
      [v18 handleFailureInFunction:v19 file:@"_HKSampleComparisonFilter.m" lineNumber:58 description:@"Unreachable code has been executed"];

      v17 = 0;
      goto LABEL_12;
    }

    v13 = a4;
  }

  v15 = a6;
LABEL_9:
  v16 = HKCompareDoubles(v13, v15);
  v17 = HKComparisonResultMatchesPredicateOperator(v16, a3);
LABEL_12:

  return v17;
}

void sub_191ACAD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191ACC96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191ACEB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191ACEDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_191AD0304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191AD058C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191AD0A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191AD0EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191AD139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191AD1838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191AD20B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191AD252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191AD29A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191AD2E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191AD32A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_191AD3830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_191AD3BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191AD436C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t _unit_test_HKShowSensitiveLogItemsWithDefaults(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 BOOLForKey:@"HKShowSensitiveLogItems"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 objectForKey:@"HKShowSensitiveLogsUntilDate"];
    if (v5)
    {
      v6 = [MEMORY[0x1E695DF00] now];
      v7 = [v6 dateByAddingTimeInterval:43200.0];

      if ([v5 hk_isAfterDate:v7])
      {
        v4 = 0;
      }

      else
      {
        v8 = [MEMORY[0x1E695DF00] now];
        v4 = [v5 hk_isAfterDate:v8];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t HKShowSensitiveLogItems()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.HealthKit.SensitiveLogsTemporaryEnablement"];
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = _unit_test_HKShowSensitiveLogItemsWithDefaults(v1, v0);

  return v2;
}

__CFString *HKSensitiveLogItem(void *a1)
{
  v1 = a1;
  if (HKShowSensitiveLogItems())
  {
    v2 = v1;
  }

  else
  {
    v3 = _HKSensitiveRedactedDescription(v1);
    v4 = v3;
    v5 = @"<sensitive>";
    if (v3)
    {
      v5 = v3;
    }

    v2 = v5;
  }

  return v2;
}

id _HKSensitiveRedactedDescription(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_1F0699CB0])
  {
    v2 = [v1 hk_redactedDescription];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = &__block_literal_global_87;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v3 = &__block_literal_global_21_1;
  }

  v4 = [v1 hk_map:v3];
  if ([v4 count] || !objc_msgSend(v1, "count"))
  {
    v2 = [v4 description];

    goto LABEL_12;
  }

LABEL_11:
  v2 = 0;
LABEL_12:

  return v2;
}

id _HKLoggingActionCompletion(void *a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  _HKInitializeLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v8;
    v23 = 2082;
    v24 = a3;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___HKLoggingActionCompletion_block_invoke;
  v16[3] = &unk_1E7380DB0;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = a3;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = _Block_copy(v16);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id _HKLoggingObjectCompletion(void *a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  _HKInitializeLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v8;
    v23 = 2082;
    v24 = a3;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___HKLoggingObjectCompletion_block_invoke;
  v16[3] = &unk_1E7380DD8;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = a3;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = _Block_copy(v16);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void HKSetTemporaryDirectorySuffix(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 UTF8String];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    _HKInitializeLogging();
    v2 = HKLogInfrastructure();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v1;
      _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "Failed to set temporary directory suffix %@", &v5, 0xCu);
    }
  }

  v3 = NSTemporaryDirectory();

  v4 = *MEMORY[0x1E69E9840];
}

id __HKCalendarDateTransformPreceding6PM_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startOfDayForDate:v5];
  v7 = [v4 dateBySettingHour:18 minute:0 second:0 ofDate:v6 options:0];
  v8 = [v5 hk_isBeforeDate:v7];

  if (v8)
  {
    v9 = [v4 dateByAddingUnit:16 value:-1 toDate:v6 options:0];

    v10 = [v4 dateBySettingHour:18 minute:0 second:0 ofDate:v9 options:0];

    v6 = v9;
    v7 = v10;
  }

  return v7;
}

id HKHearingLevelClassificationPureToneAverageFrequencies()
{
  v0 = [&unk_1F0686B08 copy];

  return v0;
}

id _HKAudiogramStandardFrequencies()
{
  v0 = [&unk_1F0686B20 copy];

  return v0;
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return objc_opt_class();
}

id HKSupportedMetricsForMachineType(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        [v2 addObject:&unk_1F0684740];
        [v3 addObject:&unk_1F0684758];
        [v3 addObject:&unk_1F0684770];
        [v3 addObject:&unk_1F0684788];
        [v3 addObject:&unk_1F06847A0];
        [v3 addObject:&unk_1F06847B8];
        v4 = &unk_1F06847D0;
        goto LABEL_19;
      }

      if (a1 != 2)
      {
        goto LABEL_20;
      }

      [v2 addObject:&unk_1F0684740];
      [v3 addObject:&unk_1F0684758];
      [v3 addObject:&unk_1F0684818];
      [v3 addObject:&unk_1F0684830];
      [v3 addObject:&unk_1F06847A0];
      v5 = &unk_1F0684788;
LABEL_12:
      [v3 addObject:v5];
      [v3 addObject:&unk_1F0684848];
      [v3 addObject:&unk_1F0684860];
      v4 = &unk_1F0684878;
LABEL_19:
      [v3 addObject:v4];
      [v3 addObject:&unk_1F06847E8];
      [v3 addObject:&unk_1F0684800];
      goto LABEL_20;
    }

    _HKInitializeLogging();
    v6 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      HKSupportedMetricsForMachineType_cold_1(v6);
    }
  }

  else
  {
    if (a1 <= 4)
    {
      [v2 addObject:&unk_1F0684890];
      if (a1 == 3)
      {
        [v3 addObject:&unk_1F06848A8];
        v4 = &unk_1F06847A0;
      }

      else
      {
        [v3 addObject:&unk_1F06847A0];
        v4 = &unk_1F06848A8;
      }

      goto LABEL_19;
    }

    if (a1 != 5)
    {
      if (a1 != 6)
      {
        goto LABEL_20;
      }

      [v2 addObject:&unk_1F0684740];
      [v3 addObject:&unk_1F0684758];
      [v3 addObject:&unk_1F06848C0];
      [v3 addObject:&unk_1F06848D8];
      v5 = &unk_1F06848F0;
      goto LABEL_12;
    }

    _HKInitializeLogging();
    v7 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      HKSupportedMetricsForMachineType_cold_2(v7);
    }
  }

LABEL_20:

  return v3;
}

void sub_191AE8204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191AE9684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191AEC720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191AED0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HKDataCollectionOptionsToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = @"(HKDataCollectionOptionTransient)";
    }

    else
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull HKDataCollectionOptionsToString(HKDataCollectionOptions)"];
      [v5 handleFailureInFunction:v6 file:@"HKDataCollector.m" lineNumber:1437 description:@"Missing case in HKDataCollectionOptionsToString"];

      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(Unknown(%ld))", a1];
    }
  }

  else
  {
    v3 = @"(HKDataCollectionOptionDefault)";
  }

  return v3;
}

void OUTLINED_FUNCTION_2_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t HKCodableQuantitySeriesEnumerationResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            *(a1 + 88) |= 0x40u;
            v62 = 0;
            v37 = [a2 position] + 8;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v57 = v62;
            v58 = 56;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_87:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_117;
            }

            *(a1 + 88) |= 4u;
            v62 = 0;
            v29 = [a2 position] + 8;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v57 = v62;
            v58 = 24;
          }

          goto LABEL_116;
        }

        if (v13 == 8)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 88) |= 0x20u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v62 & 0x7F) << v40;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_100;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v42;
          }

LABEL_100:
          v55 = 48;
          goto LABEL_109;
        }

        if (v13 == 9)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 88) |= 0x10u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v62 & 0x7F) << v48;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_108;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v50;
          }

LABEL_108:
          v55 = 40;
LABEL_109:
          *(a1 + v55) = v20;
          goto LABEL_117;
        }

        if (v13 != 10)
        {
          goto LABEL_87;
        }

        v21 = PBReaderReadData();
        v22 = 72;
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 88) |= 8u;
            while (1)
            {
              LOBYTE(v62) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v62 & 0x7F) << v31;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_96;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v33;
            }

LABEL_96:
            v55 = 32;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_87;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 88) |= 2u;
            while (1)
            {
              LOBYTE(v62) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v62 & 0x7F) << v23;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_92;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v25;
            }

LABEL_92:
            v55 = 16;
          }

          goto LABEL_109;
        }

        if (v13 != 3)
        {
          if (v13 == 4)
          {
            *(a1 + 88) |= 0x80u;
            v62 = 0;
            v46 = [a2 position] + 8;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v57 = v62;
            v58 = 64;
LABEL_116:
            *(a1 + v58) = v57;
            goto LABEL_117;
          }

          if (v13 != 5)
          {
            goto LABEL_87;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 88) |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v62 & 0x7F) << v14;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_104;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_104:
          v55 = 8;
          goto LABEL_109;
        }

        v21 = PBReaderReadData();
        v22 = 80;
      }

      v39 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_117:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL HKNotificationDomainIsDeprecated(uint64_t a1)
{
  if (a1 > 15)
  {
    if (a1 != 16)
    {
      return a1 == 17;
    }

    v2 = +[_HKBehavior sharedBehavior];
    v3 = [v2 features];
    v4 = [v3 chutney];
LABEL_9:
    v1 = v4 ^ 1u;

    return v1;
  }

  if ((a1 - 1) >= 2)
  {
    if (a1 != 9)
    {
      return 0;
    }

    v2 = +[_HKBehavior sharedBehavior];
    v3 = [v2 features];
    v4 = [v3 hermit];
    goto LABEL_9;
  }

  return 1;
}

__CFString *NSStringFromHKNotificationDomain(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = @"Deprecated1";

      break;
    case 2:
      v2 = @"Deprecated2";

      break;
    case 3:
      v2 = @"Health Records Data";

      break;
    case 4:
      v2 = @"Heart Rhythm Phone-Only";

      break;
    case 5:
      v2 = @"Menstrual Cycles";

      break;
    case 6:
      v2 = @"Sleep";

      break;
    case 7:
      v2 = @"Walking Steadiness";

      break;
    case 8:
      v2 = @"AFib History";

      break;
    case 9:
      v2 = @"Hypertension Notifications";

      break;
    case 10:
      v2 = @"Summaries Notifications";

      break;
    case 11:
      v2 = @"Profile Notifications";

      break;
    case 12:
      v2 = @"Medications";

      break;
    case 13:
      v2 = @"Mental Health";

      break;
    case 14:
      v2 = @"Oxygen Saturation Phone-Only";

      break;
    case 15:
      v2 = @"Vitals Notifications";

      break;
    case 16:
      v2 = @"Blood Pressure Journal Notifications";

      break;
    case 17:
      v2 = @"Reserved17";

      break;
    case 18:
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid notification domain: %zd", 18];

      break;
    default:
      v2 = @"Emergency SOS";

      break;
  }

  return v2;
}

void sub_191AF2894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRPairedDeviceRegistryClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass_3;
  v7 = getNRPairedDeviceRegistryClass_softClass_3;
  if (!getNRPairedDeviceRegistryClass_softClass_3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke_3;
    v3[3] = &unk_1E7378388;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_191AF29F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191AF2E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNRDevicePropertySigningFuseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_3();
  result = dlsym(v2, "NRDevicePropertySigningFuse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySigningFuseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary_3()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E73812D0;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary_4;
  if (!NanoRegistryLibraryCore_frameworkLibrary_4)
  {
    NanoRegistryLibrary_cold_1_3(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getNRPairedDeviceRegistryClass_block_invoke_3(uint64_t a1)
{
  NanoRegistryLibrary_3();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1_3();
  }

  getNRPairedDeviceRegistryClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyProductTypeSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = NanoRegistryLibrary_3();
  result = dlsym(v2, "NRDevicePropertyProductType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyProductTypeSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertySerialNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_3();
  result = dlsym(v2, "NRDevicePropertySerialNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySerialNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyRegionCodeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_3();
  result = dlsym(v2, "NRDevicePropertyRegionCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyRegionCodeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *NSStringFromQuantitySeriesSampleEditorState(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Not Started";
  }

  else
  {
    return off_1E7381338[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191AF5AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v10 = objc_begin_catch(exception_object);
      _HKInitializeLogging();
      v11 = HKLogMedication();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

      if (v12)
      {
        v13 = HKLogMedication();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          a9 = 138543362;
          _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_INFO, "[%{public}@] unable to create HKUnit from dose unit string.", &a9, 0xCu);
        }
      }

      +[HKUnit countUnit];
      objc_claimAutoreleasedReturnValue();

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x191AF5A4CLL);
  }

  _Unwind_Resume(exception_object);
}

__CFString *HKMedicationDoseEventLogOriginToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"scheduled";
  }

  if (a1 == 1)
  {
    return @"asNeeded";
  }

  else
  {
    return v1;
  }
}

__CFString *HKMedicationDoseEventStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E73813C0[a1 - 1];
  }
}

id _HKCachedImmutableGregorianCalendarWithUTCTimeZone()
{
  if (_HKCachedImmutableGregorianCalendarWithUTCTimeZone_onceToken != -1)
  {
    _HKCachedImmutableGregorianCalendarWithUTCTimeZone_cold_1();
  }

  v1 = _HKCachedImmutableGregorianCalendarWithUTCTimeZone_gregorianCalendarWithUTCTimeZone;

  return v1;
}

uint64_t _HKCacheIndexFromDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___HKCacheIndexFromDate_block_invoke;
  v8[3] = &unk_1E7381458;
  v8[4] = v4;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  HKWithAutoreleasePool(0, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_191AFBDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _HKFirstDayOfWeekForLocale(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = 0.0;
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v1 nextWeekendStartDate:&v10 interval:&v11 options:0 afterDate:v2];
  v4 = v10;

  if (v3)
  {
    v5 = [v4 dateByAddingTimeInterval:v11 + -1.0];
    v6 = [v1 dateByAddingUnit:16 value:1 toDate:v5 options:0];
    v7 = [v1 components:512 fromDate:v6];
    v8 = [v7 weekday];
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

void __HKFirstDayOfWeekForWeeklyGoalCalculations_block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  HKFirstDayOfWeekForWeeklyGoalCalculations_firstDayOfWeek = _HKFirstDayOfWeekForLocale(v0);
}

unint64_t HKLastDayOfWeekForWeeklyGoalCalculations()
{
  if (HKFirstDayOfWeekForWeeklyGoalCalculations_onceToken != -1)
  {
    HKFirstDayOfWeekForWeeklyGoalCalculations_cold_1();
  }

  v0 = HKFirstDayOfWeekForWeeklyGoalCalculations_firstDayOfWeek;
  v1 = [MEMORY[0x1E695DEE8] currentCalendar];
  v2 = [v1 maximumRangeOfUnit:512];
  if (v0 - 1 <= v3)
  {
    v4 = v0 - 1;
  }

  else
  {
    v4 = v2;
  }

  if (v0 - 1 >= v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, const char *a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_191AFC464(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    v8 = (v8 + 1);
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = (&v10->__traits_.__loc_.__locale_ + 1);
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_191AFCA24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193B035A0);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x193B035A0);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x193B035A0);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x193B035A0);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3C98;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3C98;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x193B035A0);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_1F05F3CE0;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3CE0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3CE0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x193B035A0);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_191AFD828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_191AFDC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v5);
      v5 += 12;
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_191AFDE30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_191AFDEA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x193B035A0);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 13;
          goto LABEL_91;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_73;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 9;
          goto LABEL_91;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_99;
        }

        v9 = a2[1];
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_99;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_99;
        }

        v10 = *v4;
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v11 = -87;
        }

        v6 = 16 * (v11 + v10);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_99;
        }

        v12 = v4[1];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v13 = -87;
        }

        if (v4 + 2 != a3)
        {
          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v14 |= 0x20u;
          if ((v14 - 97) < 6)
          {
            v15 = -87;
LABEL_55:
            v16 = v15 + v14 + 16 * (v13 + v6 + v12);
            if (a4)
            {
              if (*(a4 + 23) < 0)
              {
                a4[1] = 1;
                a4 = *a4;
              }

              else
              {
                *(a4 + 23) = 1;
              }

              *a4 = v16;
              *(a4 + 1) = 0;
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
            }

            v4 += 3;
            return v4;
          }
        }

LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_73:
        v17 = v5;
        if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_99;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return ++v4;
        }

        goto LABEL_78;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 11;
LABEL_91:
        *a4 = v18;
        return ++v4;
      }

      v17 = 11;
    }

LABEL_78:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 12;
        goto LABEL_91;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_73;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 10;
        goto LABEL_91;
      }

      v17 = 10;
    }

    goto LABEL_78;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v17 = 0;
    goto LABEL_78;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_99;
    }

    goto LABEL_73;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_99;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_99;
  }

  v8 = v7 & 0x1F;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F05F3D70;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_191AFE8E8(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3D70;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3D70;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x193B035A0);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3DB8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3DB8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x193B035A0);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x193B035A0);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3E48;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3E48;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x193B035A0);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3E90;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F05F3E90;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x193B035A0);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x193B035A0);
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_191AFF55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::regex_traits<char>::transform<char *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_191AFF940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_191AFFAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_191AFFBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_191AFFEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}