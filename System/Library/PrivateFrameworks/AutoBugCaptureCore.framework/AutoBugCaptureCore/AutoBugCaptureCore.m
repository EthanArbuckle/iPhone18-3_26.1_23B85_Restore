id casemanagementLogHandle()
{
  if (casemanagementLogHandle_casemanagementPred != -1)
  {
    casemanagementLogHandle_cold_1();
  }

  v1 = casemanagementLogHandle_casemanagementHandle;

  return v1;
}

id objectanalyticsHandle()
{
  if (objectanalyticsHandle_analyticsHandlePred != -1)
  {
    objectanalyticsHandle_cold_1();
  }

  v1 = objectanalyticsHandle_analyticsHandle;

  return v1;
}

uint64_t __objectanalyticsHandle_block_invoke()
{
  objectanalyticsHandle_analyticsHandle = os_log_create("com.apple.symptomsframework", "objectanalytics");

  return MEMORY[0x2821F96F8]();
}

uint64_t assembleFullName(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    if (![(__CFString *)v6 isAbsolutePath])
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = @"/var/wireless/Library/Databases/Symptoms";
  }

  if (!v5)
  {
    v5 = @"SymptomAnalytics";
  }

  v9 = [(__CFString *)v7 stringByAppendingPathComponent:v5];
  *a3 = [v9 stringByAppendingPathExtension:@"sqlite"];

  v8 = 1;
LABEL_8:

  return v8;
}

uint64_t isDBFileCorrupted(void *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 domain];
  v5 = *MEMORY[0x277CBE2C8];
  if ([v4 isEqualToString:*MEMORY[0x277CBE2C8]])
  {
    v6 = [v3 code] == 11 || objc_msgSend(v3, "code") == 26;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 userInfo];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 intValue] == 11 || objc_msgSend(v8, "intValue") == 26;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 domain];
  if ([v10 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v11 = [v3 code] == 259;
  }

  else
  {
    v12 = [v3 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA5B8]])
    {
      v11 = [v3 code] == 259;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v6 || v9 || v11)
  {
    v16 = objectanalyticsHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "Confirming file corruption based on error: %@", &v19, 0xCu);
    }

    v15 = 1;
  }

  else
  {
    v13 = [v3 userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (a2 <= 5)
      {
        v15 = isDBFileCorrupted(v14, (a2 + 1));
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t ABCPbSigResponseReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
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
        break;
      }

      if (v13 == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v41 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v41 & 0x7F) << v28;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_58;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_58:
        v38 = 12;
LABEL_65:
        *(a1 + v38) = v27;
        goto LABEL_66;
      }

      if (v13 == 4)
      {
        v34 = PBReaderReadString();
        v35 = 24;
LABEL_52:
        v36 = *(a1 + v35);
        *(a1 + v35) = v34;

        goto LABEL_66;
      }

      if (v13 != 10)
      {
        goto LABEL_53;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        v43 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v43 & 0x7F) << v14;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_60;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_60:
      *(a1 + 32) = v20;
LABEL_66:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
LABEL_53:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_66;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v42 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v42 & 0x7F) << v21;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_64;
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

LABEL_64:
      v38 = 8;
      goto LABEL_65;
    }

    v34 = PBReaderReadString();
    v35 = 16;
    goto LABEL_52;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSymptomsSignificantOperationalEventReadFrom(uint64_t a1, void *a2)
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
        v53 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
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
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v54 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v54 & 0x7F) << v24;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_79;
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

LABEL_79:
          v50 = 16;
LABEL_88:
          *(a1 + v50) = v30;
          goto LABEL_98;
        }

        if (v13 == 2)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 56) |= 8u;
          while (1)
          {
            v57 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v57 & 0x7F) << v44;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_96;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v46;
          }

LABEL_96:
          v51 = 48;
          goto LABEL_97;
        }

        if (v13 != 3)
        {
          goto LABEL_47;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 > 5)
        {
          if (v13 != 6)
          {
            if (v13 != 7)
            {
LABEL_47:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_98;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              v55 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v55 & 0x7F) << v17;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_92;
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

LABEL_92:
            v51 = 52;
            goto LABEL_97;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            v58 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v58 & 0x7F) << v38;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v40;
          }

LABEL_87:
          v50 = 8;
          goto LABEL_88;
        }

        if (v13 == 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v56 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v56 & 0x7F) << v32;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v34;
          }

LABEL_83:
          v51 = 32;
LABEL_97:
          *(a1 + v51) = v23;
          goto LABEL_98;
        }

        if (v13 != 5)
        {
          goto LABEL_47;
        }

        v14 = PBReaderReadString();
        v15 = 40;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_98:
      v52 = [a2 position];
    }

    while (v52 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ABCPbSummarySubmitResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___ABCPbSummarySubmitResponse__message;
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

    v13 = &OBJC_IVAR___ABCPbSummarySubmitResponse__status;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSymptomsDiagnosticIncidentEventReadFrom(uint64_t a1, void *a2)
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
        v53 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
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
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 60) |= 8u;
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

              v44 |= (v57 & 0x7F) << v42;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
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
              v20 = v44;
            }

LABEL_86:
            v51 = 52;
          }

          else
          {
            if (v13 != 6)
            {
              goto LABEL_77;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              v56 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v56 & 0x7F) << v21;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_94;
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

LABEL_94:
            v51 = 48;
          }

LABEL_95:
          *(a1 + v51) = v20;
          goto LABEL_101;
        }

        if (v13 == 7)
        {
          v34 = PBReaderReadString();
          v35 = 24;
        }

        else
        {
          if (v13 != 8)
          {
LABEL_77:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_101;
          }

          v34 = PBReaderReadString();
          v35 = 32;
        }
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              v55 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v55 & 0x7F) << v36;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v38;
            }

LABEL_82:
            v50 = 8;
LABEL_100:
            *(a1 + v50) = v33;
            goto LABEL_101;
          }

          if (v13 != 2)
          {
            goto LABEL_77;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 60) |= 0x10u;
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
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_90;
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

LABEL_90:
          v51 = 56;
          goto LABEL_95;
        }

        if (v13 != 3)
        {
          if (v13 != 4)
          {
            goto LABEL_77;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v54 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v54 & 0x7F) << v27;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v33 = 0;
              goto LABEL_99;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v29;
          }

LABEL_99:
          v50 = 16;
          goto LABEL_100;
        }

        v34 = PBReaderReadString();
        v35 = 40;
      }

      v48 = *(a1 + v35);
      *(a1 + v35) = v34;

LABEL_101:
      v52 = [a2 position];
    }

    while (v52 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSymptomsDiagnosticIncidentReportReadFrom(_BYTE *a1, void *a2)
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
      LOBYTE(v66) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v66 & 0x7F) << v5;
      if ((v66 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        a1[152] |= 2u;
        while (1)
        {
          LOBYTE(v66) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v66 & 0x7F) << v13;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_110:
            v57 = 40;
            goto LABEL_111;
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

        goto LABEL_110;
      case 2u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        a1[152] |= 0x10u;
        while (1)
        {
          LOBYTE(v66) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v66 & 0x7F) << v50;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v49 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v52;
        }

LABEL_115:
        v58 = 96;
        goto LABEL_116;
      case 3u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        a1[152] |= 1u;
        while (1)
        {
          LOBYTE(v66) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v66 & 0x7F) << v37;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v39;
        }

LABEL_102:
        v57 = 32;
        goto LABEL_111;
      case 4u:
        v34 = PBReaderReadString();
        v35 = 104;
        goto LABEL_92;
      case 5u:
        v34 = PBReaderReadString();
        v35 = 72;
        goto LABEL_92;
      case 6u:
        v34 = PBReaderReadString();
        v35 = 144;
        goto LABEL_92;
      case 7u:
        v34 = PBReaderReadString();
        v35 = 128;
        goto LABEL_92;
      case 8u:
        v34 = PBReaderReadString();
        v35 = 136;
        goto LABEL_92;
      case 9u:
        v34 = PBReaderReadString();
        v35 = 64;
        goto LABEL_92;
      case 0xAu:
        v34 = PBReaderReadString();
        v35 = 80;
        goto LABEL_92;
      case 0xBu:
        v36 = PBReaderReadString();
        if (v36)
        {
          [a1 addRelatedNames:v36];
        }

        goto LABEL_90;
      case 0xCu:
        if ((v12 & 7) == 2)
        {
          v66 = 0;
          v67 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v27 = [a2 position];
            if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              v68 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v68 & 0x7F) << v28;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                goto LABEL_50;
              }
            }

            [a2 hasError];
LABEL_50:
            PBRepeatedUInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          while (1)
          {
            LOBYTE(v66) = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v66 & 0x7F) << v59;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              goto LABEL_128;
            }
          }

          [a2 hasError];
LABEL_128:
          PBRepeatedUInt64Add();
        }

        goto LABEL_129;
      case 0xDu:
        v36 = objc_alloc_init(AWDSymptomsDiagnosticIncidentEvent);
        [a1 addIncidentEvents:v36];
        v66 = 0;
        v67 = 0;
        if (PBReaderPlaceMark() && AWDSymptomsDiagnosticIncidentEventReadFrom(v36, a2))
        {
          PBReaderRecallMark();
LABEL_90:

LABEL_129:
          v65 = [a2 position];
          if (v65 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0xEu:
        v34 = PBReaderReadString();
        v35 = 88;
LABEL_92:
        v56 = *&a1[v35];
        *&a1[v35] = v34;

        goto LABEL_129;
      case 0xFu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        a1[152] |= 4u;
        while (1)
        {
          LOBYTE(v66) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v66 & 0x7F) << v20;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }

LABEL_98:
        v57 = 48;
LABEL_111:
        *&a1[v57] = v19;
        goto LABEL_129;
      case 0x10u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        a1[152] |= 8u;
        while (1)
        {
          LOBYTE(v66) = 0;
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
            v49 = 0;
            goto LABEL_106;
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

LABEL_106:
        v58 = 56;
LABEL_116:
        *&a1[v58] = v49;
        goto LABEL_129;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_129;
    }
  }
}

uint64_t ABCPbSummarySubmitRequestReadFrom(uint64_t a1, void *a2)
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

      if (v13 == 3)
      {
        v15 = PBReaderReadString();
        v16 = 8;
        goto LABEL_29;
      }

      if (v13 == 4)
      {
        v15 = PBReaderReadString();
        v16 = 16;
        goto LABEL_29;
      }

      if (v13 != 10)
      {
        goto LABEL_39;
      }

      v14 = objc_alloc_init(ABCPbSummarySignatureRequest);
      [a1 addSigRequest:v14];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ABCPbSummarySignatureRequestReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      *(a1 + 44) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v21 = [a2 position] + 1;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v20 |= (v27[0] & 0x7F) << v18;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v11 = v19++ >= 9;
        if (v11)
        {
          v24 = 0;
          goto LABEL_44;
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

LABEL_44:
      *(a1 + 40) = v24;
      goto LABEL_45;
    }

    if (v13 == 2)
    {
      v15 = PBReaderReadString();
      v16 = 24;
LABEL_29:
      v17 = *(a1 + v16);
      *(a1 + v16) = v15;

      goto LABEL_45;
    }

LABEL_39:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t AWDSymptomsDiagnosticNotificationTokenReadFrom(uint64_t a1, void *a2)
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
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{
  *v1 = a1;
  v3 = *(v2 + 16);
  return v2;
}

void OUTLINED_FUNCTION_3(char a1@<W2>, int *a2@<X8>)
{
  if (a1)
  {
    a2 = v2;
  }

  v3 = *a2;
}

id OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(v3 + 16);

  return a3;
}

void OUTLINED_FUNCTION_8(uint64_t a1, ...)
{
  va_start(va, a1);

  [(DiagnosticsServiceImpl *)v1 abcEnabledAndReadyWithReply:?];
}

id OUTLINED_FUNCTION_10()
{

  return v0;
}

void OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  [(DiagnosticsServiceImpl *)v9 abcEnabledAndReadyWithReply:?];
}

void OUTLINED_FUNCTION_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_16(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 2u);
}

uint64_t ABCPbSigGrantRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        break;
      }

      if (v13 == 6)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_38;
      }

      if (v13 != 10)
      {
        goto LABEL_26;
      }

      v16 = objc_alloc_init(ABCPbSigRequest);
      [a1 addSigRequest:v16];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ABCPbSigRequestReadFrom(v16, a2))
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
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v27[0] & 0x7F) << v17;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v11 = v18++ >= 9;
        if (v11)
        {
          v23 = 0;
          goto LABEL_42;
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

LABEL_42:
      *(a1 + 32) = v23;
      goto LABEL_43;
    }

    if (v13 == 5)
    {
      v14 = PBReaderReadString();
      v15 = 16;
LABEL_38:
      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

      goto LABEL_43;
    }

LABEL_26:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void sub_24182423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2418256C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2418266F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241826EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id load_embedded_xml_plist(const char *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  size = 0;
  if (!a1 || !*a1)
  {
    v6 = configurationLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = a1;
      v12 = "Will NOT load embedded configuration. Invalid identifier: %s";
      v13 = v6;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_19:
      v15 = 12;
LABEL_20:
      _os_log_impl(&dword_241804000, v13, v14, v12, buf, v15);
    }

LABEL_21:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v2 = configurationLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = a1;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Loading embedded configuration with identifier: %s", buf, 0xCu);
  }

  v3 = getsectiondata(&dword_241804000, "__TEXT", a1, &size);
  v4 = size;
  v5 = configurationLogHandle();
  v6 = v5;
  if (!v3 || !v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = a1;
      v12 = "Unable to get section data for identifier: %s";
      v13 = v6;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v23 = size;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Found embedded configuration data of size %lu", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v3 length:size freeWhenDone:0];
  if (!v7)
  {
    v6 = configurationLogHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v12 = "Failed to create NSData from embedded section data";
    v13 = v6;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 2;
    goto LABEL_20;
  }

  v8 = v7;
  v20 = 0;
  v9 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:2 format:0 error:&v20];
  v10 = v20;
  v11 = configurationLogHandle();
  v6 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = a1;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Successfully loaded embedded configuration plist with identifier: %s", buf, 0xCu);
    }

    v6 = configurationLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Configuration plist is %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = [v10 description];
      v19 = [v18 UTF8String];
      *buf = 136315138;
      v23 = v19;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "Failed to serialize configuration data into plist: %s", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_22:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

id iso8601date_string_from_NSDate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (iso8601date_string_from_NSDate_sharedInstancePred == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [iso8601date_string_from_NSDate_iso8601DateFormatter stringFromDate:v2];
      goto LABEL_6;
    }
  }

  else
  {
    iso8601date_string_from_NSDate_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

id formattedDateStringForTimeInterval(double a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *v6 = 0;
  v7 = 0;
  v9 = 0;
  v8 = 0;
  v5 = a1;
  if (a1 <= 0 && (time(&v5), v5 < 1))
  {
    formattedDateStringForTimeInterval_cold_1();
  }

  else
  {
    v1 = localtime(&v5);
    if (strftime(v6, 0x1AuLL, "%Y-%m-%d %H:%M:%S %z", v1))
    {
      v2 = [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:1];
      goto LABEL_5;
    }

    formattedDateStringForTimeInterval_cold_2(&v5);
  }

  v2 = 0;
LABEL_5:
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id sanitizedJSONDictionary(void *a1, char a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a1;
  v5 = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __sanitizedJSONDictionary_block_invoke;
  v8[3] = &unk_278CF0778;
  v6 = v5;
  v9 = v6;
  v10 = a2;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __sanitizedJSONDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = sanitizedJSONDictionary(v6, *(a1 + 40));
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = *(a1 + 40);
      if (isKindOfClass)
      {
        v11 = sanitizedJSONArray(v6, *(a1 + 40));
      }

      else
      {
        v15 = basicLogHandle();
        v14 = v15;
        if (!v13)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = 138412802;
            v21 = v19;
            v22 = 2112;
            v23 = v5;
            v24 = 2112;
            v25 = v6;
            _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEFAULT, "Discarding JSON incompatible dictionary object of class %@ for key %@: %@", &v20, 0x20u);
          }

          goto LABEL_16;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v20 = 138412802;
          v21 = v5;
          v22 = 2112;
          v23 = v17;
          v24 = 2112;
          v25 = v6;
          _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "Detected JSON incompatible dictionary value (for key %@) of class %@: %@", &v20, 0x20u);
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v14 = &stru_285368168;
          goto LABEL_15;
        }

        v11 = [v6 description];
      }
    }

    v14 = v11;
LABEL_15:
    [*(a1 + 32) setObject:v14 forKeyedSubscript:v5];
LABEL_16:

    goto LABEL_9;
  }

  v7 = basicLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Discarding JSON incompatible dictionary key of class %@: %@", &v20, 0x16u);
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

id sanitizedJSONArray(void *a1, char a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a1;
  v5 = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __sanitizedJSONArray_block_invoke;
  v8[3] = &unk_278CF07A0;
  v6 = v5;
  v9 = v6;
  v10 = a2;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __sanitizedJSONArray_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) addObject:v3];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sanitizedJSONDictionary(v3, *(a1 + 40));
LABEL_10:
    v6 = v5;
    [*(a1 + 32) addObject:v5];

    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sanitizedJSONArray(v3, *(a1 + 40));
    goto LABEL_10;
  }

  if (*(a1 + 40))
  {
    v7 = symptomsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Detected JSON incompatible array value of class %@: %@", &v13, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 description];
      goto LABEL_10;
    }
  }

  else
  {
    v10 = basicLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "Discarding JSON incompatible array object of class %@: %@", &v13, 0x16u);
    }
  }

LABEL_5:

  v4 = *MEMORY[0x277D85DE8];
}

id sanitizedJSONCollectionObject(void *a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sanitizedJSONDictionary(v3, a2);
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sanitizedJSONArray(v3, a2);
    goto LABEL_5;
  }

  v6 = symptomsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "JSON Object Sanitizer: %@ is not a collections class! JSON requires the root object to be a dictionary or array. %@", &v11, 0x16u);
  }

  v5 = 0;
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_2418286C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241828F90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 184));
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_241829DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ABCPbSigConfigReadFrom(uint64_t a1, void *a2)
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
        v14 = off_278CF0918[v13];
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

void sub_24182E94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ABCPbSummarySignatureRequestReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v41[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v41[0] & 0x7F) << v5;
      if ((v41[0] & 0x80) == 0)
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
        v14 = 112;
        goto LABEL_62;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 152;
        goto LABEL_62;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_62;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 144;
        goto LABEL_62;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_62;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 128;
        goto LABEL_62;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_62;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 40;
        goto LABEL_62;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_62;
      case 0xAu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 164) |= 4u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v41[0] & 0x7F) << v27;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_70;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_70:
        *(a1 + 120) = v33;
        goto LABEL_63;
      case 0xBu:
        *(a1 + 164) |= 1u;
        v41[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v37 = v41[0];
        v38 = 8;
        goto LABEL_75;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_62;
      case 0xDu:
        *(a1 + 164) |= 2u;
        v41[0] = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v37 = v41[0];
        v38 = 16;
LABEL_75:
        *(a1 + v38) = v37;
        goto LABEL_63;
      case 0xEu:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_62;
      case 0xFu:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_62;
      case 0x10u:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_62;
      case 0x11u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_62;
      case 0x12u:
        v13 = PBReaderReadString();
        v14 = 104;
LABEL_62:
        v34 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_63;
      case 0x13u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 164) |= 8u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v41[0] & 0x7F) << v15;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_66;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_66:
        *(a1 + 160) = v21;
        goto LABEL_63;
      case 0x1Eu:
        v26 = objc_alloc_init(ABCPbSummaryAttachmentRequest);
        [a1 addAttachments:v26];
        v41[0] = 0;
        v41[1] = 0;
        if (PBReaderPlaceMark() && ABCPbSummaryAttachmentRequestReadFrom(v26, a2))
        {
          PBReaderRecallMark();

LABEL_63:
          v35 = [a2 position];
          if (v35 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_63;
    }
  }
}

void sub_241834008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v2;
  }

  return [v1 addObject:v4];
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 112), 0xCu);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24183D4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _settingsChanged(uint64_t a1, void *a2, const __CFString *a3)
{
  v4 = a2;
  v5 = CFStringCompare(a3, @"com.apple.autobugcapture.UserConsentYES", 0);
  if (v5 == kCFCompareEqualTo)
  {
    v6 = configurationLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Auto Bug Capture is explicitly set to ON", buf, 2u);
    }

    v7 = MEMORY[0x277CBED28];
    goto LABEL_9;
  }

  if (CFStringCompare(a3, @"com.apple.autobugcapture.UserConsentNO", 0) == kCFCompareEqualTo)
  {
    v6 = configurationLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Auto Bug Capture is explicitly set to OFF", v8, 2u);
    }

    v7 = MEMORY[0x277CBED10];
LABEL_9:

    CFPreferencesSetValue(@"ABCUserConsent", *v7, @"com.apple.symptomsd-diag", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    CFPreferencesAppSynchronize(@"com.apple.symptomsd-diag");
    [v4 setAbcUIUserConsent:v5 == kCFCompareEqualTo];
    [v4 setABCUserConsent:{objc_msgSend(v4, "abcUIUserConsent")}];
  }
}

void sub_2418459FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241846DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_24184748C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241849394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241849974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24184F650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241851498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_241851DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ABCPbSigConfigWhitelistReadFrom(uint64_t a1, void *a2)
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

      if (v13 == 3)
      {
        v15 = PBReaderReadString();
        v16 = 16;
        goto LABEL_29;
      }

      if (v13 == 4)
      {
        v15 = PBReaderReadString();
        v16 = 24;
        goto LABEL_29;
      }

      if (v13 != 10)
      {
        goto LABEL_39;
      }

      v14 = objc_alloc_init(ABCPbSigConfig);
      [a1 addSigConfig:v14];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ABCPbSigConfigReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      *(a1 + 48) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v21 = [a2 position] + 1;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v20 |= (v27[0] & 0x7F) << v18;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v11 = v19++ >= 9;
        if (v11)
        {
          v24 = 0;
          goto LABEL_44;
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

LABEL_44:
      *(a1 + 32) = v24;
      goto LABEL_45;
    }

    if (v13 == 2)
    {
      v15 = PBReaderReadString();
      v16 = 8;
LABEL_29:
      v17 = *(a1 + v16);
      *(a1 + v16) = v15;

      goto LABEL_45;
    }

LABEL_39:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ABCPbSummaryAttachmentRequestReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 20) |= 1u;
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
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_241857744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

void sub_241859190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2418593B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ABCPbSigRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_48;
          }

          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_48;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = PBReaderReadString();
              v15 = 16;
              goto LABEL_48;
            case 9:
              v14 = PBReaderReadString();
              v15 = 24;
              goto LABEL_48;
            case 0xA:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 88) |= 1u;
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
                  v22 = 0;
                  goto LABEL_56;
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

LABEL_56:
              *(a1 + 48) = v22;
              goto LABEL_49;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_48;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 80;
          goto LABEL_48;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_48;
          case 4:
            v14 = PBReaderReadString();
            v15 = 72;
            goto LABEL_48;
          case 5:
            v14 = PBReaderReadString();
            v15 = 32;
LABEL_48:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_49;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_49:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *diagnosticErrorStringForCode(unsigned int a1)
{
  if (a1 > 0x29)
  {
    return @"Unknown error code";
  }

  else
  {
    return off_278CF1DA8[a1];
  }
}

id responseDict(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(MEMORY[0x277CBEB38]);
  v13 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v15 = [v12 initWithObjectsAndKeys:{v13, @"success", v14, @"reason", 0}];

  if ([v9 count])
  {
    [v15 addEntriesFromDictionary:v9];
  }

  if ([v10 length])
  {
    [v15 setObject:v10 forKeyedSubscript:@"session"];
  }

  if ([v11 length])
  {
    [v15 setObject:v11 forKeyedSubscript:@"groupID"];
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v16 = diagnosticErrorStringForCode(a2);
    [v15 setObject:v16 forKeyedSubscript:@"reasonStr"];
  }

  return v15;
}

void sub_24185EEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ABCPbSigGrantResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
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
      if ((v12 >> 3) > 9)
      {
        if (v13 == 10)
        {
          v16 = objc_alloc_init(ABCPbSigResponse);
          [a1 addSigResponse:v16];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !ABCPbSigResponseReadFrom(v16, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 11)
        {
          v16 = objc_alloc_init(ABCPbSigConfigWhitelist);
          objc_storeStrong((a1 + 16), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !ABCPbSigConfigWhitelistReadFrom(v16, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
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
            LOBYTE(v26) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v26 & 0x7F) << v17;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_43;
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

LABEL_43:
          *(a1 + 8) = v23;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 32);
          *(a1 + 32) = v14;

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ServiceMatched(int a1, io_iterator_t iterator)
{
  notification = 0;
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    do
    {
      IOServiceAddInterestNotification(gNotifyPort, v4, "IOGeneralInterest", ServiceInterest, 0, &notification);
      v5 = adminLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "StorageKernelSignal: service matched\n", v6, 2u);
      }

      result = IOIteratorNext(iterator);
      v4 = result;
    }

    while (result);
  }

  return result;
}

void ServiceInterest(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 == 703648)
  {
    v3 = adminLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "StorageKernelSignal: downtrain error detected. Triggering ABC\n", buf, 2u);
    }

    v9[0] = @"domain";
    v9[1] = @"type";
    *buf = @"StorageDrivers";
    v11 = @"AppleSDXC";
    v9[2] = @"subtype";
    v9[3] = @"detected";
    v12 = @"CardDowntrainError";
    v13 = @"sdxc_listener";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v9 count:4];
    if (adminABC)
    {
      v5 = [adminABC caseManager];

      if (v5)
      {
        v6 = [adminABC caseManager];
        [v6 startSessionWithSignature:v4 flags:1 preferredTimeout:0 events:0 payload:0 actions:&__block_literal_global_17 reply:0.0];
LABEL_12:

        goto LABEL_13;
      }

      v6 = adminLogHandle();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v7 = "StorageKernelSignal: ABC admin caseManager is Nil";
    }

    else
    {
      v6 = adminLogHandle();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v7 = "StorageKernelSignal: ABC admin is Nil";
    }

    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, v7, buf, 2u);
    goto LABEL_12;
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
}

void __requestSnapshot_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  *&v18[13] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = adminLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (a5)
  {
    if (v10)
    {
      v15 = 138543874;
      v16 = v7;
      v17 = 1024;
      *v18 = a5;
      v18[2] = 2112;
      *&v18[3] = v8;
      v11 = "StorageKernelSignal: Session %{public}@ was NOT accepted. (Reason code: %d) (%@)";
      v12 = v9;
      v13 = 28;
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    v15 = 138543618;
    v16 = v7;
    v17 = 2112;
    *v18 = v8;
    v11 = "StorageKernelSignal: Session %{public}@ accepted. (%@)";
    v12 = v9;
    v13 = 22;
LABEL_6:
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, v11, &v15, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_24186467C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241865414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241866E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241867274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id symptomsLogHandle()
{
  if (symptomsLogHandle_symptomsPred != -1)
  {
    symptomsLogHandle_cold_1();
  }

  v1 = symptomsLogHandle_symptomsHandle;

  return v1;
}

uint64_t __symptomsLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "symptoms");
  v1 = symptomsLogHandle_symptomsHandle;
  symptomsLogHandle_symptomsHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id basicLogHandle()
{
  if (basicLogHandle_basicPred != -1)
  {
    basicLogHandle_cold_1();
  }

  v1 = basicLogHandle_basicHandle;

  return v1;
}

uint64_t __basicLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "basic");
  v1 = basicLogHandle_basicHandle;
  basicLogHandle_basicHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id adminLogHandle()
{
  if (adminLogHandle_adminPred != -1)
  {
    adminLogHandle_cold_1();
  }

  v1 = adminLogHandle_adminHandle;

  return v1;
}

uint64_t __adminLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "admin");
  v1 = adminLogHandle_adminHandle;
  adminLogHandle_adminHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id xpcLogHandle()
{
  if (xpcLogHandle_xpcPred != -1)
  {
    xpcLogHandle_cold_1();
  }

  v1 = xpcLogHandle_xpcHandle;

  return v1;
}

uint64_t __xpcLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "xpc");
  v1 = xpcLogHandle_xpcHandle;
  xpcLogHandle_xpcHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id diagextLogHandle()
{
  if (diagextLogHandle_diagextPred != -1)
  {
    diagextLogHandle_cold_1();
  }

  v1 = diagextLogHandle_diagextHandle;

  return v1;
}

uint64_t __diagextLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "diagnosticExtensions");
  v1 = diagextLogHandle_diagextHandle;
  diagextLogHandle_diagextHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id diagcollectLogHandle()
{
  if (diagcollectLogHandle_diagcollectPred != -1)
  {
    diagcollectLogHandle_cold_1();
  }

  v1 = diagcollectLogHandle_diagcollectHandle;

  return v1;
}

uint64_t __diagcollectLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "diagnosticCollection");
  v1 = diagcollectLogHandle_diagcollectHandle;
  diagcollectLogHandle_diagcollectHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id diagreportLogHandle()
{
  if (diagreportLogHandle_diagreportPred != -1)
  {
    diagreportLogHandle_cold_1();
  }

  v1 = diagreportLogHandle_diagreportHandle;

  return v1;
}

uint64_t __diagreportLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "diagnosticReports");
  v1 = diagreportLogHandle_diagreportHandle;
  diagreportLogHandle_diagreportHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id diagcaseLogHandle()
{
  if (diagcaseLogHandle_diagcasePred != -1)
  {
    diagcaseLogHandle_cold_1();
  }

  v1 = diagcaseLogHandle_diagcaseHandle;

  return v1;
}

uint64_t __diagcaseLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "diagnosticCase");
  v1 = diagcaseLogHandle_diagcaseHandle;
  diagcaseLogHandle_diagcaseHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __casemanagementLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "caseManagement");
  v1 = casemanagementLogHandle_casemanagementHandle;
  casemanagementLogHandle_casemanagementHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id archiverLogHandle()
{
  if (archiverLogHandle_archiverPred != -1)
  {
    archiverLogHandle_cold_1();
  }

  v1 = archiverLogHandle_archiverHandle;

  return v1;
}

uint64_t __archiverLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "archiver");
  v1 = archiverLogHandle_archiverHandle;
  archiverLogHandle_archiverHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id storageLogHandle()
{
  if (storageLogHandle_storagePred != -1)
  {
    storageLogHandle_cold_1();
  }

  v1 = storageLogHandle_storageHandle;

  return v1;
}

uint64_t __storageLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "storage");
  v1 = storageLogHandle_storageHandle;
  storageLogHandle_storageHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id configurationLogHandle()
{
  if (configurationLogHandle_configurationPred != -1)
  {
    configurationLogHandle_cold_1();
  }

  v1 = configurationLogHandle_configurationHandle;

  return v1;
}

uint64_t __configurationLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "configuration");
  v1 = configurationLogHandle_configurationHandle;
  configurationLogHandle_configurationHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id analyticsLogHandle()
{
  if (analyticsLogHandle_analyticsPred != -1)
  {
    analyticsLogHandle_cold_1();
  }

  v1 = analyticsLogHandle_analyticsHandle;

  return v1;
}

uint64_t __analyticsLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "analytics");
  v1 = analyticsLogHandle_analyticsHandle;
  analyticsLogHandle_analyticsHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id uploadLogHandle()
{
  if (uploadLogHandle_uploadPred != -1)
  {
    uploadLogHandle_cold_1();
  }

  v1 = uploadLogHandle_uploadHandle;

  return v1;
}

uint64_t __uploadLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "upload");
  v1 = uploadLogHandle_uploadHandle;
  uploadLogHandle_uploadHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id summaryLogHandle()
{
  if (summaryLogHandle_summaryPred != -1)
  {
    summaryLogHandle_cold_1();
  }

  v1 = summaryLogHandle_summaryHandle;

  return v1;
}

uint64_t __summaryLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "summary");
  v1 = summaryLogHandle_summaryHandle;
  summaryLogHandle_summaryHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id liaisonLogHandle()
{
  if (liaisonLogHandle_liaisonPred != -1)
  {
    liaisonLogHandle_cold_1();
  }

  v1 = liaisonLogHandle_liaisonHandle;

  return v1;
}

uint64_t __liaisonLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "liaison");
  v1 = liaisonLogHandle_liaisonHandle;
  liaisonLogHandle_liaisonHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id homekitLogHandle()
{
  if (homekitLogHandle_homekitPred != -1)
  {
    homekitLogHandle_cold_1();
  }

  v1 = homekitLogHandle_homekitHandle;

  return v1;
}

uint64_t __homekitLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "homekit");
  v1 = homekitLogHandle_homekitHandle;
  homekitLogHandle_homekitHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id crossdeviceLogHandle()
{
  if (crossdeviceLogHandle_crossdevicePred != -1)
  {
    crossdeviceLogHandle_cold_1();
  }

  v1 = crossdeviceLogHandle_crossdeviceHandle;

  return v1;
}

uint64_t __crossdeviceLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "crossdevice");
  v1 = crossdeviceLogHandle_crossdeviceHandle;
  crossdeviceLogHandle_crossdeviceHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id persistenceLogHandle()
{
  if (persistenceLogHandle_persistencePred != -1)
  {
    persistenceLogHandle_cold_1();
  }

  v1 = persistenceLogHandle_persistenceHandle;

  return v1;
}

uint64_t __persistenceLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd-diag", "persistence");
  v1 = persistenceLogHandle_persistenceHandle;
  persistenceLogHandle_persistenceHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t AWDSymptomsDiagnosticRemoteUploadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v161) = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            v10 = [a2 data];
            [v10 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v161 & 0x7F) << v5;
          if ((v161 & 0x80) == 0)
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
        if (([a2 hasError] & 1) == 0)
        {
          v13 = v12 & 7;
          if (v13 != 4)
          {
            switch((v12 >> 3))
            {
              case 1u:
                v14 = 0;
                v15 = 0;
                v16 = 0;
                *(a1 + 228) |= 8u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v17 = [a2 position] + 1;
                  if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                  {
                    v19 = [a2 data];
                    [v19 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v16 |= (v161 & 0x7F) << v14;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v14 += 7;
                  v11 = v15++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
LABEL_224:
                    v123 = 176;
                    goto LABEL_233;
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

                goto LABEL_224;
              case 2u:
                v78 = 0;
                v79 = 0;
                v80 = 0;
                *(a1 + 228) |= 2u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v81 = [a2 position] + 1;
                  if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
                  {
                    v83 = [a2 data];
                    [v83 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v80 |= (v161 & 0x7F) << v78;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v78 += 7;
                  v11 = v79++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
                    goto LABEL_228;
                  }
                }

                if ([a2 hasError])
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v80;
                }

LABEL_228:
                v123 = 160;
                goto LABEL_233;
              case 3u:
                v63 = 0;
                v64 = 0;
                v65 = 0;
                *(a1 + 228) |= 4u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v66 = [a2 position] + 1;
                  if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
                  {
                    v68 = [a2 data];
                    [v68 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v65 |= (v161 & 0x7F) << v63;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v63 += 7;
                  v11 = v64++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
                    goto LABEL_216;
                  }
                }

                if ([a2 hasError])
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v65;
                }

LABEL_216:
                v123 = 168;
                goto LABEL_233;
              case 4u:
                v70 = PBReaderReadString();
                v71 = *(a1 + 184);
                *(a1 + 184) = v70;

                goto LABEL_305;
              case 5u:
                v43 = 0;
                v44 = 0;
                v45 = 0;
                *(a1 + 228) |= 0x80u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v46 = [a2 position] + 1;
                  if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                  {
                    v48 = [a2 data];
                    [v48 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v45 |= (v161 & 0x7F) << v43;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  v11 = v44++ >= 9;
                  if (v11)
                  {
                    v49 = 0;
                    goto LABEL_208;
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

LABEL_208:
                v122 = 204;
                goto LABEL_246;
              case 6u:
                v91 = 0;
                v92 = 0;
                v93 = 0;
                *(a1 + 228) |= 1u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v94 = [a2 position] + 1;
                  if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
                  {
                    v96 = [a2 data];
                    [v96 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v93 |= (v161 & 0x7F) << v91;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v91 += 7;
                  v11 = v92++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
                    goto LABEL_232;
                  }
                }

                if ([a2 hasError])
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v93;
                }

LABEL_232:
                v123 = 152;
LABEL_233:
                *(a1 + v123) = v20;
                goto LABEL_305;
              case 7u:
                v104 = 0;
                v105 = 0;
                v106 = 0;
                *(a1 + 228) |= 0x200u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v107 = [a2 position] + 1;
                  if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
                  {
                    v109 = [a2 data];
                    [v109 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v106 |= (v161 & 0x7F) << v104;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v104 += 7;
                  v11 = v105++ >= 9;
                  if (v11)
                  {
                    v49 = 0;
                    goto LABEL_237;
                  }
                }

                if ([a2 hasError])
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v106;
                }

LABEL_237:
                v122 = 224;
                goto LABEL_246;
              case 8u:
                v72 = 0;
                v73 = 0;
                v74 = 0;
                *(a1 + 228) |= 0x40u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v75 = [a2 position] + 1;
                  if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
                  {
                    v77 = [a2 data];
                    [v77 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v74 |= (v161 & 0x7F) << v72;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v72 += 7;
                  v11 = v73++ >= 9;
                  if (v11)
                  {
                    v49 = 0;
                    goto LABEL_220;
                  }
                }

                if ([a2 hasError])
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v74;
                }

LABEL_220:
                v122 = 200;
                goto LABEL_246;
              case 9u:
                v116 = 0;
                v117 = 0;
                v118 = 0;
                *(a1 + 228) |= 0x10u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v119 = [a2 position] + 1;
                  if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
                  {
                    v121 = [a2 data];
                    [v121 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v118 |= (v161 & 0x7F) << v116;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v116 += 7;
                  v11 = v117++ >= 9;
                  if (v11)
                  {
                    v49 = 0;
                    goto LABEL_245;
                  }
                }

                if ([a2 hasError])
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v118;
                }

LABEL_245:
                v122 = 192;
                goto LABEL_246;
              case 0xAu:
                v57 = 0;
                v58 = 0;
                v59 = 0;
                *(a1 + 228) |= 0x100u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v60 = [a2 position] + 1;
                  if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                  {
                    v62 = [a2 data];
                    [v62 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v59 |= (v161 & 0x7F) << v57;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v57 += 7;
                  v11 = v58++ >= 9;
                  if (v11)
                  {
                    v49 = 0;
                    goto LABEL_212;
                  }
                }

                if ([a2 hasError])
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v59;
                }

LABEL_212:
                v122 = 208;
                goto LABEL_246;
              case 0xBu:
                v110 = 0;
                v111 = 0;
                v112 = 0;
                *(a1 + 228) |= 0x20u;
                while (1)
                {
                  LOBYTE(v161) = 0;
                  v113 = [a2 position] + 1;
                  if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
                  {
                    v115 = [a2 data];
                    [v115 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v112 |= (v161 & 0x7F) << v110;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v110 += 7;
                  v11 = v111++ >= 9;
                  if (v11)
                  {
                    v49 = 0;
                    goto LABEL_241;
                  }
                }

                if ([a2 hasError])
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v112;
                }

LABEL_241:
                v122 = 196;
LABEL_246:
                *(a1 + v122) = v49;
                goto LABEL_305;
              case 0xCu:
                if (v13 != 2)
                {
                  v136 = 0;
                  v137 = 0;
                  v138 = 0;
                  while (1)
                  {
                    LOBYTE(v161) = 0;
                    v139 = [a2 position] + 1;
                    if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
                    {
                      v141 = [a2 data];
                      [v141 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v138 |= (v161 & 0x7F) << v136;
                    if ((v161 & 0x80) == 0)
                    {
                      break;
                    }

                    v136 += 7;
                    v11 = v137++ >= 9;
                    if (v11)
                    {
                      goto LABEL_275;
                    }
                  }

LABEL_274:
                  [a2 hasError];
LABEL_275:
                  PBRepeatedInt64Add();
                  goto LABEL_305;
                }

                v161 = 0;
                v162 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v36 = [a2 position];
                  if (v36 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_175;
                  }

                  v37 = 0;
                  v38 = 0;
                  v39 = 0;
                  while (1)
                  {
                    v163 = 0;
                    v40 = [a2 position] + 1;
                    if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                    {
                      v42 = [a2 data];
                      [v42 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v39 |= (v163 & 0x7F) << v37;
                    if ((v163 & 0x80) == 0)
                    {
                      break;
                    }

                    v37 += 7;
                    v11 = v38++ >= 9;
                    if (v11)
                    {
                      goto LABEL_71;
                    }
                  }

                  [a2 hasError];
LABEL_71:
                  PBRepeatedInt64Add();
                }

              case 0xDu:
                if (v13 != 2)
                {
                  v142 = 0;
                  v143 = 0;
                  v144 = 0;
                  while (1)
                  {
                    LOBYTE(v161) = 0;
                    v145 = [a2 position] + 1;
                    if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
                    {
                      v147 = [a2 data];
                      [v147 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v144 |= (v161 & 0x7F) << v142;
                    if ((v161 & 0x80) == 0)
                    {
                      goto LABEL_303;
                    }

                    v142 += 7;
                    v11 = v143++ >= 9;
                    if (v11)
                    {
                      goto LABEL_304;
                    }
                  }
                }

                v161 = 0;
                v162 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v50 = [a2 position];
                  if (v50 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_175;
                  }

                  v51 = 0;
                  v52 = 0;
                  v53 = 0;
                  while (1)
                  {
                    v163 = 0;
                    v54 = [a2 position] + 1;
                    if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
                    {
                      v56 = [a2 data];
                      [v56 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v53 |= (v163 & 0x7F) << v51;
                    if ((v163 & 0x80) == 0)
                    {
                      break;
                    }

                    v51 += 7;
                    v11 = v52++ >= 9;
                    if (v11)
                    {
                      goto LABEL_95;
                    }
                  }

                  [a2 hasError];
LABEL_95:
                  PBRepeatedInt32Add();
                }

              case 0xEu:
                if (v13 == 2)
                {
                  v161 = 0;
                  v162 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v97 = [a2 position];
                    if (v97 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    while (1)
                    {
                      v163 = 0;
                      v101 = [a2 position] + 1;
                      if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
                      {
                        v103 = [a2 data];
                        [v103 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v100 |= (v163 & 0x7F) << v98;
                      if ((v163 & 0x80) == 0)
                      {
                        break;
                      }

                      v98 += 7;
                      v11 = v99++ >= 9;
                      if (v11)
                      {
                        goto LABEL_174;
                      }
                    }

                    [a2 hasError];
LABEL_174:
                    PBRepeatedInt32Add();
                  }

LABEL_175:
                  PBReaderRecallMark();
                }

                else
                {
                  v154 = 0;
                  v155 = 0;
                  v156 = 0;
                  while (1)
                  {
                    LOBYTE(v161) = 0;
                    v157 = [a2 position] + 1;
                    if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
                    {
                      v159 = [a2 data];
                      [v159 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v156 |= (v161 & 0x7F) << v154;
                    if ((v161 & 0x80) == 0)
                    {
                      break;
                    }

                    v154 += 7;
                    v11 = v155++ >= 9;
                    if (v11)
                    {
                      goto LABEL_304;
                    }
                  }

LABEL_303:
                  [a2 hasError];
LABEL_304:
                  PBRepeatedInt32Add();
                }

LABEL_305:
                v160 = [a2 position];
                if (v160 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              case 0xFu:
                if (v13 != 2)
                {
                  v130 = 0;
                  v131 = 0;
                  v132 = 0;
                  while (1)
                  {
                    LOBYTE(v161) = 0;
                    v133 = [a2 position] + 1;
                    if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
                    {
                      v135 = [a2 data];
                      [v135 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v132 |= (v161 & 0x7F) << v130;
                    if ((v161 & 0x80) == 0)
                    {
                      goto LABEL_303;
                    }

                    v130 += 7;
                    v11 = v131++ >= 9;
                    if (v11)
                    {
                      goto LABEL_304;
                    }
                  }
                }

                v161 = 0;
                v162 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v29 = [a2 position];
                  if (v29 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_175;
                  }

                  v30 = 0;
                  v31 = 0;
                  v32 = 0;
                  while (1)
                  {
                    v163 = 0;
                    v33 = [a2 position] + 1;
                    if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                    {
                      v35 = [a2 data];
                      [v35 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v32 |= (v163 & 0x7F) << v30;
                    if ((v163 & 0x80) == 0)
                    {
                      break;
                    }

                    v30 += 7;
                    v11 = v31++ >= 9;
                    if (v11)
                    {
                      goto LABEL_56;
                    }
                  }

                  [a2 hasError];
LABEL_56:
                  PBRepeatedInt32Add();
                }

              case 0x10u:
                v69 = PBReaderReadString();
                if (v69)
                {
                  [a1 addTaskErrorDomain:v69];
                }

                goto LABEL_305;
              case 0x11u:
                if (v13 != 2)
                {
                  v124 = 0;
                  v125 = 0;
                  v126 = 0;
                  while (1)
                  {
                    LOBYTE(v161) = 0;
                    v127 = [a2 position] + 1;
                    if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
                    {
                      v129 = [a2 data];
                      [v129 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v126 |= (v161 & 0x7F) << v124;
                    if ((v161 & 0x80) == 0)
                    {
                      goto LABEL_274;
                    }

                    v124 += 7;
                    v11 = v125++ >= 9;
                    if (v11)
                    {
                      goto LABEL_275;
                    }
                  }
                }

                v161 = 0;
                v162 = 0;
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
                    goto LABEL_175;
                  }

                  v23 = 0;
                  v24 = 0;
                  v25 = 0;
                  while (1)
                  {
                    v163 = 0;
                    v26 = [a2 position] + 1;
                    if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                    {
                      v28 = [a2 data];
                      [v28 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v25 |= (v163 & 0x7F) << v23;
                    if ((v163 & 0x80) == 0)
                    {
                      break;
                    }

                    v23 += 7;
                    v11 = v24++ >= 9;
                    if (v11)
                    {
                      goto LABEL_41;
                    }
                  }

                  [a2 hasError];
LABEL_41:
                  PBRepeatedInt64Add();
                }

              case 0x12u:
                if (v13 != 2)
                {
                  v148 = 0;
                  v149 = 0;
                  v150 = 0;
                  while (1)
                  {
                    LOBYTE(v161) = 0;
                    v151 = [a2 position] + 1;
                    if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
                    {
                      v153 = [a2 data];
                      [v153 getBytes:&v161 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v150 |= (v161 & 0x7F) << v148;
                    if ((v161 & 0x80) == 0)
                    {
                      goto LABEL_303;
                    }

                    v148 += 7;
                    v11 = v149++ >= 9;
                    if (v11)
                    {
                      goto LABEL_304;
                    }
                  }
                }

                v161 = 0;
                v162 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v84 = [a2 position];
                  if (v84 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_175;
                  }

                  v85 = 0;
                  v86 = 0;
                  v87 = 0;
                  while (1)
                  {
                    v163 = 0;
                    v88 = [a2 position] + 1;
                    if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
                    {
                      v90 = [a2 data];
                      [v90 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v87 |= (v163 & 0x7F) << v85;
                    if ((v163 & 0x80) == 0)
                    {
                      break;
                    }

                    v85 += 7;
                    v11 = v86++ >= 9;
                    if (v11)
                    {
                      goto LABEL_150;
                    }
                  }

                  [a2 hasError];
LABEL_150:
                  PBRepeatedInt32Add();
                }

              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_305;
                }

                return 0;
            }
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241876C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241878D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *netdiag_str_array_find(const char **a1, char *__s2)
{
  v3 = *a1;
  if (v3)
  {
    v5 = a1 + 1;
    do
    {
      if (!*v3)
      {
        break;
      }

      if (!strcmp(v3, __s2))
      {
        return __s2;
      }

      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  return 0;
}

char **netdiag_get_logging_keys(uint64_t *a1)
{
  v1 = gNetDiagLoggingKeysCount;
  if (!gNetDiagLoggingKeysCount)
  {
    v2 = gNetDiagLoggingKeys[0];
    if (gNetDiagLoggingKeys[0])
    {
      v3 = 0;
      while (*v2)
      {
        v1 = v3 + 1;
        v2 = gNetDiagLoggingKeys[++v3];
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v1 = v3;
    }

    else
    {
      v1 = 0;
    }

LABEL_9:
    gNetDiagLoggingKeysCount = v1;
  }

  if (a1)
  {
    *a1 = v1;
  }

  return gNetDiagLoggingKeys;
}

char **netdiag_get_task_keys(uint64_t *a1)
{
  v1 = gNetDiagTaskKeysCount;
  if (!gNetDiagTaskKeysCount)
  {
    v2 = gNetDiagTaskKeys[0];
    if (gNetDiagTaskKeys[0])
    {
      v3 = 0;
      while (*v2)
      {
        v1 = v3 + 1;
        v2 = gNetDiagTaskKeys[++v3];
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v1 = v3;
    }

    else
    {
      v1 = 0;
    }

LABEL_9:
    gNetDiagTaskKeysCount = v1;
  }

  if (a1)
  {
    *a1 = v1;
  }

  return gNetDiagTaskKeys;
}

char **netdiag_get_option_keys(uint64_t *a1)
{
  v1 = gNetDiagOptionKeysCount;
  if (!gNetDiagOptionKeysCount)
  {
    v2 = gNetDiagOptionKeys[0];
    if (gNetDiagOptionKeys[0])
    {
      v3 = 0;
      while (*v2)
      {
        v1 = v3 + 1;
        v2 = gNetDiagOptionKeys[++v3];
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v1 = v3;
    }

    else
    {
      v1 = 0;
    }

LABEL_9:
    gNetDiagOptionKeysCount = v1;
  }

  if (a1)
  {
    *a1 = v1;
  }

  return gNetDiagOptionKeys;
}

const char *netdiag_xpc_type_str(uint64_t a1)
{
  v2 = MEMORY[0x277D86450];
  v3 = &qword_278CF2420;
  result = "<XPC_TYPE_UNKNOWN>";
  while (v2 != a1)
  {
    v5 = *v3;
    v3 += 2;
    v2 = v5;
    if (!v5)
    {
      return result;
    }
  }

  return *(v3 - 1);
}

void formattedDateStringForTimeInterval_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = basicLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_1(&dword_241804000, v1, v2, "formattedDateStringForTimeInterval: Invalid timestamp of %.3lf (did the call to time() fail?)", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void formattedDateStringForTimeInterval_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = basicLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = HIDWORD(*a1);
    OUTLINED_FUNCTION_0_1(&dword_241804000, v3, v4, "formattedDateStringForTimeInterval: Failed strftime with '%ld'", v5, v6, v7, v8, 0);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_24187E8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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