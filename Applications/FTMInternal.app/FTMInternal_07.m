uint64_t sub_1001129E0(uint64_t a1, void *a2)
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
        if (v13 == 3)
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

uint64_t sub_100113FB8(uint64_t a1, void *a2)
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
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
          v60 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v60 & 0x7F) << v16;
          if ((v60 & 0x80) == 0)
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
            *(a1 + 32) |= 1u;
            while (1)
            {
              v61 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v61 & 0x7F) << v48;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v54 = 0;
                goto LABEL_95;
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

LABEL_95:
            *(a1 + 8) = v54;
            goto LABEL_105;
          }

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
          *(a1 + 32) |= 8u;
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
          v56 = 24;
        }

        else
        {
          switch(v13)
          {
            case 3:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 32) |= 2u;
              while (1)
              {
                v63 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v63 & 0x7F) << v36;
                if ((v63 & 0x80) == 0)
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
              v56 = 16;
              break;
            case 4:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 32) |= 4u;
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
              v56 = 20;
              break;
            case 0xF:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 32) |= 0x10u;
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
              v56 = 28;
              break;
            default:
              goto LABEL_82;
          }
        }

        *(a1 + v56) = v29;
      }

LABEL_105:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100115310(uint64_t a1, void *a2)
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
          LOBYTE(v49[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v49[0] & 0x7F) << v16;
          if ((v49[0] & 0x80) == 0)
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
        goto LABEL_86;
      }

      if (v13 <= 12)
      {
        break;
      }

      switch(v13)
      {
        case 0xD:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 48) |= 4u;
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
              v29 = 0;
              goto LABEL_80;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v40;
          }

LABEL_80:
          v46 = 44;
          goto LABEL_85;
        case 0xE:
          v30 = objc_alloc_init(RsrpRsrqSinr);
          objc_storeStrong((a1 + 16), v30);
          break;
        case 0xF:
          v30 = objc_alloc_init(RsrpRsrqSinr);
          [a1 addInstValues:v30];
          break;
        default:
          goto LABEL_66;
      }

      v49[0] = 0;
      v49[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10000B578(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_86:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v49[0] & 0x7F) << v31;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_76;
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

LABEL_76:
        *(a1 + 8) = v37;
        goto LABEL_86;
      case 3:
        v44 = PBReaderReadString();
        v45 = *(a1 + 24);
        *(a1 + 24) = v44;

        goto LABEL_86;
      case 0xC:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v49[0] & 0x7F) << v23;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_84;
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

LABEL_84:
        v46 = 40;
LABEL_85:
        *(a1 + v46) = v29;
        goto LABEL_86;
    }

LABEL_66:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_86;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100116CA8(uint64_t a1, void *a2)
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
        LOBYTE(v87) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v87 & 0x7F) << v5;
        if ((v87 & 0x80) == 0)
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
          LOBYTE(v87) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v87 & 0x7F) << v17;
          if ((v87 & 0x80) == 0)
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
        NSLog(@"Unknown tag: %x:%u", v14, v23);
        goto LABEL_38;
      }

      if (v14 <= 3)
      {
        break;
      }

      if (v14 > 8)
      {
        if (v14 == 9)
        {
          if (v13 != 2)
          {
            v75 = 0;
            v76 = 0;
            v77 = 0;
            while (1)
            {
              LOBYTE(v87) = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v87 & 0x7F) << v75;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v11 = v76++ >= 9;
              if (v11)
              {
                goto LABEL_161;
              }
            }

LABEL_160:
            [a2 hasError];
LABEL_161:
            PBRepeatedUInt32Add();
            goto LABEL_38;
          }

          v87 = 0;
          v88 = 0;
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
              goto LABEL_110;
            }

            v56 = 0;
            v57 = 0;
            v58 = 0;
            while (1)
            {
              v89 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v89 & 0x7F) << v56;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                goto LABEL_109;
              }
            }

            [a2 hasError];
LABEL_109:
            PBRepeatedUInt32Add();
          }
        }

        if (v14 == 64)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 108) |= 4u;
          while (1)
          {
            LOBYTE(v87) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v87 & 0x7F) << v34;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_127;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_127:
          v68 = 104;
LABEL_132:
          *(a1 + v68) = v40;
          goto LABEL_38;
        }

LABEL_78:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_38;
      }

      if (v14 == 4)
      {
        if (v13 != 2)
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          while (1)
          {
            LOBYTE(v87) = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v87 & 0x7F) << v69;
            if ((v87 & 0x80) == 0)
            {
              goto LABEL_160;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              goto LABEL_161;
            }
          }
        }

        v87 = 0;
        v88 = 0;
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
            goto LABEL_110;
          }

          v49 = 0;
          v50 = 0;
          v51 = 0;
          while (1)
          {
            v89 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v89 & 0x7F) << v49;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              goto LABEL_94;
            }
          }

          [a2 hasError];
LABEL_94:
          PBRepeatedUInt32Add();
        }
      }

      if (v14 != 6)
      {
        goto LABEL_78;
      }

      v24 = objc_alloc_init(RecoverHist);
      [a1 addRecoverHist:v24];
      v87 = 0;
      v88 = 0;
      if (!PBReaderPlaceMark() || !sub_1000EFC34(v24, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_38:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v14)
    {
      case 1:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          LOBYTE(v87) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v87 & 0x7F) << v41;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v47 = 0;
            goto LABEL_123;
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

LABEL_123:
        *(a1 + 80) = v47;
        goto LABEL_38;
      case 2:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          LOBYTE(v87) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v87 & 0x7F) << v62;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v40 = 0;
            goto LABEL_131;
          }
        }

        if ([a2 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v64;
        }

LABEL_131:
        v68 = 88;
        goto LABEL_132;
      case 3:
        if (v13 != 2)
        {
          v81 = 0;
          v82 = 0;
          v83 = 0;
          while (1)
          {
            LOBYTE(v87) = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v87 & 0x7F) << v81;
            if ((v87 & 0x80) == 0)
            {
              goto LABEL_160;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              goto LABEL_161;
            }
          }
        }

        v87 = 0;
        v88 = 0;
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
            v89 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v89 & 0x7F) << v28;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              goto LABEL_57;
            }
          }

          [a2 hasError];
LABEL_57:
          PBRepeatedUInt32Add();
        }

LABEL_110:
        PBReaderRecallMark();
        goto LABEL_38;
    }

    goto LABEL_78;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100118F1C(uint64_t a1, void *a2)
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
        v120 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v120 & 0x7F) << v5;
        if ((v120 & 0x80) == 0)
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
          v120 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v120 & 0x7F) << v16;
          if ((v120 & 0x80) == 0)
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
              v120 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v120 & 0x7F) << v23;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_193;
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

LABEL_193:
            *(a1 + 8) = v29;
            goto LABEL_231;
          case 3:
            v63 = 0;
            v64 = 0;
            v65 = 0;
            *(a1 + 80) |= 0x80u;
            while (1)
            {
              v120 = 0;
              v66 = [a2 position] + 1;
              if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v65 |= (v120 & 0x7F) << v63;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v11 = v64++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_197;
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

LABEL_197:
            v118 = 40;
            goto LABEL_230;
          case 4:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 80) |= 0x10u;
            while (1)
            {
              v120 = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v120 & 0x7F) << v45;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_181;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v47;
            }

LABEL_181:
            v118 = 28;
            goto LABEL_230;
          case 5:
            v93 = 0;
            v94 = 0;
            v95 = 0;
            *(a1 + 80) |= 0x4000u;
            while (1)
            {
              v120 = 0;
              v96 = [a2 position] + 1;
              if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
              {
                v98 = [a2 data];
                [v98 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v95 |= (v120 & 0x7F) << v93;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              v11 = v94++ >= 9;
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
              v36 = v95;
            }

LABEL_217:
            v118 = 76;
            goto LABEL_230;
          case 6:
            v99 = 0;
            v100 = 0;
            v101 = 0;
            *(a1 + 80) |= 8u;
            while (1)
            {
              v120 = 0;
              v102 = [a2 position] + 1;
              if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
              {
                v104 = [a2 data];
                [v104 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v101 |= (v120 & 0x7F) << v99;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v99 += 7;
              v11 = v100++ >= 9;
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
              v36 = v101;
            }

LABEL_221:
            v118 = 24;
            goto LABEL_230;
          case 7:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 80) |= 0x2000u;
            while (1)
            {
              v120 = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v120 & 0x7F) << v51;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_185;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v53;
            }

LABEL_185:
            v118 = 72;
            goto LABEL_230;
          case 8:
            v69 = 0;
            v70 = 0;
            v71 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              v120 = 0;
              v72 = [a2 position] + 1;
              if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v71 |= (v120 & 0x7F) << v69;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v11 = v70++ >= 9;
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
              v36 = v71;
            }

LABEL_201:
            v118 = 20;
            goto LABEL_230;
          case 9:
            v75 = 0;
            v76 = 0;
            v77 = 0;
            *(a1 + 80) |= 0x20u;
            while (1)
            {
              v120 = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v120 & 0x7F) << v75;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v11 = v76++ >= 9;
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
              v36 = v77;
            }

LABEL_205:
            v118 = 32;
            goto LABEL_230;
          case 10:
            v111 = 0;
            v112 = 0;
            v113 = 0;
            *(a1 + 80) |= 0x200u;
            while (1)
            {
              v120 = 0;
              v114 = [a2 position] + 1;
              if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
              {
                v116 = [a2 data];
                [v116 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v113 |= (v120 & 0x7F) << v111;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v111 += 7;
              v11 = v112++ >= 9;
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
              v36 = v113;
            }

LABEL_229:
            v118 = 48;
            goto LABEL_230;
          case 11:
            v105 = 0;
            v106 = 0;
            v107 = 0;
            *(a1 + 80) |= 0x400u;
            while (1)
            {
              v120 = 0;
              v108 = [a2 position] + 1;
              if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
              {
                v110 = [a2 data];
                [v110 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v107 |= (v120 & 0x7F) << v105;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v105 += 7;
              v11 = v106++ >= 9;
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
              v36 = v107;
            }

LABEL_225:
            v118 = 52;
            goto LABEL_230;
          case 12:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              v120 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v120 & 0x7F) << v37;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_177;
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

LABEL_177:
            v118 = 16;
            goto LABEL_230;
          case 13:
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 80) |= 0x40u;
            while (1)
            {
              v120 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v120 & 0x7F) << v57;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_189;
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

LABEL_189:
            v118 = 36;
            goto LABEL_230;
          case 14:
            v43 = PBReaderReadData();
            v44 = *(a1 + 56);
            *(a1 + 56) = v43;

            goto LABEL_231;
          case 15:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 80) |= 0x800u;
            while (1)
            {
              v120 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v120 & 0x7F) << v30;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_173;
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

LABEL_173:
            v118 = 64;
            goto LABEL_230;
          case 19:
            v81 = 0;
            v82 = 0;
            v83 = 0;
            *(a1 + 80) |= 0x1000u;
            while (1)
            {
              v120 = 0;
              v84 = [a2 position] + 1;
              if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
              {
                v86 = [a2 data];
                [v86 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v83 |= (v120 & 0x7F) << v81;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              v11 = v82++ >= 9;
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
              v36 = v83;
            }

LABEL_209:
            v118 = 68;
            goto LABEL_230;
          case 20:
            v87 = 0;
            v88 = 0;
            v89 = 0;
            *(a1 + 80) |= 0x100u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_231;
            }

            return result;
        }

        while (1)
        {
          v120 = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v120 & 0x7F) << v87;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_213;
          }
        }

        v36 = [a2 hasError] ? 0 : v89;
LABEL_213:
        v118 = 44;
LABEL_230:
        *(a1 + v118) = v36;
      }

LABEL_231:
      v119 = [a2 position];
    }

    while (v119 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10011CF2C(uint64_t a1, void *a2)
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
        LOBYTE(v84[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v84[0] & 0x7F) << v5;
        if ((v84[0] & 0x80) == 0)
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
          LOBYTE(v84[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v84[0] & 0x7F) << v16;
          if ((v84[0] & 0x80) == 0)
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
        goto LABEL_161;
      }

      if (v13 > 5)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v84[0] & 0x7F) << v48;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v54 = 0;
              goto LABEL_139;
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

LABEL_139:
          *(a1 + 8) = v54;
          goto LABEL_161;
        }

        if (v13 == 2)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v84[0] & 0x7F) << v36;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
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
            v29 = v38;
          }

LABEL_131:
          v81 = 28;
          goto LABEL_160;
        }

        goto LABEL_126;
      }

      if (v13 == 3)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 56) |= 0x80u;
        while (1)
        {
          LOBYTE(v84[0]) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v84[0] & 0x7F) << v61;
          if ((v84[0] & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_147;
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

LABEL_147:
        v81 = 48;
        goto LABEL_160;
      }

      if (v13 != 4)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 56) |= 0x40u;
        while (1)
        {
          LOBYTE(v84[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v84[0] & 0x7F) << v23;
          if ((v84[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_155;
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

LABEL_155:
        v81 = 44;
LABEL_160:
        *(a1 + v81) = v29;
        goto LABEL_161;
      }

      v73 = objc_alloc_init(KCellularLocationAreaId);
      objc_storeStrong((a1 + 16), v73);
      v84[0] = 0;
      v84[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000616B8(v73, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_161:
      v82 = [a2 position];
      if (v82 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 56) |= 0x20u;
        while (1)
        {
          LOBYTE(v84[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v84[0] & 0x7F) << v55;
          if ((v84[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_143;
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

LABEL_143:
        v81 = 40;
      }

      else
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          LOBYTE(v84[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v84[0] & 0x7F) << v42;
          if ((v84[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_135;
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

LABEL_135:
        v81 = 24;
      }

      goto LABEL_160;
    }

    switch(v13)
    {
      case 8:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          LOBYTE(v84[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v84[0] & 0x7F) << v67;
          if ((v84[0] & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_151;
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

LABEL_151:
        v81 = 32;
        goto LABEL_160;
      case 9:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 56) |= 0x100u;
        while (1)
        {
          LOBYTE(v84[0]) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v84[0] & 0x7F) << v74;
          if ((v84[0] & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            LOBYTE(v80) = 0;
            goto LABEL_164;
          }
        }

        v80 = (v76 != 0) & ~[a2 hasError];
LABEL_164:
        *(a1 + 52) = v80;
        goto LABEL_161;
      case 0xF:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 56) |= 0x10u;
        while (1)
        {
          LOBYTE(v84[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v84[0] & 0x7F) << v30;
          if ((v84[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_159;
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

LABEL_159:
        v81 = 36;
        goto LABEL_160;
    }

LABEL_126:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_161;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10011EAC0(uint64_t a1, void *a2)
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
        LOBYTE(v52[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52[0] & 0x7F) << v5;
        if ((v52[0] & 0x80) == 0)
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
      v14 = [NSNumber numberWithUnsignedInt:v12 >> 3];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v52[0] & 0x7F) << v16;
          if ((v52[0] & 0x80) == 0)
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
          case 5:
            if ((v12 & 7) == 2)
            {
              v52[0] = 0;
              v52[1] = 0;
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
                  break;
                }

                v40 = 0;
                v41 = 0;
                v42 = 0;
                while (1)
                {
                  v53 = 0;
                  v43 = [a2 position] + 1;
                  if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
                  {
                    v45 = [a2 data];
                    [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v42 |= (v53 & 0x7F) << v40;
                  if ((v53 & 0x80) == 0)
                  {
                    break;
                  }

                  v40 += 7;
                  v11 = v41++ >= 9;
                  if (v11)
                  {
                    goto LABEL_68;
                  }
                }

                [a2 hasError];
LABEL_68:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                LOBYTE(v52[0]) = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v52[0] & 0x7F) << v46;
                if ((v52[0] & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  goto LABEL_88;
                }
              }

              [a2 hasError];
LABEL_88:
              PBRepeatedUInt32Add();
            }

            break;
          case 3:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              LOBYTE(v52[0]) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v52[0] & 0x7F) << v31;
              if ((v52[0] & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_74;
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

LABEL_74:
            *(a1 + 32) = v37;
            break;
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              LOBYTE(v52[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v52[0] & 0x7F) << v23;
              if ((v52[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_76;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_76:
            *(a1 + 36) = v29;
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

uint64_t sub_10012145C(uint64_t a1, void *a2)
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
        LOBYTE(v189[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v189[0] & 0x7F) << v5;
        if ((v189[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      if ([a2 hasError])
      {
        v7 = 0;
      }

LABEL_14:
      if (([a2 hasError] & 1) != 0 || (v7 & 7) == 4)
      {
        break;
      }

      v12 = v7 >> 3;
      v13 = [NSNumber numberWithUnsignedInt:v7 >> 3];
      v14 = [KBBMetricUtility isValidMetricIdTag:v13 forClass:objc_opt_class()];

      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v189[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v189[0] & 0x7F) << v15;
          if ((v189[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_39;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_39:
        NSLog(@"Unknown tag: %x:%u", v12, v21);
      }

      else
      {
        switch(v12)
        {
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 168) |= 2u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v189[0] & 0x7F) << v22;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
LABEL_315:
                v181 = 40;
                goto LABEL_316;
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

            goto LABEL_315;
          case 2:
            v60 = PBReaderReadData();
            v61 = 64;
            goto LABEL_220;
          case 3:
            v82 = 0;
            v83 = 0;
            v84 = 0;
            *(a1 + 168) |= 0x400u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v85 = [a2 position] + 1;
              if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
              {
                v87 = [a2 data];
                [v87 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v84 |= (v189[0] & 0x7F) << v82;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              v11 = v83++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_299;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v84;
            }

LABEL_299:
            v180 = 100;
            goto LABEL_363;
          case 4:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 168) |= 4u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v97 = [a2 position] + 1;
              if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
              {
                v99 = [a2 data];
                [v99 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v96 |= (v189[0] & 0x7F) << v94;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v11 = v95++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_307;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v96;
            }

LABEL_307:
            v180 = 48;
            goto LABEL_363;
          case 5:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 168) |= 0x80u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v57 = [a2 position] + 1;
              if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
              {
                v59 = [a2 data];
                [v59 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v56 |= (v189[0] & 0x7F) << v54;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v11 = v55++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_287;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v56;
            }

LABEL_287:
            v180 = 76;
            goto LABEL_363;
          case 6:
            v118 = 0;
            v119 = 0;
            v120 = 0;
            *(a1 + 168) |= 0x400000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v121 = [a2 position] + 1;
              if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
              {
                v123 = [a2 data];
                [v123 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v120 |= (v189[0] & 0x7F) << v118;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v118 += 7;
              v11 = v119++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_328;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v120;
            }

LABEL_328:
            v180 = 160;
            goto LABEL_363;
          case 7:
            v137 = 0;
            v138 = 0;
            v139 = 0;
            *(a1 + 168) |= 0x100000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v140 = [a2 position] + 1;
              if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
              {
                v142 = [a2 data];
                [v142 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v139 |= (v189[0] & 0x7F) << v137;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              v11 = v138++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_338;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v139;
            }

LABEL_338:
            v180 = 140;
            goto LABEL_363;
          case 8:
            v100 = 0;
            v101 = 0;
            v102 = 0;
            *(a1 + 168) |= 0x800u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v103 = [a2 position] + 1;
              if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
              {
                v105 = [a2 data];
                [v105 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v102 |= (v189[0] & 0x7F) << v100;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              v11 = v101++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_311;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v102;
            }

LABEL_311:
            v180 = 104;
            goto LABEL_363;
          case 9:
            v150 = 0;
            v151 = 0;
            v152 = 0;
            *(a1 + 168) |= 0x20u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v153 = [a2 position] + 1;
              if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
              {
                v155 = [a2 data];
                [v155 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v152 |= (v189[0] & 0x7F) << v150;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              v11 = v151++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_346;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v152;
            }

LABEL_346:
            v180 = 60;
            goto LABEL_363;
          case 10:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 168) |= 0x100u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v64 |= (v189[0] & 0x7F) << v62;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v11 = v63++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_291;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v64;
            }

LABEL_291:
            v180 = 80;
            goto LABEL_363;
          case 11:
            v60 = PBReaderReadData();
            v61 = 88;
            goto LABEL_220;
          case 12:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 168) |= 0x200u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v189[0] & 0x7F) << v48;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_283;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v50;
            }

LABEL_283:
            v180 = 96;
            goto LABEL_363;
          case 13:
            v60 = PBReaderReadData();
            v61 = 152;
LABEL_220:
            v149 = *(a1 + v61);
            *(a1 + v61) = v60;

            break;
          case 14:
            v130 = 0;
            v131 = 0;
            v132 = 0;
            *(a1 + 168) |= 0x800000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v133 = [a2 position] + 1;
              if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
              {
                v135 = [a2 data];
                [v135 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v132 |= (v189[0] & 0x7F) << v130;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              v11 = v131++ >= 9;
              if (v11)
              {
                LOBYTE(v136) = 0;
                goto LABEL_334;
              }
            }

            v136 = (v132 != 0) & ~[a2 hasError];
LABEL_334:
            *(a1 + 164) = v136;
            break;
          case 15:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 168) |= 0x40u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v189[0] & 0x7F) << v42;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_279;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v44;
            }

LABEL_279:
            v180 = 72;
            goto LABEL_363;
          case 16:
            v88 = 0;
            v89 = 0;
            v90 = 0;
            *(a1 + 168) |= 1u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v91 = [a2 position] + 1;
              if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
              {
                v93 = [a2 data];
                [v93 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v90 |= (v189[0] & 0x7F) << v88;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              v11 = v89++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_303;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v90;
            }

LABEL_303:
            v181 = 32;
LABEL_316:
            *(a1 + v181) = v28;
            break;
          case 17:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 168) |= 0x2000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v189[0] & 0x7F) << v36;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_275;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v38;
            }

LABEL_275:
            v180 = 112;
            goto LABEL_363;
          case 18:
            v106 = 0;
            v107 = 0;
            v108 = 0;
            *(a1 + 168) |= 0x1000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v109 = [a2 position] + 1;
              if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
              {
                v111 = [a2 data];
                [v111 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v108 |= (v189[0] & 0x7F) << v106;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v106 += 7;
              v11 = v107++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_320;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v108;
            }

LABEL_320:
            v180 = 108;
            goto LABEL_363;
          case 19:
            v143 = 0;
            v144 = 0;
            v145 = 0;
            *(a1 + 168) |= 0x80000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v146 = [a2 position] + 1;
              if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
              {
                v148 = [a2 data];
                [v148 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v145 |= (v189[0] & 0x7F) << v143;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              v11 = v144++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_342;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v145;
            }

LABEL_342:
            v180 = 136;
            goto LABEL_363;
          case 20:
            v162 = 0;
            v163 = 0;
            v164 = 0;
            *(a1 + 168) |= 0x40000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v165 = [a2 position] + 1;
              if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
              {
                v167 = [a2 data];
                [v167 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v164 |= (v189[0] & 0x7F) << v162;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v162 += 7;
              v11 = v163++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_354;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v164;
            }

LABEL_354:
            v180 = 132;
            goto LABEL_363;
          case 21:
            v112 = 0;
            v113 = 0;
            v114 = 0;
            *(a1 + 168) |= 0x10000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v115 = [a2 position] + 1;
              if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
              {
                v117 = [a2 data];
                [v117 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v114 |= (v189[0] & 0x7F) << v112;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v112 += 7;
              v11 = v113++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_324;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v114;
            }

LABEL_324:
            v180 = 124;
            goto LABEL_363;
          case 22:
            v124 = 0;
            v125 = 0;
            v126 = 0;
            *(a1 + 168) |= 0x20000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v127 = [a2 position] + 1;
              if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
              {
                v129 = [a2 data];
                [v129 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v126 |= (v189[0] & 0x7F) << v124;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v124 += 7;
              v11 = v125++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_332;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v126;
            }

LABEL_332:
            v180 = 128;
            goto LABEL_363;
          case 23:
            v156 = 0;
            v157 = 0;
            v158 = 0;
            *(a1 + 168) |= 0x4000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v159 = [a2 position] + 1;
              if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
              {
                v161 = [a2 data];
                [v161 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v158 |= (v189[0] & 0x7F) << v156;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v156 += 7;
              v11 = v157++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_350;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v158;
            }

LABEL_350:
            v180 = 116;
            goto LABEL_363;
          case 24:
            v168 = 0;
            v169 = 0;
            v170 = 0;
            *(a1 + 168) |= 0x8000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v171 = [a2 position] + 1;
              if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
              {
                v173 = [a2 data];
                [v173 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v170 |= (v189[0] & 0x7F) << v168;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v168 += 7;
              v11 = v169++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_358;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v170;
            }

LABEL_358:
            v180 = 120;
            goto LABEL_363;
          case 25:
            if ((v7 & 7) == 2)
            {
              v189[0] = 0;
              v189[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v75 = [a2 position];
                if (v75 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v76 = 0;
                v77 = 0;
                v78 = 0;
                while (1)
                {
                  v190 = 0;
                  v79 = [a2 position] + 1;
                  if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                  {
                    v81 = [a2 data];
                    [v81 getBytes:&v190 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v78 |= (v190 & 0x7F) << v76;
                  if ((v190 & 0x80) == 0)
                  {
                    break;
                  }

                  v76 += 7;
                  v11 = v77++ >= 9;
                  if (v11)
                  {
                    goto LABEL_118;
                  }
                }

                [a2 hasError];
LABEL_118:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v183 = 0;
              v184 = 0;
              v185 = 0;
              while (1)
              {
                LOBYTE(v189[0]) = 0;
                v186 = [a2 position] + 1;
                if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
                {
                  v188 = [a2 data];
                  [v188 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v185 |= (v189[0] & 0x7F) << v183;
                if ((v189[0] & 0x80) == 0)
                {
                  break;
                }

                v183 += 7;
                v11 = v184++ >= 9;
                if (v11)
                {
                  goto LABEL_377;
                }
              }

              [a2 hasError];
LABEL_377:
              PBRepeatedUInt32Add();
            }

            break;
          case 26:
            v68 = 0;
            v69 = 0;
            v70 = 0;
            *(a1 + 168) |= 0x200000u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v71 = [a2 position] + 1;
              if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
              {
                v73 = [a2 data];
                [v73 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v70 |= (v189[0] & 0x7F) << v68;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v11 = v69++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_295;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v70;
            }

LABEL_295:
            v180 = 144;
            goto LABEL_363;
          case 27:
            v174 = 0;
            v175 = 0;
            v176 = 0;
            *(a1 + 168) |= 0x10u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v177 = [a2 position] + 1;
              if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
              {
                v179 = [a2 data];
                [v179 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v176 |= (v189[0] & 0x7F) << v174;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v174 += 7;
              v11 = v175++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_362;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v176;
            }

LABEL_362:
            v180 = 56;
            goto LABEL_363;
          case 28:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 168) |= 8u;
            while (1)
            {
              LOBYTE(v189[0]) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v189[0] & 0x7F) << v29;
              if ((v189[0] & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_271;
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

LABEL_271:
            v180 = 52;
LABEL_363:
            *(a1 + v180) = v35;
            break;
          default:
            if (PBReaderSkipValueWithTag())
            {
              break;
            }

            return 0;
        }
      }

      v182 = [a2 position];
    }

    while (v182 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10012545C(uint64_t a1, void *a2)
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
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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
        if (v13 == 3)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v47 = 0;
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
              v36 = 0;
              goto LABEL_70;
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

LABEL_70:
          v44 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            if (v13 == 1)
            {
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 24) |= 1u;
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
                  goto LABEL_75;
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

LABEL_75:
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

            goto LABEL_76;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 24) |= 4u;
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
          v44 = 20;
        }

        *(a1 + v44) = v36;
      }

LABEL_76:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100128180(uint64_t a1, void *a2)
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
        v94 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v94 & 0x7F) << v5;
        if ((v94 & 0x80) == 0)
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
          v103 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v103 & 0x7F) << v16;
          if ((v103 & 0x80) == 0)
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
        if (v13 <= 7)
        {
          if (v13 <= 4)
          {
            if (v13 == 1)
            {
              v48 = 0;
              v49 = 0;
              v50 = 0;
              *(a1 + 56) |= 1u;
              while (1)
              {
                v104 = 0;
                v51 = [a2 position] + 1;
                if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                {
                  v53 = [a2 data];
                  [v53 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v50 |= (v104 & 0x7F) << v48;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v11 = v49++ >= 9;
                if (v11)
                {
                  v54 = 0;
                  goto LABEL_147;
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

LABEL_147:
              *(a1 + 8) = v54;
              goto LABEL_189;
            }

            if (v13 != 4)
            {
LABEL_142:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_189;
            }

            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 56) |= 0x40u;
            while (1)
            {
              v102 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v102 & 0x7F) << v42;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_151;
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

LABEL_151:
            v92 = 36;
          }

          else if (v13 == 5)
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 56) |= 0x80u;
            while (1)
            {
              v101 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v101 & 0x7F) << v73;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_171;
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

LABEL_171:
            v92 = 40;
          }

          else if (v13 == 6)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 56) |= 0x20u;
            while (1)
            {
              v100 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v100 & 0x7F) << v55;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_155;
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

LABEL_155:
            v92 = 32;
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              v99 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v99 & 0x7F) << v30;
              if ((v99 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_167;
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

LABEL_167:
            v92 = 24;
          }
        }

        else if (v13 > 10)
        {
          switch(v13)
          {
            case 0xB:
              v85 = 0;
              v86 = 0;
              v87 = 0;
              *(a1 + 56) |= 0x200u;
              while (1)
              {
                v105 = 0;
                v88 = [a2 position] + 1;
                if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
                {
                  v90 = [a2 data];
                  [v90 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v87 |= (v105 & 0x7F) << v85;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                v11 = v86++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_187;
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

LABEL_187:
              v92 = 48;
              break;
            case 0xD:
              v67 = 0;
              v68 = 0;
              v69 = 0;
              *(a1 + 56) |= 0x100u;
              while (1)
              {
                v96 = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v96 & 0x7F) << v67;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v11 = v68++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_163;
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

LABEL_163:
              v92 = 44;
              break;
            case 0xF:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 56) |= 0x400u;
              while (1)
              {
                v95 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v95 & 0x7F) << v36;
                if ((v95 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
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
                v29 = v38;
              }

LABEL_179:
              v92 = 52;
              break;
            default:
              goto LABEL_142;
          }
        }

        else if (v13 == 8)
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 56) |= 0x10u;
          while (1)
          {
            v106 = 0;
            v82 = [a2 position] + 1;
            if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
            {
              v84 = [a2 data];
              [v84 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v81 |= (v106 & 0x7F) << v79;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v11 = v80++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_183;
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

LABEL_183:
          v92 = 28;
        }

        else if (v13 == 9)
        {
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v98 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v98 & 0x7F) << v61;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v11 = v62++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_159;
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

LABEL_159:
          v92 = 16;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v97 = 0;
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
              goto LABEL_175;
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

LABEL_175:
          v92 = 20;
        }

        *(a1 + v92) = v29;
      }

LABEL_189:
      v93 = [a2 position];
    }

    while (v93 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10012A6E0(uint64_t a1, void *a2)
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
        LOBYTE(v79[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v79[0] & 0x7F) << v5;
        if ((v79[0] & 0x80) == 0)
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
          LOBYTE(v79[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v79[0] & 0x7F) << v16;
          if ((v79[0] & 0x80) == 0)
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
        goto LABEL_157;
      }

      if (v13 > 5)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v79[0] & 0x7F) << v48;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v54 = 0;
              goto LABEL_127;
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

LABEL_127:
          *(a1 + 8) = v54;
          goto LABEL_157;
        }

        if (v13 == 2)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v79[0] & 0x7F) << v42;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
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
            v29 = v44;
          }

LABEL_131:
          v76 = 24;
          goto LABEL_156;
        }

LABEL_122:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_157;
      }

      if (v13 == 3)
      {
        v55 = objc_alloc_init(ServingCellBeamInfo);
        [a1 addOldBeamInfo:v55];
      }

      else
      {
        if (v13 != 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v79[0] & 0x7F) << v30;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_139;
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

LABEL_139:
          v76 = 28;
          goto LABEL_156;
        }

        v55 = objc_alloc_init(ServingCellBeamInfo);
        [a1 addNewBeamInfo:v55];
      }

      v79[0] = 0;
      v79[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100082718(v55, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_157:
      v77 = [a2 position];
      if (v77 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 12)
    {
      switch(v13)
      {
        case 0xD:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 72) |= 0x40u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v79[0] & 0x7F) << v70;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v11 = v71++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_155;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v72;
          }

LABEL_155:
          v76 = 64;
          goto LABEL_156;
        case 0xE:
          v62 = PBReaderReadData();
          v63 = *(a1 + 56);
          *(a1 + 56) = v62;

          goto LABEL_157;
        case 0xF:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 72) |= 0x80u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v79[0] & 0x7F) << v36;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_147;
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

LABEL_147:
          v76 = 68;
          goto LABEL_156;
      }
    }

    else
    {
      switch(v13)
      {
        case 6:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v79[0] & 0x7F) << v64;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_151;
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

LABEL_151:
          v76 = 20;
          goto LABEL_156;
        case 7:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v79[0] & 0x7F) << v56;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v11 = v57++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_135;
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

LABEL_135:
          v76 = 16;
          goto LABEL_156;
        case 0xC:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v79[0] & 0x7F) << v23;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_143;
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

LABEL_143:
          v76 = 40;
LABEL_156:
          *(a1 + v76) = v29;
          goto LABEL_157;
      }
    }

    goto LABEL_122;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10012C6B4(uint64_t a1, void *a2)
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
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 24) |= 4u;
            while (1)
            {
              v57 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v57 & 0x7F) << v43;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_89;
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

LABEL_89:
            v29 = -(v49 & 1) ^ (v49 >> 1);
            v50 = 16;
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
            *(a1 + 24) |= 1u;
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
            v50 = 8;
          }
        }

        else if (v13 == 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v55 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v55 & 0x7F) << v37;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_85;
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

LABEL_85:
          v50 = 20;
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
            v54 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v54 & 0x7F) << v23;
            if ((v54 & 0x80) == 0)
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
          v50 = 12;
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

uint64_t sub_10012D720(uint64_t a1, void *a2)
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
          v40 = 0;
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
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v42 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v42 & 0x7F) << v30;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_60;
          }
        }

        v36 = [a2 hasError] ? 0 : v32;
LABEL_60:
        *(a1 + 16) = v36;
      }

      else if (v13 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 20) |= 1u;
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

        v29 = [a2 hasError] ? 0 : v25;
LABEL_56:
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

      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10012E10C(uint64_t a1, void *a2)
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
            goto LABEL_33;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_33:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else if (v13 == 2)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 20) |= 1u;
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
            v31 = 0;
            goto LABEL_48;
          }
        }

        v31 = [a2 hasError] ? 0 : v27;
LABEL_48:
        *(a1 + 16) = v31;
      }

      else if (v13 == 1)
      {
        v23 = PBReaderReadData();
        v24 = *(a1 + 8);
        *(a1 + 8) = v23;
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

uint64_t sub_10012EC24(uint64_t a1, void *a2)
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
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
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
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 24) |= 2u;
            while (1)
            {
              v53 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v53 & 0x7F) << v43;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
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
              v29 = v45;
            }

LABEL_89:
            v49 = 12;
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
            *(a1 + 24) |= 8u;
            while (1)
            {
              v52 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v52 & 0x7F) << v30;
              if ((v52 & 0x80) == 0)
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
            v49 = 20;
          }
        }

        else if (v13 == 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v55 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v55 & 0x7F) << v37;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_85;
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

LABEL_85:
          v49 = 8;
        }

        else
        {
          if (v13 != 3)
          {
            goto LABEL_54;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v54 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v54 & 0x7F) << v23;
            if ((v54 & 0x80) == 0)
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
          v49 = 16;
        }

        *(a1 + v49) = v29;
      }

LABEL_91:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10012FFC4(uint64_t a1, void *a2)
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
        LOBYTE(v55[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55[0] & 0x7F) << v5;
        if ((v55[0] & 0x80) == 0)
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
          LOBYTE(v55[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v55[0] & 0x7F) << v16;
          if ((v55[0] & 0x80) == 0)
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
        goto LABEL_100;
      }

      if (v13 > 4)
      {
        break;
      }

      switch(v13)
      {
        case 1:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v55[0]) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v55[0] & 0x7F) << v33;
            if ((v55[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v39 = 0;
              goto LABEL_86;
            }
          }

          if ([a2 hasError])
          {
            v39 = 0;
          }

          else
          {
            v39 = v35;
          }

LABEL_86:
          *(a1 + 8) = v39;
          goto LABEL_100;
        case 3:
          v30 = objc_alloc_init(RbInfo);
          [a1 addDrb:v30];
          break;
        case 4:
          v30 = objc_alloc_init(RbInfo);
          [a1 addSrb:v30];
          break;
        default:
          goto LABEL_59;
      }

      v55[0] = 0;
      v55[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000606D0(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_100:
      v53 = [a2 position];
      if (v53 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 60) |= 8u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v55[0] & 0x7F) << v40;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_90;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v42;
        }

LABEL_90:
        v52 = 56;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 60) |= 2u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v55[0] & 0x7F) << v23;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_98;
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

LABEL_98:
        v52 = 24;
      }

LABEL_99:
      *(a1 + v52) = v29;
      goto LABEL_100;
    }

    if (v13 == 7)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *(a1 + 60) |= 4u;
      while (1)
      {
        LOBYTE(v55[0]) = 0;
        v49 = [a2 position] + 1;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v48 |= (v55[0] & 0x7F) << v46;
        if ((v55[0] & 0x80) == 0)
        {
          break;
        }

        v46 += 7;
        v11 = v47++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_94;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v48;
      }

LABEL_94:
      v52 = 40;
      goto LABEL_99;
    }

    if (v13 == 8)
    {
      v31 = PBReaderReadData();
      v32 = *(a1 + 32);
      *(a1 + 32) = v31;

      goto LABEL_100;
    }

LABEL_59:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_100;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100131678(uint64_t a1, void *a2)
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

uint64_t sub_1001320E4(uint64_t a1, void *a2)
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

uint64_t sub_100132D38(uint64_t a1, void *a2)
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
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v60 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v60 & 0x7F) << v37;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_87;
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

LABEL_87:
          v56 = 8;
LABEL_101:
          *(a1 + v56) = v36;
          goto LABEL_102;
        case 4:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 24) |= 8u;
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
              LOBYTE(v29) = 0;
              goto LABEL_89;
            }
          }

          v29 = (v45 != 0) & ~[a2 hasError];
LABEL_89:
          v57 = 20;
          break;
        case 5:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 24) |= 0x10u;
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
              LOBYTE(v29) = 0;
              goto LABEL_95;
            }
          }

          v29 = (v25 != 0) & ~[a2 hasError];
LABEL_95:
          v57 = 21;
          break;
        default:
          goto LABEL_82;
      }

      *(a1 + v57) = v29;
LABEL_102:
      v58 = [a2 position];
      if (v58 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 24) |= 4u;
      while (1)
      {
        v62 = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v62 & 0x7F) << v49;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_93;
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

LABEL_93:
      v56 = 16;
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

        goto LABEL_102;
      }

      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 24) |= 2u;
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
          v36 = 0;
          goto LABEL_100;
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

LABEL_100:
      v56 = 12;
    }

    goto LABEL_101;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001351E4(uint64_t a1, void *a2)
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
        LOBYTE(v238) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v238 & 0x7F) << v5;
        if ((v238 & 0x80) == 0)
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
          LOBYTE(v238) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v238 & 0x7F) << v17;
          if ((v238 & 0x80) == 0)
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
            *(a1 + 344) |= 1u;
            while (1)
            {
              LOBYTE(v238) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v238 & 0x7F) << v24;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_311;
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

LABEL_311:
            *(a1 + 296) = v30;
            break;
          case 2:
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 344) |= 2u;
            while (1)
            {
              LOBYTE(v238) = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v238 & 0x7F) << v85;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_315;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v87;
            }

LABEL_315:
            v163 = 304;
            goto LABEL_320;
          case 4:
            v65 = 0;
            v66 = 0;
            v67 = 0;
            *(a1 + 344) |= 4u;
            while (1)
            {
              LOBYTE(v238) = 0;
              v68 = [a2 position] + 1;
              if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
              {
                v70 = [a2 data];
                [v70 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v67 |= (v238 & 0x7F) << v65;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              v11 = v66++ >= 9;
              if (v11)
              {
                v71 = 0;
                goto LABEL_299;
              }
            }

            if ([a2 hasError])
            {
              v71 = 0;
            }

            else
            {
              v71 = v67;
            }

LABEL_299:
            v37 = -(v71 & 1) ^ (v71 >> 1);
            v163 = 308;
            goto LABEL_320;
          case 5:
            if (v13 != 2)
            {
              v206 = 0;
              v207 = 0;
              v208 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v209 = [a2 position] + 1;
                if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
                {
                  v211 = [a2 data];
                  [v211 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v208 |= (v238 & 0x7F) << v206;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v206 += 7;
                v11 = v207++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v119 = [a2 position];
              if (v119 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v120 = 0;
              v121 = 0;
              v122 = 0;
              while (1)
              {
                v240 = 0;
                v123 = [a2 position] + 1;
                if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
                {
                  v125 = [a2 data];
                  [v125 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v122 |= (v240 & 0x7F) << v120;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v120 += 7;
                v11 = v121++ >= 9;
                if (v11)
                {
                  goto LABEL_216;
                }
              }

              [a2 hasError];
LABEL_216:
              PBRepeatedUInt32Add();
            }

          case 6:
            if (v13 != 2)
            {
              v212 = 0;
              v213 = 0;
              v214 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v215 = [a2 position] + 1;
                if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
                {
                  v217 = [a2 data];
                  [v217 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v214 |= (v238 & 0x7F) << v212;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v212 += 7;
                v11 = v213++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v126 = [a2 position];
              if (v126 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v127 = 0;
              v128 = 0;
              v129 = 0;
              while (1)
              {
                v240 = 0;
                v130 = [a2 position] + 1;
                if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
                {
                  v132 = [a2 data];
                  [v132 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v129 |= (v240 & 0x7F) << v127;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v127 += 7;
                v11 = v128++ >= 9;
                if (v11)
                {
                  goto LABEL_231;
                }
              }

              [a2 hasError];
LABEL_231:
              PBRepeatedUInt32Add();
            }

          case 8:
            v72 = 0;
            v73 = 0;
            v74 = 0;
            *(a1 + 344) |= 8u;
            while (1)
            {
              LOBYTE(v238) = 0;
              v75 = [a2 position] + 1;
              if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
              {
                v77 = [a2 data];
                [v77 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v74 |= (v238 & 0x7F) << v72;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              v11 = v73++ >= 9;
              if (v11)
              {
                v78 = 0;
                goto LABEL_303;
              }
            }

            if ([a2 hasError])
            {
              v78 = 0;
            }

            else
            {
              v78 = v74;
            }

LABEL_303:
            v37 = -(v78 & 1) ^ (v78 >> 1);
            v163 = 312;
            goto LABEL_320;
          case 9:
            if (v13 != 2)
            {
              v182 = 0;
              v183 = 0;
              v184 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v185 = [a2 position] + 1;
                if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
                {
                  v187 = [a2 data];
                  [v187 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v184 |= (v238 & 0x7F) << v182;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v182 += 7;
                v11 = v183++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v91 = [a2 position];
              if (v91 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v92 = 0;
              v93 = 0;
              v94 = 0;
              while (1)
              {
                v240 = 0;
                v95 = [a2 position] + 1;
                if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
                {
                  v97 = [a2 data];
                  [v97 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v94 |= (v240 & 0x7F) << v92;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v92 += 7;
                v11 = v93++ >= 9;
                if (v11)
                {
                  goto LABEL_156;
                }
              }

              [a2 hasError];
LABEL_156:
              PBRepeatedUInt32Add();
            }

          case 10:
            if (v13 != 2)
            {
              v188 = 0;
              v189 = 0;
              v190 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v191 = [a2 position] + 1;
                if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
                {
                  v193 = [a2 data];
                  [v193 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v190 |= (v238 & 0x7F) << v188;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v188 += 7;
                v11 = v189++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v98 = [a2 position];
              if (v98 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v99 = 0;
              v100 = 0;
              v101 = 0;
              while (1)
              {
                v240 = 0;
                v102 = [a2 position] + 1;
                if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
                {
                  v104 = [a2 data];
                  [v104 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v101 |= (v240 & 0x7F) << v99;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                v11 = v100++ >= 9;
                if (v11)
                {
                  goto LABEL_171;
                }
              }

              [a2 hasError];
LABEL_171:
              PBRepeatedUInt32Add();
            }

          case 12:
            v140 = 0;
            v141 = 0;
            v142 = 0;
            *(a1 + 344) |= 0x10u;
            while (1)
            {
              LOBYTE(v238) = 0;
              v143 = [a2 position] + 1;
              if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
              {
                v145 = [a2 data];
                [v145 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v142 |= (v238 & 0x7F) << v140;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v140 += 7;
              v11 = v141++ >= 9;
              if (v11)
              {
                v146 = 0;
                goto LABEL_319;
              }
            }

            if ([a2 hasError])
            {
              v146 = 0;
            }

            else
            {
              v146 = v142;
            }

LABEL_319:
            v37 = -(v146 & 1) ^ (v146 >> 1);
            v163 = 316;
            goto LABEL_320;
          case 13:
            if (v13 != 2)
            {
              v218 = 0;
              v219 = 0;
              v220 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v221 = [a2 position] + 1;
                if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
                {
                  v223 = [a2 data];
                  [v223 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v220 |= (v238 & 0x7F) << v218;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v218 += 7;
                v11 = v219++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v133 = [a2 position];
              if (v133 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v134 = 0;
              v135 = 0;
              v136 = 0;
              while (1)
              {
                v240 = 0;
                v137 = [a2 position] + 1;
                if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
                {
                  v139 = [a2 data];
                  [v139 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v136 |= (v240 & 0x7F) << v134;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v134 += 7;
                v11 = v135++ >= 9;
                if (v11)
                {
                  goto LABEL_246;
                }
              }

              [a2 hasError];
LABEL_246:
              PBRepeatedUInt32Add();
            }

          case 14:
            if (v13 != 2)
            {
              v170 = 0;
              v171 = 0;
              v172 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v173 = [a2 position] + 1;
                if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
                {
                  v175 = [a2 data];
                  [v175 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v172 |= (v238 & 0x7F) << v170;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v170 += 7;
                v11 = v171++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v45 = [a2 position];
              if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                v240 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v240 & 0x7F) << v46;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  goto LABEL_81;
                }
              }

              [a2 hasError];
LABEL_81:
              PBRepeatedUInt32Add();
            }

          case 15:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 344) |= 0x80u;
            while (1)
            {
              LOBYTE(v238) = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                v84 = [a2 data];
                [v84 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v238 & 0x7F) << v79;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v11 = v80++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_307;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v81;
            }

LABEL_307:
            v163 = 340;
            goto LABEL_320;
          case 16:
            if (v13 != 2)
            {
              v176 = 0;
              v177 = 0;
              v178 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v179 = [a2 position] + 1;
                if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
                {
                  v181 = [a2 data];
                  [v181 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v178 |= (v238 & 0x7F) << v176;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v176 += 7;
                v11 = v177++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v52 = [a2 position];
              if (v52 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v53 = 0;
              v54 = 0;
              v55 = 0;
              while (1)
              {
                v240 = 0;
                v56 = [a2 position] + 1;
                if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
                {
                  v58 = [a2 data];
                  [v58 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v55 |= (v240 & 0x7F) << v53;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v11 = v54++ >= 9;
                if (v11)
                {
                  goto LABEL_96;
                }
              }

              [a2 hasError];
LABEL_96:
              PBRepeatedUInt32Add();
            }

          case 17:
            if (v13 != 2)
            {
              v164 = 0;
              v165 = 0;
              v166 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v167 = [a2 position] + 1;
                if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
                {
                  v169 = [a2 data];
                  [v169 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v166 |= (v238 & 0x7F) << v164;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v164 += 7;
                v11 = v165++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v38 = [a2 position];
              if (v38 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v39 = 0;
              v40 = 0;
              v41 = 0;
              while (1)
              {
                v240 = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v240 & 0x7F) << v39;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  goto LABEL_66;
                }
              }

              [a2 hasError];
LABEL_66:
              PBRepeatedUInt32Add();
            }

          case 18:
            if (v13 != 2)
            {
              v194 = 0;
              v195 = 0;
              v196 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v197 = [a2 position] + 1;
                if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
                {
                  v199 = [a2 data];
                  [v199 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v196 |= (v238 & 0x7F) << v194;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v194 += 7;
                v11 = v195++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
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
                goto LABEL_286;
              }

              v106 = 0;
              v107 = 0;
              v108 = 0;
              while (1)
              {
                v240 = 0;
                v109 = [a2 position] + 1;
                if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
                {
                  v111 = [a2 data];
                  [v111 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v108 |= (v240 & 0x7F) << v106;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                v11 = v107++ >= 9;
                if (v11)
                {
                  goto LABEL_186;
                }
              }

              [a2 hasError];
LABEL_186:
              PBRepeatedUInt32Add();
            }

          case 19:
            if (v13 != 2)
            {
              v200 = 0;
              v201 = 0;
              v202 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v203 = [a2 position] + 1;
                if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
                {
                  v205 = [a2 data];
                  [v205 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v202 |= (v238 & 0x7F) << v200;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v200 += 7;
                v11 = v201++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v112 = [a2 position];
              if (v112 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v113 = 0;
              v114 = 0;
              v115 = 0;
              while (1)
              {
                v240 = 0;
                v116 = [a2 position] + 1;
                if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
                {
                  v118 = [a2 data];
                  [v118 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v115 |= (v240 & 0x7F) << v113;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v113 += 7;
                v11 = v114++ >= 9;
                if (v11)
                {
                  goto LABEL_201;
                }
              }

              [a2 hasError];
LABEL_201:
              PBRepeatedUInt32Add();
            }

          case 20:
            if (v13 == 2)
            {
              v238 = 0;
              v239 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v154 = [a2 position];
                if (v154 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v155 = 0;
                v156 = 0;
                v157 = 0;
                while (1)
                {
                  v240 = 0;
                  v158 = [a2 position] + 1;
                  if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
                  {
                    v160 = [a2 data];
                    [v160 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v157 |= (v240 & 0x7F) << v155;
                  if ((v240 & 0x80) == 0)
                  {
                    break;
                  }

                  v155 += 7;
                  v11 = v156++ >= 9;
                  if (v11)
                  {
                    goto LABEL_285;
                  }
                }

                [a2 hasError];
LABEL_285:
                PBRepeatedUInt32Add();
              }

LABEL_286:
              PBReaderRecallMark();
            }

            else
            {
              v230 = 0;
              v231 = 0;
              v232 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v233 = [a2 position] + 1;
                if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
                {
                  v235 = [a2 data];
                  [v235 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v232 |= (v238 & 0x7F) << v230;
                if ((v238 & 0x80) == 0)
                {
                  break;
                }

                v230 += 7;
                v11 = v231++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }

LABEL_429:
              [a2 hasError];
LABEL_430:
              PBRepeatedUInt32Add();
            }

            break;
          case 21:
            if (v13 != 2)
            {
              v224 = 0;
              v225 = 0;
              v226 = 0;
              while (1)
              {
                LOBYTE(v238) = 0;
                v227 = [a2 position] + 1;
                if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
                {
                  v229 = [a2 data];
                  [v229 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v226 |= (v238 & 0x7F) << v224;
                if ((v238 & 0x80) == 0)
                {
                  goto LABEL_429;
                }

                v224 += 7;
                v11 = v225++ >= 9;
                if (v11)
                {
                  goto LABEL_430;
                }
              }
            }

            v238 = 0;
            v239 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v147 = [a2 position];
              if (v147 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_286;
              }

              v148 = 0;
              v149 = 0;
              v150 = 0;
              while (1)
              {
                v240 = 0;
                v151 = [a2 position] + 1;
                if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
                {
                  v153 = [a2 data];
                  [v153 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v150 |= (v240 & 0x7F) << v148;
                if ((v240 & 0x80) == 0)
                {
                  break;
                }

                v148 += 7;
                v11 = v149++ >= 9;
                if (v11)
                {
                  goto LABEL_270;
                }
              }

              [a2 hasError];
LABEL_270:
              PBRepeatedUInt32Add();
            }

          case 22:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 344) |= 0x20u;
            while (1)
            {
              LOBYTE(v238) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v238 & 0x7F) << v31;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_291;
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

LABEL_291:
            v163 = 320;
            goto LABEL_320;
          case 23:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            *(a1 + 344) |= 0x40u;
            while (1)
            {
              LOBYTE(v238) = 0;
              v62 = [a2 position] + 1;
              if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
              {
                v64 = [a2 data];
                [v64 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v61 |= (v238 & 0x7F) << v59;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              v11 = v60++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_295;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v61;
            }

LABEL_295:
            v163 = 336;
LABEL_320:
            *(a1 + v163) = v37;
            break;
          case 24:
            v161 = PBReaderReadData();
            v162 = *(a1 + 328);
            *(a1 + 328) = v161;

            break;
          default:
            if (PBReaderSkipValueWithTag())
            {
              break;
            }

            return 0;
        }
      }

      v236 = [a2 position];
    }

    while (v236 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}