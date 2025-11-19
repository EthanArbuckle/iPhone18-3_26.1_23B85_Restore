uint64_t sub_100082718(uint64_t a1, void *a2)
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
        LOBYTE(v89[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v89[0] & 0x7F) << v5;
        if ((v89[0] & 0x80) == 0)
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
          LOBYTE(v89[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v89[0] & 0x7F) << v17;
          if ((v89[0] & 0x80) == 0)
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
            if (v13 == 2)
            {
              v89[0] = 0;
              v89[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v56 = [a2 position];
                if (v56 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v57 = 0;
                v58 = 0;
                v59 = 0;
                while (1)
                {
                  v90 = 0;
                  v60 = [a2 position] + 1;
                  if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                  {
                    v62 = [a2 data];
                    [v62 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v59 |= (v90 & 0x7F) << v57;
                  if ((v90 & 0x80) == 0)
                  {
                    break;
                  }

                  v57 += 7;
                  v11 = v58++ >= 9;
                  if (v11)
                  {
                    goto LABEL_100;
                  }
                }

                [a2 hasError];
LABEL_100:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v83 = 0;
              v84 = 0;
              v85 = 0;
              while (1)
              {
                LOBYTE(v89[0]) = 0;
                v86 = [a2 position] + 1;
                if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
                {
                  v88 = [a2 data];
                  [v88 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v85 |= (v89[0] & 0x7F) << v83;
                if ((v89[0] & 0x80) == 0)
                {
                  break;
                }

                v83 += 7;
                v11 = v84++ >= 9;
                if (v11)
                {
                  goto LABEL_176;
                }
              }

              [a2 hasError];
LABEL_176:
              PBRepeatedUInt32Add();
            }

            goto LABEL_163;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            LOBYTE(v89[0]) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v89[0] & 0x7F) << v37;
            if ((v89[0] & 0x80) == 0)
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
          v81 = 48;
          goto LABEL_162;
        }

        if (v14 == 1)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            LOBYTE(v89[0]) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v89[0] & 0x7F) << v49;
            if ((v89[0] & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_145;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v51;
          }

LABEL_145:
          v81 = 36;
          goto LABEL_162;
        }

        if (v14 == 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            LOBYTE(v89[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v89[0] & 0x7F) << v31;
            if ((v89[0] & 0x80) == 0)
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
          v81 = 60;
          goto LABEL_162;
        }
      }

      else
      {
        if (v14 <= 6)
        {
          if (v14 == 5)
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v72 = [a2 position] + 1;
              if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v71 |= (v89[0] & 0x7F) << v69;
              if ((v89[0] & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v11 = v70++ >= 9;
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
              v30 = v71;
            }

LABEL_153:
            v81 = 32;
          }

          else
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 64) |= 4u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v89[0] & 0x7F) << v43;
              if ((v89[0] & 0x80) == 0)
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
            v81 = 40;
          }

          goto LABEL_162;
        }

        switch(v14)
        {
          case 7:
            v63 = 0;
            v64 = 0;
            v65 = 0;
            *(a1 + 64) |= 8u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v66 = [a2 position] + 1;
              if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v65 |= (v89[0] & 0x7F) << v63;
              if ((v89[0] & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v11 = v64++ >= 9;
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
              v30 = v65;
            }

LABEL_149:
            v81 = 44;
            goto LABEL_162;
          case 8:
            v75 = 0;
            v76 = 0;
            v77 = 0;
            *(a1 + 64) |= 0x40u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v89[0] & 0x7F) << v75;
              if ((v89[0] & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v11 = v76++ >= 9;
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
              v30 = v77;
            }

LABEL_161:
            v81 = 56;
            goto LABEL_162;
          case 9:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 64) |= 0x20u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v89[0] & 0x7F) << v24;
              if ((v89[0] & 0x80) == 0)
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
            v81 = 52;
LABEL_162:
            *(a1 + v81) = v30;
            goto LABEL_163;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_163:
      v82 = [a2 position];
    }

    while (v82 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100084688(uint64_t a1, void *a2)
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
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
        goto LABEL_74;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v40) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v40 & 0x7F) << v31;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_69;
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

LABEL_69:
          *(a1 + 8) = v37;
          goto LABEL_74;
        }

        if (v13 == 2)
        {
          v30 = objc_alloc_init(UtraCellMeasResult);
          [a1 addMeasUtraResult:v30];
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !sub_1000EAD38(v30, a2))
          {
LABEL_76:

            return 0;
          }

          goto LABEL_54;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v30 = objc_alloc_init(GsmCellMeasResult);
            [a1 addMeasGsmResult:v30];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !sub_1000E2C08(v30, a2))
            {
              goto LABEL_76;
            }

            goto LABEL_54;
          case 4:
            v30 = objc_alloc_init(LteCellMeasResult);
            [a1 addMeasLteResult:v30];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !sub_10014C184(v30, a2))
            {
              goto LABEL_76;
            }

LABEL_54:
            PBReaderRecallMark();

            goto LABEL_74;
          case 0xF:
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
                goto LABEL_73;
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

LABEL_73:
            *(a1 + 40) = v29;
            goto LABEL_74;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_74:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100086324(uint64_t a1, void *a2)
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
        LOBYTE(v67[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v67[0] & 0x7F) << v5;
        if ((v67[0] & 0x80) == 0)
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
          LOBYTE(v67[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v67[0] & 0x7F) << v16;
          if ((v67[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_37;
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

LABEL_37:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_126;
      }

      if (v13 > 8)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v56 = PBReaderReadString();
          v57 = *(a1 + 48);
          *(a1 + 48) = v56;

          goto LABEL_126;
        }

        if (v13 == 8)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            LOBYTE(v67[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v67[0] & 0x7F) << v31;
            if ((v67[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_120;
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

LABEL_120:
          v64 = 16;
LABEL_125:
          *(a1 + v64) = v30;
          goto LABEL_126;
        }

        goto LABEL_99;
      }

      if (v13 == 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          LOBYTE(v67[0]) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v67[0] & 0x7F) << v43;
          if ((v67[0] & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v49 = 0;
            goto LABEL_104;
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

LABEL_104:
        *(a1 + 8) = v49;
        goto LABEL_126;
      }

      if (v13 != 2)
      {
        goto LABEL_99;
      }

      v23 = objc_alloc_init(TxPowerInfo);
      [a1 addTxPowerInfo:v23];
      v67[0] = 0;
      v67[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100170A98(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_126:
      v65 = [a2 position];
      if (v65 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 10)
    {
      if (v13 == 9)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          LOBYTE(v67[0]) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v67[0] & 0x7F) << v50;
          if ((v67[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v52;
        }

LABEL_108:
        v64 = 24;
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          LOBYTE(v67[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v67[0] & 0x7F) << v24;
          if ((v67[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_116;
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

LABEL_116:
        v64 = 20;
      }

      goto LABEL_125;
    }

    if (v13 == 11)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      *(a1 + 56) |= 0x10u;
      while (1)
      {
        LOBYTE(v67[0]) = 0;
        v61 = [a2 position] + 1;
        if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
        {
          v63 = [a2 data];
          [v63 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v60 |= (v67[0] & 0x7F) << v58;
        if ((v67[0] & 0x80) == 0)
        {
          break;
        }

        v58 += 7;
        v11 = v59++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_112;
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

LABEL_112:
      v64 = 28;
      goto LABEL_125;
    }

    if (v13 == 15)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      *(a1 + 56) |= 0x20u;
      while (1)
      {
        LOBYTE(v67[0]) = 0;
        v40 = [a2 position] + 1;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v39 |= (v67[0] & 0x7F) << v37;
        if ((v67[0] & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v11 = v38++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_124;
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

LABEL_124:
      v64 = 32;
      goto LABEL_125;
    }

LABEL_99:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_126;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10008976C(uint64_t a1, void *a2)
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
        LOBYTE(v91) = 0;
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
          LOBYTE(v91) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v91 & 0x7F) << v16;
          if ((v91 & 0x80) == 0)
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
        goto LABEL_180;
      }

      if (v13 > 6)
      {
        break;
      }

      if (v13 <= 3)
      {
        switch(v13)
        {
          case 1:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 68) |= 1u;
            while (1)
            {
              LOBYTE(v91) = 0;
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
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_157;
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

LABEL_157:
            *(a1 + 8) = v49;
            goto LABEL_180;
          case 2:
            v69 = 0;
            v70 = 0;
            v71 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v91) = 0;
              v72 = [a2 position] + 1;
              if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v71 |= (v91 & 0x7F) << v69;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v11 = v70++ >= 9;
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
              v29 = v71;
            }

LABEL_171:
            v87 = 28;
            goto LABEL_176;
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 68) |= 0x80u;
            while (1)
            {
              LOBYTE(v91) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v91 & 0x7F) << v23;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_145;
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

LABEL_145:
            v87 = 60;
LABEL_176:
            *(a1 + v87) = v29;
            goto LABEL_180;
        }

        goto LABEL_140;
      }

      if (v13 == 4)
      {
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 68) |= 0x40u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v91 & 0x7F) << v56;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_165;
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

LABEL_165:
        v87 = 56;
        goto LABEL_176;
      }

      if (v13 == 5)
      {
        v36 = objc_alloc_init(KCellularTrackingAreaId);
        [a1 addTaiList:v36];
        v91 = 0;
        v92 = 0;
        if (!PBReaderPlaceMark() || !sub_10012E10C(v36, a2))
        {
LABEL_182:

          return 0;
        }
      }

      else
      {
        v36 = objc_alloc_init(Guti);
        objc_storeStrong((a1 + 16), v36);
        v91 = 0;
        v92 = 0;
        if (!PBReaderPlaceMark() || !sub_10000C6BC(v36, a2))
        {
          goto LABEL_182;
        }
      }

      PBReaderRecallMark();

LABEL_180:
      v89 = [a2 position];
      if (v89 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 9)
    {
      if (v13 == 7)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 68) |= 8u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v91 & 0x7F) << v50;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
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
          v29 = v52;
        }

LABEL_161:
        v87 = 32;
      }

      else if (v13 == 8)
      {
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 68) |= 2u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v91 & 0x7F) << v75;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
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
          v29 = v77;
        }

LABEL_175:
        v87 = 24;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 68) |= 0x20u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v91 & 0x7F) << v30;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_149;
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

LABEL_149:
        v87 = 40;
      }

      goto LABEL_176;
    }

    switch(v13)
    {
      case 0xA:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 68) |= 0x200u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v91 & 0x7F) << v62;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            LOBYTE(v68) = 0;
            goto LABEL_167;
          }
        }

        v68 = (v64 != 0) & ~[a2 hasError];
LABEL_167:
        v88 = 65;
        goto LABEL_179;
      case 0xB:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 68) |= 0x100u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v91 & 0x7F) << v81;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v11 = v82++ >= 9;
          if (v11)
          {
            LOBYTE(v68) = 0;
            goto LABEL_178;
          }
        }

        v68 = (v83 != 0) & ~[a2 hasError];
LABEL_178:
        v88 = 64;
LABEL_179:
        *(a1 + v88) = v68;
        goto LABEL_180;
      case 0xF:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 68) |= 0x10u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v91 & 0x7F) << v37;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_153;
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

LABEL_153:
        v87 = 36;
        goto LABEL_176;
    }

LABEL_140:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_180;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10008BBCC(uint64_t a1, void *a2)
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
          v47 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v47 & 0x7F) << v16;
          if ((v47 & 0x80) == 0)
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
            *(a1 + 20) |= 4u;
            while (1)
            {
              v48 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v48 & 0x7F) << v30;
              if ((v48 & 0x80) == 0)
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
            v43 = 16;
            break;
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 20) |= 2u;
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
            v43 = 12;
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

uint64_t sub_10008D52C(uint64_t a1, void *a2)
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
      LOBYTE(v147[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v147[0] & 0x7F) << v5;
      if ((v147[0] & 0x80) == 0)
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
        LOBYTE(v147[0]) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v147[0] & 0x7F) << v16;
        if ((v147[0] & 0x80) == 0)
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
      goto LABEL_286;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 104) |= 1u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v147[0] & 0x7F) << v23;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_240;
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

LABEL_240:
        *(a1 + 8) = v29;
        goto LABEL_286;
      case 3:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 104) |= 0x200u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v147[0] & 0x7F) << v75;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
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
          v36 = v77;
        }

LABEL_244:
        v144 = 48;
        goto LABEL_285;
      case 4:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 104) |= 0x4000u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v147[0] & 0x7F) << v57;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
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
          v36 = v59;
        }

LABEL_228:
        v144 = 76;
        goto LABEL_285;
      case 5:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 104) |= 0x1000u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v147[0] & 0x7F) << v107;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
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
          v36 = v109;
        }

LABEL_264:
        v144 = 68;
        goto LABEL_285;
      case 6:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 104) |= 0x8000u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v147[0] & 0x7F) << v113;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v11 = v114++ >= 9;
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
          v36 = v115;
        }

LABEL_268:
        v144 = 88;
        goto LABEL_285;
      case 7:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 104) |= 0x10u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v147[0] & 0x7F) << v63;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
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
          v36 = v65;
        }

LABEL_232:
        v144 = 28;
        goto LABEL_285;
      case 8:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 104) |= 4u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v147[0] & 0x7F) << v81;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v11 = v82++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_248;
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

LABEL_248:
        v144 = 20;
        goto LABEL_285;
      case 9:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 104) |= 0x100u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v147[0] & 0x7F) << v87;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
          if (v11)
          {
            v93 = 0;
            goto LABEL_252;
          }
        }

        if ([a2 hasError])
        {
          v93 = 0;
        }

        else
        {
          v93 = v89;
        }

LABEL_252:
        v36 = -(v93 & 1) ^ (v93 >> 1);
        v144 = 44;
        goto LABEL_285;
      case 10:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 104) |= 0x20000u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v147[0] & 0x7F) << v125;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v11 = v126++ >= 9;
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
          v36 = v127;
        }

LABEL_276:
        v144 = 96;
        goto LABEL_285;
      case 11:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 104) |= 8u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v147[0] & 0x7F) << v119;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
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
          v36 = v121;
        }

LABEL_272:
        v144 = 24;
        goto LABEL_285;
      case 12:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 104) |= 2u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v147[0] & 0x7F) << v43;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
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
          v36 = v45;
        }

LABEL_220:
        v144 = 16;
        goto LABEL_285;
      case 13:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 104) |= 0x400u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v147[0] & 0x7F) << v69;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
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
          v36 = v71;
        }

LABEL_236:
        v144 = 52;
        goto LABEL_285;
      case 14:
        v49 = PBReaderReadData();
        v50 = *(a1 + 56);
        *(a1 + 56) = v49;

        goto LABEL_286;
      case 15:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 104) |= 0x10000u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v147[0] & 0x7F) << v37;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
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
          v36 = v39;
        }

LABEL_216:
        v144 = 92;
        goto LABEL_285;
      case 16:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 104) |= 0x2000u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v147[0] & 0x7F) << v94;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v11 = v95++ >= 9;
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
          v36 = v96;
        }

LABEL_256:
        v144 = 72;
        goto LABEL_285;
      case 17:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 104) |= 0x40000u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v147[0] & 0x7F) << v100;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v106 = 0;
            goto LABEL_260;
          }
        }

        if ([a2 hasError])
        {
          v106 = 0;
        }

        else
        {
          v106 = v102;
        }

LABEL_260:
        v36 = -(v106 & 1) ^ (v106 >> 1);
        v144 = 100;
        goto LABEL_285;
      case 18:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 104) |= 0x20u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v147[0] & 0x7F) << v137;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v11 = v138++ >= 9;
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
          v36 = v139;
        }

LABEL_284:
        v144 = 32;
        goto LABEL_285;
      case 19:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 104) |= 0x800u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v147[0] & 0x7F) << v131;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
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
          v36 = v133;
        }

LABEL_280:
        v144 = 64;
        goto LABEL_285;
      case 20:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 104) |= 0x80u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v147[0] & 0x7F) << v30;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
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
          v36 = v32;
        }

LABEL_212:
        v144 = 40;
        goto LABEL_285;
      case 21:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 104) |= 0x40u;
        while (1)
        {
          LOBYTE(v147[0]) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:v147 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v147[0] & 0x7F) << v51;
          if ((v147[0] & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
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
          v36 = v53;
        }

LABEL_224:
        v144 = 36;
LABEL_285:
        *(a1 + v144) = v36;
        goto LABEL_286;
      case 22:
        v143 = objc_alloc_init(ServingCellBeamInfo);
        [a1 addServingCellBeamInfo:v143];
        v147[0] = 0;
        v147[1] = 0;
        if (PBReaderPlaceMark() && sub_100082718(v143, a2))
        {
          PBReaderRecallMark();

LABEL_286:
          v145 = [a2 position];
          if (v145 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_286;
        }

        return 0;
    }
  }
}

uint64_t sub_1000914E0(uint64_t a1, void *a2)
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
        LOBYTE(v175) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v175 & 0x7F) << v5;
        if ((v175 & 0x80) == 0)
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
          LOBYTE(v175) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v175 & 0x7F) << v17;
          if ((v175 & 0x80) == 0)
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
            *(a1 + 140) |= 1u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v175 & 0x7F) << v24;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
LABEL_285:
                *(a1 + 56) = v30;
                goto LABEL_347;
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

            goto LABEL_285;
          case 2:
            v87 = 0;
            v88 = 0;
            v89 = 0;
            *(a1 + 140) |= 0x4000u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v90 = [a2 position] + 1;
              if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
              {
                v92 = [a2 data];
                [v92 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v89 |= (v175 & 0x7F) << v87;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              v11 = v88++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_277;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v89;
            }

LABEL_277:
            v160 = 116;
            goto LABEL_346;
          case 3:
            v93 = 0;
            v94 = 0;
            v95 = 0;
            *(a1 + 140) |= 0x8000u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v96 = [a2 position] + 1;
              if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
              {
                v98 = [a2 data];
                [v98 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v95 |= (v175 & 0x7F) << v93;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              v11 = v94++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_281;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v95;
            }

LABEL_281:
            v160 = 120;
            goto LABEL_346;
          case 4:
            v99 = 0;
            v100 = 0;
            v101 = 0;
            *(a1 + 140) |= 0x80u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v102 = [a2 position] + 1;
              if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
              {
                v104 = [a2 data];
                [v104 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v101 |= (v175 & 0x7F) << v99;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v99 += 7;
              v11 = v100++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_289;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v101;
            }

LABEL_289:
            v160 = 88;
            goto LABEL_346;
          case 5:
            v105 = 0;
            v106 = 0;
            v107 = 0;
            *(a1 + 140) |= 0x2000u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v108 = [a2 position] + 1;
              if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
              {
                v110 = [a2 data];
                [v110 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v107 |= (v175 & 0x7F) << v105;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v105 += 7;
              v11 = v106++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_293;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v107;
            }

LABEL_293:
            v160 = 112;
            goto LABEL_346;
          case 6:
          case 9:
          case 22:
          case 23:
            goto LABEL_51;
          case 7:
            v136 = 0;
            v137 = 0;
            v138 = 0;
            *(a1 + 140) |= 0x100u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v139 = [a2 position] + 1;
              if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
              {
                v141 = [a2 data];
                [v141 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v138 |= (v175 & 0x7F) << v136;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              v11 = v137++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_309;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v138;
            }

LABEL_309:
            v160 = 92;
            goto LABEL_346;
          case 8:
            v75 = 0;
            v76 = 0;
            v77 = 0;
            *(a1 + 140) |= 0x40u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v175 & 0x7F) << v75;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v11 = v76++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_269;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v77;
            }

LABEL_269:
            v160 = 84;
            goto LABEL_346;
          case 10:
            v81 = 0;
            v82 = 0;
            v83 = 0;
            *(a1 + 140) |= 4u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v84 = [a2 position] + 1;
              if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
              {
                v86 = [a2 data];
                [v86 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v83 |= (v175 & 0x7F) << v81;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              v11 = v82++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_273;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v83;
            }

LABEL_273:
            v160 = 68;
            goto LABEL_346;
          case 11:
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 140) |= 2u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v175 & 0x7F) << v57;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_257;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v59;
            }

LABEL_257:
            v160 = 64;
            goto LABEL_346;
          case 12:
            v123 = 0;
            v124 = 0;
            v125 = 0;
            *(a1 + 140) |= 0x1000u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v126 = [a2 position] + 1;
              if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
              {
                v128 = [a2 data];
                [v128 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v125 |= (v175 & 0x7F) << v123;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v123 += 7;
              v11 = v124++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_305;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v125;
            }

LABEL_305:
            v160 = 108;
            goto LABEL_346;
          case 13:
            v142 = 0;
            v143 = 0;
            v144 = 0;
            *(a1 + 140) |= 0x400u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v145 = [a2 position] + 1;
              if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
              {
                v147 = [a2 data];
                [v147 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v144 |= (v175 & 0x7F) << v142;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v142 += 7;
              v11 = v143++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_313;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v144;
            }

LABEL_313:
            v160 = 100;
            goto LABEL_346;
          case 14:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 140) |= 0x800u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v175 & 0x7F) << v51;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_253;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v53;
            }

LABEL_253:
            v160 = 104;
            goto LABEL_346;
          case 15:
            v69 = 0;
            v70 = 0;
            v71 = 0;
            *(a1 + 140) |= 0x200u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v72 = [a2 position] + 1;
              if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v71 |= (v175 & 0x7F) << v69;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v11 = v70++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_265;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v71;
            }

LABEL_265:
            v160 = 96;
            goto LABEL_346;
          case 16:
            v148 = 0;
            v149 = 0;
            v150 = 0;
            *(a1 + 140) |= 0x10000u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v151 = [a2 position] + 1;
              if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
              {
                v153 = [a2 data];
                [v153 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v150 |= (v175 & 0x7F) << v148;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v148 += 7;
              v11 = v149++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_317;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v150;
            }

LABEL_317:
            v160 = 124;
            goto LABEL_346;
          case 17:
            v111 = 0;
            v112 = 0;
            v113 = 0;
            *(a1 + 140) |= 8u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v114 = [a2 position] + 1;
              if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
              {
                v116 = [a2 data];
                [v116 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v113 |= (v175 & 0x7F) << v111;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v111 += 7;
              v11 = v112++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_297;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v113;
            }

LABEL_297:
            v160 = 72;
            goto LABEL_346;
          case 18:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 140) |= 0x20000u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v175 & 0x7F) << v45;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_249;
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

LABEL_249:
            v160 = 128;
            goto LABEL_346;
          case 19:
            v63 = 0;
            v64 = 0;
            v65 = 0;
            *(a1 + 140) |= 0x10u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v66 = [a2 position] + 1;
              if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v65 |= (v175 & 0x7F) << v63;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v11 = v64++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_261;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v65;
            }

LABEL_261:
            v160 = 76;
            goto LABEL_346;
          case 20:
            if (v13 == 2)
            {
              v175 = 0;
              v176 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v129 = [a2 position];
                if (v129 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v130 = 0;
                v131 = 0;
                v132 = 0;
                while (1)
                {
                  v177 = 0;
                  v133 = [a2 position] + 1;
                  if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
                  {
                    v135 = [a2 data];
                    [v135 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v132 |= (v177 & 0x7F) << v130;
                  if ((v177 & 0x80) == 0)
                  {
                    break;
                  }

                  v130 += 7;
                  v11 = v131++ >= 9;
                  if (v11)
                  {
                    goto LABEL_208;
                  }
                }

                [a2 hasError];
LABEL_208:
                PBRepeatedUInt32Add();
              }

LABEL_245:
              PBReaderRecallMark();
            }

            else
            {
              v167 = 0;
              v168 = 0;
              v169 = 0;
              while (1)
              {
                LOBYTE(v175) = 0;
                v170 = [a2 position] + 1;
                if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
                {
                  v172 = [a2 data];
                  [v172 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v169 |= (v175 & 0x7F) << v167;
                if ((v175 & 0x80) == 0)
                {
                  break;
                }

                v167 += 7;
                v11 = v168++ >= 9;
                if (v11)
                {
                  goto LABEL_341;
                }
              }

LABEL_340:
              [a2 hasError];
LABEL_341:
              PBRepeatedUInt32Add();
            }

            break;
          case 21:
            if (v13 != 2)
            {
              v161 = 0;
              v162 = 0;
              v163 = 0;
              while (1)
              {
                LOBYTE(v175) = 0;
                v164 = [a2 position] + 1;
                if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
                {
                  v166 = [a2 data];
                  [v166 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v163 |= (v175 & 0x7F) << v161;
                if ((v175 & 0x80) == 0)
                {
                  goto LABEL_340;
                }

                v161 += 7;
                v11 = v162++ >= 9;
                if (v11)
                {
                  goto LABEL_341;
                }
              }
            }

            v175 = 0;
            v176 = 0;
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
                goto LABEL_245;
              }

              v39 = 0;
              v40 = 0;
              v41 = 0;
              while (1)
              {
                v177 = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v177 & 0x7F) << v39;
                if ((v177 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  goto LABEL_67;
                }
              }

              [a2 hasError];
LABEL_67:
              PBRepeatedUInt32Add();
            }

          case 24:
            v117 = 0;
            v118 = 0;
            v119 = 0;
            *(a1 + 140) |= 0x40000u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v120 = [a2 position] + 1;
              if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
              {
                v122 = [a2 data];
                [v122 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v119 |= (v175 & 0x7F) << v117;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v117 += 7;
              v11 = v118++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_301;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v119;
            }

LABEL_301:
            v160 = 132;
            goto LABEL_346;
          case 25:
            v154 = 0;
            v155 = 0;
            v156 = 0;
            *(a1 + 140) |= 0x20u;
            while (1)
            {
              LOBYTE(v175) = 0;
              v157 = [a2 position] + 1;
              if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
              {
                v159 = [a2 data];
                [v159 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v156 |= (v175 & 0x7F) << v154;
              if ((v175 & 0x80) == 0)
              {
                break;
              }

              v154 += 7;
              v11 = v155++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_321;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v156;
            }

LABEL_321:
            v160 = 80;
            goto LABEL_346;
          default:
            if (v14 == 64)
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 140) |= 0x80000u;
              while (1)
              {
                LOBYTE(v175) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v175 & 0x7F) << v31;
                if ((v175 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  v37 = 0;
                  goto LABEL_345;
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

LABEL_345:
              v160 = 136;
LABEL_346:
              *(a1 + v160) = v37;
            }

            else
            {
LABEL_51:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                return 0;
              }
            }

            break;
        }
      }

LABEL_347:
      v173 = [a2 position];
    }

    while (v173 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100094EB0(uint64_t a1, void *a2)
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
        LOBYTE(v68[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v68[0] & 0x7F) << v5;
        if ((v68[0] & 0x80) == 0)
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
          LOBYTE(v68[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v68[0] & 0x7F) << v16;
          if ((v68[0] & 0x80) == 0)
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
        goto LABEL_123;
      }

      if (v13 <= 4)
      {
        break;
      }

      if (v13 > 6)
      {
        if (v13 == 7)
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v68[0] & 0x7F) << v59;
            if ((v68[0] & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
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
            v29 = v61;
          }

LABEL_109:
          v65 = 48;
          goto LABEL_122;
        }

        if (v13 == 8)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v68[0] & 0x7F) << v38;
            if ((v68[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_121;
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

LABEL_121:
          v65 = 32;
          goto LABEL_122;
        }

LABEL_98:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_123;
      }

      if (v13 != 5)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 60) |= 2u;
        while (1)
        {
          LOBYTE(v68[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v68[0] & 0x7F) << v30;
          if ((v68[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
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
          v29 = v32;
        }

LABEL_117:
        v65 = 16;
        goto LABEL_122;
      }

      v51 = objc_alloc_init(StateHist);
      [a1 addStateHist:v51];
      v68[0] = 0;
      v68[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10016FD7C(v51, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_123:
      v66 = [a2 position];
      if (v66 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 60) |= 0x20u;
        while (1)
        {
          LOBYTE(v68[0]) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v68[0] & 0x7F) << v52;
          if ((v68[0] & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            LOBYTE(v58) = 0;
            goto LABEL_105;
          }
        }

        v58 = (v54 != 0) & ~[a2 hasError];
LABEL_105:
        *(a1 + 56) = v58;
      }

      else
      {
        v36 = PBReaderReadData();
        v37 = *(a1 + 24);
        *(a1 + 24) = v36;
      }

      goto LABEL_123;
    }

    if (v13 == 1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        LOBYTE(v68[0]) = 0;
        v47 = [a2 position] + 1;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v46 |= (v68[0] & 0x7F) << v44;
        if ((v68[0] & 0x80) == 0)
        {
          break;
        }

        v44 += 7;
        v11 = v45++ >= 9;
        if (v11)
        {
          v50 = 0;
          goto LABEL_103;
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

LABEL_103:
      *(a1 + 8) = v50;
      goto LABEL_123;
    }

    if (v13 == 2)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 60) |= 0x10u;
      while (1)
      {
        LOBYTE(v68[0]) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v68[0] & 0x7F) << v23;
        if ((v68[0] & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
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
        v29 = v25;
      }

LABEL_113:
      v65 = 52;
LABEL_122:
      *(a1 + v65) = v29;
      goto LABEL_123;
    }

    goto LABEL_98;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100096894(uint64_t a1, void *a2)
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
            *(a1 + 28) |= 1u;
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
            v55 = 8;
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
            *(a1 + 28) |= 4u;
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
            v55 = 16;
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
              *(a1 + 28) |= 0x10u;
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
              v55 = 24;
              break;
            case 6:
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

uint64_t sub_100098CBC(uint64_t a1, void *a2)
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
      LOBYTE(v160[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v160[0] & 0x7F) << v5;
      if ((v160[0] & 0x80) == 0)
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
        LOBYTE(v160[0]) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v160[0] & 0x7F) << v16;
        if ((v160[0] & 0x80) == 0)
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
      goto LABEL_303;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 116) |= 1u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v160[0] & 0x7F) << v23;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
LABEL_264:
            *(a1 + 8) = v29;
            goto LABEL_303;
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

        goto LABEL_264;
      case 4:
        v75 = PBReaderReadData();
        v76 = 64;
        goto LABEL_127;
      case 5:
        v75 = PBReaderReadData();
        v76 = 24;
LABEL_127:
        v89 = *(a1 + v76);
        *(a1 + v76) = v75;

        goto LABEL_303;
      case 6:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 116) |= 8u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            v119 = [a2 data];
            [v119 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v160[0] & 0x7F) << v114;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v11 = v115++ >= 9;
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
          v36 = v116;
        }

LABEL_280:
        v156 = 48;
        goto LABEL_302;
      case 8:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 116) |= 4u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v160[0] & 0x7F) << v120;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v11 = v121++ >= 9;
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
          v36 = v122;
        }

LABEL_284:
        v156 = 32;
        goto LABEL_302;
      case 9:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 116) |= 0x800u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v160[0] & 0x7F) << v77;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
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
          v36 = v79;
        }

LABEL_256:
        v156 = 92;
        goto LABEL_302;
      case 10:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 116) |= 2u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v160[0] & 0x7F) << v90;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v11 = v91++ >= 9;
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
          v36 = v92;
        }

LABEL_268:
        v156 = 16;
        goto LABEL_302;
      case 11:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 116) |= 0x4000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v160[0] & 0x7F) << v96;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v11 = v97++ >= 9;
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
          v36 = v98;
        }

LABEL_272:
        v156 = 104;
        goto LABEL_302;
      case 12:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 116) |= 0x1000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (v160[0] & 0x7F) << v132;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v11 = v133++ >= 9;
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
          v36 = v134;
        }

LABEL_292:
        v156 = 96;
        goto LABEL_302;
      case 13:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 116) |= 0x10u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v160[0] & 0x7F) << v126;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v11 = v127++ >= 9;
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
          v36 = v128;
        }

LABEL_288:
        v156 = 52;
        goto LABEL_302;
      case 14:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 116) |= 0x20u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v160[0] & 0x7F) << v51;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_242;
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

LABEL_242:
        v156 = 56;
        goto LABEL_302;
      case 15:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 116) |= 0x400u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v160[0] & 0x7F) << v83;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v11 = v84++ >= 9;
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
          v36 = v85;
        }

LABEL_260:
        v156 = 88;
        goto LABEL_302;
      case 16:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 116) |= 0x80000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v160[0] & 0x7F) << v63;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            LOBYTE(v49) = 0;
            goto LABEL_248;
          }
        }

        v49 = (v65 != 0) & ~[a2 hasError];
LABEL_248:
        v157 = 112;
        goto LABEL_297;
      case 17:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 116) |= 0x10000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v160[0] & 0x7F) << v43;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            LOBYTE(v49) = 0;
            goto LABEL_238;
          }
        }

        v49 = (v45 != 0) & ~[a2 hasError];
LABEL_238:
        v157 = 109;
        goto LABEL_297;
      case 18:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 116) |= 0x8000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v160[0] & 0x7F) << v102;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v11 = v103++ >= 9;
          if (v11)
          {
            LOBYTE(v49) = 0;
            goto LABEL_274;
          }
        }

        v49 = (v104 != 0) & ~[a2 hasError];
LABEL_274:
        v157 = 108;
        goto LABEL_297;
      case 19:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 116) |= 0x40000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v160[0] & 0x7F) << v108;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v11 = v109++ >= 9;
          if (v11)
          {
            LOBYTE(v49) = 0;
            goto LABEL_276;
          }
        }

        v49 = (v110 != 0) & ~[a2 hasError];
LABEL_276:
        v157 = 111;
        goto LABEL_297;
      case 20:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 116) |= 0x100000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            v149 = [a2 data];
            [v149 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v160[0] & 0x7F) << v144;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v11 = v145++ >= 9;
          if (v11)
          {
            LOBYTE(v49) = 0;
            goto LABEL_296;
          }
        }

        v49 = (v146 != 0) & ~[a2 hasError];
LABEL_296:
        v157 = 113;
        goto LABEL_297;
      case 21:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 116) |= 0x20000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            v143 = [a2 data];
            [v143 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v160[0] & 0x7F) << v138;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v11 = v139++ >= 9;
          if (v11)
          {
            LOBYTE(v49) = 0;
            goto LABEL_294;
          }
        }

        v49 = (v140 != 0) & ~[a2 hasError];
LABEL_294:
        v157 = 110;
LABEL_297:
        *(a1 + v157) = v49;
        goto LABEL_303;
      case 25:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 116) |= 0x2000u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v160[0] & 0x7F) << v30;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
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
          v36 = v32;
        }

LABEL_232:
        v156 = 100;
        goto LABEL_302;
      case 26:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 116) |= 0x80u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v160[0] & 0x7F) << v69;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
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
          v36 = v71;
        }

LABEL_252:
        v156 = 76;
        goto LABEL_302;
      case 27:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 116) |= 0x100u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v160[0] & 0x7F) << v150;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v11 = v151++ >= 9;
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
          v36 = v152;
        }

LABEL_301:
        v156 = 80;
        goto LABEL_302;
      case 28:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 116) |= 0x200u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v160[0] & 0x7F) << v37;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
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
          v36 = v39;
        }

LABEL_236:
        v156 = 84;
        goto LABEL_302;
      case 29:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 116) |= 0x40u;
        while (1)
        {
          LOBYTE(v160[0]) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:v160 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v160[0] & 0x7F) << v57;
          if ((v160[0] & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_246;
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

LABEL_246:
        v156 = 72;
LABEL_302:
        *(a1 + v156) = v36;
        goto LABEL_303;
      case 32:
        v50 = objc_alloc_init(BorderDbStat);
        objc_storeStrong((a1 + 40), v50);
        v160[0] = 0;
        v160[1] = 0;
        if (PBReaderPlaceMark() && sub_10005A370(v50, a2))
        {
          PBReaderRecallMark();

LABEL_303:
          v158 = [a2 position];
          if (v158 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_303;
        }

        return 0;
    }
  }
}

uint64_t sub_10009C448(uint64_t a1, void *a2)
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
          v79 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v79 & 0x7F) << v16;
          if ((v79 & 0x80) == 0)
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

      if (v13 <= 6)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 48) |= 0x10u;
            while (1)
            {
              v77 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v77 & 0x7F) << v57;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
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
              v29 = v59;
            }

LABEL_118:
            v70 = 28;
          }

          else
          {
            if (v13 != 6)
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
                goto LABEL_134;
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

LABEL_134:
            v70 = 24;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v80 = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v80 & 0x7F) << v44;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                v50 = 0;
                goto LABEL_110;
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

LABEL_110:
            *(a1 + 8) = v50;
            goto LABEL_136;
          }

          if (v13 != 2)
          {
            goto LABEL_105;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v78 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v78 & 0x7F) << v23;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
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
            v29 = v25;
          }

LABEL_126:
          v70 = 16;
        }

        goto LABEL_135;
      }

      if (v13 <= 8)
      {
        break;
      }

      if (v13 == 9)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 48) |= 0x20u;
        while (1)
        {
          v73 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v73 & 0x7F) << v63;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
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
          v29 = v65;
        }

LABEL_122:
        v70 = 40;
        goto LABEL_135;
      }

      if (v13 != 10)
      {
LABEL_105:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_136;
      }

      v42 = PBReaderReadData();
      v43 = *(a1 + 32);
      *(a1 + 32) = v42;

LABEL_136:
      v71 = [a2 position];
      if (v71 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 7)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      *(a1 + 48) |= 0x40u;
      while (1)
      {
        v75 = 0;
        v54 = [a2 position] + 1;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
        {
          v56 = [a2 data];
          [v56 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v53 |= (v75 & 0x7F) << v51;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v51 += 7;
        v11 = v52++ >= 9;
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
        v29 = v53;
      }

LABEL_114:
      v70 = 44;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 48) |= 4u;
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
          goto LABEL_130;
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

LABEL_130:
      v70 = 20;
    }

LABEL_135:
    *(a1 + v70) = v29;
    goto LABEL_136;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10009EF24(uint64_t a1, void *a2)
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
        v238 = 0;
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
          v238 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v238 & 0x7F) << v16;
          if ((v238 & 0x80) == 0)
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
            *(a1 + 152) |= 1uLL;
            while (1)
            {
              v238 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v238 & 0x7F) << v23;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
LABEL_409:
                *(a1 + 8) = v29;
                goto LABEL_491;
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

            goto LABEL_409;
          case 2:
            v121 = 0;
            v122 = 0;
            v123 = 0;
            *(a1 + 152) |= 8uLL;
            while (1)
            {
              v238 = 0;
              v124 = [a2 position] + 1;
              if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
              {
                v126 = [a2 data];
                [v126 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v123 |= (v238 & 0x7F) << v121;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v121 += 7;
              v11 = v122++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_413;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v123;
            }

LABEL_413:
            v236 = 24;
            goto LABEL_490;
          case 3:
            v97 = 0;
            v98 = 0;
            v99 = 0;
            *(a1 + 152) |= 0x200000uLL;
            while (1)
            {
              v238 = 0;
              v100 = [a2 position] + 1;
              if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
              {
                v102 = [a2 data];
                [v102 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v99 |= (v238 & 0x7F) << v97;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              v11 = v98++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_393;
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

LABEL_393:
            v236 = 96;
            goto LABEL_490;
          case 4:
            v109 = 0;
            v110 = 0;
            v111 = 0;
            *(a1 + 152) |= 0x400000uLL;
            while (1)
            {
              v238 = 0;
              v112 = [a2 position] + 1;
              if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
              {
                v114 = [a2 data];
                [v114 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v111 |= (v238 & 0x7F) << v109;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              v11 = v110++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_401;
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

LABEL_401:
            v236 = 100;
            goto LABEL_490;
          case 5:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            *(a1 + 152) |= 0x80000uLL;
            while (1)
            {
              v238 = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v69 |= (v238 & 0x7F) << v67;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              v11 = v68++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_373;
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

LABEL_373:
            v236 = 88;
            goto LABEL_490;
          case 6:
            v145 = 0;
            v146 = 0;
            v147 = 0;
            *(a1 + 152) |= 0x800uLL;
            while (1)
            {
              v238 = 0;
              v148 = [a2 position] + 1;
              if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
              {
                v150 = [a2 data];
                [v150 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v147 |= (v238 & 0x7F) << v145;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v145 += 7;
              v11 = v146++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_433;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v147;
            }

LABEL_433:
            v236 = 56;
            goto LABEL_490;
          case 7:
            v163 = 0;
            v164 = 0;
            v165 = 0;
            *(a1 + 152) |= 0x40uLL;
            while (1)
            {
              v238 = 0;
              v166 = [a2 position] + 1;
              if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
              {
                v168 = [a2 data];
                [v168 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v165 |= (v238 & 0x7F) << v163;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v163 += 7;
              v11 = v164++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_445;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v165;
            }

LABEL_445:
            v236 = 36;
            goto LABEL_490;
          case 8:
            v115 = 0;
            v116 = 0;
            v117 = 0;
            *(a1 + 152) |= 0x4000uLL;
            while (1)
            {
              v238 = 0;
              v118 = [a2 position] + 1;
              if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
              {
                v120 = [a2 data];
                [v120 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v117 |= (v238 & 0x7F) << v115;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              v11 = v116++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_405;
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

LABEL_405:
            v236 = 68;
            goto LABEL_490;
          case 9:
            v181 = 0;
            v182 = 0;
            v183 = 0;
            *(a1 + 152) |= 0x4000000uLL;
            while (1)
            {
              v238 = 0;
              v184 = [a2 position] + 1;
              if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
              {
                v186 = [a2 data];
                [v186 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v183 |= (v238 & 0x7F) << v181;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v181 += 7;
              v11 = v182++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_457;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v183;
            }

LABEL_457:
            v236 = 116;
            goto LABEL_490;
          case 10:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 152) |= 0x1000000uLL;
            while (1)
            {
              v238 = 0;
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
                v36 = 0;
                goto LABEL_381;
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

LABEL_381:
            v236 = 108;
            goto LABEL_490;
          case 11:
            v175 = 0;
            v176 = 0;
            v177 = 0;
            *(a1 + 152) |= 0x20000uLL;
            while (1)
            {
              v238 = 0;
              v178 = [a2 position] + 1;
              if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
              {
                v180 = [a2 data];
                [v180 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v177 |= (v238 & 0x7F) << v175;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v175 += 7;
              v11 = v176++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_453;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v177;
            }

LABEL_453:
            v236 = 80;
            goto LABEL_490;
          case 12:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 152) |= 4uLL;
            while (1)
            {
              v238 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v238 & 0x7F) << v61;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_369;
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

LABEL_369:
            v236 = 20;
            goto LABEL_490;
          case 13:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 152) |= 0x400000000uLL;
            while (1)
            {
              v238 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v238 & 0x7F) << v73;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_377;
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

LABEL_377:
            v236 = 148;
            goto LABEL_490;
          case 14:
            v157 = 0;
            v158 = 0;
            v159 = 0;
            *(a1 + 152) |= 0x800000uLL;
            while (1)
            {
              v238 = 0;
              v160 = [a2 position] + 1;
              if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
              {
                v162 = [a2 data];
                [v162 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v159 |= (v238 & 0x7F) << v157;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v157 += 7;
              v11 = v158++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_441;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v159;
            }

LABEL_441:
            v236 = 104;
            goto LABEL_490;
          case 15:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 152) |= 0x10000000uLL;
            while (1)
            {
              v238 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v238 & 0x7F) << v49;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_361;
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

LABEL_361:
            v236 = 124;
            goto LABEL_490;
          case 16:
            v103 = 0;
            v104 = 0;
            v105 = 0;
            *(a1 + 152) |= 0x400uLL;
            while (1)
            {
              v238 = 0;
              v106 = [a2 position] + 1;
              if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
              {
                v108 = [a2 data];
                [v108 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v105 |= (v238 & 0x7F) << v103;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              v11 = v104++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_397;
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

LABEL_397:
            v236 = 52;
            goto LABEL_490;
          case 17:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 152) |= 0x100uLL;
            while (1)
            {
              v238 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v238 & 0x7F) << v43;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_357;
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

LABEL_357:
            v236 = 44;
            goto LABEL_490;
          case 18:
            v133 = 0;
            v134 = 0;
            v135 = 0;
            *(a1 + 152) |= 0x80uLL;
            while (1)
            {
              v238 = 0;
              v136 = [a2 position] + 1;
              if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
              {
                v138 = [a2 data];
                [v138 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v135 |= (v238 & 0x7F) << v133;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v133 += 7;
              v11 = v134++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_425;
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

LABEL_425:
            v236 = 40;
            goto LABEL_490;
          case 19:
            v169 = 0;
            v170 = 0;
            v171 = 0;
            *(a1 + 152) |= 0x1000uLL;
            while (1)
            {
              v238 = 0;
              v172 = [a2 position] + 1;
              if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
              {
                v174 = [a2 data];
                [v174 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v171 |= (v238 & 0x7F) << v169;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v169 += 7;
              v11 = v170++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_449;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v171;
            }

LABEL_449:
            v236 = 60;
            goto LABEL_490;
          case 20:
            v205 = 0;
            v206 = 0;
            v207 = 0;
            *(a1 + 152) |= 0x200000000uLL;
            while (1)
            {
              v238 = 0;
              v208 = [a2 position] + 1;
              if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
              {
                v210 = [a2 data];
                [v210 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v207 |= (v238 & 0x7F) << v205;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v205 += 7;
              v11 = v206++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_473;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v207;
            }

LABEL_473:
            v236 = 144;
            goto LABEL_490;
          case 21:
            v139 = 0;
            v140 = 0;
            v141 = 0;
            *(a1 + 152) |= 0x2000000uLL;
            while (1)
            {
              v238 = 0;
              v142 = [a2 position] + 1;
              if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
              {
                v144 = [a2 data];
                [v144 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v141 |= (v238 & 0x7F) << v139;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v139 += 7;
              v11 = v140++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_429;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v141;
            }

LABEL_429:
            v236 = 112;
            goto LABEL_490;
          case 22:
            v151 = 0;
            v152 = 0;
            v153 = 0;
            *(a1 + 152) |= &_mh_execute_header;
            while (1)
            {
              v238 = 0;
              v154 = [a2 position] + 1;
              if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
              {
                v156 = [a2 data];
                [v156 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v153 |= (v238 & 0x7F) << v151;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v151 += 7;
              v11 = v152++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_437;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v153;
            }

LABEL_437:
            v236 = 140;
            goto LABEL_490;
          case 23:
            v199 = 0;
            v200 = 0;
            v201 = 0;
            *(a1 + 152) |= 2uLL;
            while (1)
            {
              v238 = 0;
              v202 = [a2 position] + 1;
              if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
              {
                v204 = [a2 data];
                [v204 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v201 |= (v238 & 0x7F) << v199;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v199 += 7;
              v11 = v200++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_469;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v201;
            }

LABEL_469:
            v236 = 16;
            goto LABEL_490;
          case 24:
            v211 = 0;
            v212 = 0;
            v213 = 0;
            *(a1 + 152) |= 0x20uLL;
            while (1)
            {
              v238 = 0;
              v214 = [a2 position] + 1;
              if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
              {
                v216 = [a2 data];
                [v216 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v213 |= (v238 & 0x7F) << v211;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v211 += 7;
              v11 = v212++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_477;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v213;
            }

LABEL_477:
            v236 = 32;
            goto LABEL_490;
          case 25:
            v91 = 0;
            v92 = 0;
            v93 = 0;
            *(a1 + 152) |= 0x2000uLL;
            while (1)
            {
              v238 = 0;
              v94 = [a2 position] + 1;
              if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
              {
                v96 = [a2 data];
                [v96 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v93 |= (v238 & 0x7F) << v91;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              v11 = v92++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_389;
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

LABEL_389:
            v236 = 64;
            goto LABEL_490;
          case 26:
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 152) |= 0x100000uLL;
            while (1)
            {
              v238 = 0;
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
                v36 = 0;
                goto LABEL_385;
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

LABEL_385:
            v236 = 92;
            goto LABEL_490;
          case 27:
            v229 = 0;
            v230 = 0;
            v231 = 0;
            *(a1 + 152) |= 0x10000uLL;
            while (1)
            {
              v238 = 0;
              v232 = [a2 position] + 1;
              if (v232 >= [a2 position] && (v233 = objc_msgSend(a2, "position") + 1, v233 <= objc_msgSend(a2, "length")))
              {
                v234 = [a2 data];
                [v234 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v231 |= (v238 & 0x7F) << v229;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v229 += 7;
              v11 = v230++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_489;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v231;
            }

LABEL_489:
            v236 = 76;
            goto LABEL_490;
          case 28:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 152) |= 0x10uLL;
            while (1)
            {
              v238 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v238 & 0x7F) << v37;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_353;
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

LABEL_353:
            v236 = 28;
            goto LABEL_490;
          case 29:
            v217 = 0;
            v218 = 0;
            v219 = 0;
            *(a1 + 152) |= 0x40000uLL;
            while (1)
            {
              v238 = 0;
              v220 = [a2 position] + 1;
              if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
              {
                v222 = [a2 data];
                [v222 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v219 |= (v238 & 0x7F) << v217;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v217 += 7;
              v11 = v218++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_481;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v219;
            }

LABEL_481:
            v236 = 84;
            goto LABEL_490;
          case 30:
            v223 = 0;
            v224 = 0;
            v225 = 0;
            *(a1 + 152) |= 0x40000000uLL;
            while (1)
            {
              v238 = 0;
              v226 = [a2 position] + 1;
              if (v226 >= [a2 position] && (v227 = objc_msgSend(a2, "position") + 1, v227 <= objc_msgSend(a2, "length")))
              {
                v228 = [a2 data];
                [v228 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v225 |= (v238 & 0x7F) << v223;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v223 += 7;
              v11 = v224++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_485;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v225;
            }

LABEL_485:
            v236 = 132;
            goto LABEL_490;
          case 31:
            v187 = 0;
            v188 = 0;
            v189 = 0;
            *(a1 + 152) |= 0x200uLL;
            while (1)
            {
              v238 = 0;
              v190 = [a2 position] + 1;
              if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
              {
                v192 = [a2 data];
                [v192 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v189 |= (v238 & 0x7F) << v187;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v187 += 7;
              v11 = v188++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_461;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v189;
            }

LABEL_461:
            v236 = 48;
            goto LABEL_490;
          case 32:
            v127 = 0;
            v128 = 0;
            v129 = 0;
            *(a1 + 152) |= 0x8000000uLL;
            while (1)
            {
              v238 = 0;
              v130 = [a2 position] + 1;
              if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
              {
                v132 = [a2 data];
                [v132 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v129 |= (v238 & 0x7F) << v127;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v127 += 7;
              v11 = v128++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_421;
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

LABEL_421:
            v236 = 120;
            goto LABEL_490;
          case 33:
            v193 = 0;
            v194 = 0;
            v195 = 0;
            *(a1 + 152) |= 0x8000uLL;
            while (1)
            {
              v238 = 0;
              v196 = [a2 position] + 1;
              if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
              {
                v198 = [a2 data];
                [v198 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v195 |= (v238 & 0x7F) << v193;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v193 += 7;
              v11 = v194++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_465;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v195;
            }

LABEL_465:
            v236 = 72;
            goto LABEL_490;
          case 34:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 152) |= 0x20000000uLL;
            while (1)
            {
              v238 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v238 & 0x7F) << v55;
              if ((v238 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_365;
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

LABEL_365:
            v236 = 128;
            goto LABEL_490;
          default:
            if (v13 == 127)
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 152) |= 0x80000000uLL;
              while (1)
              {
                v238 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v238 & 0x7F) << v30;
                if ((v238 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_417;
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

LABEL_417:
              v236 = 136;
LABEL_490:
              *(a1 + v236) = v36;
            }

            else
            {
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }
            }

            break;
        }
      }

LABEL_491:
      v237 = [a2 position];
    }

    while (v237 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000A3C38(uint64_t a1, void *a2)
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
          v47 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v47 & 0x7F) << v16;
          if ((v47 & 0x80) == 0)
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
          case 4:
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
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 20) |= 1u;
            while (1)
            {
              v48 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v48 & 0x7F) << v30;
              if ((v48 & 0x80) == 0)
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
          case 1:
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

uint64_t sub_1000A479C(uint64_t a1, void *a2)
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
          v28 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v28 & 0x7F) << v16;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_32;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_32:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
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

      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}