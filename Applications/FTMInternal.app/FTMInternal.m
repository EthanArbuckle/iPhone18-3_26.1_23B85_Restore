uint64_t sub_1000021DC(uint64_t a1, void *a2)
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
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
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
          LOBYTE(v40[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v40[0] & 0x7F) << v16;
          if ((v40[0] & 0x80) == 0)
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
        switch(v13)
        {
          case 0xF:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v40[0] & 0x7F) << v32;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_62;
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

LABEL_62:
            *(a1 + 16) = v38;
            break;
          case 2:
            v31 = objc_alloc_init(TxPowerInfo);
            [a1 addTxPowerInfo:v31];
            v40[0] = 0;
            v40[1] = 0;
            if (!PBReaderPlaceMark() || !sub_100170A98(v31, a2))
            {

              return 0;
            }

            PBReaderRecallMark();

            break;
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v40[0] & 0x7F) << v23;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_66;
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

LABEL_66:
            *(a1 + 8) = v29;
            break;
          default:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            break;
        }
      }

      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000038A8(uint64_t a1, void *a2)
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
        v69 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v69 & 0x7F) << v5;
        if ((v69 & 0x80) == 0)
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
          v75 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v75 & 0x7F) << v16;
          if ((v75 & 0x80) == 0)
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
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 36) |= 0x10u;
              while (1)
              {
                v77 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v77 & 0x7F) << v42;
                if ((v77 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_107;
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

LABEL_107:
              v67 = 24;
              break;
            case 2:
              v61 = 0;
              v62 = 0;
              v63 = 0;
              *(a1 + 36) |= 0x40u;
              while (1)
              {
                v74 = 0;
                v64 = [a2 position] + 1;
                if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
                {
                  v66 = [a2 data];
                  [v66 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 |= (v74 & 0x7F) << v61;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                v11 = v62++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_131;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v63;
              }

LABEL_131:
              v67 = 32;
              break;
            case 3:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 36) |= 8u;
              while (1)
              {
                v73 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v73 & 0x7F) << v30;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_127;
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

LABEL_127:
              v67 = 20;
              break;
            default:
              goto LABEL_75;
          }
        }

        else if (v13 > 5)
        {
          if (v13 == 6)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v71 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v71 & 0x7F) << v55;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v57;
            }

LABEL_115:
            v67 = 16;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_75:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_133;
            }

            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v70 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v70 & 0x7F) << v36;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_123;
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

LABEL_123:
            v67 = 8;
          }
        }

        else if (v13 == 4)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 36) |= 0x20u;
          while (1)
          {
            v76 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v76 & 0x7F) << v49;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_111;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v51;
          }

LABEL_111:
          v67 = 28;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v72 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v72 & 0x7F) << v23;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_119;
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

LABEL_119:
          v67 = 12;
        }

        *(a1 + v67) = v29;
      }

LABEL_133:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100004F6C(uint64_t a1, void *a2)
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
        v63 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v63 & 0x7F) << v5;
        if ((v63 & 0x80) == 0)
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
          v70 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v70 & 0x7F) << v16;
          if ((v70 & 0x80) == 0)
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
      }

      else
      {
        if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 32) |= 8u;
              while (1)
              {
                v66 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v66 & 0x7F) << v42;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_101;
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

LABEL_101:
              v61 = 20;
              break;
            case 5:
              v55 = 0;
              v56 = 0;
              v57 = 0;
              *(a1 + 32) |= 0x20u;
              while (1)
              {
                v65 = 0;
                v58 = [a2 position] + 1;
                if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
                {
                  v60 = [a2 data];
                  [v60 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v57 |= (v65 & 0x7F) << v55;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                v11 = v56++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_117;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v57;
              }

LABEL_117:
              v61 = 28;
              break;
            case 6:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 32) |= 1u;
              while (1)
              {
                v64 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v64 & 0x7F) << v30;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_109;
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

LABEL_109:
              v61 = 8;
              break;
            default:
LABEL_74:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_119;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 32) |= 2u;
              while (1)
              {
                v69 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v69 & 0x7F) << v36;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_97;
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

LABEL_97:
              v61 = 12;
              break;
            case 2:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              *(a1 + 32) |= 0x10u;
              while (1)
              {
                v68 = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  v54 = [a2 data];
                  [v54 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v68 & 0x7F) << v49;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v11 = v50++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_113;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v51;
              }

LABEL_113:
              v61 = 24;
              break;
            case 3:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 32) |= 4u;
              while (1)
              {
                v67 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v67 & 0x7F) << v23;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_105;
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

LABEL_105:
              v61 = 16;
              break;
            default:
              goto LABEL_74;
          }
        }

        *(a1 + v61) = v29;
      }

LABEL_119:
      v62 = [a2 position];
    }

    while (v62 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100006590(uint64_t a1, void *a2)
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
        v78 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v78 & 0x7F) << v5;
        if ((v78 & 0x80) == 0)
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
          v84 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v84 & 0x7F) << v16;
          if ((v84 & 0x80) == 0)
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
      }

      else
      {
        if (v13 > 4)
        {
          if (v13 > 6)
          {
            if (v13 == 7)
            {
              v69 = 0;
              v70 = 0;
              v71 = 0;
              *(a1 + 40) |= 8u;
              while (1)
              {
                v80 = 0;
                v72 = [a2 position] + 1;
                if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
                {
                  v74 = [a2 data];
                  [v74 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v71 |= (v80 & 0x7F) << v69;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v69 += 7;
                v11 = v70++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_129;
                }
              }

              if ([a2 hasError])
              {
                v36 = 0;
              }

              else
              {
                v36 = v71;
              }

LABEL_129:
              v76 = 20;
            }

            else
            {
              if (v13 != 8)
              {
LABEL_112:
                result = PBReaderSkipValueWithTag();
                if (!result)
                {
                  return result;
                }

                goto LABEL_147;
              }

              v44 = 0;
              v45 = 0;
              v46 = 0;
              *(a1 + 40) |= 0x20u;
              while (1)
              {
                v79 = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v79 & 0x7F) << v44;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_145;
                }
              }

              if ([a2 hasError])
              {
                v36 = 0;
              }

              else
              {
                v36 = v46;
              }

LABEL_145:
              v76 = 28;
            }
          }

          else if (v13 == 5)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 40) |= 0x80u;
            while (1)
            {
              v82 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v82 & 0x7F) << v57;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_121;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v59;
            }

LABEL_121:
            v76 = 36;
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 40) |= 0x10u;
            while (1)
            {
              v81 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v81 & 0x7F) << v30;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_137;
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

LABEL_137:
            v76 = 24;
          }
        }

        else if (v13 > 2)
        {
          if (v13 == 3)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v83 = 0;
              v66 = [a2 position] + 1;
              if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v65 |= (v83 & 0x7F) << v63;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v11 = v64++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_125;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v65;
            }

LABEL_125:
            v76 = 8;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 40) |= 0x40u;
            while (1)
            {
              v85 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v85 & 0x7F) << v37;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_141;
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

LABEL_141:
            v36 = -(v43 & 1) ^ (v43 >> 1);
            v76 = 32;
          }
        }

        else if (v13 == 1)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v87 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v87 & 0x7F) << v50;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v56 = 0;
              goto LABEL_117;
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

LABEL_117:
          v36 = -(v56 & 1) ^ (v56 >> 1);
          v76 = 12;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_112;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v86 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v86 & 0x7F) << v23;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_133;
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

LABEL_133:
          v36 = -(v29 & 1) ^ (v29 >> 1);
          v76 = 16;
        }

        *(a1 + v76) = v36;
      }

LABEL_147:
      v77 = [a2 position];
    }

    while (v77 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100008514(uint64_t a1, void *a2)
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
        v101 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v101 & 0x7F) << v5;
        if ((v101 & 0x80) == 0)
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
          v104 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v104 & 0x7F) << v16;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
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

LABEL_44:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_188;
      }

      if (v13 > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v67 = 0;
              v68 = 0;
              v69 = 0;
              *(a1 + 32) |= 0x40u;
              while (1)
              {
                v109 = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v109 & 0x7F) << v67;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v11 = v68++ >= 9;
                if (v11)
                {
                  LOBYTE(v42) = 0;
                  goto LABEL_175;
                }
              }

              v42 = (v69 != 0) & ~[a2 hasError];
LABEL_175:
              v99 = 26;
              break;
            case 0xB:
              v91 = 0;
              v92 = 0;
              v93 = 0;
              *(a1 + 32) |= 0x20u;
              while (1)
              {
                v108 = 0;
                v94 = [a2 position] + 1;
                if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
                {
                  v96 = [a2 data];
                  [v96 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v93 |= (v108 & 0x7F) << v91;
                if ((v108 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                v11 = v92++ >= 9;
                if (v11)
                {
                  LOBYTE(v42) = 0;
                  goto LABEL_186;
                }
              }

              v42 = (v93 != 0) & ~[a2 hasError];
LABEL_186:
              v99 = 25;
              break;
            case 0xC:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 32) |= 0x10u;
              while (1)
              {
                v107 = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v107 & 0x7F) << v43;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  LOBYTE(v42) = 0;
                  goto LABEL_165;
                }
              }

              v42 = (v45 != 0) & ~[a2 hasError];
LABEL_165:
              v99 = 24;
              break;
            default:
LABEL_152:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_188;
          }

          goto LABEL_187;
        }

        if (v13 == 7)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 32) |= 0x80u;
          while (1)
          {
            v111 = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v111 & 0x7F) << v55;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              LOBYTE(v42) = 0;
              goto LABEL_171;
            }
          }

          v42 = (v57 != 0) & ~[a2 hasError];
LABEL_171:
          v99 = 27;
          goto LABEL_187;
        }

        if (v13 == 8)
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 32) |= 0x200u;
          while (1)
          {
            v110 = 0;
            v82 = [a2 position] + 1;
            if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
            {
              v84 = [a2 data];
              [v84 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v81 |= (v110 & 0x7F) << v79;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v11 = v80++ >= 9;
            if (v11)
            {
              LOBYTE(v42) = 0;
              goto LABEL_182;
            }
          }

          v42 = (v81 != 0) & ~[a2 hasError];
LABEL_182:
          v99 = 29;
          goto LABEL_187;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v105 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v105 & 0x7F) << v30;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_161;
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

LABEL_161:
        v98 = 8;
      }

      else
      {
        if (v13 > 3)
        {
          if (v13 == 4)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 32) |= 0x400u;
            while (1)
            {
              v114 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v114 & 0x7F) << v61;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                LOBYTE(v42) = 0;
                goto LABEL_173;
              }
            }

            v42 = (v63 != 0) & ~[a2 hasError];
LABEL_173:
            v99 = 30;
          }

          else if (v13 == 5)
          {
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 32) |= 0x800u;
            while (1)
            {
              v113 = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v113 & 0x7F) << v85;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                LOBYTE(v42) = 0;
                goto LABEL_184;
              }
            }

            v42 = (v87 != 0) & ~[a2 hasError];
LABEL_184:
            v99 = 31;
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 32) |= 0x100u;
            while (1)
            {
              v112 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v112 & 0x7F) << v36;
              if ((v112 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                LOBYTE(v42) = 0;
                goto LABEL_163;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_163:
            v99 = 28;
          }

LABEL_187:
          *(a1 + v99) = v42;
          goto LABEL_188;
        }

        switch(v13)
        {
          case 1:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v103 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v103 & 0x7F) << v49;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_169;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v51;
            }

LABEL_169:
            v98 = 12;
            break;
          case 2:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v106 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v106 & 0x7F) << v73;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_179;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v75;
            }

LABEL_179:
            v98 = 20;
            break;
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v102 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v102 & 0x7F) << v23;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_157;
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

LABEL_157:
            v98 = 16;
            break;
          default:
            goto LABEL_152;
        }
      }

      *(a1 + v98) = v29;
LABEL_188:
      v100 = [a2 position];
    }

    while (v100 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000A4E8(uint64_t a1, void *a2)
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
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 24) |= 8u;
            while (1)
            {
              v58 = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v58 & 0x7F) << v45;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v51 = 0;
                goto LABEL_89;
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

LABEL_89:
            v52 = -(v51 & 1) ^ (v51 >> 1);
            v53 = 20;
          }

          else
          {
            if (v13 != 4)
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
            *(a1 + 24) |= 4u;
            while (1)
            {
              v57 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v57 & 0x7F) << v30;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_81;
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

LABEL_81:
            v52 = -(v36 & 1) ^ (v36 >> 1);
            v53 = 16;
          }
        }

        else if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v60 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v60 & 0x7F) << v38;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v44 = 0;
              goto LABEL_85;
            }
          }

          if ([a2 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v40;
          }

LABEL_85:
          v52 = -(v44 & 1) ^ (v44 >> 1);
          v53 = 8;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_54;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v59 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v59 & 0x7F) << v23;
            if ((v59 & 0x80) == 0)
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
          v52 = -(v29 & 1) ^ (v29 >> 1);
          v53 = 12;
        }

        *(a1 + v53) = v52;
      }

LABEL_91:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000B578(uint64_t a1, void *a2)
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
        v61 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
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
          v63 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v63 & 0x7F) << v16;
          if ((v63 & 0x80) == 0)
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
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 3)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v62 = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v62 & 0x7F) << v51;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v57 = 0;
                goto LABEL_95;
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

LABEL_95:
            v59 = 8;
          }

          else
          {
            if (v13 != 5)
            {
LABEL_82:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_105;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 28) |= 2u;
            while (1)
            {
              v67 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v67 & 0x7F) << v30;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_103;
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

LABEL_103:
            v57 = -(v36 & 1) ^ (v36 >> 1);
            v59 = 12;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 28) |= 4u;
              while (1)
              {
                v66 = 0;
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
                  v43 = 0;
                  goto LABEL_87;
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

LABEL_87:
              v57 = -(v43 & 1) ^ (v43 >> 1);
              v59 = 16;
              break;
            case 9:
              v44 = 0;
              v45 = 0;
              v46 = 0;
              *(a1 + 28) |= 8u;
              while (1)
              {
                v65 = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v65 & 0x7F) << v44;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  v50 = 0;
                  goto LABEL_91;
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

LABEL_91:
              v57 = -(v50 & 1) ^ (v50 >> 1);
              v59 = 20;
              break;
            case 0xA:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 28) |= 0x10u;
              while (1)
              {
                v64 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v64 & 0x7F) << v23;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_99;
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

LABEL_99:
              v57 = -(v29 & 1) ^ (v29 >> 1);
              v59 = 24;
              break;
            default:
              goto LABEL_82;
          }
        }

        *(a1 + v59) = v57;
      }

LABEL_105:
      v60 = [a2 position];
    }

    while (v60 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000C6BC(uint64_t a1, void *a2)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v49 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v49 & 0x7F) << v16;
          if ((v49 & 0x80) == 0)
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
        switch(v13)
        {
          case 3:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 20) |= 1u;
            while (1)
            {
              v46 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v46 & 0x7F) << v36;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_70;
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

LABEL_70:
            v43 = 8;
            break;
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 20) |= 2u;
            while (1)
            {
              v47 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v47 & 0x7F) << v30;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_66;
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

LABEL_66:
            v43 = 12;
            break;
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 20) |= 4u;
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
                goto LABEL_74;
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

LABEL_74:
            v43 = 16;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_76;
        }

        *(a1 + v43) = v29;
      }

LABEL_76:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000D340(uint64_t a1, void *a2)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v42 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v42 & 0x7F) << v16;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_41;
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

LABEL_41:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 == 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 16) |= 2u;
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
              v29 = 0;
              goto LABEL_60;
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

LABEL_60:
          v37 = 12;
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

            goto LABEL_62;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 16) |= 1u;
          while (1)
          {
            v41 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_56;
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

LABEL_56:
          v37 = 8;
        }

        *(a1 + v37) = v29;
      }

LABEL_62:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000E2FC(uint64_t a1, void *a2)
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
        LOBYTE(v73[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73[0] & 0x7F) << v5;
        if ((v73[0] & 0x80) == 0)
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
          LOBYTE(v73[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v73[0] & 0x7F) << v16;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_36;
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

LABEL_36:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_139;
      }

      if (v13 > 4)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v73[0] & 0x7F) << v44;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v50 = 0;
              goto LABEL_125;
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

LABEL_125:
          *(a1 + 8) = v50;
          goto LABEL_139;
        }

        if (v13 == 2)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v73[0] & 0x7F) << v25;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_113;
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

LABEL_113:
          v70 = 16;
          goto LABEL_138;
        }

LABEL_108:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_139;
      }

      if (v13 != 3)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 60) |= 0x20u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v73[0] & 0x7F) << v32;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_117;
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

LABEL_117:
        v70 = 52;
        goto LABEL_138;
      }

      v51 = objc_alloc_init(CellularCdmaTxRxHist);
      [a1 addPerBand:v51];
      v73[0] = 0;
      v73[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000786D8(v51, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_139:
      v71 = [a2 position];
      if (v71 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 60) |= 4u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v73[0] & 0x7F) << v58;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_133;
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

LABEL_133:
        v70 = 20;
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 60) |= 8u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v73[0] & 0x7F) << v38;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_121;
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

LABEL_121:
        v70 = 24;
      }

      goto LABEL_138;
    }

    switch(v13)
    {
      case 7:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 60) |= 0x40u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v73[0] & 0x7F) << v52;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_129;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v54;
        }

LABEL_129:
        v70 = 56;
        goto LABEL_138;
      case 8:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 60) |= 0x10u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v73[0] & 0x7F) << v64;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v66;
        }

LABEL_137:
        v70 = 48;
LABEL_138:
        *(a1 + v70) = v31;
        goto LABEL_139;
      case 9:
        v23 = PBReaderReadData();
        v24 = *(a1 + 40);
        *(a1 + 40) = v23;

        goto LABEL_139;
    }

    goto LABEL_108;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000FC48(uint64_t a1, void *a2)
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
        v34 = 0;
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
          v36 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_41;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_41:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else if (v13 == 2)
      {
        v30 = PBReaderReadData();
        v31 = *(a1 + 16);
        *(a1 + 16) = v30;
      }

      else if (v13 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 24) |= 1u;
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
            goto LABEL_48;
          }
        }

        v29 = [a2 hasError] ? 0 : v25;
LABEL_48:
        *(a1 + 8) = v29;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100010B70(uint64_t a1, void *a2)
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
        LOBYTE(v90[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v90[0] & 0x7F) << v5;
        if ((v90[0] & 0x80) == 0)
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
          LOBYTE(v90[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v90[0] & 0x7F) << v17;
          if ((v90[0] & 0x80) == 0)
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
        NSLog(@"Unknown tag: %x:%u", v14, v23);
        goto LABEL_163;
      }

      if (v14 <= 4)
      {
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 68) |= 0x40u;
            while (1)
            {
              LOBYTE(v90[0]) = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v90[0] & 0x7F) << v56;
              if ((v90[0] & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_149;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v58;
            }

LABEL_149:
            v82 = 60;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 68) |= 8u;
            while (1)
            {
              LOBYTE(v90[0]) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v90[0] & 0x7F) << v37;
              if ((v90[0] & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_137;
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

LABEL_137:
            v82 = 48;
          }

          goto LABEL_162;
        }

        if (v14 == 1)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v90[0]) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v90[0] & 0x7F) << v49;
            if ((v90[0] & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v55 = 0;
              goto LABEL_145;
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

LABEL_145:
          *(a1 + 32) = v55;
          goto LABEL_163;
        }

        if (v14 == 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            LOBYTE(v90[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v90[0] & 0x7F) << v31;
            if ((v90[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_133;
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

LABEL_133:
          v82 = 52;
          goto LABEL_162;
        }
      }

      else
      {
        if (v14 <= 6)
        {
          if (v14 == 5)
          {
            if (v13 == 2)
            {
              v90[0] = 0;
              v90[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v69 = [a2 position];
                if (v69 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v70 = 0;
                v71 = 0;
                v72 = 0;
                while (1)
                {
                  v91 = 0;
                  v73 = [a2 position] + 1;
                  if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                  {
                    v75 = [a2 data];
                    [v75 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v72 |= (v91 & 0x7F) << v70;
                  if ((v91 & 0x80) == 0)
                  {
                    break;
                  }

                  v70 += 7;
                  v11 = v71++ >= 9;
                  if (v11)
                  {
                    goto LABEL_118;
                  }
                }

                [a2 hasError];
LABEL_118:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v84 = 0;
              v85 = 0;
              v86 = 0;
              while (1)
              {
                LOBYTE(v90[0]) = 0;
                v87 = [a2 position] + 1;
                if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
                {
                  v89 = [a2 data];
                  [v89 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v86 |= (v90[0] & 0x7F) << v84;
                if ((v90[0] & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                v11 = v85++ >= 9;
                if (v11)
                {
                  goto LABEL_176;
                }
              }

              [a2 hasError];
LABEL_176:
              PBRepeatedInt32Add();
            }

            goto LABEL_163;
          }

          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v90[0]) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v90[0] & 0x7F) << v43;
            if ((v90[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_141;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v45;
          }

LABEL_141:
          v82 = 40;
          goto LABEL_162;
        }

        switch(v14)
        {
          case 7:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v90[0]) = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v64 |= (v90[0] & 0x7F) << v62;
              if ((v90[0] & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v11 = v63++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_153;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v64;
            }

LABEL_153:
            v82 = 44;
            goto LABEL_162;
          case 8:
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              LOBYTE(v90[0]) = 0;
              v79 = [a2 position] + 1;
              if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v78 |= (v90[0] & 0x7F) << v76;
              if ((v90[0] & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v11 = v77++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_161;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v78;
            }

LABEL_161:
            v82 = 56;
            goto LABEL_162;
          case 0xF:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 68) |= 0x80u;
            while (1)
            {
              LOBYTE(v90[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v90[0] & 0x7F) << v24;
              if ((v90[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_157;
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

LABEL_157:
            v82 = 64;
LABEL_162:
            *(a1 + v82) = v30;
            goto LABEL_163;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_163:
      v83 = [a2 position];
    }

    while (v83 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100012DCC(uint64_t a1, void *a2)
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
        v100 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v100 & 0x7F) << v5;
        if ((v100 & 0x80) == 0)
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
          v111 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v111 & 0x7F) << v16;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
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

LABEL_44:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 > 9)
        {
          if (v13 > 12)
          {
            switch(v13)
            {
              case 0xD:
                v67 = 0;
                v68 = 0;
                v69 = 0;
                *(a1 + 60) |= 2u;
                while (1)
                {
                  v103 = 0;
                  v70 = [a2 position] + 1;
                  if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                  {
                    v72 = [a2 data];
                    [v72 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v69 |= (v103 & 0x7F) << v67;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v67 += 7;
                  v11 = v68++ >= 9;
                  if (v11)
                  {
                    v29 = 0;
                    goto LABEL_186;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v69;
                }

LABEL_186:
                v98 = 16;
                break;
              case 0xE:
                v91 = 0;
                v92 = 0;
                v93 = 0;
                *(a1 + 60) |= 0x800u;
                while (1)
                {
                  v102 = 0;
                  v94 = [a2 position] + 1;
                  if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
                  {
                    v96 = [a2 data];
                    [v96 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v93 |= (v102 & 0x7F) << v91;
                  if ((v102 & 0x80) == 0)
                  {
                    break;
                  }

                  v91 += 7;
                  v11 = v92++ >= 9;
                  if (v11)
                  {
                    v29 = 0;
                    goto LABEL_202;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v93;
                }

LABEL_202:
                v98 = 56;
                break;
              case 0xF:
                v42 = 0;
                v43 = 0;
                v44 = 0;
                *(a1 + 60) |= 0x400u;
                while (1)
                {
                  v101 = 0;
                  v45 = [a2 position] + 1;
                  if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                  {
                    v47 = [a2 data];
                    [v47 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v44 |= (v101 & 0x7F) << v42;
                  if ((v101 & 0x80) == 0)
                  {
                    break;
                  }

                  v42 += 7;
                  v11 = v43++ >= 9;
                  if (v11)
                  {
                    v29 = 0;
                    goto LABEL_170;
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

LABEL_170:
                v98 = 52;
                break;
              default:
LABEL_153:
                result = PBReaderSkipValueWithTag();
                if (!result)
                {
                  return result;
                }

                goto LABEL_204;
            }
          }

          else if (v13 == 10)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 60) |= 0x200u;
            while (1)
            {
              v105 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v105 & 0x7F) << v55;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_178;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v57;
            }

LABEL_178:
            v98 = 48;
          }

          else if (v13 == 11)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 60) |= 0x20u;
            while (1)
            {
              v104 = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                v84 = [a2 data];
                [v84 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v104 & 0x7F) << v79;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v11 = v80++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_194;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v81;
            }

LABEL_194:
            v98 = 32;
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 60) |= 0x100u;
            while (1)
            {
              v113 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v113 & 0x7F) << v30;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_162;
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

LABEL_162:
            v98 = 44;
          }
        }

        else if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
              v61 = 0;
              v62 = 0;
              v63 = 0;
              *(a1 + 60) |= 8u;
              while (1)
              {
                v108 = 0;
                v64 = [a2 position] + 1;
                if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
                {
                  v66 = [a2 data];
                  [v66 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 |= (v108 & 0x7F) << v61;
                if ((v108 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                v11 = v62++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_182;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v63;
              }

LABEL_182:
              v98 = 24;
              break;
            case 5:
              v85 = 0;
              v86 = 0;
              v87 = 0;
              *(a1 + 60) |= 0x10u;
              while (1)
              {
                v107 = 0;
                v88 = [a2 position] + 1;
                if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
                {
                  v90 = [a2 data];
                  [v90 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v87 |= (v107 & 0x7F) << v85;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                v11 = v86++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_198;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v87;
              }

LABEL_198:
              v98 = 28;
              break;
            case 7:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 60) |= 0x40u;
              while (1)
              {
                v106 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v106 & 0x7F) << v36;
                if ((v106 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_166;
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

LABEL_166:
              v98 = 36;
              break;
            default:
              goto LABEL_153;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v48 = 0;
              v49 = 0;
              v50 = 0;
              *(a1 + 60) |= 1u;
              while (1)
              {
                v112 = 0;
                v51 = [a2 position] + 1;
                if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                {
                  v53 = [a2 data];
                  [v53 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v50 |= (v112 & 0x7F) << v48;
                if ((v112 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v11 = v49++ >= 9;
                if (v11)
                {
                  v54 = 0;
                  goto LABEL_174;
                }
              }

              if ([a2 hasError])
              {
                v54 = 0;
              }

              else
              {
                v54 = v50;
              }

LABEL_174:
              *(a1 + 8) = v54;
              goto LABEL_204;
            case 2:
              v73 = 0;
              v74 = 0;
              v75 = 0;
              *(a1 + 60) |= 4u;
              while (1)
              {
                v110 = 0;
                v76 = [a2 position] + 1;
                if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
                {
                  v78 = [a2 data];
                  [v78 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v75 |= (v110 & 0x7F) << v73;
                if ((v110 & 0x80) == 0)
                {
                  break;
                }

                v73 += 7;
                v11 = v74++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_190;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v75;
              }

LABEL_190:
              v98 = 20;
              break;
            case 3:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 60) |= 0x80u;
              while (1)
              {
                v109 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v109 & 0x7F) << v23;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_158;
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

LABEL_158:
              v98 = 40;
              break;
            default:
              goto LABEL_153;
          }
        }

        *(a1 + v98) = v29;
      }

LABEL_204:
      v99 = [a2 position];
    }

    while (v99 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000155E4(uint64_t a1, void *a2)
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
        v115 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v115 & 0x7F) << v5;
        if ((v115 & 0x80) == 0)
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
          v115 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v115 & 0x7F) << v16;
          if ((v115 & 0x80) == 0)
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
            *(a1 + 80) |= 1u;
            while (1)
            {
              v115 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v115 & 0x7F) << v23;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_182;
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

LABEL_182:
            *(a1 + 8) = v29;
            goto LABEL_216;
          case 3:
            v65 = 0;
            v66 = 0;
            v67 = 0;
            *(a1 + 80) |= 0x80u;
            while (1)
            {
              v115 = 0;
              v68 = [a2 position] + 1;
              if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
              {
                v70 = [a2 data];
                [v70 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v67 |= (v115 & 0x7F) << v65;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              v11 = v66++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_186;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v67;
            }

LABEL_186:
            v113 = 52;
            goto LABEL_215;
          case 4:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 80) |= 0x100u;
            while (1)
            {
              v115 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v115 & 0x7F) << v50;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_174;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v52;
            }

LABEL_174:
            v113 = 56;
            goto LABEL_215;
          case 5:
            v89 = 0;
            v90 = 0;
            v91 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              v115 = 0;
              v92 = [a2 position] + 1;
              if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
              {
                v94 = [a2 data];
                [v94 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v91 |= (v115 & 0x7F) << v89;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              v11 = v90++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_202;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v91;
            }

LABEL_202:
            v113 = 20;
            goto LABEL_215;
          case 6:
            v95 = 0;
            v96 = 0;
            v97 = 0;
            *(a1 + 80) |= 8u;
            while (1)
            {
              v115 = 0;
              v98 = [a2 position] + 1;
              if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
              {
                v100 = [a2 data];
                [v100 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v97 |= (v115 & 0x7F) << v95;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              v11 = v96++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_206;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v97;
            }

LABEL_206:
            v113 = 24;
            goto LABEL_215;
          case 7:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 80) |= 0x10u;
            while (1)
            {
              v115 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v115 & 0x7F) << v56;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_178;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v58;
            }

LABEL_178:
            v113 = 28;
            goto LABEL_215;
          case 8:
            v71 = 0;
            v72 = 0;
            v73 = 0;
            *(a1 + 80) |= 0x200u;
            while (1)
            {
              v115 = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v73 |= (v115 & 0x7F) << v71;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v11 = v72++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_190;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v73;
            }

LABEL_190:
            v113 = 60;
            goto LABEL_215;
          case 9:
            v77 = 0;
            v78 = 0;
            v79 = 0;
            *(a1 + 80) |= 0x1000u;
            while (1)
            {
              v115 = 0;
              v80 = [a2 position] + 1;
              if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
              {
                v82 = [a2 data];
                [v82 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v79 |= (v115 & 0x7F) << v77;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v11 = v78++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_194;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v79;
            }

LABEL_194:
            v113 = 72;
            goto LABEL_215;
          case 10:
            v107 = 0;
            v108 = 0;
            v109 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              v115 = 0;
              v110 = [a2 position] + 1;
              if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
              {
                v112 = [a2 data];
                [v112 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v109 |= (v115 & 0x7F) << v107;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v107 += 7;
              v11 = v108++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_214;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v109;
            }

LABEL_214:
            v113 = 16;
            goto LABEL_215;
          case 12:
            v101 = 0;
            v102 = 0;
            v103 = 0;
            *(a1 + 80) |= 0x20u;
            while (1)
            {
              v115 = 0;
              v104 = [a2 position] + 1;
              if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
              {
                v106 = [a2 data];
                [v106 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v103 |= (v115 & 0x7F) << v101;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              v11 = v102++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_210;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v103;
            }

LABEL_210:
            v113 = 32;
            goto LABEL_215;
          case 13:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 80) |= 0x40u;
            while (1)
            {
              v115 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v115 & 0x7F) << v37;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_166;
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

LABEL_166:
            v113 = 48;
            goto LABEL_215;
          case 14:
            v62 = PBReaderReadData();
            v63 = *(a1 + 40);
            *(a1 + 40) = v62;

            goto LABEL_216;
          case 15:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 80) |= 0x800u;
            while (1)
            {
              v115 = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v115 & 0x7F) << v44;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_170;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v46;
            }

LABEL_170:
            v113 = 68;
            goto LABEL_215;
          case 16:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 80) |= 0x2000u;
            while (1)
            {
              v115 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v115 & 0x7F) << v30;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_162;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_162:
            *(a1 + 76) = v36;
            goto LABEL_216;
          case 17:
            v83 = 0;
            v84 = 0;
            v85 = 0;
            *(a1 + 80) |= 0x400u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_216;
            }

            return result;
        }

        while (1)
        {
          v115 = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v115 & 0x7F) << v83;
          if ((v115 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v11 = v84++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_198;
          }
        }

        v43 = [a2 hasError] ? 0 : v85;
LABEL_198:
        v113 = 64;
LABEL_215:
        *(a1 + v113) = v43;
      }

LABEL_216:
      v114 = [a2 position];
    }

    while (v114 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001798C(uint64_t a1, void *a2)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v42 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v42 & 0x7F) << v16;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_41;
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

LABEL_41:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 == 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 16) |= 2u;
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
              v29 = 0;
              goto LABEL_60;
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

LABEL_60:
          v37 = 12;
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

            goto LABEL_62;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 16) |= 1u;
          while (1)
          {
            v41 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_56;
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

LABEL_56:
          v37 = 8;
        }

        *(a1 + v37) = v29;
      }

LABEL_62:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

_BYTE *sub_1000182E8(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100019CB4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

dispatch_queue_t sub_100018438(uint64_t a1)
{
  result = dispatch_queue_create("com.apple.FTMode.serialQ.queue", 0);
  *(*(a1 + 32) + 24) = result;
  return result;
}

void sub_1000188E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t object, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  xpc_release(v38);

  xpc_release(object);
  if (v40 < 0)
  {
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_100018A04@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void sub_100018D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t object, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  xpc_release(object);
  if (v33)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_100019300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  xpc_release(*(v23 - 144));
  if (v22)
  {
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void sub_1000195D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a11)
  {
    sub_100019D5C(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001964C(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  CFRetain(v2);
  v3 = [*(a1 + 32) delegate];

  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100019708;
    v4[3] = &unk_100317310;
    v4[4] = *(a1 + 32);
    v4[5] = v2;
    dispatch_async(&_dispatch_main_q, v4);
  }

  CFRelease(v2);
}

void sub_100019708(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_initWeak(&location, v2);
  v4 = [v2 delegate];
  [v4 eventsDidUpdate:*(a1 + 40)];

  CFRelease(*(a1 + 40));
  objc_destroyWeak(&location);
}

void sub_1000197A4(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = [v2 allKeys];
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);

  v5 = [v2 objectForKeyedSubscript:@"kKeyTriggerRef"];
  [v4 setObject:v5 forKeyedSubscript:@"kKeyTriggerRef"];

  v6 = [v2 objectForKeyedSubscript:@"kKeyProfileID"];
  [v4 setObject:v6 forKeyedSubscript:@"kKeyProfileID"];

  v7 = [v2 objectForKeyedSubscript:@"kKeyAppID"];
  [v4 setObject:v7 forKeyedSubscript:@"kKeyAppID"];

  v8 = [v2 objectForKeyedSubscript:@"kKeyMetricID"];
  [v4 setObject:v8 forKeyedSubscript:@"kKeyMetricID"];

  v9 = [v2 objectForKeyedSubscript:@"kKeyPayload"];
  [v4 setObject:v9 forKeyedSubscript:@"kKeyPayload"];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 objectForKeyedSubscript:@"kKeyMetricID"];
    v11 = +[NSDate date];
    [v11 timeIntervalSince1970];
    *buf = 138543618;
    v18 = v10;
    v19 = 2050;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "received - metricId %{public}@, initialTimestamp: %{public}ld", buf, 0x16u);
  }

  v13 = [*(a1 + 32) delegate];
  v14 = v13 == 0;

  if (!v14)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100019AB8;
    v15[3] = &unk_100317360;
    v15[4] = *(a1 + 32);
    v16 = v4;
    dispatch_async(&_dispatch_main_q, v15);
  }
}

void sub_100019AB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_initWeak(&location, v2);
  v4 = [v2 delegate];
  v5 = [*(a1 + 40) copy];
  [v4 metricsDidUpdate:v5];

  objc_destroyWeak(&location);
}

void sub_100019B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  v13 = v12;

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_100019C10(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100019CB4();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_100019CCC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100019D28(exception, a1);
}

std::logic_error *sub_100019D28(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100019D5C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_10001D108(uint64_t a1, void *a2)
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
        LOBYTE(v158[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v158[0] & 0x7F) << v5;
        if ((v158[0] & 0x80) == 0)
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
          LOBYTE(v158[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v158[0] & 0x7F) << v17;
          if ((v158[0] & 0x80) == 0)
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
            *(a1 + 104) |= 1u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v158[0] & 0x7F) << v24;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
LABEL_249:
                *(a1 + 32) = v30;
                goto LABEL_292;
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

            goto LABEL_249;
          case 2:
            v83 = 0;
            v84 = 0;
            v85 = 0;
            *(a1 + 104) |= 0x8000u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v86 = [a2 position] + 1;
              if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
              {
                v88 = [a2 data];
                [v88 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v85 |= (v158[0] & 0x7F) << v83;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              v11 = v84++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_253;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v85;
            }

LABEL_253:
            v150 = 96;
            goto LABEL_291;
          case 3:
            v65 = 0;
            v66 = 0;
            v67 = 0;
            *(a1 + 104) |= 0x2000u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v68 = [a2 position] + 1;
              if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
              {
                v70 = [a2 data];
                [v70 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v67 |= (v158[0] & 0x7F) << v65;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              v11 = v66++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_237;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v67;
            }

LABEL_237:
            v150 = 88;
            goto LABEL_291;
          case 4:
            v113 = 0;
            v114 = 0;
            v115 = 0;
            *(a1 + 104) |= 0x10u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v116 = [a2 position] + 1;
              if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
              {
                v118 = [a2 data];
                [v118 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v115 |= (v158[0] & 0x7F) << v113;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v113 += 7;
              v11 = v114++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_271;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v115;
            }

LABEL_271:
            v150 = 52;
            goto LABEL_291;
          case 5:
            v119 = 0;
            v120 = 0;
            v121 = 0;
            *(a1 + 104) |= 0x200u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v122 = [a2 position] + 1;
              if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
              {
                v124 = [a2 data];
                [v124 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v121 |= (v158[0] & 0x7F) << v119;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              v11 = v120++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_275;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v121;
            }

LABEL_275:
            v150 = 72;
            goto LABEL_291;
          case 6:
            v71 = 0;
            v72 = 0;
            v73 = 0;
            *(a1 + 104) |= 0x100u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v73 |= (v158[0] & 0x7F) << v71;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v11 = v72++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_241;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v73;
            }

LABEL_241:
            v150 = 68;
            goto LABEL_291;
          case 7:
            v89 = 0;
            v90 = 0;
            v91 = 0;
            *(a1 + 104) |= 0x40u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v92 = [a2 position] + 1;
              if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
              {
                v94 = [a2 data];
                [v94 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v91 |= (v158[0] & 0x7F) << v89;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              v11 = v90++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_257;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v91;
            }

LABEL_257:
            v150 = 60;
            goto LABEL_291;
          case 8:
            v95 = 0;
            v96 = 0;
            v97 = 0;
            *(a1 + 104) |= 0x80u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v98 = [a2 position] + 1;
              if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
              {
                v100 = [a2 data];
                [v100 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v97 |= (v158[0] & 0x7F) << v95;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              v11 = v96++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_261;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v97;
            }

LABEL_261:
            v150 = 64;
            goto LABEL_291;
          case 9:
            v131 = 0;
            v132 = 0;
            v133 = 0;
            *(a1 + 104) |= 0x10000u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v134 = [a2 position] + 1;
              if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
              {
                v136 = [a2 data];
                [v136 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v133 |= (v158[0] & 0x7F) << v131;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              v11 = v132++ >= 9;
              if (v11)
              {
                LOBYTE(v37) = 0;
                goto LABEL_281;
              }
            }

            v37 = (v133 != 0) & ~[a2 hasError];
LABEL_281:
            v149 = 100;
            goto LABEL_282;
          case 10:
            v125 = 0;
            v126 = 0;
            v127 = 0;
            *(a1 + 104) |= 0x20u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v128 = [a2 position] + 1;
              if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
              {
                v130 = [a2 data];
                [v130 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v127 |= (v158[0] & 0x7F) << v125;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              v11 = v126++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_279;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v127;
            }

LABEL_279:
            v150 = 56;
            goto LABEL_291;
          case 12:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 104) |= 0x800u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v158[0] & 0x7F) << v45;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_229;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v47;
            }

LABEL_229:
            v150 = 80;
            goto LABEL_291;
          case 13:
            v77 = 0;
            v78 = 0;
            v79 = 0;
            *(a1 + 104) |= 0x4000u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v80 = [a2 position] + 1;
              if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
              {
                v82 = [a2 data];
                [v82 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v79 |= (v158[0] & 0x7F) << v77;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v11 = v78++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_245;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v79;
            }

LABEL_245:
            v150 = 92;
            goto LABEL_291;
          case 14:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 104) |= 0x400u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v158[0] & 0x7F) << v51;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_233;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v53;
            }

LABEL_233:
            v150 = 76;
            goto LABEL_291;
          case 18:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 104) |= 2u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v158[0] & 0x7F) << v38;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_225;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v40;
            }

LABEL_225:
            v150 = 40;
            goto LABEL_291;
          case 19:
            v101 = 0;
            v102 = 0;
            v103 = 0;
            *(a1 + 104) |= 0x20000u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v104 = [a2 position] + 1;
              if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
              {
                v106 = [a2 data];
                [v106 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v103 |= (v158[0] & 0x7F) << v101;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              v11 = v102++ >= 9;
              if (v11)
              {
                LOBYTE(v37) = 0;
                goto LABEL_263;
              }
            }

            v37 = (v103 != 0) & ~[a2 hasError];
LABEL_263:
            v149 = 101;
            goto LABEL_282;
          case 20:
            v107 = 0;
            v108 = 0;
            v109 = 0;
            *(a1 + 104) |= 8u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v110 = [a2 position] + 1;
              if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
              {
                v112 = [a2 data];
                [v112 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v109 |= (v158[0] & 0x7F) << v107;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v107 += 7;
              v11 = v108++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_267;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v109;
            }

LABEL_267:
            v150 = 48;
            goto LABEL_291;
          case 21:
            v143 = 0;
            v144 = 0;
            v145 = 0;
            *(a1 + 104) |= 4u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v146 = [a2 position] + 1;
              if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
              {
                v148 = [a2 data];
                [v148 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v145 |= (v158[0] & 0x7F) << v143;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              v11 = v144++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_290;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v145;
            }

LABEL_290:
            v150 = 44;
            goto LABEL_291;
          case 25:
            v137 = 0;
            v138 = 0;
            v139 = 0;
            *(a1 + 104) |= 0x1000u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v140 = [a2 position] + 1;
              if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
              {
                v142 = [a2 data];
                [v142 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v139 |= (v158[0] & 0x7F) << v137;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              v11 = v138++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_286;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v139;
            }

LABEL_286:
            v150 = 84;
LABEL_291:
            *(a1 + v150) = v44;
            break;
          case 26:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 104) |= 0x40000u;
            while (1)
            {
              LOBYTE(v158[0]) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v158[0] & 0x7F) << v31;
              if ((v158[0] & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                LOBYTE(v37) = 0;
                goto LABEL_221;
              }
            }

            v37 = (v33 != 0) & ~[a2 hasError];
LABEL_221:
            v149 = 102;
LABEL_282:
            *(a1 + v149) = v37;
            break;
          case 27:
            if (v13 == 2)
            {
              v158[0] = 0;
              v158[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v58 = [a2 position];
                if (v58 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v59 = 0;
                v60 = 0;
                v61 = 0;
                while (1)
                {
                  v159 = 0;
                  v62 = [a2 position] + 1;
                  if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                  {
                    v64 = [a2 data];
                    [v64 getBytes:&v159 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v61 |= (v159 & 0x7F) << v59;
                  if ((v159 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  v11 = v60++ >= 9;
                  if (v11)
                  {
                    goto LABEL_91;
                  }
                }

                [a2 hasError];
LABEL_91:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v152 = 0;
              v153 = 0;
              v154 = 0;
              while (1)
              {
                LOBYTE(v158[0]) = 0;
                v155 = [a2 position] + 1;
                if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
                {
                  v157 = [a2 data];
                  [v157 getBytes:v158 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v154 |= (v158[0] & 0x7F) << v152;
                if ((v158[0] & 0x80) == 0)
                {
                  break;
                }

                v152 += 7;
                v11 = v153++ >= 9;
                if (v11)
                {
                  goto LABEL_305;
                }
              }

              [a2 hasError];
LABEL_305:
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

LABEL_292:
      v151 = [a2 position];
    }

    while (v151 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000218D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 carrierBundleDidUpdate];
}

uint64_t sub_10002201C(uint64_t a1, void *a2)
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
          LOBYTE(v33[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33[0] & 0x7F) << v16;
          if ((v33[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_41;
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

LABEL_41:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else if (v13 == 2)
      {
        v30 = objc_alloc_init(BandComponentInCombo);
        [a1 addBandInfo:v30];
        v33[0] = 0;
        v33[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000CE7FC(v30, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v33[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33[0] & 0x7F) << v23;
          if ((v33[0] & 0x80) == 0)
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
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100023010(uint64_t a1, void *a2)
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
        LOBYTE(v60[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60[0] & 0x7F) << v5;
        if ((v60[0] & 0x80) == 0)
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
          LOBYTE(v60[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v60[0] & 0x7F) << v17;
          if ((v60[0] & 0x80) == 0)
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

      if (v14 > 3)
      {
        if (v14 == 4)
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v60[0]) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v60[0] & 0x7F) << v45;
            if ((v60[0] & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v51 = 0;
              goto LABEL_91;
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

LABEL_91:
          v30 = -(v51 & 1) ^ (v51 >> 1);
          v52 = 36;
          goto LABEL_92;
        }

        if (v14 == 5)
        {
          if (v13 == 2)
          {
            v60[0] = 0;
            v60[1] = 0;
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
                v61 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v61 & 0x7F) << v33;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  goto LABEL_59;
                }
              }

              [a2 hasError];
LABEL_59:
              PBRepeatedUInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            while (1)
            {
              LOBYTE(v60[0]) = 0;
              v57 = [a2 position] + 1;
              if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
              {
                v59 = [a2 data];
                [v59 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v56 |= (v60[0] & 0x7F) << v54;
              if ((v60[0] & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v11 = v55++ >= 9;
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
      }

      else
      {
        if (v14 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v60[0]) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v60[0] & 0x7F) << v39;
            if ((v60[0] & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
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
            v30 = v41;
          }

LABEL_87:
          v52 = 32;
          goto LABEL_92;
        }

        if (v14 == 3)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v60[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v60[0] & 0x7F) << v24;
            if ((v60[0] & 0x80) == 0)
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
          v52 = 40;
LABEL_92:
          *(a1 + v52) = v30;
          goto LABEL_93;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_93:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100029C24(void *a1, void *a2)
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
      LOBYTE(v409) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v409 & 0x7F) << v5;
      if ((v409 & 0x80) == 0)
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
        LOBYTE(v409) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v409 & 0x7F) << v16;
        if ((v409 & 0x80) == 0)
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

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_40:
      NSLog(@"Unknown tag: %x:%u", v13, v22);
      goto LABEL_833;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 260) |= 1uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v409 & 0x7F) << v23;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_750;
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

LABEL_750:
        a1[1] = v29;
        goto LABEL_833;
      case 2:
        v208 = 0;
        v209 = 0;
        v210 = 0;
        *(a1 + 260) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v211 = [a2 position] + 1;
          if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
          {
            v213 = [a2 data];
            [v213 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v210 |= (v409 & 0x7F) << v208;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v208 += 7;
          v11 = v209++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_710;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v210;
        }

LABEL_710:
        v406 = 32;
        goto LABEL_832;
      case 3:
        v220 = 0;
        v221 = 0;
        v222 = 0;
        *(a1 + 260) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v223 = [a2 position] + 1;
          if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
          {
            v225 = [a2 data];
            [v225 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v222 |= (v409 & 0x7F) << v220;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v220 += 7;
          v11 = v221++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_718;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v222;
        }

LABEL_718:
        v406 = 36;
        goto LABEL_832;
      case 4:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        *(a1 + 260) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            v189 = [a2 data];
            [v189 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (v409 & 0x7F) << v184;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v11 = v185++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_696;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v186;
        }

LABEL_696:
        v406 = 68;
        goto LABEL_832;
      case 5:
        v153 = 0;
        v154 = 0;
        v155 = 0;
        *(a1 + 260) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v156 = [a2 position] + 1;
          if (v156 >= [a2 position] && (v157 = objc_msgSend(a2, "position") + 1, v157 <= objc_msgSend(a2, "length")))
          {
            v158 = [a2 data];
            [v158 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v155 |= (v409 & 0x7F) << v153;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          v11 = v154++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_678;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v155;
        }

LABEL_678:
        v406 = 204;
        goto LABEL_832;
      case 6:
        v251 = 0;
        v252 = 0;
        v253 = 0;
        *(a1 + 260) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v254 = [a2 position] + 1;
          if (v254 >= [a2 position] && (v255 = objc_msgSend(a2, "position") + 1, v255 <= objc_msgSend(a2, "length")))
          {
            v256 = [a2 data];
            [v256 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v253 |= (v409 & 0x7F) << v251;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v251 += 7;
          v11 = v252++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_738;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v253;
        }

LABEL_738:
        v406 = 220;
        goto LABEL_832;
      case 7:
        v263 = 0;
        v264 = 0;
        v265 = 0;
        *(a1 + 260) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v266 = [a2 position] + 1;
          if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 1, v267 <= objc_msgSend(a2, "length")))
          {
            v268 = [a2 data];
            [v268 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v265 |= (v409 & 0x7F) << v263;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v263 += 7;
          v11 = v264++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_746;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v265;
        }

LABEL_746:
        v406 = 40;
        goto LABEL_832;
      case 8:
        v202 = 0;
        v203 = 0;
        v204 = 0;
        *(a1 + 260) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v205 = [a2 position] + 1;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
          {
            v207 = [a2 data];
            [v207 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v204 |= (v409 & 0x7F) << v202;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v202 += 7;
          v11 = v203++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_706;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v204;
        }

LABEL_706:
        v406 = 76;
        goto LABEL_832;
      case 9:
        v238 = 0;
        v239 = 0;
        v240 = 0;
        *(a1 + 260) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v241 = [a2 position] + 1;
          if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 1, v242 <= objc_msgSend(a2, "length")))
          {
            v243 = [a2 data];
            [v243 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v240 |= (v409 & 0x7F) << v238;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v238 += 7;
          v11 = v239++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_730;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v240;
        }

LABEL_730:
        v406 = 160;
        goto LABEL_832;
      case 10:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        *(a1 + 260) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            v176 = [a2 data];
            [v176 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (v409 & 0x7F) << v171;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v11 = v172++ >= 9;
          if (v11)
          {
            v177 = 0;
            goto LABEL_690;
          }
        }

        if ([a2 hasError])
        {
          v177 = 0;
        }

        else
        {
          v177 = v173;
        }

LABEL_690:
        v36 = -(v177 & 1) ^ (v177 >> 1);
        v406 = 28;
        goto LABEL_832;
      case 11:
        v214 = 0;
        v215 = 0;
        v216 = 0;
        *(a1 + 260) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v217 = [a2 position] + 1;
          if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
          {
            v219 = [a2 data];
            [v219 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v216 |= (v409 & 0x7F) << v214;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v214 += 7;
          v11 = v215++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_714;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v216;
        }

LABEL_714:
        v406 = 56;
        goto LABEL_832;
      case 12:
        v312 = 0;
        v313 = 0;
        v314 = 0;
        *(a1 + 260) |= 2uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v315 = [a2 position] + 1;
          if (v315 >= [a2 position] && (v316 = objc_msgSend(a2, "position") + 1, v316 <= objc_msgSend(a2, "length")))
          {
            v317 = [a2 data];
            [v317 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v314 |= (v409 & 0x7F) << v312;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v312 += 7;
          v11 = v313++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_778;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v314;
        }

LABEL_778:
        v406 = 16;
        goto LABEL_832;
      case 13:
        v288 = 0;
        v289 = 0;
        v290 = 0;
        *(a1 + 260) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v291 = [a2 position] + 1;
          if (v291 >= [a2 position] && (v292 = objc_msgSend(a2, "position") + 1, v292 <= objc_msgSend(a2, "length")))
          {
            v293 = [a2 data];
            [v293 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v290 |= (v409 & 0x7F) << v288;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v288 += 7;
          v11 = v289++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_764;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v290;
        }

LABEL_764:
        v406 = 44;
        goto LABEL_832;
      case 14:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        *(a1 + 260) |= 0x100000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            v183 = [a2 data];
            [v183 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (v409 & 0x7F) << v178;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v11 = v179++ >= 9;
          if (v11)
          {
            LOBYTE(v92) = 0;
            goto LABEL_692;
          }
        }

        v92 = (v180 != 0) & ~[a2 hasError];
LABEL_692:
        v407 = 254;
        goto LABEL_783;
      case 15:
        v324 = 0;
        v325 = 0;
        v326 = 0;
        *(a1 + 260) |= 0x80000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v327 = [a2 position] + 1;
          if (v327 >= [a2 position] && (v328 = objc_msgSend(a2, "position") + 1, v328 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v326 |= (v409 & 0x7F) << v324;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v324 += 7;
          v11 = v325++ >= 9;
          if (v11)
          {
            LOBYTE(v92) = 0;
            goto LABEL_782;
          }
        }

        v92 = (v326 != 0) & ~[a2 hasError];
LABEL_782:
        v407 = 253;
        goto LABEL_783;
      case 16:
        v330 = 0;
        v331 = 0;
        v332 = 0;
        *(a1 + 260) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v333 = [a2 position] + 1;
          if (v333 >= [a2 position] && (v334 = objc_msgSend(a2, "position") + 1, v334 <= objc_msgSend(a2, "length")))
          {
            v335 = [a2 data];
            [v335 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v332 |= (v409 & 0x7F) << v330;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v330 += 7;
          v11 = v331++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_787;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v332;
        }

LABEL_787:
        v406 = 100;
        goto LABEL_832;
      case 17:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 260) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v409 & 0x7F) << v111;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_652;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v113;
        }

LABEL_652:
        v406 = 60;
        goto LABEL_832;
      case 18:
        v348 = 0;
        v349 = 0;
        v350 = 0;
        *(a1 + 260) |= 0x20000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v351 = [a2 position] + 1;
          if (v351 >= [a2 position] && (v352 = objc_msgSend(a2, "position") + 1, v352 <= objc_msgSend(a2, "length")))
          {
            v353 = [a2 data];
            [v353 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v350 |= (v409 & 0x7F) << v348;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v348 += 7;
          v11 = v349++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_799;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v350;
        }

LABEL_799:
        v406 = 248;
        goto LABEL_832;
      case 19:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 260) |= 8uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v409 & 0x7F) << v129;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v11 = v130++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_664;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v131;
        }

LABEL_664:
        v406 = 24;
        goto LABEL_832;
      case 20:
        v269 = 0;
        v270 = 0;
        v271 = 0;
        *(a1 + 260) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v272 = [a2 position] + 1;
          if (v272 >= [a2 position] && (v273 = objc_msgSend(a2, "position") + 1, v273 <= objc_msgSend(a2, "length")))
          {
            v274 = [a2 data];
            [v274 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v271 |= (v409 & 0x7F) << v269;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v269 += 7;
          v11 = v270++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_754;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v271;
        }

LABEL_754:
        v406 = 104;
        goto LABEL_832;
      case 21:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 260) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v409 & 0x7F) << v99;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v11 = v100++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_644;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v101;
        }

LABEL_644:
        v406 = 200;
        goto LABEL_832;
      case 22:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 260) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v138 = [a2 position] + 1;
          if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
          {
            v140 = [a2 data];
            [v140 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v137 |= (v409 & 0x7F) << v135;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v11 = v136++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_668;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v137;
        }

LABEL_668:
        v406 = 108;
        goto LABEL_832;
      case 23:
        v232 = 0;
        v233 = 0;
        v234 = 0;
        *(a1 + 260) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v235 = [a2 position] + 1;
          if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 1, v236 <= objc_msgSend(a2, "length")))
          {
            v237 = [a2 data];
            [v237 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v234 |= (v409 & 0x7F) << v232;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v232 += 7;
          v11 = v233++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_726;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v234;
        }

LABEL_726:
        v406 = 112;
        goto LABEL_832;
      case 24:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 260) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v168 = [a2 position] + 1;
          if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 1, v169 <= objc_msgSend(a2, "length")))
          {
            v170 = [a2 data];
            [v170 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v167 |= (v409 & 0x7F) << v165;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v11 = v166++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_686;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v167;
        }

LABEL_686:
        v406 = 92;
        goto LABEL_832;
      case 25:
        v300 = 0;
        v301 = 0;
        v302 = 0;
        *(a1 + 260) |= 0x800000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v303 = [a2 position] + 1;
          if (v303 >= [a2 position] && (v304 = objc_msgSend(a2, "position") + 1, v304 <= objc_msgSend(a2, "length")))
          {
            v305 = [a2 data];
            [v305 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v302 |= (v409 & 0x7F) << v300;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v300 += 7;
          v11 = v301++ >= 9;
          if (v11)
          {
            LOBYTE(v92) = 0;
            goto LABEL_770;
          }
        }

        v92 = (v302 != 0) & ~[a2 hasError];
LABEL_770:
        v407 = 257;
        goto LABEL_783;
      case 26:
        v147 = 0;
        v148 = 0;
        v149 = 0;
        *(a1 + 260) |= 0x400000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v150 = [a2 position] + 1;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
          {
            v152 = [a2 data];
            [v152 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v149 |= (v409 & 0x7F) << v147;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v11 = v148++ >= 9;
          if (v11)
          {
            LOBYTE(v92) = 0;
            goto LABEL_674;
          }
        }

        v92 = (v149 != 0) & ~[a2 hasError];
LABEL_674:
        v407 = 256;
        goto LABEL_783;
      case 28:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        *(a1 + 260) |= 4uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v409 & 0x7F) << v93;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v11 = v94++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_640;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v95;
        }

LABEL_640:
        v406 = 20;
        goto LABEL_832;
      case 29:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 260) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v409 & 0x7F) << v74;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_630;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v76;
        }

LABEL_630:
        v406 = 164;
        goto LABEL_832;
      case 30:
        v159 = 0;
        v160 = 0;
        v161 = 0;
        *(a1 + 260) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v162 = [a2 position] + 1;
          if (v162 >= [a2 position] && (v163 = objc_msgSend(a2, "position") + 1, v163 <= objc_msgSend(a2, "length")))
          {
            v164 = [a2 data];
            [v164 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v161 |= (v409 & 0x7F) << v159;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v159 += 7;
          v11 = v160++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_682;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v161;
        }

LABEL_682:
        v406 = 156;
        goto LABEL_832;
      case 31:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        *(a1 + 260) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            v195 = [a2 data];
            [v195 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v409 & 0x7F) << v190;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v11 = v191++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_700;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v192;
        }

LABEL_700:
        v406 = 236;
        goto LABEL_832;
      case 32:
        v306 = 0;
        v307 = 0;
        v308 = 0;
        *(a1 + 260) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v309 = [a2 position] + 1;
          if (v309 >= [a2 position] && (v310 = objc_msgSend(a2, "position") + 1, v310 <= objc_msgSend(a2, "length")))
          {
            v311 = [a2 data];
            [v311 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v308 |= (v409 & 0x7F) << v306;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v306 += 7;
          v11 = v307++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_774;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v308;
        }

LABEL_774:
        v406 = 232;
        goto LABEL_832;
      case 33:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 260) |= 0x40000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            v201 = [a2 data];
            [v201 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v409 & 0x7F) << v196;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v11 = v197++ >= 9;
          if (v11)
          {
            LOBYTE(v92) = 0;
            goto LABEL_702;
          }
        }

        v92 = (v198 != 0) & ~[a2 hasError];
LABEL_702:
        v407 = 252;
        goto LABEL_783;
      case 35:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 260) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v409 & 0x7F) << v62;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_622;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v64;
        }

LABEL_622:
        v406 = 196;
        goto LABEL_832;
      case 36:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 260) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v126 = [a2 position] + 1;
          if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
          {
            v128 = [a2 data];
            [v128 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v125 |= (v409 & 0x7F) << v123;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v11 = v124++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_660;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v125;
        }

LABEL_660:
        v406 = 192;
        goto LABEL_832;
      case 37:
        v318 = 0;
        v319 = 0;
        v320 = 0;
        *(a1 + 260) |= 0x2000000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v321 = [a2 position] + 1;
          if (v321 >= [a2 position] && (v322 = objc_msgSend(a2, "position") + 1, v322 <= objc_msgSend(a2, "length")))
          {
            v323 = [a2 data];
            [v323 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v320 |= (v409 & 0x7F) << v318;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v318 += 7;
          v11 = v319++ >= 9;
          if (v11)
          {
            LOBYTE(v92) = 0;
            goto LABEL_780;
          }
        }

        v92 = (v320 != 0) & ~[a2 hasError];
LABEL_780:
        v407 = 259;
        goto LABEL_783;
      case 38:
        v374 = 0;
        v375 = 0;
        v376 = 0;
        *(a1 + 260) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v377 = [a2 position] + 1;
          if (v377 >= [a2 position] && (v378 = objc_msgSend(a2, "position") + 1, v378 <= objc_msgSend(a2, "length")))
          {
            v379 = [a2 data];
            [v379 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v376 |= (v409 & 0x7F) << v374;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v374 += 7;
          v11 = v375++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_815;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v376;
        }

LABEL_815:
        v406 = 64;
        goto LABEL_832;
      case 39:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 260) |= 0x1000000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v409 & 0x7F) << v86;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            LOBYTE(v92) = 0;
            goto LABEL_636;
          }
        }

        v92 = (v88 != 0) & ~[a2 hasError];
LABEL_636:
        v407 = 258;
        goto LABEL_783;
      case 40:
        v282 = 0;
        v283 = 0;
        v284 = 0;
        *(a1 + 260) |= 0x200000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v285 = [a2 position] + 1;
          if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 1, v286 <= objc_msgSend(a2, "length")))
          {
            v287 = [a2 data];
            [v287 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v284 |= (v409 & 0x7F) << v282;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v282 += 7;
          v11 = v283++ >= 9;
          if (v11)
          {
            LOBYTE(v92) = 0;
            goto LABEL_760;
          }
        }

        v92 = (v284 != 0) & ~[a2 hasError];
LABEL_760:
        v407 = 255;
LABEL_783:
        *(a1 + v407) = v92;
        goto LABEL_833;
      case 41:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 260) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v409 & 0x7F) << v80;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_634;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v82;
        }

LABEL_634:
        v406 = 128;
        goto LABEL_832;
      case 42:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 260) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v409 & 0x7F) << v68;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v11 = v69++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_626;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v70;
        }

LABEL_626:
        v406 = 120;
        goto LABEL_832;
      case 43:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        *(a1 + 260) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            v146 = [a2 data];
            [v146 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (v409 & 0x7F) << v141;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v11 = v142++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_672;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v143;
        }

LABEL_672:
        v406 = 124;
        goto LABEL_832;
      case 44:
        v226 = 0;
        v227 = 0;
        v228 = 0;
        *(a1 + 260) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v229 = [a2 position] + 1;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
          {
            v231 = [a2 data];
            [v231 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v228 |= (v409 & 0x7F) << v226;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v226 += 7;
          v11 = v227++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_722;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v228;
        }

LABEL_722:
        v406 = 144;
        goto LABEL_832;
      case 46:
        v342 = 0;
        v343 = 0;
        v344 = 0;
        *(a1 + 260) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v345 = [a2 position] + 1;
          if (v345 >= [a2 position] && (v346 = objc_msgSend(a2, "position") + 1, v346 <= objc_msgSend(a2, "length")))
          {
            v347 = [a2 data];
            [v347 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v344 |= (v409 & 0x7F) << v342;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v342 += 7;
          v11 = v343++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_795;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v344;
        }

LABEL_795:
        v406 = 116;
        goto LABEL_832;
      case 47:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 260) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v409 & 0x7F) << v37;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_606;
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

LABEL_606:
        v406 = 132;
        goto LABEL_832;
      case 48:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 260) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v409 & 0x7F) << v105;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_648;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v107;
        }

LABEL_648:
        v406 = 136;
        goto LABEL_832;
      case 49:
        v244 = 0;
        v245 = 0;
        v246 = 0;
        *(a1 + 260) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v247 = [a2 position] + 1;
          if (v247 >= [a2 position] && (v248 = objc_msgSend(a2, "position") + 1, v248 <= objc_msgSend(a2, "length")))
          {
            v249 = [a2 data];
            [v249 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v246 |= (v409 & 0x7F) << v244;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v244 += 7;
          v11 = v245++ >= 9;
          if (v11)
          {
            v250 = 0;
            goto LABEL_734;
          }
        }

        if ([a2 hasError])
        {
          v250 = 0;
        }

        else
        {
          v250 = v246;
        }

LABEL_734:
        v36 = -(v250 & 1) ^ (v250 >> 1);
        v406 = 72;
        goto LABEL_832;
      case 50:
        v275 = 0;
        v276 = 0;
        v277 = 0;
        *(a1 + 260) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v278 = [a2 position] + 1;
          if (v278 >= [a2 position] && (v279 = objc_msgSend(a2, "position") + 1, v279 <= objc_msgSend(a2, "length")))
          {
            v280 = [a2 data];
            [v280 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v277 |= (v409 & 0x7F) << v275;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v275 += 7;
          v11 = v276++ >= 9;
          if (v11)
          {
            v281 = 0;
            goto LABEL_758;
          }
        }

        if ([a2 hasError])
        {
          v281 = 0;
        }

        else
        {
          v281 = v277;
        }

LABEL_758:
        v36 = -(v281 & 1) ^ (v281 >> 1);
        v406 = 180;
        goto LABEL_832;
      case 51:
        v380 = 0;
        v381 = 0;
        v382 = 0;
        *(a1 + 260) |= 0x8000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v383 = [a2 position] + 1;
          if (v383 >= [a2 position] && (v384 = objc_msgSend(a2, "position") + 1, v384 <= objc_msgSend(a2, "length")))
          {
            v385 = [a2 data];
            [v385 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v382 |= (v409 & 0x7F) << v380;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v380 += 7;
          v11 = v381++ >= 9;
          if (v11)
          {
            v386 = 0;
            goto LABEL_819;
          }
        }

        if ([a2 hasError])
        {
          v386 = 0;
        }

        else
        {
          v386 = v382;
        }

LABEL_819:
        v36 = -(v386 & 1) ^ (v386 >> 1);
        v406 = 240;
        goto LABEL_832;
      case 52:
        v257 = 0;
        v258 = 0;
        v259 = 0;
        *(a1 + 260) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v260 = [a2 position] + 1;
          if (v260 >= [a2 position] && (v261 = objc_msgSend(a2, "position") + 1, v261 <= objc_msgSend(a2, "length")))
          {
            v262 = [a2 data];
            [v262 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v259 |= (v409 & 0x7F) << v257;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v257 += 7;
          v11 = v258++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_742;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v259;
        }

LABEL_742:
        v406 = 188;
        goto LABEL_832;
      case 53:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 260) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v409 & 0x7F) << v56;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_618;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v58;
        }

LABEL_618:
        v406 = 184;
        goto LABEL_832;
      case 55:
        v43 = objc_alloc_init(CapEvent);
        [a1 addCapEvent:v43];
        v409 = 0;
        v410 = 0;
        if (!PBReaderPlaceMark() || (sub_1001129E0(v43, a2) & 1) == 0)
        {
          goto LABEL_835;
        }

        goto LABEL_542;
      case 56:
        v393 = 0;
        v394 = 0;
        v395 = 0;
        *(a1 + 260) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v396 = [a2 position] + 1;
          if (v396 >= [a2 position] && (v397 = objc_msgSend(a2, "position") + 1, v397 <= objc_msgSend(a2, "length")))
          {
            v398 = [a2 data];
            [v398 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v395 |= (v409 & 0x7F) << v393;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v393 += 7;
          v11 = v394++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_827;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v395;
        }

LABEL_827:
        v406 = 216;
        goto LABEL_832;
      case 57:
        v368 = 0;
        v369 = 0;
        v370 = 0;
        *(a1 + 260) |= &_mh_execute_header;
        while (1)
        {
          LOBYTE(v409) = 0;
          v371 = [a2 position] + 1;
          if (v371 >= [a2 position] && (v372 = objc_msgSend(a2, "position") + 1, v372 <= objc_msgSend(a2, "length")))
          {
            v373 = [a2 data];
            [v373 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v370 |= (v409 & 0x7F) << v368;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v368 += 7;
          v11 = v369++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_811;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v370;
        }

LABEL_811:
        v406 = 148;
        goto LABEL_832;
      case 58:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 260) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v409 & 0x7F) << v50;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_614;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v52;
        }

LABEL_614:
        v406 = 152;
        goto LABEL_832;
      case 60:
        v294 = 0;
        v295 = 0;
        v296 = 0;
        *(a1 + 260) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v297 = [a2 position] + 1;
          if (v297 >= [a2 position] && (v298 = objc_msgSend(a2, "position") + 1, v298 <= objc_msgSend(a2, "length")))
          {
            v299 = [a2 data];
            [v299 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v296 |= (v409 & 0x7F) << v294;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v294 += 7;
          v11 = v295++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_768;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v296;
        }

LABEL_768:
        v406 = 80;
        goto LABEL_832;
      case 61:
        v336 = 0;
        v337 = 0;
        v338 = 0;
        *(a1 + 260) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v339 = [a2 position] + 1;
          if (v339 >= [a2 position] && (v340 = objc_msgSend(a2, "position") + 1, v340 <= objc_msgSend(a2, "length")))
          {
            v341 = [a2 data];
            [v341 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v338 |= (v409 & 0x7F) << v336;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v336 += 7;
          v11 = v337++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_791;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v338;
        }

LABEL_791:
        v406 = 84;
        goto LABEL_832;
      case 62:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 260) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v409 & 0x7F) << v44;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_610;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v46;
        }

LABEL_610:
        v406 = 176;
        goto LABEL_832;
      case 68:
        v43 = objc_alloc_init(RfMeasInfo);
        [a1 addRfMeasInfo:v43];
        v409 = 0;
        v410 = 0;
        if (PBReaderPlaceMark() && (sub_100006590(v43, a2) & 1) != 0)
        {
LABEL_542:
          PBReaderRecallMark();

LABEL_833:
          v408 = [a2 position];
          if (v408 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_835:

        return 0;
      case 70:
        v362 = 0;
        v363 = 0;
        v364 = 0;
        *(a1 + 260) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v365 = [a2 position] + 1;
          if (v365 >= [a2 position] && (v366 = objc_msgSend(a2, "position") + 1, v366 <= objc_msgSend(a2, "length")))
          {
            v367 = [a2 data];
            [v367 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v364 |= (v409 & 0x7F) << v362;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v362 += 7;
          v11 = v363++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_807;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v364;
        }

LABEL_807:
        v406 = 88;
        goto LABEL_832;
      case 71:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 260) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v409 & 0x7F) << v30;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_602;
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

LABEL_602:
        v406 = 212;
        goto LABEL_832;
      case 72:
        v387 = 0;
        v388 = 0;
        v389 = 0;
        *(a1 + 260) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v390 = [a2 position] + 1;
          if (v390 >= [a2 position] && (v391 = objc_msgSend(a2, "position") + 1, v391 <= objc_msgSend(a2, "length")))
          {
            v392 = [a2 data];
            [v392 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v389 |= (v409 & 0x7F) << v387;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v387 += 7;
          v11 = v388++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_823;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v389;
        }

LABEL_823:
        v406 = 208;
        goto LABEL_832;
      case 120:
        v399 = 0;
        v400 = 0;
        v401 = 0;
        *(a1 + 260) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v402 = [a2 position] + 1;
          if (v402 >= [a2 position] && (v403 = objc_msgSend(a2, "position") + 1, v403 <= objc_msgSend(a2, "length")))
          {
            v404 = [a2 data];
            [v404 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v401 |= (v409 & 0x7F) << v399;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v399 += 7;
          v11 = v400++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_831;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v401;
        }

LABEL_831:
        v406 = 96;
        goto LABEL_832;
      case 121:
        v354 = 0;
        v355 = 0;
        v356 = 0;
        *(a1 + 260) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v357 = [a2 position] + 1;
          if (v357 >= [a2 position] && (v358 = objc_msgSend(a2, "position") + 1, v358 <= objc_msgSend(a2, "length")))
          {
            v359 = [a2 data];
            [v359 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v356 |= (v409 & 0x7F) << v354;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v354 += 7;
          v11 = v355++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_803;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v356;
        }

LABEL_803:
        v406 = 140;
        goto LABEL_832;
      case 123:
        v360 = PBReaderReadString();
        v361 = a1[28];
        a1[28] = v360;

        goto LABEL_833;
      case 124:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 260) |= 0x10000000000000uLL;
        while (1)
        {
          LOBYTE(v409) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v409 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v409 & 0x7F) << v117;
          if ((v409 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_656;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v119;
        }

LABEL_656:
        v406 = 244;
LABEL_832:
        *(a1 + v406) = v36;
        goto LABEL_833;
      default:
        result = PBReaderSkipValueWithTag();
        if (result)
        {
          goto LABEL_833;
        }

        return result;
    }
  }
}