uint64_t sub_1000A525C(uint64_t a1, void *a2)
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
        v66 = 0;
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
          v71 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v71 & 0x7F) << v16;
          if ((v71 & 0x80) == 0)
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
        goto LABEL_121;
      }

      if (v13 <= 11)
      {
        switch(v13)
        {
          case 1:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v72 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v72 & 0x7F) << v42;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v48 = 0;
                goto LABEL_99;
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

LABEL_99:
            *(a1 + 8) = v48;
            goto LABEL_121;
          case 2:
            v58 = 0;
            v59 = 0;
            v60 = 0;
            *(a1 + 44) |= 0x10u;
            while (1)
            {
              v70 = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v70 & 0x7F) << v58;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v11 = v59++ >= 9;
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
              v29 = v60;
            }

LABEL_119:
            v64 = 36;
            break;
          case 3:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 44) |= 2u;
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
                goto LABEL_115;
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

LABEL_115:
            v64 = 16;
            break;
          default:
            goto LABEL_75;
        }

        goto LABEL_120;
      }

      if (v13 <= 13)
      {
        break;
      }

      if (v13 != 14)
      {
        if (v13 != 15)
        {
LABEL_75:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_121;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v67 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v67 & 0x7F) << v36;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
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
          v29 = v38;
        }

LABEL_111:
        v64 = 40;
        goto LABEL_120;
      }

      v56 = PBReaderReadData();
      v57 = *(a1 + 24);
      *(a1 + 24) = v56;

LABEL_121:
      v65 = [a2 position];
      if (v65 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 12)
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        v69 = 0;
        v53 = [a2 position] + 1;
        if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
        {
          v55 = [a2 data];
          [v55 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v52 |= (v69 & 0x7F) << v50;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v50 += 7;
        v11 = v51++ >= 9;
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
        v29 = v52;
      }

LABEL_103:
      v64 = 20;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 44) |= 8u;
      while (1)
      {
        v68 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v68 & 0x7F) << v23;
        if ((v68 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
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
        v29 = v25;
      }

LABEL_107:
      v64 = 32;
    }

LABEL_120:
    *(a1 + v64) = v29;
    goto LABEL_121;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000A6F14(uint64_t a1, void *a2)
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
        LOBYTE(v42) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
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
          LOBYTE(v42) = 0;
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
        goto LABEL_72;
      }

      if (v13 > 4)
      {
        if (v13 <= 6)
        {
          if (v13 != 5)
          {
            v25 = objc_alloc_init(KCellularTrackingAreaId);
            [a1 addRoamingFtaiList:v25];
            goto LABEL_69;
          }

          v25 = objc_alloc_init(KCellularLocationAreaId);
          [a1 addRegProvFlaiList:v25];
LABEL_62:
          v42 = 0;
          v43 = 0;
          if (!PBReaderPlaceMark() || !sub_1000616B8(v25, a2))
          {
            goto LABEL_85;
          }

          goto LABEL_71;
        }

        if (v13 == 7)
        {
          v25 = objc_alloc_init(KCellularTrackingAreaId);
          [a1 addRegProvFtaiList:v25];
LABEL_69:
          v42 = 0;
          v43 = 0;
          if (!PBReaderPlaceMark() || !sub_10012E10C(v25, a2))
          {
LABEL_85:

            return 0;
          }

LABEL_71:
          PBReaderRecallMark();

          goto LABEL_72;
        }

        if (v13 == 15)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v42) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v42 & 0x7F) << v26;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v28;
          }

LABEL_83:
          *(a1 + 64) = v32;
          goto LABEL_72;
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v25 = objc_alloc_init(Plmn);
            [a1 addEplmnList:v25];
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || !sub_1000A479C(v25, a2))
            {
              goto LABEL_85;
            }

            goto LABEL_71;
          }

          v25 = objc_alloc_init(KCellularLocationAreaId);
          [a1 addRoamingFlaiList:v25];
          goto LABEL_62;
        }

        if (v13 == 1)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v42) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v42 & 0x7F) << v33;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v39 = 0;
              goto LABEL_79;
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

LABEL_79:
          *(a1 + 8) = v39;
          goto LABEL_72;
        }

        if (v13 == 2)
        {
          v23 = PBReaderReadData();
          v24 = *(a1 + 24);
          *(a1 + 24) = v23;

          goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000A8BA0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 slicingDescriptorsDidUpdate:*(a1 + 32) withDescriptors:*(a1 + 40) appInfo:*(a1 + 48) andStatus:*(a1 + 56)];
}

void sub_1000A9070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateDelegate:*(a1 + 32) status:*(a1 + 56) trafficDescriptors:*(a1 + 40)];
}

void sub_1000A92B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 slicingRunningAppStateChanged:*(a1 + 32)];
}

uint64_t sub_1000AB238(uint64_t a1, void *a2)
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
        LOBYTE(v83[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v83[0] & 0x7F) << v5;
        if ((v83[0] & 0x80) == 0)
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
          LOBYTE(v83[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v83[0] & 0x7F) << v16;
          if ((v83[0] & 0x80) == 0)
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
        goto LABEL_165;
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
            LOBYTE(v83[0]) = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v83[0] & 0x7F) << v48;
            if ((v83[0] & 0x80) == 0)
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
          goto LABEL_165;
        }

        if (v13 == 2)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 56) |= 0x10u;
          while (1)
          {
            LOBYTE(v83[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v83[0] & 0x7F) << v36;
            if ((v83[0] & 0x80) == 0)
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
          v80 = 36;
          goto LABEL_164;
        }

        goto LABEL_126;
      }

      if (v13 == 3)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 56) |= 0x100u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v83[0] & 0x7F) << v61;
          if ((v83[0] & 0x80) == 0)
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
        v80 = 52;
        goto LABEL_164;
      }

      if (v13 != 4)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v83[0] & 0x7F) << v23;
          if ((v83[0] & 0x80) == 0)
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
        v80 = 16;
LABEL_164:
        *(a1 + v80) = v29;
        goto LABEL_165;
      }

      v73 = objc_alloc_init(RoutingAreaId);
      objc_storeStrong((a1 + 24), v73);
      v83[0] = 0;
      v83[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10005F7CC(v73, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_165:
      v81 = [a2 position];
      if (v81 >= [a2 length])
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
        *(a1 + 56) |= 0x80u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v83[0] & 0x7F) << v55;
          if ((v83[0] & 0x80) == 0)
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
        v80 = 48;
      }

      else
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v83[0] & 0x7F) << v42;
          if ((v83[0] & 0x80) == 0)
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
        v80 = 20;
      }

      goto LABEL_164;
    }

    switch(v13)
    {
      case 8:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 56) |= 0x20u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v83[0] & 0x7F) << v67;
          if ((v83[0] & 0x80) == 0)
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
        v80 = 40;
        goto LABEL_164;
      case 9:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v83[0] & 0x7F) << v74;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
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
          v29 = v76;
        }

LABEL_163:
        v80 = 32;
        goto LABEL_164;
      case 0xF:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 56) |= 0x40u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v83[0] & 0x7F) << v30;
          if ((v83[0] & 0x80) == 0)
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
        v80 = 44;
        goto LABEL_164;
    }

LABEL_126:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_165;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000AD2DC(uint64_t a1, void *a2)
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
        LOBYTE(v91[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v91[0] & 0x7F) << v5;
        if ((v91[0] & 0x80) == 0)
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
          LOBYTE(v91[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v91[0] & 0x7F) << v16;
          if ((v91[0] & 0x80) == 0)
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
        goto LABEL_181;
      }

      if (v13 > 7)
      {
        if (v13 > 10)
        {
          switch(v13)
          {
            case 0xB:
              v62 = 0;
              v63 = 0;
              v64 = 0;
              *(a1 + 76) |= 0x80u;
              while (1)
              {
                LOBYTE(v91[0]) = 0;
                v65 = [a2 position] + 1;
                if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
                {
                  v67 = [a2 data];
                  [v67 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v64 |= (v91[0] & 0x7F) << v62;
                if ((v91[0] & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                v11 = v63++ >= 9;
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
                v29 = v64;
              }

LABEL_167:
              v88 = 64;
              goto LABEL_180;
            case 0xC:
              v82 = 0;
              v83 = 0;
              v84 = 0;
              *(a1 + 76) |= 2u;
              while (1)
              {
                LOBYTE(v91[0]) = 0;
                v85 = [a2 position] + 1;
                if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
                {
                  v87 = [a2 data];
                  [v87 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v84 |= (v91[0] & 0x7F) << v82;
                if ((v91[0] & 0x80) == 0)
                {
                  break;
                }

                v82 += 7;
                v11 = v83++ >= 9;
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
                v29 = v84;
              }

LABEL_179:
              v88 = 16;
              goto LABEL_180;
            case 0xD:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 76) |= 0x40u;
              while (1)
              {
                LOBYTE(v91[0]) = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v91[0] & 0x7F) << v42;
                if ((v91[0] & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
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
                v29 = v44;
              }

LABEL_155:
              v88 = 60;
              goto LABEL_180;
          }

LABEL_138:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_181;
        }

        if (v13 == 8)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 76) |= 0x20u;
          while (1)
          {
            LOBYTE(v91[0]) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v91[0] & 0x7F) << v55;
            if ((v91[0] & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
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
            v29 = v57;
          }

LABEL_163:
          v88 = 56;
          goto LABEL_180;
        }

        if (v13 != 9)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            LOBYTE(v91[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v91[0] & 0x7F) << v30;
            if ((v91[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
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
            v29 = v32;
          }

LABEL_147:
          v88 = 32;
          goto LABEL_180;
        }

        v74 = PBReaderReadData();
        v75 = *(a1 + 48);
        *(a1 + 48) = v74;
      }

      else
      {
        if (v13 <= 4)
        {
          switch(v13)
          {
            case 1:
              v48 = 0;
              v49 = 0;
              v50 = 0;
              *(a1 + 76) |= 1u;
              while (1)
              {
                LOBYTE(v91[0]) = 0;
                v51 = [a2 position] + 1;
                if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                {
                  v53 = [a2 data];
                  [v53 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v50 |= (v91[0] & 0x7F) << v48;
                if ((v91[0] & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v11 = v49++ >= 9;
                if (v11)
                {
                  v54 = 0;
                  goto LABEL_159;
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

LABEL_159:
              *(a1 + 8) = v54;
              goto LABEL_181;
            case 3:
              v68 = 0;
              v69 = 0;
              v70 = 0;
              *(a1 + 76) |= 8u;
              while (1)
              {
                LOBYTE(v91[0]) = 0;
                v71 = [a2 position] + 1;
                if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
                {
                  v73 = [a2 data];
                  [v73 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v70 |= (v91[0] & 0x7F) << v68;
                if ((v91[0] & 0x80) == 0)
                {
                  break;
                }

                v68 += 7;
                v11 = v69++ >= 9;
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
                v29 = v70;
              }

LABEL_171:
              v88 = 36;
              goto LABEL_180;
            case 4:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 76) |= 0x100u;
              while (1)
              {
                LOBYTE(v91[0]) = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v91[0] & 0x7F) << v23;
                if ((v91[0] & 0x80) == 0)
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
              v88 = 68;
LABEL_180:
              *(a1 + v88) = v29;
              goto LABEL_181;
          }

          goto LABEL_138;
        }

        if (v13 != 5)
        {
          if (v13 == 6)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 76) |= 0x200u;
            while (1)
            {
              LOBYTE(v91[0]) = 0;
              v79 = [a2 position] + 1;
              if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v78 |= (v91[0] & 0x7F) << v76;
              if ((v91[0] & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v11 = v77++ >= 9;
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
              v29 = v78;
            }

LABEL_175:
            v88 = 72;
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 76) |= 0x10u;
            while (1)
            {
              LOBYTE(v91[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v91 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v91[0] & 0x7F) << v36;
              if ((v91[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
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
              v29 = v38;
            }

LABEL_151:
            v88 = 40;
          }

          goto LABEL_180;
        }

        v61 = objc_alloc_init(DrbConfig);
        objc_storeStrong((a1 + 24), v61);
        v91[0] = 0;
        v91[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10005BF68(v61, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

LABEL_181:
      v89 = [a2 position];
    }

    while (v89 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000AF284(uint64_t a1, void *a2)
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
            *(a1 + 20) |= 1u;
            while (1)
            {
              v49 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v49 & 0x7F) << v30;
              if ((v49 & 0x80) == 0)
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
            *(a1 + 20) |= 2u;
            while (1)
            {
              v47 = 0;
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

uint64_t sub_1000B00D4(uint64_t a1, void *a2)
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
        LOBYTE(v54[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54[0] & 0x7F) << v5;
        if ((v54[0] & 0x80) == 0)
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
          LOBYTE(v54[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v54[0] & 0x7F) << v16;
          if ((v54[0] & 0x80) == 0)
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
        goto LABEL_98;
      }

      if (v13 > 4)
      {
        break;
      }

      switch(v13)
      {
        case 1:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v54[0]) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v54[0] & 0x7F) << v32;
            if ((v54[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_84;
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

LABEL_84:
          *(a1 + 8) = v38;
          goto LABEL_98;
        case 3:
          v23 = objc_alloc_init(TunerState);
          v24 = 32;
          break;
        case 4:
          v23 = objc_alloc_init(TunerState);
          v24 = 24;
          break;
        default:
          goto LABEL_66;
      }

      objc_storeStrong((a1 + v24), v23);
      v54[0] = 0;
      v54[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000038A8(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_98:
      v52 = [a2 position];
      if (v52 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 5:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v54[0]) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v54[0] & 0x7F) << v39;
          if ((v54[0] & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_88;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v41;
        }

LABEL_88:
        v51 = 16;
        goto LABEL_97;
      case 6:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          LOBYTE(v54[0]) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v54[0] & 0x7F) << v45;
          if ((v54[0] & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v47;
        }

LABEL_96:
        v51 = 44;
        goto LABEL_97;
      case 0xF:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v54[0]) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v54[0] & 0x7F) << v25;
          if ((v54[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_92;
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

LABEL_92:
        v51 = 40;
LABEL_97:
        *(a1 + v51) = v31;
        goto LABEL_98;
    }

LABEL_66:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_98;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000B14E0(uint64_t a1, void *a2)
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
        v65 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65 & 0x7F) << v5;
        if ((v65 & 0x80) == 0)
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
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 36) |= 2u;
              while (1)
              {
                v67 = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v67 & 0x7F) << v43;
                if ((v67 & 0x80) == 0)
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
              v63 = 16;
              break;
            case 5:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              *(a1 + 36) |= 4u;
              while (1)
              {
                v72 = 0;
                v59 = [a2 position] + 1;
                if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
                {
                  v61 = [a2 data];
                  [v61 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v58 |= (v72 & 0x7F) << v56;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v11 = v57++ >= 9;
                if (v11)
                {
                  v62 = 0;
                  goto LABEL_117;
                }
              }

              if ([a2 hasError])
              {
                v62 = 0;
              }

              else
              {
                v62 = v58;
              }

LABEL_117:
              v29 = -(v62 & 1) ^ (v62 >> 1);
              v63 = 20;
              break;
            case 0xF:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 36) |= 0x20u;
              while (1)
              {
                v66 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v66 & 0x7F) << v30;
                if ((v66 & 0x80) == 0)
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
              v63 = 32;
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
                v71 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v71 & 0x7F) << v36;
                if ((v71 & 0x80) == 0)
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
              *(a1 + 36) |= 8u;
              while (1)
              {
                v69 = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  v55 = [a2 data];
                  [v55 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v69 & 0x7F) << v50;
                if ((v69 & 0x80) == 0)
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
              v63 = 24;
              break;
            case 3:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 36) |= 0x10u;
              while (1)
              {
                v68 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v68 & 0x7F) << v23;
                if ((v68 & 0x80) == 0)
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
              v63 = 28;
              break;
            default:
              goto LABEL_74;
          }
        }

        *(a1 + v63) = v29;
      }

LABEL_119:
      v64 = [a2 position];
    }

    while (v64 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000B2B60(uint64_t a1, void *a2)
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
        LOBYTE(v61[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61[0] & 0x7F) << v5;
        if ((v61[0] & 0x80) == 0)
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
          LOBYTE(v61[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v61[0] & 0x7F) << v16;
          if ((v61[0] & 0x80) == 0)
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
        goto LABEL_111;
      }

      if (v13 > 5)
      {
        break;
      }

      if (v13 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v61[0] & 0x7F) << v33;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_93;
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

LABEL_93:
        *(a1 + 8) = v39;
        goto LABEL_111;
      }

      if (v13 == 2)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 56) |= 0x10u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v61[0] & 0x7F) << v52;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
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
          v29 = v54;
        }

LABEL_109:
        v58 = 52;
        goto LABEL_110;
      }

      if (v13 != 5)
      {
        goto LABEL_61;
      }

      v30 = objc_alloc_init(StateHist);
      [a1 addStateHist:v30];
      v61[0] = 0;
      v61[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10016FD7C(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_111:
      v59 = [a2 position];
      if (v59 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v61[0] & 0x7F) << v40;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
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
          v29 = v42;
        }

LABEL_97:
        v58 = 16;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v61[0] & 0x7F) << v23;
          if ((v61[0] & 0x80) == 0)
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
        v58 = 48;
      }

LABEL_110:
      *(a1 + v58) = v29;
      goto LABEL_111;
    }

    if (v13 == 8)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *(a1 + 56) |= 4u;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v49 = [a2 position] + 1;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v48 |= (v61[0] & 0x7F) << v46;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v46 += 7;
        v11 = v47++ >= 9;
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
        v29 = v48;
      }

LABEL_101:
      v58 = 32;
      goto LABEL_110;
    }

    if (v13 == 9)
    {
      v31 = PBReaderReadData();
      v32 = *(a1 + 24);
      *(a1 + 24) = v31;

      goto LABEL_111;
    }

LABEL_61:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_111;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000B4320(uint64_t a1, void *a2)
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
            v31 = objc_alloc_init(EgwErrcNbrEutraMeas);
            [a1 addMeasNbrEutra:v31];
            v40[0] = 0;
            v40[1] = 0;
            if (!PBReaderPlaceMark() || !sub_100074C08(v31, a2))
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

uint64_t sub_1000B569C(uint64_t a1, void *a2)
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
        LOBYTE(v73) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73 & 0x7F) << v5;
        if ((v73 & 0x80) == 0)
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
          LOBYTE(v73) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v73 & 0x7F) << v17;
          if ((v73 & 0x80) == 0)
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

      if (v14 <= 3)
      {
        if (v14 == 1)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v73) = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v73 & 0x7F) << v53;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
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
            v38 = v55;
          }

LABEL_104:
          v59 = 56;
          goto LABEL_109;
        }

        if (v14 == 2)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            LOBYTE(v73) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v73 & 0x7F) << v32;
            if ((v73 & 0x80) == 0)
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
          v59 = 64;
          goto LABEL_109;
        }
      }

      else
      {
        switch(v14)
        {
          case 4:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              LOBYTE(v73) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v73 & 0x7F) << v39;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v45 = 0;
                goto LABEL_100;
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

LABEL_100:
            v38 = -(v45 & 1) ^ (v45 >> 1);
            v59 = 60;
LABEL_109:
            *(a1 + v59) = v38;
            goto LABEL_130;
          case 6:
            if (v13 != 2)
            {
              v60 = 0;
              v61 = 0;
              v62 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v73 & 0x7F) << v60;
                if ((v73 & 0x80) == 0)
                {
                  goto LABEL_128;
                }

                v60 += 7;
                v11 = v61++ >= 9;
                if (v11)
                {
                  goto LABEL_129;
                }
              }
            }

            v73 = 0;
            v74 = 0;
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
                goto LABEL_96;
              }

              v47 = 0;
              v48 = 0;
              v49 = 0;
              while (1)
              {
                v75 = 0;
                v50 = [a2 position] + 1;
                if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
                {
                  v52 = [a2 data];
                  [v52 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v49 |= (v75 & 0x7F) << v47;
                if ((v75 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                v11 = v48++ >= 9;
                if (v11)
                {
                  goto LABEL_84;
                }
              }

              [a2 hasError];
LABEL_84:
              PBRepeatedUInt32Add();
            }

          case 7:
            if (v13 != 2)
            {
              v66 = 0;
              v67 = 0;
              v68 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v69 = [a2 position] + 1;
                if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
                {
                  v71 = [a2 data];
                  [v71 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v68 |= (v73 & 0x7F) << v66;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v66 += 7;
                v11 = v67++ >= 9;
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

            v73 = 0;
            v74 = 0;
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
                v75 = 0;
                v29 = [a2 position] + 1;
                if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
                {
                  v31 = [a2 data];
                  [v31 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v28 |= (v75 & 0x7F) << v26;
                if ((v75 & 0x80) == 0)
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
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000B73C8(uint64_t a1, void *a2)
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
        v123 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v123 & 0x7F) << v5;
        if ((v123 & 0x80) == 0)
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
          v123 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v123 & 0x7F) << v16;
          if ((v123 & 0x80) == 0)
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
            *(a1 + 76) |= 1u;
            while (1)
            {
              v123 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v123 & 0x7F) << v23;
              if ((v123 & 0x80) == 0)
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
            goto LABEL_226;
          case 3:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 76) |= 0x80u;
            while (1)
            {
              v123 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v123 & 0x7F) << v64;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
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
              v36 = v66;
            }

LABEL_197:
            v120 = 52;
            goto LABEL_225;
          case 5:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 76) |= 0x40u;
            while (1)
            {
              v123 = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v123 & 0x7F) << v45;
              if ((v123 & 0x80) == 0)
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
            v120 = 48;
            goto LABEL_225;
          case 7:
            v95 = 0;
            v96 = 0;
            v97 = 0;
            *(a1 + 76) |= 0x2000u;
            while (1)
            {
              v123 = 0;
              v98 = [a2 position] + 1;
              if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
              {
                v100 = [a2 data];
                [v100 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v97 |= (v123 & 0x7F) << v95;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              v11 = v96++ >= 9;
              if (v11)
              {
                LOBYTE(v94) = 0;
                goto LABEL_213;
              }
            }

            v94 = (v97 != 0) & ~[a2 hasError];
LABEL_213:
            v121 = 73;
            goto LABEL_220;
          case 8:
            v101 = 0;
            v102 = 0;
            v103 = 0;
            *(a1 + 76) |= 0x20u;
            while (1)
            {
              v123 = 0;
              v104 = [a2 position] + 1;
              if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
              {
                v106 = [a2 data];
                [v106 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v103 |= (v123 & 0x7F) << v101;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              v11 = v102++ >= 9;
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
              v36 = v103;
            }

LABEL_217:
            v120 = 32;
            goto LABEL_225;
          case 9:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 76) |= 0x100u;
            while (1)
            {
              v123 = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v123 & 0x7F) << v51;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v57 = 0;
                goto LABEL_185;
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

LABEL_185:
            v36 = -(v57 & 1) ^ (v57 >> 1);
            v120 = 56;
            goto LABEL_225;
          case 10:
            v70 = 0;
            v71 = 0;
            v72 = 0;
            *(a1 + 76) |= 8u;
            while (1)
            {
              v123 = 0;
              v73 = [a2 position] + 1;
              if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
              {
                v75 = [a2 data];
                [v75 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v72 |= (v123 & 0x7F) << v70;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v11 = v71++ >= 9;
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
              v36 = v72;
            }

LABEL_201:
            v120 = 24;
            goto LABEL_225;
          case 11:
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 76) |= 0x800u;
            while (1)
            {
              v123 = 0;
              v79 = [a2 position] + 1;
              if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v78 |= (v123 & 0x7F) << v76;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v11 = v77++ >= 9;
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
              v36 = v78;
            }

LABEL_205:
            v120 = 68;
            goto LABEL_225;
          case 12:
            v113 = 0;
            v114 = 0;
            v115 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              v123 = 0;
              v116 = [a2 position] + 1;
              if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
              {
                v118 = [a2 data];
                [v118 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v115 |= (v123 & 0x7F) << v113;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v113 += 7;
              v11 = v114++ >= 9;
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
              v36 = v115;
            }

LABEL_224:
            v120 = 20;
            goto LABEL_225;
          case 13:
            v107 = 0;
            v108 = 0;
            v109 = 0;
            *(a1 + 76) |= 0x1000u;
            while (1)
            {
              v123 = 0;
              v110 = [a2 position] + 1;
              if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
              {
                v112 = [a2 data];
                [v112 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v109 |= (v123 & 0x7F) << v107;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v107 += 7;
              v11 = v108++ >= 9;
              if (v11)
              {
                LOBYTE(v94) = 0;
                goto LABEL_219;
              }
            }

            v94 = (v109 != 0) & ~[a2 hasError];
LABEL_219:
            v121 = 72;
            goto LABEL_220;
          case 14:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              v123 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v123 & 0x7F) << v37;
              if ((v123 & 0x80) == 0)
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
            v120 = 16;
            goto LABEL_225;
          case 15:
            v58 = 0;
            v59 = 0;
            v60 = 0;
            *(a1 + 76) |= 0x10u;
            while (1)
            {
              v123 = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v123 & 0x7F) << v58;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v11 = v59++ >= 9;
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
              v36 = v60;
            }

LABEL_189:
            v120 = 28;
            goto LABEL_225;
          case 16:
            v43 = PBReaderReadData();
            v44 = *(a1 + 40);
            *(a1 + 40) = v43;

            goto LABEL_226;
          case 17:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 76) |= 0x400u;
            while (1)
            {
              v123 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v123 & 0x7F) << v30;
              if ((v123 & 0x80) == 0)
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
            v120 = 64;
            goto LABEL_225;
          case 18:
            v82 = 0;
            v83 = 0;
            v84 = 0;
            *(a1 + 76) |= 0x200u;
            while (1)
            {
              v123 = 0;
              v85 = [a2 position] + 1;
              if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
              {
                v87 = [a2 data];
                [v87 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v84 |= (v123 & 0x7F) << v82;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              v11 = v83++ >= 9;
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
              v36 = v84;
            }

LABEL_209:
            v120 = 60;
LABEL_225:
            *(a1 + v120) = v36;
            goto LABEL_226;
          case 19:
            v88 = 0;
            v89 = 0;
            v90 = 0;
            *(a1 + 76) |= 0x4000u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_226;
            }

            return result;
        }

        while (1)
        {
          v123 = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v123 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v123 & 0x7F) << v88;
          if ((v123 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v11 = v89++ >= 9;
          if (v11)
          {
            LOBYTE(v94) = 0;
            goto LABEL_211;
          }
        }

        v94 = (v90 != 0) & ~[a2 hasError];
LABEL_211:
        v121 = 74;
LABEL_220:
        *(a1 + v121) = v94;
      }

LABEL_226:
      v122 = [a2 position];
    }

    while (v122 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000BA184(uint64_t a1, void *a2)
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
        v96 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v96 & 0x7F) << v5;
        if ((v96 & 0x80) == 0)
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
          v99 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v99 & 0x7F) << v16;
          if ((v99 & 0x80) == 0)
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
        goto LABEL_176;
      }

      if (v13 <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v100 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v100 & 0x7F) << v49;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v55 = 0;
                goto LABEL_147;
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

LABEL_147:
            *(a1 + 8) = v55;
            goto LABEL_176;
          }

          if (v13 != 2)
          {
LABEL_142:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_176;
          }

          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 36) |= 0x40u;
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
              LOBYTE(v29) = 0;
              goto LABEL_149;
            }
          }

          v29 = (v45 != 0) & ~[a2 hasError];
LABEL_149:
          v93 = 30;
        }

        else if (v13 == 3)
        {
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 36) |= 0x80u;
          while (1)
          {
            v106 = 0;
            v77 = [a2 position] + 1;
            if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
            {
              v79 = [a2 data];
              [v79 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v76 |= (v106 & 0x7F) << v74;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v11 = v75++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_161;
            }
          }

          v29 = (v76 != 0) & ~[a2 hasError];
LABEL_161:
          v93 = 31;
        }

        else if (v13 == 4)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 36) |= 0x100u;
          while (1)
          {
            v105 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v105 & 0x7F) << v56;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v11 = v57++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_151;
            }
          }

          v29 = (v58 != 0) & ~[a2 hasError];
LABEL_151:
          v93 = 32;
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 36) |= 0x200u;
          while (1)
          {
            v104 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v104 & 0x7F) << v30;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_159;
            }
          }

          v29 = (v32 != 0) & ~[a2 hasError];
LABEL_159:
          v93 = 33;
        }

        goto LABEL_175;
      }

      if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v86 = 0;
            v87 = 0;
            v88 = 0;
            *(a1 + 36) |= 0x400u;
            while (1)
            {
              v101 = 0;
              v89 = [a2 position] + 1;
              if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
              {
                v91 = [a2 data];
                [v91 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v88 |= (v101 & 0x7F) << v86;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              v11 = v87++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_174;
              }
            }

            v29 = (v88 != 0) & ~[a2 hasError];
LABEL_174:
            v93 = 34;
            goto LABEL_175;
          case 0xA:
            v68 = 0;
            v69 = 0;
            v70 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v98 = 0;
              v71 = [a2 position] + 1;
              if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
              {
                v73 = [a2 data];
                [v73 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v70 |= (v98 & 0x7F) << v68;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v11 = v69++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_157;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v70;
            }

LABEL_157:
            v94 = 16;
            break;
          case 0xB:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v97 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v97 & 0x7F) << v36;
              if ((v97 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_167;
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

LABEL_167:
            v94 = 20;
            break;
          default:
            goto LABEL_142;
        }
      }

      else
      {
        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v103 = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v64 |= (v103 & 0x7F) << v62;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v11 = v63++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_153;
              }
            }

            v29 = (v64 != 0) & ~[a2 hasError];
LABEL_153:
            v93 = 28;
          }

          else
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 36) |= 0x20u;
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
                LOBYTE(v29) = 0;
                goto LABEL_163;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_163:
            v93 = 29;
          }

LABEL_175:
          *(a1 + v93) = v29;
          goto LABEL_176;
        }

        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          v108 = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v108 & 0x7F) << v80;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v42 = 0;
            goto LABEL_171;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v82;
        }

LABEL_171:
        v94 = 24;
      }

      *(a1 + v94) = v42;
LABEL_176:
      v95 = [a2 position];
    }

    while (v95 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000BDF14(void *a1, void *a2)
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
        v210 = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v210 & 0x7F) << v6;
        if ((v210 & 0x80) == 0)
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
          v210 = 0;
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (v210 & 0x7F) << v17;
          if ((v210 & 0x80) == 0)
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

        v23 = [v4 hasError] ? 0 : v19;
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
            v3[31] |= 1u;
            while (1)
            {
              v210 = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v26 |= (v210 & 0x7F) << v24;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v12 = v25++ >= 9;
              if (v12)
              {
                v30 = 0;
                goto LABEL_352;
              }
            }

            if ([v4 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_352:
            *(v3 + 1) = v30;
            goto LABEL_406;
          case 2:
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v3[31] |= 0x200000u;
            while (1)
            {
              v210 = 0;
              v126 = [v4 position] + 1;
              if (v126 >= [v4 position] && (v127 = objc_msgSend(v4, "position") + 1, v127 <= objc_msgSend(v4, "length")))
              {
                v128 = [v4 data];
                [v128 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v125 |= (v210 & 0x7F) << v123;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v123 += 7;
              v12 = v124++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_356;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v125;
            }

LABEL_356:
            v205 = 26;
            goto LABEL_405;
          case 3:
            v93 = 0;
            v94 = 0;
            v95 = 0;
            v3[31] |= 0x100u;
            while (1)
            {
              v210 = 0;
              v96 = [v4 position] + 1;
              if (v96 >= [v4 position] && (v97 = objc_msgSend(v4, "position") + 1, v97 <= objc_msgSend(v4, "length")))
              {
                v98 = [v4 data];
                [v98 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v95 |= (v210 & 0x7F) << v93;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              v12 = v94++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_333;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v95;
            }

LABEL_333:
            v205 = 11;
            goto LABEL_405;
          case 4:
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v3[31] |= 0x80u;
            while (1)
            {
              v210 = 0;
              v153 = [v4 position] + 1;
              if (v153 >= [v4 position] && (v154 = objc_msgSend(v4, "position") + 1, v154 <= objc_msgSend(v4, "length")))
              {
                v155 = [v4 data];
                [v155 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v152 |= (v210 & 0x7F) << v150;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              v12 = v151++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_372;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v152;
            }

LABEL_372:
            v205 = 10;
            goto LABEL_405;
          case 5:
            v156 = 0;
            v157 = 0;
            v158 = 0;
            v3[31] |= 0x100000u;
            while (1)
            {
              v210 = 0;
              v159 = [v4 position] + 1;
              if (v159 >= [v4 position] && (v160 = objc_msgSend(v4, "position") + 1, v160 <= objc_msgSend(v4, "length")))
              {
                v161 = [v4 data];
                [v161 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v158 |= (v210 & 0x7F) << v156;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v156 += 7;
              v12 = v157++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_376;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v158;
            }

LABEL_376:
            v205 = 25;
            goto LABEL_405;
          case 6:
            v105 = 0;
            v106 = 0;
            v107 = 0;
            v3[31] |= 4u;
            while (1)
            {
              v210 = 0;
              v108 = [v4 position] + 1;
              if (v108 >= [v4 position] && (v109 = objc_msgSend(v4, "position") + 1, v109 <= objc_msgSend(v4, "length")))
              {
                v110 = [v4 data];
                [v110 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v107 |= (v210 & 0x7F) << v105;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v105 += 7;
              v12 = v106++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_341;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v107;
            }

LABEL_341:
            v205 = 5;
            goto LABEL_405;
          case 7:
            v129 = 0;
            v130 = 0;
            v131 = 0;
            v3[31] |= 0x20u;
            while (1)
            {
              v210 = 0;
              v132 = [v4 position] + 1;
              if (v132 >= [v4 position] && (v133 = objc_msgSend(v4, "position") + 1, v133 <= objc_msgSend(v4, "length")))
              {
                v134 = [v4 data];
                [v134 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v131 |= (v210 & 0x7F) << v129;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v129 += 7;
              v12 = v130++ >= 9;
              if (v12)
              {
                v135 = 0;
                goto LABEL_360;
              }
            }

            if ([v4 hasError])
            {
              v135 = 0;
            }

            else
            {
              v135 = v131;
            }

LABEL_360:
            v37 = -(v135 & 1) ^ (v135 >> 1);
            v205 = 8;
            goto LABEL_405;
          case 8:
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v3[31] |= 2u;
            while (1)
            {
              v210 = 0;
              v139 = [v4 position] + 1;
              if (v139 >= [v4 position] && (v140 = objc_msgSend(v4, "position") + 1, v140 <= objc_msgSend(v4, "length")))
              {
                v141 = [v4 data];
                [v141 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v138 |= (v210 & 0x7F) << v136;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              v12 = v137++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_364;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v138;
            }

LABEL_364:
            v205 = 4;
            goto LABEL_405;
          case 9:
            v168 = 0;
            v169 = 0;
            v170 = 0;
            v3[31] |= 0x800000u;
            while (1)
            {
              v210 = 0;
              v171 = [v4 position] + 1;
              if (v171 >= [v4 position] && (v172 = objc_msgSend(v4, "position") + 1, v172 <= objc_msgSend(v4, "length")))
              {
                v173 = [v4 data];
                [v173 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v170 |= (v210 & 0x7F) << v168;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v168 += 7;
              v12 = v169++ >= 9;
              if (v12)
              {
                v174 = 0;
                goto LABEL_384;
              }
            }

            if ([v4 hasError])
            {
              v174 = 0;
            }

            else
            {
              v174 = v170;
            }

LABEL_384:
            v37 = -(v174 & 1) ^ (v174 >> 1);
            v205 = 28;
            goto LABEL_405;
          case 10:
            v162 = 0;
            v163 = 0;
            v164 = 0;
            v3[31] |= 0x10u;
            while (1)
            {
              v210 = 0;
              v165 = [v4 position] + 1;
              if (v165 >= [v4 position] && (v166 = objc_msgSend(v4, "position") + 1, v166 <= objc_msgSend(v4, "length")))
              {
                v167 = [v4 data];
                [v167 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v164 |= (v210 & 0x7F) << v162;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v162 += 7;
              v12 = v163++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_380;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v164;
            }

LABEL_380:
            v205 = 7;
            goto LABEL_405;
          case 11:
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v3[31] |= 0x10000000u;
            while (1)
            {
              v210 = 0;
              v66 = [v4 position] + 1;
              if (v66 >= [v4 position] && (v67 = objc_msgSend(v4, "position") + 1, v67 <= objc_msgSend(v4, "length")))
              {
                v68 = [v4 data];
                [v68 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v65 |= (v210 & 0x7F) << v63;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v12 = v64++ >= 9;
              if (v12)
              {
                LOBYTE(v50) = 0;
                goto LABEL_315;
              }
            }

            v50 = (v65 != 0) & ~[v4 hasError];
LABEL_315:
            v206 = 123;
            goto LABEL_344;
          case 12:
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v3[31] |= 0x8000000u;
            while (1)
            {
              v210 = 0;
              v114 = [v4 position] + 1;
              if (v114 >= [v4 position] && (v115 = objc_msgSend(v4, "position") + 1, v115 <= objc_msgSend(v4, "length")))
              {
                v116 = [v4 data];
                [v116 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v113 |= (v210 & 0x7F) << v111;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v111 += 7;
              v12 = v112++ >= 9;
              if (v12)
              {
                LOBYTE(v50) = 0;
                goto LABEL_343;
              }
            }

            v50 = (v113 != 0) & ~[v4 hasError];
LABEL_343:
            v206 = 122;
            goto LABEL_344;
          case 13:
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v3[31] |= 0x4000000u;
            while (1)
            {
              v210 = 0;
              v84 = [v4 position] + 1;
              if (v84 >= [v4 position] && (v85 = objc_msgSend(v4, "position") + 1, v85 <= objc_msgSend(v4, "length")))
              {
                v86 = [v4 data];
                [v86 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v83 |= (v210 & 0x7F) << v81;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              v12 = v82++ >= 9;
              if (v12)
              {
                LOBYTE(v50) = 0;
                goto LABEL_325;
              }
            }

            v50 = (v83 != 0) & ~[v4 hasError];
LABEL_325:
            v206 = 121;
            goto LABEL_344;
          case 14:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v3[31] |= 0x2000000u;
            while (1)
            {
              v210 = 0;
              v47 = [v4 position] + 1;
              if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
              {
                v49 = [v4 data];
                [v49 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v46 |= (v210 & 0x7F) << v44;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v12 = v45++ >= 9;
              if (v12)
              {
                LOBYTE(v50) = 0;
                goto LABEL_305;
              }
            }

            v50 = (v46 != 0) & ~[v4 hasError];
LABEL_305:
            v206 = 120;
LABEL_344:
            *(v3 + v206) = v50;
            goto LABEL_406;
          case 15:
            v142 = PBReaderReadData();
            v143 = *(v3 + 6);
            *(v3 + 6) = v142;

            goto LABEL_406;
          case 20:
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v3[31] |= 0x40000u;
            while (1)
            {
              v210 = 0;
              v147 = [v4 position] + 1;
              if (v147 >= [v4 position] && (v148 = objc_msgSend(v4, "position") + 1, v148 <= objc_msgSend(v4, "length")))
              {
                v149 = [v4 data];
                [v149 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v146 |= (v210 & 0x7F) << v144;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v144 += 7;
              v12 = v145++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_368;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v146;
            }

LABEL_368:
            v205 = 23;
            goto LABEL_405;
          case 21:
            v181 = 0;
            v182 = 0;
            v183 = 0;
            v3[31] |= 0x10000u;
            while (1)
            {
              v210 = 0;
              v184 = [v4 position] + 1;
              if (v184 >= [v4 position] && (v185 = objc_msgSend(v4, "position") + 1, v185 <= objc_msgSend(v4, "length")))
              {
                v186 = [v4 data];
                [v186 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v183 |= (v210 & 0x7F) << v181;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v181 += 7;
              v12 = v182++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_392;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v183;
            }

LABEL_392:
            v205 = 21;
            goto LABEL_405;
          case 22:
            v175 = 0;
            v176 = 0;
            v177 = 0;
            v3[31] |= 0x20000u;
            while (1)
            {
              v210 = 0;
              v178 = [v4 position] + 1;
              if (v178 >= [v4 position] && (v179 = objc_msgSend(v4, "position") + 1, v179 <= objc_msgSend(v4, "length")))
              {
                v180 = [v4 data];
                [v180 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v177 |= (v210 & 0x7F) << v175;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v175 += 7;
              v12 = v176++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_388;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v177;
            }

LABEL_388:
            v205 = 22;
            goto LABEL_405;
          case 23:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v3[31] |= 0x8000u;
            while (1)
            {
              v210 = 0;
              v34 = [v4 position] + 1;
              if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
              {
                v36 = [v4 data];
                [v36 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v33 |= (v210 & 0x7F) << v31;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v12 = v32++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_299;
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

LABEL_299:
            v205 = 20;
            goto LABEL_405;
          case 24:
            v87 = 0;
            v88 = 0;
            v89 = 0;
            v3[31] |= 0x800u;
            while (1)
            {
              v210 = 0;
              v90 = [v4 position] + 1;
              if (v90 >= [v4 position] && (v91 = objc_msgSend(v4, "position") + 1, v91 <= objc_msgSend(v4, "length")))
              {
                v92 = [v4 data];
                [v92 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v89 |= (v210 & 0x7F) << v87;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              v12 = v88++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_329;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v89;
            }

LABEL_329:
            v205 = 16;
            goto LABEL_405;
          case 25:
            v187 = 0;
            v188 = 0;
            v189 = 0;
            v3[31] |= 0x200u;
            while (1)
            {
              v210 = 0;
              v190 = [v4 position] + 1;
              if (v190 >= [v4 position] && (v191 = objc_msgSend(v4, "position") + 1, v191 <= objc_msgSend(v4, "length")))
              {
                v192 = [v4 data];
                [v192 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v189 |= (v210 & 0x7F) << v187;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v187 += 7;
              v12 = v188++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_396;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v189;
            }

LABEL_396:
            v205 = 14;
            goto LABEL_405;
          case 26:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v3[31] |= 0x400u;
            while (1)
            {
              v210 = 0;
              v41 = [v4 position] + 1;
              if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
              {
                v43 = [v4 data];
                [v43 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v40 |= (v210 & 0x7F) << v38;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v12 = v39++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_303;
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

LABEL_303:
            v205 = 15;
            goto LABEL_405;
          case 27:
            v75 = 0;
            v76 = 0;
            v77 = 0;
            v3[31] |= 0x1000000u;
            while (1)
            {
              v210 = 0;
              v78 = [v4 position] + 1;
              if (v78 >= [v4 position] && (v79 = objc_msgSend(v4, "position") + 1, v79 <= objc_msgSend(v4, "length")))
              {
                v80 = [v4 data];
                [v80 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v77 |= (v210 & 0x7F) << v75;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v12 = v76++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_323;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v77;
            }

LABEL_323:
            v205 = 29;
            goto LABEL_405;
          case 28:
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v3[31] |= 8u;
            while (1)
            {
              v210 = 0;
              v60 = [v4 position] + 1;
              if (v60 >= [v4 position] && (v61 = objc_msgSend(v4, "position") + 1, v61 <= objc_msgSend(v4, "length")))
              {
                v62 = [v4 data];
                [v62 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v59 |= (v210 & 0x7F) << v57;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v12 = v58++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_313;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v59;
            }

LABEL_313:
            v205 = 6;
            goto LABEL_405;
          case 30:
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v3[31] |= 0x1000u;
            while (1)
            {
              v210 = 0;
              v120 = [v4 position] + 1;
              if (v120 >= [v4 position] && (v121 = objc_msgSend(v4, "position") + 1, v121 <= objc_msgSend(v4, "length")))
              {
                v122 = [v4 data];
                [v122 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v119 |= (v210 & 0x7F) << v117;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v117 += 7;
              v12 = v118++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_348;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v119;
            }

LABEL_348:
            v205 = 17;
            goto LABEL_405;
          case 31:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v3[31] |= 0x2000u;
            while (1)
            {
              v210 = 0;
              v54 = [v4 position] + 1;
              if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
              {
                v56 = [v4 data];
                [v56 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v53 |= (v210 & 0x7F) << v51;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v12 = v52++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_309;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v53;
            }

LABEL_309:
            v205 = 18;
            goto LABEL_405;
          case 32:
            v199 = 0;
            v200 = 0;
            v201 = 0;
            v3[31] |= 0x4000u;
            while (1)
            {
              v210 = 0;
              v202 = [v4 position] + 1;
              if (v202 >= [v4 position] && (v203 = objc_msgSend(v4, "position") + 1, v203 <= objc_msgSend(v4, "length")))
              {
                v204 = [v4 data];
                [v204 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v201 |= (v210 & 0x7F) << v199;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v199 += 7;
              v12 = v200++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_404;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v201;
            }

LABEL_404:
            v205 = 19;
            goto LABEL_405;
          case 33:
            v193 = 0;
            v194 = 0;
            v195 = 0;
            v3[31] |= 0x40u;
            while (1)
            {
              v210 = 0;
              v196 = [v4 position] + 1;
              if (v196 >= [v4 position] && (v197 = objc_msgSend(v4, "position") + 1, v197 <= objc_msgSend(v4, "length")))
              {
                v198 = [v4 data];
                [v198 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v195 |= (v210 & 0x7F) << v193;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v193 += 7;
              v12 = v194++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_400;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v195;
            }

LABEL_400:
            v205 = 9;
            goto LABEL_405;
          case 34:
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v3[31] |= 0x400000u;
            while (1)
            {
              v210 = 0;
              v72 = [v4 position] + 1;
              if (v72 >= [v4 position] && (v73 = objc_msgSend(v4, "position") + 1, v73 <= objc_msgSend(v4, "length")))
              {
                v74 = [v4 data];
                [v74 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v71 |= (v210 & 0x7F) << v69;
              if ((v210 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v12 = v70++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_319;
              }
            }

            if ([v4 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v71;
            }

LABEL_319:
            v205 = 27;
            goto LABEL_405;
          case 35:
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v3[31] |= 0x80000u;
            break;
          default:
            if (PBReaderSkipValueWithTag())
            {
              goto LABEL_406;
            }

            v209 = 0;
            goto LABEL_408;
        }

        while (1)
        {
          v210 = 0;
          v102 = [v4 position] + 1;
          if (v102 >= [v4 position] && (v103 = objc_msgSend(v4, "position") + 1, v103 <= objc_msgSend(v4, "length")))
          {
            v104 = [v4 data];
            [v104 getBytes:&v210 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v101 |= (v210 & 0x7F) << v99;
          if ((v210 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_337;
          }
        }

        v37 = [v4 hasError] ? 0 : v101;
LABEL_337:
        v205 = 24;
LABEL_405:
        v3[v205] = v37;
      }

LABEL_406:
      v207 = [v4 position];
    }

    while (v207 < [v4 length]);
  }

  v209 = [v4 hasError] ^ 1;
LABEL_408:

  return v209;
}

uint64_t sub_1000C354C(uint64_t a1, void *a2)
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
      LOBYTE(v121) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v121 & 0x7F) << v5;
      if ((v121 & 0x80) == 0)
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
        LOBYTE(v121) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v121 & 0x7F) << v16;
        if ((v121 & 0x80) == 0)
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
      goto LABEL_232;
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
          LOBYTE(v121) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v121 & 0x7F) << v23;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
LABEL_205:
            *(a1 + 8) = v29;
            goto LABEL_232;
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

        goto LABEL_205;
      case 3:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 92) |= 8u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v121 & 0x7F) << v56;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_193;
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

LABEL_193:
        v117 = 24;
        goto LABEL_231;
      case 4:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 92) |= 0x40u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v121 & 0x7F) << v75;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
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
          v36 = v77;
        }

LABEL_209:
        v117 = 36;
        goto LABEL_231;
      case 5:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 92) |= 0x400u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v121 & 0x7F) << v69;
          if ((v121 & 0x80) == 0)
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
        v117 = 72;
        goto LABEL_231;
      case 6:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 92) |= 0x2000u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v121 & 0x7F) << v44;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_185;
          }
        }

        v43 = (v46 != 0) & ~[a2 hasError];
LABEL_185:
        v118 = 90;
        goto LABEL_226;
      case 8:
        v62 = objc_alloc_init(RachConnInfo);
        objc_storeStrong((a1 + 64), v62);
        v121 = 0;
        v122 = 0;
        if (!PBReaderPlaceMark() || !sub_100004F6C(v62, a2))
        {
          goto LABEL_234;
        }

        goto LABEL_123;
      case 9:
        v62 = objc_alloc_init(LteChannelInfo);
        [a1 addLteChanInfo:v62];
        v121 = 0;
        v122 = 0;
        if (!PBReaderPlaceMark() || !sub_10000A4E8(v62, a2))
        {
          goto LABEL_234;
        }

        goto LABEL_123;
      case 10:
        v62 = objc_alloc_init(UmtsChannelInfo);
        [a1 addUmtsChanInfo:v62];
        v121 = 0;
        v122 = 0;
        if (PBReaderPlaceMark() && sub_10006574C(v62, a2))
        {
LABEL_123:
          PBReaderRecallMark();

LABEL_232:
          v119 = [a2 position];
          if (v119 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_234:

        return 0;
      case 11:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 92) |= 0x800u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v121 & 0x7F) << v99;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v11 = v100++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_223;
          }
        }

        v43 = (v101 != 0) & ~[a2 hasError];
LABEL_223:
        v118 = 88;
        goto LABEL_226;
      case 12:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        *(a1 + 92) |= 0x10u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v121 & 0x7F) << v93;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v11 = v94++ >= 9;
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
          v36 = v95;
        }

LABEL_221:
        v117 = 28;
        goto LABEL_231;
      case 13:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 92) |= 0x4000u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v121 & 0x7F) << v37;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_183;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_183:
        v118 = 91;
        goto LABEL_226;
      case 14:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 92) |= 0x20u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v121 & 0x7F) << v63;
          if ((v121 & 0x80) == 0)
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
        v117 = 32;
        goto LABEL_231;
      case 16:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 92) |= 4u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v121 & 0x7F) << v50;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
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
          v36 = v52;
        }

LABEL_189:
        v117 = 20;
        goto LABEL_231;
      case 17:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 92) |= 2u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v121 & 0x7F) << v30;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
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
          v36 = v32;
        }

LABEL_181:
        v117 = 16;
        goto LABEL_231;
      case 18:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 92) |= 0x200u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v121 & 0x7F) << v81;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v11 = v82++ >= 9;
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
          v36 = v83;
        }

LABEL_213:
        v117 = 56;
        goto LABEL_231;
      case 19:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 92) |= 0x80u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v121 & 0x7F) << v87;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
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
          v36 = v89;
        }

LABEL_217:
        v117 = 48;
        goto LABEL_231;
      case 20:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 92) |= 0x100u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v121 & 0x7F) << v111;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_230;
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

LABEL_230:
        v117 = 52;
LABEL_231:
        *(a1 + v117) = v36;
        goto LABEL_232;
      case 21:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 92) |= 0x1000u;
        while (1)
        {
          LOBYTE(v121) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v121 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v121 & 0x7F) << v105;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_225;
          }
        }

        v43 = (v107 != 0) & ~[a2 hasError];
LABEL_225:
        v118 = 89;
LABEL_226:
        *(a1 + v118) = v43;
        goto LABEL_232;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_232;
        }

        return 0;
    }
  }
}

uint64_t sub_1000C6434(uint64_t a1, void *a2)
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
        LOBYTE(v34) = 0;
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
          LOBYTE(v34) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34 & 0x7F) << v16;
          if ((v34 & 0x80) == 0)
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
        goto LABEL_61;
      }

      if (v13 <= 6)
      {
        if (v13 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v34) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_60;
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

LABEL_60:
          *(a1 + 32) = v31;
          goto LABEL_61;
        }

        if (v13 == 4)
        {
          v23 = objc_alloc_init(CellConfig);
          [a1 addCell:v23];
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !sub_100096894(v23, a2))
          {
LABEL_63:

            return 0;
          }

          goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v23 = objc_alloc_init(CellMetric);
            v24 = 40;
            goto LABEL_43;
          case 8:
            v23 = objc_alloc_init(CellMetric);
            v24 = 24;
            goto LABEL_43;
          case 9:
            v23 = objc_alloc_init(CellMetric);
            v24 = 8;
LABEL_43:
            objc_storeStrong((a1 + v24), v23);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !sub_1000DDFA8(v23, a2))
            {
              goto LABEL_63;
            }

LABEL_45:
            PBReaderRecallMark();

            goto LABEL_61;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000C7994(uint64_t a1, void *a2)
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

uint64_t sub_1000C8C70(uint64_t a1, void *a2)
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
        v31 = *(a1 + 8);
        *(a1 + 8) = v30;
      }

      else if (v13 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 20) |= 1u;
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
        *(a1 + 16) = v29;
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

uint64_t sub_1000CA5EC(uint64_t a1, void *a2)
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
      LOBYTE(v132) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v132 & 0x7F) << v5;
      if ((v132 & 0x80) == 0)
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
        LOBYTE(v132) = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v132 & 0x7F) << v17;
        if ((v132 & 0x80) == 0)
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
      goto LABEL_252;
    }

    switch(v14)
    {
      case 1:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 128) |= 1u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v132 & 0x7F) << v24;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
LABEL_208:
            *(a1 + 32) = v30;
            goto LABEL_252;
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

        goto LABEL_208;
      case 2:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 128) |= 0x20u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v132 & 0x7F) << v66;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v11 = v67++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_200;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v68;
        }

LABEL_200:
        v124 = 80;
        goto LABEL_251;
      case 3:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 128) |= 8u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v132 & 0x7F) << v78;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v11 = v79++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_212;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v80;
        }

LABEL_212:
        v124 = 48;
        goto LABEL_251;
      case 4:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 128) |= 4u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v132 & 0x7F) << v72;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_204;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v74;
        }

LABEL_204:
        v124 = 44;
        goto LABEL_251;
      case 5:
        if (v13 == 2)
        {
          v132 = 0;
          v133 = 0;
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
              v134 = 0;
              v63 = [a2 position] + 1;
              if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:&v134 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v62 |= (v134 & 0x7F) << v60;
              if ((v134 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v11 = v61++ >= 9;
              if (v11)
              {
                goto LABEL_97;
              }
            }

            [a2 hasError];
LABEL_97:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v125 = 0;
          v126 = 0;
          v127 = 0;
          while (1)
          {
            LOBYTE(v132) = 0;
            v128 = [a2 position] + 1;
            if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
            {
              v130 = [a2 data];
              [v130 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v127 |= (v132 & 0x7F) << v125;
            if ((v132 & 0x80) == 0)
            {
              break;
            }

            v125 += 7;
            v11 = v126++ >= 9;
            if (v11)
            {
              goto LABEL_255;
            }
          }

          [a2 hasError];
LABEL_255:
          PBRepeatedUInt32Add();
        }

        goto LABEL_252;
      case 6:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 128) |= 0x40u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v132 & 0x7F) << v52;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_196;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v54;
        }

LABEL_196:
        v124 = 84;
        goto LABEL_251;
      case 7:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 128) |= 2u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v132 & 0x7F) << v105;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_228;
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

LABEL_228:
        v124 = 40;
        goto LABEL_251;
      case 8:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 128) |= 0x10u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v132 & 0x7F) << v111;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_232;
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

LABEL_232:
        v124 = 64;
        goto LABEL_251;
      case 9:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 128) |= 0x800u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v132 & 0x7F) << v45;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v51 = 0;
            goto LABEL_192;
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

LABEL_192:
        v37 = -(v51 & 1) ^ (v51 >> 1);
        v124 = 104;
        goto LABEL_251;
      case 10:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 128) |= 0x400u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v132 & 0x7F) << v98;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v104 = 0;
            goto LABEL_224;
          }
        }

        if ([a2 hasError])
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

LABEL_224:
        v37 = -(v104 & 1) ^ (v104 >> 1);
        v124 = 100;
        goto LABEL_251;
      case 11:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 128) |= 0x200u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v132 & 0x7F) << v84;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            v90 = 0;
            goto LABEL_216;
          }
        }

        if ([a2 hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_216:
        v37 = -(v90 & 1) ^ (v90 >> 1);
        v124 = 96;
        goto LABEL_251;
      case 12:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 128) |= 0x100u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v132 & 0x7F) << v117;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
          if (v11)
          {
            v123 = 0;
            goto LABEL_236;
          }
        }

        if ([a2 hasError])
        {
          v123 = 0;
        }

        else
        {
          v123 = v119;
        }

LABEL_236:
        v37 = -(v123 & 1) ^ (v123 >> 1);
        v124 = 92;
        goto LABEL_251;
      case 13:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 128) |= 0x1000u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v132 & 0x7F) << v91;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v97 = 0;
            goto LABEL_220;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_220:
        v37 = -(v97 & 1) ^ (v97 >> 1);
        v124 = 108;
        goto LABEL_251;
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
        goto LABEL_51;
      case 21:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 128) |= 0x80u;
        while (1)
        {
          LOBYTE(v132) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v132 & 0x7F) << v39;
          if ((v132 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_188;
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

LABEL_188:
        v124 = 88;
        goto LABEL_251;
      case 22:
        v38 = objc_alloc_init(EutraFreqInfo);
        [a1 addEutraPrioInfo:v38];
        v132 = 0;
        v133 = 0;
        if (!PBReaderPlaceMark() || !sub_10001798C(v38, a2))
        {
          goto LABEL_258;
        }

        goto LABEL_184;
      case 23:
        v38 = objc_alloc_init(UtraFreqInfo);
        [a1 addUtraPrioInfo:v38];
        v132 = 0;
        v133 = 0;
        if (PBReaderPlaceMark() && sub_10014E45C(v38, a2))
        {
          goto LABEL_184;
        }

        goto LABEL_258;
      case 24:
        v38 = objc_alloc_init(GsmFreqInfo);
        [a1 addGsmPrioInfo:v38];
        v132 = 0;
        v133 = 0;
        if (PBReaderPlaceMark() && sub_10000D340(v38, a2))
        {
LABEL_184:
          PBReaderRecallMark();

LABEL_252:
          v131 = [a2 position];
          if (v131 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_258:

        return 0;
      default:
        if (v14 == 127)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 128) |= 0x2000u;
          while (1)
          {
            LOBYTE(v132) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v132 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v132 & 0x7F) << v31;
            if ((v132 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_250;
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

LABEL_250:
          v124 = 112;
LABEL_251:
          *(a1 + v124) = v37;
        }

        else
        {
LABEL_51:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_252;
    }
  }
}