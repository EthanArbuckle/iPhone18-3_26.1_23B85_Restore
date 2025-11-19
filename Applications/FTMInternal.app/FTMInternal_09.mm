uint64_t sub_1001639BC(uint64_t a1, void *a2)
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
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v62 = 0;
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
                v29 = 0;
                goto LABEL_95;
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

LABEL_95:
            v55 = 20;
          }

          else
          {
            if (v13 != 2)
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
            *(a1 + 28) |= 0x10u;
            while (1)
            {
              v61 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v61 & 0x7F) << v30;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_103;
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

LABEL_103:
            v55 = 24;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 28) |= 4u;
              while (1)
              {
                v60 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v60 & 0x7F) << v36;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_87;
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

LABEL_87:
              v55 = 16;
              break;
            case 4:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 28) |= 1u;
              while (1)
              {
                v59 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v59 & 0x7F) << v42;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_91;
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

LABEL_91:
              v55 = 8;
              break;
            case 5:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 28) |= 2u;
              while (1)
              {
                v58 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v58 & 0x7F) << v23;
                if ((v58 & 0x80) == 0)
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
              v55 = 12;
              break;
            default:
              goto LABEL_82;
          }
        }

        *(a1 + v55) = v29;
      }

LABEL_105:
      v56 = [a2 position];
    }

    while (v56 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100164F74(uint64_t a1, void *a2)
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
        goto LABEL_140;
      }

      if (v13 <= 6)
      {
        break;
      }

      if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v61 = PBReaderReadData();
            v62 = *(a1 + 40);
            *(a1 + 40) = v61;

            goto LABEL_140;
          case 0xA:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 56) |= 0x40u;
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
                v29 = 0;
                goto LABEL_138;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v66;
            }

LABEL_138:
            v70 = 52;
            goto LABEL_139;
          case 0xB:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 56) |= 0x20u;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v73[0] & 0x7F) << v23;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_134;
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

LABEL_134:
            v70 = 48;
LABEL_139:
            *(a1 + v70) = v29;
            goto LABEL_140;
        }

        goto LABEL_109;
      }

      if (v13 != 7)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 56) |= 0x10u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v73[0] & 0x7F) << v42;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_122;
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

LABEL_122:
        v70 = 36;
        goto LABEL_139;
      }

      v63 = objc_alloc_init(TxCapHist);
      [a1 addCapHist:v63];
      v73[0] = 0;
      v73[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000B569C(v63, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_140:
      v71 = [a2 position];
      if (v71 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v73[0] & 0x7F) << v55;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_130;
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

LABEL_130:
        v70 = 32;
        goto LABEL_139;
      }

      if (v13 == 4)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v73[0] & 0x7F) << v36;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_118;
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

LABEL_118:
        v70 = 28;
        goto LABEL_139;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v73[0] & 0x7F) << v48;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v54 = 0;
            goto LABEL_126;
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

LABEL_126:
        *(a1 + 8) = v54;
        goto LABEL_140;
      }

      if (v13 == 2)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v73[0] & 0x7F) << v30;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_114;
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

LABEL_114:
        v70 = 24;
        goto LABEL_139;
      }
    }

LABEL_109:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_140;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100166E28(uint64_t a1, void *a2)
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
            *(a1 + 20) |= 4u;
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
            v43 = 16;
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
            *(a1 + 20) |= 1u;
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
            v43 = 8;
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

uint64_t sub_100169160(uint64_t a1, void *a2)
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
        v201 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v201 & 0x7F) << v5;
        if ((v201 & 0x80) == 0)
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
          v201 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v201 & 0x7F) << v16;
          if ((v201 & 0x80) == 0)
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
            *(a1 + 156) |= 1u;
            while (1)
            {
              v201 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v201 & 0x7F) << v23;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
LABEL_348:
                *(a1 + 8) = v29;
                goto LABEL_401;
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

            goto LABEL_348;
          case 2:
            v119 = 0;
            v120 = 0;
            v121 = 0;
            *(a1 + 156) |= 0x2000000u;
            while (1)
            {
              v201 = 0;
              v122 = [a2 position] + 1;
              if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
              {
                v124 = [a2 data];
                [v124 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v121 |= (v201 & 0x7F) << v119;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              v11 = v120++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_352;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v121;
            }

LABEL_352:
            v198 = 148;
            goto LABEL_400;
          case 3:
            v88 = 0;
            v89 = 0;
            v90 = 0;
            *(a1 + 156) |= 0x200000u;
            while (1)
            {
              v201 = 0;
              v91 = [a2 position] + 1;
              if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
              {
                v93 = [a2 data];
                [v93 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v90 |= (v201 & 0x7F) << v88;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              v11 = v89++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_328;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v90;
            }

LABEL_328:
            v198 = 132;
            goto LABEL_400;
          case 4:
            v30 = PBReaderReadData();
            v31 = 96;
            goto LABEL_254;
          case 5:
            v155 = 0;
            v156 = 0;
            v157 = 0;
            *(a1 + 156) |= 0x100000u;
            while (1)
            {
              v201 = 0;
              v158 = [a2 position] + 1;
              if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
              {
                v160 = [a2 data];
                [v160 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v157 |= (v201 & 0x7F) << v155;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v155 += 7;
              v11 = v156++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_376;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v157;
            }

LABEL_376:
            v198 = 128;
            goto LABEL_400;
          case 6:
            v30 = PBReaderReadData();
            v31 = 64;
            goto LABEL_254;
          case 7:
            v125 = 0;
            v126 = 0;
            v127 = 0;
            *(a1 + 156) |= 0x8000u;
            while (1)
            {
              v201 = 0;
              v128 = [a2 position] + 1;
              if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
              {
                v130 = [a2 data];
                [v130 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v127 |= (v201 & 0x7F) << v125;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              v11 = v126++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_356;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v127;
            }

LABEL_356:
            v198 = 88;
            goto LABEL_400;
          case 8:
            v131 = 0;
            v132 = 0;
            v133 = 0;
            *(a1 + 156) |= 0x800u;
            while (1)
            {
              v201 = 0;
              v134 = [a2 position] + 1;
              if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
              {
                v136 = [a2 data];
                [v136 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v133 |= (v201 & 0x7F) << v131;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              v11 = v132++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_360;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v133;
            }

LABEL_360:
            v198 = 56;
            goto LABEL_400;
          case 9:
            v167 = 0;
            v168 = 0;
            v169 = 0;
            *(a1 + 156) |= 4u;
            while (1)
            {
              v201 = 0;
              v170 = [a2 position] + 1;
              if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
              {
                v172 = [a2 data];
                [v172 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v169 |= (v201 & 0x7F) << v167;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v167 += 7;
              v11 = v168++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_384;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v169;
            }

LABEL_384:
            v198 = 20;
            goto LABEL_400;
          case 10:
            v161 = 0;
            v162 = 0;
            v163 = 0;
            *(a1 + 156) |= 0x200u;
            while (1)
            {
              v201 = 0;
              v164 = [a2 position] + 1;
              if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
              {
                v166 = [a2 data];
                [v166 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v163 |= (v201 & 0x7F) << v161;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v161 += 7;
              v11 = v162++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_380;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v163;
            }

LABEL_380:
            v198 = 48;
            goto LABEL_400;
          case 11:
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 156) |= 0x80u;
            while (1)
            {
              v201 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v201 & 0x7F) << v57;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_310;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v59;
            }

LABEL_310:
            v198 = 40;
            goto LABEL_400;
          case 12:
            v106 = 0;
            v107 = 0;
            v108 = 0;
            *(a1 + 156) |= 0x10u;
            while (1)
            {
              v201 = 0;
              v109 = [a2 position] + 1;
              if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
              {
                v111 = [a2 data];
                [v111 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v108 |= (v201 & 0x7F) << v106;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v106 += 7;
              v11 = v107++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_340;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v108;
            }

LABEL_340:
            v198 = 28;
            goto LABEL_400;
          case 16:
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 156) |= 0x400000u;
            while (1)
            {
              v201 = 0;
              v79 = [a2 position] + 1;
              if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v78 |= (v201 & 0x7F) << v76;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v11 = v77++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_320;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v78;
            }

LABEL_320:
            v198 = 136;
            goto LABEL_400;
          case 17:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 156) |= 0x40000u;
            while (1)
            {
              v201 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v201 & 0x7F) << v39;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_298;
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

LABEL_298:
            v198 = 120;
            goto LABEL_400;
          case 18:
            v137 = 0;
            v138 = 0;
            v139 = 0;
            *(a1 + 156) |= 0x10000u;
            while (1)
            {
              v201 = 0;
              v140 = [a2 position] + 1;
              if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
              {
                v142 = [a2 data];
                [v142 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v139 |= (v201 & 0x7F) << v137;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              v11 = v138++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_364;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v139;
            }

LABEL_364:
            v198 = 112;
            goto LABEL_400;
          case 19:
            v143 = 0;
            v144 = 0;
            v145 = 0;
            *(a1 + 156) |= 0x4000u;
            while (1)
            {
              v201 = 0;
              v146 = [a2 position] + 1;
              if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
              {
                v148 = [a2 data];
                [v148 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v145 |= (v201 & 0x7F) << v143;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              v11 = v144++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_368;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v145;
            }

LABEL_368:
            v198 = 84;
            goto LABEL_400;
          case 22:
            v174 = 0;
            v175 = 0;
            v176 = 0;
            *(a1 + 156) |= 2u;
            while (1)
            {
              v201 = 0;
              v177 = [a2 position] + 1;
              if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
              {
                v179 = [a2 data];
                [v179 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v176 |= (v201 & 0x7F) << v174;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v174 += 7;
              v11 = v175++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_388;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v176;
            }

LABEL_388:
            v198 = 16;
            goto LABEL_400;
          case 23:
            v30 = PBReaderReadData();
            v31 = 104;
            goto LABEL_254;
          case 24:
            v30 = PBReaderReadData();
            v31 = 72;
LABEL_254:
            v173 = *(a1 + v31);
            *(a1 + v31) = v30;

            goto LABEL_401;
          case 25:
            v82 = 0;
            v83 = 0;
            v84 = 0;
            *(a1 + 156) |= 0x400u;
            while (1)
            {
              v201 = 0;
              v85 = [a2 position] + 1;
              if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
              {
                v87 = [a2 data];
                [v87 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v84 |= (v201 & 0x7F) << v82;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              v11 = v83++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_324;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v84;
            }

LABEL_324:
            v198 = 52;
            goto LABEL_400;
          case 26:
            v180 = 0;
            v181 = 0;
            v182 = 0;
            *(a1 + 156) |= 0x800000u;
            while (1)
            {
              v201 = 0;
              v183 = [a2 position] + 1;
              if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
              {
                v185 = [a2 data];
                [v185 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v182 |= (v201 & 0x7F) << v180;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v180 += 7;
              v11 = v181++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_392;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v182;
            }

LABEL_392:
            v198 = 140;
            goto LABEL_400;
          case 27:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 156) |= 0x80000u;
            while (1)
            {
              v201 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v201 & 0x7F) << v32;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_294;
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

LABEL_294:
            v198 = 124;
            goto LABEL_400;
          case 28:
            v70 = 0;
            v71 = 0;
            v72 = 0;
            *(a1 + 156) |= 0x20000u;
            while (1)
            {
              v201 = 0;
              v73 = [a2 position] + 1;
              if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
              {
                v75 = [a2 data];
                [v75 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v72 |= (v201 & 0x7F) << v70;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v11 = v71++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_316;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v72;
            }

LABEL_316:
            v198 = 116;
            goto LABEL_400;
          case 29:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 156) |= 8u;
            while (1)
            {
              v201 = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v201 & 0x7F) << v51;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_306;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v53;
            }

LABEL_306:
            v198 = 24;
            goto LABEL_400;
          case 30:
            v112 = 0;
            v113 = 0;
            v114 = 0;
            *(a1 + 156) |= 0x100u;
            while (1)
            {
              v201 = 0;
              v115 = [a2 position] + 1;
              if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
              {
                v117 = [a2 data];
                [v117 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v114 |= (v201 & 0x7F) << v112;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v112 += 7;
              v11 = v113++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_344;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v114;
            }

LABEL_344:
            v198 = 44;
            goto LABEL_400;
          case 32:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 156) |= 0x40u;
            while (1)
            {
              v201 = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v201 & 0x7F) << v45;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_302;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v47;
            }

LABEL_302:
            v198 = 36;
            goto LABEL_400;
          case 33:
            v192 = 0;
            v193 = 0;
            v194 = 0;
            *(a1 + 156) |= 0x1000u;
            while (1)
            {
              v201 = 0;
              v195 = [a2 position] + 1;
              if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
              {
                v197 = [a2 data];
                [v197 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v194 |= (v201 & 0x7F) << v192;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v192 += 7;
              v11 = v193++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_399;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v194;
            }

LABEL_399:
            v198 = 60;
            goto LABEL_400;
          case 34:
            v186 = 0;
            v187 = 0;
            v188 = 0;
            *(a1 + 156) |= 0x8000000u;
            while (1)
            {
              v201 = 0;
              v189 = [a2 position] + 1;
              if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
              {
                v191 = [a2 data];
                [v191 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v188 |= (v201 & 0x7F) << v186;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v186 += 7;
              v11 = v187++ >= 9;
              if (v11)
              {
                LOBYTE(v69) = 0;
                goto LABEL_394;
              }
            }

            v69 = (v188 != 0) & ~[a2 hasError];
LABEL_394:
            v199 = 153;
            goto LABEL_395;
          case 35:
            v63 = 0;
            v64 = 0;
            v65 = 0;
            *(a1 + 156) |= 0x4000000u;
            while (1)
            {
              v201 = 0;
              v66 = [a2 position] + 1;
              if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v65 |= (v201 & 0x7F) << v63;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v11 = v64++ >= 9;
              if (v11)
              {
                LOBYTE(v69) = 0;
                goto LABEL_312;
              }
            }

            v69 = (v65 != 0) & ~[a2 hasError];
LABEL_312:
            v199 = 152;
LABEL_395:
            *(a1 + v199) = v69;
            goto LABEL_401;
          case 36:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 156) |= 0x2000u;
            while (1)
            {
              v201 = 0;
              v97 = [a2 position] + 1;
              if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
              {
                v99 = [a2 data];
                [v99 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v96 |= (v201 & 0x7F) << v94;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v11 = v95++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_332;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v96;
            }

LABEL_332:
            v198 = 80;
            goto LABEL_400;
          case 37:
            v149 = 0;
            v150 = 0;
            v151 = 0;
            *(a1 + 156) |= 0x1000000u;
            while (1)
            {
              v201 = 0;
              v152 = [a2 position] + 1;
              if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
              {
                v154 = [a2 data];
                [v154 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v151 |= (v201 & 0x7F) << v149;
              if ((v201 & 0x80) == 0)
              {
                break;
              }

              v149 += 7;
              v11 = v150++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_372;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v151;
            }

LABEL_372:
            v198 = 144;
            goto LABEL_400;
          case 38:
            v100 = 0;
            v101 = 0;
            v102 = 0;
            *(a1 + 156) |= 0x20u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_401;
            }

            return result;
        }

        while (1)
        {
          v201 = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v201 & 0x7F) << v100;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_336;
          }
        }

        v38 = [a2 hasError] ? 0 : v102;
LABEL_336:
        v198 = 32;
LABEL_400:
        *(a1 + v198) = v38;
      }

LABEL_401:
      v200 = [a2 position];
    }

    while (v200 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10016D1E0(id a1)
{
  v3[0] = &off_100334FF8;
  v3[1] = &off_100335010;
  v4[0] = @"KCellularLteRrcState";
  v4[1] = @"KCellularLteCdrxConfig";
  v3[2] = &off_100335028;
  v3[3] = &off_100335040;
  v4[2] = @"KCellularLteRadioLinkFailure";
  v4[3] = @"KCellularLteScellInfo";
  v3[4] = &off_100335058;
  v3[5] = &off_100335070;
  v4[4] = @"KCellularLteSelReselCellInfo";
  v4[5] = @"KCellularLteServingCellMeasurement";
  v3[6] = &off_100335088;
  v3[7] = &off_1003350A0;
  v4[6] = @"KCellularLteTxPower";
  v4[7] = @"KCellularRsrpRsrqSinr";
  v3[8] = &off_1003350B8;
  v3[9] = &off_1003350D0;
  v4[8] = @"KCellularEmmContext";
  v4[9] = @"KCellularLteComponentCarrierInfo";
  v3[10] = &off_1003350E8;
  v3[11] = &off_100335100;
  v4[10] = @"KCellularLteCarrierAggregationStatus";
  v4[11] = @"KCellularLteNbrInterRatCellMeas";
  v3[12] = &off_100335118;
  v3[13] = &off_100335130;
  v4[12] = @"KCellularLteNbrEutraCellMeas";
  v4[13] = @"KCellularMmCommonInfo";
  v3[14] = &off_100335148;
  v3[15] = &off_100335160;
  v4[14] = @"KCellularActivatedBearerContexts";
  v4[15] = @"KCellularWcdmaRrcConnectionState";
  v3[16] = &off_100335178;
  v3[17] = &off_100335190;
  v4[16] = @"KCellularWcdmaCellInfo";
  v4[17] = @"KCellularWcdmaScellMeasurement";
  v3[18] = &off_1003351A8;
  v3[19] = &off_1003351C0;
  v4[18] = @"KCellularWcdmaTxPower";
  v4[19] = @"KCellularWcdmaNbrCellMeas";
  v3[20] = &off_1003351D8;
  v3[21] = &off_1003351F0;
  v4[20] = @"KCellularWcdmaSelReselCellInfo";
  v4[21] = @"KCellularWcdmaRrcConfiguration";
  v3[22] = &off_100335208;
  v3[23] = &off_100335220;
  v4[22] = @"KCellularMmContext";
  v4[23] = @"KCellularGmmContext";
  v3[24] = &off_100335238;
  v3[25] = &off_100335250;
  v4[24] = @"kCellularGsmScellInfo";
  v4[25] = @"kCellularGsmIdleConfig";
  v3[26] = &off_100335268;
  v3[27] = &off_100335280;
  v4[26] = @"kCellularGsmIdleScellMeasurement";
  v4[27] = @"kCellularGsmCsRfMeasurement";
  v3[28] = &off_100335298;
  v3[29] = &off_1003352B0;
  v4[28] = @"kCellularGsmGrrEventMeasCr";
  v4[29] = @"kCellularGsmGprsConfig";
  v3[30] = &off_1003352C8;
  v3[31] = &off_1003352E0;
  v4[30] = @"kCellularSimCardFiles";
  v4[31] = @"CellularLteScellInfo";
  v3[32] = &off_1003352F8;
  v3[33] = &off_100335310;
  v4[32] = @"CellularLteOtaMsg";
  v4[33] = @"KCellularLteRsrpRsrqSinr";
  v3[34] = &off_100335328;
  v3[35] = &off_100335340;
  v4[34] = @"KCellularLteRrcState";
  v4[35] = @"KCellularLteServingCellRsrpHist";
  v3[36] = &off_100335358;
  v3[37] = &off_100335370;
  v4[36] = @"KCellularLteServingCellSinrHist";
  v4[37] = @"KCellularServingCellRfBandHist";
  v3[38] = &off_100335388;
  v3[39] = &off_1003353A0;
  v4[38] = @"KCellularGsmServingCellRssiHist";
  v4[39] = @"KCellularGsmServingCellSnrHist";
  v3[40] = &off_1003353B8;
  v3[41] = &off_1003353D0;
  v4[40] = @"KCellularLteNrConnectionStats";
  v4[41] = @"KCellularNrRachAttempt";
  v3[42] = &off_1003353E8;
  v3[43] = &off_100335400;
  v4[42] = @"CellularNrRsrpRsrqSinrHist";
  v4[43] = @"KCellularNrRrcStateHist";
  v3[44] = &off_100335418;
  v3[45] = &off_100335430;
  v4[44] = @"KCellularNrTxRxHeartbeat";
  v4[45] = @"KCellularNrRrcNetworkConfig";
  v3[46] = &off_100335448;
  v3[47] = &off_100335460;
  v4[46] = @"KCellularNrSysInfoBlocks";
  v4[47] = @"KCellularBandInfo";
  v3[48] = &off_100335478;
  v3[49] = &off_100335490;
  v4[48] = @"KCellularUimInfo";
  v4[49] = @"CellularNrSysInfoBlocks";
  v3[50] = &off_1003354A8;
  v3[51] = &off_1003354C0;
  v4[50] = @"CellularNrOtaMsg";
  v4[51] = @"CellularNrScellInfo";
  v3[52] = &off_1003354D8;
  v3[53] = &off_1003354F0;
  v4[52] = @"CellularNrRachAttempt";
  v4[53] = @"CellularNrRrcState";
  v3[54] = &off_100335508;
  v3[55] = &off_100335520;
  v4[54] = @"CellularNrScgAddition";
  v4[55] = @"CellularNrScgRemoval";
  v3[56] = &off_100335538;
  v3[57] = &off_100335550;
  v4[56] = @"CellularNrBeamSwitch";
  v4[57] = @"CellularNrRrcResume";
  v3[58] = &off_100335568;
  v3[59] = &off_100335580;
  v4[58] = @"CellularNrUlPdcpStats";
  v4[59] = @"CellularNrEndcUsageStats";
  v3[60] = &off_100335598;
  v3[61] = &off_1003355B0;
  v4[60] = @"CellularNrConnectionStats";
  v4[61] = @"CellularLTEConnectionStats";
  v3[62] = &off_1003355C8;
  v3[63] = &off_1003355E0;
  v4[62] = @"CellularLteCellMetric";
  v4[63] = @"CellularNrSDMActivation";
  v3[64] = &off_1003355F8;
  v4[64] = @"CellularNrSdmEndcRelease";
  v3[65] = &off_100335610;
  v4[65] = @"CellularLqmStateChange";
  v3[66] = &off_100335628;
  v4[66] = @"CellularRegAttempt";
  v3[67] = &off_100335640;
  v4[67] = @"CellularRegisteredPlmnStatus";
  v3[68] = &off_100335658;
  v4[68] = @"CellularRatLacSrvInfo";
  v3[69] = &off_100335670;
  v4[69] = @"CellularHealthMonitor";
  v3[70] = &off_100335688;
  v4[70] = @"CellularVoiceCallEvent";
  v3[71] = &off_1003356A0;
  v4[71] = @"CellularRfTunerEvent";
  v3[72] = &off_1003356B8;
  v4[72] = @"CellularCallEndDetails";
  v3[73] = &off_1003356D0;
  v4[73] = @"CellularCsCallPageRespFail";
  v3[74] = &off_1003356E8;
  v4[74] = @"CellularCsCallGwlPageRespFail";
  v3[75] = &off_100335700;
  v4[75] = @"CellularNrRadioLinkFailure";
  v3[76] = &off_100335718;
  v4[76] = @"CellularLqmDataStall";
  v3[77] = &off_100335730;
  v4[77] = @"CellularCdmaCellInfo";
  v3[78] = &off_100335748;
  v4[78] = @"CellularGsmWcdmaCellInfo";
  v3[79] = &off_100335760;
  v4[79] = @"CellularWcdmaRrcState";
  v3[80] = &off_100335778;
  v4[80] = @"Cellular WcdmaRachattempt";
  v3[81] = &off_100335790;
  v4[81] = @"CellularLteRsrpRsrqSinrHist";
  v3[82] = &off_1003357A8;
  v4[82] = @"CellularLteRrcStateHist";
  v3[83] = &off_1003357C0;
  v4[83] = @"CellularLteRachAttempt";
  v3[84] = &off_1003357D8;
  v4[84] = @"CellularServiceStatus";
  v3[85] = &off_1003357F0;
  v4[85] = @"CellularSysOprtMode";
  v3[86] = &off_100335808;
  v4[86] = @"CellularSimHplmn";
  v3[87] = &off_100335820;
  v4[87] = @"CellularRatLacSrvInfo";
  v3[88] = &off_100335838;
  v4[88] = @"CellularNrRrcConnCount";
  v3[89] = &off_100335850;
  v4[89] = @"CellularLteRsrpRsrqSinr";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:90];
  v2 = qword_10037A550;
  qword_10037A550 = v1;
}

uint64_t sub_10016DF98(uint64_t a1, void *a2)
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
          v77 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v77 & 0x7F) << v16;
          if ((v77 & 0x80) == 0)
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
                v76 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v76 & 0x7F) << v42;
                if ((v76 & 0x80) == 0)
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
              *(a1 + 36) |= 0x20u;
              while (1)
              {
                v75 = 0;
                v64 = [a2 position] + 1;
                if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
                {
                  v66 = [a2 data];
                  [v66 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 |= (v75 & 0x7F) << v61;
                if ((v75 & 0x80) == 0)
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
              v67 = 28;
              break;
            case 3:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 36) |= 8u;
              while (1)
              {
                v74 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v74 & 0x7F) << v30;
                if ((v74 & 0x80) == 0)
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
            *(a1 + 36) |= 1u;
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
            v67 = 8;
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
            *(a1 + 36) |= 0x40u;
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
            v67 = 32;
          }
        }

        else if (v13 == 4)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v73 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v73 & 0x7F) << v49;
            if ((v73 & 0x80) == 0)
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
          v67 = 16;
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

uint64_t sub_10016FD7C(uint64_t a1, void *a2)
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
          v48 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v48 & 0x7F) << v16;
          if ((v48 & 0x80) == 0)
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
          case 7:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 20) |= 2u;
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
            v43 = 12;
            break;
          case 5:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 20) |= 1u;
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
            v43 = 8;
            break;
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 20) |= 4u;
            while (1)
            {
              v49 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v49 & 0x7F) << v23;
              if ((v49 & 0x80) == 0)
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

uint64_t sub_100170A98(uint64_t a1, void *a2)
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
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 20) |= 2u;
            while (1)
            {
              v48 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v48 & 0x7F) << v37;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_70;
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

LABEL_70:
            v45 = 12;
            break;
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 20) |= 4u;
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
                goto LABEL_66;
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

LABEL_66:
            v43 = -(v36 & 1) ^ (v36 >> 1);
            v45 = 16;
            break;
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 20) |= 1u;
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
            v43 = -(v29 & 1) ^ (v29 >> 1);
            v45 = 8;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_76;
        }

        *(a1 + v45) = v43;
      }

LABEL_76:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100171DA8(uint64_t a1, void *a2)
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
        v72 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v72 & 0x7F) << v5;
        if ((v72 & 0x80) == 0)
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
          v77 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v77 & 0x7F) << v16;
          if ((v77 & 0x80) == 0)
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
        goto LABEL_136;
      }

      if (v13 <= 11)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              v79 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v79 & 0x7F) << v61;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_118;
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

LABEL_118:
            v70 = 16;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_105;
            }

            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              v76 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v76 & 0x7F) << v36;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_130;
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

LABEL_130:
            v70 = 32;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v78 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v78 & 0x7F) << v48;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v54 = 0;
                goto LABEL_110;
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

LABEL_110:
            *(a1 + 8) = v54;
            goto LABEL_136;
          }

          if (v13 != 2)
          {
            goto LABEL_105;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            v80 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v80 & 0x7F) << v23;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_122;
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

LABEL_122:
          v70 = 40;
        }

        goto LABEL_135;
      }

      if (v13 <= 13)
      {
        break;
      }

      if (v13 != 14)
      {
        if (v13 != 15)
        {
LABEL_105:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_136;
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 48) |= 0x40u;
        while (1)
        {
          v73 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v73 & 0x7F) << v42;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_134;
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

LABEL_134:
        v70 = 44;
        goto LABEL_135;
      }

      v67 = PBReaderReadData();
      v68 = *(a1 + 24);
      *(a1 + 24) = v67;

LABEL_136:
      v71 = [a2 position];
      if (v71 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 12)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      *(a1 + 48) |= 4u;
      while (1)
      {
        v75 = 0;
        v58 = [a2 position] + 1;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
        {
          v60 = [a2 data];
          [v60 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v57 |= (v75 & 0x7F) << v55;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v55 += 7;
        v11 = v56++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_114;
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

LABEL_114:
      v70 = 20;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 48) |= 0x10u;
      while (1)
      {
        v74 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v74 & 0x7F) << v30;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_126;
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

LABEL_126:
      v70 = 36;
    }

LABEL_135:
    *(a1 + v70) = v29;
    goto LABEL_136;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001735F4(uint64_t a1, void *a2)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v47[0] & 0x7F) << v16;
          if ((v47[0] & 0x80) == 0)
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
        goto LABEL_81;
      }

      if (v13 <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 15)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 36) |= 4u;
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
              v29 = 0;
              goto LABEL_75;
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

LABEL_75:
          v44 = 32;
          goto LABEL_76;
        }

        goto LABEL_54;
      }

      v43 = objc_alloc_init(BearerContext);
      [a1 addBearerContexts:v43];
      v47[0] = 0;
      v47[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100193350(v43, a2))
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

    if (v13 == 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v47[0]) = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v47[0] & 0x7F) << v36;
        if ((v47[0] & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v11 = v37++ >= 9;
        if (v11)
        {
          v42 = 0;
          goto LABEL_80;
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

LABEL_80:
      *(a1 + 8) = v42;
      goto LABEL_81;
    }

    if (v13 == 2)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v47[0]) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v47[0] & 0x7F) << v23;
        if ((v47[0] & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_71;
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

LABEL_71:
      v44 = 16;
LABEL_76:
      *(a1 + v44) = v29;
      goto LABEL_81;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100174B8C(uint64_t a1, void *a2)
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
        LOBYTE(v72) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v72 & 0x7F) << v5;
        if ((v72 & 0x80) == 0)
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
          LOBYTE(v72) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v72 & 0x7F) << v17;
          if ((v72 & 0x80) == 0)
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
        goto LABEL_130;
      }

      if (v14 <= 4)
      {
        if (v14 == 1)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v72) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v72 & 0x7F) << v52;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_104;
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

LABEL_104:
          v58 = 56;
          goto LABEL_109;
        }

        if (v14 == 3)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v72) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v72 & 0x7F) << v32;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_108;
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

LABEL_108:
          v58 = 60;
          goto LABEL_109;
        }
      }

      else
      {
        switch(v14)
        {
          case 5:
            if (v13 != 2)
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              while (1)
              {
                LOBYTE(v72) = 0;
                v62 = [a2 position] + 1;
                if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                {
                  v64 = [a2 data];
                  [v64 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v61 |= (v72 & 0x7F) << v59;
                if ((v72 & 0x80) == 0)
                {
                  goto LABEL_128;
                }

                v59 += 7;
                v11 = v60++ >= 9;
                if (v11)
                {
                  goto LABEL_129;
                }
              }
            }

            v72 = 0;
            v73 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v39 = [a2 position];
              if (v39 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_96;
              }

              v40 = 0;
              v41 = 0;
              v42 = 0;
              while (1)
              {
                v74 = 0;
                v43 = [a2 position] + 1;
                if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
                {
                  v45 = [a2 data];
                  [v45 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v42 |= (v74 & 0x7F) << v40;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v11 = v41++ >= 9;
                if (v11)
                {
                  goto LABEL_75;
                }
              }

              [a2 hasError];
LABEL_75:
              PBRepeatedUInt32Add();
            }

          case 6:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v72) = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v72 & 0x7F) << v46;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_100;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v48;
            }

LABEL_100:
            v58 = 64;
LABEL_109:
            *(a1 + v58) = v38;
            goto LABEL_130;
          case 7:
            if (v13 != 2)
            {
              v65 = 0;
              v66 = 0;
              v67 = 0;
              while (1)
              {
                LOBYTE(v72) = 0;
                v68 = [a2 position] + 1;
                if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                {
                  v70 = [a2 data];
                  [v70 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v67 |= (v72 & 0x7F) << v65;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v11 = v66++ >= 9;
                if (v11)
                {
                  goto LABEL_129;
                }
              }

LABEL_128:
              [a2 hasError];
LABEL_129:
              PBRepeatedUInt32Add();
              goto LABEL_130;
            }

            v72 = 0;
            v73 = 0;
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
                v74 = 0;
                v29 = [a2 position] + 1;
                if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
                {
                  v31 = [a2 data];
                  [v31 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v28 |= (v74 & 0x7F) << v26;
                if ((v74 & 0x80) == 0)
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

LABEL_96:
            PBReaderRecallMark();
            goto LABEL_130;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_130:
      v71 = [a2 position];
    }

    while (v71 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10017648C(uint64_t a1, void *a2)
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
        LOBYTE(v61) = 0;
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
          LOBYTE(v61) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v61 & 0x7F) << v16;
          if ((v61 & 0x80) == 0)
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
        goto LABEL_116;
      }

      if (v13 > 11)
      {
        if (v13 <= 13)
        {
          if (v13 == 12)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 64) |= 4u;
            while (1)
            {
              LOBYTE(v61) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v61 & 0x7F) << v50;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_102;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v52;
            }

LABEL_102:
            v58 = 20;
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 64) |= 8u;
            while (1)
            {
              LOBYTE(v61) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v61 & 0x7F) << v30;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_110;
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

LABEL_110:
            v58 = 32;
          }

          goto LABEL_115;
        }

        if (v13 == 14)
        {
          v56 = PBReaderReadData();
          v57 = *(a1 + 24);
          *(a1 + 24) = v56;

          goto LABEL_116;
        }

        if (v13 == 15)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v61 & 0x7F) << v37;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_114;
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

LABEL_114:
          v58 = 48;
          goto LABEL_115;
        }
      }

      else if (v13 > 4)
      {
        if (v13 == 5)
        {
          v36 = objc_alloc_init(TxHist);
          [a1 addTxHist:v36];
          v61 = 0;
          v62 = 0;
          if (!PBReaderPlaceMark() || !sub_100023010(v36, a2))
          {
LABEL_118:

            return 0;
          }

          goto LABEL_91;
        }

        if (v13 == 7)
        {
          v36 = objc_alloc_init(RxHist);
          [a1 addRxHist:v36];
          v61 = 0;
          v62 = 0;
          if (!PBReaderPlaceMark() || !sub_1000F8734(v36, a2))
          {
            goto LABEL_118;
          }

LABEL_91:
          PBReaderRecallMark();

          goto LABEL_116;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v61 & 0x7F) << v43;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v49 = 0;
              goto LABEL_98;
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

LABEL_98:
          *(a1 + 8) = v49;
          goto LABEL_116;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v61 & 0x7F) << v23;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_106;
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

LABEL_106:
          v58 = 16;
LABEL_115:
          *(a1 + v58) = v29;
          goto LABEL_116;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_116:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100177F24(uint64_t a1, void *a2)
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
        goto LABEL_102;
      }

      if (v13 <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 28) |= 0x10u;
          while (1)
          {
            v66 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v66 & 0x7F) << v36;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              LOBYTE(v42) = 0;
              goto LABEL_85;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_85:
          v57 = 25;
          break;
        case 4:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v65 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v65 & 0x7F) << v43;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v42) = 0;
              goto LABEL_87;
            }
          }

          v42 = (v45 != 0) & ~[a2 hasError];
LABEL_87:
          v57 = 24;
          break;
        case 0xF:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v61 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v61 & 0x7F) << v23;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_96;
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

LABEL_96:
          v58 = 20;
LABEL_101:
          *(a1 + v58) = v29;
          goto LABEL_102;
        default:
          goto LABEL_82;
      }

      *(a1 + v57) = v42;
LABEL_102:
      v59 = [a2 position];
      if (v59 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v64 = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v64 & 0x7F) << v49;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          v55 = 0;
          goto LABEL_92;
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

LABEL_92:
      *(a1 + 8) = v55;
      goto LABEL_102;
    }

    if (v13 != 2)
    {
LABEL_82:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_102;
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    *(a1 + 28) |= 2u;
    while (1)
    {
      v62 = 0;
      v33 = [a2 position] + 1;
      if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
      {
        v35 = [a2 data];
        [v35 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v32 |= (v62 & 0x7F) << v30;
      if ((v62 & 0x80) == 0)
      {
        break;
      }

      v30 += 7;
      v11 = v31++ >= 9;
      if (v11)
      {
        v29 = 0;
        goto LABEL_100;
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

LABEL_100:
    v58 = 16;
    goto LABEL_101;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100179248(uint64_t a1, void *a2)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v47[0] & 0x7F) << v16;
          if ((v47[0] & 0x80) == 0)
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
        goto LABEL_43;
      }

      if (v13 <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 15)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v47[0] & 0x7F) << v31;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_75;
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

LABEL_75:
          *(a1 + 24) = v37;
          goto LABEL_43;
        }

LABEL_56:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v45 = objc_alloc_init(RxInfo);
      [a1 addRxInfo:v45];
      v47[0] = 0;
      v47[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000519F4(v45, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v30 = [a2 position];
      if (v30 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      *(a1 + 32) |= 1u;
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
          v44 = 0;
          goto LABEL_79;
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

LABEL_79:
      *(a1 + 8) = v44;
      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        LOBYTE(v47[0]) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v47[0] & 0x7F) << v23;
        if ((v47[0] & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          LOBYTE(v29) = 0;
          goto LABEL_71;
        }
      }

      v29 = (v25 != 0) & ~[a2 hasError];
LABEL_71:
      *(a1 + 28) = v29;
      goto LABEL_43;
    }

    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10017AF3C(uint64_t a1, void *a2)
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
        v157 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v157 & 0x7F) << v5;
        if ((v157 & 0x80) == 0)
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
          v157 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v157 & 0x7F) << v16;
          if ((v157 & 0x80) == 0)
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
            *(a1 + 108) |= 1u;
            while (1)
            {
              v157 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v157 & 0x7F) << v23;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_259;
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

LABEL_259:
            *(a1 + 8) = v29;
            goto LABEL_307;
          case 2:
            v81 = 0;
            v82 = 0;
            v83 = 0;
            *(a1 + 108) |= 0x200u;
            while (1)
            {
              v157 = 0;
              v84 = [a2 position] + 1;
              if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
              {
                v86 = [a2 data];
                [v86 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v83 |= (v157 & 0x7F) << v81;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              v11 = v82++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_263;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v83;
            }

LABEL_263:
            v155 = 48;
            goto LABEL_306;
          case 3:
            v63 = 0;
            v64 = 0;
            v65 = 0;
            *(a1 + 108) |= 0x10u;
            while (1)
            {
              v157 = 0;
              v66 = [a2 position] + 1;
              if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v65 |= (v157 & 0x7F) << v63;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v11 = v64++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_247;
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

LABEL_247:
            v155 = 28;
            goto LABEL_306;
          case 4:
            v112 = 0;
            v113 = 0;
            v114 = 0;
            *(a1 + 108) |= 0x80000u;
            while (1)
            {
              v157 = 0;
              v115 = [a2 position] + 1;
              if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
              {
                v117 = [a2 data];
                [v117 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v114 |= (v157 & 0x7F) << v112;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v112 += 7;
              v11 = v113++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_281;
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

LABEL_281:
            v155 = 100;
            goto LABEL_306;
          case 5:
            v119 = 0;
            v120 = 0;
            v121 = 0;
            *(a1 + 108) |= 8u;
            while (1)
            {
              v157 = 0;
              v122 = [a2 position] + 1;
              if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
              {
                v124 = [a2 data];
                [v124 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v121 |= (v157 & 0x7F) << v119;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              v11 = v120++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_285;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v121;
            }

LABEL_285:
            v155 = 24;
            goto LABEL_306;
          case 6:
            v69 = 0;
            v70 = 0;
            v71 = 0;
            *(a1 + 108) |= 0x40000u;
            while (1)
            {
              v157 = 0;
              v72 = [a2 position] + 1;
              if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v71 |= (v157 & 0x7F) << v69;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v11 = v70++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_251;
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

LABEL_251:
            v155 = 96;
            goto LABEL_306;
          case 7:
            v87 = 0;
            v88 = 0;
            v89 = 0;
            *(a1 + 108) |= 4u;
            while (1)
            {
              v157 = 0;
              v90 = [a2 position] + 1;
              if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
              {
                v92 = [a2 data];
                [v92 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v89 |= (v157 & 0x7F) << v87;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              v11 = v88++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_267;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v89;
            }

LABEL_267:
            v155 = 20;
            goto LABEL_306;
          case 8:
            v93 = 0;
            v94 = 0;
            v95 = 0;
            *(a1 + 108) |= 0x20u;
            while (1)
            {
              v157 = 0;
              v96 = [a2 position] + 1;
              if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
              {
                v98 = [a2 data];
                [v98 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v95 |= (v157 & 0x7F) << v93;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              v11 = v94++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_271;
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

LABEL_271:
            v155 = 32;
            goto LABEL_306;
          case 9:
            v131 = 0;
            v132 = 0;
            v133 = 0;
            *(a1 + 108) |= 0x20000u;
            while (1)
            {
              v157 = 0;
              v134 = [a2 position] + 1;
              if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
              {
                v136 = [a2 data];
                [v136 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v133 |= (v157 & 0x7F) << v131;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              v11 = v132++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_293;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v133;
            }

LABEL_293:
            v155 = 92;
            goto LABEL_306;
          case 10:
            v125 = 0;
            v126 = 0;
            v127 = 0;
            *(a1 + 108) |= 0x80u;
            while (1)
            {
              v157 = 0;
              v128 = [a2 position] + 1;
              if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
              {
                v130 = [a2 data];
                [v130 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v127 |= (v157 & 0x7F) << v125;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              v11 = v126++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_289;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v127;
            }

LABEL_289:
            v155 = 40;
            goto LABEL_306;
          case 11:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 108) |= 0x1000u;
            while (1)
            {
              v157 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v157 & 0x7F) << v49;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_239;
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

LABEL_239:
            v155 = 60;
            goto LABEL_306;
          case 12:
            v75 = 0;
            v76 = 0;
            v77 = 0;
            *(a1 + 108) |= 0x2000u;
            while (1)
            {
              v157 = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v157 & 0x7F) << v75;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v11 = v76++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_255;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v77;
            }

LABEL_255:
            v155 = 64;
            goto LABEL_306;
          case 13:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 108) |= 2u;
            while (1)
            {
              v157 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v157 & 0x7F) << v55;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_243;
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

LABEL_243:
            v155 = 16;
            goto LABEL_306;
          case 14:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 108) |= 0x8000u;
            while (1)
            {
              v157 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v157 & 0x7F) << v43;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_235;
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

LABEL_235:
            v155 = 84;
            goto LABEL_306;
          case 15:
            v99 = 0;
            v100 = 0;
            v101 = 0;
            *(a1 + 108) |= 0x10000u;
            while (1)
            {
              v157 = 0;
              v102 = [a2 position] + 1;
              if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
              {
                v104 = [a2 data];
                [v104 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v101 |= (v157 & 0x7F) << v99;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v99 += 7;
              v11 = v100++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_275;
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

LABEL_275:
            v155 = 88;
            goto LABEL_306;
          case 16:
            v105 = 0;
            v106 = 0;
            v107 = 0;
            *(a1 + 108) |= 0x100000u;
            while (1)
            {
              v157 = 0;
              v108 = [a2 position] + 1;
              if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
              {
                v110 = [a2 data];
                [v110 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v107 |= (v157 & 0x7F) << v105;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v105 += 7;
              v11 = v106++ >= 9;
              if (v11)
              {
                LOBYTE(v111) = 0;
                goto LABEL_277;
              }
            }

            v111 = (v107 != 0) & ~[a2 hasError];
LABEL_277:
            *(a1 + 104) = v111;
            goto LABEL_307;
          case 17:
            v143 = 0;
            v144 = 0;
            v145 = 0;
            *(a1 + 108) |= 0x40u;
            while (1)
            {
              v157 = 0;
              v146 = [a2 position] + 1;
              if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
              {
                v148 = [a2 data];
                [v148 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v145 |= (v157 & 0x7F) << v143;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              v11 = v144++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_301;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v145;
            }

LABEL_301:
            v155 = 36;
            goto LABEL_306;
          case 20:
            v137 = 0;
            v138 = 0;
            v139 = 0;
            *(a1 + 108) |= 0x400u;
            while (1)
            {
              v157 = 0;
              v140 = [a2 position] + 1;
              if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
              {
                v142 = [a2 data];
                [v142 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v139 |= (v157 & 0x7F) << v137;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              v11 = v138++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_297;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v139;
            }

LABEL_297:
            v155 = 52;
            goto LABEL_306;
          case 21:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 108) |= 0x100u;
            while (1)
            {
              v157 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v157 & 0x7F) << v30;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_227;
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

LABEL_227:
            v155 = 44;
            goto LABEL_306;
          case 22:
            v61 = PBReaderReadData();
            v62 = *(a1 + 72);
            *(a1 + 72) = v61;

            goto LABEL_307;
          case 23:
            v149 = 0;
            v150 = 0;
            v151 = 0;
            *(a1 + 108) |= 0x4000u;
            while (1)
            {
              v157 = 0;
              v152 = [a2 position] + 1;
              if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
              {
                v154 = [a2 data];
                [v154 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v151 |= (v157 & 0x7F) << v149;
              if ((v157 & 0x80) == 0)
              {
                break;
              }

              v149 += 7;
              v11 = v150++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_305;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v151;
            }

LABEL_305:
            v155 = 80;
            goto LABEL_306;
          case 24:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 108) |= 0x800u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_307;
            }

            return result;
        }

        while (1)
        {
          v157 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v157 & 0x7F) << v37;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_231;
          }
        }

        v36 = [a2 hasError] ? 0 : v39;
LABEL_231:
        v155 = 56;
LABEL_306:
        *(a1 + v155) = v36;
      }

LABEL_307:
      v156 = [a2 position];
    }

    while (v156 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10017E630(uint64_t a1, void *a2)
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
          v41 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v41 & 0x7F) << v16;
          if ((v41 & 0x80) == 0)
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
        if (v13 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 16) |= 1u;
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
          v37 = 8;
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
          *(a1 + 16) |= 2u;
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
          v37 = 12;
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

uint64_t sub_10017F508(uint64_t a1, void *a2)
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
          LOBYTE(v65[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v65[0] & 0x7F) << v16;
          if ((v65[0] & 0x80) == 0)
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
        goto LABEL_124;
      }

      if (v13 <= 3)
      {
        break;
      }

      if (v13 <= 9)
      {
        if (v13 == 4)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v65[0] & 0x7F) << v49;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_106;
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

LABEL_106:
          v62 = 32;
          goto LABEL_123;
        }

        if (v13 == 5)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v65[0] & 0x7F) << v23;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_110;
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

LABEL_110:
          v62 = 36;
LABEL_123:
          *(a1 + v62) = v29;
          goto LABEL_124;
        }

        goto LABEL_76;
      }

      if (v13 != 10)
      {
        if (v13 == 12)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v65[0] & 0x7F) << v36;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_114;
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

LABEL_114:
          v62 = 44;
          goto LABEL_123;
        }

        goto LABEL_76;
      }

      v55 = objc_alloc_init(LteCellMetric);
      [a1 addLteMetrics:v55];
      v65[0] = 0;
      v65[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000C6434(v55, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_124:
      v63 = [a2 position];
      if (v63 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v65[0] & 0x7F) << v42;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_102:
        *(a1 + 8) = v48;
        goto LABEL_124;
      case 2:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 48) |= 0x10u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v65[0] & 0x7F) << v56;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_122;
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

LABEL_122:
        v62 = 40;
        goto LABEL_123;
      case 3:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v65[0] & 0x7F) << v30;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_118;
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

LABEL_118:
        v62 = 16;
        goto LABEL_123;
    }

LABEL_76:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_124;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100181BE4(uint64_t a1, void *a2)
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
      LOBYTE(v97) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v97 & 0x7F) << v5;
      if ((v97 & 0x80) == 0)
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
        LOBYTE(v97) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v97 & 0x7F) << v16;
        if ((v97 & 0x80) == 0)
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
      goto LABEL_187;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 92) |= 1u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v97 & 0x7F) << v23;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
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
          v29 = v25;
        }

LABEL_169:
        *(a1 + 8) = v29;
        goto LABEL_187;
      case 2:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 92) |= 0x200u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v97 & 0x7F) << v70;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_173;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v72;
        }

LABEL_173:
        v94 = 84;
        goto LABEL_186;
      case 3:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 92) |= 2u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v97 & 0x7F) << v52;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_157;
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

LABEL_157:
        v94 = 32;
        goto LABEL_186;
      case 4:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 92) |= 4u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v97 & 0x7F) << v58;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_161;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v60;
        }

LABEL_161:
        v94 = 36;
        goto LABEL_186;
      case 5:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 92) |= 0x20u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v97 & 0x7F) << v39;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_149;
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

LABEL_149:
        v94 = 68;
        goto LABEL_186;
      case 6:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 92) |= 0x40u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v97 & 0x7F) << v76;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_177;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v78;
        }

LABEL_177:
        v94 = 72;
        goto LABEL_186;
      case 7:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 92) |= 0x100u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v97 & 0x7F) << v88;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v11 = v89++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_185;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v90;
        }

LABEL_185:
        v94 = 80;
        goto LABEL_186;
      case 8:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 92) |= 0x80u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v97 & 0x7F) << v64;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v66;
        }

LABEL_165:
        v94 = 76;
        goto LABEL_186;
      case 9:
        v51 = objc_alloc_init(HSIDNIDPair);
        [a1 addHomeSidNidList:v51];
        v97 = 0;
        v98 = 0;
        if (PBReaderPlaceMark() && sub_1001320E4(v51, a2))
        {
          goto LABEL_141;
        }

        goto LABEL_189;
      case 10:
        v51 = objc_alloc_init(MCCMNCPair);
        [a1 addEplmnList:v51];
        goto LABEL_136;
      case 11:
        v51 = objc_alloc_init(MCCMNCPair);
        [a1 addEhplmnList:v51];
LABEL_136:
        v97 = 0;
        v98 = 0;
        if (PBReaderPlaceMark() && sub_100131678(v51, a2))
        {
LABEL_141:
          PBReaderRecallMark();

LABEL_187:
          v95 = [a2 position];
          if (v95 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_189:

        return 0;
      case 12:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 92) |= 0x400u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v97 & 0x7F) << v32;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_145;
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

LABEL_145:
        v94 = 88;
        goto LABEL_186;
      case 13:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 92) |= 8u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v97 & 0x7F) << v45;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_153;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v47;
        }

LABEL_153:
        v94 = 48;
        goto LABEL_186;
      case 14:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 92) |= 0x10u;
        while (1)
        {
          LOBYTE(v97) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v97 & 0x7F) << v82;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v11 = v83++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_181;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v84;
        }

LABEL_181:
        v94 = 64;
LABEL_186:
        *(a1 + v94) = v38;
        goto LABEL_187;
      case 15:
        v30 = PBReaderReadData();
        v31 = *(a1 + 56);
        *(a1 + 56) = v30;

        goto LABEL_187;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_187;
        }

        return 0;
    }
  }
}

uint64_t sub_100184534(uint64_t a1, void *a2)
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
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v62 = 0;
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
                v29 = 0;
                goto LABEL_95;
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

LABEL_95:
            v55 = 16;
          }

          else
          {
            if (v13 != 2)
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
            *(a1 + 28) |= 1u;
            while (1)
            {
              v61 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v61 & 0x7F) << v30;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_103;
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

LABEL_103:
            v55 = 8;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 28) |= 8u;
              while (1)
              {
                v60 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v60 & 0x7F) << v36;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_87;
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

LABEL_87:
              v55 = 20;
              break;
            case 4:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 28) |= 2u;
              while (1)
              {
                v59 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v59 & 0x7F) << v42;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_91;
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

LABEL_91:
              v55 = 12;
              break;
            case 5:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 28) |= 0x10u;
              while (1)
              {
                v58 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v58 & 0x7F) << v23;
                if ((v58 & 0x80) == 0)
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
              v55 = 24;
              break;
            default:
              goto LABEL_82;
          }
        }

        *(a1 + v55) = v29;
      }

LABEL_105:
      v56 = [a2 position];
    }

    while (v56 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001865D8(uint64_t a1, void *a2)
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
        v64 = 0;
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
          v67 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v67 & 0x7F) << v16;
          if ((v67 & 0x80) == 0)
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
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 36) |= 8u;
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
                v29 = v45;
              }

LABEL_101:
              v62 = 24;
              break;
            case 5:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              *(a1 + 36) |= 2u;
              while (1)
              {
                v69 = 0;
                v59 = [a2 position] + 1;
                if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
                {
                  v61 = [a2 data];
                  [v61 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v58 |= (v69 & 0x7F) << v56;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v11 = v57++ >= 9;
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
                v29 = v58;
              }

LABEL_117:
              v62 = 16;
              break;
            case 0xF:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 36) |= 0x20u;
              while (1)
              {
                v65 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v65 & 0x7F) << v30;
                if ((v65 & 0x80) == 0)
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
              v62 = 32;
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
              *(a1 + 36) |= 1u;
              while (1)
              {
                v68 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v68 & 0x7F) << v36;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v42 = 0;
                  goto LABEL_97;
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

LABEL_97:
              *(a1 + 8) = v42;
              goto LABEL_119;
            case 2:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              *(a1 + 36) |= 0x10u;
              while (1)
              {
                v71 = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  v55 = [a2 data];
                  [v55 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v71 & 0x7F) << v50;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v11 = v51++ >= 9;
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
                v29 = v52;
              }

LABEL_113:
              v62 = 28;
              break;
            case 3:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 36) |= 4u;
              while (1)
              {
                v70 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v70 & 0x7F) << v23;
                if ((v70 & 0x80) == 0)
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
              v62 = 20;
              break;
            default:
              goto LABEL_74;
          }
        }

        *(a1 + v62) = v29;
      }

LABEL_119:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}