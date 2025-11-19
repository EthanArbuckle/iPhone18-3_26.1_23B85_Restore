uint64_t _INPBSelectionItemReadFrom(void *a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 4)
      {
        v14 = objc_alloc_init(_INPBIntentSlotValue);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentSlotValueReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValue:v14];
        goto LABEL_25;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        [a1 setUuid:v14];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    [a1 setVocabularyValue:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

Class __getAFPreferencesClass_block_invoke_54947(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_54948)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke_54949;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7281458;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_54948 = _sl_dlopen();
    v2 = v5[0];
    if (AssistantServicesLibraryCore_frameworkLibrary_54948)
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
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getAFPreferencesClass_softClass_54946 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_54949(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_54948 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18EB4839C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t INTaskTypeGetBackingType(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (10 * a1);
  }
}

uint64_t INTaskTypeGetFacadeType(int a1, int a2)
{
  v2 = a2 == 10;
  if (a2 == 20)
  {
    v2 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INTaskTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"completable";
  }

  if (a1 == 1)
  {
    return @"notCompletable";
  }

  else
  {
    return v1;
  }
}

uint64_t INTaskTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"notCompletable"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"completable"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTaskTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"completable";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"not completable";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

unint64_t INBloodValueTypeGetBackingType(unint64_t result)
{
  if (result >= 9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INBloodValueTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 8) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INBloodValueTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7281470 + a1 - 1);
  }
}

uint64_t INBloodValueTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"apositive"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"anegative"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"bpositive"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"bnegative"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"abpositive"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"abnegative"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"opositive"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"onegative"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INBloodValueTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v5 = @"opositive";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        v5 = @"onegative";
      }
    }

    else if (a1 == 5)
    {
      v5 = @"abpositive";
    }

    else
    {
      v5 = @"abnegative";
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"bpositive";
    }

    else
    {
      v5 = @"bnegative";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"apositive";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_19;
    }

    v5 = @"anegative";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_19:

  return v4;
}

uint64_t _INPBLocationReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBLocationValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INMessageAttributeOptionsContainsBackingType(unint64_t a1, int a2)
{
  v2 = (a1 >> 2) & 1;
  v3 = (a1 >> 3) & 1;
  v4 = (a1 >> 4) & 1;
  if (a2 != 5)
  {
    LOBYTE(v4) = 0;
  }

  if (a2 != 4)
  {
    LOBYTE(v3) = v4;
  }

  if (a2 != 3)
  {
    LOBYTE(v2) = v3;
  }

  v5 = (a1 >> 1) & 1;
  if (a2 != 2)
  {
    LOBYTE(v5) = 0;
  }

  if (a2 == 1)
  {
    LOBYTE(v5) = a1;
  }

  if (a2 <= 2)
  {
    LOBYTE(v2) = v5;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

unint64_t *INMessageAttributeOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result & 0xFFFFFFFFFFFFFFFBLL;
    v4 = *result & 0xFFFFFFFFFFFFFFF7;
    v5 = *result & 0xFFFFFFFFFFFFFFEFLL;
    if (a2 != 5)
    {
      v5 = *result;
    }

    if (a2 != 4)
    {
      v4 = v5;
    }

    if (a2 != 3)
    {
      v3 = v4;
    }

    v6 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (a2 == 2)
    {
      v2 &= ~2uLL;
    }

    if (a2 == 1)
    {
      v2 = v6;
    }

    if (a2 > 2)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

uint64_t INMessageAttributeOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v11;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v3 |= [v6 isEqualToString:@"read"];
        if ([v6 isEqualToString:@"unread"])
        {
          v3 |= 2uLL;
        }

        if ([v6 isEqualToString:@"flagged"])
        {
          v3 |= 4uLL;
        }

        if ([v6 isEqualToString:@"unflagged"])
        {
          v3 |= 8uLL;
        }

        if ([v6 isEqualToString:@"played"])
        {
          v3 |= 0x10uLL;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

id INMessageAttributeOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"read", @"read", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"unread", @"unread", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    v10 = INLocalizedStringWithLocalizer(@"flagged", @"flagged", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
LABEL_8:
        v6 = [v4 copy];

        goto LABEL_10;
      }

LABEL_7:
      v5 = INLocalizedStringWithLocalizer(@"played", @"played", v3);
      [v4 addObject:v5];

      goto LABEL_8;
    }

LABEL_16:
    v11 = INLocalizedStringWithLocalizer(@"unflagged", @"unflagged", v3);
    [v4 addObject:v11];

    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_10:

  return v6;
}

uint64_t _INPBLanguageTagReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setTag:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

__CFString *INCodableTimeIntervalAttributeMetadataUnitAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Seconds";
  }

  else
  {
    return *(&off_1E72814B0 + a1 - 1);
  }
}

uint64_t INCodableTimeIntervalAttributeMetadataUnitAsCalendarUnit(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 128;
  }

  else
  {
    return qword_18EE5EEE8[a1 - 1];
  }
}

uint64_t _INPBDateTimeRangeListReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCondition:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBDateTimeRange);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addDateRange:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBWellnessUnitTypeReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v86 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v86 & 0x7F) << v6;
      if ((v86 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 5)
    {
      if (v14 <= 7)
      {
        if (v14 == 6)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v95 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v95 & 0x7F) << v50;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v12 = v51++ >= 9;
            if (v12)
            {
              v56 = 0;
              goto LABEL_138;
            }
          }

          if ([a2 hasError])
          {
            v56 = 0;
          }

          else
          {
            v56 = v52;
          }

LABEL_138:
          [a1 setBloodPressureUnit:v56];
          continue;
        }

        if (v14 == 7)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v93 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v93 & 0x7F) << v36;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_130;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_130:
          [a1 setHeartRateUnit:v42];
          continue;
        }
      }

      else
      {
        switch(v14)
        {
          case 8:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              v90 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v90 & 0x7F) << v64;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v12 = v65++ >= 9;
              if (v12)
              {
                v70 = 0;
                goto LABEL_146;
              }
            }

            if ([a2 hasError])
            {
              v70 = 0;
            }

            else
            {
              v70 = v66;
            }

LABEL_146:
            [a1 setRespiratoryRateUnit:v70];
            continue;
          case 9:
            v78 = 0;
            v79 = 0;
            v80 = 0;
            while (1)
            {
              v94 = 0;
              v81 = [a2 position] + 1;
              if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
              {
                v83 = [a2 data];
                [v83 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v80 |= (v94 & 0x7F) << v78;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              v12 = v79++ >= 9;
              if (v12)
              {
                v84 = 0;
                goto LABEL_162;
              }
            }

            if ([a2 hasError])
            {
              v84 = 0;
            }

            else
            {
              v84 = v80;
            }

LABEL_162:
            [a1 setEnergyUnit:v84];
            continue;
          case 0xA:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v96 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v96 & 0x7F) << v22;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v12 = v23++ >= 9;
              if (v12)
              {
                v28 = 0;
                goto LABEL_154;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_154:
            [a1 setBloodGlucoseUnit:v28];
            continue;
        }
      }
    }

    else if (v14 <= 2)
    {
      if (v14 == 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v91 = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v91 & 0x7F) << v43;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_134;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v45;
        }

LABEL_134:
        [a1 setMassUnit:v49];
        continue;
      }

      if (v14 == 2)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v92 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v92 & 0x7F) << v29;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_126;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_126:
        [a1 setLengthUnit:v35];
        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v87 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v87 & 0x7F) << v57;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v12 = v58++ >= 9;
            if (v12)
            {
              v63 = 0;
              goto LABEL_142;
            }
          }

          if ([a2 hasError])
          {
            v63 = 0;
          }

          else
          {
            v63 = v59;
          }

LABEL_142:
          [a1 setVolumeUnit:v63];
          continue;
        case 4:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v88 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v88 & 0x7F) << v71;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v12 = v72++ >= 9;
            if (v12)
            {
              v77 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v77 = 0;
          }

          else
          {
            v77 = v73;
          }

LABEL_158:
          [a1 setTimeUnit:v77];
          continue;
        case 5:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v89 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v89 & 0x7F) << v15;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_150;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_150:
          [a1 setTemperatureUnit:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

INBillDetails *INIntentSlotValueTransformFromBillDetailsValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    v24 = [INBillDetails alloc];
    LOBYTE(v3) = [v2 hasBillType];
    v4 = [v2 billType];
    if (((v4 - 1 < 0x16) & v3) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v22 = v5;
    v6 = [v2 hasStatus];
    v7 = [v2 status];
    if (((v7 - 1 < 5) & v6) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v20 = v8;
    v25 = [v2 billPayee];
    v19 = INIntentSlotValueTransformFromBillPayeeValue(v25);
    v23 = [v2 amountDue];
    v9 = INIntentSlotValueTransformFromCurrencyAmountValue(v23);
    v21 = [v2 minimumDue];
    v10 = INIntentSlotValueTransformFromCurrencyAmountValue(v21);
    v11 = [v2 lateFee];
    v12 = INIntentSlotValueTransformFromCurrencyAmountValue(v11);
    v13 = [v2 dueDate];
    v14 = INIntentSlotValueTransformFromDateTime(v13);
    v15 = [v2 paymentDate];
    v16 = INIntentSlotValueTransformFromDateTime(v15);
    v17 = [(INBillDetails *)v24 initWithBillType:v22 paymentStatus:v20 billPayee:v19 amountDue:v9 minimumDue:v10 lateFee:v12 dueDate:v14 paymentDate:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

_INPBBillDetailsValue *INIntentSlotValueTransformToBillDetailsValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBBillDetailsValue);
    v3 = [v1 billPayee];
    v4 = INIntentSlotValueTransformToBillPayeeValue(v3);
    [(_INPBBillDetailsValue *)v2 setBillPayee:v4];

    v5 = [v1 amountDue];
    v6 = INIntentSlotValueTransformToCurrencyAmountValue(v5);
    [(_INPBBillDetailsValue *)v2 setAmountDue:v6];

    v7 = [v1 minimumDue];
    v8 = INIntentSlotValueTransformToCurrencyAmountValue(v7);
    [(_INPBBillDetailsValue *)v2 setMinimumDue:v8];

    v9 = [v1 lateFee];
    v10 = INIntentSlotValueTransformToCurrencyAmountValue(v9);
    [(_INPBBillDetailsValue *)v2 setLateFee:v10];

    v11 = [v1 dueDate];
    v12 = INIntentSlotValueTransformToDateTime(v11);
    [(_INPBBillDetailsValue *)v2 setDueDate:v12];

    v13 = [v1 paymentDate];
    v14 = INIntentSlotValueTransformToDateTime(v13);
    [(_INPBBillDetailsValue *)v2 setPaymentDate:v14];

    v15 = [v1 billType] - 1;
    if (v15 < 0x16)
    {
      v16 = (v15 + 1);
    }

    else
    {
      v16 = 0x7FFFFFFFLL;
    }

    [(_INPBBillDetailsValue *)v2 setBillType:v16];
    v17 = [v1 paymentStatus];

    if ((v17 - 1) < 5)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0x7FFFFFFFLL;
    }

    [(_INPBBillDetailsValue *)v2 setStatus:v18];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromBillDetailsValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromBillDetailsValue(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToBillDetailsValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToBillDetailsValue(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

_INPBBillDetailsValue *INIntentSlotValueRedactedBillDetailsValueFromBillDetailsValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 valueMetadata];
  v8 = INPrivacyEntitlementOptionsForValueMetadata(v7);

  if ((v8 & a2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(_INPBBillDetailsValue);
    v10 = [v5 billPayee];
    v11 = INIntentSlotValueRedactedBillPayeeValueFromBillPayeeValue(v10, a2);
    [(_INPBBillDetailsValue *)v9 setBillPayee:v11];

    v12 = [v5 amountDue];
    v13 = INIntentSlotValueRedactedCurrencyAmountValueFromCurrencyAmountValue(v12, a2, v6);
    [(_INPBBillDetailsValue *)v9 setAmountDue:v13];

    v14 = [v5 minimumDue];
    v15 = INIntentSlotValueRedactedCurrencyAmountValueFromCurrencyAmountValue(v14, a2, v6);
    [(_INPBBillDetailsValue *)v9 setMinimumDue:v15];

    v16 = [v5 lateFee];
    v17 = INIntentSlotValueRedactedCurrencyAmountValueFromCurrencyAmountValue(v16, a2, v6);
    [(_INPBBillDetailsValue *)v9 setLateFee:v17];

    v18 = [v5 dueDate];
    [(_INPBBillDetailsValue *)v9 setDueDate:v18];

    v19 = [v5 paymentDate];
    [(_INPBBillDetailsValue *)v9 setPaymentDate:v19];

    -[_INPBBillDetailsValue setBillType:](v9, "setBillType:", [v5 billType]);
    -[_INPBBillDetailsValue setStatus:](v9, "setStatus:", [v5 status]);
  }

  return v9;
}

void INCarSignalOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v4 = v3;
    if (a1)
    {
      (*(v3 + 2))(v3, 1);
      v3 = v4;
    }

    if ((a1 & 2) != 0)
    {
      (*(v3 + 2))(v4, 2);
      v3 = v4;
    }
  }
}

uint64_t INCarSignalOptionsContainsBackingType(unint64_t a1, int a2)
{
  v2 = (a1 >> 1) & 1;
  if (a2 == 1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (a2 != 2)
  {
    LOBYTE(v2) = v3;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INCarSignalOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 == 1)
    {
      v2 = *result | 1;
    }

    if (a2 == 2)
    {
      v2 = *result | 2;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INCarSignalOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 == 1)
    {
      v2 = *result & 0xFFFFFFFFFFFFFFFELL;
    }

    if (a2 == 2)
    {
      v2 = *result & 0xFFFFFFFFFFFFFFFDLL;
    }

    *result = v2;
  }

  return result;
}

id INCarSignalOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"audible"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"visible"];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

uint64_t INCarSignalOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v4 |= [v7 isEqualToString:@"audible"];
        if ([v7 isEqualToString:@"visible"])
        {
          v4 |= 2uLL;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

id INCarSignalOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v5 = INLocalizedStringWithLocalizer(@"audible", @"audible", v3);
      [v4 addObject:v5];
    }

    if ((a1 & 2) != 0)
    {
      v6 = INLocalizedStringWithLocalizer(@"visible", @"visible", v3);
      [v4 addObject:v6];
    }

    v7 = [v4 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

uint64_t _INPBSetSeatSettingsInCarIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPlaceListReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCondition:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBPlace);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBPlaceReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addPlace:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSetAudioSourceInCarIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromDictionary(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "pairsCount")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v4 = [v2 pairs];
    v5 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (!v5)
    {
      goto LABEL_68;
    }

    v6 = v5;
    v7 = *v48;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        if ([v9 pairStringValuesCount])
        {
          v10 = [v9 repeated];
          v11 = [v9 pairStringValues];
          v12 = v11;
          if (!v10)
          {
            v17 = [v11 firstObject];
            v18 = INIntentSlotValueTransformFromStringValue(v17);
LABEL_64:
            v43 = v18;
            v44 = [v9 key];
            [v3 setObject:v43 forKey:v44];

            goto LABEL_65;
          }

          v13 = INIntentSlotValueTransformFromStringValues(v11);
        }

        else
        {
          v14 = [v9 pairDataValues];

          if (v14)
          {
            v15 = [v9 repeated];
            v16 = [v9 pairDataValues];
            v12 = v16;
            if (!v15)
            {
              v17 = [v16 firstObject];
              v18 = INIntentSlotValueTransformFromDataValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromDataValues(v16);
          }

          else if ([v9 pairUrlValuesCount])
          {
            v19 = [v9 repeated];
            v20 = [v9 pairUrlValues];
            v12 = v20;
            if (!v19)
            {
              v17 = [v20 firstObject];
              v18 = INIntentSlotValueTransformFromURLValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromURLValues(v20);
          }

          else if ([v9 pairDoubleValuesCount])
          {
            v21 = [v9 repeated];
            v22 = [v9 pairDoubleValues];
            v12 = v22;
            if (!v21)
            {
              v17 = [v22 firstObject];
              v18 = INIntentSlotValueTransformFromDoubleValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromDoubleValues(v22);
          }

          else if ([v9 pairIntegerValuesCount])
          {
            v23 = [v9 repeated];
            v24 = [v9 pairIntegerValues];
            v12 = v24;
            if (!v23)
            {
              v17 = [v24 firstObject];
              v18 = INIntentSlotValueTransformFromIntegerValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromIntegerValues(v24);
          }

          else if ([v9 pairDistanceValuesCount])
          {
            v25 = [v9 repeated];
            v26 = [v9 pairDistanceValues];
            v12 = v26;
            if (!v25)
            {
              v17 = [v26 firstObject];
              v18 = INIntentSlotValueTransformFromDistanceValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromDistanceValues(v26);
          }

          else if ([v9 pairTemperatureValuesCount])
          {
            v27 = [v9 repeated];
            v28 = [v9 pairTemperatureValues];
            v12 = v28;
            if (!v27)
            {
              v17 = [v28 firstObject];
              v18 = INIntentSlotValueTransformFromTemperatureValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromTemperatureValues(v28);
          }

          else if ([v9 pairLocationValuesCount])
          {
            v29 = [v9 repeated];
            v30 = [v9 pairLocationValues];
            v12 = v30;
            if (!v29)
            {
              v17 = [v30 firstObject];
              v18 = INIntentSlotValueTransformFromLocationValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromLocationValues(v30);
          }

          else if ([v9 pairPersonValuesCount])
          {
            v31 = [v9 repeated];
            v32 = [v9 pairPersonValues];
            v12 = v32;
            if (!v31)
            {
              v17 = [v32 firstObject];
              v18 = INIntentSlotValueTransformFromContactValueWithAlternatives(v17, 0);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromContactValues(v32);
          }

          else if ([v9 pairCurrencyAmountValuesCount])
          {
            v33 = [v9 repeated];
            v34 = [v9 pairCurrencyAmountValues];
            v12 = v34;
            if (!v33)
            {
              v17 = [v34 firstObject];
              v18 = INIntentSlotValueTransformFromCurrencyAmountValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromCurrencyAmountValues(v34);
          }

          else if ([v9 pairImageValuesCount])
          {
            v35 = [v9 repeated];
            v36 = [v9 pairImageValues];
            v12 = v36;
            if (!v35)
            {
              v17 = [v36 firstObject];
              v18 = INIntentSlotValueTransformFromImageValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromImageValues(v36);
          }

          else if ([v9 pairPaymentMethodValuesCount])
          {
            v37 = [v9 repeated];
            v38 = [v9 pairPaymentMethodValues];
            v12 = v38;
            if (!v37)
            {
              v17 = [v38 firstObject];
              v18 = INIntentSlotValueTransformFromPaymentMethodValue(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromPaymentMethodValues(v38);
          }

          else if ([v9 pairDataStringsCount])
          {
            v39 = [v9 repeated];
            v40 = [v9 pairDataStrings];
            v12 = v40;
            if (!v39)
            {
              v17 = [v40 firstObject];
              v18 = INIntentSlotValueTransformFromDataString(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromDataStrings(v40);
          }

          else
          {
            if (![v9 pairCustomObjectsCount])
            {
              continue;
            }

            v41 = [v9 repeated];
            v42 = [v9 pairCustomObjects];
            v12 = v42;
            if (!v41)
            {
              v17 = [v42 firstObject];
              v18 = INIntentSlotValueTransformFromCustomObject(v17);
              goto LABEL_64;
            }

            v13 = INIntentSlotValueTransformFromCustomObjects(v42);
          }
        }

        v17 = v13;
        v43 = [v9 key];
        [v3 setObject:v17 forKey:v43];
LABEL_65:
      }

      v6 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (!v6)
      {
LABEL_68:

        goto LABEL_70;
      }
    }
  }

  v3 = 0;
LABEL_70:

  v45 = *MEMORY[0x1E69E9840];

  return v3;
}

_INPBDictionary *INIntentSlotValueTransformToDictionary(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBDictionary);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __INIntentSlotValueTransformToDictionary_block_invoke;
    v5[3] = &unk_1E7285238;
    v3 = v2;
    v6 = v3;
    [v1 enumerateKeysAndObjectsUsingBlock:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __INIntentSlotValueTransformToDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(_INPBPair);
    [(_INPBPair *)v7 setKey:v5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = INIntentSlotValueTransformToStringValue(v6);
        v60[0] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
        [(_INPBPair *)v7 setPairStringValues:v11];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = INIntentSlotValueTransformToDataValue(v6);
          v59 = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
          [(_INPBPair *)v7 setPairDataValues:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = INIntentSlotValueTransformToURLValue(v6);
            v58 = v10;
            v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
            [(_INPBPair *)v7 setPairUrlValues:v11];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 _intents_isDouble])
            {
              v10 = INIntentSlotValueTransformToDoubleValue(v6);
              v57 = v10;
              v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
              [(_INPBPair *)v7 setPairDoubleValues:v11];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 _intents_isInteger])
              {
                v10 = INIntentSlotValueTransformToIntegerValue(v6);
                v56 = v10;
                v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
                [(_INPBPair *)v7 setPairIntegerValues:v11];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 unit], v29 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v30 = objc_opt_isKindOfClass(), v29, (v30))
                {
                  v10 = INIntentSlotValueTransformToDistanceValue(v6);
                  v55 = v10;
                  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
                  [(_INPBPair *)v7 setPairDistanceValues:v11];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 unit], v33 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v33, (isKindOfClass))
                  {
                    v10 = INIntentSlotValueTransformToTemperatureValue(v6);
                    v54 = v10;
                    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
                    [(_INPBPair *)v7 setPairTemperatureValues:v11];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v10 = INIntentSlotValueTransformToLocationValue(v6);
                      v53 = v10;
                      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
                      [(_INPBPair *)v7 setPairLocationValues:v11];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v10 = INIntentSlotValueTransformToContactValue(v6);
                        v52 = v10;
                        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
                        [(_INPBPair *)v7 setPairPersonValues:v11];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v10 = INIntentSlotValueTransformToCurrencyAmountValue(v6);
                          v51 = v10;
                          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
                          [(_INPBPair *)v7 setPairCurrencyAmountValues:v11];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v10 = INIntentSlotValueTransformToImageValue(v6);
                            v50 = v10;
                            v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
                            [(_INPBPair *)v7 setPairImageValues:v11];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v10 = INIntentSlotValueTransformToDataString(v6);
                              v49 = v10;
                              v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
                              [(_INPBPair *)v7 setPairDataStrings:v11];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v10 = INIntentSlotValueTransformToPaymentMethodValue(v6);
                                v48 = v10;
                                v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
                                [(_INPBPair *)v7 setPairPaymentMethodValues:v11];
                              }

                              else
                              {
                                objc_opt_class();
                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                {
                                  goto LABEL_18;
                                }

                                v10 = INIntentSlotValueTransformToCustomObject(v6);
                                v47 = v10;
                                v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
                                [(_INPBPair *)v7 setPairCustomObjects:v11];
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
      }

      goto LABEL_17;
    }

    [(_INPBPair *)v7 setRepeated:1];
    v8 = [v6 firstObject];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {
      v10 = INIntentSlotValueTransformToStringValues(v6);
      [(_INPBPair *)v7 setPairStringValues:v10];
    }

    else
    {
      v12 = [v6 firstObject];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        v10 = INIntentSlotValueTransformToURLValues(v6);
        [(_INPBPair *)v7 setPairUrlValues:v10];
      }

      else
      {
        v14 = [v6 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v6 firstObject];
          v16 = [v15 _intents_isDouble];

          if (v16)
          {
            v10 = INIntentSlotValueTransformToDoubleValues(v6);
            [(_INPBPair *)v7 setPairDoubleValues:v10];
            goto LABEL_17;
          }
        }

        else
        {
        }

        v18 = [v6 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v6 firstObject];
          v20 = [v19 _intents_isInteger];

          if (v20)
          {
            v10 = INIntentSlotValueTransformToIntegerValues(v6);
            [(_INPBPair *)v7 setPairIntegerValues:v10];
            goto LABEL_17;
          }
        }

        else
        {
        }

        v21 = [v6 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v6 firstObject];
          v23 = [v22 unit];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          if (v24)
          {
            v10 = INIntentSlotValueTransformToDistanceValues(v6);
            [(_INPBPair *)v7 setPairDistanceValues:v10];
            goto LABEL_17;
          }
        }

        else
        {
        }

        v25 = [v6 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v6 firstObject];
          v27 = [v26 unit];
          objc_opt_class();
          v28 = objc_opt_isKindOfClass();

          if (v28)
          {
            v10 = INIntentSlotValueTransformToTemperatureValues(v6);
            [(_INPBPair *)v7 setPairTemperatureValues:v10];
            goto LABEL_17;
          }
        }

        else
        {
        }

        v31 = [v6 firstObject];
        objc_opt_class();
        v32 = objc_opt_isKindOfClass();

        if (v32)
        {
          v10 = INIntentSlotValueTransformToLocationValues(v6);
          [(_INPBPair *)v7 setPairLocationValues:v10];
        }

        else
        {
          v35 = [v6 firstObject];
          objc_opt_class();
          v36 = objc_opt_isKindOfClass();

          if (v36)
          {
            v10 = INIntentSlotValueTransformToContactValues(v6);
            [(_INPBPair *)v7 setPairPersonValues:v10];
          }

          else
          {
            v37 = [v6 firstObject];
            objc_opt_class();
            v38 = objc_opt_isKindOfClass();

            if (v38)
            {
              v10 = INIntentSlotValueTransformToCurrencyAmountValues(v6);
              [(_INPBPair *)v7 setPairCurrencyAmountValues:v10];
            }

            else
            {
              v39 = [v6 firstObject];
              objc_opt_class();
              v40 = objc_opt_isKindOfClass();

              if (v40)
              {
                v10 = INIntentSlotValueTransformToImageValues(v6);
                [(_INPBPair *)v7 setPairImageValues:v10];
              }

              else
              {
                v41 = [v6 firstObject];
                objc_opt_class();
                v42 = objc_opt_isKindOfClass();

                if (v42)
                {
                  v10 = INIntentSlotValueTransformToDataStrings(v6);
                  [(_INPBPair *)v7 setPairDataStrings:v10];
                }

                else
                {
                  v43 = [v6 firstObject];
                  objc_opt_class();
                  v44 = objc_opt_isKindOfClass();

                  if (v44)
                  {
                    v10 = INIntentSlotValueTransformToPaymentMethodValues(v6);
                    [(_INPBPair *)v7 setPairPaymentMethodValues:v10];
                  }

                  else
                  {
                    v45 = [v6 firstObject];
                    objc_opt_class();
                    v46 = objc_opt_isKindOfClass();

                    if ((v46 & 1) == 0)
                    {
                      goto LABEL_18;
                    }

                    v10 = INIntentSlotValueTransformToCustomObjects(v6);
                    [(_INPBPair *)v7 setPairCustomObjects:v10];
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_17:

    [*(a1 + 32) addPair:v7];
LABEL_18:
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t _INPBSetRadioStationIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIntentSlotVocabularyPolicyReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addIntentSlotNames:v13];
        }

LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBIntentSlotVocabularyConcept);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentSlotVocabularyConceptReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addIntentSlotVocabularyConcepts:v13];
    }

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBTimerReadFrom(void *a1, void *a2)
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
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v37[0]) & 0x7F) << v5;
        if ((LOBYTE(v37[0]) & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v23 = PBReaderReadString();
            [a1 setIdentifier:v23];
LABEL_40:

            goto LABEL_67;
          case 5:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              LOBYTE(v37[0]) = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (LOBYTE(v37[0]) & 0x7F) << v26;
              if ((LOBYTE(v37[0]) & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                v32 = 0;
                goto LABEL_62;
              }
            }

            if ([a2 hasError])
            {
              v32 = 0;
            }

            else
            {
              v32 = v28;
            }

LABEL_62:
            [a1 setState:v32];
            goto LABEL_67;
          case 6:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v37[0]) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (LOBYTE(v37[0]) & 0x7F) << v16;
              if ((LOBYTE(v37[0]) & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_58;
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

LABEL_58:
            [a1 setType:v22];
            goto LABEL_67;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = objc_alloc_init(_INPBDataString);
            v37[0] = 0.0;
            v37[1] = 0.0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v23, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setLabel:v23];
            goto LABEL_40;
          case 2:
            v37[0] = 0.0;
            v24 = [a2 position] + 8;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v37 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setDuration:v37[0]];
            goto LABEL_67;
          case 3:
            v37[0] = 0.0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v37 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setRemainingTime:v37[0]];
            goto LABEL_67;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_67:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchForFilesIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBInteger);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
          {
LABEL_49:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setNumResults:v14];
          goto LABEL_43;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          [a1 setQuery:v14];
          goto LABEL_43;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_45:
          [a1 setSuccess:v21];
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addEntities:v14];
          }

LABEL_43:

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id getHKUnitClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass;
  v7 = getHKUnitClass_softClass;
  if (!getHKUnitClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke;
    v3[3] = &unk_1E72888B8;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18EB59784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKUnitClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __HealthKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72817F8;
    v7 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (HealthKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("HKUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getHKUnitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *INDeleteHealthSampleIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7281810[a1];
  }
}

void sub_18EB5E138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCKKnowledgeStoreClass_block_invoke(uint64_t a1)
{
  CoreKnowledgeLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKKnowledgeStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKKnowledgeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    CoreKnowledgeLibrary();
  }
}

void CoreKnowledgeLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CoreKnowledgeLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreKnowledgeLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E72819A0;
    v4 = 0;
    CoreKnowledgeLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (CoreKnowledgeLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __CoreKnowledgeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreKnowledgeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCKGenericConditionClass_block_invoke(uint64_t a1)
{
  CoreKnowledgeLibrary();
  result = objc_getClass("CKGenericCondition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKGenericConditionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __56__INUserContextStore_userContextOfClass_withCompletion___block_invoke(v3);
  }

  return result;
}

uint64_t _INPBPayBillIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        if (v13 > 7)
        {
          if (v13 == 9)
          {
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
LABEL_69:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDueDate:v14];
            goto LABEL_58;
          }

          if (v13 == 8)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_66;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_66:
            [a1 setBillType:v21];
            goto LABEL_59;
          }
        }

        else
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

            PBReaderRecallMark();
            [a1 setTransactionScheduledDate:v14];
            goto LABEL_58;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(_INPBString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

            PBReaderRecallMark();
            [a1 setTransactionNote:v14];
            goto LABEL_58;
          }
        }
      }

      else if (v13 > 3)
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBFinancialAccountValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBFinancialAccountValueReadFrom(v14, a2))
          {
            goto LABEL_69;
          }

          PBReaderRecallMark();
          [a1 setFromAccount:v14];
          goto LABEL_58;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBPaymentAmountValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBPaymentAmountValueReadFrom(v14, a2))
          {
            goto LABEL_69;
          }

          PBReaderRecallMark();
          [a1 setTransactionAmount:v14];
          goto LABEL_58;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_69;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_58;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBBillPayeeValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBBillPayeeValueReadFrom(v14, a2))
          {
            goto LABEL_69;
          }

          PBReaderRecallMark();
          [a1 setBillPayee:v14];
LABEL_58:

          goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_18EB63038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchableIndexClass_block_invoke_59718(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_59719)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreSpotlightLibraryCore_block_invoke_59720;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7281B60;
    v7 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_59719 = _sl_dlopen();
    v2 = v5[0];
    if (CoreSpotlightLibraryCore_frameworkLibrary_59719)
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
  result = objc_getClass("CSSearchableIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCSSearchableIndexClass_softClass_59717 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_59720(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_59719 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

INRentalCarReservation *INIntentSlotValueTransformFromRentalCarReservation(INRentalCarReservation *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [(INRentalCarReservation *)v2 reservation];
    v21 = [INRentalCarReservation alloc];
    v26 = [v3 itemReference];
    v28 = INIntentSlotValueTransformFromDataString(v26);
    v27 = [v3 reservationNumber];
    v25 = [v3 bookingTime];
    v18 = INIntentSlotValueTransformFromTimestamp(v25);
    v4 = [v3 hasReservationStatus];
    v5 = [v3 reservationStatus];
    if ((((v5 - 2) < 4) & v4) != 0)
    {
      v6 = (v5 - 1);
    }

    else
    {
      v6 = 0;
    }

    v19 = v6;
    v17 = [v3 reservationHolderName];
    v24 = [v3 actions];
    v16 = INIntentSlotValueTransformFromReservationActions(v24);
    v23 = [v3 url];
    v15 = INIntentSlotValueTransformFromURLValue(v23);
    v20 = [(INRentalCarReservation *)v2 rentalCar];
    v14 = INIntentSlotValueTransformFromRentalCar(v20);
    v7 = [(INRentalCarReservation *)v2 rentalDuration];
    v8 = INIntentSlotValueTransformFromDateTimeRange(v7);
    v9 = [(INRentalCarReservation *)v2 pickupLocation];
    v10 = INIntentSlotValueTransformFromLocationValue(v9);
    v11 = [(INRentalCarReservation *)v2 dropOffLocation];

    v12 = INIntentSlotValueTransformFromLocationValue(v11);
    v22 = [(INRentalCarReservation *)v21 initWithItemReference:v28 reservationNumber:v27 bookingTime:v18 reservationStatus:v19 reservationHolderName:v17 actions:v16 URL:v15 rentalCar:v14 rentalDuration:v8 pickupLocation:v10 dropOffLocation:v12];

    a1 = v22;
    v1 = vars8;
  }

  return a1;
}

_INPBRentalCarReservation *INIntentSlotValueTransformToRentalCarReservation(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBReservation);
    v3 = [v1 itemReference];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBReservation *)v2 setItemReference:v4];

    v5 = [v1 reservationNumber];
    [(_INPBReservation *)v2 setReservationNumber:v5];

    v6 = [v1 bookingTime];
    v7 = INIntentSlotValueTransformToTimestamp(v6);
    [(_INPBReservation *)v2 setBookingTime:v7];

    v8 = [v1 reservationStatus];
    if (v8 < 5)
    {
      v9 = (v8 + 1);
    }

    else
    {
      v9 = 0x7FFFFFFFLL;
    }

    [(_INPBReservation *)v2 setReservationStatus:v9];
    v10 = [v1 reservationHolderName];
    [(_INPBReservation *)v2 setReservationHolderName:v10];

    v11 = [v1 actions];
    v12 = INIntentSlotValueTransformToReservationActions(v11);
    [(_INPBReservation *)v2 setActions:v12];

    v13 = [v1 URL];
    v14 = INIntentSlotValueTransformToURLValue(v13);
    [(_INPBReservation *)v2 setUrl:v14];

    v15 = objc_alloc_init(_INPBRentalCarReservation);
    [(_INPBRentalCarReservation *)v15 setReservation:v2];
    v16 = [v1 rentalCar];
    v17 = INIntentSlotValueTransformToRentalCar(v16);
    [(_INPBRentalCarReservation *)v15 setRentalCar:v17];

    v18 = [v1 rentalDuration];
    v19 = INIntentSlotValueTransformToDateTimeRange(v18);
    [(_INPBRentalCarReservation *)v15 setRentalDuration:v19];

    v20 = [v1 pickupLocation];
    v21 = INIntentSlotValueTransformToLocationValue(v20);
    [(_INPBRentalCarReservation *)v15 setPickupLocation:v21];

    v22 = [v1 dropOffLocation];

    v23 = INIntentSlotValueTransformToLocationValue(v22);
    [(_INPBRentalCarReservation *)v15 setDropOffLocation:v23];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromRentalCarReservations(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromRentalCarReservation(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToRentalCarReservations(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToRentalCarReservation(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBRecurrenceValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v50[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50[0] & 0x7F) << v5;
        if ((v50[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v50[0] & 0x7F) << v36;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v42 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_77:
          [a1 setFrequency:v42];
          goto LABEL_90;
        }

        if (v13 == 4)
        {
          if ((v12 & 7) == 2)
          {
            v50[0] = 0;
            v50[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v22 = [a2 position];
              if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v23 = 0;
              v24 = 0;
              v25 = 0;
              while (1)
              {
                v51 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v51 & 0x7F) << v23;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  goto LABEL_45;
                }
              }

              [a2 hasError];
LABEL_45:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v50[0]) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v50[0] & 0x7F) << v43;
              if ((v50[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                goto LABEL_89;
              }
            }

            [a2 hasError];
LABEL_89:
            PBRepeatedInt32Add();
          }

          goto LABEL_90;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v50[0] & 0x7F) << v29;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_73:
          [a1 setOrdinal:v35];
          goto LABEL_90;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50[0] & 0x7F) << v14;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_69;
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

LABEL_69:
          [a1 setInterval:v20];
          goto LABEL_90;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INPreferredCallProviderGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 + 1);
  }
}

uint64_t INPreferredCallProviderGetFacadeType(unsigned __int8 a1, int a2)
{
  if ((((a2 - 2) < 3) & a1) != 0)
  {
    return (a2 - 1);
  }

  else
  {
    return 0;
  }
}

__CFString *INPreferredCallProviderGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7281D58[a1 - 1];
  }
}

uint64_t INPreferredCallProviderWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"telephonyProvider"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"facetimeProvider"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"thirdPartyProvider"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPreferredCallProviderGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"third party provider";
      goto LABEL_7;
    case 2:
      v4 = @"facetime provider";
      goto LABEL_7;
    case 1:
      v4 = @"telephony provider";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

void sub_18EB6978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDNDAvailabilityServiceClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!DoNotDisturbLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __DoNotDisturbLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7281D98;
    v7 = 0;
    DoNotDisturbLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (DoNotDisturbLibraryCore_frameworkLibrary)
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
  result = objc_getClass("DNDAvailabilityService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getDNDAvailabilityServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DoNotDisturbLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DoNotDisturbLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t INRelativeReferenceGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t INRelativeReferenceGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 2);
  if (a2 == 1)
  {
    v2 = 1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INRelativeReferenceGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"previous";
  }

  if (a1 == 1)
  {
    return @"next";
  }

  else
  {
    return v1;
  }
}

uint64_t INRelativeReferenceWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"next"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"previous"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRelativeReferenceGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"previous";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"next";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

void sub_18EB6A3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNLabeledValueClass_60871()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLabeledValueClass_softClass_60905;
  v7 = getCNLabeledValueClass_softClass_60905;
  if (!getCNLabeledValueClass_softClass_60905)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNLabeledValueClass_block_invoke_60906;
    v3[3] = &unk_1E72888B8;
    v3[4] = &v4;
    __getCNLabeledValueClass_block_invoke_60906(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18EB6A4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNPhoneNumberClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_60886();
  result = objc_getClass("CNPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPhoneNumberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCNPostalAddressClass_block_invoke(v3);
  }

  return result;
}

Class __getCNPostalAddressClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_60886();
  result = objc_getClass("CNPostalAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPostalAddressClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCNContactRelationClass_block_invoke(v3);
  }

  return result;
}

Class __getCNContactRelationClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_60886();
  result = objc_getClass("CNContactRelation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactRelationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCNInstantMessageAddressClass_block_invoke(v3);
  }

  return result;
}

void __getCNInstantMessageAddressClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_60886();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNInstantMessageAddress");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNInstantMessageAddressClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    ContactsLibrary_60886();
  }
}

void ContactsLibrary_60886()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_60889)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ContactsLibraryCore_block_invoke_60890;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7281DB0;
    v4 = 0;
    ContactsLibraryCore_frameworkLibrary_60889 = _sl_dlopen();
    v0 = v2[0];
    if (ContactsLibraryCore_frameworkLibrary_60889)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ContactsLibraryCore_block_invoke_60890(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_60889 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getCNLabeledValueClass_block_invoke_60906(uint64_t a1)
{
  ContactsLibrary_60886();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNLabeledValue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLabeledValueClass_softClass_60905 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(INContactCard *)v2 encodeWithCoder:v3, v4];
  }
}

__CFString *INUpdateEventIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7281DC8[a1];
  }
}

uint64_t _INPBEndWorkoutIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSaveProfileInCarIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        v14 = objc_alloc_init(_INPBString);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setProfileName:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBInteger);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setProfileNumber:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPaymentAmountValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(_INPBCurrencyAmountValue);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValue:v20];
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setAmountType:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __INCoalesceValidMessagingParameterCombinations_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = [v5 containsObject:@"speakableGroupName"];
  v8 = [v5 containsObject:@"recipients"];
  v9 = v8;
  if (v7 && (v8 & 1) != 0)
  {
    goto LABEL_10;
  }

  if (v7)
  {
    v10 = [v5 setByAddingObject:@"recipients"];
    v11 = [v6 containsObject:v10];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v12 = [v5 setByAddingObject:@"speakableGroupName"];
  if (![v6 containsObject:v12])
  {
    v13 = [v5 mutableCopy];
    [v13 removeObject:@"recipients"];
    [v13 addObject:@"speakableGroupName"];
    v14 = [v6 containsObject:v13];

    if (v14)
    {
      goto LABEL_9;
    }

LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

LABEL_9:
  v15 = 0;
LABEL_11:

  return v15;
}

uint64_t _INPBRideStatusReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v23) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v23 & 0x7F) << v5;
      if ((v23 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        [a1 setRideIdentifier:v13];
        goto LABEL_71;
      case 2u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v23) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23 & 0x7F) << v14;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_77;
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

LABEL_77:
        [a1 setPhase:v20];
        goto LABEL_72;
      case 3u:
        v13 = objc_alloc_init(_INPBRideVehicle);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBRideVehicleReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setVehicle:v13];
        goto LABEL_71;
      case 4u:
        v13 = objc_alloc_init(_INPBRideDriver);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBRideDriverReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setDriver:v13];
        goto LABEL_71;
      case 5u:
        v13 = objc_alloc_init(_INPBTimestamp);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimestampReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setEstimatedPickupDate:v13];
        goto LABEL_71;
      case 6u:
        v13 = objc_alloc_init(_INPBTimestamp);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimestampReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setEstimatedDropOffDate:v13];
        goto LABEL_71;
      case 7u:
        v13 = objc_alloc_init(_INPBLocationValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setPickupLocation:v13];
        goto LABEL_71;
      case 8u:
        v13 = objc_alloc_init(_INPBLocationValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addWaypoints:v13];
        }

        goto LABEL_71;
      case 9u:
        v13 = objc_alloc_init(_INPBLocationValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setDropOffLocation:v13];
        goto LABEL_71;
      case 0xAu:
        v13 = objc_alloc_init(_INPBRideOption);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBRideOptionReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setRideOption:v13];
        goto LABEL_71;
      case 0xBu:
        v13 = objc_alloc_init(_INPBUserActivity);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBUserActivityReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setUserActivityForCancelingInApplication:v13];
        goto LABEL_71;
      case 0xCu:
        v13 = objc_alloc_init(_INPBTimestamp);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimestampReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setEstimatedPickupEndDate:v13];
        goto LABEL_71;
      case 0xDu:
        v13 = objc_alloc_init(_INPBRideCompletionStatus);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBRideCompletionStatusReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        [a1 setCompletionStatus:v13];
        goto LABEL_71;
      case 0xEu:
        v13 = objc_alloc_init(_INPBUserActivity);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBUserActivityReadFrom(v13, a2))
        {
          goto LABEL_80;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addAdditionalActionItems:v13];
        }

        goto LABEL_71;
      case 0xFu:
        v13 = objc_alloc_init(_INPBDateTimeRangeValue);
        v23 = 0;
        v24 = 0;
        if (PBReaderPlaceMark() && _INPBDateTimeRangeValueReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setScheduledPickupTime:v13];
LABEL_71:

LABEL_72:
          v21 = [a2 position];
          if (v21 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_80:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_72;
    }
  }
}

id INLocalizedStringFromBundle(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (a5)
  {
    v25 = a6;
    v26 = v12;
    [a4 preferredLocalizationsForBundle:a5];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v30 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = CFBundleCopyLocalizedStringForLocalization();
          if (([v20 isEqualToString:@"<invalid_language>"] & 1) == 0)
          {
            if (v25)
            {
              v22 = v19;
              *v25 = v19;
            }

            v21 = [v20 variantFittingPresentationWidth:20];

            v12 = v26;
            goto LABEL_14;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v12 = v26;
    v21 = v26;
LABEL_14:
  }

  else
  {
    v21 = v12;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

id INLocalizedStringFromCodable(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = [v11 bundleIdentifier];
  v14 = [v12 bundleWithIdentifier:v13 fileURL:0];

  if (v14)
  {
    CFRetain(v14);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __INLocalizedStringFromCodable_block_invoke;
    v21[3] = &__block_descriptor_40_e5_v8__0l;
    v21[4] = v14;
    v15 = MEMORY[0x193AD7780](v21);
    v16 = [v11 tableName];
    v17 = INLocalizedStringFromBundle(v9, v9, v16, v12, v14, a5);

    if ([v17 isEqualToString:v9])
    {
      v18 = v10;
    }

    else
    {
      v18 = v17;
    }

    v19 = v18;

    v15[2](v15);
  }

  else
  {
    v19 = v10;
  }

  return v19;
}

id INLocalizedFormatStringFromSlotComposing(void *a1, void *a2, void *a3, __CFBundle *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = [v16 mutableCopy];
  if (a4)
  {
    *a8 = CFBundleGetDevelopmentRegion(a4);
    if (v15)
    {
      v22 = INLocalizedStringFromBundle(v15, v15, v17, v18, a4, a8);
      if ([v22 length] && (objc_msgSend(v15, "isEqualToString:", v22) & 1) == 0)
      {
        v24 = [v22 mutableCopy];
      }

      else
      {
        v23 = INLocalizedStringFromBundle(v16, v16, v17, v18, a4, a8);
        v24 = [v23 mutableCopy];

        v21 = v23;
      }

      v21 = v24;
      if (!v16)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else
  {
    *a8 = @"en";
  }

  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v21)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __INLocalizedFormatStringFromSlotComposing_block_invoke;
    v31 = &unk_1E7281EC8;
    v32 = v20;
    v33 = v19;
    v25 = INFillOutStringWithStringsDict(v16, v21, &v28);
    v26 = [v25 mutableCopy];

    v21 = v26;
  }

LABEL_13:

  return v21;
}

id __INLocalizedFormatStringFromSlotComposing_block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [*(a1 + 40) intentSlotDescriptions];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = v9;
    v11 = *v22;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      v14 = [v13 facadePropertyName];
      v15 = [v14 isEqualToString:v5];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

LABEL_13:

        v6 = 0;
        goto LABEL_23;
      }
    }

    v16 = [*(a1 + 40) valueForKey:v5];
    v17 = [v13 valueType];
    if (v17 == 24)
    {
      v18 = 0;
    }

    else
    {
      v6 = 0;
      if (v17 != 21)
      {
LABEL_22:

        goto LABEL_23;
      }

      v18 = 2;
    }

    *a3 = v18;
    v6 = v16;
    goto LABEL_22;
  }

  if ([v6 _intents_isInteger])
  {
    v7 = 1;
  }

  else
  {
    if (![v6 _intents_isDouble])
    {
      goto LABEL_23;
    }

    v7 = 2;
  }

  *a3 = v7;
LABEL_23:

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

id INFillOutStringWithStringsDict(void *a1, void *a2, void *a3)
{
  v178 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v157 = a2;
  v156 = a3;
  if (!v5)
  {
    v41 = 0;
    goto LABEL_123;
  }

  v6 = [MEMORY[0x1E696AE70] _intents_sharedFormatRegularExpression];
  v7 = [v6 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];

  v160 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v171 objects:v177 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v172;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v172 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v171 + 1) + 8 * i) resultByAdjustingRangesWithOffset:0];
        v14 = [v13 rangeAtIndex:1];
        v16 = [v5 substringWithRange:{v14, v15}];
        v170 = v16;
        _INStringExtractKeyPathAndFunctions(&v170, 0);
        v17 = v170;

        [v160 if_addObjectIfNonNil:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v171 objects:v177 count:16];
    }

    while (v10);
  }

  v151 = v5;

  v18 = [MEMORY[0x1E696AE70] _intents_sharedStringsDictFormatRegularExpression];
  v19 = [v18 matchesInString:v157 options:0 range:{0, objc_msgSend(v157, "length")}];

  v153 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  v154 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  obj = v19;
  v158 = [obj countByEnumeratingWithState:&v166 objects:v176 count:16];
  if (v158)
  {
    v155 = *v167;
    do
    {
      v20 = 0;
      do
      {
        if (*v167 != v155)
        {
          objc_enumerationMutation(obj);
        }

        v159 = v20;
        v21 = [*(*(&v166 + 1) + 8 * v20) rangeAtIndex:1];
        v23 = [v157 substringWithRange:{v21, v22}];
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v24 = v160;
        v25 = [v24 countByEnumeratingWithState:&v162 objects:v175 count:16];
        v26 = v23;
        if (v25)
        {
          v27 = v25;
          v28 = *v163;
          v26 = v23;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v163 != v28)
              {
                objc_enumerationMutation(v24);
              }

              v30 = *(*(&v162 + 1) + 8 * j);
              v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", v23];
              v32 = [v30 hasSuffix:v31];

              if (v32)
              {
                v33 = v30;

                v26 = v33;
              }
            }

            v27 = [v24 countByEnumeratingWithState:&v162 objects:v175 count:16];
          }

          while (v27);
        }

        v161 = 0;
        v34 = v156[2](v156, v26, &v161);
        if (v34)
        {
          [v153 addObject:v34];
          v35 = [MEMORY[0x1E696AD98] numberWithInteger:v161];
          [v154 addObject:v35];
        }

        v20 = v159 + 1;
      }

      while (v159 + 1 != v158);
      v158 = [obj countByEnumeratingWithState:&v166 objects:v176 count:16];
    }

    while (v158);
  }

  if ([v153 count] != 1)
  {
    v5 = v151;
    if ([v153 count] == 2)
    {
      v42 = [v154 objectAtIndexedSubscript:0];
      v43 = [v42 integerValue];

      if (v43 == 2)
      {
        goto LABEL_61;
      }

      if (v43 != 1)
      {
        if (v43)
        {
          goto LABEL_121;
        }

        v44 = [v154 objectAtIndexedSubscript:1];
        v45 = [v44 integerValue];

        switch(v45)
        {
          case 2:
            v75 = MEMORY[0x1E696AEC0];
            v39 = [v153 objectAtIndexedSubscript:0];
            v76 = [v39 intValue];
            goto LABEL_72;
          case 1:
            v46 = MEMORY[0x1E696AEC0];
            v39 = [v153 objectAtIndexedSubscript:0];
            v47 = [v39 intValue];
            goto LABEL_74;
          case 0:
            v46 = MEMORY[0x1E696AEC0];
            v39 = [v153 objectAtIndexedSubscript:0];
            v47 = [v39 intValue];
LABEL_60:
            v61 = [v153 objectAtIndexedSubscript:1];
            v62 = [v61 intValue];
LABEL_75:
            [v46 localizedStringWithFormat:v157, v47, v62];
            goto LABEL_76;
        }
      }

      v59 = [v154 objectAtIndexedSubscript:1];
      v60 = [v59 integerValue];

      if (v60 != 2)
      {
        if (v60 != 1)
        {
          if (!v60)
          {
            v46 = MEMORY[0x1E696AEC0];
            v39 = [v153 objectAtIndexedSubscript:0];
            v47 = [v39 longValue];
            goto LABEL_60;
          }

LABEL_61:
          v63 = [v154 objectAtIndexedSubscript:1];
          v64 = [v63 integerValue];

          if (v64 == 2)
          {
            v70 = MEMORY[0x1E696AEC0];
            v39 = [v153 objectAtIndexedSubscript:0];
            [v39 doubleValue];
            v72 = v71;
            v68 = [v153 objectAtIndexedSubscript:1];
            [v68 doubleValue];
            [v70 localizedStringWithFormat:v157, v72, v73];
          }

          else
          {
            if (v64 == 1)
            {
              v65 = MEMORY[0x1E696AEC0];
              v39 = [v153 objectAtIndexedSubscript:0];
              [v39 doubleValue];
              v67 = v74;
              v68 = [v153 objectAtIndexedSubscript:1];
              v69 = [v68 longValue];
            }

            else
            {
              if (v64)
              {
                goto LABEL_121;
              }

              v65 = MEMORY[0x1E696AEC0];
              v39 = [v153 objectAtIndexedSubscript:0];
              [v39 doubleValue];
              v67 = v66;
              v68 = [v153 objectAtIndexedSubscript:1];
              v69 = [v68 intValue];
            }

            [v65 localizedStringWithFormat:v157, v67, v69];
          }
          v41 = ;

          goto LABEL_77;
        }

        v46 = MEMORY[0x1E696AEC0];
        v39 = [v153 objectAtIndexedSubscript:0];
        v47 = [v39 longValue];
LABEL_74:
        v61 = [v153 objectAtIndexedSubscript:1];
        v62 = [v61 longValue];
        goto LABEL_75;
      }

      v75 = MEMORY[0x1E696AEC0];
      v39 = [v153 objectAtIndexedSubscript:0];
      v76 = [v39 longValue];
LABEL_72:
      v61 = [v153 objectAtIndexedSubscript:1];
      [v61 doubleValue];
      [v75 localizedStringWithFormat:v157, v76, v77];
      v41 = LABEL_76:;

      goto LABEL_77;
    }

    if ([v153 count] != 3)
    {
      goto LABEL_121;
    }

    v48 = [v154 objectAtIndexedSubscript:0];
    v49 = [v48 integerValue];

    if (v49 == 2)
    {
      goto LABEL_105;
    }

    if (v49 != 1)
    {
      if (v49)
      {
        goto LABEL_121;
      }

      v50 = [v154 objectAtIndexedSubscript:1];
      v51 = [v50 integerValue];

      switch(v51)
      {
        case 2:
LABEL_82:
          v80 = [v154 objectAtIndexedSubscript:1];
          v81 = [v80 integerValue];

          switch(v81)
          {
            case 2:
              v138 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v139 = [v55 intValue];
              goto LABEL_146;
            case 1:
              v82 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v83 = [v55 intValue];
              goto LABEL_148;
            case 0:
              v82 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v83 = [v55 intValue];
LABEL_104:
              v88 = [v153 objectAtIndexedSubscript:1];
              [v88 doubleValue];
              v97 = v96;
              v98 = [v153 objectAtIndexedSubscript:2];
              v99 = [v98 intValue];
LABEL_149:
              [v82 localizedStringWithFormat:v157, v83, v97, v99];
              goto LABEL_150;
          }

          break;
        case 1:
LABEL_78:
          v78 = [v154 objectAtIndexedSubscript:1];
          v79 = [v78 integerValue];

          switch(v79)
          {
            case 2:
              v140 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v141 = [v55 intValue];
LABEL_152:
              v88 = [v153 objectAtIndexedSubscript:1];
              v149 = [v88 longValue];
LABEL_157:
              v92 = [v153 objectAtIndexedSubscript:2];
              [v92 doubleValue];
              [v140 localizedStringWithFormat:v157, v141, v149, v150];
              v41 = LABEL_162:;

              goto LABEL_163;
            case 1:
              v54 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v56 = [v55 intValue];
LABEL_154:
              v88 = [v153 objectAtIndexedSubscript:1];
              v89 = [v88 longValue];
LABEL_160:
              v92 = [v153 objectAtIndexedSubscript:2];
              v93 = [v92 longValue];
              goto LABEL_161;
            case 0:
              v54 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v56 = [v55 intValue];
LABEL_98:
              v88 = [v153 objectAtIndexedSubscript:1];
              v89 = [v88 longValue];
              goto LABEL_99;
          }

          goto LABEL_82;
        case 0:
          v52 = [v154 objectAtIndexedSubscript:1];
          v53 = [v52 integerValue];

          switch(v53)
          {
            case 2:
              v140 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v141 = [v55 intValue];
              goto LABEL_156;
            case 1:
              v54 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v56 = [v55 intValue];
              goto LABEL_159;
            case 0:
              v54 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v56 = [v55 intValue];
LABEL_93:
              v88 = [v153 objectAtIndexedSubscript:1];
              v89 = [v88 intValue];
LABEL_99:
              v92 = [v153 objectAtIndexedSubscript:2];
              v93 = [v92 intValue];
LABEL_161:
              [v54 localizedStringWithFormat:v157, v56, v89, v93];
              goto LABEL_162;
          }

          goto LABEL_78;
      }
    }

    v84 = [v154 objectAtIndexedSubscript:1];
    v85 = [v84 integerValue];

    if (v85 == 2)
    {
LABEL_100:
      v94 = [v154 objectAtIndexedSubscript:1];
      v95 = [v94 integerValue];

      if (v95 != 2)
      {
        if (v95 != 1)
        {
          if (!v95)
          {
            v82 = MEMORY[0x1E696AEC0];
            v55 = [v153 objectAtIndexedSubscript:0];
            v83 = [v55 longValue];
            goto LABEL_104;
          }

LABEL_105:
          v100 = [v154 objectAtIndexedSubscript:1];
          v101 = [v100 integerValue];

          if (v101 == 2)
          {
            goto LABEL_117;
          }

          if (v101 != 1)
          {
            if (v101)
            {
              goto LABEL_121;
            }

            v102 = [v154 objectAtIndexedSubscript:1];
            v103 = [v102 integerValue];

            switch(v103)
            {
              case 2:
                v133 = MEMORY[0x1E696AEC0];
                v55 = [v153 objectAtIndexedSubscript:0];
                [v55 doubleValue];
                v135 = v142;
                v107 = [v153 objectAtIndexedSubscript:1];
                v136 = [v107 intValue];
                goto LABEL_137;
              case 1:
                v104 = MEMORY[0x1E696AEC0];
                v55 = [v153 objectAtIndexedSubscript:0];
                [v55 doubleValue];
                v106 = v144;
                v107 = [v153 objectAtIndexedSubscript:1];
                v108 = [v107 intValue];
                goto LABEL_139;
              case 0:
                v104 = MEMORY[0x1E696AEC0];
                v55 = [v153 objectAtIndexedSubscript:0];
                [v55 doubleValue];
                v106 = v105;
                v107 = [v153 objectAtIndexedSubscript:1];
                v108 = [v107 intValue];
LABEL_116:
                v112 = [v153 objectAtIndexedSubscript:2];
                v113 = [v112 intValue];
LABEL_140:
                [v104 localizedStringWithFormat:v157, v106, v108, v113];
                goto LABEL_141;
            }
          }

          v109 = [v154 objectAtIndexedSubscript:1];
          v110 = [v109 integerValue];

          if (v110 != 2)
          {
            if (v110 != 1)
            {
              if (!v110)
              {
                v104 = MEMORY[0x1E696AEC0];
                v55 = [v153 objectAtIndexedSubscript:0];
                [v55 doubleValue];
                v106 = v111;
                v107 = [v153 objectAtIndexedSubscript:1];
                v108 = [v107 longValue];
                goto LABEL_116;
              }

LABEL_117:
              v114 = [v154 objectAtIndexedSubscript:1];
              v115 = [v114 integerValue];

              if (v115 == 2)
              {
                v125 = MEMORY[0x1E696AEC0];
                v55 = [v153 objectAtIndexedSubscript:0];
                [v55 doubleValue];
                v127 = v126;
                v107 = [v153 objectAtIndexedSubscript:1];
                [v107 doubleValue];
                v129 = v128;
                v121 = [v153 objectAtIndexedSubscript:2];
                [v121 doubleValue];
                [v125 localizedStringWithFormat:v157, v127, v129, v130];
              }

              else
              {
                if (v115 == 1)
                {
                  v116 = MEMORY[0x1E696AEC0];
                  v55 = [v153 objectAtIndexedSubscript:0];
                  [v55 doubleValue];
                  v118 = v131;
                  v107 = [v153 objectAtIndexedSubscript:1];
                  [v107 doubleValue];
                  v120 = v132;
                  v121 = [v153 objectAtIndexedSubscript:2];
                  v122 = [v121 longValue];
                }

                else
                {
                  if (v115)
                  {
                    goto LABEL_121;
                  }

                  v116 = MEMORY[0x1E696AEC0];
                  v55 = [v153 objectAtIndexedSubscript:0];
                  [v55 doubleValue];
                  v118 = v117;
                  v107 = [v153 objectAtIndexedSubscript:1];
                  [v107 doubleValue];
                  v120 = v119;
                  v121 = [v153 objectAtIndexedSubscript:2];
                  v122 = [v121 intValue];
                }

                [v116 localizedStringWithFormat:v157, v118, v120, v122];
              }
              v41 = ;

              goto LABEL_142;
            }

            v104 = MEMORY[0x1E696AEC0];
            v55 = [v153 objectAtIndexedSubscript:0];
            [v55 doubleValue];
            v106 = v137;
            v107 = [v153 objectAtIndexedSubscript:1];
            v108 = [v107 longValue];
LABEL_139:
            v112 = [v153 objectAtIndexedSubscript:2];
            v113 = [v112 longValue];
            goto LABEL_140;
          }

          v133 = MEMORY[0x1E696AEC0];
          v55 = [v153 objectAtIndexedSubscript:0];
          [v55 doubleValue];
          v135 = v134;
          v107 = [v153 objectAtIndexedSubscript:1];
          v136 = [v107 longValue];
LABEL_137:
          v112 = [v153 objectAtIndexedSubscript:2];
          [v112 doubleValue];
          [v133 localizedStringWithFormat:v157, v135, v136, v143];
          v41 = LABEL_141:;

LABEL_142:
LABEL_164:

          goto LABEL_122;
        }

        v82 = MEMORY[0x1E696AEC0];
        v55 = [v153 objectAtIndexedSubscript:0];
        v83 = [v55 longValue];
LABEL_148:
        v88 = [v153 objectAtIndexedSubscript:1];
        [v88 doubleValue];
        v97 = v148;
        v98 = [v153 objectAtIndexedSubscript:2];
        v99 = [v98 longValue];
        goto LABEL_149;
      }

      v138 = MEMORY[0x1E696AEC0];
      v55 = [v153 objectAtIndexedSubscript:0];
      v139 = [v55 longValue];
LABEL_146:
      v88 = [v153 objectAtIndexedSubscript:1];
      [v88 doubleValue];
      v146 = v145;
      v98 = [v153 objectAtIndexedSubscript:2];
      [v98 doubleValue];
      [v138 localizedStringWithFormat:v157, v139, v146, v147];
      v41 = LABEL_150:;

LABEL_163:
      goto LABEL_164;
    }

    if (v85 == 1)
    {
      goto LABEL_94;
    }

    if (v85)
    {
      goto LABEL_105;
    }

    v86 = [v154 objectAtIndexedSubscript:1];
    v87 = [v86 integerValue];

    if (v87 != 2)
    {
      if (v87 != 1)
      {
        if (!v87)
        {
          v54 = MEMORY[0x1E696AEC0];
          v55 = [v153 objectAtIndexedSubscript:0];
          v56 = [v55 longValue];
          goto LABEL_93;
        }

LABEL_94:
        v90 = [v154 objectAtIndexedSubscript:1];
        v91 = [v90 integerValue];

        if (v91 != 2)
        {
          if (v91 != 1)
          {
            if (!v91)
            {
              v54 = MEMORY[0x1E696AEC0];
              v55 = [v153 objectAtIndexedSubscript:0];
              v56 = [v55 longValue];
              goto LABEL_98;
            }

            goto LABEL_100;
          }

          v54 = MEMORY[0x1E696AEC0];
          v55 = [v153 objectAtIndexedSubscript:0];
          v56 = [v55 longValue];
          goto LABEL_154;
        }

        v140 = MEMORY[0x1E696AEC0];
        v55 = [v153 objectAtIndexedSubscript:0];
        v141 = [v55 longValue];
        goto LABEL_152;
      }

      v54 = MEMORY[0x1E696AEC0];
      v55 = [v153 objectAtIndexedSubscript:0];
      v56 = [v55 longValue];
LABEL_159:
      v88 = [v153 objectAtIndexedSubscript:1];
      v89 = [v88 intValue];
      goto LABEL_160;
    }

    v140 = MEMORY[0x1E696AEC0];
    v55 = [v153 objectAtIndexedSubscript:0];
    v141 = [v55 longValue];
LABEL_156:
    v88 = [v153 objectAtIndexedSubscript:1];
    v149 = [v88 intValue];
    goto LABEL_157;
  }

  v36 = [v154 objectAtIndexedSubscript:0];
  v37 = [v36 integerValue];

  v5 = v151;
  if (v37 == 2)
  {
    v57 = MEMORY[0x1E696AEC0];
    v39 = [v153 objectAtIndexedSubscript:0];
    [v39 doubleValue];
    [v57 localizedStringWithFormat:v157, v58];
    goto LABEL_55;
  }

  if (v37 == 1)
  {
    v38 = MEMORY[0x1E696AEC0];
    v39 = [v153 objectAtIndexedSubscript:0];
    v40 = [v39 longValue];
    goto LABEL_53;
  }

  if (v37)
  {
LABEL_121:
    v41 = v157;
    goto LABEL_122;
  }

  v38 = MEMORY[0x1E696AEC0];
  v39 = [v153 objectAtIndexedSubscript:0];
  v40 = [v39 intValue];
LABEL_53:
  [v38 localizedStringWithFormat:v157, v40];
  v41 = LABEL_55:;
LABEL_77:

LABEL_122:
LABEL_123:

  v123 = *MEMORY[0x1E69E9840];

  return v41;
}

void _INStringExtractKeyPathAndFunctions(id *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [*a1 mutableCopy];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [MEMORY[0x1E696AE70] _intents_sharedFunctionRegularExpression];
    v6 = [v5 matchesInString:*a1 options:0 range:{0, objc_msgSend(*a1, "length")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v20 + 1) + 8 * i) resultByAdjustingRangesWithOffset:0];
          v12 = *a1;
          v13 = [v11 rangeAtIndex:1];
          v15 = [v12 substringWithRange:{v13, v14}];
          [v4 addObject:v15];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", v15];
          [v3 replaceOccurrencesOfString:v16 withString:&stru_1F01E0850 options:0 range:{0, objc_msgSend(v3, "length")}];
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    if (a2)
    {
      *a2 = [v4 copy];
    }

    *a1 = [v3 copy];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void _INUpdateFinalLocalizedString(void *a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6, void **a7, id *a8)
{
  v173 = *MEMORY[0x1E69E9840];
  v149 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v148 = a6;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"${%@}", v16];
  v18 = [v14 containsString:v17];
  if ((v18 & 1) != 0 || !a5)
  {
    goto LABEL_6;
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\(%@)", v16];

  if (([v14 containsString:v19] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v16];

    v18 = [v14 containsString:v17];
LABEL_6:
    v19 = v17;
    goto LABEL_7;
  }

  v18 = 1;
LABEL_7:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v150 = v15;
  if (v18 && (isKindOfClass & 1) != 0)
  {
    v21 = [v149 valueForKeyPath:v16];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v133 = v19;
      obj = v14;
      v140 = v16;
      v144 = a8;
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v165 objects:v172 count:16];
      v25 = v23;
      if (v24)
      {
        v26 = v24;
        v27 = *v166;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v166 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = [v15 valueForIndex:{objc_msgSend(*(*(&v165 + 1) + 8 * i), "unsignedIntegerValue")}];
            v30 = v29;
            if (v29)
            {
              v31 = [v29 displayName];
              v32 = v31;
              if (v31)
              {
                v33 = v31;
              }

              else
              {
                v33 = [v30 name];
              }

              v34 = v33;

              v35 = *a7;
              v36 = [v30 displayNameLocID];
              [v35 appendFormat:@"-%@", v36];

              [v22 addObject:v34];
              v15 = v150;
            }
          }

          v23 = v25;
          v26 = [v25 countByEnumeratingWithState:&v165 objects:v172 count:16];
        }

        while (v26);
      }

      v37 = *v144;
      v38 = [v22 _intents_readableTitleWithLocalizer:v148];
      v21 = v25;
      v19 = v133;
      [v37 replaceOccurrencesOfString:v133 withString:v38 options:0 range:{0, objc_msgSend(*v144, "length")}];

      v14 = obj;
      v16 = v140;
    }

    else
    {
      v71 = [v15 valueForIndex:{objc_msgSend(v21, "unsignedIntegerValue")}];
      v72 = v71;
      if (v71)
      {
        v73 = v19;
        v74 = v21;
        v75 = [v71 displayName];
        v76 = v75;
        v77 = a8;
        if (v75)
        {
          v78 = v75;
        }

        else
        {
          v78 = [v72 name];
        }

        v97 = v78;

        v98 = *a7;
        v99 = [v72 displayNameLocID];
        [v98 appendFormat:@"-%@", v99];

        [*v77 replaceOccurrencesOfString:v73 withString:v97 options:0 range:{0, objc_msgSend(*v77, "length")}];
        v19 = v73;
        v21 = v74;
      }
    }

    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = [v15 metadata];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass() & v18;

    if (v40)
    {
      v21 = [v15 metadata];
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v41 = [v21 trueDisplayName];
        if (v41)
        {
          v42 = v41;
          v43 = v19;
          v44 = [v21 falseDisplayName];
          if (v44)
          {
            v45 = v44;
            v46 = [v21 trueDisplayNameID];
            if (v46)
            {
              v47 = v46;
              v145 = a8;
              v48 = [v21 falseDisplayNameID];
              if (v48)
              {
                v49 = v48;
                v50 = [v14 containsString:v43];

                if (v50)
                {
                  v51 = [v149 valueForKeyPath:v16];
                  objc_opt_class();
                  v151 = v51;
                  if (objc_opt_isKindOfClass())
                  {
                    v134 = v43;
                    obja = v14;
                    v141 = v16;
                    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v161 = 0u;
                    v162 = 0u;
                    v163 = 0u;
                    v164 = 0u;
                    v53 = v51;
                    v54 = [v53 countByEnumeratingWithState:&v161 objects:v171 count:16];
                    if (v54)
                    {
                      v55 = v54;
                      v56 = *v162;
                      do
                      {
                        for (j = 0; j != v55; ++j)
                        {
                          if (*v162 != v56)
                          {
                            objc_enumerationMutation(v53);
                          }

                          v58 = *(*(&v161 + 1) + 8 * j);
                          if (v58)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v59 = v58;
                            }

                            else
                            {
                              v59 = 0;
                            }
                          }

                          else
                          {
                            v59 = 0;
                          }

                          v60 = v59;

                          v61 = [v60 BOOLValue];
                          v62 = *a7;
                          if (v61)
                          {
                            v63 = [v21 trueDisplayNameID];
                            [v62 appendFormat:@"-%@", v63];

                            [v21 trueDisplayName];
                          }

                          else
                          {
                            v64 = [v21 falseDisplayNameID];
                            [v62 appendFormat:@"-%@", v64];

                            [v21 falseDisplayName];
                          }
                          v65 = ;
                          [v52 addObject:v65];
                        }

                        v55 = [v53 countByEnumeratingWithState:&v161 objects:v171 count:16];
                      }

                      while (v55);
                    }

                    v66 = *v145;
                    v67 = [v52 _intents_readableTitleWithLocalizer:v148];
                    v19 = v134;
                    [v66 replaceOccurrencesOfString:v134 withString:v67 options:0 range:{0, objc_msgSend(*v145, "length")}];

                    v14 = obja;
                    v16 = v141;
                  }

                  else
                  {
                    v119 = v51;
                    if (v119)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v120 = v119;
                      }

                      else
                      {
                        v120 = 0;
                      }
                    }

                    else
                    {
                      v120 = 0;
                    }

                    v121 = v120;

                    v122 = [v121 BOOLValue];
                    v123 = *a7;
                    if (v122)
                    {
                      v124 = [v21 trueDisplayNameID];
                      [v123 appendFormat:@"-%@", v124];

                      v125 = *v145;
                      [v21 trueDisplayName];
                    }

                    else
                    {
                      v126 = [v21 falseDisplayNameID];
                      [v123 appendFormat:@"-%@", v126];

                      v125 = *v145;
                      [v21 falseDisplayName];
                    }
                    v127 = ;
                    v128 = [*v145 length];
                    v129 = v125;
                    v19 = v43;
                    [v129 replaceOccurrencesOfString:v43 withString:v127 options:0 range:{0, v128}];
                  }

                  goto LABEL_90;
                }

                goto LABEL_95;
              }
            }
          }

LABEL_95:
          v19 = v43;
        }
      }

      else
      {

        v21 = 0;
      }

LABEL_90:

      goto LABEL_91;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v146 = a8;
    v68 = v15;
    v142 = a5;
    v69 = v14;
    if (v68)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = v68;
      }

      else
      {
        v70 = 0;
      }
    }

    else
    {
      v70 = 0;
    }

    v82 = v70;

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v131 = v82;
    v83 = [v82 codableDescription];
    v84 = [v83 attributes];
    v85 = [v84 allValues];

    objb = v85;
    v86 = [v85 countByEnumeratingWithState:&v157 objects:v170 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v158;
      do
      {
        for (k = 0; k != v87; ++k)
        {
          if (*v158 != v88)
          {
            objc_enumerationMutation(objb);
          }

          v90 = *(*(&v157 + 1) + 8 * k);
          v91 = MEMORY[0x1E696AEC0];
          v92 = [v90 propertyName];
          v93 = v16;
          v94 = [v91 stringWithFormat:@"%@.%@", v16, v92];

          v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"${%@", v94];
          v96 = [v69 containsString:v95];

          if (v96)
          {
            _INUpdateFinalLocalizedString(v149, v69, v90, v94, v142, v148, a7, v146);
          }

          v16 = v93;
        }

        v87 = [objb countByEnumeratingWithState:&v157 objects:v170 count:16];
      }

      while (v87);
    }

    v14 = v69;
    v15 = v150;
    v21 = v131;
    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = v15;
    v135 = v19;
    v143 = a5;
    v80 = v14;
    if (v79)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v81 = v79;
      }

      else
      {
        v81 = 0;
      }
    }

    else
    {
      v81 = 0;
    }

    v21 = v81;

    v100 = +[INSchema systemSchema];
    v101 = [v100 _types];
    v102 = [v21 typeName];
    v103 = INIntentDefinitionNamespacedName(@"System", v102);
    v104 = [v101 objectForKeyedSubscript:v103];

    v105 = v104;
    if (v104)
    {
      v130 = v104;
      v132 = v21;
      v147 = a8;
      v106 = v16;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v107 = [v105 attributes];
      v108 = [v107 allValues];

      objc = v108;
      v109 = [v108 countByEnumeratingWithState:&v153 objects:v169 count:16];
      if (v109)
      {
        v110 = v109;
        v111 = *v154;
        do
        {
          for (m = 0; m != v110; ++m)
          {
            if (*v154 != v111)
            {
              objc_enumerationMutation(objc);
            }

            v113 = *(*(&v153 + 1) + 8 * m);
            v114 = MEMORY[0x1E696AEC0];
            v115 = [v113 propertyName];
            v116 = [v114 stringWithFormat:@"%@.%@", v106, v115];

            v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"${%@", v116];
            LODWORD(v115) = [v80 containsString:v117];

            if (v115)
            {
              _INUpdateFinalLocalizedString(v149, v80, v113, v116, v143, v148, a7, v147);
            }
          }

          v110 = [objc countByEnumeratingWithState:&v153 objects:v169 count:16];
        }

        while (v110);
      }

      v15 = v150;
      v16 = v106;
      v105 = v130;
      v21 = v132;
    }

    v19 = v135;
    v14 = v80;
    goto LABEL_90;
  }

LABEL_91:

  v118 = *MEMORY[0x1E69E9840];
}

id __INLocalizedFormatStringFromCodable_block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v8 = [*(a1 + 40) _objectDescription];
    v9 = [v8 attributeByKeyPath:v5];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [*(a1 + 40) valueForKeyPath:v5];
        v10 = [v9 typeName];
        v11 = [v10 isEqualToString:@"Long"];

        if (v11)
        {
          v12 = 1;
LABEL_14:
          *a3 = v12;
LABEL_17:

          goto LABEL_18;
        }

        v13 = [v9 typeName];
        v14 = [v13 isEqualToString:@"Double"];

        if (v14)
        {
          v12 = 2;
          goto LABEL_14;
        }
      }
    }

    v6 = 0;
    goto LABEL_17;
  }

  if ([v6 _intents_isInteger])
  {
    v7 = 1;
  }

  else
  {
    if (![v6 _intents_isDouble])
    {
      goto LABEL_18;
    }

    v7 = 2;
  }

  *a3 = v7;
LABEL_18:

  return v6;
}

id INReplaceVariablesInFormatStringFromSlotComposing(void *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = a2;
  v5 = a3;
  v6 = [a1 mutableCopy];
  v7 = [MEMORY[0x1E696AE70] _intents_sharedFormatRegularExpression];
  v8 = [v7 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v8;
  v33 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v33)
  {
    v10 = 0;
    v34 = *v45;
    v35 = v9;
    v36 = v6;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v9);
        }

        v38 = v11;
        v39 = v10;
        v12 = [*(*(&v44 + 1) + 8 * v11) resultByAdjustingRangesWithOffset:v10];
        v13 = [v12 rangeAtIndex:1];
        v15 = [v6 substringWithRange:{v13, v14}];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v16 = v5;
        v17 = [v5 intentSlotDescriptions];
        v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (!v18)
        {
LABEL_19:

          v5 = v16;
LABEL_20:

          v9 = v35;
          v30 = 0;
          v6 = v36;
          goto LABEL_21;
        }

        v19 = v18;
        v20 = *v41;
LABEL_8:
        v21 = 0;
        while (1)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v40 + 1) + 8 * v21);
          v23 = [v22 facadePropertyName];
          v24 = [v23 isEqualToString:v15];

          if (v24)
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v19)
            {
              goto LABEL_8;
            }

            goto LABEL_19;
          }
        }

        v5 = v16;
        v25 = [v16 localizeValueOfSlotDescription:v22 withLocalizer:v37];

        if (!v25)
        {
          goto LABEL_20;
        }

        v26 = [v12 range];
        v6 = v36;
        [v36 replaceCharactersInRange:v26 withString:{v27, v25}];
        v28 = [v25 length];
        [v12 range];
        v10 = v28 - v29 + v39;

        v11 = v38 + 1;
        v9 = v35;
      }

      while (v38 + 1 != v33);
      v33 = [v35 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  v30 = v6;
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

id INReplaceVariablesInFormatStringFromCodable(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v145 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v107 = a2;
  v10 = a3;
  v108 = a4;
  v101 = v9;
  if (v9)
  {
    v11 = [v9 mutableCopy];
    v12 = [MEMORY[0x1E696AE70] _intents_sharedFormatRegularExpression];
    v13 = [v12 matchesInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];

    if (a5 && ![v13 count])
    {
      v14 = [MEMORY[0x1E696AE70] _intents_sharedOldFormatRegularExpression];
      v15 = [v14 matchesInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];

      v13 = v15;
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v16 = v13;
    v106 = [v16 countByEnumeratingWithState:&v126 objects:v136 count:16];
    if (v106)
    {
      v17 = 0;
      v104 = v16;
      v105 = *v127;
      v102 = v11;
      v103 = v10;
LABEL_7:
      v18 = 0;
LABEL_8:
      if (*v127 != v105)
      {
        objc_enumerationMutation(v16);
      }

      v114 = v18;
      v19 = [*(*(&v126 + 1) + 8 * v18) resultByAdjustingRangesWithOffset:v17];
      v20 = [v19 rangeAtIndex:1];
      v22 = [v11 substringWithRange:{v20, v21}];
      if (v22)
      {
        v23 = [v108 objectForKeyedSubscript:v22];

        if (v23)
        {
          v24 = [v108 objectForKeyedSubscript:v22];
          v25 = [v24 _intents_readableTitleWithLocalizer:v107];

          if (v25)
          {
            v26 = [v19 range];
            [v11 replaceCharactersInRange:v26 withString:{v27, v25}];
            v28 = [v25 length];
            [v19 range];
            v30 = v28 - v29;
            v115 = v22;
            goto LABEL_80;
          }
        }
      }

      v109 = v17;
      v111 = v19;
      v124 = 0;
      v125 = v22;
      _INStringExtractKeyPathAndFunctions(&v125, &v124);
      v31 = v125;

      v32 = v124;
      v33 = [v10 _objectDescription];
      v34 = [v33 attributeByKeyPath:v31];

      if (v34)
      {
        v35 = [v10 valueForKeyPath:v31];
        v115 = v31;
        if (v35)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;
        v38 = [v37 if_flatMap:&__block_literal_global_62275];
        v39 = v38;
        if (v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = v35;
        }

        v41 = v40;

        objc_opt_class();
        v110 = v41;
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = v32;
            v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v120 = 0u;
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v44 = v41;
            v45 = [v44 countByEnumeratingWithState:&v120 objects:v135 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v121;
              do
              {
                for (i = 0; i != v46; ++i)
                {
                  if (*v121 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v49 = [v34 valueForIndex:{objc_msgSend(*(*(&v120 + 1) + 8 * i), "unsignedIntegerValue")}];
                  v50 = [v49 displayName];
                  [v43 if_addObjectIfNonNil:v50];
                }

                v46 = [v44 countByEnumeratingWithState:&v120 objects:v135 count:16];
              }

              while (v46);
            }

            v51 = [v43 _intents_readableTitleWithLocalizer:v107];
            v32 = v42;
            goto LABEL_59;
          }

          v43 = [v34 valueForIndex:{objc_msgSend(v41, "unsignedIntegerValue")}];
          v68 = [v43 displayName];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v34 metadata], v52 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v52, (isKindOfClass))
          {
            v43 = [v34 metadata];
            if (!v43 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

              v43 = 0;
LABEL_97:

LABEL_98:
              v95 = INSiriLogContextIntents;
              v10 = v103;
              if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
              {
                v98 = v95;
                v99 = [v103 _objectDescription];
                v100 = [v99 className];
                *buf = 136315906;
                v138 = "INReplaceVariablesInFormatStringFromCodable";
                v139 = 2112;
                v140 = v100;
                v141 = 2112;
                v142 = v34;
                v143 = 2112;
                v144 = v110;
                _os_log_error_impl(&dword_18E991000, v98, OS_LOG_TYPE_ERROR, "%s [%@] No displayable value for %@ with value %@", buf, 0x2Au);
              }

              v11 = v102;
              v31 = v115;
              goto LABEL_101;
            }

            v54 = [v43 trueDisplayName];
            if (!v54)
            {
              goto LABEL_97;
            }

            v55 = v54;
            v56 = [v43 falseDisplayName];

            if (!v56)
            {
              goto LABEL_97;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v112 = v32;
              v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v119 = 0u;
              v58 = v41;
              v59 = [v58 countByEnumeratingWithState:&v116 objects:v134 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v117;
                do
                {
                  for (j = 0; j != v60; ++j)
                  {
                    if (*v117 != v61)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v63 = *(*(&v116 + 1) + 8 * j);
                    if (v63)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v64 = v63;
                      }

                      else
                      {
                        v64 = 0;
                      }
                    }

                    else
                    {
                      v64 = 0;
                    }

                    v65 = v64;

                    v66 = [v65 BOOLValue];
                    if (v66)
                    {
                      [v43 trueDisplayName];
                    }

                    else
                    {
                      [v43 falseDisplayName];
                    }
                    v67 = ;
                    [v57 if_addObjectIfNonNil:v67];
                  }

                  v60 = [v58 countByEnumeratingWithState:&v116 objects:v134 count:16];
                }

                while (v60);
              }

              v51 = [v57 _intents_readableTitleWithLocalizer:v107];

              v32 = v112;
              goto LABEL_59;
            }

            v85 = v41;
            if (v85)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v86 = v85;
              }

              else
              {
                v86 = 0;
              }
            }

            else
            {
              v86 = 0;
            }

            v87 = v86;

            v88 = [v87 BOOLValue];
            if (v88)
            {
              [v43 trueDisplayName];
            }

            else
            {
              [v43 falseDisplayName];
            }
            v68 = ;
          }

          else
          {
            v43 = [v34 metadata];
            v68 = [v41 _intents_readableTitleWithLocalizer:v107 metadata:v43];
          }
        }

        v51 = v68;
LABEL_59:

        if (!v51)
        {
          goto LABEL_98;
        }

        v25 = v51;
        v69 = v32;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v70 = [v69 countByEnumeratingWithState:&v130 objects:buf count:16];
        v113 = v25;
        if (!v70)
        {
          goto LABEL_79;
        }

        v71 = v70;
        v72 = *v131;
        while (1)
        {
          v73 = 0;
          do
          {
            if (*v131 != v72)
            {
              objc_enumerationMutation(v69);
            }

            v74 = *(*(&v130 + 1) + 8 * v73);
            v75 = v25;
            v76 = v74;
            if ([v76 isEqualToString:@"uppercased()"])
            {
              v77 = [v75 localizedUppercaseString];
LABEL_69:
              v78 = v77;
              v25 = [v77 copy];

              goto LABEL_70;
            }

            if ([v76 isEqualToString:@"lowercased()"])
            {
              v77 = [v75 localizedLowercaseString];
              goto LABEL_69;
            }

            if ([v76 isEqualToString:@"uppercaseFirstCharacter()"])
            {
              v79 = [v75 if_stringByUppercasingFirstCharacter];
              goto LABEL_77;
            }

            v25 = v75;
            if ([v76 isEqualToString:@"lowercaseFirstCharacter()"])
            {
              v79 = [v75 if_stringByLowercasingFirstCharacter];
LABEL_77:
              v25 = v79;
              v78 = v75;
LABEL_70:
            }

            ++v73;
          }

          while (v71 != v73);
          v80 = [v69 countByEnumeratingWithState:&v130 objects:buf count:16];
          v71 = v80;
          if (!v80)
          {
LABEL_79:

            v19 = v111;
            v81 = [v111 range];
            v11 = v102;
            [v102 replaceCharactersInRange:v81 withString:{v82, v25}];
            v83 = [v25 length];
            [v111 range];
            v30 = v83 - v84;

            v10 = v103;
            v16 = v104;
            v17 = v109;
LABEL_80:

            v17 += v30;
            v18 = v114 + 1;
            if (v114 + 1 == v106)
            {
              v89 = [v16 countByEnumeratingWithState:&v126 objects:v136 count:16];
              v106 = v89;
              if (!v89)
              {
                goto LABEL_92;
              }

              goto LABEL_7;
            }

            goto LABEL_8;
          }
        }
      }

      v91 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v92 = v91;
        v93 = [v10 _objectDescription];
        v94 = [v93 className];
        *buf = 136315650;
        v138 = "INReplaceVariablesInFormatStringFromCodable";
        v139 = 2112;
        v140 = v94;
        v141 = 2112;
        v142 = v31;
        _os_log_error_impl(&dword_18E991000, v92, OS_LOG_TYPE_ERROR, "%s [%@] No codable attribute for parameter key path %@", buf, 0x20u);
      }

LABEL_101:

      v16 = v104;
      v90 = 0;
    }

    else
    {
LABEL_92:

      v90 = v11;
    }
  }

  else
  {
    v90 = 0;
  }

  v96 = *MEMORY[0x1E69E9840];

  return v90;
}

id __INReplaceVariablesInFormatStringFromCodable_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2 || (objc_opt_class(), v3 = v2, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v3 = [MEMORY[0x1E695DEC8] if_arrayWithObjectIfNonNil:v2];
  }

  return v3;
}

id INStringsDictEntryForKeyInTable(void *a1, void *a2, void *a3, void *a4, __CFString **a5)
{
  v89 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = [v10 bundleIdentifier];
  v13 = [v11 bundleWithIdentifier:v12 fileURL:0];

  if (v13)
  {
    v14 = [v11 preferredLocalizationsForBundle:v13];
    v15 = [v14 firstObject];

    if (a5)
    {
      v16 = v15;
      *a5 = v15;
    }

    v17 = CFBundleCopyResourceURLForLocalization(v13, [v10 tableName], @"stringsdict", 0, v15);
    if (v17)
    {
      v18 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v17];
      v19 = v18;
      if (v18 && (([v18 objectForKey:v9], (v71 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v19, "objectForKey:", *a2), (v71 = objc_claimAutoreleasedReturnValue()) != 0)))
      {
        v20 = [MEMORY[0x1E695DF90] dictionary];
        v21 = [v71 objectForKey:@"NSStringLocalizedFormatKey"];
        v66 = a2;
        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v24 = v22;

        v25 = [v24 mutableCopy];
        if (v25)
        {
          v60 = v19;
          v61 = v17;
          v62 = v15;
          v63 = v11;
          v64 = v10;
          v65 = v9;
          v26 = [MEMORY[0x1E696AE70] _intents_sharedStringsDictFormatRegularExpression];
          v27 = [v26 matchesInString:v25 options:0 range:{0, objc_msgSend(v25, "length")}];

          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          obj = v27;
          v28 = 0x1E696A000uLL;
          v29 = v25;
          v72 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
          if (v72)
          {
            v30 = 0;
            v69 = v20;
            v70 = *v84;
            v68 = v25;
            do
            {
              v31 = 0;
              do
              {
                if (*v84 != v70)
                {
                  objc_enumerationMutation(obj);
                }

                v32 = [*(*(&v83 + 1) + 8 * v31) resultByAdjustingRangesWithOffset:v30];
                v33 = [v32 rangeAtIndex:1];
                v35 = [v29 substringWithRange:{v33, v34}];
                v36 = [v32 range];
                v38 = v37;
                v39 = [*(v28 + 3776) stringWithFormat:@"${%@}", v35];
                v40 = v36;
                v41 = v35;
                [v29 replaceCharactersInRange:v40 withString:{v38, v39}];

                v42 = [v71 objectForKey:v35];
                v43 = [v42 objectForKey:@"NSStringFormatValueTypeKey"];
                if (v43)
                {
                  v78 = v41;
                  v74 = v32;
                  v75 = v31;
                  v44 = MEMORY[0x1E696AE70];
                  v73 = v43;
                  v45 = [*(v28 + 3776) stringWithFormat:@"%%(.[0-9])?%@", v43];
                  v77 = [v44 regularExpressionWithPattern:v45 options:0 error:0];

                  v46 = [MEMORY[0x1E695DF90] dictionary];
                  v79 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v76 = v30;
                  if (_INStringsDictAcceptedKeys_onceToken != -1)
                  {
                    dispatch_once(&_INStringsDictAcceptedKeys_onceToken, &__block_literal_global_70);
                  }

                  v47 = _INStringsDictAcceptedKeys_acceptedKeys;
                  v48 = [v47 countByEnumeratingWithState:&v79 objects:v87 count:16];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *v80;
                    do
                    {
                      for (i = 0; i != v49; ++i)
                      {
                        if (*v80 != v50)
                        {
                          objc_enumerationMutation(v47);
                        }

                        v52 = *(*(&v79 + 1) + 8 * i);
                        v53 = [v42 objectForKey:v52];
                        if (v53)
                        {
                          v54 = v53;
                          v55 = [v53 length];
                          v56 = [*(v28 + 3776) stringWithFormat:@"${%@}", v78];
                          v57 = [v77 stringByReplacingMatchesInString:v54 options:0 range:0 withTemplate:{v55, v56}];

                          v28 = 0x1E696A000;
                          [v46 setObject:v57 forKey:v52];
                        }
                      }

                      v49 = [v47 countByEnumeratingWithState:&v79 objects:v87 count:16];
                    }

                    while (v49);
                  }

                  v20 = v69;
                  v41 = v78;
                  [v69 setObject:v46 forKey:v78];

                  v29 = v68;
                  v31 = v75;
                  v30 = v76;
                  v43 = v73;
                  v32 = v74;
                }

                --v30;

                ++v31;
              }

              while (v31 != v72);
              v72 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
            }

            while (v72);
          }

          *v66 = [v29 copy];
          v23 = v20;

          v10 = v64;
          v9 = v65;
          v15 = v62;
          v11 = v63;
          v19 = v60;
          v17 = v61;
        }

        else
        {
          v23 = 0;
          v29 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v58 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t _INPBSaveHealthSampleIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
LABEL_56:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addSampleUuids:v14];
            }

            goto LABEL_52;
          case 2:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_56;
            }

            PBReaderRecallMark();
            [a1 setRecordDate:v14];
            goto LABEL_52;
          case 3:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_56;
            }

            PBReaderRecallMark();
            [a1 setDefaultUnit:v14];
            goto LABEL_52;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_INPBWellnessValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBWellnessValueReadFrom(v14, a2))
          {
            goto LABEL_56;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addValuesUserProvidedUnit:v14];
          }

          goto LABEL_52;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_INPBString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_56;
          }

          PBReaderRecallMark();
          [a1 setPunchoutUrl:v14];
          goto LABEL_52;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBWellnessValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBWellnessValueReadFrom(v14, a2))
          {
            goto LABEL_56;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addValuesDefaultUnit:v14];
          }

          goto LABEL_52;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_56;
          }

          PBReaderRecallMark();
          [a1 setUserProvidedUnit:v14];
LABEL_52:

          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromCurrencyAmount(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromCurrencyAmountValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

_INPBCurrencyAmount *INIntentSlotValueTransformToCurrencyAmount(void *a1)
{
  v1 = INIntentSlotValueTransformToCurrencyAmountValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBCurrencyAmount);
    [(_INPBCurrencyAmount *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCurrencyAmounts(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromCurrencyAmount(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformFromCurrencyAmountValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromCurrencyAmountValue(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToCurrencyAmounts(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToCurrencyAmount(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSlotValueTransformToCurrencyAmountValues(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToCurrencyAmountValue(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

_INPBCurrencyAmountValue *INIntentSlotValueRedactedCurrencyAmountValueFromCurrencyAmountValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 valueMetadata];
  v8 = INPrivacyEntitlementOptionsForValueMetadata(v7);

  if ((v8 & a2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(_INPBCurrencyAmountValue);
    v10 = [v5 amount];
    v11 = INIntentSlotValueRedactedValueFromDecimalNumberValue(v10, a2);
    [(_INPBCurrencyAmountValue *)v9 setAmount:v11];

    v12 = [v5 currencyCode];
    [(_INPBCurrencyAmountValue *)v9 setCurrencyCode:v12];
  }

  return v9;
}

_INPBCurrencyAmount *INIntentSlotValueRedactedCurrencyAmountFromCurrencyAmount(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBCurrencyAmount);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v5 values];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = INIntentSlotValueRedactedCurrencyAmountValueFromCurrencyAmountValue(*(*(&v16 + 1) + 8 * i), a2, v6);
          if (v13)
          {
            [(_INPBCurrencyAmount *)v7 addValue:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueRedactedCurrencyAmountsFromCurrencyAmounts(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = INIntentSlotValueRedactedCurrencyAmountFromCurrencyAmount(*(*(&v17 + 1) + 8 * i), a2, v6);
        [v7 addObject:{v13, v17}];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t _INPBGetFileInformationIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_INPBIntentMetadata);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v28, a2))
          {
LABEL_74:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v28];
          goto LABEL_56;
        }

        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_70;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_70:
          [a1 setEntityType:v27];
          goto LABEL_71;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v28, a2))
            {
              goto LABEL_74;
            }

            PBReaderRecallMark();
            [a1 setEntityName:v28];
LABEL_56:

            goto LABEL_71;
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v38 & 0x7F) << v29;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_62;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v31;
            }

LABEL_62:
            [a1 setPropertyName:v35];
            goto LABEL_71;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_66;
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

LABEL_66:
            [a1 setQualifier:v20];
            goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_71:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBRideOptionReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v14 = objc_alloc_init(_INPBRideFareLineItem);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBRideFareLineItemReadFrom(v14, a2))
              {
LABEL_75:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addFareLineItems:v14];
              }

              goto LABEL_66;
            case 0xB:
              v14 = objc_alloc_init(_INPBUserActivity);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBUserActivityReadFrom(v14, a2))
              {
                goto LABEL_75;
              }

              PBReaderRecallMark();
              [a1 setUserActivityForBookingInApplication:v14];
              goto LABEL_66;
            case 0xC:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                LOBYTE(v24) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v24 & 0x7F) << v15;
                if ((v24 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_72;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_72:
              [a1 setUsesMeteredFare:v21];
              goto LABEL_67;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setAvailablePartySizeOptionsSelectionPrompt:v14];
              goto LABEL_66;
            case 8:
              v14 = PBReaderReadString();
              [a1 setSpecialPricing:v14];
              goto LABEL_66;
            case 9:
              v14 = objc_alloc_init(_INPBImageValue);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
              {
                goto LABEL_75;
              }

              PBReaderRecallMark();
              [a1 setSpecialPricingBadgeImage:v14];
              goto LABEL_66;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_INPBPriceRangeValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBPriceRangeValueReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            PBReaderRecallMark();
            [a1 setPriceRange:v14];
            goto LABEL_66;
          case 5:
            v14 = PBReaderReadString();
            [a1 setDisclaimerMessage:v14];
            goto LABEL_66;
          case 6:
            v14 = objc_alloc_init(_INPBRidePartySizeOption);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBRidePartySizeOptionReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addAvailablePartySizeOptions:v14];
            }

            goto LABEL_66;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            [a1 setName:v14];
LABEL_66:

            goto LABEL_67;
          case 2:
            v14 = PBReaderReadString();
            [a1 setSubtitle:v14];
            goto LABEL_66;
          case 3:
            v14 = objc_alloc_init(_INPBTimestamp);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBTimestampReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            PBReaderRecallMark();
            [a1 setEstimatedPickupDate:v14];
            goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_67:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INSpatialEventGetBackingType(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (10 * a1);
  }
}

uint64_t INSpatialEventGetFacadeType(int a1, int a2)
{
  v2 = a2 == 10;
  if (a2 == 20)
  {
    v2 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INSpatialEventGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"depart";
  }

  if (a1 == 1)
  {
    return @"arrive";
  }

  else
  {
    return v1;
  }
}