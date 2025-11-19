uint64_t sub_1000EE9E8(uint64_t a1, void *a2)
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
        v52 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v56 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v56 & 0x7F) << v16;
          if ((v56 & 0x80) == 0)
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
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 > 3)
        {
          if (v13 == 4)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v54 = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v54 & 0x7F) << v44;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_89;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v46;
            }

LABEL_89:
            v50 = 20;
          }

          else
          {
            if (v13 != 5)
            {
LABEL_54:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_91;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v53 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v53 & 0x7F) << v30;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_81;
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

LABEL_81:
            v50 = 24;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v57 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v57 & 0x7F) << v37;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v39;
            }

LABEL_85:
            *(a1 + 8) = v43;
            goto LABEL_91;
          }

          if (v13 != 3)
          {
            goto LABEL_54;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v55 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v55 & 0x7F) << v23;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_77;
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

LABEL_77:
          v50 = 16;
        }

        *(a1 + v50) = v29;
      }

LABEL_91:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000EFC34(uint64_t a1, void *a2)
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
        LOBYTE(v59[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59[0] & 0x7F) << v5;
        if ((v59[0] & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      v15 = [NSNumber numberWithUnsignedInt:v14];
      v16 = [KBBMetricUtility isValidMetricIdTag:v15 forClass:objc_opt_class()];

      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v59[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v59[0] & 0x7F) << v17;
          if ((v59[0] & 0x80) == 0)
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
        NSLog(@"Unknown tag: %x:%u", v14, v23);
        goto LABEL_93;
      }

      if (v14 > 2)
      {
        if (v14 == 3)
        {
          if (v13 == 2)
          {
            v59[0] = 0;
            v59[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v43 = [a2 position];
              if (v43 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v44 = 0;
              v45 = 0;
              v46 = 0;
              while (1)
              {
                v60 = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v60 & 0x7F) << v44;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  goto LABEL_79;
                }
              }

              [a2 hasError];
LABEL_79:
              PBRepeatedUInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v54 |= (v59[0] & 0x7F) << v52;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v11 = v53++ >= 9;
              if (v11)
              {
                goto LABEL_106;
              }
            }

            [a2 hasError];
LABEL_106:
            PBRepeatedUInt32Add();
          }

          goto LABEL_93;
        }

        if (v14 == 4)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v59[0] & 0x7F) << v31;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
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
            v30 = v33;
          }

LABEL_87:
          v50 = 40;
          goto LABEL_92;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v59[0] & 0x7F) << v37;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_91;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v39;
          }

LABEL_91:
          v50 = 36;
          goto LABEL_92;
        }

        if (v14 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v59[0] & 0x7F) << v24;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_83;
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

LABEL_83:
          v50 = 32;
LABEL_92:
          *(a1 + v50) = v30;
          goto LABEL_93;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_93:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000F55F8(uint64_t a1, void *a2)
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
        v142 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v142 & 0x7F) << v5;
        if ((v142 & 0x80) == 0)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v142 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v142 & 0x7F) << v16;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 88) |= 1u;
            while (1)
            {
              v142 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v142 & 0x7F) << v23;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
LABEL_248:
                *(a1 + 8) = v29;
                goto LABEL_282;
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

            goto LABEL_248;
          case 2:
            v91 = 0;
            v92 = 0;
            v93 = 0;
            *(a1 + 88) |= 0x2000u;
            while (1)
            {
              v142 = 0;
              v94 = [a2 position] + 1;
              if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
              {
                v96 = [a2 data];
                [v96 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v93 |= (v142 & 0x7F) << v91;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              v11 = v92++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_252;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v93;
            }

LABEL_252:
            v140 = 64;
            goto LABEL_281;
          case 3:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            *(a1 + 88) |= 0x8000u;
            while (1)
            {
              v142 = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v69 |= (v142 & 0x7F) << v67;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              v11 = v68++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_232;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v69;
            }

LABEL_232:
            v140 = 72;
            goto LABEL_281;
          case 4:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 88) |= 0x100u;
            while (1)
            {
              v142 = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                v84 = [a2 data];
                [v84 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v142 & 0x7F) << v79;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v11 = v80++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_240;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v81;
            }

LABEL_240:
            v140 = 44;
            goto LABEL_281;
          case 5:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 88) |= 0x200u;
            while (1)
            {
              v142 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v142 & 0x7F) << v49;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_220;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v51;
            }

LABEL_220:
            v140 = 48;
            goto LABEL_281;
          case 6:
            v103 = 0;
            v104 = 0;
            v105 = 0;
            *(a1 + 88) |= 0x80u;
            while (1)
            {
              v142 = 0;
              v106 = [a2 position] + 1;
              if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
              {
                v108 = [a2 data];
                [v108 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v105 |= (v142 & 0x7F) << v103;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              v11 = v104++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_260;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v105;
            }

LABEL_260:
            v140 = 40;
            goto LABEL_281;
          case 7:
            v115 = 0;
            v116 = 0;
            v117 = 0;
            *(a1 + 88) |= 2u;
            while (1)
            {
              v142 = 0;
              v118 = [a2 position] + 1;
              if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
              {
                v120 = [a2 data];
                [v120 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v117 |= (v142 & 0x7F) << v115;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              v11 = v116++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_268;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v117;
            }

LABEL_268:
            v140 = 16;
            goto LABEL_281;
          case 8:
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 88) |= 0x40000u;
            while (1)
            {
              v142 = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v142 & 0x7F) << v85;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_244;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v87;
            }

LABEL_244:
            v140 = 84;
            goto LABEL_281;
          case 9:
            v133 = 0;
            v134 = 0;
            v135 = 0;
            *(a1 + 88) |= 4u;
            while (1)
            {
              v142 = 0;
              v136 = [a2 position] + 1;
              if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
              {
                v138 = [a2 data];
                [v138 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v135 |= (v142 & 0x7F) << v133;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v133 += 7;
              v11 = v134++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_280;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v135;
            }

LABEL_280:
            v140 = 20;
            goto LABEL_281;
          case 10:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 88) |= 0x1000u;
            while (1)
            {
              v142 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v142 & 0x7F) << v61;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_228;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v63;
            }

LABEL_228:
            v140 = 60;
            goto LABEL_281;
          case 11:
            v127 = 0;
            v128 = 0;
            v129 = 0;
            *(a1 + 88) |= 0x20u;
            while (1)
            {
              v142 = 0;
              v130 = [a2 position] + 1;
              if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
              {
                v132 = [a2 data];
                [v132 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v129 |= (v142 & 0x7F) << v127;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v127 += 7;
              v11 = v128++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_276;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v129;
            }

LABEL_276:
            v140 = 32;
            goto LABEL_281;
          case 12:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 88) |= 0x10u;
            while (1)
            {
              v142 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v142 & 0x7F) << v43;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_216;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v45;
            }

LABEL_216:
            v140 = 28;
            goto LABEL_281;
          case 13:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 88) |= 0x4000u;
            while (1)
            {
              v142 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v142 & 0x7F) << v55;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_224;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v57;
            }

LABEL_224:
            v140 = 68;
            goto LABEL_281;
          case 14:
            v109 = 0;
            v110 = 0;
            v111 = 0;
            *(a1 + 88) |= 0x40u;
            while (1)
            {
              v142 = 0;
              v112 = [a2 position] + 1;
              if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
              {
                v114 = [a2 data];
                [v114 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v111 |= (v142 & 0x7F) << v109;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              v11 = v110++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_264;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v111;
            }

LABEL_264:
            v140 = 36;
            goto LABEL_281;
          case 15:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 88) |= 0x20000u;
            while (1)
            {
              v142 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v142 & 0x7F) << v37;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_212;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v39;
            }

LABEL_212:
            v140 = 80;
            goto LABEL_281;
          case 16:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 88) |= 8u;
            while (1)
            {
              v142 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v142 & 0x7F) << v73;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_236;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v75;
            }

LABEL_236:
            v140 = 24;
            goto LABEL_281;
          case 17:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 88) |= 0x400u;
            while (1)
            {
              v142 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v142 & 0x7F) << v30;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_208;
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

LABEL_208:
            v140 = 52;
            goto LABEL_281;
          case 18:
            v97 = 0;
            v98 = 0;
            v99 = 0;
            *(a1 + 88) |= 0x10000u;
            while (1)
            {
              v142 = 0;
              v100 = [a2 position] + 1;
              if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
              {
                v102 = [a2 data];
                [v102 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v99 |= (v142 & 0x7F) << v97;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              v11 = v98++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_256;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v99;
            }

LABEL_256:
            v140 = 76;
            goto LABEL_281;
          case 19:
            v121 = 0;
            v122 = 0;
            v123 = 0;
            *(a1 + 88) |= 0x800u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_282;
            }

            return result;
        }

        while (1)
        {
          v142 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v142 & 0x7F) << v121;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v11 = v122++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_272;
          }
        }

        v36 = [a2 hasError] ? 0 : v123;
LABEL_272:
        v140 = 56;
LABEL_281:
        *(a1 + v140) = v36;
      }

LABEL_282:
      v141 = [a2 position];
    }

    while (v141 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000F8734(uint64_t a1, void *a2)
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
        LOBYTE(v66[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v66[0] & 0x7F) << v5;
        if ((v66[0] & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      v15 = [NSNumber numberWithUnsignedInt:v14];
      v16 = [KBBMetricUtility isValidMetricIdTag:v15 forClass:objc_opt_class()];

      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v66[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v66[0] & 0x7F) << v17;
          if ((v66[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_49;
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

LABEL_49:
        NSLog(@"Unknown tag: %x:%u", v14, v23);
        goto LABEL_107;
      }

      if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v66[0]) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v66[0] & 0x7F) << v52;
            if ((v66[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v54;
          }

LABEL_101:
          v58 = 32;
          goto LABEL_106;
        }

        if (v14 == 2)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v66[0]) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v66[0] & 0x7F) << v32;
            if ((v66[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_105;
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

LABEL_105:
          v58 = 36;
          goto LABEL_106;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v66[0] & 0x7F) << v39;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_93;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v41;
            }

LABEL_93:
            v58 = 44;
            goto LABEL_106;
          case 4:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v66[0] & 0x7F) << v45;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v51 = 0;
                goto LABEL_97;
              }
            }

            if ([a2 hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v47;
            }

LABEL_97:
            v38 = -(v51 & 1) ^ (v51 >> 1);
            v58 = 40;
LABEL_106:
            *(a1 + v58) = v38;
            goto LABEL_107;
          case 5:
            if (v13 == 2)
            {
              v66[0] = 0;
              v66[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v25 = [a2 position];
                if (v25 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v26 = 0;
                v27 = 0;
                v28 = 0;
                while (1)
                {
                  v67 = 0;
                  v29 = [a2 position] + 1;
                  if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
                  {
                    v31 = [a2 data];
                    [v31 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v28 |= (v67 & 0x7F) << v26;
                  if ((v67 & 0x80) == 0)
                  {
                    break;
                  }

                  v26 += 7;
                  v11 = v27++ >= 9;
                  if (v11)
                  {
                    goto LABEL_45;
                  }
                }

                [a2 hasError];
LABEL_45:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v60 = 0;
              v61 = 0;
              v62 = 0;
              while (1)
              {
                LOBYTE(v66[0]) = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v66[0] & 0x7F) << v60;
                if ((v66[0] & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                v11 = v61++ >= 9;
                if (v11)
                {
                  goto LABEL_120;
                }
              }

              [a2 hasError];
LABEL_120:
              PBRepeatedUInt32Add();
            }

            goto LABEL_107;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_107:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000FA8C0(uint64_t a1, void *a2)
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
        v187 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v187 & 0x7F) << v5;
        if ((v187 & 0x80) == 0)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v187 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v187 & 0x7F) << v16;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 128) |= 1u;
            while (1)
            {
              v187 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v187 & 0x7F) << v23;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_322;
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

LABEL_322:
            *(a1 + 8) = v29;
            goto LABEL_372;
          case 2:
            v110 = 0;
            v111 = 0;
            v112 = 0;
            *(a1 + 128) |= 0x400000u;
            while (1)
            {
              v187 = 0;
              v113 = [a2 position] + 1;
              if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
              {
                v115 = [a2 data];
                [v115 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v112 |= (v187 & 0x7F) << v110;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v110 += 7;
              v11 = v111++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_326;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v112;
            }

LABEL_326:
            v185 = 112;
            goto LABEL_371;
          case 4:
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 128) |= 0x8000u;
            while (1)
            {
              v187 = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v187 & 0x7F) << v85;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_308;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v87;
            }

LABEL_308:
            v185 = 84;
            goto LABEL_371;
          case 5:
            v140 = 0;
            v141 = 0;
            v142 = 0;
            *(a1 + 128) |= 0x40u;
            while (1)
            {
              v187 = 0;
              v143 = [a2 position] + 1;
              if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
              {
                v145 = [a2 data];
                [v145 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v142 |= (v187 & 0x7F) << v140;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v140 += 7;
              v11 = v141++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_346;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v142;
            }

LABEL_346:
            v185 = 48;
            goto LABEL_371;
          case 7:
            v146 = 0;
            v147 = 0;
            v148 = 0;
            *(a1 + 128) |= 0x20000u;
            while (1)
            {
              v187 = 0;
              v149 = [a2 position] + 1;
              if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
              {
                v151 = [a2 data];
                [v151 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v148 |= (v187 & 0x7F) << v146;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v146 += 7;
              v11 = v147++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_350;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v148;
            }

LABEL_350:
            v185 = 92;
            goto LABEL_371;
          case 8:
            v91 = 0;
            v92 = 0;
            v93 = 0;
            *(a1 + 128) |= 8u;
            while (1)
            {
              v187 = 0;
              v94 = [a2 position] + 1;
              if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
              {
                v96 = [a2 data];
                [v96 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v93 |= (v187 & 0x7F) << v91;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              v11 = v92++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_312;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v93;
            }

LABEL_312:
            v185 = 24;
            goto LABEL_371;
          case 9:
            v116 = 0;
            v117 = 0;
            v118 = 0;
            *(a1 + 128) |= 0x1000u;
            while (1)
            {
              v187 = 0;
              v119 = [a2 position] + 1;
              if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
              {
                v121 = [a2 data];
                [v121 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v118 |= (v187 & 0x7F) << v116;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              v11 = v117++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_330;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v118;
            }

LABEL_330:
            v185 = 72;
            goto LABEL_371;
          case 14:
            v122 = 0;
            v123 = 0;
            v124 = 0;
            *(a1 + 128) |= 0x200u;
            while (1)
            {
              v187 = 0;
              v125 = [a2 position] + 1;
              if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
              {
                v127 = [a2 data];
                [v127 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v124 |= (v187 & 0x7F) << v122;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              v11 = v123++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_334;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v124;
            }

LABEL_334:
            v185 = 60;
            goto LABEL_371;
          case 15:
            v158 = PBReaderReadData();
            v159 = *(a1 + 32);
            *(a1 + 32) = v158;

            goto LABEL_372;
          case 16:
            v152 = 0;
            v153 = 0;
            v154 = 0;
            *(a1 + 128) |= 0x20u;
            while (1)
            {
              v187 = 0;
              v155 = [a2 position] + 1;
              if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
              {
                v157 = [a2 data];
                [v157 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v154 |= (v187 & 0x7F) << v152;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v152 += 7;
              v11 = v153++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_354;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v154;
            }

LABEL_354:
            v185 = 44;
            goto LABEL_371;
          case 17:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 128) |= 4u;
            while (1)
            {
              v187 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v187 & 0x7F) << v61;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_292;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v63;
            }

LABEL_292:
            v185 = 20;
            goto LABEL_371;
          case 18:
            v97 = 0;
            v98 = 0;
            v99 = 0;
            *(a1 + 128) |= 0x80u;
            while (1)
            {
              v187 = 0;
              v100 = [a2 position] + 1;
              if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
              {
                v102 = [a2 data];
                [v102 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v99 |= (v187 & 0x7F) << v97;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              v11 = v98++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_316;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v99;
            }

LABEL_316:
            v185 = 52;
            goto LABEL_371;
          case 19:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 128) |= 0x1000000u;
            while (1)
            {
              v187 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v187 & 0x7F) << v73;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_300;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v75;
            }

LABEL_300:
            v185 = 120;
            goto LABEL_371;
          case 20:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 128) |= 0x40000u;
            while (1)
            {
              v187 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v187 & 0x7F) << v43;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_280;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v45;
            }

LABEL_280:
            v185 = 96;
            goto LABEL_371;
          case 21:
            v128 = 0;
            v129 = 0;
            v130 = 0;
            *(a1 + 128) |= 0x80000u;
            while (1)
            {
              v187 = 0;
              v131 = [a2 position] + 1;
              if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
              {
                v133 = [a2 data];
                [v133 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v130 |= (v187 & 0x7F) << v128;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v128 += 7;
              v11 = v129++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_338;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v130;
            }

LABEL_338:
            v185 = 100;
            goto LABEL_371;
          case 22:
            v134 = 0;
            v135 = 0;
            v136 = 0;
            *(a1 + 128) |= 0x2000u;
            while (1)
            {
              v187 = 0;
              v137 = [a2 position] + 1;
              if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
              {
                v139 = [a2 data];
                [v139 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v136 |= (v187 & 0x7F) << v134;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v134 += 7;
              v11 = v135++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_342;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v136;
            }

LABEL_342:
            v185 = 76;
            goto LABEL_371;
          case 23:
            v166 = 0;
            v167 = 0;
            v168 = 0;
            *(a1 + 128) |= 0x10u;
            while (1)
            {
              v187 = 0;
              v169 = [a2 position] + 1;
              if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
              {
                v171 = [a2 data];
                [v171 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v168 |= (v187 & 0x7F) << v166;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v166 += 7;
              v11 = v167++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_362;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v168;
            }

LABEL_362:
            v185 = 40;
            goto LABEL_371;
          case 24:
            v160 = 0;
            v161 = 0;
            v162 = 0;
            *(a1 + 128) |= 0x100u;
            while (1)
            {
              v187 = 0;
              v163 = [a2 position] + 1;
              if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
              {
                v165 = [a2 data];
                [v165 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v162 |= (v187 & 0x7F) << v160;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v160 += 7;
              v11 = v161++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_358;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v162;
            }

LABEL_358:
            v185 = 56;
            goto LABEL_371;
          case 25:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 128) |= 0x800u;
            while (1)
            {
              v187 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v187 & 0x7F) << v30;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_272;
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

LABEL_272:
            v185 = 68;
            goto LABEL_371;
          case 26:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 128) |= 0x400u;
            while (1)
            {
              v187 = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                v84 = [a2 data];
                [v84 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v187 & 0x7F) << v79;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v11 = v80++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_304;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v81;
            }

LABEL_304:
            v185 = 64;
            goto LABEL_371;
          case 27:
            v172 = 0;
            v173 = 0;
            v174 = 0;
            *(a1 + 128) |= 2u;
            while (1)
            {
              v187 = 0;
              v175 = [a2 position] + 1;
              if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
              {
                v177 = [a2 data];
                [v177 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v174 |= (v187 & 0x7F) << v172;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v172 += 7;
              v11 = v173++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_366;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v174;
            }

LABEL_366:
            v185 = 16;
            goto LABEL_371;
          case 28:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 128) |= 0x100000u;
            while (1)
            {
              v187 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v187 & 0x7F) << v37;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_276;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v39;
            }

LABEL_276:
            v185 = 104;
            goto LABEL_371;
          case 29:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            *(a1 + 128) |= 0x200000u;
            while (1)
            {
              v187 = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v69 |= (v187 & 0x7F) << v67;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              v11 = v68++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_296;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v69;
            }

LABEL_296:
            v185 = 108;
            goto LABEL_371;
          case 30:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 128) |= 0x800000u;
            while (1)
            {
              v187 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v187 & 0x7F) << v55;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_288;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v57;
            }

LABEL_288:
            v185 = 116;
            goto LABEL_371;
          case 31:
            v103 = 0;
            v104 = 0;
            v105 = 0;
            *(a1 + 128) |= 0x2000000u;
            while (1)
            {
              v187 = 0;
              v106 = [a2 position] + 1;
              if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
              {
                v108 = [a2 data];
                [v108 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v105 |= (v187 & 0x7F) << v103;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              v11 = v104++ >= 9;
              if (v11)
              {
                LOBYTE(v109) = 0;
                goto LABEL_318;
              }
            }

            v109 = (v105 != 0) & ~[a2 hasError];
LABEL_318:
            *(a1 + 124) = v109;
            goto LABEL_372;
          case 32:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 128) |= 0x4000u;
            while (1)
            {
              v187 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v187 & 0x7F) << v49;
              if ((v187 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_284;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v51;
            }

LABEL_284:
            v185 = 80;
            goto LABEL_371;
          case 33:
            v178 = 0;
            v179 = 0;
            v180 = 0;
            *(a1 + 128) |= 0x10000u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_372;
            }

            return result;
        }

        while (1)
        {
          v187 = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            v183 = [a2 data];
            [v183 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (v187 & 0x7F) << v178;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v11 = v179++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_370;
          }
        }

        v36 = [a2 hasError] ? 0 : v180;
LABEL_370:
        v185 = 88;
LABEL_371:
        *(a1 + v185) = v36;
      }

LABEL_372:
      v186 = [a2 position];
    }

    while (v186 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000FF738(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  v5 = &OBJC_IVAR___CellularLteSysInfoBlocks__has;
  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v202) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v202 & 0x7F) << v6;
      if ((v202 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v8 = 0;
        goto LABEL_15;
      }
    }

    if ([a2 hasError])
    {
      v8 = 0;
    }

LABEL_15:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v13 = v8 & 7;
    if (v13 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v14 = v8 >> 3;
    v15 = [NSNumber numberWithUnsignedInt:v8 >> 3];
    v16 = [KBBMetricUtility isValidMetricIdTag:v15 forClass:objc_opt_class()];

    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        LOBYTE(v202) = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v202 & 0x7F) << v17;
        if ((v202 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v12 = v18++ >= 9;
        if (v12)
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
      NSLog(@"Unknown tag: %x:%u", v14, v23);
      goto LABEL_388;
    }

    switch(v14)
    {
      case 1:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + v5[765]) |= 1u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v202 & 0x7F) << v24;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
LABEL_342:
            *(a1 + 56) = v30;
            goto LABEL_388;
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

        goto LABEL_342;
      case 2:
        if (v13 == 2)
        {
          v202 = 0;
          v203 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v114 = [a2 position];
            if (v114 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v115 = 0;
            v116 = 0;
            v117 = 0;
            while (1)
            {
              v204 = 0;
              v118 = [a2 position] + 1;
              if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
              {
                v120 = [a2 data];
                [v120 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v117 |= (v204 & 0x7F) << v115;
              if ((v204 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              v12 = v116++ >= 9;
              if (v12)
              {
                goto LABEL_184;
              }
            }

            [a2 hasError];
LABEL_184:
            PBRepeatedUInt32Add();
          }

LABEL_290:
          PBReaderRecallMark();
        }

        else
        {
          v196 = 0;
          v197 = 0;
          v198 = 0;
          while (1)
          {
            LOBYTE(v202) = 0;
            v199 = [a2 position] + 1;
            if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
            {
              v201 = [a2 data];
              [v201 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v198 |= (v202 & 0x7F) << v196;
            if ((v202 & 0x80) == 0)
            {
              break;
            }

            v196 += 7;
            v12 = v197++ >= 9;
            if (v12)
            {
              goto LABEL_409;
            }
          }

LABEL_408:
          [a2 hasError];
LABEL_409:
          PBRepeatedUInt32Add();
          v5 = &OBJC_IVAR___CellularLteSysInfoBlocks__has;
        }

        goto LABEL_388;
      case 3:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + v5[765]) |= 0x20u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v202 & 0x7F) << v90;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v92;
        }

LABEL_326:
        v188 = 88;
        goto LABEL_387;
      case 4:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + v5[765]) |= 2u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v202 & 0x7F) << v102;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_334;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v104;
        }

LABEL_334:
        v188 = 64;
        goto LABEL_387;
      case 5:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + v5[765]) |= 0x200u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v202 & 0x7F) << v58;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_310;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v60;
        }

LABEL_310:
        v188 = 104;
        goto LABEL_387;
      case 6:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + v5[765]) |= 0x800u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v202 & 0x7F) << v127;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_350;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v129;
        }

LABEL_350:
        v188 = 112;
        goto LABEL_387;
      case 7:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + v5[765]) |= 0x400u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            v150 = [a2 data];
            [v150 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v202 & 0x7F) << v145;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v12 = v146++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_362;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v147;
        }

LABEL_362:
        v188 = 108;
        goto LABEL_387;
      case 8:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + v5[765]) |= 0x40u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v202 & 0x7F) << v108;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v12 = v109++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_338;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v110;
        }

LABEL_338:
        v188 = 92;
        goto LABEL_387;
      case 9:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + v5[765]) |= 0x100u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v202 & 0x7F) << v164;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_374;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v166;
        }

LABEL_374:
        v188 = 100;
        goto LABEL_387;
      case 10:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + v5[765]) |= 0x80u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v202 & 0x7F) << v70;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v72;
        }

LABEL_318:
        v188 = 96;
        goto LABEL_387;
      case 11:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(a1 + v5[765]) |= 0x10000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v202 & 0x7F) << v157;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v163 = 0;
            goto LABEL_370;
          }
        }

        if ([a2 hasError])
        {
          v163 = 0;
        }

        else
        {
          v163 = v159;
        }

LABEL_370:
        v37 = -(v163 & 1) ^ (v163 >> 1);
        v188 = 144;
        goto LABEL_387;
      case 12:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + v5[765]) |= 0x8000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v202 & 0x7F) << v51;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            v57 = 0;
            goto LABEL_306;
          }
        }

        if ([a2 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_306:
        v37 = -(v57 & 1) ^ (v57 >> 1);
        v188 = 140;
        goto LABEL_387;
      case 13:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + v5[765]) |= 0x4000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v202 & 0x7F) << v64;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v66;
        }

LABEL_314:
        v188 = 136;
        goto LABEL_387;
      case 14:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + v5[765]) |= 0x80000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v202 & 0x7F) << v139;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_358;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v141;
        }

LABEL_358:
        v188 = 156;
        goto LABEL_387;
      case 15:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + v5[765]) |= 0x100000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v202 & 0x7F) << v45;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_298;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v47;
        }

LABEL_298:
        v188 = 160;
        goto LABEL_387;
      case 16:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + v5[765]) |= 0x20000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v202 & 0x7F) << v96;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v12 = v97++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_330;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v98;
        }

LABEL_330:
        v188 = 148;
        goto LABEL_387;
      case 17:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + v5[765]) |= 0x40000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v202 & 0x7F) << v39;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v12 = v40++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_294;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v41;
        }

LABEL_294:
        v188 = 152;
        goto LABEL_387;
      case 18:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + v5[765]) |= 0x400000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v202 & 0x7F) << v121;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_346;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v123;
        }

LABEL_346:
        v188 = 168;
        goto LABEL_387;
      case 19:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + v5[765]) |= 0x800000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            v156 = [a2 data];
            [v156 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v202 & 0x7F) << v151;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v12 = v152++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_366;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v153;
        }

LABEL_366:
        v188 = 172;
        goto LABEL_387;
      case 20:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        *(a1 + v5[765]) |= 0x2000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v178 |= (v202 & 0x7F) << v176;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v12 = v177++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_382;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v178;
        }

LABEL_382:
        v188 = 132;
        goto LABEL_387;
      case 21:
        v38 = objc_alloc_init(NbrEutra);
        [a1 addNbrEutra:v38];
        v202 = 0;
        v203 = 0;
        if (!PBReaderPlaceMark() || !sub_10010D654(v38, a2))
        {
          goto LABEL_412;
        }

        goto LABEL_289;
      case 22:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + v5[765]) |= 8u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v202 & 0x7F) << v133;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v135;
        }

LABEL_354:
        v188 = 72;
        goto LABEL_387;
      case 23:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + v5[765]) |= 0x1000u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v202 & 0x7F) << v170;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v12 = v171++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_378;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v172;
        }

LABEL_378:
        v188 = 128;
        goto LABEL_387;
      case 24:
        v182 = 0;
        v183 = 0;
        v184 = 0;
        *(a1 + v5[765]) |= 0x10u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v202 & 0x7F) << v182;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v12 = v183++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_386;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v184;
        }

LABEL_386:
        v188 = 76;
        goto LABEL_387;
      case 25:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + v5[765]) |= 4u;
        while (1)
        {
          LOBYTE(v202) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v202 & 0x7F) << v84;
          if ((v202 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_322;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v86;
        }

LABEL_322:
        v188 = 68;
        goto LABEL_387;
      case 26:
        if (v13 != 2)
        {
          v190 = 0;
          v191 = 0;
          v192 = 0;
          while (1)
          {
            LOBYTE(v202) = 0;
            v193 = [a2 position] + 1;
            if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
            {
              v195 = [a2 data];
              [v195 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v192 |= (v202 & 0x7F) << v190;
            if ((v202 & 0x80) == 0)
            {
              goto LABEL_408;
            }

            v190 += 7;
            v12 = v191++ >= 9;
            if (v12)
            {
              goto LABEL_409;
            }
          }
        }

        v202 = 0;
        v203 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v77 = [a2 position];
          if (v77 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_290;
          }

          v78 = 0;
          v79 = 0;
          v80 = 0;
          while (1)
          {
            v204 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              v83 = [a2 data];
              [v83 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v204 & 0x7F) << v78;
            if ((v204 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v12 = v79++ >= 9;
            if (v12)
            {
              goto LABEL_124;
            }
          }

          [a2 hasError];
LABEL_124:
          PBRepeatedUInt32Add();
        }

      case 27:
        v38 = objc_alloc_init(UtraReselectionInfo);
        objc_storeStrong((a1 + 176), v38);
        v202 = 0;
        v203 = 0;
        if (PBReaderPlaceMark() && sub_10019A3E0(v38, a2))
        {
          goto LABEL_289;
        }

        goto LABEL_412;
      case 28:
        v38 = objc_alloc_init(GeraReselectionInfo);
        objc_storeStrong((a1 + 80), v38);
        v202 = 0;
        v203 = 0;
        if (PBReaderPlaceMark() && sub_100037578(v38, a2))
        {
LABEL_289:
          PBReaderRecallMark();

LABEL_388:
          v189 = [a2 position];
          if (v189 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_412:

        return 0;
      default:
        if (v14 == 127)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + v5[765]) |= 0x200000u;
          while (1)
          {
            LOBYTE(v202) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v202 & 0x7F) << v31;
            if ((v202 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v12 = v32++ >= 9;
            if (v12)
            {
              v37 = 0;
              goto LABEL_302;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_302:
          v188 = 164;
LABEL_387:
          *(a1 + v188) = v37;
        }

        else if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_388;
    }
  }
}

uint64_t sub_100104730(uint64_t a1, void *a2)
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
        LOBYTE(v163) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v163 & 0x7F) << v5;
        if ((v163 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        break;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        break;
      }

      v14 = v12 >> 3;
      v15 = [NSNumber numberWithUnsignedInt:v14];
      v16 = [KBBMetricUtility isValidMetricIdTag:v15 forClass:objc_opt_class()];

      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v163) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v163 & 0x7F) << v17;
          if ((v163 & 0x80) == 0)
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

        v23 = [a2 hasError] ? 0 : v19;
LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v14, v23);
      }

      else
      {
        switch(v14)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 200) |= 1u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v163 & 0x7F) << v24;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_218;
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

LABEL_218:
            *(a1 + 152) = v30;
            break;
          case 3:
            v68 = 0;
            v69 = 0;
            v70 = 0;
            *(a1 + 200) |= 2u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v71 = [a2 position] + 1;
              if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
              {
                v73 = [a2 data];
                [v73 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v70 |= (v163 & 0x7F) << v68;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v11 = v69++ >= 9;
              if (v11)
              {
                v47 = 0;
                goto LABEL_222;
              }
            }

            if ([a2 hasError])
            {
              v47 = 0;
            }

            else
            {
              v47 = v70;
            }

LABEL_222:
            v125 = 160;
            goto LABEL_243;
          case 4:
            if (v13 != 2)
            {
              v132 = 0;
              v133 = 0;
              v134 = 0;
              while (1)
              {
                LOBYTE(v163) = 0;
                v135 = [a2 position] + 1;
                if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
                {
                  v137 = [a2 data];
                  [v137 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v134 |= (v163 & 0x7F) << v132;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_298;
                }

                v132 += 7;
                v11 = v133++ >= 9;
                if (v11)
                {
                  goto LABEL_299;
                }
              }
            }

            v163 = 0;
            v164 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v48 = [a2 position];
              if (v48 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_204;
              }

              v49 = 0;
              v50 = 0;
              v51 = 0;
              while (1)
              {
                v165 = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  v54 = [a2 data];
                  [v54 getBytes:&v165 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v165 & 0x7F) << v49;
                if ((v165 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v11 = v50++ >= 9;
                if (v11)
                {
                  goto LABEL_80;
                }
              }

              [a2 hasError];
LABEL_80:
              PBRepeatedUInt32Add();
            }

          case 5:
            v99 = 0;
            v100 = 0;
            v101 = 0;
            *(a1 + 200) |= 0x40u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v102 = [a2 position] + 1;
              if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
              {
                v104 = [a2 data];
                [v104 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v101 |= (v163 & 0x7F) << v99;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v99 += 7;
              v11 = v100++ >= 9;
              if (v11)
              {
                v47 = 0;
                goto LABEL_238;
              }
            }

            if ([a2 hasError])
            {
              v47 = 0;
            }

            else
            {
              v47 = v101;
            }

LABEL_238:
            v125 = 188;
            goto LABEL_243;
          case 6:
            if (v13 != 2)
            {
              v150 = 0;
              v151 = 0;
              v152 = 0;
              while (1)
              {
                LOBYTE(v163) = 0;
                v153 = [a2 position] + 1;
                if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
                {
                  v155 = [a2 data];
                  [v155 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v152 |= (v163 & 0x7F) << v150;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_298;
                }

                v150 += 7;
                v11 = v151++ >= 9;
                if (v11)
                {
                  goto LABEL_299;
                }
              }
            }

            v163 = 0;
            v164 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v105 = [a2 position];
              if (v105 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_204;
              }

              v106 = 0;
              v107 = 0;
              v108 = 0;
              while (1)
              {
                v165 = 0;
                v109 = [a2 position] + 1;
                if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
                {
                  v111 = [a2 data];
                  [v111 getBytes:&v165 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v108 |= (v165 & 0x7F) << v106;
                if ((v165 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                v11 = v107++ >= 9;
                if (v11)
                {
                  goto LABEL_179;
                }
              }

              [a2 hasError];
LABEL_179:
              PBRepeatedUInt32Add();
            }

          case 7:
            if (v13 != 2)
            {
              v138 = 0;
              v139 = 0;
              v140 = 0;
              while (1)
              {
                LOBYTE(v163) = 0;
                v141 = [a2 position] + 1;
                if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
                {
                  v143 = [a2 data];
                  [v143 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v140 |= (v163 & 0x7F) << v138;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_298;
                }

                v138 += 7;
                v11 = v139++ >= 9;
                if (v11)
                {
                  goto LABEL_299;
                }
              }
            }

            v163 = 0;
            v164 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v55 = [a2 position];
              if (v55 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_204;
              }

              v56 = 0;
              v57 = 0;
              v58 = 0;
              while (1)
              {
                v165 = 0;
                v59 = [a2 position] + 1;
                if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
                {
                  v61 = [a2 data];
                  [v61 getBytes:&v165 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v58 |= (v165 & 0x7F) << v56;
                if ((v165 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v11 = v57++ >= 9;
                if (v11)
                {
                  goto LABEL_95;
                }
              }

              [a2 hasError];
LABEL_95:
              PBRepeatedUInt32Add();
            }

          case 8:
            if (v13 != 2)
            {
              v144 = 0;
              v145 = 0;
              v146 = 0;
              while (1)
              {
                LOBYTE(v163) = 0;
                v147 = [a2 position] + 1;
                if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
                {
                  v149 = [a2 data];
                  [v149 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v146 |= (v163 & 0x7F) << v144;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_298;
                }

                v144 += 7;
                v11 = v145++ >= 9;
                if (v11)
                {
                  goto LABEL_299;
                }
              }
            }

            v163 = 0;
            v164 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v74 = [a2 position];
              if (v74 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_204;
              }

              v75 = 0;
              v76 = 0;
              v77 = 0;
              while (1)
              {
                v165 = 0;
                v78 = [a2 position] + 1;
                if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
                {
                  v80 = [a2 data];
                  [v80 getBytes:&v165 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v77 |= (v165 & 0x7F) << v75;
                if ((v165 & 0x80) == 0)
                {
                  break;
                }

                v75 += 7;
                v11 = v76++ >= 9;
                if (v11)
                {
                  goto LABEL_128;
                }
              }

              [a2 hasError];
LABEL_128:
              PBRepeatedUInt32Add();
            }

          case 9:
            v81 = 0;
            v82 = 0;
            v83 = 0;
            *(a1 + 200) |= 0x10u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v84 = [a2 position] + 1;
              if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
              {
                v86 = [a2 data];
                [v86 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v83 |= (v163 & 0x7F) << v81;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              v11 = v82++ >= 9;
              if (v11)
              {
                v47 = 0;
                goto LABEL_226;
              }
            }

            if ([a2 hasError])
            {
              v47 = 0;
            }

            else
            {
              v47 = v83;
            }

LABEL_226:
            v125 = 180;
            goto LABEL_243;
          case 10:
            if (v13 == 2)
            {
              v163 = 0;
              v164 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v118 = [a2 position];
                if (v118 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v119 = 0;
                v120 = 0;
                v121 = 0;
                while (1)
                {
                  v165 = 0;
                  v122 = [a2 position] + 1;
                  if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
                  {
                    v124 = [a2 data];
                    [v124 getBytes:&v165 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v121 |= (v165 & 0x7F) << v119;
                  if ((v165 & 0x80) == 0)
                  {
                    break;
                  }

                  v119 += 7;
                  v11 = v120++ >= 9;
                  if (v11)
                  {
                    goto LABEL_203;
                  }
                }

                [a2 hasError];
LABEL_203:
                PBRepeatedUInt32Add();
              }

LABEL_204:
              PBReaderRecallMark();
            }

            else
            {
              v156 = 0;
              v157 = 0;
              v158 = 0;
              while (1)
              {
                LOBYTE(v163) = 0;
                v159 = [a2 position] + 1;
                if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
                {
                  v161 = [a2 data];
                  [v161 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v158 |= (v163 & 0x7F) << v156;
                if ((v163 & 0x80) == 0)
                {
                  break;
                }

                v156 += 7;
                v11 = v157++ >= 9;
                if (v11)
                {
                  goto LABEL_299;
                }
              }

LABEL_298:
              [a2 hasError];
LABEL_299:
              PBRepeatedUInt32Add();
            }

            break;
          case 13:
            v112 = 0;
            v113 = 0;
            v114 = 0;
            *(a1 + 200) |= 4u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v115 = [a2 position] + 1;
              if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
              {
                v117 = [a2 data];
                [v117 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v114 |= (v163 & 0x7F) << v112;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v112 += 7;
              v11 = v113++ >= 9;
              if (v11)
              {
                v47 = 0;
                goto LABEL_242;
              }
            }

            if ([a2 hasError])
            {
              v47 = 0;
            }

            else
            {
              v47 = v114;
            }

LABEL_242:
            v125 = 164;
            goto LABEL_243;
          case 14:
            v39 = PBReaderReadData();
            v40 = *(a1 + 168);
            *(a1 + 168) = v39;

            break;
          case 15:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 200) |= 0x100u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v64 |= (v163 & 0x7F) << v62;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v11 = v63++ >= 9;
              if (v11)
              {
                v47 = 0;
                goto LABEL_214;
              }
            }

            if ([a2 hasError])
            {
              v47 = 0;
            }

            else
            {
              v47 = v64;
            }

LABEL_214:
            v125 = 196;
            goto LABEL_243;
          case 16:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 200) |= 8u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v163 & 0x7F) << v41;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v47 = 0;
                goto LABEL_210;
              }
            }

            if ([a2 hasError])
            {
              v47 = 0;
            }

            else
            {
              v47 = v43;
            }

LABEL_210:
            v125 = 176;
            goto LABEL_243;
          case 17:
            if (v13 != 2)
            {
              v126 = 0;
              v127 = 0;
              v128 = 0;
              while (1)
              {
                LOBYTE(v163) = 0;
                v129 = [a2 position] + 1;
                if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
                {
                  v131 = [a2 data];
                  [v131 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v128 |= (v163 & 0x7F) << v126;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_298;
                }

                v126 += 7;
                v11 = v127++ >= 9;
                if (v11)
                {
                  goto LABEL_299;
                }
              }
            }

            v163 = 0;
            v164 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v32 = [a2 position];
              if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_204;
              }

              v33 = 0;
              v34 = 0;
              v35 = 0;
              while (1)
              {
                v165 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v165 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v165 & 0x7F) << v33;
                if ((v165 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  goto LABEL_55;
                }
              }

              [a2 hasError];
LABEL_55:
              PBRepeatedUInt32Add();
            }

          case 18:
            v87 = 0;
            v88 = 0;
            v89 = 0;
            *(a1 + 200) |= 0x80u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v90 = [a2 position] + 1;
              if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
              {
                v92 = [a2 data];
                [v92 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v89 |= (v163 & 0x7F) << v87;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              v11 = v88++ >= 9;
              if (v11)
              {
                v47 = 0;
                goto LABEL_230;
              }
            }

            if ([a2 hasError])
            {
              v47 = 0;
            }

            else
            {
              v47 = v89;
            }

LABEL_230:
            v125 = 192;
            goto LABEL_243;
          case 19:
            v93 = 0;
            v94 = 0;
            v95 = 0;
            *(a1 + 200) |= 0x20u;
            while (1)
            {
              LOBYTE(v163) = 0;
              v96 = [a2 position] + 1;
              if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
              {
                v98 = [a2 data];
                [v98 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v95 |= (v163 & 0x7F) << v93;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              v11 = v94++ >= 9;
              if (v11)
              {
                v47 = 0;
                goto LABEL_234;
              }
            }

            if ([a2 hasError])
            {
              v47 = 0;
            }

            else
            {
              v47 = v95;
            }

LABEL_234:
            v125 = 184;
LABEL_243:
            *(a1 + v125) = v47;
            break;
          default:
            if (PBReaderSkipValueWithTag())
            {
              break;
            }

            return 0;
        }
      }

      v162 = [a2 position];
    }

    while (v162 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100107DFC(uint64_t a1, void *a2)
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
        v138 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v138 & 0x7F) << v5;
        if ((v138 & 0x80) == 0)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v138 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v138 & 0x7F) << v16;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              v138 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v138 & 0x7F) << v23;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_253;
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

LABEL_253:
            *(a1 + 8) = v29;
            break;
          case 2:
            v106 = 0;
            v107 = 0;
            v108 = 0;
            *(a1 + 96) |= 0x100u;
            while (1)
            {
              v138 = 0;
              v109 = [a2 position] + 1;
              if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
              {
                v111 = [a2 data];
                [v111 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v108 |= (v138 & 0x7F) << v106;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v106 += 7;
              v11 = v107++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_245;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v108;
            }

LABEL_245:
            v136 = 44;
            goto LABEL_270;
          case 3:
            v112 = 0;
            v113 = 0;
            v114 = 0;
            *(a1 + 96) |= 8u;
            while (1)
            {
              v138 = 0;
              v115 = [a2 position] + 1;
              if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
              {
                v117 = [a2 data];
                [v117 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v114 |= (v138 & 0x7F) << v112;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v112 += 7;
              v11 = v113++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_249;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v114;
            }

LABEL_249:
            v136 = 24;
            goto LABEL_270;
          case 4:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 96) |= 0x20000u;
            while (1)
            {
              v138 = 0;
              v97 = [a2 position] + 1;
              if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
              {
                v99 = [a2 data];
                [v99 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v96 |= (v138 & 0x7F) << v94;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v11 = v95++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_237;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v96;
            }

LABEL_237:
            v136 = 92;
            goto LABEL_270;
          case 5:
            v88 = 0;
            v89 = 0;
            v90 = 0;
            *(a1 + 96) |= 4u;
            while (1)
            {
              v138 = 0;
              v91 = [a2 position] + 1;
              if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
              {
                v93 = [a2 data];
                [v93 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v90 |= (v138 & 0x7F) << v88;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              v11 = v89++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_233;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v90;
            }

LABEL_233:
            v136 = 20;
            goto LABEL_270;
          case 6:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 96) |= 0x10000u;
            while (1)
            {
              v138 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v138 & 0x7F) << v64;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_217;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v66;
            }

LABEL_217:
            v136 = 88;
            goto LABEL_270;
          case 7:
            v58 = 0;
            v59 = 0;
            v60 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              v138 = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v138 & 0x7F) << v58;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v11 = v59++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_213;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v60;
            }

LABEL_213:
            v136 = 16;
            goto LABEL_270;
          case 8:
            v100 = 0;
            v101 = 0;
            v102 = 0;
            *(a1 + 96) |= 0x10u;
            while (1)
            {
              v138 = 0;
              v103 = [a2 position] + 1;
              if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
              {
                v105 = [a2 data];
                [v105 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v102 |= (v138 & 0x7F) << v100;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              v11 = v101++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_241;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v102;
            }

LABEL_241:
            v136 = 28;
            goto LABEL_270;
          case 9:
            v82 = 0;
            v83 = 0;
            v84 = 0;
            *(a1 + 96) |= 0x8000u;
            while (1)
            {
              v138 = 0;
              v85 = [a2 position] + 1;
              if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
              {
                v87 = [a2 data];
                [v87 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v84 |= (v138 & 0x7F) << v82;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              v11 = v83++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_229;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v84;
            }

LABEL_229:
            v136 = 84;
            goto LABEL_270;
          case 10:
            v124 = 0;
            v125 = 0;
            v126 = 0;
            *(a1 + 96) |= 0x40u;
            while (1)
            {
              v138 = 0;
              v127 = [a2 position] + 1;
              if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
              {
                v129 = [a2 data];
                [v129 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v126 |= (v138 & 0x7F) << v124;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v124 += 7;
              v11 = v125++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_261;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v126;
            }

LABEL_261:
            v136 = 36;
            goto LABEL_270;
          case 11:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 96) |= 0x400u;
            while (1)
            {
              v138 = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v138 & 0x7F) << v46;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_205;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v48;
            }

LABEL_205:
            v136 = 52;
            goto LABEL_270;
          case 12:
            v70 = 0;
            v71 = 0;
            v72 = 0;
            *(a1 + 96) |= 0x800u;
            while (1)
            {
              v138 = 0;
              v73 = [a2 position] + 1;
              if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
              {
                v75 = [a2 data];
                [v75 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v72 |= (v138 & 0x7F) << v70;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v11 = v71++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_221;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v72;
            }

LABEL_221:
            v136 = 56;
            goto LABEL_270;
          case 13:
          case 18:
          case 19:
          case 20:
          case 21:
          case 23:
            goto LABEL_51;
          case 14:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            *(a1 + 96) |= 0x2000u;
            while (1)
            {
              v138 = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v54 |= (v138 & 0x7F) << v52;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v11 = v53++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_209;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v54;
            }

LABEL_209:
            v136 = 76;
            goto LABEL_270;
          case 15:
            v130 = 0;
            v131 = 0;
            v132 = 0;
            *(a1 + 96) |= 0x4000u;
            while (1)
            {
              v138 = 0;
              v133 = [a2 position] + 1;
              if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
              {
                v135 = [a2 data];
                [v135 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v132 |= (v138 & 0x7F) << v130;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              v11 = v131++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_265;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v132;
            }

LABEL_265:
            v136 = 80;
            goto LABEL_270;
          case 16:
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 96) |= 0x200u;
            while (1)
            {
              v138 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v138 & 0x7F) << v40;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_201;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v42;
            }

LABEL_201:
            v136 = 48;
            goto LABEL_270;
          case 17:
            v118 = 0;
            v119 = 0;
            v120 = 0;
            *(a1 + 96) |= 0x20u;
            while (1)
            {
              v138 = 0;
              v121 = [a2 position] + 1;
              if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
              {
                v123 = [a2 data];
                [v123 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v120 |= (v138 & 0x7F) << v118;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v118 += 7;
              v11 = v119++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_257;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v120;
            }

LABEL_257:
            v136 = 32;
            goto LABEL_270;
          case 22:
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 96) |= 0x80u;
            while (1)
            {
              v138 = 0;
              v79 = [a2 position] + 1;
              if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v78 |= (v138 & 0x7F) << v76;
              if ((v138 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v11 = v77++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_225;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v78;
            }

LABEL_225:
            v136 = 40;
            goto LABEL_270;
          case 24:
            v38 = PBReaderReadData();
            v39 = *(a1 + 64);
            *(a1 + 64) = v38;

            break;
          default:
            if (v13 == 127)
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 96) |= 0x1000u;
              while (1)
              {
                v138 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v138 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v138 & 0x7F) << v30;
                if ((v138 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_269;
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

LABEL_269:
              v136 = 72;
LABEL_270:
              *(a1 + v136) = v36;
            }

            else
            {
LABEL_51:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }
            }

            break;
        }
      }

      v137 = [a2 position];
    }

    while (v137 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10010AEE0(uint64_t a1, void *a2)
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
        v91 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v91 & 0x7F) << v5;
        if ((v91 & 0x80) == 0)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v100 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v100 & 0x7F) << v16;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_43;
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

LABEL_43:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_178;
      }

      if (v13 <= 6)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              v101 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v101 & 0x7F) << v49;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v55 = 0;
                goto LABEL_140;
              }
            }

            if ([a2 hasError])
            {
              v55 = 0;
            }

            else
            {
              v55 = v51;
            }

LABEL_140:
            *(a1 + 8) = v55;
            goto LABEL_178;
          }

          if (v13 != 2)
          {
LABEL_135:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_178;
          }

          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 60) |= 0x10u;
          while (1)
          {
            v99 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v99 & 0x7F) << v43;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_144;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v45;
          }

LABEL_144:
          v89 = 28;
        }

        else
        {
          switch(v13)
          {
            case 3:
              v74 = 0;
              v75 = 0;
              v76 = 0;
              *(a1 + 60) |= 0x20u;
              while (1)
              {
                v98 = 0;
                v77 = [a2 position] + 1;
                if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
                {
                  v79 = [a2 data];
                  [v79 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v76 |= (v98 & 0x7F) << v74;
                if ((v98 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                v11 = v75++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_164;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v76;
              }

LABEL_164:
              v89 = 32;
              break;
            case 4:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              *(a1 + 60) |= 4u;
              while (1)
              {
                v97 = 0;
                v59 = [a2 position] + 1;
                if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
                {
                  v61 = [a2 data];
                  [v61 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v58 |= (v97 & 0x7F) << v56;
                if ((v97 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v11 = v57++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_148;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v58;
              }

LABEL_148:
              v89 = 20;
              break;
            case 6:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 60) |= 0x200u;
              while (1)
              {
                v102 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v102 & 0x7F) << v30;
                if ((v102 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_160;
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

LABEL_160:
              v29 = -(v36 & 1) ^ (v36 >> 1);
              v89 = 56;
              break;
            default:
              goto LABEL_135;
          }
        }

        goto LABEL_177;
      }

      if (v13 <= 9)
      {
        break;
      }

      if (v13 != 10)
      {
        if (v13 == 11)
        {
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *(a1 + 60) |= 0x100u;
          while (1)
          {
            v93 = 0;
            v71 = [a2 position] + 1;
            if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
            {
              v73 = [a2 data];
              [v73 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v70 |= (v93 & 0x7F) << v68;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v11 = v69++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_156;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v70;
          }

LABEL_156:
          v89 = 52;
        }

        else
        {
          if (v13 != 12)
          {
            goto LABEL_135;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 60) |= 0x80u;
          while (1)
          {
            v92 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v92 & 0x7F) << v37;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v39;
          }

LABEL_172:
          v89 = 48;
        }

        goto LABEL_177;
      }

      v86 = PBReaderReadData();
      v87 = *(a1 + 40);
      *(a1 + 40) = v86;

LABEL_178:
      v90 = [a2 position];
      if (v90 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 7)
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      *(a1 + 60) |= 8u;
      while (1)
      {
        v96 = 0;
        v83 = [a2 position] + 1;
        if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v82 |= (v96 & 0x7F) << v80;
        if ((v96 & 0x80) == 0)
        {
          break;
        }

        v80 += 7;
        v11 = v81++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_176;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v82;
      }

LABEL_176:
      v89 = 24;
    }

    else if (v13 == 8)
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      *(a1 + 60) |= 2u;
      while (1)
      {
        v95 = 0;
        v65 = [a2 position] + 1;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
        {
          v67 = [a2 data];
          [v67 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v64 |= (v95 & 0x7F) << v62;
        if ((v95 & 0x80) == 0)
        {
          break;
        }

        v62 += 7;
        v11 = v63++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_152;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v64;
      }

LABEL_152:
      v89 = 16;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 60) |= 0x40u;
      while (1)
      {
        v94 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v94 & 0x7F) << v23;
        if ((v94 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_168;
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

LABEL_168:
      v89 = 36;
    }

LABEL_177:
    *(a1 + v89) = v29;
    goto LABEL_178;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10010D654(uint64_t a1, void *a2)
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
        LOBYTE(v141[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v141[0] & 0x7F) << v5;
        if ((v141[0] & 0x80) == 0)
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
      if ([a2 hasError])
      {
        break;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        break;
      }

      v14 = v12 >> 3;
      v15 = [NSNumber numberWithUnsignedInt:v14];
      v16 = [KBBMetricUtility isValidMetricIdTag:v15 forClass:objc_opt_class()];

      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v141[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v141[0] & 0x7F) << v17;
          if ((v141[0] & 0x80) == 0)
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

        v23 = [a2 hasError] ? 0 : v19;
LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v14, v23);
      }

      else
      {
        switch(v14)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 96) |= 4u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v141[0] & 0x7F) << v24;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
LABEL_232:
                v133 = 40;
                goto LABEL_257;
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

            goto LABEL_232;
          case 2:
            v96 = 0;
            v97 = 0;
            v98 = 0;
            *(a1 + 96) |= 0x100u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v99 = [a2 position] + 1;
              if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
              {
                v101 = [a2 data];
                [v101 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v98 |= (v141[0] & 0x7F) << v96;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v96 += 7;
              v11 = v97++ >= 9;
              if (v11)
              {
                v102 = 0;
                goto LABEL_236;
              }
            }

            if ([a2 hasError])
            {
              v102 = 0;
            }

            else
            {
              v102 = v98;
            }

LABEL_236:
            v30 = -(v102 & 1) ^ (v102 >> 1);
            v133 = 64;
            goto LABEL_257;
          case 3:
            v70 = 0;
            v71 = 0;
            v72 = 0;
            *(a1 + 96) |= 0x80u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v73 = [a2 position] + 1;
              if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
              {
                v75 = [a2 data];
                [v75 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v72 |= (v141[0] & 0x7F) << v70;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v11 = v71++ >= 9;
              if (v11)
              {
                v76 = 0;
                goto LABEL_216;
              }
            }

            if ([a2 hasError])
            {
              v76 = 0;
            }

            else
            {
              v76 = v72;
            }

LABEL_216:
            v30 = -(v76 & 1) ^ (v76 >> 1);
            v133 = 60;
            goto LABEL_257;
          case 4:
            v83 = 0;
            v84 = 0;
            v85 = 0;
            *(a1 + 96) |= 0x40u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v86 = [a2 position] + 1;
              if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
              {
                v88 = [a2 data];
                [v88 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v85 |= (v141[0] & 0x7F) << v83;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              v11 = v84++ >= 9;
              if (v11)
              {
                v89 = 0;
                goto LABEL_224;
              }
            }

            if ([a2 hasError])
            {
              v89 = 0;
            }

            else
            {
              v89 = v85;
            }

LABEL_224:
            v30 = -(v89 & 1) ^ (v89 >> 1);
            v133 = 56;
            goto LABEL_257;
          case 5:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 96) |= 0x10u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v141[0] & 0x7F) << v51;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v57 = 0;
                goto LABEL_204;
              }
            }

            if ([a2 hasError])
            {
              v57 = 0;
            }

            else
            {
              v57 = v53;
            }

LABEL_204:
            v30 = -(v57 & 1) ^ (v57 >> 1);
            v133 = 48;
            goto LABEL_257;
          case 6:
            v103 = 0;
            v104 = 0;
            v105 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v106 = [a2 position] + 1;
              if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
              {
                v108 = [a2 data];
                [v108 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v105 |= (v141[0] & 0x7F) << v103;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              v11 = v104++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_240;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v105;
            }

LABEL_240:
            v133 = 36;
            goto LABEL_257;
          case 7:
            v115 = 0;
            v116 = 0;
            v117 = 0;
            *(a1 + 96) |= 0x1000u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v118 = [a2 position] + 1;
              if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
              {
                v120 = [a2 data];
                [v120 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v117 |= (v141[0] & 0x7F) << v115;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              v11 = v116++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_248;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v117;
            }

LABEL_248:
            v133 = 80;
            goto LABEL_257;
          case 8:
            v90 = 0;
            v91 = 0;
            v92 = 0;
            *(a1 + 96) |= 0x4000u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v93 = [a2 position] + 1;
              if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
              {
                v95 = [a2 data];
                [v95 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v92 |= (v141[0] & 0x7F) << v90;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              v11 = v91++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_228;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v92;
            }

LABEL_228:
            v133 = 88;
            goto LABEL_257;
          case 9:
            v127 = 0;
            v128 = 0;
            v129 = 0;
            *(a1 + 96) |= 0x2000u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v130 = [a2 position] + 1;
              if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
              {
                v132 = [a2 data];
                [v132 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v129 |= (v141[0] & 0x7F) << v127;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v127 += 7;
              v11 = v128++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_256;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v129;
            }

LABEL_256:
            v133 = 84;
            goto LABEL_257;
          case 10:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 96) |= 0x8000u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v141[0] & 0x7F) << v64;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_212;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v66;
            }

LABEL_212:
            v133 = 92;
            goto LABEL_257;
          case 11:
            v121 = 0;
            v122 = 0;
            v123 = 0;
            *(a1 + 96) |= 0x20u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v124 = [a2 position] + 1;
              if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
              {
                v126 = [a2 data];
                [v126 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v123 |= (v141[0] & 0x7F) << v121;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v121 += 7;
              v11 = v122++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_252;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v123;
            }

LABEL_252:
            v133 = 52;
            goto LABEL_257;
          case 12:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 96) |= 8u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v141[0] & 0x7F) << v45;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_200;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v47;
            }

LABEL_200:
            v133 = 44;
            goto LABEL_257;
          case 13:
            v58 = 0;
            v59 = 0;
            v60 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v141[0] & 0x7F) << v58;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v11 = v59++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_208;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v60;
            }

LABEL_208:
            v133 = 32;
            goto LABEL_257;
          case 14:
            v109 = 0;
            v110 = 0;
            v111 = 0;
            *(a1 + 96) |= 0x800u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v112 = [a2 position] + 1;
              if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
              {
                v114 = [a2 data];
                [v114 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v111 |= (v141[0] & 0x7F) << v109;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              v11 = v110++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_244;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v111;
            }

LABEL_244:
            v133 = 76;
            goto LABEL_257;
          case 15:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 96) |= 0x400u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v141[0] & 0x7F) << v39;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_196;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v41;
            }

LABEL_196:
            v133 = 72;
            goto LABEL_257;
          case 16:
            v77 = 0;
            v78 = 0;
            v79 = 0;
            *(a1 + 96) |= 0x200u;
            while (1)
            {
              LOBYTE(v141[0]) = 0;
              v80 = [a2 position] + 1;
              if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
              {
                v82 = [a2 data];
                [v82 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v79 |= (v141[0] & 0x7F) << v77;
              if ((v141[0] & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v11 = v78++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_220;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v79;
            }

LABEL_220:
            v133 = 68;
LABEL_257:
            *(a1 + v133) = v30;
            break;
          case 17:
            if (v13 == 2)
            {
              v141[0] = 0;
              v141[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v32 = [a2 position];
                if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v33 = 0;
                v34 = 0;
                v35 = 0;
                while (1)
                {
                  v142 = 0;
                  v36 = [a2 position] + 1;
                  if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                  {
                    v38 = [a2 data];
                    [v38 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v35 |= (v142 & 0x7F) << v33;
                  if ((v142 & 0x80) == 0)
                  {
                    break;
                  }

                  v33 += 7;
                  v11 = v34++ >= 9;
                  if (v11)
                  {
                    goto LABEL_55;
                  }
                }

                [a2 hasError];
LABEL_55:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v135 = 0;
              v136 = 0;
              v137 = 0;
              while (1)
              {
                LOBYTE(v141[0]) = 0;
                v138 = [a2 position] + 1;
                if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
                {
                  v140 = [a2 data];
                  [v140 getBytes:v141 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v137 |= (v141[0] & 0x7F) << v135;
                if ((v141[0] & 0x80) == 0)
                {
                  break;
                }

                v135 += 7;
                v11 = v136++ >= 9;
                if (v11)
                {
                  goto LABEL_271;
                }
              }

              [a2 hasError];
LABEL_271:
              PBRepeatedUInt32Add();
            }

            break;
          default:
            if (PBReaderSkipValueWithTag())
            {
              break;
            }

            return 0;
        }
      }

      v134 = [a2 position];
    }

    while (v134 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100110CF4(uint64_t a1, void *a2)
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
        v92 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v92 & 0x7F) << v5;
        if ((v92 & 0x80) == 0)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v96 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v96 & 0x7F) << v16;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_35;
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

LABEL_35:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_175;
      }

      if (v13 <= 6)
      {
        if (v13 <= 3)
        {
          if (v13 == 1)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v97 = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v97 & 0x7F) << v44;
              if ((v97 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                v50 = 0;
                goto LABEL_139;
              }
            }

            if ([a2 hasError])
            {
              v50 = 0;
            }

            else
            {
              v50 = v46;
            }

LABEL_139:
            *(a1 + 8) = v50;
            goto LABEL_175;
          }

          if (v13 != 3)
          {
LABEL_134:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_175;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            v101 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v101 & 0x7F) << v38;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_143;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v40;
          }

LABEL_143:
          v90 = 52;
        }

        else if (v13 == 4)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v100 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v100 & 0x7F) << v71;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v73;
          }

LABEL_161:
          v90 = 20;
        }

        else
        {
          if (v13 == 5)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 64) |= 0x200u;
            while (1)
            {
              v102 = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v102 & 0x7F) << v51;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                LOBYTE(v57) = 0;
                goto LABEL_145;
              }
            }

            v57 = (v53 != 0) & ~[a2 hasError];
LABEL_145:
            *(a1 + 60) = v57;
            goto LABEL_175;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 64) |= 0x100u;
          while (1)
          {
            v95 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v95 & 0x7F) << v25;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_157;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_157:
          v90 = 56;
        }

        goto LABEL_174;
      }

      if (v13 > 9)
      {
        switch(v13)
        {
          case 0xA:
            v83 = 0;
            v84 = 0;
            v85 = 0;
            *(a1 + 64) |= 0x10u;
            while (1)
            {
              v99 = 0;
              v86 = [a2 position] + 1;
              if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
              {
                v88 = [a2 data];
                [v88 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v85 |= (v99 & 0x7F) << v83;
              if ((v99 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              v11 = v84++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_173;
              }
            }

            if ([a2 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v85;
            }

LABEL_173:
            v90 = 28;
            break;
          case 0xB:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 64) |= 8u;
            while (1)
            {
              v103 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v103 & 0x7F) << v64;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v70 = 0;
                goto LABEL_153;
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

LABEL_153:
            v31 = -(v70 & 1) ^ (v70 >> 1);
            v90 = 24;
            break;
          case 0xC:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v98 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v98 & 0x7F) << v32;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_165;
              }
            }

            if ([a2 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v34;
            }

LABEL_165:
            v90 = 16;
            break;
          default:
            goto LABEL_134;
        }

        goto LABEL_174;
      }

      if (v13 == 7)
      {
        break;
      }

      if (v13 == 8)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 64) |= 0x40u;
        while (1)
        {
          v93 = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v93 & 0x7F) << v58;
          if ((v93 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v60;
        }

LABEL_149:
        v90 = 48;
LABEL_174:
        *(a1 + v90) = v31;
        goto LABEL_175;
      }

      v23 = PBReaderReadData();
      v24 = *(a1 + 40);
      *(a1 + 40) = v23;

LABEL_175:
      v91 = [a2 position];
      if (v91 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v77 = 0;
    v78 = 0;
    v79 = 0;
    *(a1 + 64) |= 0x20u;
    while (1)
    {
      v94 = 0;
      v80 = [a2 position] + 1;
      if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
      {
        v82 = [a2 data];
        [v82 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v79 |= (v94 & 0x7F) << v77;
      if ((v94 & 0x80) == 0)
      {
        break;
      }

      v77 += 7;
      v11 = v78++ >= 9;
      if (v11)
      {
        v31 = 0;
        goto LABEL_169;
      }
    }

    if ([a2 hasError])
    {
      v31 = 0;
    }

    else
    {
      v31 = v79;
    }

LABEL_169:
    v90 = 32;
    goto LABEL_174;
  }

  return [a2 hasError] ^ 1;
}