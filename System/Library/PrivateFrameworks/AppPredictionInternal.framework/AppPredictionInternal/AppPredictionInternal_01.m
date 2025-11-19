uint64_t ATXPBBlendingSessionDeviceContextReadFrom(uint64_t a1, void *a2)
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
        v60 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60 & 0x7F) << v5;
        if ((v60 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 32) |= 0x40u;
          while (1)
          {
            v64 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v64 & 0x7F) << v37;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_90;
            }
          }

          v20 = (v39 != 0) & ~[a2 hasError];
LABEL_90:
          v56 = 30;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_56;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 0x20u;
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
              goto LABEL_96;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_96:
          v56 = 29;
        }

LABEL_99:
        *(a1 + v56) = v20;
        goto LABEL_107;
      }

      if (v13 == 6)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v66 = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v66 & 0x7F) << v43;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_94;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v45;
        }

LABEL_94:
        v55 = 16;
LABEL_104:
        *(a1 + v55) = v35;
        goto LABEL_107;
      }

      if (v13 != 7)
      {
LABEL_56:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_107;
      }

      *(a1 + 32) |= 1u;
      v59 = 0;
      v27 = [a2 position] + 8;
      if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
      {
        v57 = [a2 data];
        [v57 getBytes:&v59 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v59;
LABEL_107:
      v58 = [a2 position];
      if (v58 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 32) |= 8u;
      while (1)
      {
        v62 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v62 & 0x7F) << v29;
        if ((v62 & 0x80) == 0)
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
      v55 = 24;
      goto LABEL_104;
    }

    if (v13 == 2)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        v61 = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v61 & 0x7F) << v49;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_103;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v51;
      }

LABEL_103:
      v55 = 20;
      goto LABEL_104;
    }

    if (v13 != 3)
    {
      goto LABEL_56;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 32) |= 0x10u;
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
        LOBYTE(v20) = 0;
        goto LABEL_98;
      }
    }

    v20 = (v23 != 0) & ~[a2 hasError];
LABEL_98:
    v56 = 28;
    goto LABEL_99;
  }

  return [a2 hasError] ^ 1;
}

void sub_226422DE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t ATXMPBBlendingClientModelHomeScreenLayoutTrackerReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v21 = PBReaderReadString();
            v22 = 32;
            break;
          case 5:
            v21 = PBReaderReadString();
            v22 = 8;
            break;
          case 6:
            v21 = PBReaderReadString();
            v22 = 16;
            break;
          default:
LABEL_36:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (v13 == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = 24;
        goto LABEL_40;
      }

      if (v13 != 3)
      {
        goto LABEL_36;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 52) |= 1u;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
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
        v20 = v16;
      }

LABEL_46:
      *(a1 + 48) = v20;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = PBReaderReadString();
    v22 = 40;
LABEL_40:
    v24 = *(a1 + v22);
    *(a1 + v22) = v21;

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_226426758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v9 - 136));
  objc_destroyWeak((v9 - 128));
  _Unwind_Resume(a1);
}

void updateCache()
{
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    v0 = +[ATXAppDirectoryOrderingProvider sharedInstance];
    [v0 updateCacheWithActivity:0 completionHandler:0];
  }
}

void sub_226429600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22642C150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_22643498C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
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
  _Block_object_dispose((v10 - 152), 8);
  _Unwind_Resume(a1);
}

void ATXSmoothedProbability(double a1, double a2)
{
  if (a2 + 0.00000011920929 < a1)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ATXSmoothedProbability_cold_2();
    }

    v5 = @"ATXSmoothedProbability called with invalid arguments. numerator: %f denominator: %f";
LABEL_5:

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{v5, *&a1, *&a2}];
    return;
  }

  if (a2 > 0.0)
  {
    [ATXSlotResolutionParametersStatistics smoothedRatio:a1 over:a2];
    if (v6 < 0.0 || v6 > 1.0)
    {
      v4 = __atxlog_handle_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ATXSmoothedProbability_cold_1();
      }

      v5 = @"Invalid probability found. numerator: %f denominator: %f";
      goto LABEL_5;
    }
  }
}

void ATXProbability(double a1, double a2)
{
  if (a2 + 0.00000011920929 < a1)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ATXProbability_cold_2();
    }

    v5 = @"ATXProbability called with invalid arguments. numerator: %f denominator: %f";
LABEL_5:

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{v5, *&a1, *&a2}];
    return;
  }

  if (a2 > 0.0 && (a1 / a2 < 0.0 || a1 / a2 > 1.0))
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ATXSmoothedProbability_cold_1();
    }

    v5 = @"Invalid probability found. numerator: %f denominator: %f";
    goto LABEL_5;
  }
}

double ATXRatio(double a1, double a2)
{
  result = a1 / a2;
  if (a2 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

double ATXGaussianDistributionWithZeroMean(double a1, double a2)
{
  v4 = +[_ATXGlobals sharedInstance];
  [v4 clippingThresholdForGaussianDist];
  v6 = v5;

  if (fabs(a2) > v6 * a1)
  {
    return 0.0;
  }

  return exp(a2 / a1 * (a2 / a1) * -0.5);
}

void sub_22643F164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

id ATXMaxDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (v3)
  {
    v6 = v3;
    if (v4)
    {
      if ([v3 atx_isBeforeDate:v4])
      {
        v6 = v5;
      }

      else
      {
        v6 = v3;
      }
    }
  }

  v7 = v6;

  return v7;
}

uint64_t ATXPBUnifiedInferredActivitySessionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v36) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
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

      if (v13 == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v36) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v36 & 0x7F) << v18;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_47;
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

LABEL_47:
        *(a1 + 24) = v24;
        goto LABEL_55;
      }

      if (v13 != 4)
      {
        if (v13 != 5)
        {
          goto LABEL_42;
        }

        *(a1 + 48) |= 1u;
        v36 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v31 = v36;
        v32 = 8;
LABEL_54:
        *(a1 + v32) = v31;
        goto LABEL_55;
      }

      v25 = PBReaderReadString();
      v26 = *(a1 + 40);
      *(a1 + 40) = v25;

LABEL_55:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 48) |= 8u;
      v36 = 0;
      v27 = [a2 position] + 8;
      if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
      {
        v30 = [a2 data];
        [v30 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v31 = v36;
      v32 = 32;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_42:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_55;
      }

      *(a1 + 48) |= 2u;
      v36 = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v34 = [a2 data];
        [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v31 = v36;
      v32 = 16;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

void sub_226443D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void dispatch_sync_notxn(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_sync_notxn_block_invoke;
  block[3] = &unk_2785969B8;
  v6 = v3;
  v4 = v3;
  dispatch_sync(a1, block);
}

void __dispatch_sync_notxn_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_226445F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBBlendingSessionClientModelSuggestionReadFrom(uint64_t a1, void *a2)
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
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v30 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v30 & 0x7F) << v18;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_38;
          }
        }

        v24 = [a2 hasError] ? 0 : v20;
LABEL_38:
        *(a1 + 24) = v24;
      }

      else if (v13 == 2)
      {
        *(a1 + 28) |= 1u;
        v28 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
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

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
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

void sub_22644ABC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22644B158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22644B728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22644BCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22644C274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL shouldReturnUndefined(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3[1];
  v5 = v4 - a2;
  if (v4 < a2)
  {
    shouldReturnUndefined_cold_1();
  }

  if (v5 >= v4)
  {
    v6 = 0;
  }

  else if (*&v3[v5 + 2] == -31337.0)
  {
    v6 = 1;
  }

  else
  {
    v7 = a2 - 1;
    v8 = &v3[v4 - a2 + 3];
    do
    {
      v9 = v7;
      if (!v7)
      {
        break;
      }

      v10 = *v8++;
      --v7;
    }

    while (v10 != -31337.0);
    v6 = v4 >= v9;
  }

  return v6;
}

void drop(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (!v5)
  {
    drop_cold_1();
  }

  v3[1] = v6;
}

void push(void *a1, double a2)
{
  v3 = a1;
  v4 = v3[1];
  if (v4 >= 0x1F4)
  {
    push_cold_1();
  }

  v3[1] = v4 + 1;
  *&v3[v4 + 2] = a2;
}

double pop(void *a1)
{
  v1 = a1;
  v2 = v1[1];
  if (!v2)
  {
    pop_cold_1();
  }

  v3 = v2 - 1;
  v1[1] = v3;
  v4 = *&v1[v3 + 2];

  return v4;
}

void sub_22644E328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_3()
{

  drop(v0, v1);
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_22644F0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXAnchorModelPBLinkActionMetadataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27[0] & 0x7F) << v16;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_42;
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

LABEL_42:
          *(a1 + 32) = v22;
          goto LABEL_43;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v24 = objc_alloc_init(ATXAnchorModelPBLaunchHistoryMetadata);
      objc_storeStrong((a1 + 8), v24);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ATXAnchorModelPBLaunchHistoryMetadataReadFrom(v24, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 24;
      goto LABEL_35;
    }

    if (v13 == 2)
    {
      v14 = PBReaderReadString();
      v15 = 16;
LABEL_35:
      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

      goto LABEL_43;
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

void sub_226450AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMPBAnchorModelPhaseFilterTrackerReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v41 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v41 & 0x7F) << v29;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_64;
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

LABEL_64:
            v37 = 24;
            goto LABEL_69;
          case 5:
            v21 = PBReaderReadString();
            v22 = 16;
            break;
          case 6:
            v21 = PBReaderReadString();
            v22 = 8;
            break;
          default:
LABEL_52:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_70;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v40 = 0;
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
              v20 = 0;
              goto LABEL_60;
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

LABEL_60:
          v37 = 32;
LABEL_69:
          *(a1 + v37) = v20;
          goto LABEL_70;
        }

        if (v13 != 2)
        {
          if (v13 != 3)
          {
            goto LABEL_52;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v42 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v14;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_68;
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

LABEL_68:
          v37 = 28;
          goto LABEL_69;
        }

        v21 = PBReaderReadString();
        v22 = 40;
      }

      v36 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_70:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_226459984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v21 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22645A568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void sub_22645AEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void **a24)
{
  a24 = &a21;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&a24);

  _Unwind_Resume(a1);
}

void sub_22645B600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_22645BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ATXPredictionItem>::__init_with_size[abi:ne200100]<ATXPredictionItem*,ATXPredictionItem*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ATXPredictionItem>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void __initFeedbackConstantsData_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"_ATXFeedback" ofType:@"plist" specifiedABGroup:0];
  v2 = [v1 objectForKeyedSubscript:@"Constants"];
  v3 = [v2 objectForKeyedSubscript:@"BaseAlpha"];
  v4 = v3;
  v5 = 1.0;
  v6 = 1.0;
  if (v3)
  {
    [v3 doubleValue];
  }

  _ATXFeedbackConstantsData_0 = *&v6;

  v7 = [v2 objectForKeyedSubscript:@"BaseBeta"];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
    v5 = v9;
  }

  _ATXFeedbackConstantsData_1 = *&v5;

  v10 = [v2 objectForKeyedSubscript:@"MultiplierForAppAlphasAndBetas"];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
  }

  else
  {
    v12 = 1.0;
  }

  _ATXFeedbackConstantsData_2 = *&v12;

  v13 = [v2 objectForKeyedSubscript:@"DecayHalfLifeSeconds"];
  v14 = v13;
  v15 = 0x4122750000000000;
  v16 = 0x4122750000000000;
  if (v13)
  {
    [v13 doubleValue];
  }

  _ATXFeedbackConstantsData_3 = v16;

  v17 = [v2 objectForKeyedSubscript:@"ActionDecayHalfLifeSeconds"];
  v18 = v17;
  if (v17)
  {
    [v17 doubleValue];
    v15 = v19;
  }

  _ATXFeedbackConstantsData_4 = v15;

  v20 = [v1 objectForKeyedSubscript:@"AppSpecificAlphas"];
  v21 = _ATXFeedbackConstantsData_5;
  _ATXFeedbackConstantsData_5 = v20;

  objc_autoreleasePoolPop(v0);
}

void sub_22645EE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226460F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXAnchorModelPBAppLaunchMetadataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v47[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47[0] & 0x7F) << v5;
        if ((v47[0] & 0x80) == 0)
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
        v28 = PBReaderReadString();
        v29 = *(a1 + 32);
        *(a1 + 32) = v28;

        goto LABEL_81;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v47[0] & 0x7F) << v14;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_71;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_71:
          *(a1 + 44) = v20;
          goto LABEL_81;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_81;
      }

      v37 = objc_alloc_init(ATXAnchorModelPBLaunchHistoryMetadata);
      objc_storeStrong((a1 + 24), v37);
      v47[0] = 0;
      v47[1] = 0;
      if (!PBReaderPlaceMark() || !ATXAnchorModelPBLaunchHistoryMetadataReadFrom(v37, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v47[0] & 0x7F) << v30;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_69;
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

LABEL_69:
        *(a1 + 40) = v36;
        goto LABEL_81;
      case 5:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v47[0] & 0x7F) << v38;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v40;
        }

LABEL_79:
        v44 = 16;
        goto LABEL_80;
      case 6:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v47[0] & 0x7F) << v21;
          if ((v47[0] & 0x80) == 0)
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
        v44 = 8;
LABEL_80:
        *(a1 + v44) = v27;
        goto LABEL_81;
    }

    goto LABEL_52;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBPredictionLocationOfInterestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33) = 0;
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
          *(a1 + 40) |= 1u;
          v33 = 0;
          v26 = [a2 position] + 8;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v29 = v33;
          v30 = 8;
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

            goto LABEL_49;
          }

          *(a1 + 40) |= 2u;
          v33 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v29 = v33;
          v30 = 16;
        }

        *(a1 + v30) = v29;
      }

      else if (v13 == 1)
      {
        v24 = PBReaderReadString();
        v25 = *(a1 + 32);
        *(a1 + 32) = v24;
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
        *(a1 + 40) |= 4u;
        while (1)
        {
          LOBYTE(v33) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
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

LABEL_49:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_3_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_226468410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226469364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _ATXInspectionInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283A71EB0];
  [v0 atx_addClass:objc_opt_class() forSelector:sel_appHistoryStopDeltaRecording_ argumentIndex:0 ofReply:1];
  [v0 atx_addClass:objc_opt_class() forSelector:sel_predictItemsAndReturnMetaDataAndInputsAndSubScoresWithCandidateBundleIdentifiers_candidateActiontypes_consumerSubType_reply_ argumentIndex:0 ofReply:1];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_blendedSuggestionsForConsumerSubType_reply_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_scheduledPredictionsForAnchorModelWithReply_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_validPredictionsRightNowForAnchorModelWithReply_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_schedulePredictionsForAnchorModel_anchorType_reply_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v0 setClasses:v15 forSelector:sel_inspectInferredActivitySessionStream_fromTimestamp_reply_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v0 setClasses:v18 forSelector:sel_inspectInferredActivityTransitionStream_fromTimestamp_reply_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v0 setClasses:v21 forSelector:sel_fetchPosterDescriptorsWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_22646B2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22646BCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t AWDProactiveAppDataReadFrom(uint64_t a1, void *a2)
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

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 32;
          goto LABEL_52;
        }

        if (v13 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 24;
LABEL_52:
          v33 = *(a1 + v17);
          *(a1 + v17) = v16;

          goto LABEL_61;
        }

        goto LABEL_40;
      }

      v25 = objc_alloc_init(AWDProactiveAppPredictionSubscores);
      objc_storeStrong((a1 + 40), v25);
      v37[0] = 0;
      v37[1] = 0;
      if (!PBReaderPlaceMark() || !AWDProactiveAppPredictionSubscoresReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_61:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 52) |= 2u;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v37[0] & 0x7F) << v18;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_56;
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

LABEL_56:
        *(a1 + 16) = v24;
        goto LABEL_61;
      case 2:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 52) |= 4u;
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

          v28 |= (v37[0] & 0x7F) << v26;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            LOBYTE(v32) = 0;
            goto LABEL_58;
          }
        }

        v32 = (v28 != 0) & ~[a2 hasError];
LABEL_58:
        *(a1 + 48) = v32;
        goto LABEL_61;
      case 3:
        *(a1 + 52) |= 1u;
        v37[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v37 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v37[0];
        goto LABEL_61;
    }

LABEL_40:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_61;
  }

  return [a2 hasError] ^ 1;
}

void printStringRepresentation(FILE *a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v5 description];
  printQuotedString(a1, v4);

  objc_autoreleasePoolPop(v3);
}

void printQuotedString(FILE *a1, void *a2)
{
  v3 = a2;
  v4 = [(__CFString *)v3 length];
  theString = v3;
  v35 = 0;
  v36 = v4;
  CharactersPtr = CFStringGetCharactersPtr(v3);
  CStringPtr = 0;
  v33 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v37 = 0;
  v38 = 0;
  v34 = CStringPtr;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 64;
    while (1)
    {
      if (v9 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v9;
      }

      v12 = v36;
      if (v36 <= v9)
      {
LABEL_33:
        v21 = objc_autoreleasePoolPush();
        v22 = [(__CFString *)v3 _stringRepresentation:v24];
        fputs([v22 UTF8String], a1);

        objc_autoreleasePoolPop(v21);
        goto LABEL_34;
      }

      if (v33)
      {
        break;
      }

      if (!v34)
      {
        if (v38 <= v9 || v8 > v9)
        {
          v17 = v11 + v7;
          v18 = v10 - v11;
          v19 = v9 - v11;
          v20 = v19 + 64;
          if (v19 + 64 >= v36)
          {
            v20 = v36;
          }

          v37 = v19;
          v38 = v20;
          if (v36 >= v18)
          {
            v12 = v18;
          }

          v39.location = v19 + v35;
          v39.length = v12 + v17;
          CFStringGetCharacters(theString, v39, &v24);
          v8 = v37;
        }

        v13 = &v24 - v8;
        goto LABEL_11;
      }

      v14 = v34[v35 + v9];
LABEL_14:
      v15 = v14 - 32 > 0x3F || ((1 << (v14 - 32)) & 0x87FFFFFE03FF2001) == 0;
      if (v15 && v14 - 97 >= 0x1A)
      {
        goto LABEL_33;
      }

      ++v9;
      --v7;
      ++v10;
      if (v4 == v9)
      {
        fputc(34, a1);
        v23 = v3;
        fputs([(__CFString *)v23 UTF8String:v24], a1);
        fputc(34, a1);
        goto LABEL_34;
      }
    }

    v13 = &v33[v35];
LABEL_11:
    v14 = v13[v9];
    goto LABEL_14;
  }

  fputs([(__CFString *)v3 UTF8String:v24], a1);
LABEL_34:
}

uint64_t ATXPBContextHeuristicsEventReadFrom(uint64_t a1, void *a2)
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
        v14 = PBReaderReadString();
        v15 = 16;
      }

      else
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_35;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_35:
          *(a1 + 24) = v22;
          goto LABEL_36;
        }

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
        v15 = 8;
      }

      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_226473424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBPredictionAmbientLightContextReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_226477A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXCandidateRelevanceModelPBCandidateMetricsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v81) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v81 & 0x7F) << v5;
        if ((v81 & 0x80) == 0)
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
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            LOBYTE(v81) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v81 & 0x7F) << v13;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_111:
              v67 = 28;
              goto LABEL_116;
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

          goto LABEL_111;
        case 2u:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 76) |= 0x10u;
          while (1)
          {
            LOBYTE(v81) = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v81 & 0x7F) << v50;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_115;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v52;
          }

LABEL_115:
          v67 = 32;
          goto LABEL_116;
        case 3u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 76) |= 1u;
          while (1)
          {
            LOBYTE(v81) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v81 & 0x7F) << v34;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_103;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v36;
          }

LABEL_103:
          v67 = 16;
          goto LABEL_116;
        case 4u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v81) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v81 & 0x7F) << v42;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_107;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v44;
          }

LABEL_107:
          v67 = 20;
          goto LABEL_116;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 76) |= 4u;
          break;
        case 6u:
          *(a1 + 76) |= 0x40u;
          v81 = 0;
          v56 = [a2 position] + 4;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 4, v57 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 40;
          goto LABEL_137;
        case 7u:
          *(a1 + 76) |= 0x200u;
          v81 = 0;
          v60 = [a2 position] + 4;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 52;
          goto LABEL_137;
        case 8u:
          *(a1 + 76) |= 0x80u;
          v81 = 0;
          v48 = [a2 position] + 4;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 4, v49 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 44;
          goto LABEL_137;
        case 9u:
          *(a1 + 76) |= 0x100u;
          v81 = 0;
          v64 = [a2 position] + 4;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 4, v65 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 48;
          goto LABEL_137;
        case 0xAu:
          *(a1 + 76) |= 0x20u;
          v81 = 0;
          v32 = [a2 position] + 4;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 4, v33 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 36;
          goto LABEL_137;
        case 0xBu:
          *(a1 + 76) |= 0x800u;
          v81 = 0;
          v62 = [a2 position] + 4;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 4, v63 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 60;
          goto LABEL_137;
        case 0xCu:
          *(a1 + 76) |= 0x4000u;
          v81 = 0;
          v22 = [a2 position] + 4;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 72;
          goto LABEL_137;
        case 0xDu:
          *(a1 + 76) |= 0x1000u;
          v81 = 0;
          v30 = [a2 position] + 4;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 64;
          goto LABEL_137;
        case 0xEu:
          *(a1 + 76) |= 0x2000u;
          v81 = 0;
          v58 = [a2 position] + 4;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 4, v59 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 68;
          goto LABEL_137;
        case 0xFu:
          *(a1 + 76) |= 0x400u;
          v81 = 0;
          v20 = [a2 position] + 4;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v81 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v81;
          v70 = 56;
LABEL_137:
          *(a1 + v70) = v69;
          goto LABEL_138;
        case 0x10u:
          v40 = PBReaderReadString();
          v41 = *(a1 + 8);
          *(a1 + 8) = v40;

          goto LABEL_138;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_138;
      }

      while (1)
      {
        LOBYTE(v81) = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v81 & 0x7F) << v24;
        if ((v81 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_99;
        }
      }

      v19 = [a2 hasError] ? 0 : v26;
LABEL_99:
      v67 = 24;
LABEL_116:
      *(a1 + v67) = v19;
LABEL_138:
      v80 = [a2 position];
    }

    while (v80 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveAppPredictionSessionReadFrom(uint64_t a1, void *a2)
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
      v192 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v192 & 0x7F) << v6;
      if ((v192 & 0x80) == 0)
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

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 192) |= 1u;
        while (1)
        {
          v192 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v192 & 0x7F) << v14;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_337:
            *(a1 + 8) = v20;
            goto LABEL_394;
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

        goto LABEL_337;
      case 2u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 192) |= 8u;
        while (1)
        {
          v192 = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v192 & 0x7F) << v103;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_341;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v105;
        }

LABEL_341:
        v190 = 76;
        goto LABEL_393;
      case 3u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 192) |= 0x8000u;
        while (1)
        {
          v192 = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v192 & 0x7F) << v78;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_323;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v80;
        }

LABEL_323:
        v190 = 144;
        goto LABEL_393;
      case 4u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 192) |= 0x4000000u;
        while (1)
        {
          v192 = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v192 & 0x7F) << v90;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v96) = 0;
            goto LABEL_329;
          }
        }

        v96 = (v92 != 0) & ~[a2 hasError];
LABEL_329:
        v191 = 188;
        goto LABEL_380;
      case 5u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 192) |= 4u;
        while (1)
        {
          v192 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v192 & 0x7F) << v48;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_303;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v50;
        }

LABEL_303:
        v190 = 72;
        goto LABEL_393;
      case 6u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 192) |= 0x200000u;
        while (1)
        {
          v192 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v192 & 0x7F) << v121;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v123;
        }

LABEL_353:
        v190 = 168;
        goto LABEL_393;
      case 7u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 192) |= 0x40000u;
        while (1)
        {
          v192 = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v192 & 0x7F) << v139;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_365;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v141;
        }

LABEL_365:
        v190 = 156;
        goto LABEL_393;
      case 8u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 192) |= 0x10000u;
        while (1)
        {
          v192 = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v192 & 0x7F) << v97;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_333;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v99;
        }

LABEL_333:
        v190 = 148;
        goto LABEL_393;
      case 9u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(a1 + 192) |= 0x2000000u;
        while (1)
        {
          v192 = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v192 & 0x7F) << v157;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_377;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v159;
        }

LABEL_377:
        v190 = 184;
        goto LABEL_393;
      case 0xAu:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 192) |= 0x4000u;
        while (1)
        {
          v192 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v192 & 0x7F) << v60;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_311;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v62;
        }

LABEL_311:
        v190 = 140;
        goto LABEL_393;
      case 0xBu:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 192) |= 2u;
        while (1)
        {
          v192 = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            v156 = [a2 data];
            [v156 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v192 & 0x7F) << v151;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v12 = v152++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_373;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v153;
        }

LABEL_373:
        v190 = 56;
        goto LABEL_393;
      case 0xCu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 192) |= 0x10u;
        while (1)
        {
          v192 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v192 & 0x7F) << v42;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_299;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v44;
        }

LABEL_299:
        v190 = 80;
        goto LABEL_393;
      case 0xDu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 192) |= 0x80000u;
        while (1)
        {
          v192 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v192 & 0x7F) << v54;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_307;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v56;
        }

LABEL_307:
        v190 = 160;
        goto LABEL_393;
      case 0xEu:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 192) |= 0x800u;
        while (1)
        {
          v192 = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v192 & 0x7F) << v133;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_361;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v135;
        }

LABEL_361:
        v190 = 120;
        goto LABEL_393;
      case 0xFu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 192) |= 0x40u;
        while (1)
        {
          v192 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v192 & 0x7F) << v36;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_295;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v38;
        }

LABEL_295:
        v190 = 88;
        goto LABEL_393;
      case 0x10u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 192) |= 0x1000000u;
        while (1)
        {
          v192 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v192 & 0x7F) << v84;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_327;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v86;
        }

LABEL_327:
        v190 = 180;
        goto LABEL_393;
      case 0x11u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 192) |= 0x800000u;
        while (1)
        {
          v192 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v192 & 0x7F) << v30;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_291;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v32;
        }

LABEL_291:
        v190 = 176;
        goto LABEL_393;
      case 0x12u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 192) |= 0x100000u;
        while (1)
        {
          v192 = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v192 & 0x7F) << v109;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v111;
        }

LABEL_345:
        v190 = 164;
        goto LABEL_393;
      case 0x13u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 192) |= 0x100u;
        while (1)
        {
          v192 = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            v150 = [a2 data];
            [v150 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v192 & 0x7F) << v145;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v12 = v146++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_369;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v147;
        }

LABEL_369:
        v190 = 108;
        goto LABEL_393;
      case 0x14u:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        *(a1 + 192) |= 0x400u;
        while (1)
        {
          v192 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v192 & 0x7F) << v169;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_384;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v171;
        }

LABEL_384:
        v190 = 116;
        goto LABEL_393;
      case 0x15u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 192) |= 0x200u;
        while (1)
        {
          v192 = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v192 & 0x7F) << v115;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v117;
        }

LABEL_349:
        v190 = 112;
        goto LABEL_393;
      case 0x16u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 192) |= 0x80u;
        while (1)
        {
          v192 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v192 & 0x7F) << v127;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_357;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v129;
        }

LABEL_357:
        v190 = 104;
        goto LABEL_393;
      case 0x17u:
        v163 = 0;
        v164 = 0;
        v165 = 0;
        *(a1 + 192) |= 0x8000000u;
        while (1)
        {
          v192 = 0;
          v166 = [a2 position] + 1;
          if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
          {
            v168 = [a2 data];
            [v168 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v165 |= (v192 & 0x7F) << v163;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v163 += 7;
          v12 = v164++ >= 9;
          if (v12)
          {
            LOBYTE(v96) = 0;
            goto LABEL_379;
          }
        }

        v96 = (v165 != 0) & ~[a2 hasError];
LABEL_379:
        v191 = 189;
LABEL_380:
        *(a1 + v191) = v96;
        continue;
      case 0x18u:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 192) |= 0x1000u;
        while (1)
        {
          v192 = 0;
          v178 = [a2 position] + 1;
          if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
          {
            v180 = [a2 data];
            [v180 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v177 |= (v192 & 0x7F) << v175;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v12 = v176++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_388;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v177;
        }

LABEL_388:
        v190 = 124;
        goto LABEL_393;
      case 0x19u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 192) |= 0x2000u;
        while (1)
        {
          v192 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v192 & 0x7F) << v72;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_319;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v74;
        }

LABEL_319:
        v190 = 136;
        goto LABEL_393;
      case 0x1Au:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 192) |= 0x400000u;
        while (1)
        {
          v192 = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v192 & 0x7F) << v66;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_315;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v68;
        }

LABEL_315:
        v190 = 172;
        goto LABEL_393;
      case 0x1Bu:
        v183 = 0;
        v184 = 0;
        v185 = 0;
        *(a1 + 192) |= 0x20u;
        while (1)
        {
          v192 = 0;
          v186 = [a2 position] + 1;
          if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
          {
            v188 = [a2 data];
            [v188 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v185 |= (v192 & 0x7F) << v183;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v183 += 7;
          v12 = v184++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_392;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v185;
        }

LABEL_392:
        v190 = 84;
        goto LABEL_393;
      case 0x1Cu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 192) |= 0x20000u;
        break;
      case 0x1Du:
        v181 = PBReaderReadString();
        if (v181)
        {
          [a1 addAppSequence:v181];
        }

        continue;
      case 0x1Eu:
        v21 = PBReaderReadString();
        v22 = 32;
        goto LABEL_272;
      case 0x1Fu:
        v21 = PBReaderReadString();
        v22 = 24;
        goto LABEL_272;
      case 0x20u:
        v21 = PBReaderReadString();
        v22 = 40;
        goto LABEL_272;
      case 0x21u:
        v21 = PBReaderReadString();
        v22 = 96;
        goto LABEL_272;
      case 0x22u:
        v21 = PBReaderReadString();
        v22 = 64;
        goto LABEL_272;
      case 0x23u:
        v21 = PBReaderReadString();
        v22 = 128;
        goto LABEL_272;
      case 0x24u:
        v21 = PBReaderReadString();
        v22 = 16;
LABEL_272:
        v182 = *(a1 + v22);
        *(a1 + v22) = v21;

        continue;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v192 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v192 & 0x7F) << v23;
      if ((v192 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v12 = v24++ >= 9;
      if (v12)
      {
        v29 = 0;
        goto LABEL_287;
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

LABEL_287:
    v190 = 152;
LABEL_393:
    *(a1 + v190) = v29;
LABEL_394:
    ;
  }

  return [a2 hasError] ^ 1;
}

void sub_22648D94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_226491E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226493C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_226494D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBPredictionDeviceStateContextReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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

      if (v13 != 2)
      {
        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_46;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_44;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
        v30 = 17;
        goto LABEL_45;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 8);
      *(a1 + 8) = v21;

LABEL_46:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(a1 + 20) |= 1u;
    while (1)
    {
      v33 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v33 & 0x7F) << v23;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
      if (v11)
      {
        LOBYTE(v20) = 0;
        goto LABEL_42;
      }
    }

    v20 = (v25 != 0) & ~[a2 hasError];
LABEL_42:
    v30 = 16;
LABEL_45:
    *(a1 + v30) = v20;
    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

void sub_226497218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_226497A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22649A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *widgetKindForDeduping(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.CalendarWidget.CalendarListWidget"])
  {
    v2 = @"com.apple.CalendarWidget.CalendarUpNextWidget";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void sub_22649E12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ATXGamePlayKitCDecisionNode::branches(ATXGamePlayKitCDecisionNode *this)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = *this;
  v3 = *(this + 1);
  while (v4 != v3)
  {
    if (*v4)
    {
      [v2 addObject:?];
    }

    v4 += 3;
  }

  return v2;
}

uint64_t std::vector<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::__emplace_back_slow_path<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void sub_22649F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_22649F94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_22649FA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v13 = v12;

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_22649FFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v18 = v16;

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void ATXGamePlayKitCDecisionTree::decode(ATXGamePlayKitCDecisionTree *this, NSArray *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a2;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v3)
  {
    v28 = *v31;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v30 + 1) + 8 * i) objectForKeyedSubscript:@"branch"];
        v6 = v5 == 0;

        if (!v6)
        {
          _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionNodeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v7 = [(NSArray *)obj firstObject];
        v8 = [v7 objectForKeyedSubscript:@"attribute"];
        v9 = *(*this + 56);
        *(*this + 56) = v8;

        v10 = [v7 objectForKeyedSubscript:@"randomDistribution"];
        v11 = v10 == 0;

        if (!v11)
        {
          v12 = [v7 objectForKeyedSubscript:@"randomDistribution"];
          v13 = [v12 objectAtIndexedSubscript:0];

          v14 = [v7 objectForKeyedSubscript:@"randomDistribution"];
          v15 = [v14 objectAtIndexedSubscript:1];

          v16 = [v7 objectForKeyedSubscript:@"randomDistribution"];
          v17 = [v16 objectAtIndexedSubscript:2];

          v18 = -[ATXGamePlayKitRandomDistribution initWithRandomSource:lowestValue:highestValue:]([ATXGamePlayKitRandomDistribution alloc], "initWithRandomSource:lowestValue:highestValue:", v17, [v13 integerValue], objc_msgSend(v15, "integerValue"));
          v19 = *(*this + 72);
          *(*this + 72) = v18;
        }

        v20 = [v7 objectForKeyedSubscript:@"depth"];
        v21 = [v20 integerValue];

        v29 = v21;
        v22 = std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&v34, &v29);
        v24 = *this;
        v23 = *(this + 1);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }

        v25 = v22[6];
        v22[5] = v24;
        v22[6] = v23;
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v3);
  }

  std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::destroy(&v34, v35[0]);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_2264A05D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28)
{
  std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::destroy(&a27, a28);

  _Unwind_Resume(a1);
}

id ATXGamePlayKitCDecisionTree::encodeWithCoder(uint64_t a1, ATXGamePlayKitCDecisionNode **a2, void *a3, uint64_t a4, void *a5)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v33 = a5;
  if (!v9)
  {
    v10 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    v12 = a2[1];
    *a2 = v10;
    a2[1] = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v10 = *a2;
    }

    v13 = MEMORY[0x277CBEB38];
    v14 = ATXGamePlayKitCDecisionNode::nodeData(v10, 0);
    v15 = [v13 dictionaryWithDictionary:v14];

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v15 setObject:v16 forKeyedSubscript:@"depth"];

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v15 setObject:v17 forKeyedSubscript:@"children"];

    v36[0] = v15;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v33 = v15;
  }

  v19 = **a2;
  for (i = *(*a2 + 1); v19 != i; v19 += 24)
  {
    v20 = *(v19 + 8);
    if (v20)
    {
      v21 = MEMORY[0x277CBEB38];
      v22 = ATXGamePlayKitCDecisionNode::nodeData(v20, *v19);
      v23 = [v21 dictionaryWithDictionary:v22];

      v24 = [MEMORY[0x277CCABB0] numberWithInteger:a4 + 1];
      [v23 setObject:v24 forKeyedSubscript:@"depth"];

      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v23 setObject:v25 forKeyedSubscript:@"children"];

      v26 = [v33 objectForKeyedSubscript:@"children"];
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      [v26 addObject:v27];

      v28 = *(v19 + 16);
      v34 = *(v19 + 8);
      v35 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = [v9 arrayByAddingObject:v23];
      v30 = ATXGamePlayKitCDecisionTree::encodeWithCoder(a1, &v34, v29, a4 + 1, v23);

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      v9 = v30;
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_2264A0C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ATXGamePlayKitDecisionTree;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2264A1030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void ATXGamePlayKitCDecisionTree::cartTreeGrowth(ATXGamePlayKitCDecisionTree *a1, void *a2, void *a3, void *a4, unint64_t a5, unint64_t a6, double a7)
{
  v10 = a2;
  v11 = a3;
  v61 = v10;
  v12 = [(NSArray *)v10 count];
  v13 = ATXGamePlayKitCDecisionTree::giniImpurity(a1, v10);
  v14 = v12;
  v15 = v12;
  *(*a4 + 48) = v15;
  if (v13 < 0.0)
  {
    goto LABEL_74;
  }

  if (v13 != 0.0)
  {
    v76[0] = 0;
    v76[1] = 0;
    v75 = v76;
    v60 = ATXGamePlayKitCDecisionTree::getAttributeCounts(a1, v11, v10);
    v20 = 0;
    v21 = 0;
    v22 = 1.0;
    while (1)
    {
      if ([v11 count] <= v20)
      {
        if (v22 > 0.0 && [v11 count] < 2 || (*(*a4 + 40) <= a5 ? (v40 = v14 < a6) : (v40 = 1), v40))
        {
          ATXGamePlayKitCDecisionTree::splitByAttribute(a1, v61, [v11 count], &v72);
          v41 = v72;
          if (v74 == 2)
          {
            if (v72 == &v73)
            {
              v43 = 0;
              v42 = 0;
            }

            else
            {
              v42 = 0;
              v43 = 0;
              do
              {
                v44 = [v41[4] isEqualToNumber:&unk_283A55838];
                v45 = v41[5];
                if (v44)
                {
                  v42 = [v45 count];
                }

                else
                {
                  v43 = [v45 count];
                }

                v46 = v41[1];
                if (v46)
                {
                  do
                  {
                    v47 = v46;
                    v46 = *v46;
                  }

                  while (v46);
                }

                else
                {
                  do
                  {
                    v47 = v41[2];
                    v48 = *v47 == v41;
                    v41 = v47;
                  }

                  while (!v48);
                }

                v41 = v47;
              }

              while (v47 != &v73);
            }

            v55 = &unk_283A55838;
            v56 = *(*a4 + 56);
            if (v43 / ((v42 + v43) + 0.001) >= a7)
            {
              v55 = &unk_283A55850;
            }

            *(*a4 + 56) = v55;
          }

          else if (v72 != &v73)
          {
            v52 = 0;
            do
            {
              if (v52 < [v41[5] count])
              {
                objc_storeStrong((*a4 + 56), v41[4]);
                v52 = [v41[5] count];
              }

              v53 = v41[1];
              if (v53)
              {
                do
                {
                  v54 = v53;
                  v53 = *v53;
                }

                while (v53);
              }

              else
              {
                do
                {
                  v54 = v41[2];
                  v48 = *v54 == v41;
                  v41 = v54;
                }

                while (!v48);
              }

              v41 = v54;
            }

            while (v54 != &v73);
          }

          v50 = v73;
          v51 = &v72;
        }

        else
        {
          objc_storeStrong((*a4 + 56), v21);
          std::map<objc_object * {__strong},NSMutableArray * {__strong}>::map[abi:ne200100](v64, &v75);
          v49 = a4[1];
          v62 = *a4;
          v63 = v49;
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ATXGamePlayKitCDecisionTree::splitOnIndex(a1, v21, v11, v64);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          v50 = v64[1];
          v51 = v64;
        }

        std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v51, v50);

        std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v75, v76[0]);
        goto LABEL_74;
      }

      v23 = [v60 objectAtIndexedSubscript:v20];
      if ([v23 integerValue] <= 2)
      {
      }

      else
      {
        v24 = [(NSArray *)v61 firstObject];
        v25 = [v24 objectAtIndexedSubscript:v20];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          ATXGamePlayKitCDecisionTree::multiwaySplitByAttributeValue(a1, v61, v20, &v72);
          std::map<objc_object * {__strong},NSMutableArray * {__strong}>::map[abi:ne200100](v69, &v72);
          ATXGamePlayKitCDecisionTree::continuousGiniSplit(a1, v69, &v70);
          std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v69, &v69[1]->super.super.isa);
          [v71 floatValue];
          v28 = v27;
          ATXGamePlayKitCDecisionTree::splitOnValueOfAttribute(a1, v61, v70, v20, &v66);
          std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v72, v73);
          v29 = v67;
          v72 = v66;
          v73 = v67;
          v74 = v68;
          if (v68)
          {
            v67[2] = &v73;
            v66 = &v67;
            v67 = 0;
            v68 = 0;
            v29 = 0;
          }

          else
          {
            v72 = &v73;
          }

          v35 = v28;
          std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v66, v29);
          if (v22 <= v35)
          {
            v35 = v22;
          }

          else
          {
            v36 = [v11 objectAtIndexedSubscript:v20];

            v21 = v36;
            std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__tree_node<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,void *> *,long>>(&v75, v72, &v73);
          }

            ;
          }

          v38 = v70;
          v70 = 0;

          v39 = v71;
          v71 = 0;

          std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v72, v73);
          v22 = v35;
          goto LABEL_31;
        }
      }

      ATXGamePlayKitCDecisionTree::binarySplitByAttributeValue(a1, v61, v20, &v72);
      v31 = v72;
      v30 = v73;
      if (v72 != v73)
      {
        v32 = v72 + 1;
        do
        {
          std::map<objc_object * {__strong},NSMutableArray * {__strong}>::map[abi:ne200100](v65, v31);
          v33 = ATXGamePlayKitCDecisionTree::giniSplit(a1, v65, v15);
          std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v65, v65[1]);
          if (v33 < v22)
          {
            v34 = [v11 objectAtIndexedSubscript:v20];

            v21 = v34;
            if (v31 != &v75)
            {
              std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__tree_node<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,void *> *,long>>(&v75, *v31, v32);
            }

            v22 = v33;
          }

          v31 += 3;
          v32 += 3;
        }

        while (v31 != v30);
        v31 = v72;
        v30 = v73;
      }

      std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::erase(&v72, v31, v30);
      v66 = &v72;
      std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v66);
LABEL_31:
      ++v20;
    }
  }

  v16 = [(NSArray *)v10 firstObject];
  v17 = [v16 lastObject];

  if (v17)
  {
    v18 = [v16 lastObject];
    v19 = *(*a4 + 56);
    *(*a4 + 56) = v18;
  }

LABEL_74:
}

void sub_2264A1720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, std::__shared_weak_count *a17, char a18, void *a19)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a18, a19);

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v21 - 144, *(v21 - 136));
  _Unwind_Resume(a1);
}

void sub_2264A1B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

id ATXGamePlayKitCDecisionTree::findActionForAnswers(ATXGamePlayKitCDecisionTree *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
  v4 = *(a1 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v5 + 1;
  if (v5[1] == *v5)
  {
    v23 = 0;
    if (!v4)
    {
      goto LABEL_47;
    }

LABEL_46:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    goto LABEL_47;
  }

  v7 = v4;
LABEL_5:
  v8 = v5[9];
  v27 = v7;
  if (v8)
  {
    v9 = [v8 nextInt];
  }

  else
  {
    if (!v3)
    {
      goto LABEL_44;
    }

    v9 = 0;
    if (![v3 count])
    {
      goto LABEL_44;
    }
  }

  v10 = *v5;
  v11 = *v6;
  if (*v5 != v11)
  {
    while (1)
    {
      v12 = *v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = *v10;
        if ((ATXGamePlayKitCDecisionTree::isPredicateValid(a1, v13) & 1) == 0)
        {
          v24 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            ATXGamePlayKitCDecisionTree::findActionForAnswers(v13, v24);
          }

          v23 = 0;
          v4 = v27;
          goto LABEL_42;
        }

        [(NSPredicate *)v13 allowEvaluation];
        v14 = [v3 objectForKeyedSubscript:v5[7]];
        v15 = [(NSPredicate *)v13 evaluateWithObject:v14];

        if (v15)
        {
          v5 = *(v10 + 8);
          v4 = *(v10 + 16);
          if (v4)
          {
            atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          if (v5[1] != *v5)
          {

            v22 = *v5;
            v21 = v5[1];
            goto LABEL_33;
          }

          v23 = v5[7];
LABEL_42:

          if (v4)
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v16 = *v10;
        if (v5[9])
        {
          v17 = [*v10 integerValue];
          v18 = v9 <= v17;
          v9 -= v17;
          if (v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v19 = [v3 objectForKeyedSubscript:v5[7]];
          v20 = [v16 isEqual:v19];

          if (v20)
          {
LABEL_21:
            v5 = *(v10 + 8);
            v4 = *(v10 + 16);
            if (v4)
            {
              atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v27)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            }

            v22 = *v5;
            v21 = v5[1];
            if (v21 == *v5)
            {
              v26 = v5[7];
              v23 = v26;
              if (v4)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

LABEL_33:
            v23 = 0;
            v6 = v5 + 1;
            v7 = v4;
            if (v21 != v22)
            {
              goto LABEL_5;
            }

            goto LABEL_45;
          }
        }
      }

      v10 += 24;
      if (v10 == v11)
      {
        v23 = 0;
        v4 = v27;
        if (v27)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      }
    }
  }

LABEL_44:
  v23 = 0;
  v4 = v7;
LABEL_45:
  if (v4)
  {
    goto LABEL_46;
  }

LABEL_47:

  return v23;
}

void sub_2264A1ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_2264A2300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__CFString *ATXGamePlayKitCDecisionTree::printTree(uint64_t a1, void **a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*a2)
  {
    if ([v7 isEqualToString:@"\t"])
    {
      v9 = (*a2)[5];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@(depth:%lu, ex:%lu)\n", (*a2)[7], v9, (*a2)[6]];

      v8 = v10;
    }

    v12 = **a2;
    for (i = (*a2)[1]; v12 != i; v12 += 3)
    {
      if (v12[1])
      {
        v13 = v12[2];
        v26 = v12[1];
        v27 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\t", v7];
        v15 = *v12;
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@, %@(depth:%lu, ex:%lu)\n", v8, v7, *v12, *(v12[1] + 56), *(v12[1] + 40), *(v12[1] + 48)];
        v17 = ATXGamePlayKitCDecisionTree::printTree(a1, &v26, v14, v16);

        v18 = v27;
      }

      else
      {
        v19 = v12[2];
        v24 = 0;
        v25 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\t", v7];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@\n", v8, v7, *v12];
        v17 = ATXGamePlayKitCDecisionTree::printTree(a1, &v24, v20, v21);

        v18 = v25;
      }

      v8 = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        v8 = v17;
      }
    }

    v8 = v8;
    v22 = v8;
  }

  else
  {
    v22 = &stru_2839A6058;
  }

  return v22;
}

void sub_2264A30E4(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
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
      v5 = v2[4];
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

uint64_t *std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

id ATXGamePlayKitCDecisionNode::nodeData(ATXGamePlayKitCDecisionNode *this, objc_object *a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v4 setObject:*(this + 7) forKeyedSubscript:@"attribute"];
  v5 = *(this + 9);
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "lowestValue")}];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(this + 9), "highestValue", v6)}];
    v8 = *(this + 10);
    v12[1] = v7;
    v12[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    [v4 setObject:v9 forKeyedSubscript:@"randomDistribution"];
  }

  [v4 setObject:v3 forKeyedSubscript:@"branch"];
  [v4 setObject:*(this + 8) forKeyedSubscript:@"branchValue"];

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

double ATXGamePlayKitCDecisionTree::giniImpurity(ATXGamePlayKitCDecisionTree *this, NSArray *a2)
{
  v3 = a2;
  v4 = [(NSArray *)v3 firstObject];
  ATXGamePlayKitCDecisionTree::splitByAttribute(this, v3, [v4 count] - 1, &v14);

  v5 = [(NSArray *)v3 count];
  v6 = 0.0;
  if (v5 && v15[1] != 1)
  {
    v7 = v14;
    if (v14 == v15)
    {
      v6 = 1.0;
    }

    else
    {
      v8 = v5;
      v6 = 1.0;
      do
      {
        v9 = [v7[5] count];
        v10 = v7[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v6 = v6 - v9 / v8 * (v9 / v8);
        v7 = v11;
      }

      while (v11 != v15);
    }
  }

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v14, v15[0]);

  return v6;
}

void sub_2264A3FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a10, a11);

  _Unwind_Resume(a1);
}

id ATXGamePlayKitCDecisionTree::getAttributeCounts(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = 0;
  v8 = MEMORY[0x277CBEC38];
  while ([v4 count] > v7)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
    for (i = 0; [v5 count] > i; ++i)
    {
      v11 = [v5 objectAtIndexedSubscript:i];
      v12 = [v11 objectAtIndexedSubscript:v7];

      v13 = [v9 objectForKeyedSubscript:v12];

      if (!v13)
      {
        [v9 setObject:v8 forKeyedSubscript:v12];
      }
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    [v6 setObject:v14 atIndexedSubscript:v7];

    ++v7;
  }

  return v6;
}

void ATXGamePlayKitCDecisionTree::multiwaySplitByAttributeValue(ATXGamePlayKitCDecisionTree *this@<X0>, NSArray *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  v7 = objc_opt_new();
  for (i = 0; [(NSArray *)v6 count]> i; ++i)
  {
    v9 = [(NSArray *)v6 objectAtIndexedSubscript:i];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v11 = [v7 objectForKey:v10];

    if (v11)
    {
      v12 = [v7 objectForKey:v10];
      v13 = [(NSArray *)v6 objectAtIndexedSubscript:i];
      [v12 addObject:v13];
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277CBEB18]);
      v12 = [(NSArray *)v6 objectAtIndexedSubscript:i];
      v13 = [v14 initWithObjects:{v12, 0}];
      [v7 setObject:v13 forKey:v10];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v27[0] = *(*(&v23 + 1) + 8 * v18);
        v19 = [v15 objectForKey:?];
        v27[2] = v27;
        v20 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(a4, v27);
        v21 = v20[5];
        v20[5] = v19;

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2264A447C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v2, *(v2 + 8));

  _Unwind_Resume(a1);
}

void ATXGamePlayKitCDecisionTree::continuousGiniSplit(ATXGamePlayKitCDecisionTree *a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  std::map<objc_object * {__strong},NSMutableArray * {__strong}>::map[abi:ne200100](v170, a2);
  v5 = ATXGamePlayKitCDecisionTree::sortByAttributeWithAction(a1, v170);
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v170, v170[1]);
  v169[0] = 0;
  v169[1] = 0;
  v168 = v169;
  v145 = v5;
  v6 = [(NSArray *)v5 firstObject];
  ATXGamePlayKitCDecisionTree::splitByAttribute(a1, v5, [v6 count] - 1, &v165);

  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [v7 initWithCapacity:v167];
  v164[0] = 0;
  v164[1] = 0;
  v163 = v164;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = [v9 initWithCapacity:v167];
  v162 = @"<=";
  v171 = &v162;
  v11 = std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * {__strong}&&>,std::tuple<>>(&v163, &v162);
  v12 = v11[5];
  v11[5] = v10;

  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = [v13 initWithCapacity:v167];
  v140 = v169;
  v141 = a3;
  v161 = @">";
  v171 = &v161;
  v15 = std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * {__strong}&&>,std::tuple<>>(&v163, &v161);
  v16 = v15[5];
  v15[5] = v14;

  for (i = 0; [(NSArray *)v5 count:v140]>= i; ++i)
  {
    v160 = 0;
    if (i)
    {
      if ([(NSArray *)v5 count]== i)
      {
        v17 = [(NSArray *)v5 objectAtIndexedSubscript:i - 2];
        v143 = [v17 firstObject];

        v18 = [(NSArray *)v5 objectAtIndexedSubscript:i - 1];
        v19 = [v18 firstObject];

        v142 = v19;
        [v19 floatValue];
        v21 = v20;
        [v143 floatValue];
        v23 = v22;
        v24 = MEMORY[0x277CCABB0];
        [v19 floatValue];
        *&v26 = ((v21 - v23) * 0.5) + v25;
        v27 = [v24 numberWithFloat:v26];
        v28 = v160;
        v160 = v27;

        v29 = v165;
        if (v165 != &v166)
        {
          v30 = 0;
          do
          {
            v31 = v29[4];
            v32 = [(NSArray *)v5 objectAtIndexedSubscript:i - 1];
            v33 = [v32 lastObject];
            LODWORD(v31) = [v31 isEqual:v33];

            if (v31)
            {
              v34 = MEMORY[0x277CCABB0];
              v35 = [v8 objectAtIndexedSubscript:v30];
              v36 = [v34 numberWithInteger:{objc_msgSend(v35, "integerValue") + 1}];
              [v8 setObject:v36 atIndexedSubscript:v30];
            }

            else
            {
              v35 = [v8 objectAtIndexedSubscript:v30];
              [v8 setObject:v35 atIndexedSubscript:v30];
            }

            v37 = [v8 objectAtIndexedSubscript:v30];
            v157 = @"<=";
            v171 = &v157;
            [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v157)[5], "setObject:atIndexedSubscript:", v37, v30}strong}>];

            v38 = MEMORY[0x277CCABB0];
            v39 = [v29[5] count];
            v40 = [v8 objectAtIndexedSubscript:v30];
            v41 = [v38 numberWithUnsignedInteger:{v39 - objc_msgSend(v40, "integerValue")}];
            v156 = @">";
            v171 = &v156;
            [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v156)[5], "setObject:atIndexedSubscript:", v41, v30}strong}>];

            v42 = v29[1];
            if (v42)
            {
              do
              {
                v43 = v42;
                v42 = *v42;
              }

              while (v42);
            }

            else
            {
              do
              {
                v43 = v29[2];
                v44 = *v43 == v29;
                v29 = v43;
              }

              while (!v44);
            }

            ++v30;
            v29 = v43;
          }

          while (v43 != &v166);
        }
      }

      else
      {
        v66 = [(NSArray *)v5 objectAtIndexedSubscript:i - 1];
        v143 = [v66 firstObject];

        v67 = [(NSArray *)v5 objectAtIndexedSubscript:i];
        v68 = [v67 firstObject];

        v142 = v68;
        [v68 floatValue];
        v70 = v69;
        [v143 floatValue];
        v72 = v71;
        v73 = MEMORY[0x277CCABB0];
        [v68 floatValue];
        *&v75 = v74 + ((v70 - v72) * -0.5);
        v76 = [v73 numberWithFloat:v75];
        v77 = v160;
        v160 = v76;

        v78 = v165;
        if (v165 != &v166)
        {
          v79 = 0;
          do
          {
            v80 = v78[4];
            v81 = [(NSArray *)v5 objectAtIndexedSubscript:i - 1];
            v82 = [v81 lastObject];
            LODWORD(v80) = [v80 isEqual:v82];

            if (v80)
            {
              v83 = MEMORY[0x277CCABB0];
              v84 = [v8 objectAtIndexedSubscript:v79];
              v85 = [v83 numberWithInteger:{objc_msgSend(v84, "integerValue") + 1}];
              [v8 setObject:v85 atIndexedSubscript:v79];
            }

            else
            {
              v84 = [v8 objectAtIndexedSubscript:v79];
              [v8 setObject:v84 atIndexedSubscript:v79];
            }

            v86 = [v8 objectAtIndexedSubscript:v79];
            v155 = @"<=";
            v171 = &v155;
            [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v155)[5], "setObject:atIndexedSubscript:", v86, v79}strong}>];

            v87 = MEMORY[0x277CCABB0];
            v88 = [v78[5] count];
            v89 = [v8 objectAtIndexedSubscript:v79];
            v90 = [v87 numberWithUnsignedInteger:{v88 - objc_msgSend(v89, "integerValue")}];
            v154 = @">";
            v171 = &v154;
            [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v154)[5], "setObject:atIndexedSubscript:", v90, v79}strong}>];

            v91 = v78[1];
            if (v91)
            {
              do
              {
                v92 = v91;
                v91 = *v91;
              }

              while (v91);
            }

            else
            {
              do
              {
                v92 = v78[2];
                v44 = *v92 == v78;
                v78 = v92;
              }

              while (!v44);
            }

            ++v79;
            v78 = v92;
          }

          while (v92 != &v166);
        }
      }
    }

    else
    {
      v45 = [(NSArray *)v5 objectAtIndexedSubscript:0];
      v143 = [v45 firstObject];

      v46 = [(NSArray *)v5 objectAtIndexedSubscript:1];
      v47 = [v46 firstObject];

      v142 = v47;
      [v47 floatValue];
      v49 = v48;
      [v143 floatValue];
      v51 = v50;
      v52 = MEMORY[0x277CCABB0];
      [v143 floatValue];
      *&v54 = v53 + ((v49 - v51) * -0.5);
      v55 = [v52 numberWithFloat:v54];
      v56 = v160;
      v160 = v55;

      v57 = v165;
      if (v165 != &v166)
      {
        v58 = 0;
        do
        {
          [v8 setObject:&unk_283A55838 atIndexedSubscript:v58];
          v59 = [v8 objectAtIndexedSubscript:v58];
          v159 = @"<=";
          v171 = &v159;
          [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v159)[5], "setObject:atIndexedSubscript:", v59, v58}strong}>];

          v60 = MEMORY[0x277CCABB0];
          v61 = [v57[5] count];
          v62 = [v8 objectAtIndexedSubscript:v58];
          v63 = [v60 numberWithUnsignedInteger:{v61 - objc_msgSend(v62, "integerValue")}];
          v158 = @">";
          v171 = &v158;
          [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v158)[5], "setObject:atIndexedSubscript:", v63, v58}strong}>];

          v64 = v57[1];
          if (v64)
          {
            do
            {
              v65 = v64;
              v64 = *v64;
            }

            while (v64);
          }

          else
          {
            do
            {
              v65 = v57[2];
              v44 = *v65 == v57;
              v57 = v65;
            }

            while (!v44);
          }

          ++v58;
          v57 = v65;
        }

        while (v65 != &v166);
      }
    }

    if (!i)
    {
      v94 = 1.0;
      if (v167)
      {
        v104 = 0;
        v105 = 0.0;
        do
        {
          v153 = @">";
          v171 = &v153;
          v106 = [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v153)[5], "objectAtIndexedSubscript:", v104}strong}>];
          [v106 floatValue];
          v105 = v105 + v107;

          ++v104;
        }

        while (v167 > v104);
        if (v167)
        {
          v108 = 0;
          v94 = 1.0;
          do
          {
            v152 = @">";
            v171 = &v152;
            v109 = [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v152)[5], "objectAtIndexedSubscript:", v108}strong}>];
            [v109 floatValue];
            v94 = v94 - ((v110 / v105) * (v110 / v105));

            ++v108;
          }

          while (v167 > v108);
        }
      }

      goto LABEL_45;
    }

    if ([(NSArray *)v5 count]== i)
    {
      v94 = 1.0;
      if (v167)
      {
        v95 = 0;
        v96 = 0.0;
        do
        {
          v151 = @"<=";
          v171 = &v151;
          v97 = [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v151)[5], "objectAtIndexedSubscript:", v95}strong}>];
          [v97 floatValue];
          v96 = v96 + v98;

          ++v95;
        }

        while (v167 > v95);
        if (v167)
        {
          v99 = 0;
          v94 = 1.0;
          do
          {
            v150 = @"<=";
            v171 = &v150;
            v100 = [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v150)[5], "objectAtIndexedSubscript:", v99}strong}>];
            [v100 floatValue];
            v94 = v94 - ((v101 / v96) * (v101 / v96));

            ++v99;
          }

          while (v167 > v99);
        }
      }

LABEL_45:
      *&v93 = v94;
      v102 = [MEMORY[0x277CCABB0] numberWithFloat:v93];
      v171 = &v160;
      v103 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(&v168, &v160);
      goto LABEL_63;
    }

    v111 = 1.0;
    if (v167)
    {
      v112 = 0;
      v113 = 0.0;
      v114 = 0.0;
      do
      {
        v149 = @"<=";
        v171 = &v149;
        v115 = [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v149)[5], "objectAtIndexedSubscript:", v112}strong}>];
        [v115 floatValue];
        v117 = v116;

        v148 = @">";
        v171 = &v148;
        v118 = [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v148)[5], "objectAtIndexedSubscript:", v112}strong}>];
        [v118 floatValue];
        v114 = v114 + v117;
        v113 = v113 + v119;

        ++v112;
      }

      while (v167 > v112);
      if (v167)
      {
        v120 = 0;
        v121 = 1.0;
        v111 = 1.0;
        do
        {
          v147 = @"<=";
          v171 = &v147;
          v122 = [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v147)[5], "objectAtIndexedSubscript:", v120}strong}>];
          [v122 floatValue];
          v124 = v123;

          v146 = @">";
          v171 = &v146;
          v125 = [std::__tree<std::__value_type<NSString * {__strong} NSMutableArray * {:std::__map_value_compare<NSString * {__strong} :{std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>, std::less<NSString * {__strong}>, true>, std::allocator<std::__value_type<NSString * {__strong}, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong}, std::piecewise_construct_t const&, std::tuple<NSString * {__strong}&&>, std::tuple<>>(&v163, &v146)[5], "objectAtIndexedSubscript:", v120}strong}>];
          [v125 floatValue];
          v111 = v111 - ((v124 / v114) * (v124 / v114));
          v121 = v121 - ((v126 / v113) * (v126 / v113));

          ++v120;
        }

        while (v167 > v120);
        goto LABEL_62;
      }
    }

    else
    {
      v113 = 0.0;
      v114 = 0.0;
    }

    v121 = 1.0;
LABEL_62:
    v127 = [(NSArray *)v5 count];
    *&v128 = (v121 * (v113 / v127)) + ((v114 / v127) * v111);
    v102 = [MEMORY[0x277CCABB0] numberWithFloat:v128];
    v171 = &v160;
    v103 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(&v168, &v160);
LABEL_63:
    v129 = v103[5];
    v103[5] = v102;
  }

  *v141 = &unk_283A55850;
  v141[1] = &unk_283A55850;
  v130 = v168;
  if (v168 != v140)
  {
    v131 = &unk_283A55850;
    do
    {
      [v130[5] floatValue];
      v133 = v132;
      [v131 floatValue];
      if (v133 < v134)
      {
        v135 = v130[4];
        v136 = v130[5];
        v137 = *v141;
        *v141 = v135;

        v141[1] = v136;
        v131 = v136;
      }

      v138 = v130[1];
      if (v138)
      {
        do
        {
          v139 = v138;
          v138 = *v138;
        }

        while (v138);
      }

      else
      {
        do
        {
          v139 = v130[2];
          v44 = *v139 == v130;
          v130 = v139;
        }

        while (!v44);
      }

      v130 = v139;
    }

    while (v139 != v140);
  }

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v163, v164[0]);

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v165, v166);
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v168, v169[0]);
}

void sub_2264A5338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, char a32, void *a33, uint64_t a34, char a35, void *a36)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a32, a33);

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a35, a36);
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v37 - 216, *(v37 - 208));

  _Unwind_Resume(a1);
}

void ATXGamePlayKitCDecisionTree::splitOnValueOfAttribute(ATXGamePlayKitCDecisionTree *this@<X0>, NSArray *a2@<X1>, NSNumber *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  a5[2] = 0;
  a5[1] = 0;
  *a5 = a5 + 1;
  v38[0] = @"predicate";
  v31 = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF <= %@", v9];
  v38[1] = @"value";
  v39[0] = v10;
  v39[1] = v9;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

  v36[0] = @"predicate";
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF > %@", v9];
  v36[1] = @"value";
  v37[0] = v11;
  v37[1] = v9;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

  v12 = 0;
  v13 = 0;
  while ([(NSArray *)v8 count]> v12)
  {
    v14 = [(NSArray *)v8 objectAtIndexedSubscript:v12];
    v15 = [v14 objectAtIndexedSubscript:a4];

    [v15 floatValue];
    v17 = v16;
    [(NSNumber *)v31 floatValue];
    v18 = v29;
    if (v17 > v19)
    {
      v18 = v30;
    }

    v20 = v18;

    v13 = v20;
    v34 = v13;
    v35 = &v34;
    LOBYTE(v20) = std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * {__strong}&&>,std::tuple<>>(a5, &v34)[5] == 0;

    if (v20)
    {
      v24 = objc_alloc(MEMORY[0x277CBEB18]);
      v23 = [(NSArray *)v8 objectAtIndexedSubscript:v12];
      v25 = [v24 initWithObjects:{v23, 0}];
      v32 = v13;
      v35 = &v32;
      v26 = std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * {__strong}&&>,std::tuple<>>(a5, &v32);
      v27 = v26[5];
      v26[5] = v25;
    }

    else
    {
      v33 = v13;
      v35 = &v33;
      v21 = std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * {__strong}&&>,std::tuple<>>(a5, &v33)[5];
      v22 = [(NSArray *)v8 objectAtIndexedSubscript:v12];
      [v21 addObject:v22];

      v23 = v33;
    }

    ++v12;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2264A58CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v15, *(v15 + 8));

  _Unwind_Resume(a1);
}

void ATXGamePlayKitCDecisionTree::binarySplitByAttributeValue(ATXGamePlayKitCDecisionTree *this@<X0>, NSArray *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v25 = v7;
  ATXGamePlayKitCDecisionTree::multiwaySplitByAttributeValue(this, v7, a3, &v29);
  v8 = v29;
  if (v29 != v30)
  {
    do
    {
      v9 = v8 + 4;
      v28[0] = 0;
      v28[1] = 0;
      v27 = v28;
      v10 = v8[5];
      v31 = (v8 + 4);
      v11 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(&v27, v8 + 4);
      objc_storeStrong(v11 + 5, v10);
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = v29;
      if (v29 != v30)
      {
        do
        {
          v14 = v13[4] == v8[4] && v13[5] == v8[5];
          if (!v14)
          {
            [v12 addObjectsFromArray:?];
          }

          v15 = v13[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v13[2];
              v14 = *v16 == v13;
              v13 = v16;
            }

            while (!v14);
          }

          v13 = v16;
        }

        while (v16 != v30);
      }

      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != %@", *v9, v25];
      v32[0] = @"predicate";
      v32[1] = @"value";
      v18 = *v9;
      v33[0] = v17;
      v33[1] = v18;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v31 = &v26;
      v19 = std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * {__strong}&&>,std::tuple<>>(&v27, &v26);
      objc_storeStrong(v19 + 5, v12);

      v20 = a4[1];
      if (v20 >= a4[2])
      {
        v21 = std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::__emplace_back_slow_path<std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>> const&>(a4, &v27);
      }

      else
      {
        std::map<objc_object * {__strong},NSMutableArray * {__strong}>::map[abi:ne200100](a4[1], &v27);
        v21 = v20 + 24;
      }

      a4[1] = v21;

      std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v27, v28[0]);
      v22 = v8[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v8[2];
          v14 = *v23 == v8;
          v8 = v23;
        }

        while (!v14);
      }

      v8 = v23;
    }

    while (v23 != v30);
  }

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v29, v30[0]);

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2264A5C60(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

double ATXGamePlayKitCDecisionTree::giniSplit(ATXGamePlayKitCDecisionTree *a1, void *a2, unint64_t a3)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
    return 0.0;
  }

  v6 = a3;
  v7 = 0.0;
  do
  {
    v8 = [v4[5] count];
    v9 = ATXGamePlayKitCDecisionTree::giniImpurity(a1, v4[5]);
    v10 = v4[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v4[2];
        v12 = *v11 == v4;
        v4 = v11;
      }

      while (!v12);
    }

    v7 = v7 + v8 / v6 * v9;
    v4 = v11;
  }

  while (v11 != v3);
  return v7;
}

uint64_t std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::erase(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__move_assign(v7, v4);
        v4 += 3;
        v7 += 24;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    for (; v6 != v7; v6 -= 3)
    {
      std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy((v6 - 3), *(v6 - 2));
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void ATXGamePlayKitCDecisionTree::splitByAttribute(ATXGamePlayKitCDecisionTree *this@<X0>, NSArray *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a2;
  v7 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = a4 + 1;
  while ([(NSArray *)v6 count]> v7)
  {
    v8 = [(NSArray *)v6 objectAtIndexedSubscript:v7];
    v15 = [v8 objectAtIndexedSubscript:a3];

    v16 = &v15;
    if (std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(a4, &v15)[5])
    {
      v16 = &v15;
      v9 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(a4, &v15)[5];
      v10 = [(NSArray *)v6 objectAtIndexedSubscript:v7];
      [v9 addObject:v10];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277CBEB18]);
      v10 = [(NSArray *)v6 objectAtIndexedSubscript:v7];
      v12 = [v11 initWithObjects:{v10, 0}];
      v16 = &v15;
      v13 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(a4, &v15);
      v14 = v13[5];
      v13[5] = v12;
    }

    ++v7;
  }
}

void sub_2264A5FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v11, *(v11 + 8));

  _Unwind_Resume(a1);
}

void ATXGamePlayKitCDecisionTree::splitOnIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (*a4 != a4 + 8)
  {
    v5 = *(*a4 + 32);
    _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionNodeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }
}

void sub_2264A6240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>::~pair(&a12);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

id ATXGamePlayKitCDecisionTree::sortByAttributeWithAction(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      for (i = 0; [v5[5] count] > i; ++i)
      {
        v8 = v5[5];
        v18[0] = v5[4];
        v9 = [v8 objectAtIndexedSubscript:i];
        v10 = [v9 lastObject];
        v18[1] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

        [v3 addObject:v11];
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  v15 = [v3 sortedArrayUsingComparator:&__block_literal_global_301];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t ___ZN27ATXGamePlayKitCDecisionTree25sortByAttributeWithActionENSt3__13mapIU8__strongP11objc_objectU8__strongP14NSMutableArrayNS0_4lessIS4_EENS0_9allocatorINS0_4pairIU8__strongKS3_S7_EEEEEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 firstObject];
  [v6 floatValue];
  v8 = v7;
  v9 = [v5 firstObject];
  [v9 floatValue];
  v11 = v10;

  if (v8 <= v11)
  {
    v13 = [v4 firstObject];
    [v13 floatValue];
    v15 = v14;
    v16 = [v5 firstObject];
    [v16 floatValue];
    v18 = v17;

    if (v15 >= v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void sub_2264A65E4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * {__strong}&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::map<objc_object * {__strong},NSMutableArray * {__strong}>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<objc_object * {__strong},NSMutableArray * {__strong}>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__tree_node<std::__value_type,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<objc_object * {__strong},NSMutableArray * {__strong}>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__tree_node<std::__value_type,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_hint_unique_key_args<objc_object * {__strong},std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_hint_unique_key_args<objc_object * {__strong},std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>(void *a1, void *a2, unint64_t *a3)
{
  result = *std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__find_equal<objc_object * {__strong}>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__construct_node<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__find_equal<objc_object * {__strong}>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t **std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__tree_node<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,void *> *,long>>(uint64_t **result, id **a2, id **a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = (v8 + 4);
          v15[1] = (v8 + 5);
          std::pair<objc_object * {__strong}&,NSMutableArray * {__strong}&>::operator=[abi:ne200100]<objc_object * const {__strong},NSMutableArray * {__strong},0>(v15, v9 + 4);
          std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__node_insert_multi(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_multi<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>();
  }

  return result;
}

void sub_2264A6CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::__map_value_compare<long,std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

id **std::pair<objc_object * {__strong}&,NSMutableArray * {__strong}&>::operator=[abi:ne200100]<objc_object * const {__strong},NSMutableArray * {__strong},0>(id **a1, id *a2)
{
  objc_storeStrong(*a1, *a2);
  objc_storeStrong(a1[1], a2[1]);
  return a1;
}

void *std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::__emplace_back_slow_path<std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::map<objc_object * {__strong},NSMutableArray * {__strong}>::map[abi:ne200100]((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>,std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::~__split_buffer(&v13);
  return v12;
}

void sub_2264A73E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>,std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>,std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>,std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>,std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>,std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(i - 24, *(i - 16));
  }
}

void std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ATXGamePlayKitCDecisionTree::isPredicateValid(ATXGamePlayKitCDecisionTree *this, NSPredicate *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([(NSPredicate *)v3 options])
    {
      goto LABEL_9;
    }

    v4 = [(NSPredicate *)v3 leftExpression];
    v5 = [v4 expressionType];

    if (v5 != 1)
    {
      goto LABEL_9;
    }

    v6 = [(NSPredicate *)v3 rightExpression];
    v7 = [v6 expressionType];

    if (!v7 && [(NSPredicate *)v3 predicateOperatorType]<= 5 && (![(NSPredicate *)v3 customSelector]|| [(NSPredicate *)v3 customSelector]== sel_compare_ || [(NSPredicate *)v3 customSelector]== sel_isEqual_))
    {
      v8 = 1;
    }

    else
    {
LABEL_9:
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_2264A77C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<ATXGamePlayKitCDecisionNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28398EA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AA80F00);
}

void ATXGamePlayKitCDecisionNode::~ATXGamePlayKitCDecisionNode(ATXGamePlayKitCDecisionNode *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;

  v3 = *(this + 9);
  *(this + 9) = 0;

  v4 = *(this + 10);
  *(this + 10) = 0;

  objc_storeWeak(this + 11, 0);
  std::vector<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::erase(this, *this, *(this + 1));
  objc_destroyWeak(this + 11);

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = this;
  std::vector<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

uint64_t std::vector<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::erase(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>::operator=[abi:ne200100](v7, v4);
        v4 += 3;
        v7 += 24;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 24;
      std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::destroy[abi:ne200100](a1, v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *a2;
}

uint64_t std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>::operator=[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = *(a2 + 1);
  a2[1] = 0;
  a2[2] = 0;
  v7 = *(a1 + 16);
  *(a1 + 8) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void std::vector<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 24;
        std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::__emplace_back_slow_path<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v15 = 0;
  v16 = 24 * v2;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *a2 = 0;
  *v7 = v8;
  *(v7 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *&v17 = 24 * v2 + 24;
  v9 = a1[1];
  v10 = 24 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>,std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::~__split_buffer(&v15);
  return v14;
}

void sub_2264A7CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>,std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0;
      *a4 = v8;
      *(a4 + 16) = *(v7 + 16);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v7 += 24;
      a4 += 24;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::destroy[abi:ne200100](a1, v5);
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>,std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>,std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>,std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>,std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 24;
      std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 24;
    std::allocator<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::destroy[abi:ne200100](v4, i - 24);
  }
}

void _ZNSt3__120__shared_ptr_emplaceI27ATXGamePlayKitCDecisionTreeNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28398EAB8;
  ATXGamePlayKitCDecisionTree::ATXGamePlayKitCDecisionTree((a1 + 24));
}

void std::__shared_ptr_emplace<ATXGamePlayKitCDecisionTree>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28398EAB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AA80F00);
}

void ATXGamePlayKitCDecisionTree::ATXGamePlayKitCDecisionTree(ATXGamePlayKitCDecisionTree *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionNodeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_2264A80F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<ATXGamePlayKitCDecisionTree>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 8);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void linkChangedCallback(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      linkChangedCallback_cold_1(a2, v5);
    }

    Value = CFDictionaryGetValue(a2, @"LINK_CHANGED_IS_LINKDOWN");
    if (Value)
    {
      v7 = CFBooleanGetValue(Value) != 0;
    }

    else
    {
      v7 = 0;
    }

    if (CFDictionaryGetValue(a2, @"LINK_CHANGED_NETWORK"))
    {
      v8 = [WiFiNetworkGetSSID() copy];
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __linkChangedCallback_block_invoke;
    block[3] = &unk_278598A00;
    v12 = v8;
    v13 = v4;
    v14 = v7;
    v10 = v8;
    dispatch_async(v9, block);
  }
}

void sub_2264A87BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __linkChangedCallback_block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 32), v2);
    v4 = objc_opt_new();
    v5 = *(a1 + 40);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v8 = *(a1 + 48);
  v7 = (a1 + 48);
  *(*(v7 - 1) + 48) = v8 ^ 1;
  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __linkChangedCallback_block_invoke_cold_1(v3, v7, v9);
  }
}

CFPropertyListRef __getAirplaneMode_block_invoke()
{
  v0 = SCPreferencesCreate(0, @"com.apple.proactive.AppPredictionInternal", @"com.apple.radios.plist");
  *&v3.version = xmmword_278599AD8;
  memset(&v3.retain, 0, 24);
  SCPreferencesSetCallback(v0, scPrefsNotifyCallback, &v3);
  v1 = dispatch_get_global_queue(9, 0);
  SCPreferencesSetDispatchQueue(v0, v1);

  result = SCPreferencesGetValue(v0, @"AirplaneMode");
  atomic_store(result == *MEMORY[0x277CBED28], getAirplaneMode_inAirplaneMode);
  return result;
}

void scPrefsNotifyCallback(const __SCPreferences *a1, char a2, unsigned __int8 *a3)
{
  if (a3 && (a2 & 2) != 0)
  {
    Value = SCPreferencesGetValue(a1, @"AirplaneMode");
    v5 = *MEMORY[0x277CBED28];
    v6 = Value == *MEMORY[0x277CBED28];
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      scPrefsNotifyCallback_cold_1(Value == v5, v7);
    }

    atomic_store(v6, a3);
  }
}

void sub_2264A9474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2264AAEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMPBCacheAgeAtEngagementTrackerReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___ATXMPBCacheAgeAtEngagementTracker__abGroup;
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

    v13 = &OBJC_IVAR___ATXMPBCacheAgeAtEngagementTracker__cacheName;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_2264AB9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ATXAppBundleIdsForComplicationDescriptors(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
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

        v8 = [*(*(&v12 + 1) + 8 * i) extensionIdentity];
        v9 = [v8 containerBundleIdentifier];

        if ([v9 length])
        {
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_226537774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2265378D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226537A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226537B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226537D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22653821C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22653A158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void dispatch_sync_notxn_0(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_sync_notxn_block_invoke_0;
  block[3] = &unk_2785969B8;
  v6 = v3;
  v4 = v3;
  dispatch_sync(a1, block);
}

void sub_22653D144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22653D878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22653DFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22653EF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}