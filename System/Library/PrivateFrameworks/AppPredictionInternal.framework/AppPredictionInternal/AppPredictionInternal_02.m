void __dispatch_sync_notxn_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_16(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x20u);
}

void sub_226547570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AWDProactiveActionDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v57[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57[0] & 0x7F) << v5;
        if ((v57[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        break;
      }

      if (v13 > 9)
      {
        switch(v13)
        {
          case 0xA:
            v22 = PBReaderReadString();
            v23 = 48;
            goto LABEL_86;
          case 0xB:
            v22 = PBReaderReadString();
            v23 = 40;
            goto LABEL_86;
          case 0xC:
            v22 = PBReaderReadString();
            v23 = 56;
LABEL_86:
            v52 = *(a1 + v23);
            *(a1 + v23) = v22;

            goto LABEL_106;
        }

LABEL_87:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_106;
      }

      if (v13 == 6)
      {
        *(a1 + 76) |= 1u;
        v57[0] = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:v57 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v57[0];
        goto LABEL_106;
      }

      if (v13 == 7)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 76) |= 0x20u;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v57[0] & 0x7F) << v37;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_96;
          }
        }

        v21 = (v39 != 0) & ~[a2 hasError];
LABEL_96:
        v53 = 74;
LABEL_99:
        *(a1 + v53) = v21;
        goto LABEL_106;
      }

      if (v13 != 8)
      {
        goto LABEL_87;
      }

      v14 = objc_alloc_init(AWDProactiveAppPredictionSubscores);
      objc_storeStrong((a1 + 64), v14);
      v57[0] = 0;
      v57[1] = 0;
      if (!PBReaderPlaceMark() || !AWDProactiveAppPredictionSubscoresReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_106:
      v55 = [a2 position];
      if (v55 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 76) |= 2u;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v57[0] & 0x7F) << v24;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_92;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_92:
        *(a1 + 16) = v30;
        goto LABEL_106;
      }

      if (v13 == 2)
      {
        v22 = PBReaderReadString();
        v23 = 24;
        goto LABEL_86;
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v57[0] & 0x7F) << v43;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v49 = 0;
              goto LABEL_103;
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

LABEL_103:
          *(a1 + 32) = v49;
          goto LABEL_106;
        case 4:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v57[0] & 0x7F) << v31;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_94;
            }
          }

          v21 = (v33 != 0) & ~[a2 hasError];
LABEL_94:
          v53 = 72;
          goto LABEL_99;
        case 5:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 76) |= 0x10u;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v57[0] & 0x7F) << v15;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_98;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_98:
          v53 = 73;
          goto LABEL_99;
      }
    }

    goto LABEL_87;
  }

  return [a2 hasError] ^ 1;
}

void sub_22654D4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22654D970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_22654E8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22654EE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22654F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22654FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226550570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226550804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226550AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226550E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226551180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265513C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226551600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226551BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265524D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 160), 8);
  _Block_object_dispose((v10 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_226552B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226552F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x16u);
}

void __ATXUpdatePredictions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = __atxlog_handle_lock_screen();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      __ATXUpdatePredictions_block_invoke_cold_1(v3, v4);
    }
  }

  else if (v5)
  {
    __ATXUpdatePredictions_block_invoke_cold_2(v4);
  }
}

void __ATXUpdatePredictions_block_invoke_31(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:*(a1 + 40)];
    v8 = 134218242;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXUpdatePredictions: cache age %lf, reason %@", &v8, 0x16u);
  }

  _ATXInitializeInOwnerProcess();
  v5 = objc_autoreleasePoolPush();
  v6 = +[ATXUpdatePredictionsManager sharedInstance];
  [v6 updateBehavioralPredictionsIfOlderThan:*(a1 + 40) reason:*(a1 + 32)];

  objc_autoreleasePoolPop(v5);
  atomic_store(0, ATXUpdatePredictions_updateInProgress);
  v7 = *MEMORY[0x277D85DE8];
}

void ATXUpdatePredictionsImmediatelyIfPossible(uint64_t a1)
{
  if ([MEMORY[0x277CEBCF8] shouldSkipExpensiveTask])
  {
    v2 = __atxlog_handle_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXUpdatePredictions: Skipping prediction update since system is busy.", v3, 2u);
    }
  }

  else
  {

    ATXUpdatePredictions(a1, 0.0);
  }
}

uint64_t ATXUpdatePredictionsOverrideHandler(void *a1)
{
  v1 = a1;
  pthread_mutex_lock(&lock_0);
  v2 = [v1 copy];

  v3 = overrideBlock;
  overrideBlock = v2;

  return pthread_mutex_unlock(&lock_0);
}

uint64_t __predictionUpdateDisabledByInternalSettings_block_invoke()
{
  result = [MEMORY[0x277D42590] isInternalBuild];
  if (result)
  {
    keyExistsAndHasValidFormat = 0;
    result = CFPreferencesGetAppBooleanValue(@"ATXDisableCacheUpdates", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat);
    predictionUpdateDisabledByInternalSettings_disableCacheUpdateSetting = result != 0;
  }

  return result;
}

void sub_226557528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, uint64_t a31, void *a32, void *a33, void *a34, void *a35, void *a36)
{
  _Block_object_dispose(&STACK[0x2B8], 8);

  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose(&STACK[0x388], 8);
  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Block_object_dispose(&STACK[0x3E8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Block_object_dispose(&STACK[0x428], 8);
  _Block_object_dispose(&STACK[0x448], 8);
  _Block_object_dispose(&STACK[0x468], 8);
  _Block_object_dispose(&STACK[0x488], 8);
  _Block_object_dispose(&STACK[0x4A8], 8);
  _Block_object_dispose(&STACK[0x4C8], 8);
  _Block_object_dispose(&STACK[0x4E8], 8);
  _Block_object_dispose(&STACK[0x508], 8);
  _Block_object_dispose(&STACK[0x528], 8);
  _Block_object_dispose(&STACK[0x548], 8);
  _Block_object_dispose(&STACK[0x568], 8);
  _Block_object_dispose(&STACK[0x588], 8);
  _Block_object_dispose(&STACK[0x5A8], 8);
  _Block_object_dispose(&STACK[0x5C8], 8);
  _Block_object_dispose(&STACK[0x5E8], 8);
  _Block_object_dispose(&STACK[0x608], 8);
  _Block_object_dispose(&STACK[0x628], 8);
  _Block_object_dispose(&STACK[0x648], 8);
  _Block_object_dispose(&STACK[0x668], 8);
  _Block_object_dispose(&STACK[0x688], 8);
  _Block_object_dispose(&STACK[0x6A8], 8);
  _Block_object_dispose(&STACK[0x6C8], 8);
  _Block_object_dispose(&STACK[0x6E8], 8);
  _Block_object_dispose(&STACK[0x708], 8);
  _Block_object_dispose(&STACK[0x728], 8);
  _Block_object_dispose(&STACK[0x748], 8);
  _Block_object_dispose(&STACK[0x768], 8);
  _Block_object_dispose(&STACK[0x788], 8);
  _Block_object_dispose(&STACK[0x7A8], 8);
  _Block_object_dispose(&STACK[0x7C8], 8);
  _Block_object_dispose(&STACK[0x7E8], 8);
  _Block_object_dispose(&STACK[0x808], 8);
  _Block_object_dispose(&STACK[0x828], 8);
  _Block_object_dispose(&STACK[0x848], 8);
  _Block_object_dispose(&STACK[0x868], 8);
  _Block_object_dispose(&STACK[0x888], 8);
  _Block_object_dispose(&STACK[0x8A8], 8);
  _Block_object_dispose(&STACK[0x8C8], 8);
  _Block_object_dispose((v39 - 232), 8);
  _Block_object_dispose((v39 - 200), 8);
  _Block_object_dispose((v39 - 168), 8);
  _Block_object_dispose((v39 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_22655A480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v46 - 232), 8);
  _Block_object_dispose((v46 - 200), 8);
  _Block_object_dispose((v46 - 168), 8);
  _Block_object_dispose((v46 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_22655CB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  STACK[0xD38] = &STACK[0x1A88];
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD38]);

  _Block_object_dispose(&STACK[0x1B08], 8);
  _Unwind_Resume(a1);
}

uint64_t ATXAnchorModelPBModeMetadataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v33[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33[0] & 0x7F) << v21;
            if ((v33[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_51;
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

LABEL_51:
          *(a1 + 24) = v27;
          goto LABEL_52;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_52;
      }

      v30 = objc_alloc_init(ATXAnchorModelPBLaunchHistoryMetadata);
      objc_storeStrong((a1 + 8), v30);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !ATXAnchorModelPBLaunchHistoryMetadataReadFrom(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_52:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v28 = PBReaderReadString();
      v29 = *(a1 + 16);
      *(a1 + 16) = v28;

      goto LABEL_52;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v33[0] & 0x7F) << v14;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_47;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
      *(a1 + 28) = v20;
      goto LABEL_52;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXTimelineRelevancePBTimelineRelevanceSuggestionReadFrom(void *a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
        v15 = objc_alloc_init(ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcome);
        [a1 addAbuseControlOutcome:v15];
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcomeReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = a1[2];
        a1[2] = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(ATXTimelineRelevancePBTimelineRelevanceScoreEntry);
    [a1 addTimelineRelevanceScoreEntry:v15];
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !ATXTimelineRelevancePBTimelineRelevanceScoreEntryReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_2265635E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226568E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBUnifiedInferredActivityTransitionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
          *(a1 + 44) |= 4u;
          v40 = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v40;
          v37 = 24;
LABEL_60:
          *(a1 + v37) = v36;
          goto LABEL_61;
        }

        if (v13 != 2)
        {
LABEL_48:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_61;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v40 & 0x7F) << v16;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_55;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_55:
        *(a1 + 40) = v22;
      }

      else
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v40) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v40 & 0x7F) << v23;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_53;
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

LABEL_53:
          *(a1 + 16) = v29;
          goto LABEL_61;
        }

        if (v13 != 4)
        {
          if (v13 != 5)
          {
            goto LABEL_48;
          }

          *(a1 + 44) |= 1u;
          v40 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v40;
          v37 = 8;
          goto LABEL_60;
        }

        v30 = PBReaderReadString();
        v31 = *(a1 + 32);
        *(a1 + 32) = v30;
      }

LABEL_61:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22656C548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22656C8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_22656CA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_22656CE38()
{
  _Block_object_dispose((v0 - 144), 8);

  JUMPOUT(0x22656CE28);
}

void sub_22656D1B0()
{
  _Block_object_dispose((v0 - 144), 8);

  JUMPOUT(0x22656D1A0);
}

void sub_22656D468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22656DB1C()
{
  _Block_object_dispose((v0 - 168), 8);

  JUMPOUT(0x22656DB10);
}

uint64_t ATXMPBAnchorModelEngagementTrackerReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v64) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v64 & 0x7F) << v5;
        if ((v64 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 64;
          goto LABEL_79;
        case 2u:
          *(a1 + 116) |= 0x10u;
          v64 = 0;
          v41 = [a2 position] + 8;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v64 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v64;
          v57 = 40;
          goto LABEL_109;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_79;
        case 4u:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 116) |= 0x200u;
          while (1)
          {
            LOBYTE(v64) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v64 & 0x7F) << v35;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_91;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v37;
          }

LABEL_91:
          v54 = 112;
          goto LABEL_96;
        case 5u:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 116) |= 0x80u;
          while (1)
          {
            LOBYTE(v64) = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v64 & 0x7F) << v19;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v11 = v20++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_83:
          v54 = 104;
          goto LABEL_96;
        case 6u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 116) |= 0x40u;
          while (1)
          {
            LOBYTE(v64) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v64 & 0x7F) << v43;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_95;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v45;
          }

LABEL_95:
          v54 = 88;
          goto LABEL_96;
        case 7u:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_79;
        case 8u:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_79;
        case 9u:
          v13 = PBReaderReadString();
          v14 = 96;
LABEL_79:
          v53 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_110;
        case 0xAu:
          *(a1 + 116) |= 8u;
          v64 = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v64 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v64;
          v57 = 32;
          goto LABEL_109;
        case 0xBu:
          *(a1 + 116) |= 2u;
          v64 = 0;
          v51 = [a2 position] + 8;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v64 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v64;
          v57 = 16;
          goto LABEL_109;
        case 0xCu:
          *(a1 + 116) |= 0x20u;
          v64 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v64 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v64;
          v57 = 48;
          goto LABEL_109;
        case 0xDu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 116) |= 0x100u;
          break;
        case 0xEu:
          *(a1 + 116) |= 1u;
          v64 = 0;
          v49 = [a2 position] + 8;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v64 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v64;
          v57 = 8;
          goto LABEL_109;
        case 0xFu:
          *(a1 + 116) |= 4u;
          v64 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v64 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v64;
          v57 = 24;
LABEL_109:
          *(a1 + v57) = v56;
          goto LABEL_110;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_110;
      }

      while (1)
      {
        LOBYTE(v64) = 0;
        v29 = [a2 position] + 1;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v28 |= (v64 & 0x7F) << v26;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v11 = v27++ >= 9;
        if (v11)
        {
          v25 = 0;
          goto LABEL_87;
        }
      }

      v25 = [a2 hasError] ? 0 : v28;
LABEL_87:
      v54 = 108;
LABEL_96:
      *(a1 + v54) = v25;
LABEL_110:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22657069C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

void *__copy_helper_block_ea8_40c23_ZTS17ATXPredictionItem(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);

  return memcpy((a1 + 48), (a2 + 48), 0xCFEuLL);
}

void sub_226570AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ATXPredictionItem>::push_back[abi:ne200100](void *a1, id *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<ATXPredictionItem>::__emplace_back_slow_path<ATXPredictionItem const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    memcpy(v4 + 1, a2 + 1, 0xCFEuLL);
    result = (v4 + 417);
  }

  a1[1] = result;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::find<NSString * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if ([i[2] isEqualToString:*a2])
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if ([i[2] isEqualToString:*a2])
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * {__strong},ATXPredictionItem>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (([v11[2] isEqualToString:*a2] & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::vector<ATXPredictionItem>::__emplace_back_slow_path<ATXPredictionItem const&>(void *a1, id *a2)
{
  v2 = 0x13A524387AC82261 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x13A524387AC822)
  {
    std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
  }

  if (0x274A4870F59044C2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x274A4870F59044C2 * ((a1[2] - *a1) >> 3);
  }

  if ((0x13A524387AC82261 * ((a1[2] - *a1) >> 3)) >= 0x9D2921C3D6411)
  {
    v6 = 0x13A524387AC822;
  }

  else
  {
    v6 = v3;
  }

  v10[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(a1, v6);
  }

  v7 = 3336 * v2;
  v10[0] = 0;
  v10[1] = v7;
  v10[3] = 0;
  *v7 = *a2;
  memcpy((v7 + 8), a2 + 1, 0xCFEuLL);
  v10[2] = v7 + 3336;
  std::vector<ATXPredictionItem>::__swap_out_circular_buffer(a1, v10);
  v8 = a1[1];
  std::__split_buffer<ATXPredictionItem>::~__split_buffer(v10);
  return v8;
}

void sub_226571470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ATXPredictionItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ATXAnchorModelPBLaunchHistoryMetadataReadFrom(uint64_t a1, void *a2)
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
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
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
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v62 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast2Hours;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast2Hours;
            goto LABEL_98;
          case 2:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x40u;
            while (1)
            {
              v61 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v61 & 0x7F) << v48;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast7Days;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast7Days;
LABEL_98:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_101:
            *(a1 + *v22) = v21;
            goto LABEL_102;
          case 3:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v60 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v60 & 0x7F) << v23;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast14Days;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast14Days;
            goto LABEL_98;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v43 = 0;
          v44 = 0;
          v16 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v57 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v57 & 0x7F) << v43;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v20 = v44++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast24Hours;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast24Hours;
          goto LABEL_98;
        }

        if (v13 == 7)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 36) |= 0x20u;
          while (1)
          {
            v56 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v56 & 0x7F) << v28;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast48Hours;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast48Hours;
          goto LABEL_98;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v59 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v59 & 0x7F) << v38;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast28Days;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast28Days;
          goto LABEL_98;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v58 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v58 & 0x7F) << v14;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast12Hours;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___ATXAnchorModelPBLaunchHistoryMetadata__launchesInLast12Hours;
          goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_102:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXMPBBlendingWidgetRotationEngagementTrackerReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
            v21 = PBReaderReadString();
            v22 = 48;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_65:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_80;
            }

            v21 = PBReaderReadString();
            v22 = 40;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v21 = PBReaderReadString();
              v22 = 8;
              break;
            case 9:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 80) |= 4u;
              while (1)
              {
                v40 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v40 & 0x7F) << v30;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_78;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v32;
              }

LABEL_78:
              v37 = 68;
LABEL_79:
              *(a1 + v37) = v20;
              goto LABEL_80;
            case 0xA:
              v21 = PBReaderReadString();
              v22 = 16;
              break;
            default:
              goto LABEL_65;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_65;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            v42 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v42 & 0x7F) << v23;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_70;
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

LABEL_70:
          v37 = 32;
          goto LABEL_79;
        }

        v21 = PBReaderReadString();
        v22 = 56;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 24;
            break;
          case 4:
            v21 = PBReaderReadString();
            v22 = 72;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              v41 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v41 & 0x7F) << v14;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_74;
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

LABEL_74:
            v37 = 64;
            goto LABEL_79;
          default:
            goto LABEL_65;
        }
      }

      v29 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_80:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *_ATXAnchorModelSha256Hash(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || v4)
  {
    if (v3)
    {
      v7 = [v3 dataUsingEncoding:4];
      v8 = [v7 mutableCopy];

      [v8 appendData:v5];
      md[0] = 0;
      CC_SHA256([v8 bytes], objc_msgSend(v8, "length"), md);
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
      v10 = [v9 bytes];
      v11 = [MEMORY[0x277CCAB68] string];
      if ([v9 length])
      {
        v12 = 0;
        do
        {
          [v11 appendFormat:@"%hhx", *(v10 + v12++), *md];
        }

        while ([v9 length] > v12);
      }

      v6 = [v11 copy];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = &stru_2839A6058;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_22657A844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_22657AA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ATXHeuristicActionProducer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22657AC44(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22657BCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcomeReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22658149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2265823B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id readWholeFile(int a1, char a2)
{
  lseek(a1, 0, 0);
  memset(&v15, 0, sizeof(v15));
  if (fstat(a1, &v15))
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      readWholeFile_cold_1();
    }

    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA138] format:{@"readWholeFile errno=%i", *__error()}];
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  st_size = v15.st_size;
  if (v15.st_size)
  {
    v8 = malloc_type_malloc(v15.st_size, 0x1598069DuLL);
    if (!v8)
    {
      v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v14);
    }

    v9 = v8;
    v10 = read(a1, v8, st_size);
    if (v10 == -1)
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        readWholeFile_cold_3();
      }

LABEL_21:
      free(v9);
      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v11 = v10;
    if (v10 < st_size)
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        readWholeFile_cold_2(st_size, v11, v12);
      }

      goto LABEL_21;
    }

    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v9 length:st_size];
  }

  else
  {
    v5 = objc_opt_new();
  }

LABEL_7:

  return v5;
}

void sub_226587028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226589FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22658A270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22658A7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22658B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22658BAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _ATXCopySqliteDatabaseClassC(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _ATXCopySqliteDatabaseClassC_cold_1();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  _ATXCopySqliteDatabaseClassC_cold_2();
LABEL_3:
  v16 = 0;
  ppDb = 0;
  if (sqlite3_open_v2([v5 UTF8String], &ppDb, 1, 0))
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ATXCopySqliteDatabaseClassC_cold_3();
    }

LABEL_9:

    sqlite3_close_v2(ppDb);
    v9 = 0;
    goto LABEL_10;
  }

  if (sqlite3_open_v2([v7 UTF8String], &v16, 3145734, 0))
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ATXCopySqliteDatabaseClassC_cold_4();
    }

    goto LABEL_9;
  }

  v11 = sqlite3_file_control(v16, 0, 102, ppDb);
  sqlite3_exec_with_logging(v16, "PRAGMA journal_mode=WAL");
  sqlite3_exec_with_logging(v16, "VACUUM");
  sqlite3_exec_with_logging(v16, "ANALYZE");
  sqlite3_close_v2(v16);
  v9 = v11 == 0;
  if (v11 || (a3 & 1) == 0)
  {
    sqlite3_close_v2(ppDb);
  }

  else
  {
    v15 = 128;
    sqlite3_file_control(ppDb, 0, 101, &v15);
    sqlite3_close_v2(ppDb);
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    [v12 removeItemAtPath:v5 error:0];
    v13 = [v5 stringByAppendingString:@"-shm"];
    [v12 removeItemAtPath:v13 error:0];

    v14 = [v5 stringByAppendingString:@"-wal"];
    [v12 removeItemAtPath:v14 error:0];

    v9 = 1;
  }

LABEL_10:

  return v9;
}

void sqlite3_exec_with_logging(sqlite3 *a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sqlite3_exec(a1, a2, 0, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = a2;
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Error running '%s': rc=%i", &v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL _ATXCopySqliteDatabaseDataClassC(void *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = NSTemporaryDirectory();
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:v7];

  v9 = 0x277CCA000uLL;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v36 = 0;
  LOBYTE(v7) = [v10 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v36];
  v11 = v36;

  if (v7)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v30 = v11;
      v31 = v3;
      v15 = 0;
      v16 = *v33;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = [v18 lastPathComponent];
          v20 = [v8 stringByAppendingPathComponent:v19];

          if ([v20 hasSuffix:@".db"])
          {
            v21 = v20;

            v15 = v21;
          }

          v22 = [v12 objectForKeyedSubscript:v18];
          v23 = [v22 writeToFile:v20 atomically:0];

          if ((v23 & 1) == 0)
          {
            v25 = __atxlog_handle_default();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              _ATXCopySqliteDatabaseDataClassC_cold_2();
            }

            v24 = 0;
            v3 = v31;
            v11 = v30;
            v9 = 0x277CCA000;
            goto LABEL_24;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v3 = v31;
      v11 = v30;
      v9 = 0x277CCA000;
      if (v15)
      {
        v24 = _ATXCopySqliteDatabaseClassC(v15, v4, 0);
        goto LABEL_24;
      }
    }

    else
    {
    }

    v26 = __atxlog_handle_default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _ATXCopySqliteDatabaseDataClassC_cold_3(v12);
    }

    v15 = 0;
    v24 = 0;
LABEL_24:
    v27 = [*(v9 + 2560) defaultManager];
    [v27 removeItemAtPath:v8 error:0];
  }

  else
  {
    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _ATXCopySqliteDatabaseDataClassC_cold_1();
    }

    v24 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t _ATXExtractFilesFromDECBackupArchiveIfExists(void *a1, void *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v68 = a2;
  v4 = os_transaction_create();
  v87 = 0;
  v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3 options:2 error:&v87];
  v6 = v87;
  v7 = v6;
  if (v5)
  {
    if ([v5 length]<= 7)
    {
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _ATXExtractFilesFromDECBackupArchiveIfExists_cold_3();
      }

LABEL_46:

LABEL_47:
      v9 = 0;
LABEL_48:

      goto LABEL_49;
    }

    v10 = [v5 bytes];
    v11 = (v10 + 1);
    v12 = *v10;
    v13 = [v5 length]- 8;
    v14 = malloc_type_malloc(v12, 0xDF8D58E7uLL);
    v15 = compression_decode_buffer(v14, v12, v11, v13, 0, COMPRESSION_LZFSE);
    if (!v15)
    {
      free(v14);
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _ATXExtractFilesFromDECBackupArchiveIfExists_cold_2();
      }

      goto LABEL_46;
    }

    v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v14 length:v15 freeWhenDone:1];

    v17 = objc_autoreleasePoolPush();
    v86 = 0;
    v18 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:1 format:0 error:&v86];
    v19 = v86;

    if (!v18)
    {
      v49 = __atxlog_handle_default();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        _ATXExtractFilesFromDECBackupArchiveIfExists_cold_1();
      }

      objc_autoreleasePoolPop(v17);
      v9 = 0;
      v5 = v16;
      v7 = v19;
      goto LABEL_48;
    }

    v62 = v4;
    v63 = v3;
    v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v82 objects:v95 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v83;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v83 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v82 + 1) + 8 * i);
          v27 = [v21 objectForKeyedSubscript:v26];
          v28 = [v26 lastPathComponent];
          [v20 setObject:v27 forKeyedSubscript:v28];
        }

        v23 = [v21 countByEnumeratingWithState:&v82 objects:v95 count:16];
      }

      while (v23);
    }

    objc_autoreleasePoolPop(v17);
    v29 = objc_opt_new();
    obj = objc_opt_new();
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v5 = v20;
    v30 = [v5 countByEnumeratingWithState:&v78 objects:v94 count:16];
    v64 = v29;
    if (!v30)
    {
LABEL_33:

      if ([v29 count])
      {
        v38 = objc_opt_new();
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v39 = v29;
        v40 = [v39 countByEnumeratingWithState:&v74 objects:v93 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v75;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v75 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v74 + 1) + 8 * j);
              v45 = [v5 objectForKeyedSubscript:v44];
              [v38 setObject:v45 forKeyedSubscript:v44];
            }

            v41 = [v39 countByEnumeratingWithState:&v74 objects:v93 count:16];
          }

          while (v41);
        }

        v46 = [v68 stringByAppendingPathComponent:@"_ATXDataStore.db"];
        v61 = _ATXCopySqliteDatabaseDataClassC(v38, v46);
      }

      else
      {
        v61 = 1;
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obja = obj;
      v50 = [obja countByEnumeratingWithState:&v70 objects:v92 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v71;
        v65 = 1;
        do
        {
          v53 = 0;
          v54 = v19;
          do
          {
            if (*v71 != v52)
            {
              objc_enumerationMutation(obja);
            }

            v55 = *(*(&v70 + 1) + 8 * v53);
            v56 = v5;
            v57 = [v5 objectForKeyedSubscript:v55];
            v58 = [v68 stringByAppendingPathComponent:v55];
            v69 = v54;
            v59 = [v57 writeToFile:v58 options:0x40000000 error:&v69];
            v19 = v69;

            if ((v59 & 1) == 0)
            {
              v60 = __atxlog_handle_default();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v89 = v55;
                v90 = 2112;
                v91 = v19;
                _os_log_error_impl(&dword_2263AA000, v60, OS_LOG_TYPE_ERROR, "Could not write %@: %@", buf, 0x16u);
              }

              v65 = 0;
            }

            ++v53;
            v54 = v19;
            v5 = v56;
          }

          while (v51 != v53);
          v51 = [obja countByEnumeratingWithState:&v70 objects:v92 count:16];
        }

        while (v51);
      }

      else
      {
        v65 = 1;
      }

      v9 = v61 & v65;
      v7 = v19;
      v4 = v62;
      v3 = v63;
      goto LABEL_48;
    }

    v31 = v30;
    v32 = *v79;
LABEL_18:
    v33 = 0;
    while (1)
    {
      if (*v79 != v32)
      {
        objc_enumerationMutation(v5);
      }

      v34 = *(*(&v78 + 1) + 8 * v33);
      if (([v34 isEqualToString:@"_ATXDataStore.db"] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"_ATXDataStore.db-wal"))
      {
        v35 = v29;
      }

      else
      {
        if (![&unk_283A57E60 containsObject:v34])
        {
          v36 = __atxlog_handle_default();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v89 = v34;
            _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "Unknown filename in backup file: %@", buf, 0xCu);
          }

          v29 = v64;
          goto LABEL_25;
        }

        v35 = obj;
      }

      [v35 addObject:v34];
LABEL_25:
      if (v31 == ++v33)
      {
        v37 = [v5 countByEnumeratingWithState:&v78 objects:v94 count:16];
        v31 = v37;
        if (!v37)
        {
          goto LABEL_33;
        }

        goto LABEL_18;
      }
    }
  }

  if ([v6 code] != 260)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ATXExtractFilesFromDECBackupArchiveIfExists_cold_4();
    }

    goto LABEL_47;
  }

  v9 = 1;
LABEL_49:

  v47 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t _ATXDECBackupNeedsRestoring(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByAppendingPathComponent:@"Backups/AppPredictionExpert"];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v1 stringByAppendingPathComponent:@"restore_done"];
    v7 = [v5 fileExistsAtPath:v6];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBEA90]);
      v9 = [v1 stringByAppendingPathComponent:@"backup_version"];
      v10 = [v8 initWithContentsOfFile:v9];

      v11 = objc_alloc(MEMORY[0x277CBEA90]);
      v12 = [v1 stringByAppendingPathComponent:@"Backups/backup_version"];
      v13 = [v11 initWithContentsOfFile:v12];

      v4 = 1;
      if (v13 && v10)
      {
        v4 = [v13 isEqualToData:v10] ^ 1;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

void ATXTriggerActionHistogramPrefillJob()
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86250], 1);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86270], 86400);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86230], 0);
  xpc_activity_register("com.apple.duetexpertd.prefill-action-histograms", xdict, &__block_literal_global_87);
}

void __ATXTriggerActionHistogramPrefillJob_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2 && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v3 = objc_opt_new();
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Prefilling action histograms...", &v9, 2u);
    }

    v5 = objc_autoreleasePoolPush();
    +[_ATXActionUtils prefillActionHistograms];
    objc_autoreleasePoolPop(v5);
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [v3 timeIntervalSinceNow];
      v9 = 134217984;
      v10 = v7 * -1000.0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Done prefilling action histograms in %0.2f ms.", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ATXEnableMobileAssetDataVault()
{
  v0 = __atxlog_handle_xpc();
  v1 = os_signpost_id_generate(v0);

  v2 = __atxlog_handle_xpc();
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "ATXEnableMobileAssetDataVault", " enableTelemetry=YES ", buf, 2u);
  }

  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Attempt DuetExpertCenterAsset datavault assurance", buf, 2u);
  }

  ASEnsureDataVault();
  v5 = 0;
  v6 = __atxlog_handle_xpc();
  v7 = v6;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v7, OS_SIGNPOST_INTERVAL_END, v1, "ATXEnableMobileAssetDataVault", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = __atxlog_handle_default();
  v9 = v8;
  if (!v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Successfully ensured datavault";
      goto LABEL_17;
    }

LABEL_18:

    return;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    ATXEnableMobileAssetDataVault_cold_1();
  }

  ASEnsureDataVault();
  v10 = 0;
  v11 = __atxlog_handle_default();
  v9 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Successfully ensured datavault after a retry";
LABEL_17:
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    ATXEnableMobileAssetDataVault_cold_2();
  }

  _os_crash();
  __break(1u);
}

void _ATXInitializeInOwnerProcess()
{
  v0 = objc_autoreleasePoolPush();
  if (_ATXInitializeInOwnerProcess_onceToken != -1)
  {
    _ATXInitializeInOwnerProcess_cold_1();
  }

  objc_autoreleasePoolPop(v0);
}

id ATXSharedDefaultHomeScreenItemUpdater()
{
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    ATXSharedDefaultHomeScreenItemUpdater_cold_1();
  }

  if (ATXSharedDefaultHomeScreenItemUpdater_onceToken[0] != -1)
  {
    ATXSharedDefaultHomeScreenItemUpdater_cold_2();
  }

  v0 = ATXSharedDefaultHomeScreenItemUpdater_updater;

  return v0;
}

id restoreStateFinishedPath()
{
  v0 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v1 = [v0 stringByAppendingPathComponent:@"restore_state_finished"];

  return v1;
}

void performPostRestoreTasks()
{
  v0 = objc_opt_new();
  [v0 evictCachedSuggestedPages];

  v1 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v1 updateCacheWithActivity:0 completionHandler:0];
}

void __restoreStateQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("restoreState", v2);
  v1 = restoreStateQueue_instance;
  restoreStateQueue_instance = v0;
}

void __registerForRestoreStateNotifications_block_invoke()
{
  v0 = dlsym(registerForRestoreStateNotifications_mobileBackup, "kMBManagerRestoreStateChangedNotification");
  if (v0)
  {
    v1 = *v0;
    out_token = 0;
    v2 = [v1 UTF8String];
    v3 = restoreStateQueue();
    notify_register_dispatch(v2, &out_token, v3, &__block_literal_global_494);

    __registerForRestoreStateNotifications_block_invoke_491(v4, out_token);
  }

  else
  {
    v5 = __atxlog_handle_backup();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __registerForRestoreStateNotifications_block_invoke_cold_1();
    }
  }
}

void __registerForRestoreStateNotifications_block_invoke_491(int a1, int token)
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v2 = __atxlog_handle_backup();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = state64;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Restore state changed: %ld", buf, 0xCu);
  }

  if (state64 == 2)
  {
    v3 = __atxlog_handle_backup();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Restore detected. Pausing prediction updates.", buf, 2u);
    }

    restoreInProgress = 1;
  }

  else if (restoreInProgress == 1)
  {
    v5 = __atxlog_handle_backup();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Restore finished. Restarting process.", buf, 2u);
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = restoreStateFinishedPath();
    [v6 createFileAtPath:v7 contents:0 attributes:0];

    exit(0);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __registerForUserRequestedBackupJob_block_invoke()
{
  v0 = __atxlog_handle_backup();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Backup Now: Running app predictions backup...", v2, 2u);
  }

  v1 = +[ATXBackupService backupService];
  [v1 backupWithCompletionHandler:&__block_literal_global_504];
}

void __registerForUserRequestedBackupJob_block_invoke_502(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_backup();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Backup Now succeeded: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __registerForBackupBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_backup();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running app predictions backup...", buf, 2u);
  }

  v4 = +[ATXBackupService backupService];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __registerForBackupBGSTJob_block_invoke_515;
  v6[3] = &unk_27859B4A8;
  v7 = v2;
  v5 = v2;
  [v4 backupWithCompletionHandler:v6];
}

void __registerForBackupBGSTJob_block_invoke_515(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setDone];
  v3 = __atxlog_handle_backup();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Backup succeeded: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __registerForTrainingBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running app predictions training...", buf, 2u);
  }

  v4 = +[_ATXAppPredictor sharedInstance];
  [v4 trainWithTask:v2];

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Finished running atxtrain CTS job.", v6, 2u);
  }
}

void __registerForActionTimeEstimateCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Action Time Estimate logging...", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 logActionTimeEstimatesWithActivity:v2];
}

void __registerForEverydayShortcutsTriggersCTSJobs_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Daily Routines scheduled job...", v5, 2u);
  }

  v4 = +[ATXDailyRoutinesTriggerManager sharedInstance];
  [v4 updateWithActivity:v2];
}

void __registerForEverydayShortcutsTriggersCTSJobs_block_invoke_525(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Daily Routines one shot job...", v5, 2u);
  }

  v4 = +[ATXDailyRoutinesTriggerManager sharedInstance];
  [v4 updateWithActivity:v2];
}

void __registerForDailyRoutinesCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Daily Routines scheduled job...", v5, 2u);
  }

  v4 = +[ATXDailyRoutinesTriggerManager sharedInstance];
  [v4 updateWithActivity:v2];
}

void __registerForDailyRoutinesCTSJob_block_invoke_530(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Daily Routines one shot job...", v5, 2u);
  }

  v4 = +[ATXDailyRoutinesTriggerManager sharedInstance];
  [v4 updateWithActivity:v2];
}

void __registerForMagicalMomentsBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Magical Moments model training...", v5, 2u);
  }

  v4 = +[ATXMagicalMomentsAppPredictor sharedInstance];
  [v4 trainWithTask:v2];
}

void __registerForAnchorModelDataHarvestingBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Anchor Model on-device training data collection...", &v14, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXAnchorModelTrainingDatasetBuilder alloc] initWithActivity:v2];
  [v2 setProgressUnits:10];
  [(ATXAnchorModelTrainingDatasetBuilder *)v5 cleanupDatasetForPrivacyPreservation];
  [v2 setProgressUnits:25];
  v6 = [(ATXAnchorModelTrainingDatasetBuilder *)v5 addNewTrainingSamplesToDatabase];
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Added %ld new samples after running Anchor Model Training Dataset Builder.", &v14, 0xCu);
  }

  [v2 setProgressUnits:50];
  objc_autoreleasePoolPop(v4);
  v8 = [v2 didDefer];
  v9 = __atxlog_handle_default();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Deferring Anchor Model Data Harvesting CTS job right before we started harvesting data for offline data collection.", &v14, 2u);
    }
  }

  else
  {
    if (v10)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Running Anchor Model offline data collection...", &v14, 2u);
    }

    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_new();
    [v12 harvestData];

    objc_autoreleasePoolPop(v11);
    [v2 setProgressUnits:95];
    [v2 setDone];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __registerForAnchorModelTrainingBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Anchor Model on-device training...", buf, 2u);
  }

  v4 = [[ATXAnchorModelTrainer alloc] initWithTask:v2];
  [(ATXAnchorModelTrainer *)v4 train];
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Done running Anchor Model on-device training.", v6, 2u);
  }
}

void __registerForBiomeProactiveSuggestionUIFeedbackResultStreamWritingCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Writing proactive suggestion ui feedback results for client models to biome stream...", buf, 2u);
  }

  v4 = objc_opt_new();
  [v4 writeEventsToStreamWithXPCActivity:v2];

  v5 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Done writing proactive suggestion ui feedback results for client models to biome stream.", v6, 2u);
  }
}

void __registerForModeEntityModelTrainingBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Mode Entity Model training...", buf, 2u);
  }

  v4 = objc_opt_new();
  [v4 trainWithTask:v2];

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Done running Mode Entity Model training.", v6, 2u);
  }
}

void __registerForModeSetupPredictionTrainingCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Mode Setup Prediction Model training...", buf, 2u);
  }

  v4 = objc_opt_new();
  [v4 trainWithXPCActivity:v2];

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Done running Mode Setup Prediction Model training.", v6, 2u);
  }
}

void __registerForUrgencyTuningGlobalMetricsLogging_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Logging global metrics for urgency tuning...", buf, 2u);
  }

  v4 = objc_opt_new();
  [v4 logUrgencyTuningGlobalMetricsWithXPCActivity:v2];

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Done logging global metrics for urgency tuning.", v6, 2u);
  }
}

void __registerForInformationStorePeriodicCleanupCTSJob_block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Running periodic information store cleanup", v2, 2u);
  }

  v1 = [MEMORY[0x277CEB5C8] sharedInstance];
  [v1 clearOutdatedWidgetEngagements];
  [v1 clearOutdatedWidgetReloadEntries];
  [v1 clearOutdatedSuggestedWidgetEntries];
}

void __registerForAppDirectoryCategoriesUpdateCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Updating ATXAppDirectory categories", v5, 2u);
  }

  v4 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v4 updateCacheWithActivity:v2 completionHandler:0];
}

void __registerForAppDirectoryLogUploadCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Uploading ATXAppDirectory logs", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 uploadSummariesToCoreAnalyticsWithActivity:v2];
}

void __registerForUserWakeupCDContextChange_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v2 = [v0 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v1 = [MEMORY[0x277CBEAA8] date];
  [v2 setObject:v1 forKey:*MEMORY[0x277CEBD80]];
}

void __registerForTimelineRelevanceMetricsCollectionCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Timeline Relevance Metric collection.", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 harvestWithActivity:v2];
}

void __registerForTimelineRelevancePredictionCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([MEMORY[0x277CEBC58] widgetSuggestionsEnabled])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running Timeline Relevance prediction CTS job.", v5, 2u);
    }

    v4 = objc_opt_new();
    [v4 persistQuotasWithActivity:v2];
    if (_os_feature_enabled_impl())
    {
      [v4 trainWidgetPredictionModelWithActivity:v2];
    }
  }
}

uint64_t __registerForCardSuggestionClientCacheCleanupCTSJob_block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Running Card Suggestion Client Cache Cleanup CTS Job", v2, 2u);
  }

  return +[ATXClientModelSuggestionReceiver clearPreviouslyPersistedCachesForCardSuggestionClientsIfNecessary];
}

void __registerForDefaultWidgetSuggesterUpdateCTSJobIfNecessary_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Updating ATXDefaultWidgetSuggester", v5, 2u);
  }

  v4 = +[ATXDefaultWidgetSuggesterServer sharedInstance];
  [v4 updateCachedValuesWithActivity:v2];
}

void __registerForWidgetOnboardingCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Updating onboarding widget and stack suggestions and refreshing installed cache", buf, 2u);
  }

  v4 = [MEMORY[0x277CEB998] sharedInstance];
  v5 = [v4 fetchHomeScreenWidgetDescriptorMetadataWithError:0];
  if (v5)
  {
    v6 = ATXSharedDefaultHomeScreenItemUpdater();
    v7 = [v4 homeScreenDescriptors];
    [v6 updateDefaultsIfNeededWithSystemDescriptors:v7 installDatesCache:v5 reason:@"Onboarding CTS job"];
  }

  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Updating ATXOnboardingStackWidgetCache", v14, 2u);
  }

  v9 = objc_opt_new();
  v10 = [v9 updateCacheWithActivity:v2];
  v11 = __atxlog_handle_home_screen();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Updating ATXOnboardingStackResultCache", v13, 2u);
    }

    v12 = objc_opt_new();
    [v12 updateCacheWithActivity:v2 widgetCache:v10];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __registerForWidgetOnboardingCTSJob_block_invoke_cold_1();
  }
}

void __registerForBiomePublicStreamPruning_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 pruneAllStreamsWithActivity:v2];
}

void __registerForFocusMetricsLogUploadCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Processing and uploading Focus metrics events to CoreAnalytics", buf, 2u);
  }

  v4 = __atxlog_handle_metrics();
  v5 = os_signpost_id_generate(v4);

  v6 = __atxlog_handle_metrics();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "FocusMetricsLogging.Total", " enableTelemetry=YES ", v13, 2u);
  }

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 uploadFocusLogsToCoreAnalyticsWithActivity:v2 contactStore:v9];

  v10 = __atxlog_handle_metrics();
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_END, v5, "FocusMetricsLogging.Total", " enableTelemetry=YES ", v12, 2u);
  }
}

void __registerForHomeScreenLogUploadCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Processing and uploading homescreen events to CoreAnalytics", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:v2 customStartDate:0 dryRunCompletionHandler:0];
}

void __registerForNPlusOneStudyCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Preparing and uploading N+1 study data to CoreAnalytics", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 uploadStudyDataToCoreAnalyticsWithActivity:v2];
}

void __registerForBlendingBiomeStreamLoggingCTSJob_block_invoke()
{
  v0 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Running Blending Biome Stream logging...", v2, 2u);
  }

  v1 = +[ATXBlendingBiomeStreamLogger defaultBiomeStreamLogger];
  [v1 logBlendingMetricsFromBiomeStream];
}

void __registerForFaceSuggestionsCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "void registerForFaceSuggestionsCTSJob(void)_block_invoke";
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s: Refreshing Face and Complication suggestions...", &v15, 0xCu);
  }

  v4 = [v2 setContinue];
  v5 = __atxlog_handle_lock_screen();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "void registerForFaceSuggestionsCTSJob(void)_block_invoke";
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s: activity set to CONTINUE", &v15, 0xCu);
    }

    v6 = +[ATXFaceSuggestionServer sharedInstance];
    [v6 reloadLockScreenSuggestionsWithActivity:v2 completion:&__block_literal_global_645];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __registerForFaceSuggestionsCTSJob_block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __registerForFaceSuggestionsCTSJob_block_invoke_642(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __registerForFaceSuggestionsCTSJob_block_invoke_642_cold_1(v2, v3);
  }
}

void __registerForLockscreenMetricsCTSJob_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "void registerForLockscreenMetricsCTSJob(void)_block_invoke";
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "%s: Collecting lockscreen metrics...", &v3, 0xCu);
  }

  v1 = objc_opt_new();
  [v1 postDailyMetrics];

  v2 = *MEMORY[0x277D85DE8];
}

void __registerForZkwMetricsCTSJob_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "void registerForZkwMetricsCTSJob(void)_block_invoke";
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "%s: Collecting zkw metrics...", &v3, 0xCu);
  }

  v1 = objc_opt_new();
  [v1 postZkwMetrics];

  v2 = *MEMORY[0x277D85DE8];
}

void __registerForVerticalModelsTrainingCTSJob_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "void registerForVerticalModelsTrainingCTSJob(void)_block_invoke";
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "%s: Training vertical models...", &v3, 0xCu);
  }

  v1 = objc_opt_new();
  [v1 refreshWebsitePredictions];

  v2 = *MEMORY[0x277D85DE8];
}

void __registerForModelScoreHarvestingCTSJob_block_invoke()
{
  v0 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Running model score harvesting...", v2, 2u);
  }

  v1 = objc_alloc_init(MEMORY[0x277D420A8]);
  [v1 modelScoreHarvesting];
}

void __registerForUpdateInferredModeBiomeStream_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Updating inferred mode Biome stream", buf, 2u);
  }

  v4 = objc_opt_new();
  [v4 inferModesForLastDayWithXPCActivity:v2];

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Finished", v6, 2u);
  }
}

void __registerForUpdateSuggestedPagesCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Updating suggested pages from CTS job", buf, 2u);
  }

  v4 = +[ATXSuggestedPagesServer sharedInstance];
  [v4 prewarmCachedSuggestedPagesWithActivity:v2];

  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Finished updating suggested pages from CTS job", v6, 2u);
  }
}

void __registerForBlendingShadowLoggingCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Beginning blending shadow logging XPC activity", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 shadowLogWithXPCActivity:v2];
}

void __registerForModeActivityLoggingJob_block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Skipping deprecated mode activity metrics logging...", v1, 2u);
  }
}

void __registerForDigestLoggingJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Running notification digest metrics logging...", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 logMetricsWithXPCActivity:v2];
}

void __registerForDigestGlobalNotificationFeedbackJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Updating digest global notification feedback...", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 logGlobalNotificationStatisticsToDigestFeedbackWithXPCActivity:v2];
}

void __registerForNotificationAndSuggestionDatastorePruning_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Pruning notification and suggestion datastore...", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 pruneDatabaseWithXPCActivity:v2];
}

void __registerForNotificationAndSuggestionDatastorePruning_block_invoke_693(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 pruneNotificationsBasedOnHardLimitsWithXPCActivity:v2];
}

void __registerForNotificationAndSuggestionDatastorePruning_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 pruneSuggestionsBasedOnHardLimitsWithXPCActivity:v2];
}

void __registerForNotificationAndSuggestionDatastorePruning_block_invoke_3()
{
  v0 = objc_opt_new();
  [v0 analyze];
}

void __registerForNotificationAndSuggestionDatastorePerfMetricsLogging_block_invoke()
{
  v0 = objc_opt_new();
  [v0 notificationAndSuggestionDatastorePerfMetricsLogging];
}

void __registerForATXDataStoreMaintainenceBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_ATXDataStore sharedInstance];
  [v3 vacuumDatabaseWithActivity:v2];
}

void __registerForActivitySuggestionFeedbackProcessingCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Beginning Activity Suggestion Feedback Processing XPC activity", v5, 2u);
  }

  v4 = objc_opt_new();
  [v4 processFeedbackWithXPCActivity:v2];
}

void __registerForATXSuggestedPagesHomeScreenModificationsMetricsCTSJob_block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Started running com.apple.duetexpertd.homeScreenModificationMetricsLogger", buf, 2u);
  }

  v1 = objc_opt_new();
  [v1 logMetrics];

  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Finished running com.apple.duetexpertd.homeScreenModificationMetricsLogger", v3, 2u);
  }
}

void __registerForAmbientMetricsCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CFC7F0];
  v3 = a2;
  v4 = [v2 log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "void registerForAmbientMetricsCTSJob(void)_block_invoke";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: starting Ambient metrics collection", &v7, 0xCu);
  }

  v5 = objc_opt_new();
  [v5 collectWithActivity:v3];

  v6 = *MEMORY[0x277D85DE8];
}

void __registerForCarPlayMetricsBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_carPlay_widgets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "void registerForCarPlayMetricsBGSTJob(void)_block_invoke";
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s: starting CarPlay metrics collection", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __registerForCarPlayMetricsBGSTJob_block_invoke_726;
  v8[3] = &unk_278596C10;
  v9 = v2;
  v10 = v4;
  v5 = v4;
  v6 = v2;
  [v5 collectWithActivity:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __registerForCarPlayMetricsBGSTJob_block_invoke_726(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setDone];
  v1 = __atxlog_handle_carPlay_widgets();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "void registerForCarPlayMetricsBGSTJob(void)_block_invoke";
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "%s: Completed CarPlay metrics collection", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __registerForTimelineRelevanceTablePruningCTSJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 pruneTimelineRelevanceTableWithXPCActivity:v2];
}

void __registerForNotificationMetricsBGSTJob_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Processing and uploading Notification metrics events to CoreAnalytics", buf, 2u);
  }

  v4 = __atxlog_handle_metrics();
  v5 = os_signpost_id_generate(v4);

  v6 = __atxlog_handle_metrics();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "NotificationMetricsLogging.Total", " enableTelemetry=YES ", v13, 2u);
  }

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 uploadNotificationLogsToCoreAnalyticsWithTask:v2 contactStore:v9];

  v10 = __atxlog_handle_metrics();
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_END, v5, "NotificationMetricsLogging.Total", " enableTelemetry=YES ", v12, 2u);
  }
}

void languagePrefChanged()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Language change detected - restarting duetexpertd.", v3, 2u);
  }

  v1 = objc_alloc(MEMORY[0x277CBEBD0]);
  v2 = [v1 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v2 setBool:1 forKey:@"ATXInitializationLanguageChangeDirty"];
  xpc_transaction_exit_clean();
}

void __ATXSharedDefaultHomeScreenItemUpdater_block_invoke()
{
  v0 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v3 = [v0 histogramForLaunchType:1];

  v1 = [objc_alloc(MEMORY[0x277CEB468]) initWithSpotlightAppLaunchHistogram:v3];
  v2 = ATXSharedDefaultHomeScreenItemUpdater_updater;
  ATXSharedDefaultHomeScreenItemUpdater_updater = v1;
}

uint64_t __updatePredictionsIfLanguageChanged_block_invoke(uint64_t a1)
{
  ATXUpdatePredictionsImmediatelyWithReason(20);
  v2 = *(a1 + 32);

  return [v2 setBool:0 forKey:@"ATXInitializationLanguageChangeDirty"];
}

void sub_226596410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226596868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226596AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226596D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226596F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226597CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226599DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226599F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659A1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659A428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659A660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659A990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659AB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659AC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659AE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659B074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659B2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659B52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659BCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659BDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659BF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659C018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659C118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659C430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22659CBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659D264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

void sub_22659ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22659EFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265A13A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265A1BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2265A1E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265A2010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2265A226C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2265A3CEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2265A4740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2265A685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265A7734(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2265A7DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265A80E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2265AACA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265AAE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265AAF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265AB088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265AB2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBPredictionUserContextReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          *(a1 + 48) |= 2u;
          v27 = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v27;
          v24 = 16;
          goto LABEL_39;
        }

        if (v13 != 2)
        {
LABEL_33:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_40;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      else
      {
        switch(v13)
        {
          case 3:
            *(a1 + 48) |= 1u;
            v27 = 0;
            v16 = [a2 position] + 8;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v27;
            v24 = 8;
LABEL_39:
            *(a1 + v24) = v23;
            goto LABEL_40;
          case 4:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          default:
            goto LABEL_33;
        }
      }

      v18 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_40:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t offsetFromAppendingData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  while (([v3 length] & 0x1F) != 0)
  {
    [v3 appendBytes:"" length:1];
  }

  v5 = [v3 length];
  [v3 appendData:v4];

  return v5;
}

void sub_2265B2E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265B2F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265B3214(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2265B34A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ATXAppsThatCannotShowContentInSearch()
{
  v0 = CFPreferencesCopyValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEA60] array];
  }

  v3 = v2;

  v4 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
  [v4 removeObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
  [v4 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
  [v4 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
  if ([v3 containsObject:@"com.apple.DocumentsApp"])
  {
    [v4 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    [v4 addObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    [v4 addObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    [v4 addObject:@"com.apple.FileProvider.LocalStorage"];
  }

  v5 = [MEMORY[0x277CBEB58] setWithArray:v4];

  return v5;
}

void sub_2265B4E80(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2265B9404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__split_buffer<ATXPredictionItem>::~__split_buffer(&a9);

  _Unwind_Resume(a1);
}

void std::vector<ATXPredictionItem>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x13A524387AC82261 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<ATXPredictionItem>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 3336 * a2;
    while (v3 != v7)
    {
      v3 -= 417;
    }

    a1[1] = v7;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::find<ATXAction * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if ([i[2] isEqual:*a2])
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278596758, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,ATXPredictionItem>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (([v11[2] isEqualToString:*a2] & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::vector<ATXPredictionItem>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = result[2];
  if (0x13A524387AC82261 * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 3336 * a2;
      v10.i32[1] = -1059153344;
      *v10.i32 = -31337.0;
      v11 = vdupq_lane_s32(v10, 0);
      do
      {
        *v3 = 0;
        *(v3 + 3328) = v10.i32[0];
        v12 = 16;
        *(v3 + 3332) = 0;
        do
        {
          *(v3 + v12) = v11;
          v12 += 16;
        }

        while (v12 != 3328);
        v3 += 3336;
      }

      while (v3 != v9);
      v3 = v9;
    }

    result[1] = v3;
  }

  else
  {
    v5 = 0x13A524387AC82261 * ((v3 - *result) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x13A524387AC822)
    {
      std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x13A524387AC82261 * ((v4 - *result) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x9D2921C3D6411)
    {
      v8 = 0x13A524387AC822;
    }

    else
    {
      v8 = v6;
    }

    v17[4] = result;
    if (v8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(result, v8);
    }

    v13 = 3336 * v5;
    v17[0] = 0;
    v17[1] = 3336 * v5;
    v17[3] = 0;
    v14.i32[1] = -1059153344;
    *v14.i32 = -31337.0;
    v15 = vdupq_lane_s32(v14, 0);
    do
    {
      *v13 = 0;
      *(v13 + 3328) = v14.i32[0];
      v16 = 16;
      *(v13 + 3332) = 0;
      do
      {
        *(v13 + v16) = v15;
        v16 += 16;
      }

      while (v16 != 3328);
      v13 += 3336;
    }

    while (v13 != 3336 * v5 + 3336 * a2);
    v17[2] = 3336 * v5 + 3336 * a2;
    std::vector<ATXPredictionItem>::__swap_out_circular_buffer(result, v17);
    return std::__split_buffer<ATXPredictionItem>::~__split_buffer(v17);
  }

  return result;
}

void sub_2265BA3DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ATXPredictionItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__emplace_unique_key_args<ATXAction * {__strong},ATXAction * {__strong},long &>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (([v11[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2265BA664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<ATXAction * {__strong},int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ATXAction * {__strong},int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<ATXAction * {__strong},int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ATXAction * {__strong},int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2265BB210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2265BB6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2265BBAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ATXPBPredictionLocationMotionContextReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v65[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v65[0] & 0x7F) << v5;
      if ((v65[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(ATXPBPredictionLocationOfInterest);
        v14 = 88;
        goto LABEL_57;
      case 2u:
        v13 = objc_alloc_init(ATXPBPredictionLocationOfInterest);
        v14 = 64;
LABEL_57:
        objc_storeStrong((a1 + v14), v13);
        v65[0] = 0;
        v65[1] = 0;
        if (PBReaderPlaceMark() && ATXPBPredictionLocationOfInterestReadFrom(v13, a2))
        {
          PBReaderRecallMark();

LABEL_99:
          v63 = [a2 position];
          if (v63 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 3u:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 100) |= 0x80u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v65[0] & 0x7F) << v32;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_82;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v34;
        }

LABEL_82:
        *(a1 + 80) = v38;
        goto LABEL_99;
      case 4u:
        v39 = PBReaderReadData();
        v40 = *(a1 + 72);
        *(a1 + 72) = v39;

        goto LABEL_99;
      case 5u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 100) |= 0x200u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v65[0] & 0x7F) << v17;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_75;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_75:
        v51 = 97;
        goto LABEL_78;
      case 6u:
        *(a1 + 100) |= 4u;
        v65[0] = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v59 = [a2 data];
          [v59 getBytes:v65 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v57 = v65[0];
        v58 = 24;
        goto LABEL_98;
      case 7u:
        *(a1 + 100) |= 0x10u;
        v65[0] = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v60 = [a2 data];
          [v60 getBytes:v65 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v57 = v65[0];
        v58 = 40;
        goto LABEL_98;
      case 8u:
        *(a1 + 100) |= 8u;
        v65[0] = 0;
        v41 = [a2 position] + 8;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
        {
          v56 = [a2 data];
          [v56 getBytes:v65 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v57 = v65[0];
        v58 = 32;
        goto LABEL_98;
      case 9u:
        *(a1 + 100) |= 2u;
        v65[0] = 0;
        v49 = [a2 position] + 8;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
        {
          v62 = [a2 data];
          [v62 getBytes:v65 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v57 = v65[0];
        v58 = 16;
LABEL_98:
        *(a1 + v58) = v57;
        goto LABEL_99;
      case 0xAu:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 100) |= 0x100u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v65[0] & 0x7F) << v26;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_77;
          }
        }

        v23 = (v28 != 0) & ~[a2 hasError];
LABEL_77:
        v51 = 96;
LABEL_78:
        *(a1 + v51) = v23;
        goto LABEL_99;
      case 0xBu:
        *(a1 + 100) |= 0x20u;
        v65[0] = 0;
        v47 = [a2 position] + 8;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
        {
          v61 = [a2 data];
          [v61 getBytes:v65 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v53 = v65[0];
        v54 = 48;
        goto LABEL_95;
      case 0xCu:
        *(a1 + 100) |= 1u;
        v65[0] = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v52 = [a2 data];
          [v52 getBytes:v65 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v53 = v65[0];
        v54 = 8;
        goto LABEL_95;
      case 0xDu:
        *(a1 + 100) |= 0x40u;
        v65[0] = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v55 = [a2 data];
          [v55 getBytes:v65 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v53 = v65[0];
        v54 = 56;
LABEL_95:
        *(a1 + v54) = v53;
        goto LABEL_99;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_99;
    }
  }
}

uint64_t ATXShouldRevokeOldLockScreenPrediction(ATXAction *a1, ATXAction *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [(ATXAction *)v3 isEqual:v4]^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ATXShouldPostNewLockScreenPrediction(ATXAction *a1, ATXAction *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [(ATXAction *)v4 isEqual:v3]^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unint64_t ATXArrayDiff(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v4 count];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = [v3 objectAtIndexedSubscript:i];
      v11 = [v4 objectAtIndexedSubscript:i];
      v12 = [v10 isEqualToString:v11];

      v8 += v12 ^ 1u;
    }
  }

  v13 = [v3 count];
  v14 = [v4 count];
  if (v13 <= v14)
  {
    v13 = v14;
  }

  return v8 - v7 + v13;
}

unint64_t ATXCacheUpdateDiff(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v25 + 1) + 8 * v9) actionKey];
        [v5 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v21 + 1) + 8 * v15) predictedItem];
        v17 = [v16 actionKey];

        if (v17)
        {
          [v11 addObject:v17];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  v18 = ATXArrayDiff(v5, v11);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t ATXCacheUpdateSetDiff(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v26 + 1) + 8 * v9) actionKey];
        [v5 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v4;
  v12 = 0;
  v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v22 + 1) + 8 * v15) predictedItem];
        v17 = [v16 actionKey];

        if ([v5 containsObject:v17])
        {
          [v5 removeObject:v17];
        }

        else
        {
          ++v12;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  v18 = [v5 count];
  if (v12 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v12;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t ATXWriteActionPredictionChunks(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = open_dprotected_np([v3 UTF8String], 1537, 3, 0, 420);
  if (v5 < 0)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 138412802;
      v14 = v3;
      v15 = 1024;
      v16 = v10;
      v17 = 2080;
      v18 = v12;
      _os_log_error_impl(&dword_2263AA000, v7, OS_LOG_TYPE_ERROR, "Error opening %@: [%i] %s", buf, 0x1Cu);
    }

    v6 = 0;
  }

  else
  {
    v6 = ATXCacheFileWriteChunks();
    close(v5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ATXActionExperienceForActions(double a1, double a2, double a3, int a4, double a5, int a6)
{
  v6 = a4;
  if (a1 > a3)
  {
    v8 = v6 == a2;
    v7 = v6 >= a2;
  }

  else
  {
    v7 = 1;
    v8 = 0;
  }

  if (v8 || !v7)
  {
    return 1;
  }

  if (a6 <= a2)
  {
    v9 = a1 == a5;
    v10 = a1 < a5;
  }

  else
  {
    v9 = 1;
    v10 = 0;
  }

  if (v10 || v9)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

id ATXSortedActionResults(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 sortWithOptions:16 usingComparator:&__block_literal_global_104];

  return v1;
}

uint64_t ___Z22ATXSortedActionResultsP7NSArrayIP15ATXActionResultE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 scoredAction];
  if (v6)
  {
    v7 = [v4 scoredAction];
    [v7 score];
    v9 = v8;
  }

  else
  {
    v9 = -INFINITY;
  }

  v10 = [v5 scoredAction];
  if (v10)
  {
    v11 = [v5 scoredAction];
    [v11 score];
    v13 = v12;
  }

  else
  {
    v13 = -INFINITY;
  }

  if (v9 <= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v9 < v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

void sub_2265C2F04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t ATXPBAppModeEntityScoreMetricsReadFrom(uint64_t a1, void *a2)
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
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_27859C298[v13];
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

void sub_2265C5A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265C6C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265C9540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose((v70 - 248), 8);
  _Block_object_dispose((v70 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_2265CCC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2265CDE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265CE2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265D0B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_2265D0E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nukeDbFiles(void *a1)
{
  v1 = a1;
  unlink([v1 UTF8String]);
  v2 = [v1 stringByAppendingString:@"-wal"];
  unlink([v2 UTF8String]);

  v4 = [v1 stringByAppendingString:@"-shm"];

  v3 = v4;
  unlink([v4 UTF8String]);
}

void sub_2265D439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2265D775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265D7CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2265D8CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void removeActionDataByBundleIdId(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = __atxlog_handle_deletions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a2;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Deleting actions with bundleIdId: %lld", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __removeActionDataByBundleIdId_block_invoke;
  v9[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v9[4] = a2;
  [v3 prepAndRunQuery:@"DELETE FROM alogBundleId WHERE id=?" onPrep:v9 onRow:0 onError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __removeActionDataByBundleIdId_block_invoke_2;
  v8[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v8[4] = a2;
  [v3 prepAndRunQuery:@"DELETE FROM slotSetKey WHERE alogId IN (SELECT id FROM alog WHERE bundleID=?)" onPrep:v8 onRow:0 onError:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __removeActionDataByBundleIdId_block_invoke_3;
  v7[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v7[4] = a2;
  [v3 prepAndRunQuery:@"DELETE FROM alog WHERE bundleId=?" onPrep:v7 onRow:0 onError:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __removeActionDataByBundleIdId_block_invoke_4;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v6[4] = a2;
  [v3 prepAndRunQuery:@"DELETE FROM afeedback WHERE bundleId=?" onPrep:v6 onRow:0 onError:0];

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2265D90D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265DA7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_2265DBC54(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2265DCDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265DD9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265DDC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265DE1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265E0C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_2265E11CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

void sub_2265E1AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265E3158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265E590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265E6254(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2265E72F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_12_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_2265EF850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMagicalMomentsPBMMShownTrackerReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v14 = PBReaderReadString();
          v15 = 32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 1u;
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
              v23 = 0;
              goto LABEL_40;
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

LABEL_40:
          *(a1 + 16) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2265F3470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 168), 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2265F3F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2265F4380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2265F5304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBBlendingSessionClientModelUpdateReadFrom(char *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_22:
        v16 = *&a1[v15];
        *&a1[v15] = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(ATXPBBlendingSessionClientModelSuggestion);
    [a1 addSuggestion:v16];
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !ATXPBBlendingSessionClientModelSuggestionReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXTimelineRelevancePBTimelineRelevanceContainerReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v47) = 0;
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_55;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_55;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_55;
      case 4u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v47) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v47 & 0x7F) << v29;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_88;
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

LABEL_88:
        *(a1 + 88) = v35;
        goto LABEL_91;
      case 5u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          LOBYTE(v47) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v47 & 0x7F) << v15;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_79;
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

LABEL_79:
        v44 = 8;
        goto LABEL_84;
      case 6u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v47) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v47 & 0x7F) << v37;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_90;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_90:
        *(a1 + 104) = v43;
        goto LABEL_91;
      case 7u:
        v22 = objc_alloc_init(ATXTimelineRelevancePBTimelineRelevanceScoreEntry);
        [a1 addTimelineRelevanceScore:v22];
        v47 = 0;
        v48 = 0;
        if (!PBReaderPlaceMark() || !ATXTimelineRelevancePBTimelineRelevanceScoreEntryReadFrom(v22, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 8u:
        v22 = objc_alloc_init(ATXTimelineRelevancePBTimelineRelevanceSuggestion);
        [a1 addTimelineRelevanceSuggestion:v22];
        v47 = 0;
        v48 = 0;
        if (!PBReaderPlaceMark() || !ATXTimelineRelevancePBTimelineRelevanceSuggestionReadFrom(v22, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 9u:
        v22 = objc_alloc_init(ATXTimelineRelevancePBTimelineRelevanceRotation);
        [a1 addRotation:v22];
        v47 = 0;
        v48 = 0;
        if (PBReaderPlaceMark() && ATXTimelineRelevancePBTimelineRelevanceRotationReadFrom(v22, a2))
        {
          goto LABEL_75;
        }

        goto LABEL_93;
      case 0xAu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          LOBYTE(v47) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v47 & 0x7F) << v23;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v25;
        }

LABEL_83:
        v44 = 16;
LABEL_84:
        *(a1 + v44) = v21;
        goto LABEL_91;
      case 0xBu:
        v22 = objc_alloc_init(ATXTimelineRelevancePBTimelineRelevanceStackConfigSummary);
        [a1 addStackConfigSummary:v22];
        v47 = 0;
        v48 = 0;
        if (!PBReaderPlaceMark() || !ATXTimelineRelevancePBTimelineRelevanceStackConfigSummaryReadFrom(v22, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 24;
LABEL_55:
        v36 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_91;
      case 0xDu:
        v22 = objc_alloc_init(ATXTimelineRelevancePBFeatureVector);
        objc_storeStrong((a1 + 40), v22);
        v47 = 0;
        v48 = 0;
        if (PBReaderPlaceMark() && ATXTimelineRelevancePBFeatureVectorReadFrom(v22, a2))
        {
LABEL_75:
          PBReaderRecallMark();

LABEL_91:
          v45 = [a2 position];
          if (v45 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_93:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_91;
    }
  }
}

void sub_2265FFD6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_2266005B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22660075C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226600920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22660184C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2266019FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id personalityStringFromComplication(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 extensionBundleIdentifier];
  v5 = [v2 kind];

  v6 = [v3 initWithFormat:@"%@-%@", v4, v5];

  return v6;
}

void sub_226604804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226604958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226604AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226604C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226605018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2266051F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226605404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2266056E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226605BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22660934C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22660EC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22660F3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

void sub_22660FB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2266106EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226615710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRSServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSServiceClass_softClass;
  v7 = getPRSServiceClass_softClass;
  if (!getPRSServiceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSServiceClass_block_invoke;
    v3[3] = &unk_2785967D8;
    v3[4] = &v4;
    __getPRSServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_226615804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27859DA98;
    v6 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    __getPRSServiceClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("PRSService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSServiceClass_block_invoke_cold_1();
  }

  getPRSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226617F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2266182F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22661927C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22661A3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, char a30)
{
  objc_destroyWeak((v30 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_22661B3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22661F824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSGSuggestionsServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreSuggestionsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreSuggestionsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27859DCE0;
    v6 = 0;
    CoreSuggestionsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSuggestionsLibraryCore_frameworkLibrary)
  {
    __getSGSuggestionsServiceClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SGSuggestionsService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSGSuggestionsServiceClass_block_invoke_cold_1();
  }

  getSGSuggestionsServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreSuggestionsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSuggestionsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ATXMPBInstalledAppClipSessionEngagementTrackerReadFrom(uint64_t a1, void *a2)
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
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v35 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v35 & 0x7F) << v25;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_52:
          v31 = 28;
          goto LABEL_53;
        }

        if (v13 != 4)
        {
LABEL_25:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      else
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v34 & 0x7F) << v18;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_48:
          v31 = 24;
LABEL_53:
          *(a1 + v31) = v24;
          goto LABEL_54;
        }

        if (v13 != 2)
        {
          goto LABEL_25;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_226621344(_Unwind_Exception *a1)
{
  v2 = v1;
  pthread_mutex_unlock((v2 + 8));
  _Unwind_Resume(a1);
}

void entropy(uint64_t ***a1, uint64_t a2, int a3)
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (a2 != 0xFFFF && a3 != 0xFFFF)
  {
    goto LABEL_35;
  }

  v5 = a2;
  v7 = (**a1)[1] - ***a1;
  v8 = v7 | 0xF;
  *v37 = 0;
  v38 = 0;
  if ((v7 | 0xF) > 0x800)
  {
    v9 = entropy(v37, v7, v39);
    v11 = v39[0];
  }

  else
  {
    MEMORY[0x28223BE20](a1, a2);
    bzero(v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7 | 0xF);
    v11 = ((&v37[3] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 3) & 0xFFFFFFFFFFFFFFF0);
  }

  v12 = v7 | 3;
  *v37 = 0;
  v38 = 0;
  if ((v7 | 3) > 0x800)
  {
    entropy(v37, v7, v39);
    v13 = v39[0];
  }

  else
  {
    MEMORY[0x28223BE20](v9, v10);
    v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, v12);
  }

  if ((a3 & v5) == 0xFFFF)
  {
    v14 = **a1;
    v15 = *v14;
    if (v14[1] != *v14)
    {
      v16 = 0;
      v17 = 0uLL;
      v18 = 0uLL;
      do
      {
        v19 = (v15 + 32 * v16);
        v20 = *v19;
        v21 = v19[1];
        v18 = vaddq_f32(v18, v21);
        v17 = vaddq_f32(v17, *v19);
        v22 = &v11[8 * v16];
        *v22 = v20;
        v22[1] = v21;
        ++v16;
        v14 = **a1;
        v15 = *v14;
      }

      while (v16 < (v14[1] - *v14) >> 5);
    }

    v26 = *(v14 + 6);
LABEL_29:
    if (v26 >= 1)
    {
      cblas_sscal_NEWLAPACK();
      v37[0] = (v26 + 7) & 0xFFFFFFF8;
      vvlog2f(v13, v11, v37);
      cblas_sdot_NEWLAPACK();
    }

    goto LABEL_31;
  }

  if (v5 == 0xFFFF)
  {
    v23 = **a1;
    v24 = v23[3];
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      v27 = v23[4];
      v28 = 0.0;
      do
      {
        if (*(v27 + 4 * v25) == a3)
        {
          v29 = *(*v23 + 4 * v25);
          v28 = v28 + v29;
          v11[v26++] = v29;
        }

        ++v25;
      }

      while (v24 > v25);
      goto LABEL_29;
    }
  }

  else
  {
    v30 = **a1;
    v31 = v30[3];
    if (v31)
    {
      v32 = 0;
      v26 = 0;
      v33 = v30[4];
      v34 = 0.0;
      do
      {
        if (*(v33 + 4 * v32 + 2) == v5)
        {
          v35 = *(*v30 + 4 * v32);
          v34 = v34 + v35;
          v11[v26++] = v35;
        }

        ++v32;
      }

      while (v31 > v32);
      goto LABEL_29;
    }
  }

LABEL_31:
  if (v12 >= 0x801)
  {
    free(v13);
  }

  if (v8 >= 0x801)
  {
    free(v11);
  }

LABEL_35:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_22662238C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v4 + 8));

  _Unwind_Resume(a1);
}

void sub_2266224E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  pthread_mutex_unlock((v11 + 8));
  _Unwind_Resume(a1);
}

void sub_226622F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);
  pthread_mutex_unlock((v18 + 8));

  _Unwind_Resume(a1);
}

void sub_226623310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  pthread_mutex_unlock((v10 + 8));
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_226623460(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v3 + 8));

  _Unwind_Resume(a1);
}

void sub_22662365C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2266239F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_226623AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  pthread_mutex_unlock((v11 + 8));
  _Unwind_Resume(a1);
}

void sub_226623F38(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<proactive::pas::SynchronizedObject<anonymous namespace::HTGuardedData,proactive::pas::detail::RecursiveMutex>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    pthread_mutex_destroy((v2 + 8));

    JUMPOUT(0x22AA80F00);
  }

  return result;
}

void sub_226625070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ATXSortAndLimitPredictionsWhileKeepingPredictionItems(void *a1, void *a2, uint64_t *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v25 = v4;
  v28 = objc_opt_new();
  v6 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [ATXActionPredictionsHelpers sortedPredictions:v4];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v7)
  {
    v29 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = [v9 actionKey];
        v11 = [v5 unsignedIntegerValue];
        if (!v5)
        {
          goto LABEL_16;
        }

        v12 = v11;
        v13 = [v6 objectForKeyedSubscript:v10];
        if ([v13 unsignedIntegerValue] < v12)
        {

LABEL_16:
          [v28 addObject:v9];
          v19 = MEMORY[0x277CCABB0];
          v20 = [v6 objectForKeyedSubscript:v10];
          v21 = [v19 numberWithInt:{objc_msgSend(v20, "intValue") + 1}];
          [v6 setObject:v21 forKeyedSubscript:v10];

          goto LABEL_17;
        }

        v14 = [ATXActionPredictions isActionPredictionContainerEligibleForLimit:v9];

        if (!v14)
        {
          goto LABEL_16;
        }

        if (a3)
        {
          v15 = *a3;
          v16 = a3[1];
          v17 = +[_ATXGlobals sharedInstance];
          LODWORD(v15) = 0x13A524387AC82261 * ((v16 - v15) >> 3) < [v17 numberOfActionsToKeepForLogging];

          if (v15)
          {
            v18 = __atxlog_handle_default();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              *&buf[4] = v10;
              v35 = 2048;
              v36 = v12;
              _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_INFO, "Filtering out action with key %{public}@ due to limit : %lu", buf, 0x16u);
            }

            if (v9)
            {
              [v9 predictionItem];
            }

            else
            {
              bzero(buf, 0xD08uLL);
            }

            std::vector<ATXPredictionItem>::push_back[abi:ne200100](a3, buf);
          }
        }

LABEL_17:

        ++v8;
      }

      while (v7 != v8);
      v22 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
      v7 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t std::vector<ATXPredictionItem>::push_back[abi:ne200100](void *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0x13A524387AC82261 * ((v5 - *a1) >> 3);
    if ((v9 + 1) > 0x13A524387AC822)
    {
      std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x13A524387AC82261 * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x9D2921C3D6411)
    {
      v12 = 0x13A524387AC822;
    }

    else
    {
      v12 = v11;
    }

    v15[4] = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(a1, v12);
    }

    v13 = 3336 * v9;
    v15[0] = 0;
    v15[1] = v13;
    v15[3] = 0;
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    memcpy((v13 + 8), a2 + 1, 0xCFEuLL);
    v15[2] = v13 + 3336;
    std::vector<ATXPredictionItem>::__swap_out_circular_buffer(a1, v15);
    v8 = a1[1];
    result = std::__split_buffer<ATXPredictionItem>::~__split_buffer(v15);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    result = memcpy(v5 + 1, a2 + 1, 0xCFEuLL);
    v8 = v5 + 417;
  }

  a1[1] = v8;
  return result;
}

void sub_226626D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ATXPredictionItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_226626F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&a14);

  _Unwind_Resume(a1);
}

void sub_226627FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::~__hash_table(&a55);

  _Unwind_Resume(a1);
}

void sub_22662964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_22662D374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22662D640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22662E268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return objc_opt_class();
}

void sub_226635FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226636C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_226637874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226638734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2266388D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226638B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_226639724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2266397F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226639B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXTimelineRelevancePBTimelineRelevanceRotationReadFrom(uint64_t a1, void *a2)
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
        v57 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57 & 0x7F) << v5;
        if ((v57 & 0x80) == 0)
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

      if (v13 == 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v59 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v59 & 0x7F) << v28;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_83:
        v54 = 16;
LABEL_103:
        *(a1 + v54) = v34;
        goto LABEL_104;
      }

      if (v13 == 2)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          v62 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v62 & 0x7F) << v42;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_97;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v44;
        }

LABEL_97:
        v55 = 32;
LABEL_98:
        *(a1 + v55) = v27;
        goto LABEL_104;
      }

      if (v13 != 3)
      {
        goto LABEL_60;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 0x20u;
      while (1)
      {
        v63 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v63 & 0x7F) << v14;
        if ((v63 & 0x80) == 0)
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
      *(a1 + 36) = v20;
LABEL_104:
      v56 = [a2 position];
      if (v56 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v61 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v37;
        }

LABEL_87:
        v55 = 24;
        break;
      case 5:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          v58 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v58 & 0x7F) << v48;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v50;
        }

LABEL_102:
        v54 = 8;
        goto LABEL_103;
      case 6:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          v60 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v60 & 0x7F) << v21;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_93;
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

LABEL_93:
        v55 = 28;
        break;
      default:
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_104;
    }

    goto LABEL_98;
  }

  return [a2 hasError] ^ 1;
}

void sub_22663E6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226640440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226640B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22664189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226641B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}