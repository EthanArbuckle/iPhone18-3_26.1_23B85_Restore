uint64_t HMAccessorySettingConstraintTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"minimumValue"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"maximumValue"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"stepValue"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"validValue"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *HMAccessorySettingConstraintTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75469B8[a1 - 1];
  }
}

uint64_t HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEventReadFrom(uint64_t a1, void *a2)
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
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
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
          if (v13 != 7)
          {
            if (v13 != 8)
            {
LABEL_69:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_88;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v46 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v46 & 0x7F) << v23;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_86;
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

LABEL_86:
            v43 = 16;
            goto LABEL_87;
          }

          v21 = PBReaderReadString();
          v22 = 48;
        }

        else
        {
          if (v13 == 5)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v47 = 0;
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
              v20 = v31;
            }

LABEL_74:
            v43 = 8;
            goto LABEL_87;
          }

          if (v13 != 6)
          {
            goto LABEL_69;
          }

          v21 = PBReaderReadString();
          v22 = 40;
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            v48 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v48 & 0x7F) << v35;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
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
            v20 = v37;
          }

LABEL_78:
          v43 = 24;
LABEL_87:
          *(a1 + v43) = v20;
          goto LABEL_88;
        }

        if (v13 != 4)
        {
          goto LABEL_69;
        }

        v21 = PBReaderReadString();
        v22 = 56;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_69;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            v49 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v14;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_82;
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

LABEL_82:
          v43 = 32;
          goto LABEL_87;
        }

        v21 = PBReaderReadString();
        v22 = 64;
      }

      v41 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_88:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMSoftwareUpdateProgressEventComponentsFromTopic(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if ([v5 hasSuffix:@"info.softwareUpdate.progress"])
  {
    v6 = [v5 componentsSeparatedByString:@"."];
    if ([v6 count] == 5)
    {
      v7 = objc_alloc(MEMORY[0x1E696AFB0]);
      v8 = [v6 objectAtIndexedSubscript:0];
      v9 = [v7 initWithUUIDString:v8];

      v10 = objc_alloc(MEMORY[0x1E696AFB0]);
      v11 = [v6 objectAtIndexedSubscript:1];
      v12 = [v10 initWithUUIDString:v11];

      if (v9)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      v14 = !v13;
      if (!v13)
      {
        if (a2)
        {
          v15 = v9;
          *a2 = v9;
        }

        if (a3)
        {
          v16 = v12;
          *a3 = v12;
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_19BB85A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL isValidTimeComparison(void *a1)
{
  v1 = a1;
  v2 = [v1 leftExpression];
  v3 = [v1 rightExpression];
  if ([v2 expressionType] != 4)
  {
    goto LABEL_9;
  }

  v4 = [v2 function];
  v5 = [v4 isEqualToString:@"now"];

  if (!v5 || [v1 predicateOperatorType] != 2 && objc_msgSend(v1, "predicateOperatorType") != 4 && objc_msgSend(v1, "predicateOperatorType"))
  {
    goto LABEL_9;
  }

  if (![v3 expressionType] && (objc_msgSend(v3, "constantValue"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = [v3 constantValue];
    v9 = [HMPredicateUtilities areOnlyHourAndMinuteSet:v8];
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

uint64_t HMAccessoryDiagnosticInfoProtoDiagnosticInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
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
        switch(v13)
        {
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v41 & 0x7F) << v22;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_70;
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

LABEL_70:
            *(a1 + 16) = v28;
            goto LABEL_82;
          case 2:
            v21 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo);
            objc_storeStrong((a1 + 24), v21);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfoReadFrom(v21, a2))
            {
LABEL_84:

              return 0;
            }

            goto LABEL_66;
          case 3:
            v21 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo);
            objc_storeStrong((a1 + 56), v21);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfoReadFrom(v21, a2))
            {
              goto LABEL_84;
            }

            goto LABEL_66;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          *(a1 + 64) |= 1u;
          v41 = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v41;
          goto LABEL_82;
        }

        if (v13 == 7)
        {
          v21 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoSetupInfo);
          objc_storeStrong((a1 + 40), v21);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !HMAccessoryDiagnosticInfoProtoSetupInfoReadFrom(v21, a2))
          {
            goto LABEL_84;
          }

LABEL_66:
          PBReaderRecallMark();

          goto LABEL_82;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v41) = 0;
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
              goto LABEL_74;
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

LABEL_74:
          v37 = 32;
          goto LABEL_79;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v41) = 0;
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
              goto LABEL_78;
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

LABEL_78:
          v37 = 48;
LABEL_79:
          *(a1 + v37) = v20;
          goto LABEL_82;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_19BB8D2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HMAudioAnalysisEventBulletinEventProtoValueEventReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent);
        [a1 addEvents:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

__CFString *HMLightProfileSupportedFeaturesAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    v4 = a1;
    do
    {
      if ((v3 & a1) != 0)
      {
        if (v3 == 2)
        {
          v4 &= ~2uLL;
        }

        else if (v3 == 1)
        {
          v4 &= ~1uLL;
          [v2 addObject:@"natural-lighting"];
        }
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    if (v4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown supported features: %lu", a1];
      [v2 addObject:v5];
    }
  }

  if ([v2 count])
  {
    v6 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"none";
  }

  return v6;
}

__CFString *HMSettingVersionValueTypeAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"HMSettingReadVersionValue";
  }

  else if (a1 == 2)
  {
    v1 = @"HMSettingWriteVersionValue";
  }

  else
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown type (%@)", v3];
  }

  return v1;
}

uint64_t HMImmutableSettingsProtoAvailableLanguageListEventReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(HMImmutableSettingsProtoLanguageValueEvent);
        [a1 addLanguages:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoLanguageValueEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

id HMImmutableSettingValueTypeAsString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"UnknownType(%@)", v3];
  }

  else
  {
    v1 = *(&off_1E7546C30 + a1);
  }

  return v1;
}

uint64_t HMAccessoryInfoProtoPrimaryUserInfoEventReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSFoundationLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!IDSFoundationLibraryCore_frameworkLibrary)
  {
    IDSFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = IDSFoundationLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getIDSDestinationClass_block_invoke(uint64_t a1)
{
  if (!IDSFoundationLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("IDSDestination");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIDSDestinationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = abort_report_np();
    return __IDSFoundationLibraryCore_block_invoke(v4);
  }

  return result;
}

uint64_t __IDSFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IDSFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IDSLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HMAccessoryInfoProtoNetworkServiceEventReadFrom(_BYTE *a1, void *a2)
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
        v27 = 0;
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
            v15 = PBReaderReadString();
            v16 = 48;
            goto LABEL_51;
          }

          if (v13 == 7)
          {
            v15 = PBReaderReadString();
            v16 = 64;
            goto LABEL_51;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = PBReaderReadString();
              if (v14)
              {
                [a1 addIpv6Addresses:v14];
              }

              goto LABEL_48;
            case 9:
              v15 = PBReaderReadString();
              v16 = 56;
              goto LABEL_51;
            case 0xA:
              v15 = PBReaderReadString();
              v16 = 72;
LABEL_51:
              v24 = *&a1[v16];
              *&a1[v16] = v15;

              goto LABEL_52;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 16;
          goto LABEL_51;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_51;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            a1[84] |= 1u;
            while (1)
            {
              v28 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v28 & 0x7F) << v17;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_57;
              }
            }

            v23 = (v19 != 0) & ~[a2 hasError];
LABEL_57:
            a1[80] = v23;
            goto LABEL_52;
          case 4:
            v15 = PBReaderReadString();
            v16 = 8;
            goto LABEL_51;
          case 5:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addIpv4Addresses:v14];
            }

LABEL_48:

            goto LABEL_52;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_52:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMMediaSystemRoleTypeAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"HMMediaSystemRoleTypeLeft";
  }

  else if (a1 == 2)
  {
    v2 = @"HMMediaSystemRoleTypeRight";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMMediaSystemRoleType %tu", a1];
  }

  return v2;
}

uint64_t StringAsHMMediaSystemRoleType(void *a1)
{
  if ([a1 isEqual:@"HMMediaSystemRoleTypeLeft"])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_19BB99EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HMImmutableSettingsProtoBoolValueEventReadFrom(uint64_t a1, void *a2)
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
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
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

__CFString *HMMediaDestinationSupportOptionsAsString(unint64_t a1)
{
  if (a1)
  {
    v2 = @"HT ";
    if ((a1 & 1) == 0)
    {
      v2 = &stru_1F0E92498;
    }

    v20 = v2;
    v3 = @"AG ";
    if ((a1 & 8) == 0)
    {
      v3 = &stru_1F0E92498;
    }

    v4 = v3;
    v5 = @"MHT ";
    if ((a1 & 4) == 0)
    {
      v5 = &stru_1F0E92498;
    }

    v6 = v5;
    v7 = @"HT+ ";
    if ((a1 & 0x40) == 0)
    {
      v7 = &stru_1F0E92498;
    }

    v8 = v7;
    v9 = @"MS+ ";
    if ((a1 & 0x80) == 0)
    {
      v9 = &stru_1F0E92498;
    }

    v10 = v9;
    v11 = @"MS ";
    if ((a1 & 0x10) == 0)
    {
      v11 = &stru_1F0E92498;
    }

    v12 = v11;
    v13 = @"MMS ";
    if ((a1 & 0x20) == 0)
    {
      v13 = &stru_1F0E92498;
    }

    v14 = v13;
    v15 = &stru_1F0E92498;
    if (a1 >= 0x100)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
      v15 = [v16 stringWithFormat:@"unknown(%@)", v17];
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@", v20, v4, v6, v12, v14, v8, v10, &stru_1F0E92498, &stru_1F0E92498, v15];
  }

  else
  {
    v18 = @"None";
  }

  return v18;
}

__CFString *HMMediaDestinationTypeAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown type %@", v3];
  }

  else
  {
    v1 = off_1E7546E68[a1];
  }

  return v1;
}

void sub_19BBA7BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBA8DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMMediaGroupProtoMediaSystemRolesReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___HMMediaGroupProtoMediaSystemRoles__rightDestinationIdentifier;
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

    v13 = &OBJC_IVAR___HMMediaGroupProtoMediaSystemRoles__leftDestinationIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMResidentDeviceStatusDescription(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    v4 = a1;
    do
    {
      if ((v3 & a1) != 0)
      {
        v5 = v3 - 1;
        if (v3 - 1) <= 7 && ((0x8Bu >> v5))
        {
          [v2 addObject:off_1E7546F88[v5]];
          v4 &= ~v3;
        }
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    if (v4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown device status: %lu", v4];
      [v2 addObject:v6];
    }
  }

  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

__CFString *HMResidentDeviceCapabilitiesDescription(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!a1)
  {
    goto LABEL_86;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_83;
    }

    if (v3 >= 0x10000)
    {
      if (v3 > 0xFFFFFF)
      {
        if (v3 > 0xFFFFFFF)
        {
          if (v3 > 0x3FFFFFFF)
          {
            if (v3 == 0x40000000)
            {
              v5 = @"restricted-guest";
            }

            else
            {
              if (v3 != 0x80000000)
              {
                goto LABEL_83;
              }

              v5 = @"matter-owner-cert-fetch";
            }
          }

          else if (v3 == 0x10000000)
          {
            v5 = @"matterTTU";
          }

          else
          {
            if (v3 != 0x20000000)
            {
              goto LABEL_83;
            }

            v5 = @"UWB";
          }
        }

        else if (v3 > 0x3FFFFFF)
        {
          if (v3 == 0x4000000)
          {
            v5 = @"matter-shared-admin-pairing";
          }

          else
          {
            if (v3 != 0x8000000)
            {
              goto LABEL_83;
            }

            v5 = @"event-log";
          }
        }

        else if (v3 == 0x1000000)
        {
          v5 = @"custom media destination";
        }

        else
        {
          if (v3 != 0x2000000)
          {
            goto LABEL_83;
          }

          v5 = @"thread-network-credential-sharing";
        }
      }

      else if (v3 >= 0x100000)
      {
        if (v3 >= 0x400000)
        {
          if (v3 == 0x400000)
          {
            v5 = @"chip";
          }

          else
          {
            if (v3 != 0x800000)
            {
              goto LABEL_83;
            }

            v5 = @"resident-firmware-update";
          }
        }

        else if (v3 == 0x100000)
        {
          v5 = @"camera-package-detection";
        }

        else
        {
          if (v3 != 0x200000)
          {
            goto LABEL_83;
          }

          v5 = @"access-codes";
        }
      }

      else if (v3 >= 0x40000)
      {
        if (v3 == 0x40000)
        {
          v5 = @"wallet-key";
        }

        else
        {
          if (v3 != 0x80000)
          {
            goto LABEL_83;
          }

          v5 = @"lock-notification-context";
        }
      }

      else if (v3 == 0x10000)
      {
        v5 = @"thread-border-router";
      }

      else
      {
        if (v3 != 0x20000)
        {
          goto LABEL_83;
        }

        v5 = @"camera-recording-reachability-notifications";
      }
    }

    else if (v3 > 255)
    {
      if (v3 > 4095)
      {
        if (v3 >= 0x4000)
        {
          if (v3 == 0x4000)
          {
            v5 = @"natural-lighting";
          }

          else
          {
            if (v3 != 0x8000)
            {
              goto LABEL_83;
            }

            v5 = @"announce";
          }
        }

        else if (v3 == 4096)
        {
          v5 = @"camera-activity-zones";
        }

        else
        {
          if (v3 != 0x2000)
          {
            goto LABEL_83;
          }

          v5 = @"face-classification";
        }
      }

      else if (v3 > 1023)
      {
        if (v3 == 1024)
        {
          v5 = @"camera-significant-event-notifications";
        }

        else
        {
          if (v3 != 2048)
          {
            goto LABEL_83;
          }

          v5 = @"firmware-update";
        }
      }

      else if (v3 == 256)
      {
        v5 = @"shortcut-actions";
      }

      else
      {
        if (v3 != 512)
        {
          goto LABEL_83;
        }

        v5 = @"media-actions";
      }
    }

    else if (v3 > 15)
    {
      if (v3 > 63)
      {
        if (v3 == 64)
        {
          v5 = @"camera-recording";
        }

        else
        {
          if (v3 != 128)
          {
            goto LABEL_83;
          }

          v5 = @"router-management";
        }
      }

      else if (v3 == 16)
      {
        v5 = @"media-system";
      }

      else
      {
        if (v3 != 32)
        {
          goto LABEL_83;
        }

        v5 = @"media-actions-internal-build";
      }
    }

    else if (v3 > 3)
    {
      if (v3 == 4)
      {
        v5 = @"remote-access-restrictions";
      }

      else
      {
        if (v3 != 8)
        {
          goto LABEL_83;
        }

        v5 = @"shared-event-trigger-activation";
      }
    }

    else
    {
      v5 = @"triggers";
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          goto LABEL_83;
        }

        v5 = @"administrators";
      }
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_83:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown capabilities: %lu", v4];
    [v2 addObject:v6];
  }

LABEL_86:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

void sub_19BBAF05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMStringFromCameraVideoResolutionQuality(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown quality: %lu", a1];
  }

  else
  {
    v2 = off_1E7546FC8[a1 - 1];
  }

  return v2;
}

uint64_t HMIsValidSignificantEvent(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"sunrise"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"sunset"];
  }

  return v2;
}

BOOL HMIsValidSignificantEventOffset(void *a1)
{
  v1 = a1;
  v2 = ([v1 hour] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "minute") != 0x7FFFFFFFFFFFFFFFLL) && objc_msgSend(v1, "era") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "year") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "day") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "weekday") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "weekdayOrdinal") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "quarter") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "weekOfMonth") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "weekOfYear") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "yearForWeekOfYear") == 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

void sub_19BBB10F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBB1774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBB1F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBB2580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMMediaDestinationControllerUpateOptionsAsString(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = &stru_1F0E92498;
    if (a1)
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", &stru_1F0E92498, @"Unavailable"];
    }

    if ((v1 & 2) != 0)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v2, @"Unconfigured"];

      v2 = v3;
    }
  }

  else
  {
    v2 = @"No Options";
  }

  return v2;
}

uint64_t HMPBNaturalLightingActionReadFrom(uint64_t a1, void *a2)
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
        v14 = PBReaderReadData();
        v15 = 8;
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

        v14 = PBReaderReadData();
        v15 = 16;
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

void sub_19BBB9BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBBA08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMEventTriggerActivationStateAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMEventTriggerActivationState %tu", a1];
  }

  else
  {
    v2 = off_1E75470D0[a1];
  }

  return v2;
}

uint64_t HMPBAccessoryReferenceReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HMPBHomeReference);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !HMPBHomeReferenceReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id HMImmutableSettingChangeEventTopicFromComponentsLegacy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69A2A20];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.settings.%@.updated", a1, a2, a3];
  v5 = [v3 hmf_cachedInstanceForString:v4];

  return v5;
}

id HMImmutableSettingChangeEventTopicFromComponentsHH2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69A2A20];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"home.%@.accessory.%@.settings.%@.updated", a1, a2, a3];
  v5 = [v3 hmf_cachedInstanceForString:v4];

  return v5;
}

uint64_t HMImmutableSettingChangeEventComponentsFromTopic(void *a1, void *a2, void *a3, void *a4)
{
  v7 = [a1 componentsSeparatedByString:@"."];
  if ([v7 count] >= 5)
  {
    v8 = [v7 objectAtIndexedSubscript:2];
    if ([v8 isEqualToString:@"settings"])
    {
      v9 = [v7 lastObject];
      v10 = [v9 isEqualToString:@"updated"];

      if (v10)
      {
        v11 = objc_alloc(MEMORY[0x1E696AFB0]);
        v12 = [v7 objectAtIndexedSubscript:0];
        v13 = [v11 initWithUUIDString:v12];

        v14 = objc_alloc(MEMORY[0x1E696AFB0]);
        v15 = [v7 objectAtIndexedSubscript:1];
        v16 = [v14 initWithUUIDString:v15];

        v17 = [v7 count] - 4;
        v18 = v7;
        v19 = 3;
        goto LABEL_5;
      }
    }

    else
    {
    }
  }

  if ([v7 count] < 7)
  {
    v23 = 0;
  }

  else
  {
    v13 = [v7 objectAtIndexedSubscript:0];
    if (![v13 isEqualToString:@"home"])
    {
      v23 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v16 = [v7 objectAtIndexedSubscript:2];
    if (![v16 isEqualToString:@"accessory"])
    {
      v23 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v20 = [v7 objectAtIndexedSubscript:4];
    if (![v20 isEqualToString:@"settings"])
    {
      v23 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v27 = [v7 lastObject];
    v23 = [v27 isEqualToString:@"updated"];

    if (v23)
    {
      v28 = objc_alloc(MEMORY[0x1E696AFB0]);
      v29 = [v7 objectAtIndexedSubscript:1];
      v13 = [v28 initWithUUIDString:v29];

      v30 = objc_alloc(MEMORY[0x1E696AFB0]);
      v31 = [v7 objectAtIndexedSubscript:3];
      v16 = [v30 initWithUUIDString:v31];

      v17 = [v7 count] - 6;
      v18 = v7;
      v19 = 5;
LABEL_5:
      v20 = [v18 subarrayWithRange:{v19, v17}];
      v21 = [v20 componentsJoinedByString:@"."];
      v22 = v21;
      v23 = 0;
      if (v13 && v16 && v21)
      {
        if (a2)
        {
          v24 = v13;
          *a2 = v13;
        }

        if (a3)
        {
          v25 = v16;
          *a3 = v16;
        }

        if (a4)
        {
          v26 = v22;
          *a4 = v22;
        }

        v23 = 1;
      }

      goto LABEL_27;
    }
  }

LABEL_30:

  return v23;
}

BOOL HMImmutableSettingChangeEventComponentsFromMediaSystemTopic(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = [HMEventTopicHelper decodeTopic:a1];
  v8 = [v7 asMediaSystemSettingTopic];
  v9 = v8;
  if (v8)
  {
    *a2 = [v8 homeUUID];
    *a3 = [v9 mediaSystemUUID];
    *a4 = [v9 mediaSystemSettingKeyPath];
  }

  return v9 != 0;
}

__CFString *HMHomeAddWalletKeyOptionsDescription(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1 >= 1)
  {
    v3 = 1;
    v4 = a1;
    while (1)
    {
      if ((v3 & a1) == 0)
      {
        goto LABEL_11;
      }

      switch(v3)
      {
        case 1:
          v5 = @"suppress-wallet-notification";
          break;
        case 4:
          v5 = @"enable-UWB";
          break;
        case 2:
          v5 = @"enable-express";
          break;
        default:
          goto LABEL_11;
      }

      v4 &= ~v3;
      [v2 addObject:v5];
LABEL_11:
      v3 *= 2;
      if (v3 > a1 || !v3)
      {
        if (v4)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }
  }

  v4 = a1;
  if (a1)
  {
LABEL_14:
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown options: %lu", v4];
    [v2 addObject:v6];
  }

LABEL_15:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

__CFString *HMStringFromCameraClipQuality(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Timelapse";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown quality: %ld", a1];
    }
  }

  else
  {
    v2 = @"Full";
  }

  return v2;
}

void sub_19BBD2950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBD2EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBD35DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBD3DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBD45FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBD55EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMSetupAccessoryProgressAsString(unint64_t a1)
{
  if (a1 >= 0x34)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown progress state: %lu", a1];
  }

  else
  {
    v2 = off_1E75475A8[a1];
  }

  return v2;
}

__CFString *HMHomeWalletKeyColorAsString(uint64_t a1)
{
  if (a1 > 14935010)
  {
    if (a1 == 15521450)
    {
      v2 = @"PolishedBrass";
    }

    else
    {
      if (a1 != 14935011)
      {
LABEL_12:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown wallet key color: %ld", a1];

        return v2;
      }

      v2 = @"SatinChrome";
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 14341582)
      {
        v2 = @"SatinNickel";

        return v2;
      }

      goto LABEL_12;
    }

    v2 = @"MatteBlack";
  }

  return v2;
}

uint64_t HMPBActionSetReadFrom(char *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(HMPBActionContainer);
          [a1 addActions:v16];
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !HMPBActionContainerReadFrom(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_30;
          case 4:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_30;
          case 5:
            v14 = PBReaderReadData();
            v15 = 24;
LABEL_30:
            v16 = *&a1[v15];
            *&a1[v15] = v14;
LABEL_31:

            goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMMediaGroupProtoMediaDestinationControllerDataReadFrom(uint64_t a1, void *a2)
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
        v27 = 0;
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

      switch(v13)
      {
        case 3:
          v21 = PBReaderReadString();
          v22 = 24;
LABEL_38:
          v24 = *(a1 + v22);
          *(a1 + v22) = v21;

          break;
        case 4:
          v23 = PBReaderReadString();
          if (v23)
          {
            [a1 addAvailableDestinations:v23];
          }

          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v28 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v28 & 0x7F) << v14;
            if ((v28 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_44;
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

LABEL_44:
          *(a1 + 8) = v20;
          break;
        default:
          goto LABEL_39;
      }

LABEL_45:
      v26 = [a2 position];
      if (v26 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v21 = PBReaderReadString();
      v22 = 32;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_39:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_45;
      }

      v21 = PBReaderReadString();
      v22 = 40;
    }

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMPresenceEventTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMPresenceEventType %tu", a1];
  }

  else
  {
    v2 = off_1E7547830[a1 - 1];
  }

  return v2;
}

__CFString *HMPresenceEventUserTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMPresenceEventUserType %tu", a1];
  }

  else
  {
    v2 = off_1E7547850[a1 - 1];
  }

  return v2;
}

uint64_t eventTypeForPresenceTypeAndGranularity(void *a1, uint64_t a2)
{
  v3 = a1;
  if (([v3 isEqualToString:@"HMPresenceTypeCurrentUserAtHome"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMPresenceTypeAnyUserAtHome") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"HMPresenceTypeUsersAtHome"))
  {
    if (a2 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }
  }

  else if (([v3 isEqualToString:@"HMPresenceTypeCurrentUserNotAtHome"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMPresenceTypeNoUserAtHome") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"HMPresenceTypeUsersNotAtHome"))
  {
    if (a2 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }
  }

  else
  {
    v4 = kInvalidHMPresenceEventType;
  }

  return v4;
}

uint64_t userTypeForPresenceTypeAndGranularity(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HMPresenceTypeCurrentUserAtHome"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HMPresenceTypeCurrentUserNotAtHome"))
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"HMPresenceTypeAnyUserAtHome"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HMPresenceTypeNoUserAtHome"))
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"HMPresenceTypeUsersAtHome"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"HMPresenceTypeUsersNotAtHome"])
  {
    v2 = 3;
  }

  else
  {
    v2 = kInvalidHMPresenceEventUserType;
  }

  return v2;
}

__CFString *presenceTypeForEventTypeAndGranularity(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 4)
    {
      goto LABEL_11;
    }

    if (a1 != 3)
    {
LABEL_4:

      return v4;
    }
  }

  else if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_4;
    }

LABEL_11:
    v6 = a2 - 1;
    if ((a2 - 1) < 3)
    {
      v7 = &off_1E7547880;
LABEL_13:
      v4 = *v7[v6];

      return v4;
    }

    goto LABEL_16;
  }

  v6 = a2 - 1;
  if ((a2 - 1) < 3)
  {
    v7 = &off_1E7547868;
    goto LABEL_13;
  }

LABEL_16:
  v4 = 0;

  return v4;
}

uint64_t granularityForEventType(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v1 = &kInvalidHMPresenceEventActivationGranularity;
  }

  else
  {
    v1 = &unk_19BE376C0 + 8 * a1 - 8;
  }

  return *v1;
}

uint64_t HMAccessoryInfoProtoAccountInfoEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_36:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_39;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_39;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 36) |= 1u;
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
          goto LABEL_38;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_38:
      *(a1 + 32) = v22;
LABEL_39:
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
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadString();
      v15 = 8;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

id _HMErrorFromOSStatus(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getHMErrorFromOSStatusSymbolLoc_ptr;
  v10 = getHMErrorFromOSStatusSymbolLoc_ptr;
  if (!getHMErrorFromOSStatusSymbolLoc_ptr)
  {
    v3 = CoreHAPLibrary();
    v8[3] = dlsym(v3, "HMErrorFromOSStatus");
    getHMErrorFromOSStatusSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = v2(a1);

  return v4;
}

void *__getHMErrorFromOSStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHAPLibrary();
  result = dlsym(v2, "HMErrorFromOSStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMErrorFromOSStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreHAPLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreHAPLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreHAPLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7547898;
    v6 = 0;
    CoreHAPLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = CoreHAPLibraryCore_frameworkLibrary;
    if (CoreHAPLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = CoreHAPLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CoreHAPLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreHAPLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getHAPTLVUnsignedNumberValueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHAPTLVUnsignedNumberValueClass_softClass;
  v7 = getHAPTLVUnsignedNumberValueClass_softClass;
  if (!getHAPTLVUnsignedNumberValueClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHAPTLVUnsignedNumberValueClass_block_invoke;
    v3[3] = &unk_1E754CB30;
    v3[4] = &v4;
    __getHAPTLVUnsignedNumberValueClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19BBE375C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

HMNetworkRouterWANStatus *__getHAPTLVUnsignedNumberValueClass_block_invoke(uint64_t a1)
{
  CoreHAPLibrary();
  result = objc_getClass("HAPTLVUnsignedNumberValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHAPTLVUnsignedNumberValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(HMNetworkRouterWANStatus *)v3 initWithIdentifier:v4 status:v5, v6];
  }

  return result;
}

void sub_19BBE4A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBE506C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBE6FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMImmutableSettingsProtoBoolSettingEventReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(HMImmutableSettingsProtoBoolValueEvent);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoBoolValueEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

void sub_19BBEFDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBF012C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBF12F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_19BBF1FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBF2348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBF3074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BBF3478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PreorderTraverseGroupsWithBlock(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v6[2](v6, v5, a2);
  v7 = [v5 groups];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___PreorderTraverseGroupsWithBlock_block_invoke;
  v10[3] = &unk_1E7547C80;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 na_each:v10];
}

__CFString *HMCameraAudioStreamSettingAsString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown audio stream setting %tu", a1];
  }

  else
  {
    v2 = off_1E7547CF0[a1 - 1];
  }

  return v2;
}

id HMDaysOfTheWeekToString(char a1)
{
  v2 = [@"<" mutableCopy];
  if (a1)
  {
    appendDayToString(@"Sun", v2);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  appendDayToString(@"Mon", v2);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  appendDayToString(@"Tue", v2);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  appendDayToString(@"Wed", v2);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  appendDayToString(@"Thu", v2);
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  appendDayToString(@"Fri", v2);
  if ((a1 & 0x40) != 0)
  {
LABEL_8:
    appendDayToString(@"Sat", v2);
  }

LABEL_9:
  [v2 appendString:@">"];
  v3 = [v2 copy];

  return v3;
}

void appendDayToString(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if ([v3 length] >= 2)
  {
    [v3 appendString:{@", "}];
  }

  [v3 appendString:v4];
}

id HMDaysOfTheWeekToConciseString(char a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(@"<SuMTuWThFSa>", "length")}];
  [v2 appendString:@"<"];
  if (a1)
  {
    [v2 appendString:@"Su"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v2 appendString:@"M"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v2 appendString:@"Tu"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v2 appendString:@"W"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v2 appendString:@"Th"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v2 appendString:@"F"];
  if ((a1 & 0x40) != 0)
  {
LABEL_8:
    [v2 appendString:@"Sa"];
  }

LABEL_9:
  [v2 appendString:@">"];
  v3 = [v2 copy];

  return v3;
}

id HMDaysOfTheWeekToDateComponents(int a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
  for (i = 1; i != 8; ++i)
  {
    if (((1 << (i - 1)) & a1) != 0)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v4 setWeekday:i];
      [v2 addObject:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

uint64_t HMDaysOfTheWeekFromDateComponents(void *a1, BOOL *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v18 = a2;
  v19 = 0u;
  v20 = 0u;
  v4 = a2 != 0;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 calendar];
        v12 = v11;
        v4 = (!v11 || ([v11 maximumRangeOfUnit:512] == 1 ? (v14 = v13 == 7) : (v14 = 0), v14)) && (v15 = objc_msgSend(v10, "weekday"), (v15 - 8) >= 0xFFFFFFFFFFFFFFF9) && (v7 |= (1 << (v15 - 1)), v4) && objc_msgSend(v10, "era") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "year") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "day") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "hour") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "minute") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "second") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "nanosecond") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "weekdayOrdinal") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "quarter") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "weekOfMonth") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "weekOfYear") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "yearForWeekOfYear") == 0x7FFFFFFFFFFFFFFFLL;
      }

      v6 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v18)
  {
    *v18 = v4;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19BC08210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16737(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HMSoftwareUpdateAssetSourceAsString(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __HMSoftwareUpdateAssetSourceAsString_block_invoke;
  v4[3] = &__block_descriptor_40_e35_B32__0__NSString_8__NSNumber_16_B24l;
  v4[4] = a1;
  v1 = [&unk_1F0EFD3B8 keysOfEntriesPassingTest:v4];
  v2 = [v1 anyObject];

  return v2;
}

void sub_19BC08D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL __HMSoftwareUpdateAssetSourceAsString_block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a3 integerValue];
  if (v5 == v6)
  {
    *a4 = 1;
  }

  return v5 == v6;
}

void sub_19BC09560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC09BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL isValidHMSoftwareUpdateAssetSourceString(uint64_t a1)
{
  v1 = [&unk_1F0EFD3B8 objectForKeyedSubscript:a1];
  v2 = v1 != 0;

  return v2;
}

id validHMSoftwareUpdateAssetSourceStrings()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [&unk_1F0EFD3B8 allKeys];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v0 length])
        {
          [v0 appendString:{@", "}];
        }

        [v0 appendString:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t stringToHMSoftwareUpdateAssetSource(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [&unk_1F0EFD3B8 objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v1;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Invalid update asset source string %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_19BC0CFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC0D7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC0E018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC0EC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BC0F72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC0FFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

id _HMSignificantEventKeyPath(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"sunrise"] || objc_msgSend(v1, "isEqualToString:", @"sunset"))
  {
    v2 = v1;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a significant event", v1}];
    v2 = 0;
  }

  return v2;
}

__CFString *HMStringFromPersonFaceCropSource(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown source: %ld", a1];
  }

  else
  {
    v2 = off_1E75481F8[a1];
  }

  return v2;
}

__CFString *HMSoftwareUpdateNeedsAttentionReasonsToString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    v4 = a1;
    do
    {
      if ((v3 & a1) != 0)
      {
        v5 = v3 - 1;
        if (v3 - 1) <= 7 && ((0x8Bu >> v5))
        {
          v4 &= ~v3;
          [v2 addObject:off_1E7548398[v5]];
        }
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    if (v4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown options %lu", v4];
      [v2 addObject:v6];
    }
  }

  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

void sub_19BC187EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC193C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC1ABF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMSoftwareUpdateStateToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7548368[a1];
  }
}

void sub_19BC1B284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMSoftwareUpdateUpdateTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75483D8[a1 - 1];
  }
}

id generateURLForHomeKitObject(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AF20] componentsWithString:@"com.apple.Home://"];
  v6 = [v3 queryName];
  [v5 setHost:v6];

  v7 = [v3 uuidString];
  v8 = [@"/" stringByAppendingString:v7];
  [v5 setPath:v8];

  if ([v4 count])
  {
    v27 = v5;
    v29 = v3;
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = v4;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [v14 queryName];
          v16 = [v14 uuidString];
          v17 = [v9 objectForKeyedSubscript:v15];

          if (v17)
          {
            v18 = MEMORY[0x1E696AEC0];
            v19 = [v9 objectForKeyedSubscript:v15];
            v20 = [v19 value];
            v21 = [v18 stringWithFormat:@"%@, %@", v20, v16];

            v16 = v21;
          }

          v22 = [MEMORY[0x1E696AF60] queryItemWithName:v15 value:v16];
          [v9 setObject:v22 forKeyedSubscript:v15];
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v23 = [v9 allValues];
    v5 = v27;
    [v27 setQueryItems:v23];

    v4 = v28;
    v3 = v29;
  }

  v24 = [v5 URL];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

__CFString *playbackStateAsString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75484F8[a1 - 1];
  }
}

void appendToShortDescription(void *a1, void *a2, void *a3)
{
  v7 = a1;
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (v5)
    {
      [v7 appendFormat:@"%@=", v5];
    }

    [v7 appendFormat:@"%@;", v6];
  }
}

uint64_t HMPBCharacteristicReferenceReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HMPBServiceReference);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !HMPBServiceReferenceReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id resolveProfiles(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __resolveProfiles_block_invoke;
  v7[3] = &unk_1E7548628;
  v8 = v3;
  v4 = v3;
  v5 = [a1 na_map:v7];

  return v5;
}

id __resolveProfiles_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 mediaProfileWithUUID:v3];

  return v4;
}

void sub_19BC21CE0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_19BC21DD4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_19BC24550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC28F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMPBMediaPlaybackActionReadFrom(uint64_t a1, void *a2)
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
        v27 = 0;
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
        v14 = PBReaderReadData();
        v15 = 8;
LABEL_38:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_45;
      }

      if (v13 != 2)
      {
LABEL_39:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_45;
      }

      v16 = PBReaderReadData();
      if (v16)
      {
        [(HMPBMediaPlaybackAction *)a1 addMediaProfiles:v16];
      }

LABEL_45:
      v26 = [a2 position];
      if (v26 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v28 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v28 & 0x7F) << v17;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_44;
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

LABEL_44:
        *(a1 + 16) = v23;
        goto LABEL_45;
      case 5:
        v14 = PBReaderReadData();
        v15 = 40;
        break;
      case 6:
        v14 = PBReaderReadData();
        v15 = 32;
        break;
      default:
        goto LABEL_39;
    }

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMAccessoryInfoProtoPublicPairingIdentityReadFrom(uint64_t a1, void *a2)
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
        v14 = &OBJC_IVAR___HMAccessoryInfoProtoPublicPairingIdentity__identifier;
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
    v14 = &OBJC_IVAR___HMAccessoryInfoProtoPublicPairingIdentity__publicPairingKeyData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id HMINControlHomeIntentShortDescription(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD60];
  v4 = a2;
  v5 = a1;
  v6 = [v3 string];
  v7 = [v5 contents];
  v8 = [v7 firstObject];

  v9 = [v8 filter];
  v10 = [v5 identifier];

  appendToShortDescription(v6, @"IntentIdentifier", v10);
  v11 = [v9 home];
  v12 = [v11 string];
  appendToShortDescription(v6, @"home", v12);

  v13 = [v9 home];
  v14 = [v13 identifier];
  appendToShortDescription(v6, @"homeIdentifier", v14);

  v15 = [v9 scene];
  v16 = [v15 string];
  appendToShortDescription(v6, @"scene", v16);

  v17 = [v9 scene];
  v18 = [v17 identifier];
  appendToShortDescription(v6, @"sceneIdentifier", v18);

  appendToShortDescription(v6, @"outcome", v4);

  return v6;
}

uint64_t HMRemoteEventRouterProtoConnectedClientInfoReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_19BC2D400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC2D960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____requestFetch_block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = *MEMORY[0x1E69E9840];

    [v3 softwareUpdateManager:v4 didReceiveRequestToFetchUpdateWithCompletionHandler:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[5];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Calling legacy fetch delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = a1[4];
    v12 = a1[5];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ____requestFetch_block_invoke_160;
    v14[3] = &unk_1E75487B8;
    v15 = a1[6];
    [v11 softwareUpdateManager:v12 didReceiveRequestToFetchWithCompletionHandler:v14];

    v13 = *MEMORY[0x1E69E9840];
  }
}

void sub_19BC2E578(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_19BC2EEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC2F290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC2FE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMStringFromCameraClipEncryptionScheme(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"AES256GCM";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown scheme: %lu>", a1];
  }

  return v2;
}

uint64_t HMPBServiceReferenceReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HMPBAccessoryReference);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !HMPBAccessoryReferenceReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMPBMatterCommandActionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v26[0] & 0x7F) << v17;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_36;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        v16 = objc_alloc_init(HMPBCommandContainer);
        [a1 addCommands:v16];
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HMPBCommandContainerReadFrom(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMMediaGroupProtoMediaDestinationAggregateDataReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(HMMediaGroupProtoMediaGroupData);
        [a1 addGroup:v14];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HMMediaGroupProtoMediaGroupDataReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HMMediaGroupProtoMediaDestination);
        [a1 addDestination:v14];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HMMediaGroupProtoMediaDestinationReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HMMediaGroupProtoMediaDestinationControllerData);
    [a1 addDestinationControllerData:v14];
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !HMMediaGroupProtoMediaDestinationControllerDataReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMNetworkStatusAsString(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if ((a1 & 1) == 0)
    {
      v2 = [MEMORY[0x1E695DF70] array];
      v3 = v2;
      if ((v1 & 2) != 0)
      {
        [v2 addObject:@"Cable Not Connected"];
        if ((v1 & 4) == 0)
        {
LABEL_5:
          if ((v1 & 8) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_22;
        }
      }

      else if ((v1 & 4) == 0)
      {
        goto LABEL_5;
      }

      [v3 addObject:@"No IP address"];
      if ((v1 & 8) == 0)
      {
LABEL_6:
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }

LABEL_22:
      [v3 addObject:@"No Gateway"];
      if ((v1 & 0x10) == 0)
      {
LABEL_7:
        if ((v1 & 0x20) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_24;
      }

LABEL_23:
      [v3 addObject:@"Gateway Not Reachable"];
      if ((v1 & 0x20) == 0)
      {
LABEL_8:
        if ((v1 & 0x40) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_25;
      }

LABEL_24:
      [v3 addObject:@"No DNS Servers"];
      if ((v1 & 0x40) == 0)
      {
LABEL_9:
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }

LABEL_25:
      [v3 addObject:@"DNS Servers Not Reachable"];
      if ((v1 & 0x80) == 0)
      {
LABEL_10:
        if ((v1 & 0x100) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_27;
      }

LABEL_26:
      [v3 addObject:@"Authentication Failure"];
      if ((v1 & 0x100) == 0)
      {
LABEL_11:
        if ((v1 & 0x20000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_28;
      }

LABEL_27:
      [v3 addObject:@"Walled"];
      if ((v1 & 0x20000000) == 0)
      {
LABEL_12:
        if ((v1 & 0x40000000) == 0)
        {
LABEL_14:
          v4 = [v3 componentsJoinedByString:{@", "}];

          goto LABEL_17;
        }

LABEL_13:
        [v3 addObject:@"Satellite Not Connected"];
        goto LABEL_14;
      }

LABEL_28:
      [v3 addObject:@"Not Ready"];
      if ((v1 & 0x40000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v4 = @"Unknown";
  }

  else
  {
    v4 = @"Good";
  }

LABEL_17:

  return v4;
}

uint64_t HMXPCEventRouterProtoChangeRegistrationsMessageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
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
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 4)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addTopicFilterRemovals:v14];
      }

      goto LABEL_24;
    }

    if ((v13 >> 3) == 3)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addTopicFilterAdditions:v14];
      }

LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

void sub_19BC3C478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7548828;
    v8 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
    if (CoreAnalyticsLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BC423C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTRSetupPayloadClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MatterLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MatterLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7548868;
    v7 = 0;
    MatterLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (MatterLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MTRSetupPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getMTRSetupPayloadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MatterLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MatterLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *HMMMTransportRestrictionToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7548998[a1];
  }
}

__CFString *HMMMUserRestrictionToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7548980[a1];
  }
}

uint64_t HMAccessoryDiagnosticInfoProtoIdsInfoReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMPBMetadataCategoryReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 32) |= 1u;
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
            goto LABEL_37;
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

LABEL_37:
        *(a1 + 16) = v23;
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

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMImmutableSettingsProtoIntegerValueEventReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 1u;
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

id hm_assistantIdentifierWithSalts(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [MEMORY[0x1E696AFB0] hm_deriveUUIDForAssistantFromBaseUUID:a2 withSalts:a3];
  v7 = [v6 UUIDString];

  v8 = 0;
  if (a2 && v7)
  {
    v9 = [@"X-HM://A/" stringByAppendingFormat:@"%@=%@", v5, v7];
    v10 = [v9 hmf_stringWithSmallestEncoding];

    v8 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v10];
  }

  return v8;
}

void sub_19BC48B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMMediaDestinationControllerSupportOptionsAsString(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = &stru_1F0E92498;
    if (a1 >= 8)
    {
      v3 = MEMORY[0x1E696AEC0];
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
      v2 = [v3 stringWithFormat:@"unknown(%@) ", v4];
    }

    v5 = @"HP ";
    if ((v1 & 1) == 0)
    {
      v5 = &stru_1F0E92498;
    }

    v6 = @"HPM ";
    if ((v1 & 2) == 0)
    {
      v6 = &stru_1F0E92498;
    }

    v7 = @"HP+ ";
    if ((v1 & 4) == 0)
    {
      v7 = &stru_1F0E92498;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"< %@%@%@%@%@>", v5, v6, v7, &stru_1F0E92498, v2];
  }

  else
  {
    v8 = @"<None>";
  }

  return v8;
}

id getHomeConfigurationVersion()
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"kHomeConfigurationVersionKey", @"com.apple.homed", &keyExistsAndHasValidFormat);
  if (AppIntegerValue)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = AppIntegerValue;
  }

  v3 = [MEMORY[0x1E696AD98] numberWithLong:v2];

  return v3;
}

void *getAssistantConfigurationVersion()
{
  v0 = HMPreferencesNumberValueForKey(@"kAssistantConfigurationVersionKey");
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F0EFCFB0;
  }

  v3 = v2;

  return v2;
}

void *HMPreferencesNumberValueForKey(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, @"com.apple.homed");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

id getAssistantConfigurationSnapshot()
{
  v0 = getAssistantConfigurationVersion();
  v1 = HMPreferencesNumberValueForKey(@"kAssistantConfigurationNumberOfEntitiesKey");
  v2 = [v1 unsignedIntegerValue];

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%lu", v0, v2 + 1];

  return v3;
}

id getLastSyncedAssistantConfigurationVersion()
{
  v0 = HMPreferencesNumberValueForKey(@"kLastSyncedAssistantConfigurationVersionKey");
  if ([v0 unsignedIntegerValue])
  {
    v1 = v0;
  }

  else
  {
    v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
  }

  v2 = v1;

  return v2;
}

uint64_t HMHomeManagerConfiguredHomesCount()
{
  v0 = HMPreferencesNumberValueForKey(@"HMConfiguredHomesCountStatusKey");
  v1 = [v0 unsignedIntegerValue];

  return v1;
}

id HMHomeManagerCurrentHomeSPIClientIdentifier()
{
  v0 = CFPreferencesCopyAppValue(@"HMCurrentHomeSPIClientIdentifierStatusKey", @"com.apple.homed");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t HMHomeManagerIsDemoModeActive()
{
  v0 = CFPreferencesCopyAppValue(@"demoModeTypeV2", @"com.apple.homed");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;

  if (v2)
  {
    if ([v2 isEqualToString:@"press"])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 isEqualToString:@"retail"];
    }
  }

  else
  {
    v3 = CFPreferencesGetAppBooleanValue(@"kHMDDemoModeStatusKey", @"com.apple.homed", 0) != 0;
  }

  return v3;
}

void runOnMainQueue(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __runOnMainQueue_block_invoke;
  block[3] = &unk_1E754E430;
  v4 = v1;
  v2 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void initializeMappingsAndPaths()
{
  if (initializeMappingsAndPaths_pred != -1)
  {
    dispatch_once(&initializeMappingsAndPaths_pred, &__block_literal_global_25877);
  }
}

id localizationKeyForServiceType(void *a1)
{
  if (a1)
  {
    a1 = [serviceTypeLocalizationKeyMapping objectForKeyedSubscript:a1];
    v1 = vars8;
  }

  return a1;
}

id localizationKeyForCharacteristicType(void *a1)
{
  if (a1)
  {
    a1 = [characteristicTypeLocalizationKeyMapping objectForKeyedSubscript:a1];
    v1 = vars8;
  }

  return a1;
}

id localizationKeyForAccessoryCategoryType(void *a1)
{
  if (a1)
  {
    a1 = [accessoryCategoryLocalizationSingularKeyMapping objectForKeyedSubscript:a1];
    v1 = vars8;
  }

  return a1;
}

id pluralLocalizationKeyForAccessoryCategoryType(void *a1)
{
  if (a1)
  {
    a1 = [accessoryCategoryLocalizationPluralKeyMapping objectForKeyedSubscript:a1];
    v1 = vars8;
  }

  return a1;
}

id HMCacheSubdirectoryWithRelativePath(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 URLsForDirectory:13 inDomains:1];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        buf[0] = 0;
        v10 = [v9 path];
        v11 = [v10 stringByAppendingPathComponent:v1];

        v12 = [MEMORY[0x1E696AC08] defaultManager];
        v13 = [v12 fileExistsAtPath:v11 isDirectory:buf];
        v14 = buf[0];

        if (v13 && (v14 & 1) != 0)
        {
          v16 = v4;
          goto LABEL_17;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v4 firstObject];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 path];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v20;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_FAULT, "%{public}@Failed to determine HomeKit cache directory; falling back to a temporary directory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = NSTemporaryDirectory();
  }

  v21 = v17;
  v11 = [v17 stringByAppendingPathComponent:{v1, v24}];

LABEL_17:
  v22 = *MEMORY[0x1E69E9840];

  return v11;
}

id HMCreateHomeKitCacheDirectory()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = HMCacheSubdirectoryWithRelativePath(@"com.apple.HomeKit");
  v1 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v2 = [v1 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v10];
  v3 = v10;

  if (v2)
  {
    v4 = v0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v0;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HomeKit cache directory %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

id HMConfigurationsCacheDirectory()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEC0];
  v7[0] = @"com.apple.HomeKit";
  v1 = HMClientScopedHomeKitCacheDirectoryName();
  v7[1] = v1;
  v7[2] = @"com.apple.HomeKit.configurations";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v3 = [v0 pathWithComponents:{v2, v7[0]}];

  v4 = HMCacheSubdirectoryWithRelativePath(v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id HMClientScopedHomeKitCacheDirectoryName()
{
  v0 = [MEMORY[0x1E69A2A50] processInfo];
  v1 = [v0 applicationIdentifier];
  if (v1 || ([v0 name], (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = v1;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v0, "identifier")}];
    v2 = [v4 stringValue];
  }

  return v2;
}

id HMCreateConfigurationsCacheDirectory()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = HMClientScopedHomeKitCacheDirectoryName();
  v5[0] = v0;
  v5[1] = @"com.apple.HomeKit.configurations";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = HMCreateHomeKitCacheSubdirectoryWithRelativePathComponents(v1);

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id HMCreateHomeKitCacheSubdirectoryWithRelativePathComponents(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (![v1 count])
  {
    _HMFPreconditionFailure();
  }

  v2 = HMCacheSubdirectoryWithRelativePath(@"com.apple.HomeKit");
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v2 stringByDeletingLastPathComponent];
  v5 = [v3 isWritableFileAtPath:v4];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v43 = 0;
  v7 = [v6 createDirectoryAtPath:v2 withIntermediateDirectories:0 attributes:0 error:&v43];
  v8 = v43;

  if ((v7 & 1) == 0)
  {
    v32 = [v8 domain];
    if ([v32 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v33 = [v8 code];

      if (v33 == 516)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v34 = objc_autoreleasePoolPush();
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543874;
      v45 = v36;
      v46 = 2112;
      v47 = v2;
      v48 = 2112;
      v49 = v8;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HomeKit cache directory %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
    v23 = 0;
    v14 = @"com.apple.HomeKit";
    goto LABEL_23;
  }

LABEL_4:

LABEL_5:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = v1;
  v9 = v1;
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    v13 = *MEMORY[0x1E696A250];
    v14 = @"com.apple.HomeKit";
    while (2)
    {
      v15 = 0;
      v16 = v2;
      v17 = v14;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(__CFString *)v17 stringByAppendingPathComponent:*(*(&v39 + 1) + 8 * v15), v37];

        v2 = HMCacheSubdirectoryWithRelativePath(v14);

        v18 = [MEMORY[0x1E696AC08] defaultManager];
        v38 = 0;
        v19 = [v18 createDirectoryAtPath:v2 withIntermediateDirectories:0 attributes:0 error:&v38];
        v20 = v38;

        if ((v19 & 1) == 0)
        {
          v21 = [v20 domain];
          if (([v21 isEqualToString:v13] & 1) == 0)
          {

LABEL_19:
            v24 = objc_autoreleasePoolPush();
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = HMFGetLogIdentifier();
              v27 = [v20 code];
              v28 = [v20 userInfo];
              v29 = [v28 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
              *buf = 138544130;
              v45 = v26;
              v46 = 2112;
              v47 = v2;
              v48 = 2048;
              v49 = v27;
              v50 = 2112;
              v51 = v29;
              _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HomeKit cache subdirectory %@: %ld, %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v24);
            v23 = 0;
            goto LABEL_22;
          }

          v22 = [v20 code];

          if (v22 != 516)
          {
            goto LABEL_19;
          }
        }

        ++v15;
        v16 = v2;
        v17 = v14;
      }

      while (v11 != v15);
      v11 = [v9 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = @"com.apple.HomeKit";
  }

  v2 = v2;
  v23 = v2;
LABEL_22:
  v1 = v37;
LABEL_23:

  v30 = *MEMORY[0x1E69E9840];

  return v23;
}

id HMFrameworkCacheDirectory()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEC0];
  v7[0] = @"com.apple.HomeKit";
  v1 = HMClientScopedHomeKitCacheDirectoryName();
  v7[1] = v1;
  v7[2] = @"com.apple.HomeKit.HMCache";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v3 = [v0 pathWithComponents:{v2, v7[0]}];

  v4 = HMCacheSubdirectoryWithRelativePath(v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id HMCreateFrameworkCacheDirectory()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = HMClientScopedHomeKitCacheDirectoryName();
  v5[0] = v0;
  v5[1] = @"com.apple.HomeKit.HMCache";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = HMCreateHomeKitCacheSubdirectoryWithRelativePathComponents(v1);

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id HMSoftwareUpdateCacheDirectory()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEC0];
  v7[0] = @"com.apple.HomeKit";
  v1 = HMClientScopedHomeKitCacheDirectoryName();
  v7[1] = v1;
  v7[2] = @"com.apple.HomeKit.SoftwareUpdate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v3 = [v0 pathWithComponents:{v2, v7[0]}];

  v4 = HMCacheSubdirectoryWithRelativePath(v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id HMCreateSoftwareUpdateCacheDirectory()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = HMClientScopedHomeKitCacheDirectoryName();
  v5[0] = v0;
  v5[1] = @"com.apple.HomeKit.SoftwareUpdate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = HMCreateHomeKitCacheSubdirectoryWithRelativePathComponents(v1);

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id allowedCharValueTypes()
{
  if (allowedCharValueTypes_onceToken != -1)
  {
    dispatch_once(&allowedCharValueTypes_onceToken, &__block_literal_global_58);
  }

  v1 = allowedCharValueTypes_charValueTypes;

  return v1;
}

void __allowedCharValueTypes_block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = allowedCharValueTypes_charValueTypes;
  allowedCharValueTypes_charValueTypes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t isAllowedCharType(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = allowedCharValueTypes();
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = *v11;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v10 + 1) + 8 * v5);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            goto LABEL_12;
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

  else
  {
LABEL_12:
    v7 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19BC56738(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19BC566ECLL);
  }

  _Unwind_Resume(a1);
}

BOOL HMAreStringsEqualIgnoringCase(__CFString *a1, __CFString *a2)
{
  if (!a1)
  {
    a1 = &stru_1F0E92498;
  }

  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = &stru_1F0E92498;
  }

  return [(__CFString *)a1 caseInsensitiveCompare:v2]== 0;
}

id HMTimedRotatedUUID(id a1, void *a2, unint64_t a3, void *a4)
{
  v4 = a1;
  if (a1)
  {
    if (a3 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3;
    }

    v7 = a2;
    v8 = v4;
    [a4 timeIntervalSince1970];
    v15 = (v9 * 1000.0) / (86400000 * v6);
    v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v7, "length") + 8}];
    v11 = [v7 dataUsingEncoding:4];

    [v10 appendData:v11];
    [v10 appendBytes:&v15 length:8];
    v12 = MEMORY[0x1E696AFB0];
    v13 = [v8 copy];

    v4 = [v12 hmf_UUIDWithNamespace:v13 data:v10];
  }

  return v4;
}

id HMDailyRotatedUUID(void *a1)
{
  v1 = MEMORY[0x1E695DF00];
  v2 = a1;
  v3 = [v1 now];
  v4 = HMTimedRotatedUUID(v2, @"0259F789-5C52-4436-85CF-9EC109813484", 1uLL, v3);

  return v4;
}

id HMGenerateDecimalDigitPasswordWithLength(uint64_t a1, void *a2)
{
  v3 = SecPasswordCreateWithRandomDigits();
  v4 = v3;
  if (a2 && !v3)
  {
    *a2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52 description:0 reason:0 suggestion:0 underlyingError:0];
  }

  return v4;
}

uint64_t HMMaxLengthForNaming()
{
  if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
  {
    dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
  }

  return HMMaxLengthForNaming__hmf_once_v9;
}

void __HMMaxLengthForNaming_block_invoke()
{
  v2 = [MEMORY[0x1E69A2A40] sharedPreferences];
  v0 = [v2 preferenceForKey:@"maxLengthForNaming"];
  v1 = [v0 numberValue];
  HMMaxLengthForNaming__hmf_once_v9 = [v1 unsignedIntValue];
}

void HMDispatchToContextQueueIfNotNil(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [v6 queue];
    dispatch_async(v8, v7);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to dispatch to context queue due to nil context", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

id HMTransientIdentifier()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  MEMORY[0x19EAEC2D0](v3);
  LODWORD(v3[0]) = -1431655766;
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v3];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

id HMExceptionForError(void *a1)
{
  v1 = a1;
  if ([v1 isHMError])
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D940];
    v4 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:{objc_msgSend(v1, "code")}];
    v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];

    return v5;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __HMIsCurrentProcessAnExtension_block_invoke(v7);
  }
}

void __HMIsCurrentProcessAnExtension_block_invoke()
{
  v2 = [MEMORY[0x1E69C75D0] currentProcess];
  v0 = [v2 bundle];
  v1 = [v0 extensionPointIdentifier];
  HMIsCurrentProcessAnExtension_isCurrentProcessAnExtension = v1 != 0;
}

id HMAccessoryUUIDsAsStringForAccessories(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) uuid];
        v10 = [v9 UUIDString];

        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  objc_autoreleasePoolPop(v2);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id HMDateFromDateWithHourAndMinuteComponents(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DEE8];
  v6 = *MEMORY[0x1E695D850];
  v7 = a1;
  v8 = [v5 calendarWithIdentifier:v6];
  v9 = [v8 components:28 fromDate:v7];

  [v9 setHour:a2];
  [v9 setMinute:a3];
  [v9 setSecond:0];
  v10 = [v8 dateFromComponents:v9];

  return v10;
}

id HMDateComponentFromSecondsOfDay(void *a1)
{
  v1 = MEMORY[0x1E695DF10];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 integerValue];

  [v3 setValue:v4 / 0xE10 forComponent:32];
  [v3 setValue:v4 % 0xE10 / 0x3C forComponent:64];

  return v3;
}

id HMSecondsFromDateComponent(void *a1)
{
  v1 = a1;
  if ([v1 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = 3600 * [v1 hour];
  }

  if ([v1 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = 60 * [v1 minute];
  }

  if ([v1 second] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v1 second];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3 + v2 + v4];

  return v5;
}

id HMMatterScheduleIntervalFromStartAndEndDates(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DEE8];
  v5 = a1;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:96 fromDate:v3];

  if ([v7 hour] == 23 && objc_msgSend(v7, "minute") == 59)
  {
    [v3 timeIntervalSince1970];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:(60 * (v8 / 60) + 60)];

    v3 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v3];

  return v10;
}

id encodeRootObject(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeObject:v1 forKey:*MEMORY[0x1E696A508]];
  [v3 finishEncoding];
  v4 = [v3 encodedData];

  objc_autoreleasePoolPop(v2);

  return v4;
}

double HMDSecureClassBulletinUserAttributionTime()
{
  if (HMDSecureClassBulletinUserAttributionTime__hmf_once_t15 != -1)
  {
    dispatch_once(&HMDSecureClassBulletinUserAttributionTime__hmf_once_t15, &__block_literal_global_195);
  }

  return *&HMDSecureClassBulletinUserAttributionTime__hmf_once_v16;
}

void __HMDSecureClassBulletinUserAttributionTime_block_invoke()
{
  v3 = [MEMORY[0x1E69A2A40] sharedPreferences];
  v0 = [v3 preferenceForKey:@"HMDSecureClassBulletinUserAttributionTime"];
  v1 = [v0 numberValue];
  [v1 doubleValue];
  HMDSecureClassBulletinUserAttributionTime__hmf_once_v16 = v2;
}

id HMAllowedClassesForMatterCommand()
{
  if (HMAllowedClassesForMatterCommand__hmf_once_t17 != -1)
  {
    dispatch_once(&HMAllowedClassesForMatterCommand__hmf_once_t17, &__block_literal_global_197);
  }

  v1 = HMAllowedClassesForMatterCommand__hmf_once_v18;

  return v1;
}

uint64_t __HMAllowedClassesForMatterCommand_block_invoke()
{
  v0 = MEMORY[0x1E695DEC8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v0 arrayWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = HMAllowedClassesForMatterCommand__hmf_once_v18;
  HMAllowedClassesForMatterCommand__hmf_once_v18 = v8;

  return MEMORY[0x1EEE66BB8](v8, v9);
}

uint64_t isRestoreSupportedForCharacteristic(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isRestoreSupportedForCharacteristic_onceToken != -1)
    {
      dispatch_once(&isRestoreSupportedForCharacteristic_onceToken, &__block_literal_global_26247);
    }

    v2 = [isRestoreSupportedForCharacteristic_supportedRestoreCharacteristics containsObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __isRestoreSupportedForCharacteristic_block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"00000025-0000-1000-8000-0026BB765291";
  v3[1] = @"000000B0-0000-1000-8000-0026BB765291";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = isRestoreSupportedForCharacteristic_supportedRestoreCharacteristics;
  isRestoreSupportedForCharacteristic_supportedRestoreCharacteristics = v0;

  v2 = *MEMORY[0x1E69E9840];
}

id HMAccessoryInfoOptionsAsString(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"WiFi"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Account"];
  if ((a1 & 4) != 0)
  {
LABEL_4:
    [v3 addObject:@"Primary User"];
  }

LABEL_5:
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"<%@>", v5];

  return v6;
}

id HMAccessoryInfoEventTopicsFromOption(char a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  if (a1)
  {
    v10 = [HMAccessoryEventTopic topicFromSuffixID:504 homeUUID:v5 accessoryUUID:v6];
    [v7 addObject:v10];

    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = [HMAccessoryEventTopic topicFromSuffixID:510 homeUUID:v5 accessoryUUID:v6];
  [v7 addObject:v11];

  if ((a1 & 4) != 0)
  {
LABEL_4:
    v8 = [HMAccessoryEventTopic topicFromSuffixID:503 homeUUID:v5 accessoryUUID:v6];
    [v7 addObject:v8];
  }

LABEL_5:

  return v7;
}

void sub_19BC5DEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC5E644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMAccessoryCurrentNetworkProtectionModeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E75490B8[a1 - 1];
  }

  return v2;
}

__CFString *HMAccessoryNetworkProtectionModeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 3)
    {
      v2 = @"Open";
    }

    else if (a1 == 1)
    {
      v2 = @"HomeKit Only";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
    }
  }

  else
  {
    v2 = @"Auto";
  }

  return v2;
}

__CFString *HMAccessoryWiFiCredentialTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E75490D8[a1];
  }

  return v2;
}

uint64_t UIKitLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = UIKitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__27018(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BC60AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSDocumentTypeDocumentAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSDocumentTypeDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSDocumentTypeDocumentAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibrary()
{
  v0 = UIKitLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getNSPlainTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSPlainTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSPlainTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSCharacterEncodingDocumentAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSCharacterEncodingDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t SoftwareUpdateV2ErrorCodeFromSUControllerErrorCode(unint64_t result)
{
  if (result > 0x3B)
  {
    return -1;
  }

  return result;
}

void sub_19BC653D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMProtoResidentCapabilitiesReadFrom(uint64_t a1, void *a2)
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
      v265 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v265 & 0x7F) << v6;
      if ((v265 & 0x80) == 0)
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
        v14 = PBReaderReadString();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;

        continue;
      case 4u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 60) |= 0x400uLL;
        while (1)
        {
          v265 = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v265 & 0x7F) << v150;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_436;
          }
        }

        v23 = (v152 != 0) & ~[a2 hasError];
LABEL_436:
        v264 = 26;
        goto LABEL_473;
      case 5u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 60) |= 0x20000000uLL;
        while (1)
        {
          v265 = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            v149 = [a2 data];
            [v149 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v265 & 0x7F) << v144;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v12 = v145++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_434;
          }
        }

        v23 = (v146 != 0) & ~[a2 hasError];
LABEL_434:
        v264 = 45;
        goto LABEL_473;
      case 6u:
        v198 = 0;
        v199 = 0;
        v200 = 0;
        *(a1 + 60) |= 0x40000000uLL;
        while (1)
        {
          v265 = 0;
          v201 = [a2 position] + 1;
          if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 1, v202 <= objc_msgSend(a2, "length")))
          {
            v203 = [a2 data];
            [v203 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v200 |= (v265 & 0x7F) << v198;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v198 += 7;
          v12 = v199++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_452;
          }
        }

        v23 = (v200 != 0) & ~[a2 hasError];
LABEL_452:
        v264 = 46;
        goto LABEL_473;
      case 7u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 60) |= 0x400000uLL;
        while (1)
        {
          v265 = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v265 & 0x7F) << v126;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_428;
          }
        }

        v23 = (v128 != 0) & ~[a2 hasError];
LABEL_428:
        v264 = 38;
        goto LABEL_473;
      case 8u:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 60) |= 0x1000uLL;
        while (1)
        {
          v265 = 0;
          v189 = [a2 position] + 1;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
          {
            v191 = [a2 data];
            [v191 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v188 |= (v265 & 0x7F) << v186;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v12 = v187++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_448;
          }
        }

        v23 = (v188 != 0) & ~[a2 hasError];
LABEL_448:
        v264 = 28;
        goto LABEL_473;
      case 9u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 60) |= 0x20000uLL;
        while (1)
        {
          v265 = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            v119 = [a2 data];
            [v119 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v265 & 0x7F) << v114;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v12 = v115++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_424;
          }
        }

        v23 = (v116 != 0) & ~[a2 hasError];
LABEL_424:
        v264 = 33;
        goto LABEL_473;
      case 0xAu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 60) |= 0x2000000uLL;
        while (1)
        {
          v265 = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v265 & 0x7F) << v120;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_426;
          }
        }

        v23 = (v122 != 0) & ~[a2 hasError];
LABEL_426:
        v264 = 41;
        goto LABEL_473;
      case 0xBu:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 60) |= 0x100uLL;
        while (1)
        {
          v265 = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v265 & 0x7F) << v162;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_440;
          }
        }

        v23 = (v164 != 0) & ~[a2 hasError];
LABEL_440:
        v264 = 24;
        goto LABEL_473;
      case 0xCu:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 60) |= 0x10000uLL;
        while (1)
        {
          v265 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v265 & 0x7F) << v156;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_438;
          }
        }

        v23 = (v158 != 0) & ~[a2 hasError];
LABEL_438:
        v264 = 32;
        goto LABEL_473;
      case 0xDu:
        v216 = 0;
        v217 = 0;
        v218 = 0;
        *(a1 + 60) |= 0x800000uLL;
        while (1)
        {
          v265 = 0;
          v219 = [a2 position] + 1;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
          {
            v221 = [a2 data];
            [v221 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v218 |= (v265 & 0x7F) << v216;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v216 += 7;
          v12 = v217++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_458;
          }
        }

        v23 = (v218 != 0) & ~[a2 hasError];
LABEL_458:
        v264 = 39;
        goto LABEL_473;
      case 0xEu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 60) |= 0x800uLL;
        while (1)
        {
          v265 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v265 & 0x7F) << v84;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_414;
          }
        }

        v23 = (v86 != 0) & ~[a2 hasError];
LABEL_414:
        v264 = 27;
        goto LABEL_473;
      case 0xFu:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 60) |= 0x40uLL;
        while (1)
        {
          v265 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v265 & 0x7F) << v72;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_410;
          }
        }

        v23 = (v74 != 0) & ~[a2 hasError];
LABEL_410:
        v264 = 22;
        goto LABEL_473;
      case 0x10u:
        v228 = 0;
        v229 = 0;
        v230 = 0;
        *(a1 + 60) |= 0x800000000uLL;
        while (1)
        {
          v265 = 0;
          v231 = [a2 position] + 1;
          if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 1, v232 <= objc_msgSend(a2, "length")))
          {
            v233 = [a2 data];
            [v233 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v230 |= (v265 & 0x7F) << v228;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v228 += 7;
          v12 = v229++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_462;
          }
        }

        v23 = (v230 != 0) & ~[a2 hasError];
LABEL_462:
        v264 = 51;
        goto LABEL_473;
      case 0x11u:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        *(a1 + 60) |= 0x80000uLL;
        while (1)
        {
          v265 = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            v173 = [a2 data];
            [v173 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (v265 & 0x7F) << v168;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_442;
          }
        }

        v23 = (v170 != 0) & ~[a2 hasError];
LABEL_442:
        v264 = 35;
        goto LABEL_473;
      case 0x12u:
        v174 = 0;
        v175 = 0;
        v176 = 0;
        *(a1 + 60) |= 0x1000000000uLL;
        while (1)
        {
          v265 = 0;
          v177 = [a2 position] + 1;
          if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
          {
            v179 = [a2 data];
            [v179 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v176 |= (v265 & 0x7F) << v174;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v174 += 7;
          v12 = v175++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_444;
          }
        }

        v23 = (v176 != 0) & ~[a2 hasError];
LABEL_444:
        v264 = 52;
        goto LABEL_473;
      case 0x13u:
        v222 = 0;
        v223 = 0;
        v224 = 0;
        *(a1 + 60) |= 0x200uLL;
        while (1)
        {
          v265 = 0;
          v225 = [a2 position] + 1;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
          {
            v227 = [a2 data];
            [v227 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v224 |= (v265 & 0x7F) << v222;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v222 += 7;
          v12 = v223++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_460;
          }
        }

        v23 = (v224 != 0) & ~[a2 hasError];
LABEL_460:
        v264 = 25;
        goto LABEL_473;
      case 0x14u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        *(a1 + 60) |= 0x20uLL;
        while (1)
        {
          v265 = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            v209 = [a2 data];
            [v209 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v265 & 0x7F) << v204;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v12 = v205++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_454;
          }
        }

        v23 = (v206 != 0) & ~[a2 hasError];
LABEL_454:
        v264 = 21;
        goto LABEL_473;
      case 0x15u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 60) |= 0x80uLL;
        while (1)
        {
          v265 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v265 & 0x7F) << v36;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_398;
          }
        }

        v23 = (v38 != 0) & ~[a2 hasError];
LABEL_398:
        v264 = 23;
        goto LABEL_473;
      case 0x16u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 60) |= 0x100000000uLL;
        while (1)
        {
          v265 = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v265 & 0x7F) << v96;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v12 = v97++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_418;
          }
        }

        v23 = (v98 != 0) & ~[a2 hasError];
LABEL_418:
        v264 = 48;
        goto LABEL_473;
      case 0x17u:
        v234 = 0;
        v235 = 0;
        v236 = 0;
        *(a1 + 60) |= 0x80000000uLL;
        while (1)
        {
          v265 = 0;
          v237 = [a2 position] + 1;
          if (v237 >= [a2 position] && (v238 = objc_msgSend(a2, "position") + 1, v238 <= objc_msgSend(a2, "length")))
          {
            v239 = [a2 data];
            [v239 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v236 |= (v265 & 0x7F) << v234;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v234 += 7;
          v12 = v235++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_464;
          }
        }

        v23 = (v236 != 0) & ~[a2 hasError];
LABEL_464:
        v264 = 47;
        goto LABEL_473;
      case 0x18u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 60) |= 0x2000uLL;
        while (1)
        {
          v265 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v265 & 0x7F) << v42;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_400;
          }
        }

        v23 = (v44 != 0) & ~[a2 hasError];
LABEL_400:
        v264 = 29;
        goto LABEL_473;
      case 0x19u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 60) |= 0x400000000uLL;
        while (1)
        {
          v265 = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v265 & 0x7F) << v90;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_416;
          }
        }

        v23 = (v92 != 0) & ~[a2 hasError];
LABEL_416:
        v264 = 50;
        goto LABEL_473;
      case 0x1Au:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 60) |= 0x40000uLL;
        while (1)
        {
          v265 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v265 & 0x7F) << v54;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_404;
          }
        }

        v23 = (v56 != 0) & ~[a2 hasError];
LABEL_404:
        v264 = 34;
        goto LABEL_473;
      case 0x1Bu:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 60) |= 0x4000000uLL;
        while (1)
        {
          v265 = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (v265 & 0x7F) << v132;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v12 = v133++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_430;
          }
        }

        v23 = (v134 != 0) & ~[a2 hasError];
LABEL_430:
        v264 = 42;
        goto LABEL_473;
      case 0x1Cu:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 60) |= 0x200000000uLL;
        while (1)
        {
          v265 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v265 & 0x7F) << v48;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_402;
          }
        }

        v23 = (v50 != 0) & ~[a2 hasError];
LABEL_402:
        v264 = 49;
        goto LABEL_473;
      case 0x1Du:
        v246 = 0;
        v247 = 0;
        v248 = 0;
        *(a1 + 60) |= 4uLL;
        while (1)
        {
          v265 = 0;
          v249 = [a2 position] + 1;
          if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
          {
            v251 = [a2 data];
            [v251 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v248 |= (v265 & 0x7F) << v246;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v246 += 7;
          v12 = v247++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_468;
          }
        }

        v23 = (v248 != 0) & ~[a2 hasError];
LABEL_468:
        v264 = 18;
        goto LABEL_473;
      case 0x1Eu:
        v240 = 0;
        v241 = 0;
        v242 = 0;
        *(a1 + 60) |= 0x8000uLL;
        while (1)
        {
          v265 = 0;
          v243 = [a2 position] + 1;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 1, v244 <= objc_msgSend(a2, "length")))
          {
            v245 = [a2 data];
            [v245 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v242 |= (v265 & 0x7F) << v240;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v12 = v241++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_466;
          }
        }

        v23 = (v242 != 0) & ~[a2 hasError];
LABEL_466:
        v264 = 31;
        goto LABEL_473;
      case 0x1Fu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 60) |= 0x200000uLL;
        while (1)
        {
          v265 = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v265 & 0x7F) << v66;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_408;
          }
        }

        v23 = (v68 != 0) & ~[a2 hasError];
LABEL_408:
        v264 = 37;
        goto LABEL_473;
      case 0x20u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 60) |= 0x4000uLL;
        while (1)
        {
          v265 = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v265 & 0x7F) << v102;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_420;
          }
        }

        v23 = (v104 != 0) & ~[a2 hasError];
LABEL_420:
        v264 = 30;
        goto LABEL_473;
      case 0x21u:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 60) |= 0x1000000uLL;
        while (1)
        {
          v265 = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            v185 = [a2 data];
            [v185 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v265 & 0x7F) << v180;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_446;
          }
        }

        v23 = (v182 != 0) & ~[a2 hasError];
LABEL_446:
        v264 = 40;
        goto LABEL_473;
      case 0x22u:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 60) |= 0x10uLL;
        while (1)
        {
          v265 = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v265 & 0x7F) << v108;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v12 = v109++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_422;
          }
        }

        v23 = (v110 != 0) & ~[a2 hasError];
LABEL_422:
        v264 = 20;
        goto LABEL_473;
      case 0x23u:
        v258 = 0;
        v259 = 0;
        v260 = 0;
        *(a1 + 60) |= 0x10000000uLL;
        while (1)
        {
          v265 = 0;
          v261 = [a2 position] + 1;
          if (v261 >= [a2 position] && (v262 = objc_msgSend(a2, "position") + 1, v262 <= objc_msgSend(a2, "length")))
          {
            v263 = [a2 data];
            [v263 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v260 |= (v265 & 0x7F) << v258;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v258 += 7;
          v12 = v259++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_472;
          }
        }

        v23 = (v260 != 0) & ~[a2 hasError];
LABEL_472:
        v264 = 44;
        goto LABEL_473;
      case 0x24u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 60) |= 0x100000uLL;
        while (1)
        {
          v265 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v265 & 0x7F) << v60;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_406;
          }
        }

        v23 = (v62 != 0) & ~[a2 hasError];
LABEL_406:
        v264 = 36;
        goto LABEL_473;
      case 0x25u:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(a1 + 60) |= 0x2000000000uLL;
        while (1)
        {
          v265 = 0;
          v213 = [a2 position] + 1;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
          {
            v215 = [a2 data];
            [v215 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v212 |= (v265 & 0x7F) << v210;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v12 = v211++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_456;
          }
        }

        v23 = (v212 != 0) & ~[a2 hasError];
LABEL_456:
        v264 = 53;
        goto LABEL_473;
      case 0x26u:
        v252 = 0;
        v253 = 0;
        v254 = 0;
        *(a1 + 60) |= 0x8000000uLL;
        while (1)
        {
          v265 = 0;
          v255 = [a2 position] + 1;
          if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 1, v256 <= objc_msgSend(a2, "length")))
          {
            v257 = [a2 data];
            [v257 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v254 |= (v265 & 0x7F) << v252;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v252 += 7;
          v12 = v253++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_470;
          }
        }

        v23 = (v254 != 0) & ~[a2 hasError];
LABEL_470:
        v264 = 43;
        goto LABEL_473;
      case 0x27u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 60) |= 8uLL;
        while (1)
        {
          v265 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v265 & 0x7F) << v30;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_396;
          }
        }

        v23 = (v32 != 0) & ~[a2 hasError];
LABEL_396:
        v264 = 19;
        goto LABEL_473;
      case 0x28u:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        *(a1 + 60) |= 2uLL;
        while (1)
        {
          v265 = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            v197 = [a2 data];
            [v197 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v194 |= (v265 & 0x7F) << v192;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v192 += 7;
          v12 = v193++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_450;
          }
        }

        v23 = (v194 != 0) & ~[a2 hasError];
LABEL_450:
        v264 = 17;
        goto LABEL_473;
      case 0x29u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 60) |= 0x10000000000uLL;
        while (1)
        {
          v265 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v265 & 0x7F) << v24;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_394;
          }
        }

        v23 = (v26 != 0) & ~[a2 hasError];
LABEL_394:
        v264 = 56;
        goto LABEL_473;
      case 0x2Au:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 60) |= 0x8000000000uLL;
        while (1)
        {
          v265 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v265 & 0x7F) << v17;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_392;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_392:
        v264 = 55;
        goto LABEL_473;
      case 0x2Bu:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 60) |= 0x4000000000uLL;
        while (1)
        {
          v265 = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v265 & 0x7F) << v78;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_412;
          }
        }

        v23 = (v80 != 0) & ~[a2 hasError];
LABEL_412:
        v264 = 54;
        goto LABEL_473;
      case 0x2Cu:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 60) |= 1uLL;
        break;
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
      v265 = 0;
      v141 = [a2 position] + 1;
      if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
      {
        v143 = [a2 data];
        [v143 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v140 |= (v265 & 0x7F) << v138;
      if ((v265 & 0x80) == 0)
      {
        break;
      }

      v138 += 7;
      v12 = v139++ >= 9;
      if (v12)
      {
        LOBYTE(v23) = 0;
        goto LABEL_432;
      }
    }

    v23 = (v140 != 0) & ~[a2 hasError];
LABEL_432:
    v264 = 16;
LABEL_473:
    *(a1 + v264) = v23;
  }

  return [a2 hasError] ^ 1;
}