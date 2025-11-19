uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ATXUsageInsightsInterface()
{
  v33[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E7E1C8];
  v1 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_fetchAllDeliveredNotificationsWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_fetchUsageInsightsInferredATXModeEventsWithCompletion_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_fetchAllInterruptingAppSessionsWithCompletion_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_fetchAllPhubbingSessionsWithCompletion_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_fetchAllMindlessCyclingSessionsWithCompletion_ argumentIndex:0 ofReply:1];

  v22 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v24 = [v22 setWithArray:v23];
  [v0 setClasses:v24 forSelector:sel_fetchAllContinuousUsageSessionsWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t ATXPBSendToDigestSuggestionReadFrom(uint64_t a1, void *a2)
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

__CFString *ATXDigestOnboardingSuggestionOutcomeToString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C2F20[a1];
  }

  return v2;
}

uint64_t ATXPBDigestOnboardingSuggestionLoggingEventEnumsReadFrom(uint64_t a1, void *a2)
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

__CFString *NSStringForATXAppDirectoryInteractionEvent(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E80C2FD8[a1];
  }
}

uint64_t ATXPBNotificationGroupEventReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v28 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v28;
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 24);
        *(a1 + 24) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v30 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_38:
        *(a1 + 16) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF5D9718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF5D992C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5D9B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5DA56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5DBD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BF5DC014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BF5DC2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BF5DC478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5DC660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5DE1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *ATXUserEducationSuggestionEventTypeToString(uint64_t a1)
{
  if (!a1)
  {
    return @"Show suggestion";
  }

  if (a1 == 1)
  {
    return @"Dismiss Suggestion";
  }

  v3 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    ATXUserEducationSuggestionEventTypeToString_cold_1(a1, v3);
  }

  return @"Error";
}

void sub_1BF5E51C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5E6110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF5E7568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BF5E783C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5E7978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5E7B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5EC51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id joinedDisplayNames(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 displayName];

        if (v9)
        {
          v10 = [v8 displayName];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [v2 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v11 = [v2 componentsJoinedByString:{@", "}];

  return v11;
}

id stringWithGeohash(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  snprintf(__str, 9uLL, "%x", a1);
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];

  return v1;
}

id roundedDecimal(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AB98];
    v2 = a1;
    v3 = [v1 decimalNumberHandlerWithRoundingMode:0 scale:0xFFFFFFFFLL raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v4 = [v2 decimalNumberByRoundingAccordingToBehavior:v3];

    v5 = [v4 stringValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ATXPBAppDirectoryEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v61[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61[0] & 0x7F) << v5;
        if ((v61[0] & 0x80) == 0)
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
        if (v13 > 10)
        {
          switch(v13)
          {
            case 0xB:
              v29 = PBReaderReadString();
              if (v29)
              {
                [(ATXPBAppDirectoryEvent *)a1 addShownSuggestionIds:v29];
              }

              goto LABEL_99;
            case 0xC:
              v29 = PBReaderReadString();
              if (v29)
              {
                [(ATXPBAppDirectoryEvent *)a1 addEngagedSuggestionIds:v29];
              }

LABEL_99:

              goto LABEL_127;
            case 0xD:
              v29 = objc_alloc_init(ATXPBAppDirectoryEventMetadata);
              objc_storeStrong((a1 + 88), v29);
              v61[0] = 0;
              v61[1] = 0;
              if (!PBReaderPlaceMark() || !ATXPBAppDirectoryEventMetadataReadFrom(v29, a2))
              {

                return 0;
              }

              PBReaderRecallMark();
              goto LABEL_99;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v32 = 0;
              v33 = 0;
              v34 = 0;
              *(a1 + 104) |= 0x20u;
              while (1)
              {
                LOBYTE(v61[0]) = 0;
                v35 = [a2 position] + 1;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                {
                  v37 = [a2 data];
                  [v37 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v34 |= (v61[0] & 0x7F) << v32;
                if ((v61[0] & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v11 = v33++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_113;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v34;
              }

LABEL_113:
              v57 = 48;
              goto LABEL_126;
            case 8:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              *(a1 + 104) |= 0x40u;
              while (1)
              {
                LOBYTE(v61[0]) = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  v55 = [a2 data];
                  [v55 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v61[0] & 0x7F) << v50;
                if ((v61[0] & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v11 = v51++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_125;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v52;
              }

LABEL_125:
              v57 = 56;
              goto LABEL_126;
            case 9:
              v21 = PBReaderReadString();
              v22 = 64;
LABEL_96:
              v56 = *(a1 + v22);
              *(a1 + v22) = v21;

              goto LABEL_127;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 104) |= 4u;
            while (1)
            {
              LOBYTE(v61[0]) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v61[0] & 0x7F) << v38;
              if ((v61[0] & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_117;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v40;
            }

LABEL_117:
            v57 = 24;
            goto LABEL_126;
          case 5:
            v21 = PBReaderReadString();
            v22 = 72;
            goto LABEL_96;
          case 6:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 104) |= 1u;
            while (1)
            {
              LOBYTE(v61[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v61[0] & 0x7F) << v23;
              if ((v61[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_109;
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

LABEL_109:
            v57 = 8;
            goto LABEL_126;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            *(a1 + 104) |= 8u;
            v61[0] = 0;
            v30 = [a2 position] + 8;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:v61 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 32) = v61[0];
            goto LABEL_127;
          case 2:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 104) |= 0x10u;
            while (1)
            {
              LOBYTE(v61[0]) = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v61[0] & 0x7F) << v44;
              if ((v61[0] & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_121;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v46;
            }

LABEL_121:
            v57 = 40;
            goto LABEL_126;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 104) |= 2u;
            while (1)
            {
              LOBYTE(v61[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v61[0] & 0x7F) << v14;
              if ((v61[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_105;
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

LABEL_105:
            v57 = 16;
LABEL_126:
            *(a1 + v57) = v20;
            goto LABEL_127;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_127:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBModeConfigurationLoggingEventEnumsReadFrom(uint64_t a1, void *a2)
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

uint64_t ATXPBUserNotificationAppDigestReadFrom(void *a1, void *a2)
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
        LOBYTE(v18[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18[0] & 0x7F) << v5;
        if ((v18[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(ATXPBUserNotificationDigestNotificationGroup);
        [a1 addAppMarqueeGroups:v15];
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = a1[2];
        a1[2] = v14;
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(ATXPBUserNotificationDigestNotificationGroup);
    [a1 addNonAppMarqueeGroups:v15];
LABEL_23:
    v18[0] = 0;
    v18[1] = 0;
    if (!PBReaderPlaceMark() || !ATXPBUserNotificationDigestNotificationGroupReadFrom(v15, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBFaceGalleryEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v25[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25[0] & 0x7F) << v5;
        if ((v25[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v25[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v25[0] & 0x7F) << v14;
          if ((v25[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_37;
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

LABEL_37:
        *(a1 + 16) = v20;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(ATXPBFaceGalleryConfiguration);
        objc_storeStrong((a1 + 8), v21);
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || !ATXPBFaceGalleryConfigurationReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 3)
      {
        if ((ATXPBFaceGalleryEventReadFrom_cold_1(a1, &v24, a2, v25) & 1) == 0)
        {
          return LOBYTE(v25[0]);
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXMPBHomeScreenAppPanelLaunchRatioTrackerReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___ATXMPBHomeScreenAppPanelLaunchRatioTracker__location;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___ATXMPBHomeScreenAppPanelLaunchRatioTracker__location;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___ATXMPBHomeScreenAppPanelLaunchRatioTracker__ratioType;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___ATXMPBHomeScreenAppPanelLaunchRatioTracker__ratioType;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF5FC224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BF5FC5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BF5FE2E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t ATXPBUserNotificationDigestNotificationGroupReadFrom(uint64_t a1, void *a2)
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
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_41;
          case 2:
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_41;
          case 3:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_41;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v16 = objc_alloc_init(ATXPBUserNotification);
          [a1 addRankedNotifications:v16];
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark() || !ATXPBUserNotificationReadFrom(v16, a2))
          {
LABEL_47:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 7)
        {
          v16 = objc_alloc_init(ATXPBSharedDigestEngagementTrackingMetrics);
          objc_storeStrong((a1 + 48), v16);
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark() || !ATXPBSharedDigestEngagementTrackingMetricsReadFrom(v16, a2))
          {
            goto LABEL_47;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 4)
        {
          *(a1 + 64) |= 1u;
          v23 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v23;
          goto LABEL_42;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 40;
LABEL_41:
          v19 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id OUTLINED_FUNCTION_3_6(id a1)
{

  return a1;
}

void sub_1BF609038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ATXPBUrgencyTuningSuggestionReadFrom(uint64_t a1, void *a2)
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

uint64_t ATXPBHeuristicMetadataReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        v13 = &OBJC_IVAR___ATXPBHeuristicMetadata__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ATXPBHeuristicMetadata__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBMissedNotificationRankingReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 64) |= 1u;
            v23 = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v23;
            goto LABEL_46;
          case 2:
            v16 = objc_alloc_init(ATXPBUserNotificationDigestNotificationGroup);
            [a1 addRankedGroups:v16];
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !ATXPBUserNotificationDigestNotificationGroupReadFrom(v16, a2))
            {
LABEL_48:

              return 0;
            }

            goto LABEL_43;
          case 3:
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_37;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v16 = objc_alloc_init(ATXPBSharedDigestEngagementTrackingMetrics);
          objc_storeStrong((a1 + 48), v16);
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark() || !ATXPBSharedDigestEngagementTrackingMetricsReadFrom(v16, a2))
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        if (v13 == 7)
        {
          v16 = objc_alloc_init(ATXPBDigestTimeline);
          objc_storeStrong((a1 + 16), v16);
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark() || !ATXPBDigestTimelineReadFrom(v16, a2))
          {
            goto LABEL_48;
          }

LABEL_43:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_37;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_37:
          v19 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBFaceGallerySectionReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(ATXPBFaceGalleryItem);
        [a1 addItems:v21];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !ATXPBFaceGalleryItemReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          a1[24] |= 2u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
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

LABEL_50:
          v28 = 20;
LABEL_51:
          *&a1[v28] = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    a1[24] |= 1u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_46;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v24;
    }

LABEL_46:
    v28 = 16;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

id ATXSportsInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E7EB58];
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_class();
  v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v4 forSelector:sel_requestedSchedulesForTeamsWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

__CFString *ATXUserEducationSuggestionFeedbackTypeToString(unint64_t a1)
{
  if (a1 < 0xE)
  {
    return off_1E80C3ED0[a1];
  }

  v3 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    ATXUserEducationSuggestionFeedbackTypeToString_cold_1(a1, v3);
  }

  return @"Error";
}

void sub_1BF612CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF612F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *ATXModeConfigurationUIToString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C4030[a1];
  }

  return v2;
}

void sub_1BF617C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ATXPBAVRouteInfoReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_35;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_35:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
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

            goto LABEL_36;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF61C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_object_dispose(&a9, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

uint64_t __OSIntelligenceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OSIntelligenceLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1BF61E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBSendMessagesToDigestSuggestionReadFrom(uint64_t a1, void *a2)
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

void sub_1BF621DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ATXModeForDNDSemanticType(uint64_t a1)
{
  if ((a1 + 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1BF6F5738[a1 + 1];
  }
}

unint64_t *ATXCacheReadInteger(unint64_t *result, unint64_t a2)
{
  v2 = *result + 8;
  if (v2 > a2)
  {
    __break(1u);
  }

  else
  {
    v3 = **result;
    *result = v2;
    return v3;
  }

  return result;
}

unint64_t *ATXCacheReadUnsignedInteger(unint64_t *result, unint64_t a2)
{
  v2 = *result + 8;
  if (v2 > a2)
  {
    __break(1u);
  }

  else
  {
    v3 = **result;
    *result = v2;
    return v3;
  }

  return result;
}

unint64_t *ATXCacheReadBoolean(unint64_t *result, unint64_t a2)
{
  v2 = *result + 1;
  if (v2 > a2)
  {
    __break(1u);
  }

  else
  {
    v3 = **result;
    *result = v2;
    return (v3 & 1);
  }

  return result;
}

unint64_t *ATXCacheReadString(unint64_t *result, unint64_t a2)
{
  v2 = *result + 8;
  if (v2 > a2 || (v3 = result, v4 = **result, *result = v2, v2 + v4 > a2))
  {
    __break(1u);
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:*result length:v4 encoding:4];
    *v3 += v4;

    return v5;
  }

  return result;
}

unint64_t *ATXCacheReadData(unint64_t *result, unint64_t a2)
{
  v2 = *result + 8;
  if (v2 > a2 || (v3 = result, v4 = **result, *result = v2, v2 + v4 > a2))
  {
    __break(1u);
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*result length:v4];
    *v3 += v4;

    return v5;
  }

  return result;
}

const void **ATXCacheReadFloats(const void **result, unint64_t a2, void *__dst, uint64_t a4)
{
  if (*result + 4 * a4 > a2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = 4 * a4;
    result = memcpy(__dst, *result, 4 * a4);
    *v4 = *v4 + v5;
  }

  return result;
}

const void **ATXCacheReadDoubles(const void **result, unint64_t a2, void *__dst, uint64_t a4)
{
  if (*result + 8 * a4 > a2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = 8 * a4;
    result = memcpy(__dst, *result, 8 * a4);
    *v4 = *v4 + v5;
  }

  return result;
}

uint64_t ATXPBUserNotificationDigestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_40;
          }

          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_40;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v16 = objc_alloc_init(ATXPBSharedDigestEngagementTrackingMetrics);
              objc_storeStrong((a1 + 72), v16);
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark() || !ATXPBSharedDigestEngagementTrackingMetricsReadFrom(v16, a2))
              {
LABEL_59:

                return 0;
              }

              goto LABEL_51;
            case 9:
              v16 = objc_alloc_init(ATXPBDigestTimeline);
              objc_storeStrong((a1 + 24), v16);
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark() || !ATXPBDigestTimelineReadFrom(v16, a2))
              {
                goto LABEL_59;
              }

              goto LABEL_51;
            case 0xA:
              v16 = objc_alloc_init(ATXPBUserNotificationAppDigest);
              [a1 addAppDigests:v16];
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark() || !ATXPBUserNotificationAppDigestReadFrom(v16, a2))
              {
                goto LABEL_59;
              }

              goto LABEL_51;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          *(a1 + 88) |= 1u;
          v23 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v23;
          goto LABEL_52;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(ATXPBUserNotificationDigestNotificationGroup);
          [a1 addMessageGroups:v16];
          goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = objc_alloc_init(ATXPBUserNotificationDigestNotificationGroup);
            [a1 addHighlightedGroups:v16];
LABEL_46:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !ATXPBUserNotificationDigestNotificationGroupReadFrom(v16, a2))
            {
              goto LABEL_59;
            }

LABEL_51:
            PBReaderRecallMark();

            goto LABEL_52;
          case 4:
            v16 = objc_alloc_init(ATXPBUserNotificationDigestNotificationGroup);
            [a1 addRankedGroups:v16];
            goto LABEL_46;
          case 5:
            v14 = PBReaderReadString();
            v15 = 80;
LABEL_40:
            v19 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF630598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF636DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF637C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBNotificationQuietingSuggestionReadFrom(uint64_t a1, void *a2)
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

void sub_1BF63D124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF6402D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BF642984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64383C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF644580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF644840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF644A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF645148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF6462B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF647C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF6488CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF648F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF649210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64957C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF649894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF649BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF649F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64A334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64AA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64ADFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64C72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64CB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64D11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BF64E2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64E5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF64ECA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x34u);
}

id initializeDNDToggleDoNotDisturbIntent()
{
  v0 = objc_autoreleasePoolPush();
  v1 = loadIntentWithBundleIdAndName(@"com.apple.DoNotDisturb.Intents", @"DNDToggleDoNotDisturbIntent");
  v2 = v1;
  if (v1)
  {
    [v1 _setExtensionBundleId:@"com.apple.DoNotDisturb.Intents"];
    v3 = [MEMORY[0x1E696E868] imageNamed:@"DoNotDisturb"];
    [v3 _setBundleIdentifier:@"com.apple.DoNotDisturb.Intents"];
    [v2 setImage:v3 forParameterNamed:@"state"];
    v4 = objc_alloc(MEMORY[0x1E696E910]);
    v5 = DNDModeLocalizedNameForSemanticType();
    v6 = [v4 initWithIdentifier:@"com.apple.donotdisturb.mode.default" displayString:v5];
    [v2 setValue:v6 forKey:@"mode"];

    v7 = v2;
  }

  objc_autoreleasePoolPop(v0);

  return v2;
}

id personFromCallRecipient(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = [v5 containsString:@"@"];
  v9 = __atxlog_handle_heuristic();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      personFromCallRecipient_cold_2();
    }

    v11 = 1;
  }

  else
  {
    if (v10)
    {
      personFromCallRecipient_cold_1();
    }

    v11 = 2;
  }

  v12 = [objc_alloc(MEMORY[0x1E696E948]) initWithValue:v5 type:v11];
  v13 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v12 nameComponents:0 displayName:v6 image:0 contactIdentifier:v7 customIdentifier:v5];

  return v13;
}

NSObject *loadIntentWithBundleIdAndName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v3 error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [MEMORY[0x1E696E9B8] schemaWithBundleRecord:v5 fallbackToSystemSchema:0];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696E880]) _initWithIdentifier:0 schema:v7 name:v4 data:0];
      v9 = v8;
      if (v8)
      {
        v9 = v8;
        v10 = v9;
      }

      else
      {
        v11 = __atxlog_handle_heuristic();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          loadIntentWithBundleIdAndName_cold_1();
        }

        v10 = 0;
      }
    }

    else
    {
      v9 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        loadIntentWithBundleIdAndName_cold_2();
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      loadIntentWithBundleIdAndName_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

void sub_1BF651804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF651C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTUpdateAlarmIntentClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  result = objc_getClass("MTUpdateAlarmIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTUpdateAlarmIntentClass_block_invoke_cold_1();
  }

  getMTUpdateAlarmIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void MobileTimerLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __MobileTimerLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E80C5320;
    v2 = 0;
    MobileTimerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    MobileTimerLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __MobileTimerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMTCreateAlarmIntentClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  result = objc_getClass("MTCreateAlarmIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTCreateAlarmIntentClass_block_invoke_cold_1();
  }

  getMTCreateAlarmIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return [v0 captureType];
}

uint64_t ATXRemoteAppSuggestionsEnabled()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.Spotlight"];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = @"com.apple.Spotlight";
  }

  v4 = MEMORY[0x1E695E000];
  v5 = v3;
  v6 = [[v4 alloc] initWithSuiteName:v5];

  v7 = [v6 stringArrayForKey:@"EnabledPreferenceRules"];
  if ([v7 containsObject:@"System.onenessApps"])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 containsObject:@"System.iphoneApps"] ^ 1;
  }

  return v8;
}

void sub_1BF654198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF655924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBSpotlightEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
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
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_52;
          }

          if (v13 == 7)
          {
            v16 = PBReaderReadString();
            if (v16)
            {
              [(ATXPBSpotlightEvent *)a1 addAppSuggestionIds:v16];
            }

            goto LABEL_56;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v16 = PBReaderReadString();
              if (v16)
              {
                [(ATXPBSpotlightEvent *)a1 addActionSuggestionIds:v16];
              }

              goto LABEL_56;
            case 9:
              v16 = objc_alloc_init(ATXPBSpotlightEventMetadata);
              objc_storeStrong((a1 + 80), v16);
              v30[0] = 0;
              v30[1] = 0;
              if (!PBReaderPlaceMark() || !ATXPBSpotlightEventMetadataReadFrom(v16, a2))
              {

                return 0;
              }

              PBReaderRecallMark();
              goto LABEL_56;
            case 0xA:
              v16 = PBReaderReadString();
              if (v16)
              {
                [(ATXPBSpotlightEvent *)a1 addDocumentSuggestionIds:v16];
              }

LABEL_56:

              goto LABEL_65;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          *(a1 + 88) |= 1u;
          v30[0] = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v30[0];
          goto LABEL_65;
        }

        if (v13 == 2)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v30[0] & 0x7F) << v17;
            if ((v30[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_62:
          *(a1 + 72) = v23;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_52;
          case 4:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_52;
          case 5:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_52:
            v26 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBDigestTimelineReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 40) |= 4u;
          v30 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___ATXPBDigestTimeline__firstScheduledViewTimestamp;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 1u;
          v30 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___ATXPBDigestTimeline__digestRemovedTimestamp;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 40) |= 8u;
          v30 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___ATXPBDigestTimeline__firstUpcomingViewTimestamp;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          *(a1 + 40) |= 2u;
          v30 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___ATXPBDigestTimeline__firstCollapsedViewTimestamp;
LABEL_44:
          *(a1 + *v24) = v23;
          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

ATXComplication *ATXComplicationFromCHSWidget(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [ATXComplication alloc];
    v3 = [v1 extensionIdentity];
    v4 = [v3 extensionBundleIdentifier];
    v5 = [v1 kind];
    v6 = [v1 extensionIdentity];
    v7 = [v6 containerBundleIdentifier];
    v8 = [v1 family];
    v9 = [v1 intentReference];

    v10 = [v9 intent];
    v11 = [(ATXComplication *)v2 initWithExtensionBundleIdentifier:v4 kind:v5 containerBundleIdentifier:v7 widgetFamily:v8 intent:v10 source:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id CHSWidgetFromATXComplication(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E6994370];
    v2 = a1;
    v3 = [v1 alloc];
    v4 = objc_alloc(MEMORY[0x1E6994290]);
    v5 = [v2 extensionBundleIdentifier];
    v6 = [v2 containerBundleIdentifier];
    v7 = [v4 initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 deviceIdentifier:0];
    v8 = [v2 kind];
    v9 = [v2 widgetFamily];
    v10 = [v2 intent];

    v11 = [v3 initWithExtensionIdentity:v7 kind:v8 family:v9 intent:v10 activityIdentifier:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id errorWithDescription(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = a1;
  v3 = [v1 alloc];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [v3 initWithDomain:@"ATXComplication" code:1 userInfo:v4];

  return v5;
}

uint64_t ATXPBNotificationSmartPauseSuggestionReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 24) |= 1u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___ATXPBNotificationSmartPauseSuggestion__expirationTimestamp;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 2u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___ATXPBNotificationSmartPauseSuggestion__pauseDuration;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return objc_opt_class();
}

uint64_t ATXPBUserNotificationLoggingEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v42[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42[0] & 0x7F) << v5;
        if ((v42[0] & 0x80) == 0)
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
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v42[0] & 0x7F) << v26;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v28;
          }

LABEL_67:
          v38 = 24;
LABEL_72:
          *(a1 + v38) = v22;
          goto LABEL_75;
        }

        if (v13 == 3)
        {
          *(a1 + 48) |= 1u;
          v42[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v42[0];
          goto LABEL_75;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_75;
      }

      v23 = objc_alloc_init(ATXPBUserNotification);
      objc_storeStrong((a1 + 40), v23);
      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || !ATXPBUserNotificationReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_75:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v24 = PBReaderReadString();
        v25 = *(a1 + 32);
        *(a1 + 32) = v24;

        goto LABEL_75;
      case 5:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v42[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v42[0] & 0x7F) << v32;
          if ((v42[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v34;
        }

LABEL_71:
        v38 = 16;
        goto LABEL_72;
      case 6:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v42[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v42[0] & 0x7F) << v16;
          if ((v42[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_63;
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

LABEL_63:
        v38 = 20;
        goto LABEL_72;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF65F140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF6697F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF6698E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF6699C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF669A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF66C39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBUserNotificationModelScoreReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
            *(a1 + 56) |= 4u;
            v34 = 0;
            v18 = [a2 position] + 8;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v30 = v34;
            v31 = 24;
LABEL_53:
            *(a1 + v31) = v30;
            goto LABEL_54;
          case 5:
            v16 = PBReaderReadString();
            v17 = 48;
            break;
          case 6:
            v16 = PBReaderReadData();
            v17 = 40;
            break;
          default:
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
        }
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v34 & 0x7F) << v21;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_48;
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

LABEL_48:
            *(a1 + 8) = v27;
            goto LABEL_54;
          }

          if (v13 != 3)
          {
            goto LABEL_32;
          }

          *(a1 + 56) |= 2u;
          v34 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v34;
          v31 = 16;
          goto LABEL_53;
        }

        v16 = PBReaderReadString();
        v17 = 32;
      }

      v28 = *(a1 + v17);
      *(a1 + v17) = v16;

LABEL_54:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *NSStringFromATXSuggestedPageType(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80C59F8[a1];
  }
}

void sub_1BF66F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF66FAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF66FBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF670024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BF67045C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id extensionBundleIdAndKindKey(void *a1)
{
  v1 = a1;
  v2 = [v1 extensionBundleIdentifier];
  v3 = [v1 kind];

  v4 = keyForStrings(v2, v3);

  return v4;
}

uint64_t ATXPBHomeScreenEventReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v49[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v49[0] & 0x7F) << v5;
      if ((v49[0] & 0x80) == 0)
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
        *(a1 + 124) |= 1u;
        v49[0] = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v49[0];
        goto LABEL_92;
      case 2u:
        v23 = PBReaderReadString();
        v24 = 32;
        goto LABEL_72;
      case 3u:
        v23 = PBReaderReadString();
        v24 = 56;
        goto LABEL_72;
      case 4u:
        v23 = PBReaderReadString();
        v24 = 24;
        goto LABEL_72;
      case 5u:
        v23 = PBReaderReadString();
        v24 = 64;
        goto LABEL_72;
      case 6u:
        v23 = PBReaderReadString();
        v24 = 88;
        goto LABEL_72;
      case 7u:
        v23 = PBReaderReadString();
        v24 = 96;
        goto LABEL_72;
      case 8u:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 124) |= 8u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v49[0] & 0x7F) << v32;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_84;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v34;
        }

LABEL_84:
        v45 = 104;
        goto LABEL_89;
      case 9u:
        v23 = PBReaderReadString();
        v24 = 40;
        goto LABEL_72;
      case 0xAu:
        v23 = PBReaderReadString();
        v24 = 112;
        goto LABEL_72;
      case 0xBu:
        v22 = PBReaderReadString();
        if (v22)
        {
          [(ATXPBHomeScreenEvent *)a1 addSuggestionIds:v22];
        }

        goto LABEL_70;
      case 0xCu:
        v22 = objc_alloc_init(ATXPBHomeScreenEventMetadata);
        objc_storeStrong((a1 + 48), v22);
        v49[0] = 0;
        v49[1] = 0;
        if (PBReaderPlaceMark() && ATXPBHomeScreenEventMetadataReadFrom(v22, a2))
        {
          PBReaderRecallMark();
LABEL_70:

LABEL_92:
          v47 = [a2 position];
          if (v47 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0xDu:
        v23 = PBReaderReadString();
        v24 = 16;
LABEL_72:
        v44 = *(a1 + v24);
        *(a1 + v24) = v23;

        goto LABEL_92;
      case 0xEu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 124) |= 2u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v49[0] & 0x7F) << v38;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_88;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v40;
        }

LABEL_88:
        v45 = 72;
        goto LABEL_89;
      case 0xFu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 124) |= 4u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v49[0] & 0x7F) << v15;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_78;
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

LABEL_78:
        v45 = 76;
LABEL_89:
        *(a1 + v45) = v21;
        goto LABEL_92;
      case 0x10u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 124) |= 0x10u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v49[0] & 0x7F) << v25;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            LOBYTE(v31) = 0;
            goto LABEL_80;
          }
        }

        v31 = (v27 != 0) & ~[a2 hasError];
LABEL_80:
        *(a1 + 120) = v31;
        goto LABEL_92;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_92;
    }
  }
}

void sub_1BF6755DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBUIEventReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        v14 = &OBJC_IVAR___ATXPBUIEvent__consumerSubType;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___ATXPBUIEvent__event;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id ATXNotificationSuggestionScopeToString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = *(&off_1E80C5C38 + (a1 & 7));
  }

  return v2;
}

id ATXSuggestionTypeToString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = *(&off_1E80C5C68 + (a1 & 0xF));
  }

  return v2;
}

id ATXNotificationSuggestionEventTypeToString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = *(&off_1E80C5CC0 + (a1 & 0xF));
  }

  return v2;
}

id ATXNotificationGroupEventTypeToString(uint64_t a1)
{
  if (a1 >= 0x16)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = *(&off_1E80C5D10 + (a1 & 0x1F));
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_5_10()
{

  return objc_opt_class();
}

__CFString *ATXStringForStackLayoutSize(unint64_t a1)
{
  if (a1 < 5)
  {
    return *(&off_1E80C5DC0 + a1);
  }

  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    ATXStringForStackLayoutSize_cold_1(v2);
  }

  return @"Unknown";
}

__CFString *ATXStringForStackKind(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"ATXStackLayoutKindPinnedWidget";
  }

  else
  {
    return *(&off_1E80C5DE8 + a1);
  }
}

__CFString *ATXStringForStackLocation(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"ATXStackLayoutLocationTodayPage";
  }

  else
  {
    return *(&off_1E80C5E28 + a1);
  }
}

__CFString *ATXCAStringForStackLocation(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"TodayPage";
  }

  else
  {
    return *(&off_1E80C5E58 + a1);
  }
}

__CFString *ATXCAStringForStackLayoutSize(unint64_t a1)
{
  if (a1 < 5)
  {
    return *(&off_1E80C5E88 + a1);
  }

  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    ATXCAStringForStackLayoutSize_cold_1(v2);
  }

  return @"Unknown";
}

uint64_t ATXStackLayoutSizeForNSString(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:@"ATXStackLayoutSize2x2"] & 1) == 0)
  {
    if ([v1 isEqualToString:@"ATXStackLayoutSize2x4"])
    {
      v2 = 1;
      goto LABEL_11;
    }

    if ([v1 isEqualToString:@"ATXStackLayoutSize4x4"])
    {
      v2 = 2;
      goto LABEL_11;
    }

    if ([v1 isEqualToString:@"ATXStackLayoutSize6x4"])
    {
      v2 = 3;
      goto LABEL_11;
    }

    if ([v1 isEqualToString:@"ATXStackLayoutSize4x8"])
    {
      v2 = 4;
      goto LABEL_11;
    }

    v4 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      ATXStackLayoutSizeForNSString_cold_1(v1, v4);
    }
  }

  v2 = 0;
LABEL_11:

  return v2;
}

uint64_t ATXStackLocationForPageAndIndex(void *a1, unint64_t a2)
{
  v3 = [a1 pageIndex];
  v4 = a2 + 2;
  if (a2 >= 3)
  {
    v4 = 5;
  }

  if (v3 == 20000)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t ATXStackKindForStack(void *a1)
{
  v1 = a1;
  v2 = [v1 widgets];
  v3 = [v2 count];

  if (v3 == 1)
  {
    v4 = 1;
  }

  else if ([v1 allowsSmartRotate] && (objc_msgSend(v1, "allowsNewWidget") & 1) != 0)
  {
    v4 = 4;
  }

  else if ([v1 allowsSmartRotate] && !objc_msgSend(v1, "allowsNewWidget"))
  {
    v4 = 6;
  }

  else if (([v1 allowsSmartRotate] & 1) != 0 || (objc_msgSend(v1, "allowsNewWidget") & 1) == 0)
  {
    v4 = 7;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

uint64_t ATXStackLayoutSizeForPBLayoutSize(int a1)
{
  v1 = (a1 - 2);
  if (v1 < 4)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ATXStackKindForPBKind(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 7)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ATXStackLocationForPBLocation(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1BF6F5818[a1 - 1];
  }
}

uint64_t ATXStackLayoutSizeFromCHSWidgetFamily(uint64_t a1)
{
  if ((a1 - 2) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1BF6F5868[a1 - 2];
  }
}

void sub_1BF679A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaExperienceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80C5EB0;
    v5 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    __getAVSystemControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVSystemControllerClass_block_invoke_cold_1();
  }

  getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaExperienceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  return result;
}

id ATXTimeIntelligenceInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E828F8];
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v2 forSelector:sel_predictedTimelineWithDate_completionHandler_ argumentIndex:0 ofReply:0];

  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  [v0 setClasses:v6 forSelector:sel_predictedTimelineWithDate_completionHandler_ argumentIndex:0 ofReply:1];

  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  [v0 setClasses:v8 forSelector:sel_predictedDailyOverviewWithDate_options_completionHandler_ argumentIndex:0 ofReply:0];

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  [v0 setClasses:v10 forSelector:sel_predictedDailyOverviewWithDate_options_completionHandler_ argumentIndex:1 ofReply:0];

  v11 = objc_autoreleasePoolPush();
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v11);
  [v0 setClasses:v12 forSelector:sel_predictedDailyOverviewWithDate_options_completionHandler_ argumentIndex:0 ofReply:1];

  v13 = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v13);
  [v0 setClasses:v14 forSelector:sel_predictedFreeMomentsWithDateRange_options_completionHandler_ argumentIndex:0 ofReply:0];

  v15 = objc_autoreleasePoolPush();
  v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v15);
  [v0 setClasses:v16 forSelector:sel_predictedFreeMomentsWithDateRange_options_completionHandler_ argumentIndex:1 ofReply:0];

  v17 = objc_autoreleasePoolPush();
  v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v17);
  [v0 setClasses:v18 forSelector:sel_predictedFreeMomentsWithDateRange_options_completionHandler_ argumentIndex:0 ofReply:1];

  v19 = objc_autoreleasePoolPush();
  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v19);
  [v0 setClasses:v20 forSelector:sel_computeDailySummaryWithDate_completionHandler_ argumentIndex:0 ofReply:0];

  v21 = objc_autoreleasePoolPush();
  v22 = objc_alloc(MEMORY[0x1E695DFD8]);
  v23 = objc_opt_class();
  v24 = [v22 initWithObjects:{v23, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v21);
  [v0 setClasses:v24 forSelector:sel_computeDailySummaryWithDate_completionHandler_ argumentIndex:0 ofReply:1];

  v25 = objc_autoreleasePoolPush();
  v26 = objc_alloc(MEMORY[0x1E695DFD8]);
  v27 = objc_opt_class();
  v28 = [v26 initWithObjects:{v27, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v25);
  [v0 setClasses:v28 forSelector:sel_computeCompactTimeSummaryWithOptions_completionHandler_ argumentIndex:0 ofReply:1];

  v29 = objc_autoreleasePoolPush();
  v30 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v29);
  [v0 setClasses:v30 forSelector:sel_invokeActionWithIdentifier_forEvent_completionHandler_ argumentIndex:1 ofReply:0];

  v31 = objc_autoreleasePoolPush();
  v32 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v31);
  [v0 setClasses:v32 forSelector:sel_invokeFeedbackOption_forEvent_referenceDate_completionHandler_ argumentIndex:0 ofReply:0];

  v33 = objc_autoreleasePoolPush();
  v34 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v33);
  [v0 setClasses:v34 forSelector:sel_invokeFeedbackOption_forEvent_referenceDate_completionHandler_ argumentIndex:1 ofReply:0];

  v35 = objc_autoreleasePoolPush();
  v36 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v35);
  [v0 setClasses:v36 forSelector:sel_rescheduleEvent_proposedDate_referenceDate_completionHandler_ argumentIndex:0 ofReply:0];

  v37 = objc_autoreleasePoolPush();
  v38 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v37);
  [v0 setClasses:v38 forSelector:sel_rescheduleEvent_proposedDate_referenceDate_completionHandler_ argumentIndex:1 ofReply:0];

  v39 = objc_autoreleasePoolPush();
  v40 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v39);
  [v0 setClasses:v40 forSelector:sel_savePinnedTimeEvent_completionHandler_ argumentIndex:0 ofReply:0];

  v41 = objc_autoreleasePoolPush();
  v42 = objc_alloc(MEMORY[0x1E695DFD8]);
  v43 = objc_opt_class();
  v44 = [v42 initWithObjects:{v43, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v41);
  [v0 setClasses:v44 forSelector:sel_loadPinnedTimeEventsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v45 = objc_autoreleasePoolPush();
  v46 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v45);
  [v0 setClasses:v46 forSelector:sel_saveScheduledPinnedTimeEvent_completionHandler_ argumentIndex:0 ofReply:0];

  v47 = objc_autoreleasePoolPush();
  v48 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v47);
  [v0 setClasses:v48 forSelector:sel_logDidInvokeWidgetForEvent_completionHandler_ argumentIndex:0 ofReply:0];

  return v0;
}

id __atxlog_handle_xpc()
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v1 = __atxlog_handle_xpc_log;

  return v1;
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "xpc");
  v1 = __atxlog_handle_xpc_log;
  __atxlog_handle_xpc_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_heuristic()
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v1 = __atxlog_handle_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "heuristic");
  v1 = __atxlog_handle_heuristic_log;
  __atxlog_handle_heuristic_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_notifications()
{
  if (__atxlog_handle_notifications_onceToken != -1)
  {
    __atxlog_handle_notifications_cold_1();
  }

  v1 = __atxlog_handle_notifications_log;

  return v1;
}

uint64_t ____atxlog_handle_notifications_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "notifications");
  v1 = __atxlog_handle_notifications_log;
  __atxlog_handle_notifications_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_pmm()
{
  if (__atxlog_handle_pmm_onceToken != -1)
  {
    __atxlog_handle_pmm_cold_1();
  }

  v1 = __atxlog_handle_pmm_log;

  return v1;
}

uint64_t ____atxlog_handle_pmm_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.mm", "GENERAL");
  v1 = __atxlog_handle_pmm_log;
  __atxlog_handle_pmm_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_dailyroutines()
{
  if (__atxlog_handle_dailyroutines_onceToken != -1)
  {
    __atxlog_handle_dailyroutines_cold_1();
  }

  v1 = __atxlog_handle_dailyroutines_log;

  return v1;
}

uint64_t ____atxlog_handle_dailyroutines_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");
  v1 = __atxlog_handle_dailyroutines_log;
  __atxlog_handle_dailyroutines_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____atxlog_handle_modes_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "modes");
  v1 = __atxlog_handle_modes_log;
  __atxlog_handle_modes_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "hero");
  v1 = __atxlog_handle_hero_log;
  __atxlog_handle_hero_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_deletions()
{
  if (__atxlog_handle_deletions_onceToken != -1)
  {
    __atxlog_handle_deletions_cold_1();
  }

  v1 = __atxlog_handle_deletions_log;

  return v1;
}

uint64_t ____atxlog_handle_deletions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "deletions");
  v1 = __atxlog_handle_deletions_log;
  __atxlog_handle_deletions_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_gi()
{
  if (__atxlog_handle_gi_onceToken != -1)
  {
    __atxlog_handle_gi_cold_1();
  }

  v1 = __atxlog_handle_gi_log;

  return v1;
}

uint64_t ____atxlog_handle_gi_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "information");
  v1 = __atxlog_handle_gi_log;
  __atxlog_handle_gi_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_timeline()
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v1 = __atxlog_handle_timeline_log;

  return v1;
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "timeline");
  v1 = __atxlog_handle_timeline_log;
  __atxlog_handle_timeline_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_relevant_shortcut()
{
  if (__atxlog_handle_relevant_shortcut_onceToken != -1)
  {
    __atxlog_handle_relevant_shortcut_cold_1();
  }

  v1 = __atxlog_handle_relevant_shortcut_log;

  return v1;
}

uint64_t ____atxlog_handle_relevant_shortcut_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");
  v1 = __atxlog_handle_relevant_shortcut_log;
  __atxlog_handle_relevant_shortcut_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_relevance_model()
{
  if (__atxlog_handle_relevance_model_onceToken != -1)
  {
    __atxlog_handle_relevance_model_cold_1();
  }

  v1 = __atxlog_handle_relevance_model_log;

  return v1;
}

uint64_t ____atxlog_handle_relevance_model_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "relevance_model");
  v1 = __atxlog_handle_relevance_model_log;
  __atxlog_handle_relevance_model_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_watch()
{
  if (__atxlog_handle_watch_onceToken != -1)
  {
    __atxlog_handle_watch_cold_1();
  }

  v1 = __atxlog_handle_watch_log;

  return v1;
}

uint64_t ____atxlog_handle_watch_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "watch");
  v1 = __atxlog_handle_watch_log;
  __atxlog_handle_watch_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_blending_internal_cache()
{
  if (__atxlog_handle_blending_internal_cache_onceToken != -1)
  {
    __atxlog_handle_blending_internal_cache_cold_1();
  }

  v1 = __atxlog_handle_blending_internal_cache_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_internal_cache_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");
  v1 = __atxlog_handle_blending_internal_cache_log;
  __atxlog_handle_blending_internal_cache_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_blending_ecosystem()
{
  if (__atxlog_handle_blending_ecosystem_onceToken != -1)
  {
    __atxlog_handle_blending_ecosystem_cold_1();
  }

  v1 = __atxlog_handle_blending_ecosystem_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_ecosystem_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");
  v1 = __atxlog_handle_blending_ecosystem_log;
  __atxlog_handle_blending_ecosystem_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____atxlog_handle_home_screen_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "homescreen");
  v1 = __atxlog_handle_home_screen_log;
  __atxlog_handle_home_screen_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_sleep_schedule()
{
  if (__atxlog_handle_sleep_schedule_onceToken != -1)
  {
    __atxlog_handle_sleep_schedule_cold_1();
  }

  v1 = __atxlog_handle_sleep_schedule_log;

  return v1;
}

uint64_t ____atxlog_handle_sleep_schedule_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");
  v1 = __atxlog_handle_sleep_schedule_log;
  __atxlog_handle_sleep_schedule_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_lock_screen()
{
  if (__atxlog_handle_lock_screen_onceToken != -1)
  {
    __atxlog_handle_lock_screen_cold_1();
  }

  v1 = __atxlog_handle_lock_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_lock_screen_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "lockscreen");
  v1 = __atxlog_handle_lock_screen_log;
  __atxlog_handle_lock_screen_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_anchor()
{
  if (__atxlog_handle_anchor_onceToken != -1)
  {
    __atxlog_handle_anchor_cold_1();
  }

  v1 = __atxlog_handle_anchor_log;

  return v1;
}

uint64_t ____atxlog_handle_anchor_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "anchor");
  v1 = __atxlog_handle_anchor_log;
  __atxlog_handle_anchor_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_app_prediction()
{
  if (__atxlog_handle_app_prediction_onceToken != -1)
  {
    __atxlog_handle_app_prediction_cold_1();
  }

  v1 = __atxlog_handle_app_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_app_prediction_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_prediction");
  v1 = __atxlog_handle_app_prediction_log;
  __atxlog_handle_app_prediction_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_action_prediction()
{
  if (__atxlog_handle_action_prediction_onceToken != -1)
  {
    __atxlog_handle_action_prediction_cold_1();
  }

  v1 = __atxlog_handle_action_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_action_prediction_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "action_prediction");
  v1 = __atxlog_handle_action_prediction_log;
  __atxlog_handle_action_prediction_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_library");
  v1 = __atxlog_handle_app_library_log;
  __atxlog_handle_app_library_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_app_install()
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v1 = __atxlog_handle_app_install_log;

  return v1;
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_install");
  v1 = __atxlog_handle_app_install_log;
  __atxlog_handle_app_install_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_backup()
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v1 = __atxlog_handle_backup_log;

  return v1;
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "backup");
  v1 = __atxlog_handle_backup_log;
  __atxlog_handle_backup_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_trial_assets()
{
  if (__atxlog_handle_trial_assets_onceToken != -1)
  {
    __atxlog_handle_trial_assets_cold_1();
  }

  v1 = __atxlog_handle_trial_assets_log;

  return v1;
}

uint64_t ____atxlog_handle_trial_assets_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "trial_assets");
  v1 = __atxlog_handle_trial_assets_log;
  __atxlog_handle_trial_assets_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_notification_management()
{
  if (__atxlog_handle_notification_management_onceToken != -1)
  {
    __atxlog_handle_notification_management_cold_1();
  }

  v1 = __atxlog_handle_notification_management_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_management_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "notification_management");
  v1 = __atxlog_handle_notification_management_log;
  __atxlog_handle_notification_management_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_contextual_actions()
{
  if (__atxlog_handle_contextual_actions_onceToken != -1)
  {
    __atxlog_handle_contextual_actions_cold_1();
  }

  v1 = __atxlog_handle_contextual_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_actions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");
  v1 = __atxlog_handle_contextual_actions_log;
  __atxlog_handle_contextual_actions_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_intents_helper()
{
  if (__atxlog_handle_intents_helper_onceToken != -1)
  {
    __atxlog_handle_intents_helper_cold_1();
  }

  v1 = __atxlog_handle_intents_helper_log;

  return v1;
}

uint64_t ____atxlog_handle_intents_helper_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "intents_helper");
  v1 = __atxlog_handle_intents_helper_log;
  __atxlog_handle_intents_helper_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_context_heuristic()
{
  if (__atxlog_handle_context_heuristic_onceToken != -1)
  {
    __atxlog_handle_context_heuristic_cold_1();
  }

  v1 = __atxlog_handle_context_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_context_heuristic_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");
  v1 = __atxlog_handle_context_heuristic_log;
  __atxlog_handle_context_heuristic_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_context_user_education_suggestions()
{
  if (__atxlog_handle_context_user_education_suggestions_onceToken != -1)
  {
    __atxlog_handle_context_user_education_suggestions_cold_1();
  }

  v1 = __atxlog_handle_context_user_education_suggestions_log;

  return v1;
}

uint64_t ____atxlog_handle_context_user_education_suggestions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");
  v1 = __atxlog_handle_context_user_education_suggestions_log;
  __atxlog_handle_context_user_education_suggestions_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_time_intelligence()
{
  if (__atxlog_handle_time_intelligence_onceToken != -1)
  {
    __atxlog_handle_time_intelligence_cold_1();
  }

  v1 = __atxlog_handle_time_intelligence_log;

  return v1;
}

uint64_t ____atxlog_handle_time_intelligence_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "time");
  v1 = __atxlog_handle_time_intelligence_log;
  __atxlog_handle_time_intelligence_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_contextual_engine()
{
  if (__atxlog_handle_contextual_engine_onceToken != -1)
  {
    __atxlog_handle_contextual_engine_cold_1();
  }

  v1 = __atxlog_handle_contextual_engine_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_engine_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "contextualengine");
  v1 = __atxlog_handle_contextual_engine_log;
  __atxlog_handle_contextual_engine_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_usage_insights()
{
  if (__atxlog_handle_usage_insights_onceToken != -1)
  {
    __atxlog_handle_usage_insights_cold_1();
  }

  v1 = __atxlog_handle_usage_insights_log;

  return v1;
}

uint64_t ____atxlog_handle_usage_insights_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "usage_insights");
  v1 = __atxlog_handle_usage_insights_log;
  __atxlog_handle_usage_insights_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_notification_categorization()
{
  if (__atxlog_handle_notification_categorization_onceToken != -1)
  {
    __atxlog_handle_notification_categorization_cold_1();
  }

  v1 = __atxlog_handle_notification_categorization_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_categorization_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");
  v1 = __atxlog_handle_notification_categorization_log;
  __atxlog_handle_notification_categorization_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_settings_actions()
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v1 = __atxlog_handle_settings_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "settings_actions");
  v1 = __atxlog_handle_settings_actions_log;
  __atxlog_handle_settings_actions_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_client_donations()
{
  if (__atxlog_handle_client_donations_onceToken != -1)
  {
    __atxlog_handle_client_donations_cold_1();
  }

  v1 = __atxlog_handle_client_donations_log;

  return v1;
}

uint64_t ____atxlog_handle_client_donations_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "client_donations");
  v1 = __atxlog_handle_client_donations_log;
  __atxlog_handle_client_donations_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_carPlay_widgets()
{
  if (__atxlog_handle_carPlay_widgets_onceToken != -1)
  {
    __atxlog_handle_carPlay_widgets_cold_1();
  }

  v1 = __atxlog_handle_carPlay_widgets_log;

  return v1;
}

uint64_t ____atxlog_handle_carPlay_widgets_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "carPlay");
  v1 = __atxlog_handle_carPlay_widgets_log;
  __atxlog_handle_carPlay_widgets_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_screen_entities()
{
  if (__atxlog_handle_screen_entities_onceToken != -1)
  {
    __atxlog_handle_screen_entities_cold_1();
  }

  v1 = __atxlog_handle_screen_entities_log;

  return v1;
}

uint64_t ____atxlog_handle_screen_entities_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "screenEntities");
  v1 = __atxlog_handle_screen_entities_log;
  __atxlog_handle_screen_entities_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_document_predictor()
{
  if (__atxlog_handle_document_predictor_onceToken != -1)
  {
    __atxlog_handle_document_predictor_cold_1();
  }

  v1 = __atxlog_handle_document_predictor_log;

  return v1;
}

uint64_t ____atxlog_handle_document_predictor_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");
  v1 = __atxlog_handle_document_predictor_log;
  __atxlog_handle_document_predictor_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_ml_inference()
{
  if (__atxlog_handle_ml_inference_onceToken != -1)
  {
    __atxlog_handle_ml_inference_cold_1();
  }

  v1 = __atxlog_handle_ml_inference_log;

  return v1;
}

uint64_t ____atxlog_handle_ml_inference_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "inference");
  v1 = __atxlog_handle_ml_inference_log;
  __atxlog_handle_ml_inference_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_menu_items()
{
  if (__atxlog_handle_menu_items_onceToken != -1)
  {
    __atxlog_handle_menu_items_cold_1();
  }

  v1 = __atxlog_handle_menu_items_log;

  return v1;
}

uint64_t ____atxlog_handle_menu_items_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "menuItems");
  v1 = __atxlog_handle_menu_items_log;
  __atxlog_handle_menu_items_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getSFSearchResult_SpotlightExtrasClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFSearchResult_SpotlightExtrasClass_softClass;
  v7 = getSFSearchResult_SpotlightExtrasClass_softClass;
  if (!getSFSearchResult_SpotlightExtrasClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSFSearchResult_SpotlightExtrasClass_block_invoke;
    v3[3] = &unk_1E80C0758;
    v3[4] = &v4;
    __getSFSearchResult_SpotlightExtrasClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BF67F2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SpotlightServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpotlightServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_3_9(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

uint64_t ATXPBUserNotificationEnumsReadFrom(uint64_t a1, void *a2)
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

uint64_t ATXPBAppDirectoryEventMetadataReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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

      if ((v12 >> 3) == 3)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___ATXPBAppDirectoryEventMetadata__bundleIdInTopAppsVisible;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___ATXPBAppDirectoryEventMetadata__bundleIdInTopAppsVisible;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___ATXPBAppDirectoryEventMetadata__userLaunchedAppBeforeLeaving;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___ATXPBAppDirectoryEventMetadata__userLaunchedAppBeforeLeaving;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF684570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF6846EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF6853A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BF6879E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getINUISearchFoundationImageAdapterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINUISearchFoundationImageAdapterClass_softClass;
  v7 = getINUISearchFoundationImageAdapterClass_softClass;
  if (!getINUISearchFoundationImageAdapterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getINUISearchFoundationImageAdapterClass_block_invoke;
    v3[3] = &unk_1E80C0758;
    v3[4] = &v4;
    __getINUISearchFoundationImageAdapterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BF68ADF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINUISearchFoundationImageAdapterClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!IntentsUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __IntentsUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80C62F8;
    v5 = 0;
    IntentsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsUILibraryCore_frameworkLibrary)
  {
    __getINUISearchFoundationImageAdapterClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("INUISearchFoundationImageAdapter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINUISearchFoundationImageAdapterClass_block_invoke_cold_1();
  }

  getINUISearchFoundationImageAdapterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntentsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntentsUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __WorkflowKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_8_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id ATXFaceSuggestionClientXPCInterface()
{
  v68[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E63900];
  v1 = MEMORY[0x1E695DFD8];
  v68[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_fetchFaceGalleryConfigurationWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v4 forSelector:sel_fetchFaceGalleryConfigurationForSemanticType_completion_ argumentIndex:0 ofReply:1];

  v5 = MEMORY[0x1E695DFD8];
  v67 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v7 = [v5 setWithArray:v6];
  [v0 setClasses:v7 forSelector:sel_regenerateFaceGalleryConfigurationWithCompletion_ argumentIndex:0 ofReply:1];

  v8 = MEMORY[0x1E695DFD8];
  v66 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v10 = [v8 setWithArray:v9];
  [v0 setClasses:v10 forSelector:sel_fetchFaceSuggestionsForFocusMode_completion_ argumentIndex:0 ofReply:0];

  v11 = MEMORY[0x1E695DFD8];
  v65[0] = objc_opt_class();
  v65[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v13 = [v11 setWithArray:v12];
  [v0 setClasses:v13 forSelector:sel_fetchFaceSuggestionsForFocusMode_completion_ argumentIndex:0 ofReply:1];

  v14 = MEMORY[0x1E695DFD8];
  v64[0] = objc_opt_class();
  v64[1] = objc_opt_class();
  v64[2] = objc_opt_class();
  v64[3] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  v16 = [v14 setWithArray:v15];
  [v0 setClasses:v16 forSelector:sel_fetchPosterDescriptorsAndSuggestionDataWithCompletion_ argumentIndex:0 ofReply:1];

  v17 = MEMORY[0x1E695DFD8];
  v63[0] = objc_opt_class();
  v63[1] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v19 = [v17 setWithArray:v18];
  [v0 setClasses:v19 forSelector:sel_fetchRankedPosterDescriptors_ argumentIndex:0 ofReply:1];

  v20 = objc_autoreleasePoolPush();
  v21 = objc_alloc(MEMORY[0x1E695DFD8]);
  v22 = objc_opt_class();
  v23 = [v21 initWithObjects:{v22, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v20);
  [v0 setClasses:v23 forSelector:sel_fetchPosterConfigurationsWithCompletion_ argumentIndex:0 ofReply:1];

  v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v24 forSelector:sel_fetchComplicationSetsForFaceGalleryItem_completion_ argumentIndex:0 ofReply:0];

  v25 = MEMORY[0x1E695DFD8];
  v62[0] = objc_opt_class();
  v62[1] = objc_opt_class();
  v62[2] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_fetchComplicationSetsForFaceGalleryItem_completion_ argumentIndex:0 ofReply:1];

  v28 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v28 forSelector:sel_fetchLandscapeComplicationSetsForFaceGalleryItem_completion_ argumentIndex:0 ofReply:0];

  v29 = MEMORY[0x1E695DFD8];
  v61[0] = objc_opt_class();
  v61[1] = objc_opt_class();
  v61[2] = objc_opt_class();
  v61[3] = objc_opt_class();
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
  v31 = [v29 setWithArray:v30];
  [v0 setClasses:v31 forSelector:sel_fetchLandscapeComplicationSetsForFaceGalleryItem_completion_ argumentIndex:0 ofReply:1];

  v32 = MEMORY[0x1E695DFD8];
  v60[0] = objc_opt_class();
  v60[1] = objc_opt_class();
  v60[2] = objc_opt_class();
  v60[3] = objc_opt_class();
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
  v34 = [v32 setWithArray:v33];
  [v0 setClasses:v34 forSelector:sel_posterBoardDidUpdateDescriptors_completion_ argumentIndex:0 ofReply:0];

  v35 = objc_autoreleasePoolPush();
  v36 = objc_alloc(MEMORY[0x1E695DFD8]);
  v37 = objc_opt_class();
  v38 = [v36 initWithObjects:{v37, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v35);
  [v0 setClasses:v38 forSelector:sel_posterBoardDidUpdateConfigurations_completion_ argumentIndex:0 ofReply:0];

  v39 = MEMORY[0x1E695DFD8];
  v59 = objc_opt_class();
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v41 = [v39 setWithArray:v40];
  [v0 setClasses:v41 forSelector:sel_logPosterEdit_completion_ argumentIndex:0 ofReply:0];

  v42 = MEMORY[0x1E695DFD8];
  v58 = objc_opt_class();
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v44 = [v42 setWithArray:v43];
  [v0 setClasses:v44 forSelector:sel_logPosterSwitch_completion_ argumentIndex:0 ofReply:0];

  v45 = MEMORY[0x1E695DFD8];
  v57 = objc_opt_class();
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  v47 = [v45 setWithArray:v46];
  [v0 setClasses:v47 forSelector:sel_synchronousDateOfLastGalleryAppearanceWithCompletion_ argumentIndex:0 ofReply:1];

  v48 = MEMORY[0x1E695DFD8];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v56[2] = objc_opt_class();
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
  v50 = [v48 setWithArray:v49];
  [v0 setClasses:v50 forSelector:sel_logComplicationsSeenInGalleryWithEngagements_completion_ argumentIndex:0 ofReply:0];

  v51 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v55[2] = objc_opt_class();
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
  v53 = [v51 setWithArray:v52];
  [v0 setClasses:v53 forSelector:sel_logFaceGalleryItemsSeenInGalleryWithOutcomes_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t ATXPBSharedDigestEngagementTrackingMetricsReadFrom(uint64_t a1, void *a2)
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
        v62 = 0;
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v64 = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v64 & 0x7F) << v53;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_109;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v55;
            }

LABEL_109:
            v60 = 16;
          }

          else
          {
            if (v13 != 8)
            {
LABEL_92:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_123;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v63 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v63 & 0x7F) << v29;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_121;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v31;
            }

LABEL_121:
            v60 = 8;
          }
        }

        else if (v13 == 5)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            v66 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v66 & 0x7F) << v41;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v43;
          }

LABEL_101:
          v60 = 48;
        }

        else
        {
          if (v13 != 6)
          {
            goto LABEL_92;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 72) |= 0x40u;
          while (1)
          {
            v65 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v65 & 0x7F) << v21;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_117;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_117:
          v60 = 56;
        }

        goto LABEL_122;
      }

      if (v13 <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 72) |= 0x10u;
        while (1)
        {
          v67 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v67 & 0x7F) << v47;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v49;
        }

LABEL_105:
        v60 = 40;
LABEL_122:
        *(a1 + v60) = v20;
        goto LABEL_123;
      }

      if (v13 != 4)
      {
        goto LABEL_92;
      }

      v27 = PBReaderReadString();
      v28 = *(a1 + 64);
      *(a1 + 64) = v27;

LABEL_123:
      v61 = [a2 position];
      if (v61 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 72) |= 8u;
      while (1)
      {
        v69 = 0;
        v38 = [a2 position] + 1;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v37 |= (v69 & 0x7F) << v35;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v11 = v36++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_97;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v37;
      }

LABEL_97:
      v60 = 32;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_92;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 72) |= 4u;
      while (1)
      {
        v68 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v68 & 0x7F) << v14;
        if ((v68 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_113;
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

LABEL_113:
      v60 = 24;
    }

    goto LABEL_122;
  }

  return [a2 hasError] ^ 1;
}

id getSPSearchSuggestionResultClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSPSearchSuggestionResultClass_softClass;
  v7 = getSPSearchSuggestionResultClass_softClass;
  if (!getSPSearchSuggestionResultClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSPSearchSuggestionResultClass_block_invoke;
    v3[3] = &unk_1E80C0758;
    v3[4] = &v4;
    __getSPSearchSuggestionResultClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BF690D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSPSearchContactEntityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSPSearchContactEntityClass_softClass;
  v7 = getSPSearchContactEntityClass_softClass;
  if (!getSPSearchContactEntityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSPSearchContactEntityClass_block_invoke;
    v3[3] = &unk_1E80C0758;
    v3[4] = &v4;
    __getSPSearchContactEntityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BF691B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF694060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

Class __getSPSearchSuggestionResultClass_block_invoke(uint64_t a1)
{
  SpotlightServicesLibrary();
  result = objc_getClass("SPSearchSuggestionResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSPSearchSuggestionResultClass_block_invoke_cold_1();
  }

  getSPSearchSuggestionResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SpotlightServicesLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!SpotlightServicesLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __SpotlightServicesLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E80C6350;
    v2 = 0;
    SpotlightServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SpotlightServicesLibraryCore_frameworkLibrary_0)
  {
    SpotlightServicesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __SpotlightServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SpotlightServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getSPSearchContactEntityClass_block_invoke(uint64_t a1)
{
  SpotlightServicesLibrary();
  result = objc_getClass("SPSearchContactEntity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSPSearchContactEntityClass_block_invoke_cold_1();
  }

  getSPSearchContactEntityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ATXMPBBlendingCaptureRateTrackerReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_44:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_53;
      }

      if (v13 != 2)
      {
LABEL_45:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_53;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 44) |= 2u;
      while (1)
      {
        v34 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v34 & 0x7F) << v16;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_52;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_52:
      *(a1 + 40) = v22;
LABEL_53:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_50;
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

LABEL_50:
        *(a1 + 16) = v29;
        goto LABEL_53;
      case 4:
        v14 = PBReaderReadString();
        v15 = 32;
        break;
      case 5:
        v14 = PBReaderReadString();
        v15 = 8;
        break;
      default:
        goto LABEL_45;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

id loadLazyOrRegularPlist_0(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v14 = 0;
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v1 options:1 error:&v14];
  v4 = v14;
  objc_autoreleasePoolPop(v2);
  if (v3)
  {
    if ([v3 length] >= 3 && ((v5 = objc_msgSend(v3, "bytes"), *v5 == 19536) ? (v6 = *(v5 + 2) == 80) : (v6 = 0), v6))
    {
      v7 = objc_autoreleasePoolPush();
      v13 = v4;
      v8 = [MEMORY[0x1E69C5D40] dictionaryWithData:v3 error:&v13];
      v9 = v13;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v12 = 0;
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v12];
      v9 = v12;
    }

    v10 = v9;

    objc_autoreleasePoolPop(v7);
    if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      loadLazyOrRegularPlist_cold_1_0();
    }

    v4 = v10;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      loadLazyOrRegularPlist_cold_2_0();
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __getTrialAssets_block_invoke()
{
  v0 = objc_opt_new();
  v1 = getTrialAssets_assets;
  getTrialAssets_assets = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *NSStringForATXModeConfigurationType(uint64_t a1)
{
  if (!a1)
  {
    return @"allowlist";
  }

  v1 = a1;
  if (a1 == 1)
  {
    return @"denylist";
  }

  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    NSStringForATXModeConfigurationType_cold_1(v1, v3);
  }

  return @"unknown";
}

uint64_t ATXPBNotificationPromotingSuggestionReadFrom(uint64_t a1, void *a2)
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

uint64_t ATXPBActivityReadFrom(uint64_t a1, void *a2)
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
        v48 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v28 = PBReaderReadString();
            v29 = 24;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_73;
            }

            v28 = PBReaderReadString();
            v29 = 56;
          }

          goto LABEL_60;
        }

        if (v13 == 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            v50 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v50 & 0x7F) << v30;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_82:
          v46 = 16;
          goto LABEL_87;
        }

        if (v13 != 2)
        {
          goto LABEL_73;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 72) |= 4u;
        while (1)
        {
          v51 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v51 & 0x7F) << v21;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_78;
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

LABEL_78:
        *(a1 + 64) = v27;
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v49 = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v49 & 0x7F) << v38;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v40;
            }

LABEL_86:
            v46 = 8;
LABEL_87:
            *(a1 + v46) = v36;
            goto LABEL_90;
          }

          if (v13 != 6)
          {
LABEL_73:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_90;
          }

          v28 = PBReaderReadString();
          v29 = 40;
          goto LABEL_60;
        }

        switch(v13)
        {
          case 7:
            v28 = PBReaderReadString();
            v29 = 32;
LABEL_60:
            v37 = *(a1 + v29);
            *(a1 + v29) = v28;

            break;
          case 8:
            v44 = PBReaderReadData();
            if (v44)
            {
              [(ATXPBActivity *)a1 addSerializedTriggers:v44];
            }

            break;
          case 9:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 72) |= 8u;
            while (1)
            {
              v52 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v14;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_89;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_89:
            *(a1 + 68) = v20;
            break;
          default:
            goto LABEL_73;
        }
      }

LABEL_90:
      v47 = [a2 position];
    }

    while (v47 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *ATXUserNotificationDeliveryMethodToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"error_ATXUserNotificationDeliveryMethodTotal";
  }

  else
  {
    return off_1E80C63F8[a1];
  }
}

__CFString *ATXUserNotificationDeliveryUrgencyToString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C6410[a1 & 7];
  }

  return v2;
}

uint64_t ATXStringToUserNotificationDeliveryUrgency(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Critical"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"TimeSensitive"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Active"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Passive"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"None"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Priority"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Total"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *ATXUserNotificationAttachmentTypeToString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C6448[a1 & 7];
  }

  return v2;
}

uint64_t ATXStringToUserNotificationAttachmentType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"None"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Image"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Audio"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Video"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Other"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Total"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *ATXUserNotificationPriorityStatusToString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C6478[a1 & 7];
  }

  return v2;
}

uint64_t ATXStringToUserNotificationPriorityStatus(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"IsPriority"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"IsNotPriority"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"InferenceTimedOut"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Error"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Ineligible"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Total"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *ATXUserNotificationSummaryStatusToString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C64B0[a1 & 7];
  }

  return v2;
}

uint64_t ATXStringToUserNotificationSummaryStatus(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Summarized"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"InferenceTimedOut"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Error"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Ineligible"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Total"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1BF69E50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t ATXMPBAppLaunchOverallCaptureRateTrackerReadFrom(uint64_t a1, void *a2)
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
        v68 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v68 & 0x7F) << v5;
        if ((v68 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 24) |= 0x20u;
          while (1)
          {
            v76 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v76 & 0x7F) << v52;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_109;
            }
          }

          v27 = (v54 != 0) & ~[a2 hasError];
LABEL_109:
          v66 = 19;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_100;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v75 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v75 & 0x7F) << v28;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_120;
            }
          }

          v27 = (v30 != 0) & ~[a2 hasError];
LABEL_120:
          v66 = 16;
        }

LABEL_123:
        *(a1 + v66) = v27;
        goto LABEL_124;
      }

      if (v13 == 1)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v70 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v70 & 0x7F) << v40;
          if ((v70 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_105;
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

LABEL_105:
        v65 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_100;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v69 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v69 & 0x7F) << v14;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_115;
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

LABEL_115:
        v65 = 12;
      }

      *(a1 + v65) = v20;
LABEL_124:
      v67 = [a2 position];
      if (v67 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 24) |= 0x40u;
        while (1)
        {
          v72 = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v72 & 0x7F) << v58;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_111;
          }
        }

        v27 = (v60 != 0) & ~[a2 hasError];
LABEL_111:
        v66 = 20;
      }

      else
      {
        if (v13 != 8)
        {
LABEL_100:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_124;
        }

        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 24) |= 0x80u;
        while (1)
        {
          v71 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v71 & 0x7F) << v34;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_122;
          }
        }

        v27 = (v36 != 0) & ~[a2 hasError];
LABEL_122:
        v66 = 21;
      }
    }

    else if (v13 == 5)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *(a1 + 24) |= 8u;
      while (1)
      {
        v74 = 0;
        v49 = [a2 position] + 1;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v48 |= (v74 & 0x7F) << v46;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v46 += 7;
        v11 = v47++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_107;
        }
      }

      v27 = (v48 != 0) & ~[a2 hasError];
LABEL_107:
      v66 = 17;
    }

    else
    {
      if (v13 != 6)
      {
        goto LABEL_100;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 24) |= 0x10u;
      while (1)
      {
        v73 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v73 & 0x7F) << v21;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_118;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_118:
      v66 = 18;
    }

    goto LABEL_123;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *ATXDocumentInteractionTypeGetName(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%tu)", a1];
  }

  else
  {
    v2 = off_1E80C6920[a1];
  }

  return v2;
}

uint64_t ATXPBLockscreenEventReadFrom(uint64_t a1, void *a2)
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
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
          v25 = PBReaderReadString();
          v26 = *(a1 + 16);
          *(a1 + 16) = v25;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v21 = PBReaderReadString();
          if (v21)
          {
            [(ATXPBLockscreenEvent *)a1 addSuggestionIds:v21];
          }
        }
      }

      else if (v13 == 1)
      {
        *(a1 + 40) |= 1u;
        v29 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v29;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v31 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31 & 0x7F) << v14;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_43;
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

LABEL_43:
        *(a1 + 24) = v20;
      }

LABEL_46:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBNotificationDeliverySuggestionReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v34) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v34 & 0x7F) << v5;
      if ((v34 & 0x80) == 0)
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
      case 0u:
        v13 = 0;
        while (1)
        {
          LOBYTE(v34) = 0;
          v14 = [a2 position] + 1;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 1, v15 <= objc_msgSend(a2, "length")))
          {
            v16 = [a2 data];
            [v16 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v34 & 0x80000000) == 0)
          {
            break;
          }

          if (v13++ > 8)
          {
            goto LABEL_67;
          }
        }

        [a2 hasError];
        goto LABEL_67;
      case 1u:
        v19 = PBReaderReadString();
        v20 = 112;
        goto LABEL_54;
      case 2u:
        *(a1 + 120) |= 1u;
        v34 = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v34;
        goto LABEL_67;
      case 3u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 120) |= 4u;
        while (1)
        {
          LOBYTE(v34) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v34 & 0x7F) << v21;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_75;
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

LABEL_75:
        *(a1 + 56) = v27;
        goto LABEL_67;
      case 4u:
        v19 = PBReaderReadString();
        v20 = 16;
        goto LABEL_54;
      case 5u:
        v19 = PBReaderReadString();
        v20 = 88;
LABEL_54:
        v30 = *(a1 + v20);
        *(a1 + v20) = v19;

        goto LABEL_67;
      case 0xAu:
        [a1 clearOneofValuesForOneofNotificationDeliverySuggestion];
        *(a1 + 120) |= 2u;
        *(a1 + 32) = 1;
        v18 = objc_alloc_init(ATXPBNotificationSmartPauseSuggestion);
        objc_storeStrong((a1 + 80), v18);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !ATXPBNotificationSmartPauseSuggestionReadFrom(v18, a2))
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      case 0xBu:
        [a1 clearOneofValuesForOneofNotificationDeliverySuggestion];
        *(a1 + 120) |= 2u;
        *(a1 + 32) = 2;
        v18 = objc_alloc_init(ATXPBNotificationQuietingSuggestion);
        objc_storeStrong((a1 + 48), v18);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !ATXPBNotificationQuietingSuggestionReadFrom(v18, a2))
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      case 0xCu:
        [a1 clearOneofValuesForOneofNotificationDeliverySuggestion];
        *(a1 + 120) |= 2u;
        *(a1 + 32) = 3;
        v18 = objc_alloc_init(ATXPBNotificationPromotingSuggestion);
        objc_storeStrong((a1 + 40), v18);
        v34 = 0;
        v35 = 0;
        if (PBReaderPlaceMark() && ATXPBNotificationPromotingSuggestionReadFrom(v18, a2))
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      case 0xDu:
        [a1 clearOneofValuesForOneofNotificationDeliverySuggestion];
        *(a1 + 120) |= 2u;
        *(a1 + 32) = 4;
        v18 = objc_alloc_init(ATXPBInterruptionManagerTuningSuggestion);
        objc_storeStrong((a1 + 24), v18);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !ATXPBInterruptionManagerTuningSuggestionReadFrom(v18, a2))
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      case 0xEu:
        [a1 clearOneofValuesForOneofNotificationDeliverySuggestion];
        *(a1 + 120) |= 2u;
        *(a1 + 32) = 5;
        v18 = objc_alloc_init(ATXPBSendToDigestSuggestion);
        objc_storeStrong((a1 + 72), v18);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !ATXPBSendToDigestSuggestionReadFrom(v18, a2))
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      case 0xFu:
        [a1 clearOneofValuesForOneofNotificationDeliverySuggestion];
        *(a1 + 120) |= 2u;
        *(a1 + 32) = 6;
        v18 = objc_alloc_init(ATXPBUrgencyTuningSuggestion);
        objc_storeStrong((a1 + 104), v18);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !ATXPBUrgencyTuningSuggestionReadFrom(v18, a2))
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      case 0x10u:
        [a1 clearOneofValuesForOneofNotificationDeliverySuggestion];
        *(a1 + 120) |= 2u;
        *(a1 + 32) = 7;
        v18 = objc_alloc_init(ATXPBSendMessagesToDigestSuggestion);
        objc_storeStrong((a1 + 64), v18);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !ATXPBSendMessagesToDigestSuggestionReadFrom(v18, a2))
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      case 0x11u:
        [a1 clearOneofValuesForOneofNotificationDeliverySuggestion];
        *(a1 + 120) |= 2u;
        *(a1 + 32) = 8;
        v18 = objc_alloc_init(ATXPBTurnOffNotificationsForAppSuggestion);
        objc_storeStrong((a1 + 96), v18);
        v34 = 0;
        v35 = 0;
        if (PBReaderPlaceMark() && ATXPBTurnOffNotificationsForAppSuggestionReadFrom(v18, a2))
        {
LABEL_66:
          PBReaderRecallMark();

LABEL_67:
          v31 = [a2 position];
          if (v31 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_79:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_67;
    }
  }
}

uint64_t ATXPBFaceGalleryItemReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E80C69B8[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id dateManipulationQueue()
{
  if (dateManipulationQueue_onceToken != -1)
  {
    dateManipulationQueue_cold_1();
  }

  v1 = dateManipulationQueue_dateManipulationQueue;

  return v1;
}