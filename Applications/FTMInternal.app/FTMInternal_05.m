uint64_t sub_1000CD814(uint64_t a1, void *a2)
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
            *(a1 + 28) |= 2u;
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
            *(a1 + 24) = v38;
            break;
          case 2:
            v31 = objc_alloc_init(ElementaryFile);
            [a1 addEf:v31];
            v40[0] = 0;
            v40[1] = 0;
            if (!PBReaderPlaceMark() || !sub_1000C8C70(v31, a2))
            {

              return 0;
            }

            PBReaderRecallMark();

            break;
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 28) |= 1u;
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

uint64_t sub_1000CE7FC(uint64_t a1, void *a2)
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
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 24) |= 1u;
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
            v49 = 8;
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
          *(a1 + 24) |= 2u;
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
          v49 = 12;
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

uint64_t sub_1000CFD38(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v70[0]) = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:v70 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v70[0] & 0x7F) << v6;
        if ((v70[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = v13 >> 3;
      v15 = [NSNumber numberWithUnsignedInt:v14];
      v16 = [KBBMetricUtility isValidMetricIdTag:v15 forClass:objc_opt_class()];

      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v70[0]) = 0;
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:v70 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (v70[0] & 0x7F) << v17;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_44;
          }
        }

        if ([v4 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_44:
        NSLog(@"Unknown tag: %x:%u", v14, v23);
        goto LABEL_125;
      }

      if (v14 <= 5)
      {
        if (v14 > 3)
        {
          if (v14 != 4)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v3[64] |= 0x10u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v41 = [v4 position] + 1;
              if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
              {
                v43 = [v4 data];
                [v43 getBytes:v70 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v40 |= (v70[0] & 0x7F) << v38;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v12 = v39++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_111;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v40;
            }

LABEL_111:
            v66 = 56;
            goto LABEL_124;
          }

          v57 = objc_alloc_init(RsrpRsrqPerAntennaPanel);
          [v3 addRsrpRsrqPerAntennaPanel:v57];
          goto LABEL_98;
        }

        if (v14 == 1)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v3[64] |= 1u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v53 = [v4 position] + 1;
            if (v53 >= [v4 position] && (v54 = objc_msgSend(v4, "position") + 1, v54 <= objc_msgSend(v4, "length")))
            {
              v55 = [v4 data];
              [v55 getBytes:v70 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v52 |= (v70[0] & 0x7F) << v50;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v12 = v51++ >= 9;
            if (v12)
            {
              v56 = 0;
              goto LABEL_119;
            }
          }

          if ([v4 hasError])
          {
            v56 = 0;
          }

          else
          {
            v56 = v52;
          }

LABEL_119:
          *(v3 + 1) = v56;
          goto LABEL_125;
        }

        if (v14 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v3[64] |= 2u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v34 = [v4 position] + 1;
            if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
            {
              v36 = [v4 data];
              [v36 getBytes:v70 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v33 |= (v70[0] & 0x7F) << v31;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v12 = v32++ >= 9;
            if (v12)
            {
              v37 = 0;
              goto LABEL_107;
            }
          }

          if ([v4 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_107:
          v66 = 16;
          goto LABEL_124;
        }
      }

      else
      {
        if (v14 <= 7)
        {
          if (v14 == 6)
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v3[64] |= 4u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v63 = [v4 position] + 1;
              if (v63 >= [v4 position] && (v64 = objc_msgSend(v4, "position") + 1, v64 <= objc_msgSend(v4, "length")))
              {
                v65 = [v4 data];
                [v65 getBytes:v70 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v62 |= (v70[0] & 0x7F) << v60;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v12 = v61++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_123;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v62;
            }

LABEL_123:
            v66 = 20;
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v3[64] |= 8u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v47 = [v4 position] + 1;
              if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
              {
                v49 = [v4 data];
                [v49 getBytes:v70 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v46 |= (v70[0] & 0x7F) << v44;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v12 = v45++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_115;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v46;
            }

LABEL_115:
            v66 = 32;
          }

LABEL_124:
          *&v3[v66] = v37;
          goto LABEL_125;
        }

        switch(v14)
        {
          case 8:
            v57 = PBReaderReadData();
            v58 = PBReaderReadData();
            v59 = *(v3 + 3);
            *(v3 + 3) = v58;

LABEL_101:
            goto LABEL_125;
          case 9:
            v57 = objc_alloc_init(RsrpRsrqPerAntennaPanel);
            [v3 addRsrpRsrqPerAntennaPanelSa:v57];
LABEL_98:
            v70[0] = 0;
            v70[1] = 0;
            if (!PBReaderPlaceMark() || !sub_10004FABC(v57, v4))
            {

LABEL_132:
              v68 = 0;
              goto LABEL_130;
            }

            PBReaderRecallMark();
            goto LABEL_101;
          case 0xF:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v3[64] |= 0x20u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:v70 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v26 |= (v70[0] & 0x7F) << v24;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v12 = v25++ >= 9;
              if (v12)
              {
                LOBYTE(v30) = 0;
                goto LABEL_128;
              }
            }

            v30 = (v26 != 0) & ~[v4 hasError];
LABEL_128:
            v3[60] = v30;
            goto LABEL_125;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_132;
      }

LABEL_125:
      v67 = [v4 position];
    }

    while (v67 < [v4 length]);
  }

  v68 = [v4 hasError] ^ 1;
LABEL_130:

  return v68;
}

uint64_t sub_1000D184C(uint64_t a1, void *a2)
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
        v41 = 0;
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
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v44 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v44 & 0x7F) << v16;
          if ((v44 & 0x80) == 0)
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

      else if (v13 == 4)
      {
        v36 = PBReaderReadData();
        v37 = *(a1 + 8);
        *(a1 + 8) = v36;
      }

      else
      {
        if (v13 == 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 24) |= 1u;
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
              v29 = 0;
              goto LABEL_58;
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

LABEL_58:
          v39 = 16;
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

            goto LABEL_64;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v43 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v43 & 0x7F) << v23;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_62;
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

LABEL_62:
          v39 = 20;
        }

        *(a1 + v39) = v29;
      }

LABEL_64:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000D2A48(uint64_t a1, void *a2)
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
        v102 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v102 & 0x7F) << v5;
        if ((v102 & 0x80) == 0)
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
        goto LABEL_198;
      }

      if (v13 > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v68 = 0;
              v69 = 0;
              v70 = 0;
              *(a1 + 52) |= 0x40u;
              while (1)
              {
                v105 = 0;
                v71 = [a2 position] + 1;
                if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
                {
                  v73 = [a2 data];
                  [v73 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v70 |= (v105 & 0x7F) << v68;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v68 += 7;
                v11 = v69++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_181;
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

LABEL_181:
              v99 = 36;
              break;
            case 0xB:
              v92 = 0;
              v93 = 0;
              v94 = 0;
              *(a1 + 52) |= 4u;
              while (1)
              {
                v104 = 0;
                v95 = [a2 position] + 1;
                if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
                {
                  v97 = [a2 data];
                  [v97 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v94 |= (v104 & 0x7F) << v92;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v92 += 7;
                v11 = v93++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_196;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v94;
              }

LABEL_196:
              v99 = 20;
              break;
            case 0xF:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 52) |= 0x100u;
              while (1)
              {
                v103 = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v103 & 0x7F) << v43;
                if ((v103 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
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
                v29 = v45;
              }

LABEL_167:
              v99 = 44;
              break;
            default:
LABEL_152:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_198;
          }

          goto LABEL_197;
        }

        if (v13 == 7)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            v107 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v107 & 0x7F) << v56;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v11 = v57++ >= 9;
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
            v29 = v58;
          }

LABEL_175:
          v99 = 24;
          goto LABEL_197;
        }

        if (v13 == 8)
        {
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            v106 = 0;
            v83 = [a2 position] + 1;
            if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
            {
              v85 = [a2 data];
              [v85 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v82 |= (v106 & 0x7F) << v80;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v11 = v81++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_188;
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

LABEL_188:
          v99 = 16;
          goto LABEL_197;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 52) |= 0x200u;
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
            LOBYTE(v36) = 0;
            goto LABEL_159;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_159:
        v100 = 48;
      }

      else if (v13 > 3)
      {
        if (v13 != 4)
        {
          if (v13 == 5)
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              v109 = 0;
              v89 = [a2 position] + 1;
              if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
              {
                v91 = [a2 data];
                [v91 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v88 |= (v109 & 0x7F) << v86;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              v11 = v87++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_192;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v88;
            }

LABEL_192:
            v99 = 28;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 52) |= 0x20u;
            while (1)
            {
              v108 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v108 & 0x7F) << v37;
              if ((v108 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
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
              v29 = v39;
            }

LABEL_163:
            v99 = 32;
          }

LABEL_197:
          *(a1 + v99) = v29;
          goto LABEL_198;
        }

        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 52) |= 0x800u;
        while (1)
        {
          v114 = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v114 & 0x7F) << v62;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            LOBYTE(v36) = 0;
            goto LABEL_177;
          }
        }

        v36 = (v64 != 0) & ~[a2 hasError];
LABEL_177:
        v100 = 50;
      }

      else
      {
        if (v13 == 1)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 52) |= 1u;
          while (1)
          {
            v112 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v112 & 0x7F) << v49;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v55 = 0;
              goto LABEL_171;
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

LABEL_171:
          *(a1 + 8) = v55;
          goto LABEL_198;
        }

        if (v13 != 2)
        {
          if (v13 != 3)
          {
            goto LABEL_152;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 52) |= 0x80u;
          while (1)
          {
            v110 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v110 & 0x7F) << v23;
            if ((v110 & 0x80) == 0)
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
          v99 = 40;
          goto LABEL_197;
        }

        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 52) |= 0x400u;
        while (1)
        {
          v115 = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v115 & 0x7F) << v74;
          if ((v115 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            LOBYTE(v36) = 0;
            goto LABEL_183;
          }
        }

        v36 = (v76 != 0) & ~[a2 hasError];
LABEL_183:
        v100 = 49;
      }

      *(a1 + v100) = v36;
LABEL_198:
      v101 = [a2 position];
    }

    while (v101 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000D4BD0(uint64_t a1, void *a2)
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
        v71 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v71 & 0x7F) << v5;
        if ((v71 & 0x80) == 0)
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
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 36) |= 1u;
              while (1)
              {
                v76 = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v76 & 0x7F) << v43;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
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
                v29 = v45;
              }

LABEL_107:
              v69 = 8;
              break;
            case 2:
              v62 = 0;
              v63 = 0;
              v64 = 0;
              *(a1 + 36) |= 4u;
              while (1)
              {
                v79 = 0;
                v65 = [a2 position] + 1;
                if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
                {
                  v67 = [a2 data];
                  [v67 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v64 |= (v79 & 0x7F) << v62;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                v11 = v63++ >= 9;
                if (v11)
                {
                  v68 = 0;
                  goto LABEL_131;
                }
              }

              if ([a2 hasError])
              {
                v68 = 0;
              }

              else
              {
                v68 = v64;
              }

LABEL_131:
              v29 = -(v68 & 1) ^ (v68 >> 1);
              v69 = 16;
              break;
            case 3:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 36) |= 0x10u;
              while (1)
              {
                v78 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v78 & 0x7F) << v30;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_127;
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

LABEL_127:
              v29 = -(v36 & 1) ^ (v36 >> 1);
              v69 = 24;
              break;
            default:
              goto LABEL_75;
          }
        }

        else if (v13 > 5)
        {
          if (v13 == 6)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v73 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v73 & 0x7F) << v56;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
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
              v29 = v58;
            }

LABEL_115:
            v69 = 20;
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

            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v72 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v72 & 0x7F) << v37;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
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
              v29 = v39;
            }

LABEL_123:
            v69 = 12;
          }
        }

        else if (v13 == 4)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 36) |= 0x20u;
          while (1)
          {
            v75 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v75 & 0x7F) << v50;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
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
            v29 = v52;
          }

LABEL_111:
          v69 = 28;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 36) |= 0x40u;
          while (1)
          {
            v74 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v74 & 0x7F) << v23;
            if ((v74 & 0x80) == 0)
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
          v69 = 32;
        }

        *(a1 + v69) = v29;
      }

LABEL_133:
      v70 = [a2 position];
    }

    while (v70 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000D6408(uint64_t a1, void *a2)
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
        v76 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v76 & 0x7F) << v5;
        if ((v76 & 0x80) == 0)
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
          if (v13 > 9)
          {
            if (v13 == 10)
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              *(a1 + 44) |= 0x80u;
              while (1)
              {
                v78 = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v78 & 0x7F) << v67;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v11 = v68++ >= 9;
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
                v29 = v69;
              }

LABEL_130:
              v74 = 40;
            }

            else
            {
              if (v13 != 11)
              {
LABEL_113:
                result = PBReaderSkipValueWithTag();
                if (!result)
                {
                  return result;
                }

                goto LABEL_148;
              }

              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 44) |= 0x10u;
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
                  goto LABEL_146;
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

LABEL_146:
              v74 = 28;
            }
          }

          else if (v13 == 5)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              v80 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v80 & 0x7F) << v55;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
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
              v29 = v57;
            }

LABEL_122:
            v74 = 24;
          }

          else
          {
            if (v13 != 7)
            {
              goto LABEL_113;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 44) |= 0x20u;
            while (1)
            {
              v79 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v79 & 0x7F) << v30;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
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
              v29 = v32;
            }

LABEL_138:
            v74 = 32;
          }
        }

        else if (v13 > 2)
        {
          if (v13 == 3)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 44) |= 0x40u;
            while (1)
            {
              v82 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v82 & 0x7F) << v61;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
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
              v29 = v63;
            }

LABEL_126:
            v74 = 36;
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              v81 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v81 & 0x7F) << v36;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_142;
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

LABEL_142:
            v74 = 20;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v85 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v85 & 0x7F) << v48;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v54 = 0;
                goto LABEL_118;
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

LABEL_118:
            *(a1 + 8) = v54;
            goto LABEL_148;
          }

          if (v13 != 2)
          {
            goto LABEL_113;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v83 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v83 & 0x7F) << v23;
            if ((v83 & 0x80) == 0)
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
          v74 = 16;
        }

        *(a1 + v74) = v29;
      }

LABEL_148:
      v75 = [a2 position];
    }

    while (v75 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000D7E9C(uint64_t a1, void *a2)
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
        LOBYTE(v62[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62[0] & 0x7F) << v5;
        if ((v62[0] & 0x80) == 0)
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
          LOBYTE(v62[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v62[0] & 0x7F) << v16;
          if ((v62[0] & 0x80) == 0)
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
        goto LABEL_114;
      }

      if (v13 > 5)
      {
        break;
      }

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
            LOBYTE(v62[0]) = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v62[0] & 0x7F) << v44;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v50 = 0;
              goto LABEL_96;
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

LABEL_96:
          *(a1 + 8) = v50;
          goto LABEL_114;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v62[0] & 0x7F) << v23;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_104;
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

LABEL_104:
          v59 = 60;
LABEL_113:
          *(a1 + v59) = v29;
          goto LABEL_114;
        }

LABEL_91:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_114;
      }

      if (v13 != 4)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 64) |= 2u;
        while (1)
        {
          LOBYTE(v62[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v62[0] & 0x7F) << v36;
          if ((v62[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_112;
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

LABEL_112:
        v59 = 16;
        goto LABEL_113;
      }

      v52 = objc_alloc_init(SrvStatDuration);
      [a1 addSrvStat:v52];
      v62[0] = 0;
      v62[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10008BBCC(v52, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_114:
      v60 = [a2 position];
      if (v60 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 != 6)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 64) |= 8u;
        while (1)
        {
          LOBYTE(v62[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v62[0] & 0x7F) << v30;
          if ((v62[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_108;
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

LABEL_108:
        v59 = 56;
        goto LABEL_113;
      }

      v42 = PBReaderReadData();
      v43 = 40;
      goto LABEL_78;
    }

    if (v13 == 8)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      *(a1 + 64) |= 4u;
      while (1)
      {
        LOBYTE(v62[0]) = 0;
        v56 = [a2 position] + 1;
        if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
        {
          v58 = [a2 data];
          [v58 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v55 |= (v62[0] & 0x7F) << v53;
        if ((v62[0] & 0x80) == 0)
        {
          break;
        }

        v53 += 7;
        v11 = v54++ >= 9;
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
        v29 = v55;
      }

LABEL_100:
      v59 = 32;
      goto LABEL_113;
    }

    if (v13 == 9)
    {
      v42 = PBReaderReadData();
      v43 = 24;
LABEL_78:
      v51 = *(a1 + v43);
      *(a1 + v43) = v42;

      goto LABEL_114;
    }

    goto LABEL_91;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000DB6B8(uint64_t a1, void *a2)
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
          v110 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v110 & 0x7F) << v16;
          if ((v110 & 0x80) == 0)
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
                *(a1 + 60) |= 0x200u;
                while (1)
                {
                  v102 = 0;
                  v70 = [a2 position] + 1;
                  if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                  {
                    v72 = [a2 data];
                    [v72 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v69 |= (v102 & 0x7F) << v67;
                  if ((v102 & 0x80) == 0)
                  {
                    break;
                  }

                  v67 += 7;
                  v11 = v68++ >= 9;
                  if (v11)
                  {
                    v29 = 0;
                    goto LABEL_185;
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

LABEL_185:
                v98 = 48;
                break;
              case 0xD:
                v91 = 0;
                v92 = 0;
                v93 = 0;
                *(a1 + 60) |= 0x80u;
                while (1)
                {
                  v101 = 0;
                  v94 = [a2 position] + 1;
                  if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
                  {
                    v96 = [a2 data];
                    [v96 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v93 |= (v101 & 0x7F) << v91;
                  if ((v101 & 0x80) == 0)
                  {
                    break;
                  }

                  v91 += 7;
                  v11 = v92++ >= 9;
                  if (v11)
                  {
                    v29 = 0;
                    goto LABEL_201;
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

LABEL_201:
                v98 = 40;
                break;
              case 0xE:
                v42 = 0;
                v43 = 0;
                v44 = 0;
                *(a1 + 60) |= 8u;
                while (1)
                {
                  v112 = 0;
                  v45 = [a2 position] + 1;
                  if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                  {
                    v47 = [a2 data];
                    [v47 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v44 |= (v112 & 0x7F) << v42;
                  if ((v112 & 0x80) == 0)
                  {
                    break;
                  }

                  v42 += 7;
                  v11 = v43++ >= 9;
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
                  v29 = v44;
                }

LABEL_169:
                v98 = 24;
                break;
              default:
LABEL_152:
                result = PBReaderSkipValueWithTag();
                if (!result)
                {
                  return result;
                }

                goto LABEL_203;
            }
          }

          else if (v13 == 7)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              v104 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v104 & 0x7F) << v55;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_177;
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

LABEL_177:
            v98 = 16;
          }

          else if (v13 == 8)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 60) |= 0x800u;
            while (1)
            {
              v113 = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                v84 = [a2 data];
                [v84 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v113 & 0x7F) << v79;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v11 = v80++ >= 9;
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
              v29 = v81;
            }

LABEL_193:
            v98 = 56;
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              v103 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v103 & 0x7F) << v30;
              if ((v103 & 0x80) == 0)
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
            v98 = 20;
          }
        }

        else if (v13 > 3)
        {
          if (v13 == 4)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 60) |= 0x20u;
            while (1)
            {
              v107 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v107 & 0x7F) << v61;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_181;
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

LABEL_181:
            v98 = 32;
          }

          else if (v13 == 5)
          {
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 60) |= 0x40u;
            while (1)
            {
              v106 = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v106 & 0x7F) << v85;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_197;
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

LABEL_197:
            v98 = 36;
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 60) |= 0x10u;
            while (1)
            {
              v105 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v105 & 0x7F) << v36;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
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
              v29 = v38;
            }

LABEL_165:
            v98 = 28;
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
                v111 = 0;
                v51 = [a2 position] + 1;
                if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                {
                  v53 = [a2 data];
                  [v53 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v50 |= (v111 & 0x7F) << v48;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v11 = v49++ >= 9;
                if (v11)
                {
                  v54 = 0;
                  goto LABEL_173;
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

LABEL_173:
              *(a1 + 8) = v54;
              goto LABEL_203;
            case 2:
              v73 = 0;
              v74 = 0;
              v75 = 0;
              *(a1 + 60) |= 0x400u;
              while (1)
              {
                v109 = 0;
                v76 = [a2 position] + 1;
                if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
                {
                  v78 = [a2 data];
                  [v78 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v75 |= (v109 & 0x7F) << v73;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v73 += 7;
                v11 = v74++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_189;
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

LABEL_189:
              v98 = 52;
              break;
            case 3:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 60) |= 0x100u;
              while (1)
              {
                v108 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v108 & 0x7F) << v23;
                if ((v108 & 0x80) == 0)
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
              v98 = 44;
              break;
            default:
              goto LABEL_152;
          }
        }

        *(a1 + v98) = v29;
      }

LABEL_203:
      v99 = [a2 position];
    }

    while (v99 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000DDFA8(uint64_t a1, void *a2)
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
        LOBYTE(v144) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v144 & 0x7F) << v5;
        if ((v144 & 0x80) == 0)
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
          LOBYTE(v144) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v144 & 0x7F) << v17;
          if ((v144 & 0x80) == 0)
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
        goto LABEL_268;
      }

      if (v14 > 7)
      {
        if (v14 <= 9)
        {
          if (v14 == 8)
          {
            if (v13 != 2)
            {
              v101 = 0;
              v102 = 0;
              v103 = 0;
              while (1)
              {
                LOBYTE(v144) = 0;
                v104 = [a2 position] + 1;
                if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
                {
                  v106 = [a2 data];
                  [v106 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v103 |= (v144 & 0x7F) << v101;
                if ((v144 & 0x80) == 0)
                {
                  goto LABEL_255;
                }

                v101 += 7;
                v11 = v102++ >= 9;
                if (v11)
                {
                  goto LABEL_256;
                }
              }
            }

            v144 = 0;
            v145 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v59 = [a2 position];
              if (v59 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v60 = 0;
              v61 = 0;
              v62 = 0;
              while (1)
              {
                v146 = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:&v146 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v146 & 0x7F) << v60;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                v11 = v61++ >= 9;
                if (v11)
                {
                  goto LABEL_119;
                }
              }

              [a2 hasError];
LABEL_119:
              PBRepeatedUInt64Add();
            }
          }

          else
          {
            if (v13 != 2)
            {
              v95 = 0;
              v96 = 0;
              v97 = 0;
              while (1)
              {
                LOBYTE(v144) = 0;
                v98 = [a2 position] + 1;
                if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
                {
                  v100 = [a2 data];
                  [v100 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v97 |= (v144 & 0x7F) << v95;
                if ((v144 & 0x80) == 0)
                {
                  goto LABEL_266;
                }

                v95 += 7;
                v11 = v96++ >= 9;
                if (v11)
                {
                  goto LABEL_267;
                }
              }
            }

            v144 = 0;
            v145 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v46 = [a2 position];
              if (v46 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v47 = 0;
              v48 = 0;
              v49 = 0;
              while (1)
              {
                v146 = 0;
                v50 = [a2 position] + 1;
                if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
                {
                  v52 = [a2 data];
                  [v52 getBytes:&v146 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v49 |= (v146 & 0x7F) << v47;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                v11 = v48++ >= 9;
                if (v11)
                {
                  goto LABEL_95;
                }
              }

              [a2 hasError];
LABEL_95:
              PBRepeatedUInt32Add();
            }
          }

          goto LABEL_180;
        }

        switch(v14)
        {
          case 0xA:
            if (v13 != 2)
            {
              v113 = 0;
              v114 = 0;
              v115 = 0;
              while (1)
              {
                LOBYTE(v144) = 0;
                v116 = [a2 position] + 1;
                if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
                {
                  v118 = [a2 data];
                  [v118 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v115 |= (v144 & 0x7F) << v113;
                if ((v144 & 0x80) == 0)
                {
                  break;
                }

                v113 += 7;
                v11 = v114++ >= 9;
                if (v11)
                {
                  goto LABEL_256;
                }
              }

LABEL_255:
              [a2 hasError];
LABEL_256:
              PBRepeatedUInt64Add();
              goto LABEL_268;
            }

            v144 = 0;
            v145 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v73 = [a2 position];
              if (v73 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_180;
              }

              v74 = 0;
              v75 = 0;
              v76 = 0;
              while (1)
              {
                v146 = 0;
                v77 = [a2 position] + 1;
                if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
                {
                  v79 = [a2 data];
                  [v79 getBytes:&v146 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v76 |= (v146 & 0x7F) << v74;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                v11 = v75++ >= 9;
                if (v11)
                {
                  goto LABEL_149;
                }
              }

              [a2 hasError];
LABEL_149:
              PBRepeatedUInt64Add();
            }

          case 0xB:
            if (v13 != 2)
            {
              v137 = 0;
              v138 = 0;
              v139 = 0;
              while (1)
              {
                LOBYTE(v144) = 0;
                v140 = [a2 position] + 1;
                if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
                {
                  v142 = [a2 data];
                  [v142 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v139 |= (v144 & 0x7F) << v137;
                if ((v144 & 0x80) == 0)
                {
                  break;
                }

                v137 += 7;
                v11 = v138++ >= 9;
                if (v11)
                {
                  goto LABEL_267;
                }
              }

LABEL_266:
              [a2 hasError];
LABEL_267:
              PBRepeatedUInt32Add();
              goto LABEL_268;
            }

            v144 = 0;
            v145 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v87 = [a2 position];
              if (v87 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_180;
              }

              v88 = 0;
              v89 = 0;
              v90 = 0;
              while (1)
              {
                v146 = 0;
                v91 = [a2 position] + 1;
                if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
                {
                  v93 = [a2 data];
                  [v93 getBytes:&v146 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v90 |= (v146 & 0x7F) << v88;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v88 += 7;
                v11 = v89++ >= 9;
                if (v11)
                {
                  goto LABEL_179;
                }
              }

              [a2 hasError];
LABEL_179:
              PBRepeatedUInt32Add();
            }

          case 0xC:
            if (v13 != 2)
            {
              v125 = 0;
              v126 = 0;
              v127 = 0;
              while (1)
              {
                LOBYTE(v144) = 0;
                v128 = [a2 position] + 1;
                if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
                {
                  v130 = [a2 data];
                  [v130 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v127 |= (v144 & 0x7F) << v125;
                if ((v144 & 0x80) == 0)
                {
                  goto LABEL_255;
                }

                v125 += 7;
                v11 = v126++ >= 9;
                if (v11)
                {
                  goto LABEL_256;
                }
              }
            }

            v144 = 0;
            v145 = 0;
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
                v146 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v146 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v146 & 0x7F) << v33;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  goto LABEL_68;
                }
              }

              [a2 hasError];
LABEL_68:
              PBRepeatedUInt64Add();
            }

LABEL_180:
            PBReaderRecallMark();
            goto LABEL_268;
        }
      }

      else
      {
        if (v14 > 4)
        {
          if (v14 == 5)
          {
            if (v13 != 2)
            {
              v107 = 0;
              v108 = 0;
              v109 = 0;
              while (1)
              {
                LOBYTE(v144) = 0;
                v110 = [a2 position] + 1;
                if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
                {
                  v112 = [a2 data];
                  [v112 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v109 |= (v144 & 0x7F) << v107;
                if ((v144 & 0x80) == 0)
                {
                  goto LABEL_266;
                }

                v107 += 7;
                v11 = v108++ >= 9;
                if (v11)
                {
                  goto LABEL_267;
                }
              }
            }

            v144 = 0;
            v145 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v66 = [a2 position];
              if (v66 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v67 = 0;
              v68 = 0;
              v69 = 0;
              while (1)
              {
                v146 = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v146 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v146 & 0x7F) << v67;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v11 = v68++ >= 9;
                if (v11)
                {
                  goto LABEL_134;
                }
              }

              [a2 hasError];
LABEL_134:
              PBRepeatedUInt32Add();
            }
          }

          else if (v14 == 6)
          {
            if (v13 != 2)
            {
              v131 = 0;
              v132 = 0;
              v133 = 0;
              while (1)
              {
                LOBYTE(v144) = 0;
                v134 = [a2 position] + 1;
                if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
                {
                  v136 = [a2 data];
                  [v136 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v133 |= (v144 & 0x7F) << v131;
                if ((v144 & 0x80) == 0)
                {
                  goto LABEL_255;
                }

                v131 += 7;
                v11 = v132++ >= 9;
                if (v11)
                {
                  goto LABEL_256;
                }
              }
            }

            v144 = 0;
            v145 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v80 = [a2 position];
              if (v80 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v81 = 0;
              v82 = 0;
              v83 = 0;
              while (1)
              {
                v146 = 0;
                v84 = [a2 position] + 1;
                if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
                {
                  v86 = [a2 data];
                  [v86 getBytes:&v146 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v83 |= (v146 & 0x7F) << v81;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v81 += 7;
                v11 = v82++ >= 9;
                if (v11)
                {
                  goto LABEL_164;
                }
              }

              [a2 hasError];
LABEL_164:
              PBRepeatedUInt64Add();
            }
          }

          else
          {
            if (v13 != 2)
            {
              v119 = 0;
              v120 = 0;
              v121 = 0;
              while (1)
              {
                LOBYTE(v144) = 0;
                v122 = [a2 position] + 1;
                if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
                {
                  v124 = [a2 data];
                  [v124 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v121 |= (v144 & 0x7F) << v119;
                if ((v144 & 0x80) == 0)
                {
                  goto LABEL_266;
                }

                v119 += 7;
                v11 = v120++ >= 9;
                if (v11)
                {
                  goto LABEL_267;
                }
              }
            }

            v144 = 0;
            v145 = 0;
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
                v146 = 0;
                v29 = [a2 position] + 1;
                if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
                {
                  v31 = [a2 data];
                  [v31 getBytes:&v146 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v28 |= (v146 & 0x7F) << v26;
                if ((v146 & 0x80) == 0)
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
          }

          goto LABEL_180;
        }

        if (v14 == 1)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 208) |= 1u;
          while (1)
          {
            LOBYTE(v144) = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v144 & 0x7F) << v53;
            if ((v144 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v55;
          }

LABEL_190:
          v94 = 200;
          goto LABEL_191;
        }

        if (v14 == 2)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 208) |= 2u;
          while (1)
          {
            LOBYTE(v144) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v144 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v144 & 0x7F) << v39;
            if ((v144 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_186;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_186:
          v94 = 204;
LABEL_191:
          *(a1 + v94) = v45;
          goto LABEL_268;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_268:
      v143 = [a2 position];
    }

    while (v143 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000E0AC0(uint64_t a1, void *a2)
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
        LOBYTE(v95[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v95[0] & 0x7F) << v5;
        if ((v95[0] & 0x80) == 0)
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
          LOBYTE(v95[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v95[0] & 0x7F) << v16;
          if ((v95[0] & 0x80) == 0)
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
        goto LABEL_193;
      }

      if (v13 <= 6)
      {
        break;
      }

      if (v13 <= 9)
      {
        if (v13 == 7)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v95[0] & 0x7F) << v55;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
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
            v29 = v57;
          }

LABEL_171:
          v92 = 48;
        }

        else if (v13 == 8)
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v82 = [a2 position] + 1;
            if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
            {
              v84 = [a2 data];
              [v84 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v81 |= (v95[0] & 0x7F) << v79;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v11 = v80++ >= 9;
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
            v29 = v81;
          }

LABEL_187:
          v92 = 32;
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v95[0] & 0x7F) << v30;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
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
            v29 = v32;
          }

LABEL_155:
          v92 = 44;
        }

        goto LABEL_192;
      }

      if (v13 == 10)
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 64) |= 0x200u;
        while (1)
        {
          LOBYTE(v95[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v95[0] & 0x7F) << v67;
          if ((v95[0] & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
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
          v29 = v69;
        }

LABEL_179:
        v92 = 56;
        goto LABEL_192;
      }

      if (v13 != 11)
      {
        if (v13 == 15)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 64) |= 0x400u;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v95[0] & 0x7F) << v42;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
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
            v29 = v44;
          }

LABEL_163:
          v92 = 60;
          goto LABEL_192;
        }

LABEL_146:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_193;
      }

      v91 = objc_alloc_init(ComponentCarrierInfo);
      [a1 addCarrierInfo:v91];
      v95[0] = 0;
      v95[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000AF284(v91, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_193:
      v93 = [a2 position];
      if (v93 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 3)
    {
      if (v13 == 4)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 64) |= 0x100u;
        while (1)
        {
          LOBYTE(v95[0]) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v95[0] & 0x7F) << v61;
          if ((v95[0] & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
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
          v29 = v63;
        }

LABEL_175:
        v92 = 52;
      }

      else if (v13 == 5)
      {
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 64) |= 2u;
        while (1)
        {
          LOBYTE(v95[0]) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v95[0] & 0x7F) << v85;
          if ((v95[0] & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_191;
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

LABEL_191:
        v92 = 24;
      }

      else
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 64) |= 0x10u;
        while (1)
        {
          LOBYTE(v95[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v95[0] & 0x7F) << v36;
          if ((v95[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
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
          v29 = v38;
        }

LABEL_159:
        v92 = 36;
      }

      goto LABEL_192;
    }

    switch(v13)
    {
      case 1:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          LOBYTE(v95[0]) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v95[0] & 0x7F) << v48;
          if ((v95[0] & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v54 = 0;
            goto LABEL_167;
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

LABEL_167:
        *(a1 + 8) = v54;
        goto LABEL_193;
      case 2:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 64) |= 4u;
        while (1)
        {
          LOBYTE(v95[0]) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v95[0] & 0x7F) << v73;
          if ((v95[0] & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v11 = v74++ >= 9;
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
          v29 = v75;
        }

LABEL_183:
        v92 = 28;
        goto LABEL_192;
      case 3:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 64) |= 0x20u;
        while (1)
        {
          LOBYTE(v95[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v95[0] & 0x7F) << v23;
          if ((v95[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
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
          v29 = v25;
        }

LABEL_151:
        v92 = 40;
LABEL_192:
        *(a1 + v92) = v29;
        goto LABEL_193;
    }

    goto LABEL_146;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000E2C08(uint64_t a1, void *a2)
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

uint64_t sub_1000E3F64(uint64_t a1, void *a2)
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
        LOBYTE(v103[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v103[0] & 0x7F) << v5;
        if ((v103[0] & 0x80) == 0)
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
          LOBYTE(v103[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v103[0] & 0x7F) << v17;
          if ((v103[0] & 0x80) == 0)
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
        goto LABEL_195;
      }

      if (v14 > 10)
      {
        if (v14 > 16)
        {
          switch(v14)
          {
            case 0x11:
              v65 = 0;
              v66 = 0;
              v67 = 0;
              *(a1 + 80) |= 8u;
              while (1)
              {
                LOBYTE(v103[0]) = 0;
                v68 = [a2 position] + 1;
                if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                {
                  v70 = [a2 data];
                  [v70 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v67 |= (v103[0] & 0x7F) << v65;
                if ((v103[0] & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v11 = v66++ >= 9;
                if (v11)
                {
                  v30 = 0;
                  goto LABEL_177;
                }
              }

              if ([a2 hasError])
              {
                v30 = 0;
              }

              else
              {
                v30 = v67;
              }

LABEL_177:
              v95 = 44;
              goto LABEL_194;
            case 0x12:
              v89 = 0;
              v90 = 0;
              v91 = 0;
              *(a1 + 80) |= 0x80u;
              while (1)
              {
                LOBYTE(v103[0]) = 0;
                v92 = [a2 position] + 1;
                if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
                {
                  v94 = [a2 data];
                  [v94 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v91 |= (v103[0] & 0x7F) << v89;
                if ((v103[0] & 0x80) == 0)
                {
                  break;
                }

                v89 += 7;
                v11 = v90++ >= 9;
                if (v11)
                {
                  v30 = 0;
                  goto LABEL_193;
                }
              }

              if ([a2 hasError])
              {
                v30 = 0;
              }

              else
              {
                v30 = v91;
              }

LABEL_193:
              v95 = 60;
              goto LABEL_194;
            case 0x14:
              if (v13 == 2)
              {
                v103[0] = 0;
                v103[1] = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v44 = [a2 position];
                  if (v44 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v45 = 0;
                  v46 = 0;
                  v47 = 0;
                  while (1)
                  {
                    v104 = 0;
                    v48 = [a2 position] + 1;
                    if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
                    {
                      v50 = [a2 data];
                      [v50 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v47 |= (v104 & 0x7F) << v45;
                    if ((v104 & 0x80) == 0)
                    {
                      break;
                    }

                    v45 += 7;
                    v11 = v46++ >= 9;
                    if (v11)
                    {
                      goto LABEL_87;
                    }
                  }

                  [a2 hasError];
LABEL_87:
                  PBRepeatedUInt32Add();
                }

                PBReaderRecallMark();
              }

              else
              {
                v97 = 0;
                v98 = 0;
                v99 = 0;
                while (1)
                {
                  LOBYTE(v103[0]) = 0;
                  v100 = [a2 position] + 1;
                  if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
                  {
                    v102 = [a2 data];
                    [v102 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v99 |= (v103[0] & 0x7F) << v97;
                  if ((v103[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v97 += 7;
                  v11 = v98++ >= 9;
                  if (v11)
                  {
                    goto LABEL_208;
                  }
                }

                [a2 hasError];
LABEL_208:
                PBRepeatedUInt32Add();
              }

              goto LABEL_195;
          }
        }

        else
        {
          switch(v14)
          {
            case 0xB:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              *(a1 + 80) |= 2u;
              while (1)
              {
                LOBYTE(v103[0]) = 0;
                v56 = [a2 position] + 1;
                if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
                {
                  v58 = [a2 data];
                  [v58 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v55 |= (v103[0] & 0x7F) << v53;
                if ((v103[0] & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v11 = v54++ >= 9;
                if (v11)
                {
                  v30 = 0;
                  goto LABEL_169;
                }
              }

              if ([a2 hasError])
              {
                v30 = 0;
              }

              else
              {
                v30 = v55;
              }

LABEL_169:
              v95 = 36;
              goto LABEL_194;
            case 0xC:
              v77 = 0;
              v78 = 0;
              v79 = 0;
              *(a1 + 80) |= 1u;
              while (1)
              {
                LOBYTE(v103[0]) = 0;
                v80 = [a2 position] + 1;
                if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
                {
                  v82 = [a2 data];
                  [v82 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v79 |= (v103[0] & 0x7F) << v77;
                if ((v103[0] & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                v11 = v78++ >= 9;
                if (v11)
                {
                  v30 = 0;
                  goto LABEL_185;
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

LABEL_185:
              v95 = 32;
              goto LABEL_194;
            case 0x10:
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 80) |= 0x10u;
              while (1)
              {
                LOBYTE(v103[0]) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v103[0] & 0x7F) << v31;
                if ((v103[0] & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
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
                v30 = v33;
              }

LABEL_161:
              v95 = 48;
              goto LABEL_194;
          }
        }
      }

      else if (v14 > 4)
      {
        switch(v14)
        {
          case 5:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              LOBYTE(v103[0]) = 0;
              v62 = [a2 position] + 1;
              if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
              {
                v64 = [a2 data];
                [v64 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v61 |= (v103[0] & 0x7F) << v59;
              if ((v103[0] & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              v11 = v60++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_173;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v61;
            }

LABEL_173:
            v95 = 40;
            goto LABEL_194;
          case 8:
            v83 = 0;
            v84 = 0;
            v85 = 0;
            *(a1 + 80) |= 0x200u;
            while (1)
            {
              LOBYTE(v103[0]) = 0;
              v86 = [a2 position] + 1;
              if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
              {
                v88 = [a2 data];
                [v88 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v85 |= (v103[0] & 0x7F) << v83;
              if ((v103[0] & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              v11 = v84++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_189;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v85;
            }

LABEL_189:
            v95 = 68;
            goto LABEL_194;
          case 9:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 80) |= 0x100u;
            while (1)
            {
              LOBYTE(v103[0]) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v103[0] & 0x7F) << v37;
              if ((v103[0] & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_165;
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

LABEL_165:
            v95 = 64;
            goto LABEL_194;
        }
      }

      else
      {
        switch(v14)
        {
          case 1:
            v51 = PBReaderReadString();
            v52 = *(a1 + 72);
            *(a1 + 72) = v51;

            goto LABEL_195;
          case 3:
            v71 = 0;
            v72 = 0;
            v73 = 0;
            *(a1 + 80) |= 0x40u;
            while (1)
            {
              LOBYTE(v103[0]) = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v73 |= (v103[0] & 0x7F) << v71;
              if ((v103[0] & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v11 = v72++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_181;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v73;
            }

LABEL_181:
            v95 = 56;
            goto LABEL_194;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 80) |= 0x20u;
            while (1)
            {
              LOBYTE(v103[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v103[0] & 0x7F) << v24;
              if ((v103[0] & 0x80) == 0)
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
            v95 = 52;
LABEL_194:
            *(a1 + v95) = v30;
            goto LABEL_195;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_195:
      v96 = [a2 position];
    }

    while (v96 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000E728C(uint64_t a1, void *a2)
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
      LOBYTE(v158) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v158 & 0x7F) << v5;
      if ((v158 & 0x80) == 0)
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
        LOBYTE(v158) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v158 & 0x7F) << v16;
        if ((v158 & 0x80) == 0)
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
      goto LABEL_318;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 144) |= 1u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v158 & 0x7F) << v23;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_280;
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

LABEL_280:
        *(a1 + 8) = v29;
        goto LABEL_318;
      case 2:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 144) |= 8u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v158 & 0x7F) << v99;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v11 = v100++ >= 9;
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
          v36 = v101;
        }

LABEL_284:
        v155 = 24;
        goto LABEL_317;
      case 3:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 144) |= 0x800u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v158 & 0x7F) << v79;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
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
          v36 = v81;
        }

LABEL_268:
        v155 = 68;
        goto LABEL_317;
      case 4:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 144) |= 0x40u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v158 & 0x7F) << v87;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
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
          v36 = v89;
        }

LABEL_272:
        v155 = 48;
        goto LABEL_317;
      case 5:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 144) |= 0x80u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v158 & 0x7F) << v49;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
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
          v36 = v51;
        }

LABEL_248:
        v155 = 52;
        goto LABEL_317;
      case 6:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 144) |= 0x400u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v158 & 0x7F) << v117;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
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
          v36 = v119;
        }

LABEL_296:
        v155 = 64;
        goto LABEL_317;
      case 7:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 144) |= 0x100u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v158 & 0x7F) << v131;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
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
          v36 = v133;
        }

LABEL_304:
        v155 = 56;
        goto LABEL_317;
      case 8:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        *(a1 + 144) |= 0x200u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v158 & 0x7F) << v93;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v11 = v94++ >= 9;
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
          v36 = v95;
        }

LABEL_276:
        v155 = 60;
        goto LABEL_317;
      case 9:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 144) |= 0x20u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v158 & 0x7F) << v137;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v11 = v138++ >= 9;
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
          v36 = v139;
        }

LABEL_308:
        v155 = 44;
        goto LABEL_317;
      case 10:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 144) |= 0x10u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v158 & 0x7F) << v61;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
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
          v36 = v63;
        }

LABEL_256:
        v155 = 40;
        goto LABEL_317;
      case 11:
        v85 = objc_alloc_init(BandCombo);
        v86 = 32;
        goto LABEL_198;
      case 12:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 144) |= 0x20000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v158 & 0x7F) << v43;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
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
          v36 = v45;
        }

LABEL_244:
        v155 = 108;
        goto LABEL_317;
      case 13:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 144) |= 0x10000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v158 & 0x7F) << v55;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
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
          v36 = v57;
        }

LABEL_252:
        v155 = 104;
        goto LABEL_317;
      case 14:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 144) |= 0x2000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v158 & 0x7F) << v125;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v11 = v126++ >= 9;
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
          v36 = v127;
        }

LABEL_300:
        v155 = 84;
        goto LABEL_317;
      case 15:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 144) |= 0x1000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v158 & 0x7F) << v37;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
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
          v36 = v39;
        }

LABEL_240:
        v155 = 80;
        goto LABEL_317;
      case 16:
        v85 = objc_alloc_init(BandCombo);
        v86 = 72;
        goto LABEL_198;
      case 17:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 144) |= 0x8000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v158 & 0x7F) << v30;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
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
          v36 = v32;
        }

LABEL_236:
        v155 = 100;
        goto LABEL_317;
      case 18:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 144) |= 0x4000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v158 & 0x7F) << v105;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
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
          v36 = v107;
        }

LABEL_288:
        v155 = 96;
        goto LABEL_317;
      case 19:
        v85 = objc_alloc_init(BandCombo);
        v86 = 88;
LABEL_198:
        objc_storeStrong((a1 + v86), v85);
        v158 = 0;
        v159 = 0;
        if (!PBReaderPlaceMark() || !sub_10002201C(v85, a2))
        {
          goto LABEL_320;
        }

        goto LABEL_221;
      case 20:
        v85 = objc_alloc_init(NwUeCapMimoStat);
        [a1 addNwUeCapStat:v85];
        v158 = 0;
        v159 = 0;
        if (PBReaderPlaceMark() && sub_1001639BC(v85, a2))
        {
LABEL_221:
          PBReaderRecallMark();

LABEL_318:
          v156 = [a2 position];
          if (v156 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_320:

        return 0;
      case 21:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 144) |= 0x40000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v158 & 0x7F) << v111;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
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
          v36 = v113;
        }

LABEL_292:
        v155 = 112;
        goto LABEL_317;
      case 22:
        v123 = PBReaderReadData();
        v124 = *(a1 + 128);
        *(a1 + 128) = v123;

        goto LABEL_318;
      case 23:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 144) |= 0x100000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v158 & 0x7F) << v143;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v11 = v144++ >= 9;
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
          v36 = v145;
        }

LABEL_312:
        v155 = 140;
        goto LABEL_317;
      case 24:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 144) |= 0x80000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v158 & 0x7F) << v149;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v11 = v150++ >= 9;
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
          v36 = v151;
        }

LABEL_316:
        v155 = 136;
        goto LABEL_317;
      case 25:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 144) |= 2u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v158 & 0x7F) << v73;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v11 = v74++ >= 9;
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
          v36 = v75;
        }

LABEL_264:
        v155 = 16;
        goto LABEL_317;
      case 26:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 144) |= 4u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v158 & 0x7F) << v67;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
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
          v36 = v69;
        }

LABEL_260:
        v155 = 20;
LABEL_317:
        *(a1 + v155) = v36;
        goto LABEL_318;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_318;
        }

        return 0;
    }
  }
}

uint64_t sub_1000EAD38(uint64_t a1, void *a2)
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
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 28) |= 0x10u;
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
                goto LABEL_95;
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

LABEL_95:
            v56 = 24;
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
            v56 = 8;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 28) |= 4u;
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
              v56 = 16;
              break;
            case 4:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 28) |= 2u;
              while (1)
              {
                v59 = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v59 & 0x7F) << v43;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_91;
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

LABEL_91:
              v56 = 12;
              break;
            case 5:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 28) |= 8u;
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
              v36 = -(v29 & 1) ^ (v29 >> 1);
              v56 = 20;
              break;
            default:
              goto LABEL_82;
          }
        }

        *(a1 + v56) = v36;
      }

LABEL_105:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000EC680(uint64_t a1, void *a2)
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
        v116 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v116 & 0x7F) << v5;
        if ((v116 & 0x80) == 0)
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
          v116 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v116 & 0x7F) << v16;
          if ((v116 & 0x80) == 0)
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
            *(a1 + 64) |= 8u;
            while (1)
            {
              v116 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v116 & 0x7F) << v23;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
LABEL_191:
                v114 = 20;
                goto LABEL_214;
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

            goto LABEL_191;
          case 2:
            v74 = 0;
            v75 = 0;
            v76 = 0;
            *(a1 + 64) |= 0x200u;
            while (1)
            {
              v116 = 0;
              v77 = [a2 position] + 1;
              if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
              {
                v79 = [a2 data];
                [v79 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v76 |= (v116 & 0x7F) << v74;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              v11 = v75++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_195;
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

LABEL_195:
            v114 = 44;
            goto LABEL_214;
          case 3:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 64) |= 0x10u;
            while (1)
            {
              v116 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v116 & 0x7F) << v56;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
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
              v29 = v58;
            }

LABEL_179:
            v114 = 24;
            goto LABEL_214;
          case 4:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v116 = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v64 |= (v116 & 0x7F) << v62;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v11 = v63++ >= 9;
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
              v29 = v64;
            }

LABEL_183:
            v114 = 12;
            goto LABEL_214;
          case 5:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 64) |= 4u;
            while (1)
            {
              v116 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v116 & 0x7F) << v37;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
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
              v29 = v39;
            }

LABEL_167:
            v114 = 16;
            goto LABEL_214;
          case 6:
            v80 = 0;
            v81 = 0;
            v82 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v116 = 0;
              v83 = [a2 position] + 1;
              if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
              {
                v85 = [a2 data];
                [v85 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v82 |= (v116 & 0x7F) << v80;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              v11 = v81++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_199;
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

LABEL_199:
            v114 = 8;
            goto LABEL_214;
          case 7:
            v93 = 0;
            v94 = 0;
            v95 = 0;
            *(a1 + 64) |= 0x2000u;
            while (1)
            {
              v116 = 0;
              v96 = [a2 position] + 1;
              if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
              {
                v98 = [a2 data];
                [v98 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v95 |= (v116 & 0x7F) << v93;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              v11 = v94++ >= 9;
              if (v11)
              {
                LOBYTE(v99) = 0;
                goto LABEL_205;
              }
            }

            v99 = (v95 != 0) & ~[a2 hasError];
LABEL_205:
            *(a1 + 60) = v99;
            goto LABEL_215;
          case 8:
            v68 = 0;
            v69 = 0;
            v70 = 0;
            *(a1 + 64) |= 0x800u;
            while (1)
            {
              v116 = 0;
              v71 = [a2 position] + 1;
              if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
              {
                v73 = [a2 data];
                [v73 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v70 |= (v116 & 0x7F) << v68;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v11 = v69++ >= 9;
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
              v29 = v70;
            }

LABEL_187:
            v114 = 52;
            goto LABEL_214;
          case 9:
            v107 = 0;
            v108 = 0;
            v109 = 0;
            *(a1 + 64) |= 0x1000u;
            while (1)
            {
              v116 = 0;
              v110 = [a2 position] + 1;
              if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
              {
                v112 = [a2 data];
                [v112 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v109 |= (v116 & 0x7F) << v107;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v107 += 7;
              v11 = v108++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_213;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v109;
            }

LABEL_213:
            v114 = 56;
            goto LABEL_214;
          case 10:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 64) |= 0x400u;
            while (1)
            {
              v116 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v116 & 0x7F) << v50;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
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
              v29 = v52;
            }

LABEL_175:
            v114 = 48;
            goto LABEL_214;
          case 11:
            v100 = 0;
            v101 = 0;
            v102 = 0;
            *(a1 + 64) |= 0x20u;
            while (1)
            {
              v116 = 0;
              v103 = [a2 position] + 1;
              if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
              {
                v105 = [a2 data];
                [v105 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v102 |= (v116 & 0x7F) << v100;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              v11 = v101++ >= 9;
              if (v11)
              {
                v106 = 0;
                goto LABEL_209;
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

LABEL_209:
            v29 = -(v106 & 1) ^ (v106 >> 1);
            v114 = 28;
            goto LABEL_214;
          case 12:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 64) |= 0x40u;
            while (1)
            {
              v116 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v116 & 0x7F) << v30;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_163;
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

LABEL_163:
            v29 = -(v36 & 1) ^ (v36 >> 1);
            v114 = 32;
            goto LABEL_214;
          case 13:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 64) |= 0x100u;
            while (1)
            {
              v116 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v116 & 0x7F) << v43;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_171;
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

LABEL_171:
            v29 = -(v49 & 1) ^ (v49 >> 1);
            v114 = 40;
            goto LABEL_214;
          case 14:
            v86 = 0;
            v87 = 0;
            v88 = 0;
            *(a1 + 64) |= 0x80u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_215;
            }

            return result;
        }

        while (1)
        {
          v116 = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v116 & 0x7F) << v86;
          if ((v116 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            v92 = 0;
            goto LABEL_203;
          }
        }

        v92 = [a2 hasError] ? 0 : v88;
LABEL_203:
        v29 = -(v92 & 1) ^ (v92 >> 1);
        v114 = 36;
LABEL_214:
        *(a1 + v114) = v29;
      }

LABEL_215:
      v115 = [a2 position];
    }

    while (v115 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}