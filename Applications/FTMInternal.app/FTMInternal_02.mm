uint64_t sub_10005A370(uint64_t a1, void *a2)
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
        LOBYTE(v84) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v84 & 0x7F) << v5;
        if ((v84 & 0x80) == 0)
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
          LOBYTE(v84) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v84 & 0x7F) << v17;
          if ((v84 & 0x80) == 0)
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
        goto LABEL_138;
      }

      if (v14 <= 3)
      {
        switch(v14)
        {
          case 1:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 76) |= 0x10u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v84 & 0x7F) << v45;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
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
              v30 = v47;
            }

LABEL_120:
            v70 = 72;
            goto LABEL_137;
          case 2:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 76) |= 8u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v84 & 0x7F) << v64;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_136;
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

LABEL_136:
            v70 = 68;
            goto LABEL_137;
          case 3:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v84 & 0x7F) << v31;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_132;
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

LABEL_132:
            v70 = 64;
            goto LABEL_137;
        }
      }

      else
      {
        if (v14 <= 5)
        {
          if (v14 == 4)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 76) |= 1u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v84 & 0x7F) << v51;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
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
              v30 = v53;
            }

LABEL_124:
            v70 = 56;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v84 & 0x7F) << v24;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_128;
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

LABEL_128:
            v70 = 60;
          }

LABEL_137:
          *(a1 + v70) = v30;
          goto LABEL_138;
        }

        if (v14 == 6)
        {
          if (v13 != 2)
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            while (1)
            {
              LOBYTE(v84) = 0;
              v75 = [a2 position] + 1;
              if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
              {
                v77 = [a2 data];
                [v77 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v74 |= (v84 & 0x7F) << v72;
              if ((v84 & 0x80) == 0)
              {
                goto LABEL_158;
              }

              v72 += 7;
              v11 = v73++ >= 9;
              if (v11)
              {
                goto LABEL_159;
              }
            }
          }

          v84 = 0;
          v85 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v57 = [a2 position];
            if (v57 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_116;
            }

            v58 = 0;
            v59 = 0;
            v60 = 0;
            while (1)
            {
              v86 = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v86 & 0x7F) << v58;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v11 = v59++ >= 9;
              if (v11)
              {
                goto LABEL_106;
              }
            }

            [a2 hasError];
LABEL_106:
            PBRepeatedUInt32Add();
          }
        }

        if (v14 == 7)
        {
          if (v13 != 2)
          {
            v78 = 0;
            v79 = 0;
            v80 = 0;
            while (1)
            {
              LOBYTE(v84) = 0;
              v81 = [a2 position] + 1;
              if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
              {
                v83 = [a2 data];
                [v83 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v80 |= (v84 & 0x7F) << v78;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              v11 = v79++ >= 9;
              if (v11)
              {
                goto LABEL_159;
              }
            }

LABEL_158:
            [a2 hasError];
LABEL_159:
            PBRepeatedUInt32Add();
            goto LABEL_138;
          }

          v84 = 0;
          v85 = 0;
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
              break;
            }

            v39 = 0;
            v40 = 0;
            v41 = 0;
            while (1)
            {
              v86 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v86 & 0x7F) << v39;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                goto LABEL_71;
              }
            }

            [a2 hasError];
LABEL_71:
            PBRepeatedUInt32Add();
          }

LABEL_116:
          PBReaderRecallMark();
          goto LABEL_138;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_138:
      v71 = [a2 position];
    }

    while (v71 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10005BF68(_BYTE *a1, void *a2)
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
        goto LABEL_66;
      }

      switch(v13)
      {
        case 3:
          v36 = objc_alloc_init(PerDrbConfig);
          [a1 addPerDrbConfig:v36];
          v40[0] = 0;
          v40[1] = 0;
          if (!PBReaderPlaceMark() || !sub_100008514(v36, a2))
          {

            return 0;
          }

          PBReaderRecallMark();

          break;
        case 2:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          a1[24] |= 1u;
          while (1)
          {
            LOBYTE(v40[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v40[0] & 0x7F) << v30;
            if ((v40[0] & 0x80) == 0)
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
          goto LABEL_65;
        case 1:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          a1[24] |= 2u;
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
              goto LABEL_64;
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

LABEL_64:
          v37 = 12;
LABEL_65:
          *&a1[v37] = v29;
          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          break;
      }

LABEL_66:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10005D598(uint64_t a1, void *a2)
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
      LOBYTE(v95) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v95 & 0x7F) << v5;
      if ((v95 & 0x80) == 0)
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
        LOBYTE(v95) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v95 & 0x7F) << v16;
        if ((v95 & 0x80) == 0)
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
      goto LABEL_184;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 76) |= 1u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v95 & 0x7F) << v23;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
LABEL_162:
            *(a1 + 8) = v29;
            goto LABEL_184;
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

        goto LABEL_162;
      case 2:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 76) |= 2u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v95 & 0x7F) << v68;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v11 = v69++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_170;
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

LABEL_170:
        v92 = 16;
        goto LABEL_183;
      case 3:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 76) |= 4u;
        while (1)
        {
          LOBYTE(v95) = 0;
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
            v36 = 0;
            goto LABEL_166;
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

LABEL_166:
        v92 = 20;
        goto LABEL_183;
      case 4:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 76) |= 0x20u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v95 & 0x7F) << v56;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_158;
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

LABEL_158:
        v92 = 44;
        goto LABEL_183;
      case 5:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 76) |= 0x400u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v95 & 0x7F) << v37;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_146;
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

LABEL_146:
        v92 = 72;
        goto LABEL_183;
      case 7:
        v49 = objc_alloc_init(Mib);
        objc_storeStrong((a1 + 32), v49);
        v95 = 0;
        v96 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D184C(v49, a2))
        {
          goto LABEL_186;
        }

        goto LABEL_111;
      case 9:
        v49 = objc_alloc_init(Sib);
        [a1 addSib:v49];
        v95 = 0;
        v96 = 0;
        if (PBReaderPlaceMark() && sub_10000FC48(v49, a2))
        {
LABEL_111:
          PBReaderRecallMark();

LABEL_184:
          v93 = [a2 position];
          if (v93 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_186:

        return 0;
      case 15:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 76) |= 0x100u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v95 & 0x7F) << v74;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_174;
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

LABEL_174:
        v92 = 64;
        goto LABEL_183;
      case 18:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 76) |= 8u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v95 & 0x7F) << v86;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_182;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v88;
        }

LABEL_182:
        v92 = 24;
        goto LABEL_183;
      case 19:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 76) |= 0x200u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v95 & 0x7F) << v80;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_178;
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

LABEL_178:
        v92 = 68;
        goto LABEL_183;
      case 20:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 76) |= 0x40u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v95 & 0x7F) << v30;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_142;
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

LABEL_142:
        v92 = 48;
        goto LABEL_183;
      case 21:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 76) |= 0x80u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v95 & 0x7F) << v50;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_154;
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

LABEL_154:
        v92 = 52;
        goto LABEL_183;
      case 22:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 76) |= 0x10u;
        while (1)
        {
          LOBYTE(v95) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v95 & 0x7F) << v43;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_150;
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

LABEL_150:
        v92 = 40;
LABEL_183:
        *(a1 + v92) = v36;
        goto LABEL_184;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_184;
        }

        return 0;
    }
  }
}

uint64_t sub_10005F7CC(uint64_t a1, void *a2)
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
            goto LABEL_34;
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

LABEL_34:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 == 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v42 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v42 & 0x7F) << v32;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_62;
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

LABEL_62:
          v39 = 20;
        }

        else
        {
          if (v13 != 3)
          {
            if (v13 == 1)
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

            goto LABEL_64;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v43 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v43 & 0x7F) << v25;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_58;
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

LABEL_58:
          v39 = 16;
        }

        *(a1 + v39) = v31;
      }

LABEL_64:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000606D0(uint64_t a1, void *a2)
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
          v62 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v62 & 0x7F) << v16;
          if ((v62 & 0x80) == 0)
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
            *(a1 + 28) |= 2u;
            while (1)
            {
              v60 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v60 & 0x7F) << v30;
              if ((v60 & 0x80) == 0)
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
            v55 = 12;
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
              *(a1 + 28) |= 0x10u;
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
              v55 = 24;
              break;
            case 4:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 28) |= 8u;
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
              v55 = 20;
              break;
            case 5:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 28) |= 4u;
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
              v55 = 16;
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

uint64_t sub_1000616B8(uint64_t a1, void *a2)
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

uint64_t sub_100062CB8(uint64_t a1, void *a2)
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
      LOBYTE(v139) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v139 & 0x7F) << v5;
      if ((v139 & 0x80) == 0)
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
        LOBYTE(v139) = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v139 & 0x7F) << v17;
        if ((v139 & 0x80) == 0)
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
      goto LABEL_253;
    }

    switch(v14)
    {
      case 1:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 180) |= 1u;
        while (1)
        {
          LOBYTE(v139) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v139 & 0x7F) << v24;
          if ((v139 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
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
          v30 = v26;
        }

LABEL_196:
        *(a1 + 128) = v30;
        goto LABEL_253;
      case 2:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 180) |= 4u;
        while (1)
        {
          LOBYTE(v139) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v139 & 0x7F) << v79;
          if ((v139 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_204;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v81;
        }

LABEL_204:
        v107 = 148;
        goto LABEL_205;
      case 3:
        if (v13 != 2)
        {
          v114 = 0;
          v115 = 0;
          v116 = 0;
          while (1)
          {
            LOBYTE(v139) = 0;
            v117 = [a2 position] + 1;
            if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
            {
              v119 = [a2 data];
              [v119 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v116 |= (v139 & 0x7F) << v114;
            if ((v139 & 0x80) == 0)
            {
              goto LABEL_251;
            }

            v114 += 7;
            v11 = v115++ >= 9;
            if (v11)
            {
              goto LABEL_252;
            }
          }
        }

        v139 = 0;
        v140 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v72 = [a2 position];
          if (v72 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_174;
          }

          v73 = 0;
          v74 = 0;
          v75 = 0;
          while (1)
          {
            v141 = 0;
            v76 = [a2 position] + 1;
            if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
            {
              v78 = [a2 data];
              [v78 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v75 |= (v141 & 0x7F) << v73;
            if ((v141 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v11 = v74++ >= 9;
            if (v11)
            {
              goto LABEL_116;
            }
          }

          [a2 hasError];
LABEL_116:
          PBRepeatedUInt32Add();
        }

      case 5:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 180) |= 0x20u;
        while (1)
        {
          LOBYTE(v139) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v139 & 0x7F) << v66;
          if ((v139 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v11 = v67++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_200;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v68;
        }

LABEL_200:
        v107 = 172;
        goto LABEL_205;
      case 6:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 180) |= 2u;
        while (1)
        {
          LOBYTE(v139) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v139 & 0x7F) << v40;
          if ((v139 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_184;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v42;
        }

LABEL_184:
        v107 = 144;
        goto LABEL_205;
      case 10:
        if (v13 != 2)
        {
          v108 = 0;
          v109 = 0;
          v110 = 0;
          while (1)
          {
            LOBYTE(v139) = 0;
            v111 = [a2 position] + 1;
            if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
            {
              v113 = [a2 data];
              [v113 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v110 |= (v139 & 0x7F) << v108;
            if ((v139 & 0x80) == 0)
            {
              goto LABEL_251;
            }

            v108 += 7;
            v11 = v109++ >= 9;
            if (v11)
            {
              goto LABEL_252;
            }
          }
        }

        v139 = 0;
        v140 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v53 = [a2 position];
          if (v53 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_174;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          while (1)
          {
            v141 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v141 & 0x7F) << v54;
            if ((v141 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              goto LABEL_83;
            }
          }

          [a2 hasError];
LABEL_83:
          PBRepeatedUInt32Add();
        }

      case 11:
        if (v13 != 2)
        {
          v120 = 0;
          v121 = 0;
          v122 = 0;
          while (1)
          {
            LOBYTE(v139) = 0;
            v123 = [a2 position] + 1;
            if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
            {
              v125 = [a2 data];
              [v125 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v122 |= (v139 & 0x7F) << v120;
            if ((v139 & 0x80) == 0)
            {
              goto LABEL_251;
            }

            v120 += 7;
            v11 = v121++ >= 9;
            if (v11)
            {
              goto LABEL_252;
            }
          }
        }

        v139 = 0;
        v140 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v85 = [a2 position];
          if (v85 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_174;
          }

          v86 = 0;
          v87 = 0;
          v88 = 0;
          while (1)
          {
            v141 = 0;
            v89 = [a2 position] + 1;
            if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
            {
              v91 = [a2 data];
              [v91 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v88 |= (v141 & 0x7F) << v86;
            if ((v141 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            v11 = v87++ >= 9;
            if (v11)
            {
              goto LABEL_140;
            }
          }

          [a2 hasError];
LABEL_140:
          PBRepeatedUInt32Add();
        }

      case 12:
        if (v13 != 2)
        {
          v126 = 0;
          v127 = 0;
          v128 = 0;
          while (1)
          {
            LOBYTE(v139) = 0;
            v129 = [a2 position] + 1;
            if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
            {
              v131 = [a2 data];
              [v131 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v128 |= (v139 & 0x7F) << v126;
            if ((v139 & 0x80) == 0)
            {
              goto LABEL_251;
            }

            v126 += 7;
            v11 = v127++ >= 9;
            if (v11)
            {
              goto LABEL_252;
            }
          }
        }

        v139 = 0;
        v140 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v92 = [a2 position];
          if (v92 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_174;
          }

          v93 = 0;
          v94 = 0;
          v95 = 0;
          while (1)
          {
            v141 = 0;
            v96 = [a2 position] + 1;
            if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
            {
              v98 = [a2 data];
              [v98 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v95 |= (v141 & 0x7F) << v93;
            if ((v141 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            v11 = v94++ >= 9;
            if (v11)
            {
              goto LABEL_155;
            }
          }

          [a2 hasError];
LABEL_155:
          PBRepeatedUInt32Add();
        }

      case 13:
        if (v13 == 2)
        {
          v139 = 0;
          v140 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v100 = [a2 position];
            if (v100 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v101 = 0;
            v102 = 0;
            v103 = 0;
            while (1)
            {
              v141 = 0;
              v104 = [a2 position] + 1;
              if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
              {
                v106 = [a2 data];
                [v106 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v103 |= (v141 & 0x7F) << v101;
              if ((v141 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              v11 = v102++ >= 9;
              if (v11)
              {
                goto LABEL_173;
              }
            }

            [a2 hasError];
LABEL_173:
            PBRepeatedUInt32Add();
          }

LABEL_174:
          PBReaderRecallMark();
        }

        else
        {
          v132 = 0;
          v133 = 0;
          v134 = 0;
          while (1)
          {
            LOBYTE(v139) = 0;
            v135 = [a2 position] + 1;
            if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
            {
              v137 = [a2 data];
              [v137 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v134 |= (v139 & 0x7F) << v132;
            if ((v139 & 0x80) == 0)
            {
              break;
            }

            v132 += 7;
            v11 = v133++ >= 9;
            if (v11)
            {
              goto LABEL_252;
            }
          }

LABEL_251:
          [a2 hasError];
LABEL_252:
          PBRepeatedUInt32Add();
        }

        goto LABEL_253;
      case 15:
        v99 = objc_alloc_init(RrcConnReqRel);
        [a1 addConnReqRel:v99];
        v139 = 0;
        v140 = 0;
        if (PBReaderPlaceMark() && sub_10014B024(v99, a2))
        {
          PBReaderRecallMark();

LABEL_253:
          v138 = [a2 position];
          if (v138 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 16:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 180) |= 0x40u;
        while (1)
        {
          LOBYTE(v139) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v139 & 0x7F) << v33;
          if ((v139 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_180;
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

LABEL_180:
        v107 = 176;
        goto LABEL_205;
      case 17:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 180) |= 8u;
        while (1)
        {
          LOBYTE(v139) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v139 & 0x7F) << v60;
          if ((v139 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_192;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v62;
        }

LABEL_192:
        v107 = 152;
        goto LABEL_205;
      case 18:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 180) |= 0x10u;
        while (1)
        {
          LOBYTE(v139) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v139 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v139 & 0x7F) << v46;
          if ((v139 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_188;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v48;
        }

LABEL_188:
        v107 = 168;
LABEL_205:
        *(a1 + v107) = v39;
        goto LABEL_253;
      case 19:
        v31 = PBReaderReadData();
        v32 = *(a1 + 160);
        *(a1 + 160) = v31;

        goto LABEL_253;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_253;
        }

        return 0;
    }
  }
}

uint64_t sub_10006574C(uint64_t a1, void *a2)
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
            *(a1 + 24) |= 1u;
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
            v53 = 8;
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
            v53 = 20;
          }
        }

        else if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 24) |= 2u;
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
          v53 = 12;
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
          v53 = 16;
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

uint64_t sub_100066888(uint64_t a1, void *a2)
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

uint64_t sub_1000693CC(void *a1, void *a2)
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
        v257 = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v257 & 0x7F) << v6;
        if ((v257 & 0x80) == 0)
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
          v257 = 0;
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (v257 & 0x7F) << v17;
          if ((v257 & 0x80) == 0)
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
            v3[18] |= 1uLL;
            while (1)
            {
              v257 = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v26 |= (v257 & 0x7F) << v24;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v12 = v25++ >= 9;
              if (v12)
              {
                v30 = 0;
                goto LABEL_417;
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

LABEL_417:
            v3[1] = v30;
            goto LABEL_478;
          case 2:
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v3[18] |= 0x800000uLL;
            while (1)
            {
              v257 = 0;
              v147 = [v4 position] + 1;
              if (v147 >= [v4 position] && (v148 = objc_msgSend(v4, "position") + 1, v148 <= objc_msgSend(v4, "length")))
              {
                v149 = [v4 data];
                [v149 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v146 |= (v257 & 0x7F) << v144;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v144 += 7;
              v12 = v145++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_421;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v146;
            }

LABEL_421:
            v252 = 116;
            goto LABEL_477;
          case 5:
            v106 = 0;
            v107 = 0;
            v108 = 0;
            v3[18] |= 2uLL;
            while (1)
            {
              v257 = 0;
              v109 = [v4 position] + 1;
              if (v109 >= [v4 position] && (v110 = objc_msgSend(v4, "position") + 1, v110 <= objc_msgSend(v4, "length")))
              {
                v111 = [v4 data];
                [v111 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v108 |= (v257 & 0x7F) << v106;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v106 += 7;
              v12 = v107++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_393;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v108;
            }

LABEL_393:
            v252 = 16;
            goto LABEL_477;
          case 6:
            v180 = 0;
            v181 = 0;
            v182 = 0;
            v3[18] |= 8uLL;
            while (1)
            {
              v257 = 0;
              v183 = [v4 position] + 1;
              if (v183 >= [v4 position] && (v184 = objc_msgSend(v4, "position") + 1, v184 <= objc_msgSend(v4, "length")))
              {
                v185 = [v4 data];
                [v185 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v182 |= (v257 & 0x7F) << v180;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v180 += 7;
              v12 = v181++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_441;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v182;
            }

LABEL_441:
            v252 = 24;
            goto LABEL_477;
          case 7:
            v186 = 0;
            v187 = 0;
            v188 = 0;
            v3[18] |= 0x20000uLL;
            while (1)
            {
              v257 = 0;
              v189 = [v4 position] + 1;
              if (v189 >= [v4 position] && (v190 = objc_msgSend(v4, "position") + 1, v190 <= objc_msgSend(v4, "length")))
              {
                v191 = [v4 data];
                [v191 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v188 |= (v257 & 0x7F) << v186;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v186 += 7;
              v12 = v187++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_445;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v188;
            }

LABEL_445:
            v252 = 92;
            goto LABEL_477;
          case 11:
            v125 = 0;
            v126 = 0;
            v127 = 0;
            v3[18] |= 4uLL;
            while (1)
            {
              v257 = 0;
              v128 = [v4 position] + 1;
              if (v128 >= [v4 position] && (v129 = objc_msgSend(v4, "position") + 1, v129 <= objc_msgSend(v4, "length")))
              {
                v130 = [v4 data];
                [v130 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v127 |= (v257 & 0x7F) << v125;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              v12 = v126++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_405;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v127;
            }

LABEL_405:
            v252 = 20;
            goto LABEL_477;
          case 12:
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v3[18] |= 0x1000000uLL;
            while (1)
            {
              v257 = 0;
              v153 = [v4 position] + 1;
              if (v153 >= [v4 position] && (v154 = objc_msgSend(v4, "position") + 1, v154 <= objc_msgSend(v4, "length")))
              {
                v155 = [v4 data];
                [v155 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v152 |= (v257 & 0x7F) << v150;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              v12 = v151++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_425;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v152;
            }

LABEL_425:
            v252 = 120;
            goto LABEL_477;
          case 13:
            v156 = 0;
            v157 = 0;
            v158 = 0;
            v3[18] |= 0x80uLL;
            while (1)
            {
              v257 = 0;
              v159 = [v4 position] + 1;
              if (v159 >= [v4 position] && (v160 = objc_msgSend(v4, "position") + 1, v160 <= objc_msgSend(v4, "length")))
              {
                v161 = [v4 data];
                [v161 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v158 |= (v257 & 0x7F) << v156;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v156 += 7;
              v12 = v157++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_429;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v158;
            }

LABEL_429:
            v252 = 40;
            goto LABEL_477;
          case 14:
            v199 = 0;
            v200 = 0;
            v201 = 0;
            v3[18] |= 0x20uLL;
            while (1)
            {
              v257 = 0;
              v202 = [v4 position] + 1;
              if (v202 >= [v4 position] && (v203 = objc_msgSend(v4, "position") + 1, v203 <= objc_msgSend(v4, "length")))
              {
                v204 = [v4 data];
                [v204 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v201 |= (v257 & 0x7F) << v199;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v199 += 7;
              v12 = v200++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_453;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v201;
            }

LABEL_453:
            v252 = 32;
            goto LABEL_477;
          case 15:
            v192 = 0;
            v193 = 0;
            v194 = 0;
            v3[18] |= 0x8000000uLL;
            while (1)
            {
              v257 = 0;
              v195 = [v4 position] + 1;
              if (v195 >= [v4 position] && (v196 = objc_msgSend(v4, "position") + 1, v196 <= objc_msgSend(v4, "length")))
              {
                v197 = [v4 data];
                [v197 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v194 |= (v257 & 0x7F) << v192;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v192 += 7;
              v12 = v193++ >= 9;
              if (v12)
              {
                v198 = 0;
                goto LABEL_449;
              }
            }

            if ([v4 hasError])
            {
              v198 = 0;
            }

            else
            {
              v198 = v194;
            }

LABEL_449:
            v72 = -(v198 & 1) ^ (v198 >> 1);
            v252 = 132;
            goto LABEL_477;
          case 16:
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v3[18] |= 0x2000000uLL;
            while (1)
            {
              v257 = 0;
              v69 = [v4 position] + 1;
              if (v69 >= [v4 position] && (v70 = objc_msgSend(v4, "position") + 1, v70 <= objc_msgSend(v4, "length")))
              {
                v71 = [v4 data];
                [v71 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v68 |= (v257 & 0x7F) << v66;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              v12 = v67++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_371;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v68;
            }

LABEL_371:
            v252 = 124;
            goto LABEL_477;
          case 17:
            v131 = 0;
            v132 = 0;
            v133 = 0;
            v3[18] |= 0x4000000uLL;
            while (1)
            {
              v257 = 0;
              v134 = [v4 position] + 1;
              if (v134 >= [v4 position] && (v135 = objc_msgSend(v4, "position") + 1, v135 <= objc_msgSend(v4, "length")))
              {
                v136 = [v4 data];
                [v136 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v133 |= (v257 & 0x7F) << v131;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              v12 = v132++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_409;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v133;
            }

LABEL_409:
            v252 = 128;
            goto LABEL_477;
          case 18:
            v93 = 0;
            v94 = 0;
            v95 = 0;
            v3[18] |= 0x200000000uLL;
            while (1)
            {
              v257 = 0;
              v96 = [v4 position] + 1;
              if (v96 >= [v4 position] && (v97 = objc_msgSend(v4, "position") + 1, v97 <= objc_msgSend(v4, "length")))
              {
                v98 = [v4 data];
                [v98 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v95 |= (v257 & 0x7F) << v93;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              v12 = v94++ >= 9;
              if (v12)
              {
                LOBYTE(v51) = 0;
                goto LABEL_385;
              }
            }

            v51 = (v95 != 0) & ~[v4 hasError];
LABEL_385:
            v253 = 141;
            goto LABEL_472;
          case 19:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v3[18] |= 0x400000000uLL;
            while (1)
            {
              v257 = 0;
              v48 = [v4 position] + 1;
              if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
              {
                v50 = [v4 data];
                [v50 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v47 |= (v257 & 0x7F) << v45;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v12 = v46++ >= 9;
              if (v12)
              {
                LOBYTE(v51) = 0;
                goto LABEL_359;
              }
            }

            v51 = (v47 != 0) & ~[v4 hasError];
LABEL_359:
            v253 = 142;
            goto LABEL_472;
          case 20:
            v162 = 0;
            v163 = 0;
            v164 = 0;
            v3[18] |= 0x20000000uLL;
            while (1)
            {
              v257 = 0;
              v165 = [v4 position] + 1;
              if (v165 >= [v4 position] && (v166 = objc_msgSend(v4, "position") + 1, v166 <= objc_msgSend(v4, "length")))
              {
                v167 = [v4 data];
                [v167 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v164 |= (v257 & 0x7F) << v162;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v162 += 7;
              v12 = v163++ >= 9;
              if (v12)
              {
                LOBYTE(v51) = 0;
                goto LABEL_431;
              }
            }

            v51 = (v164 != 0) & ~[v4 hasError];
LABEL_431:
            v253 = 137;
            goto LABEL_472;
          case 21:
            v168 = 0;
            v169 = 0;
            v170 = 0;
            v3[18] |= 0x40000000uLL;
            while (1)
            {
              v257 = 0;
              v171 = [v4 position] + 1;
              if (v171 >= [v4 position] && (v172 = objc_msgSend(v4, "position") + 1, v172 <= objc_msgSend(v4, "length")))
              {
                v173 = [v4 data];
                [v173 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v170 |= (v257 & 0x7F) << v168;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v168 += 7;
              v12 = v169++ >= 9;
              if (v12)
              {
                LOBYTE(v51) = 0;
                goto LABEL_433;
              }
            }

            v51 = (v170 != 0) & ~[v4 hasError];
LABEL_433:
            v253 = 138;
            goto LABEL_472;
          case 22:
            v213 = 0;
            v214 = 0;
            v215 = 0;
            v3[18] |= 0x80000000uLL;
            while (1)
            {
              v257 = 0;
              v216 = [v4 position] + 1;
              if (v216 >= [v4 position] && (v217 = objc_msgSend(v4, "position") + 1, v217 <= objc_msgSend(v4, "length")))
              {
                v218 = [v4 data];
                [v218 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v215 |= (v257 & 0x7F) << v213;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v213 += 7;
              v12 = v214++ >= 9;
              if (v12)
              {
                LOBYTE(v51) = 0;
                goto LABEL_457;
              }
            }

            v51 = (v215 != 0) & ~[v4 hasError];
LABEL_457:
            v253 = 139;
            goto LABEL_472;
          case 23:
            v205 = 0;
            v206 = 0;
            v207 = 0;
            v3[18] |= &_mh_execute_header;
            while (1)
            {
              v257 = 0;
              v208 = [v4 position] + 1;
              if (v208 >= [v4 position] && (v209 = objc_msgSend(v4, "position") + 1, v209 <= objc_msgSend(v4, "length")))
              {
                v210 = [v4 data];
                [v210 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v207 |= (v257 & 0x7F) << v205;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v205 += 7;
              v12 = v206++ >= 9;
              if (v12)
              {
                LOBYTE(v51) = 0;
                goto LABEL_455;
              }
            }

            v51 = (v207 != 0) & ~[v4 hasError];
LABEL_455:
            v253 = 140;
            goto LABEL_472;
          case 30:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v3[18] |= 0x100uLL;
            while (1)
            {
              v257 = 0;
              v34 = [v4 position] + 1;
              if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
              {
                v36 = [v4 data];
                [v36 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v33 |= (v257 & 0x7F) << v31;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v12 = v32++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_353;
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

LABEL_353:
            v72 = -(v37 & 1) ^ (v37 >> 1);
            v252 = 56;
            goto LABEL_477;
          case 31:
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v3[18] |= 0x200uLL;
            while (1)
            {
              v257 = 0;
              v102 = [v4 position] + 1;
              if (v102 >= [v4 position] && (v103 = objc_msgSend(v4, "position") + 1, v103 <= objc_msgSend(v4, "length")))
              {
                v104 = [v4 data];
                [v104 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v101 |= (v257 & 0x7F) << v99;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v99 += 7;
              v12 = v100++ >= 9;
              if (v12)
              {
                v105 = 0;
                goto LABEL_389;
              }
            }

            if ([v4 hasError])
            {
              v105 = 0;
            }

            else
            {
              v105 = v101;
            }

LABEL_389:
            v72 = -(v105 & 1) ^ (v105 >> 1);
            v252 = 60;
            goto LABEL_477;
          case 32:
            v219 = 0;
            v220 = 0;
            v221 = 0;
            v3[18] |= 0x400uLL;
            while (1)
            {
              v257 = 0;
              v222 = [v4 position] + 1;
              if (v222 >= [v4 position] && (v223 = objc_msgSend(v4, "position") + 1, v223 <= objc_msgSend(v4, "length")))
              {
                v224 = [v4 data];
                [v224 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v221 |= (v257 & 0x7F) << v219;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v219 += 7;
              v12 = v220++ >= 9;
              if (v12)
              {
                v225 = 0;
                goto LABEL_461;
              }
            }

            if ([v4 hasError])
            {
              v225 = 0;
            }

            else
            {
              v225 = v221;
            }

LABEL_461:
            v72 = -(v225 & 1) ^ (v225 >> 1);
            v252 = 64;
            goto LABEL_477;
          case 33:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v3[18] |= 0x800uLL;
            while (1)
            {
              v257 = 0;
              v41 = [v4 position] + 1;
              if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
              {
                v43 = [v4 data];
                [v43 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v40 |= (v257 & 0x7F) << v38;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v12 = v39++ >= 9;
              if (v12)
              {
                v44 = 0;
                goto LABEL_357;
              }
            }

            if ([v4 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v40;
            }

LABEL_357:
            v72 = -(v44 & 1) ^ (v44 >> 1);
            v252 = 68;
            goto LABEL_477;
          case 40:
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v3[18] |= 0x1000uLL;
            while (1)
            {
              v257 = 0;
              v89 = [v4 position] + 1;
              if (v89 >= [v4 position] && (v90 = objc_msgSend(v4, "position") + 1, v90 <= objc_msgSend(v4, "length")))
              {
                v91 = [v4 data];
                [v91 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v88 |= (v257 & 0x7F) << v86;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              v12 = v87++ >= 9;
              if (v12)
              {
                v92 = 0;
                goto LABEL_383;
              }
            }

            if ([v4 hasError])
            {
              v92 = 0;
            }

            else
            {
              v92 = v88;
            }

LABEL_383:
            v72 = -(v92 & 1) ^ (v92 >> 1);
            v252 = 72;
            goto LABEL_477;
          case 41:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v3[18] |= 0x2000uLL;
            while (1)
            {
              v257 = 0;
              v62 = [v4 position] + 1;
              if (v62 >= [v4 position] && (v63 = objc_msgSend(v4, "position") + 1, v63 <= objc_msgSend(v4, "length")))
              {
                v64 = [v4 data];
                [v64 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v61 |= (v257 & 0x7F) << v59;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              v12 = v60++ >= 9;
              if (v12)
              {
                v65 = 0;
                goto LABEL_367;
              }
            }

            if ([v4 hasError])
            {
              v65 = 0;
            }

            else
            {
              v65 = v61;
            }

LABEL_367:
            v72 = -(v65 & 1) ^ (v65 >> 1);
            v252 = 76;
            goto LABEL_477;
          case 42:
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v3[18] |= 0x4000uLL;
            while (1)
            {
              v257 = 0;
              v140 = [v4 position] + 1;
              if (v140 >= [v4 position] && (v141 = objc_msgSend(v4, "position") + 1, v141 <= objc_msgSend(v4, "length")))
              {
                v142 = [v4 data];
                [v142 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v139 |= (v257 & 0x7F) << v137;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              v12 = v138++ >= 9;
              if (v12)
              {
                v143 = 0;
                goto LABEL_413;
              }
            }

            if ([v4 hasError])
            {
              v143 = 0;
            }

            else
            {
              v143 = v139;
            }

LABEL_413:
            v72 = -(v143 & 1) ^ (v143 >> 1);
            v252 = 80;
            goto LABEL_477;
          case 43:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v3[18] |= 0x8000uLL;
            while (1)
            {
              v257 = 0;
              v55 = [v4 position] + 1;
              if (v55 >= [v4 position] && (v56 = objc_msgSend(v4, "position") + 1, v56 <= objc_msgSend(v4, "length")))
              {
                v57 = [v4 data];
                [v57 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v54 |= (v257 & 0x7F) << v52;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v12 = v53++ >= 9;
              if (v12)
              {
                v58 = 0;
                goto LABEL_363;
              }
            }

            if ([v4 hasError])
            {
              v58 = 0;
            }

            else
            {
              v58 = v54;
            }

LABEL_363:
            v72 = -(v58 & 1) ^ (v58 >> 1);
            v252 = 84;
            goto LABEL_477;
          case 50:
            v233 = 0;
            v234 = 0;
            v235 = 0;
            v3[18] |= 0x40000uLL;
            while (1)
            {
              v257 = 0;
              v236 = [v4 position] + 1;
              if (v236 >= [v4 position] && (v237 = objc_msgSend(v4, "position") + 1, v237 <= objc_msgSend(v4, "length")))
              {
                v238 = [v4 data];
                [v238 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v235 |= (v257 & 0x7F) << v233;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v233 += 7;
              v12 = v234++ >= 9;
              if (v12)
              {
                v239 = 0;
                goto LABEL_469;
              }
            }

            if ([v4 hasError])
            {
              v239 = 0;
            }

            else
            {
              v239 = v235;
            }

LABEL_469:
            v72 = -(v239 & 1) ^ (v239 >> 1);
            v252 = 96;
            goto LABEL_477;
          case 51:
            v226 = 0;
            v227 = 0;
            v228 = 0;
            v3[18] |= 0x80000uLL;
            while (1)
            {
              v257 = 0;
              v229 = [v4 position] + 1;
              if (v229 >= [v4 position] && (v230 = objc_msgSend(v4, "position") + 1, v230 <= objc_msgSend(v4, "length")))
              {
                v231 = [v4 data];
                [v231 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v228 |= (v257 & 0x7F) << v226;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v226 += 7;
              v12 = v227++ >= 9;
              if (v12)
              {
                v232 = 0;
                goto LABEL_465;
              }
            }

            if ([v4 hasError])
            {
              v232 = 0;
            }

            else
            {
              v232 = v228;
            }

LABEL_465:
            v72 = -(v232 & 1) ^ (v232 >> 1);
            v252 = 100;
            goto LABEL_477;
          case 52:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v3[18] |= 0x100000uLL;
            while (1)
            {
              v257 = 0;
              v82 = [v4 position] + 1;
              if (v82 >= [v4 position] && (v83 = objc_msgSend(v4, "position") + 1, v83 <= objc_msgSend(v4, "length")))
              {
                v84 = [v4 data];
                [v84 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v81 |= (v257 & 0x7F) << v79;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v12 = v80++ >= 9;
              if (v12)
              {
                v85 = 0;
                goto LABEL_379;
              }
            }

            if ([v4 hasError])
            {
              v85 = 0;
            }

            else
            {
              v85 = v81;
            }

LABEL_379:
            v72 = -(v85 & 1) ^ (v85 >> 1);
            v252 = 104;
            goto LABEL_477;
          case 53:
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v3[18] |= 0x200000uLL;
            while (1)
            {
              v257 = 0;
              v115 = [v4 position] + 1;
              if (v115 >= [v4 position] && (v116 = objc_msgSend(v4, "position") + 1, v116 <= objc_msgSend(v4, "length")))
              {
                v117 = [v4 data];
                [v117 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v114 |= (v257 & 0x7F) << v112;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v112 += 7;
              v12 = v113++ >= 9;
              if (v12)
              {
                v118 = 0;
                goto LABEL_397;
              }
            }

            if ([v4 hasError])
            {
              v118 = 0;
            }

            else
            {
              v118 = v114;
            }

LABEL_397:
            v72 = -(v118 & 1) ^ (v118 >> 1);
            v252 = 108;
            goto LABEL_477;
          case 60:
            v174 = 0;
            v175 = 0;
            v176 = 0;
            v3[18] |= 0x400000uLL;
            while (1)
            {
              v257 = 0;
              v177 = [v4 position] + 1;
              if (v177 >= [v4 position] && (v178 = objc_msgSend(v4, "position") + 1, v178 <= objc_msgSend(v4, "length")))
              {
                v179 = [v4 data];
                [v179 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v176 |= (v257 & 0x7F) << v174;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v174 += 7;
              v12 = v175++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_437;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v176;
            }

LABEL_437:
            v252 = 112;
            goto LABEL_477;
          case 61:
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v3[18] |= 0x10000uLL;
            while (1)
            {
              v257 = 0;
              v122 = [v4 position] + 1;
              if (v122 >= [v4 position] && (v123 = objc_msgSend(v4, "position") + 1, v123 <= objc_msgSend(v4, "length")))
              {
                v124 = [v4 data];
                [v124 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v121 |= (v257 & 0x7F) << v119;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              v12 = v120++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_401;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v121;
            }

LABEL_401:
            v252 = 88;
            goto LABEL_477;
          case 71:
            v246 = 0;
            v247 = 0;
            v248 = 0;
            v3[18] |= 0x40uLL;
            while (1)
            {
              v257 = 0;
              v249 = [v4 position] + 1;
              if (v249 >= [v4 position] && (v250 = objc_msgSend(v4, "position") + 1, v250 <= objc_msgSend(v4, "length")))
              {
                v251 = [v4 data];
                [v251 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v248 |= (v257 & 0x7F) << v246;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v246 += 7;
              v12 = v247++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_476;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v248;
            }

LABEL_476:
            v252 = 36;
            goto LABEL_477;
          case 72:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v3[18] |= 0x10uLL;
            while (1)
            {
              v257 = 0;
              v76 = [v4 position] + 1;
              if (v76 >= [v4 position] && (v77 = objc_msgSend(v4, "position") + 1, v77 <= objc_msgSend(v4, "length")))
              {
                v78 = [v4 data];
                [v78 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v75 |= (v257 & 0x7F) << v73;
              if ((v257 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v12 = v74++ >= 9;
              if (v12)
              {
                v72 = 0;
                goto LABEL_375;
              }
            }

            if ([v4 hasError])
            {
              v72 = 0;
            }

            else
            {
              v72 = v75;
            }

LABEL_375:
            v252 = 28;
LABEL_477:
            *(v3 + v252) = v72;
            goto LABEL_478;
          case 73:
            v211 = PBReaderReadData();
            v212 = v3[6];
            v3[6] = v211;

            goto LABEL_478;
          case 74:
            v240 = 0;
            v241 = 0;
            v242 = 0;
            v3[18] |= 0x10000000uLL;
            break;
          default:
            if (PBReaderSkipValueWithTag())
            {
              goto LABEL_478;
            }

            v256 = 0;
            goto LABEL_480;
        }

        while (1)
        {
          v257 = 0;
          v243 = [v4 position] + 1;
          if (v243 >= [v4 position] && (v244 = objc_msgSend(v4, "position") + 1, v244 <= objc_msgSend(v4, "length")))
          {
            v245 = [v4 data];
            [v245 getBytes:&v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v242 |= (v257 & 0x7F) << v240;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v12 = v241++ >= 9;
          if (v12)
          {
            LOBYTE(v51) = 0;
            goto LABEL_471;
          }
        }

        v51 = (v242 != 0) & ~[v4 hasError];
LABEL_471:
        v253 = 136;
LABEL_472:
        *(v3 + v253) = v51;
      }

LABEL_478:
      v254 = [v4 position];
    }

    while (v254 < [v4 length]);
  }

  v256 = [v4 hasError] ^ 1;
LABEL_480:

  return v256;
}

uint64_t sub_10006F458(uint64_t a1, void *a2)
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
        v85 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v85 & 0x7F) << v5;
        if ((v85 & 0x80) == 0)
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
          v90 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v90 & 0x7F) << v16;
          if ((v90 & 0x80) == 0)
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
        goto LABEL_166;
      }

      if (v13 <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v91 = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v91 & 0x7F) << v44;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                v50 = 0;
                goto LABEL_132;
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

LABEL_132:
            *(a1 + 8) = v50;
            goto LABEL_166;
          }

          if (v13 != 2)
          {
LABEL_127:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_166;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 64) |= 0x100u;
          while (1)
          {
            v95 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v95 & 0x7F) << v38;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_136;
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

LABEL_136:
          v83 = 60;
        }

        else if (v13 == 3)
        {
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v94 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v94 & 0x7F) << v64;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
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
            v29 = v66;
          }

LABEL_152:
          v83 = 52;
        }

        else if (v13 == 4)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v93 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v93 & 0x7F) << v51;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_140;
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

LABEL_140:
          v83 = 48;
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v92 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v92 & 0x7F) << v30;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
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
            v29 = v32;
          }

LABEL_148:
          v83 = 36;
        }

        goto LABEL_165;
      }

      if (v13 > 8)
      {
        if (v13 == 9)
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v87 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v87 & 0x7F) << v76;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v11 = v77++ >= 9;
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
            v29 = v78;
          }

LABEL_164:
          v83 = 20;
          goto LABEL_165;
        }

        if (v13 == 10)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v86 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v86 & 0x7F) << v58;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
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
            v29 = v60;
          }

LABEL_144:
          v83 = 32;
          goto LABEL_165;
        }

        if (v13 != 11)
        {
          goto LABEL_127;
        }

        v36 = PBReaderReadData();
        v37 = 24;
      }

      else
      {
        if (v13 == 6)
        {
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            v89 = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v89 & 0x7F) << v70;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v11 = v71++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_160;
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

LABEL_160:
          v83 = 16;
          goto LABEL_165;
        }

        if (v13 != 7)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            v88 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v88 & 0x7F) << v23;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
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
            v29 = v25;
          }

LABEL_156:
          v83 = 56;
LABEL_165:
          *(a1 + v83) = v29;
          goto LABEL_166;
        }

        v36 = PBReaderReadData();
        v37 = 40;
      }

      v57 = *(a1 + v37);
      *(a1 + v37) = v36;

LABEL_166:
      v84 = [a2 position];
    }

    while (v84 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10007108C(uint64_t a1, void *a2)
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
            *(a1 + 24) |= 4u;
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
            v49 = 16;
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
            *(a1 + 24) |= 2u;
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
            v49 = 12;
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
          v49 = 20;
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
          *(a1 + 24) |= 1u;
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
          v49 = 8;
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

uint64_t sub_1000720FC(uint64_t a1, void *a2)
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
            v31 = objc_alloc_init(SecondaryComponentCarrier);
            [a1 addSccList:v31];
            v40[0] = 0;
            v40[1] = 0;
            if (!PBReaderPlaceMark() || !sub_1000EC680(v31, a2))
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

uint64_t sub_1000734FC(uint64_t a1, void *a2)
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
        v67 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v67 & 0x7F) << v5;
        if ((v67 & 0x80) == 0)
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
          v72 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v72 & 0x7F) << v16;
          if ((v72 & 0x80) == 0)
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

      if (v13 > 6)
      {
        if (v13 <= 8)
        {
          if (v13 == 7)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 60) |= 0x20u;
            while (1)
            {
              v70 = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v70 & 0x7F) << v46;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
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
              v29 = v48;
            }

LABEL_106:
            v65 = 56;
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 60) |= 8u;
            while (1)
            {
              v69 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v69 & 0x7F) << v30;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
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
              v29 = v32;
            }

LABEL_122:
            v65 = 24;
          }

          goto LABEL_123;
        }

        if (v13 == 9)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 60) |= 0x10u;
          while (1)
          {
            v68 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v68 & 0x7F) << v58;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
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
            v29 = v60;
          }

LABEL_114:
          v65 = 40;
          goto LABEL_123;
        }

        if (v13 != 10)
        {
LABEL_97:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_124;
        }

        v36 = PBReaderReadData();
        v37 = 32;
      }

      else
      {
        if (v13 <= 4)
        {
          if (v13 == 1)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              v73 = 0;
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
                goto LABEL_102;
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

LABEL_102:
            *(a1 + 8) = v45;
            goto LABEL_124;
          }

          if (v13 != 2)
          {
            goto LABEL_97;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 60) |= 4u;
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
              goto LABEL_118;
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

LABEL_118:
          v65 = 20;
          goto LABEL_123;
        }

        if (v13 == 5)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v71 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v71 & 0x7F) << v52;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
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
            v29 = v54;
          }

LABEL_110:
          v65 = 16;
LABEL_123:
          *(a1 + v65) = v29;
          goto LABEL_124;
        }

        v36 = PBReaderReadData();
        v37 = 48;
      }

      v38 = *(a1 + v37);
      *(a1 + v37) = v36;

LABEL_124:
      v66 = [a2 position];
    }

    while (v66 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100074C08(uint64_t a1, void *a2)
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
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 28) |= 2u;
            while (1)
            {
              v62 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v62 & 0x7F) << v50;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
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
              v36 = v52;
            }

LABEL_95:
            v57 = 12;
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
            v57 = 16;
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
              *(a1 + 28) |= 1u;
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
              v57 = 8;
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
                  v49 = 0;
                  goto LABEL_91;
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

LABEL_91:
              v36 = -(v49 & 1) ^ (v49 >> 1);
              v57 = 20;
              break;
            case 5:
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
              v36 = -(v29 & 1) ^ (v29 >> 1);
              v57 = 24;
              break;
            default:
              goto LABEL_82;
          }
        }

        *(a1 + v57) = v36;
      }

LABEL_105:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000786D8(uint64_t a1, void *a2)
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
        LOBYTE(v199) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v199 & 0x7F) << v5;
        if ((v199 & 0x80) == 0)
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
          LOBYTE(v199) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v199 & 0x7F) << v17;
          if ((v199 & 0x80) == 0)
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
            *(a1 + 248) |= 1u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v199 & 0x7F) << v24;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
LABEL_289:
                *(a1 + 200) = v30;
                goto LABEL_373;
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

            goto LABEL_289;
          case 2:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 248) |= 4u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v64 |= (v199 & 0x7F) << v62;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v11 = v63++ >= 9;
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
              v37 = v64;
            }

LABEL_277:
            v149 = 212;
            goto LABEL_298;
          case 3:
            v86 = 0;
            v87 = 0;
            v88 = 0;
            *(a1 + 248) |= 0x80u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v89 = [a2 position] + 1;
              if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
              {
                v91 = [a2 data];
                [v91 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v88 |= (v199 & 0x7F) << v86;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              v11 = v87++ >= 9;
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
              v37 = v88;
            }

LABEL_297:
            v149 = 232;
            goto LABEL_298;
          case 4:
            v80 = 0;
            v81 = 0;
            v82 = 0;
            *(a1 + 248) |= 0x100u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v83 = [a2 position] + 1;
              if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
              {
                v85 = [a2 data];
                [v85 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v82 |= (v199 & 0x7F) << v80;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              v11 = v81++ >= 9;
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
              v37 = v82;
            }

LABEL_293:
            v149 = 236;
            goto LABEL_298;
          case 5:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 248) |= 0x200u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v199 & 0x7F) << v50;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
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
              v37 = v52;
            }

LABEL_269:
            v149 = 240;
            goto LABEL_298;
          case 6:
            v68 = 0;
            v69 = 0;
            v70 = 0;
            *(a1 + 248) |= 0x400u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v71 = [a2 position] + 1;
              if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
              {
                v73 = [a2 data];
                [v73 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v70 |= (v199 & 0x7F) << v68;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v11 = v69++ >= 9;
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
              v37 = v70;
            }

LABEL_281:
            v149 = 244;
            goto LABEL_298;
          case 7:
            if (v13 != 2)
            {
              v150 = 0;
              v151 = 0;
              v152 = 0;
              while (1)
              {
                LOBYTE(v199) = 0;
                v153 = [a2 position] + 1;
                if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
                {
                  v155 = [a2 data];
                  [v155 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v152 |= (v199 & 0x7F) << v150;
                if ((v199 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v150 += 7;
                v11 = v151++ >= 9;
                if (v11)
                {
                  goto LABEL_372;
                }
              }
            }

            v199 = 0;
            v200 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v93 = [a2 position];
              if (v93 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_251;
              }

              v94 = 0;
              v95 = 0;
              v96 = 0;
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
                  goto LABEL_145;
                }
              }

              [a2 hasError];
LABEL_145:
              PBRepeatedUInt32Add();
            }

          case 8:
            if (v13 != 2)
            {
              v156 = 0;
              v157 = 0;
              v158 = 0;
              while (1)
              {
                LOBYTE(v199) = 0;
                v159 = [a2 position] + 1;
                if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
                {
                  v161 = [a2 data];
                  [v161 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v158 |= (v199 & 0x7F) << v156;
                if ((v199 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v156 += 7;
                v11 = v157++ >= 9;
                if (v11)
                {
                  goto LABEL_372;
                }
              }
            }

            v199 = 0;
            v200 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v100 = [a2 position];
              if (v100 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_251;
              }

              v101 = 0;
              v102 = 0;
              v103 = 0;
              while (1)
              {
                v201 = 0;
                v104 = [a2 position] + 1;
                if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
                {
                  v106 = [a2 data];
                  [v106 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v103 |= (v201 & 0x7F) << v101;
                if ((v201 & 0x80) == 0)
                {
                  break;
                }

                v101 += 7;
                v11 = v102++ >= 9;
                if (v11)
                {
                  goto LABEL_160;
                }
              }

              [a2 hasError];
LABEL_160:
              PBRepeatedUInt32Add();
            }

          case 9:
            if (v13 != 2)
            {
              v180 = 0;
              v181 = 0;
              v182 = 0;
              while (1)
              {
                LOBYTE(v199) = 0;
                v183 = [a2 position] + 1;
                if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
                {
                  v185 = [a2 data];
                  [v185 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v182 |= (v199 & 0x7F) << v180;
                if ((v199 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v180 += 7;
                v11 = v181++ >= 9;
                if (v11)
                {
                  goto LABEL_372;
                }
              }
            }

            v199 = 0;
            v200 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v128 = [a2 position];
              if (v128 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_251;
              }

              v129 = 0;
              v130 = 0;
              v131 = 0;
              while (1)
              {
                v201 = 0;
                v132 = [a2 position] + 1;
                if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
                {
                  v134 = [a2 data];
                  [v134 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v131 |= (v201 & 0x7F) << v129;
                if ((v201 & 0x80) == 0)
                {
                  break;
                }

                v129 += 7;
                v11 = v130++ >= 9;
                if (v11)
                {
                  goto LABEL_220;
                }
              }

              [a2 hasError];
LABEL_220:
              PBRepeatedUInt32Add();
            }

          case 10:
            if (v13 != 2)
            {
              v174 = 0;
              v175 = 0;
              v176 = 0;
              while (1)
              {
                LOBYTE(v199) = 0;
                v177 = [a2 position] + 1;
                if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
                {
                  v179 = [a2 data];
                  [v179 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v176 |= (v199 & 0x7F) << v174;
                if ((v199 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v174 += 7;
                v11 = v175++ >= 9;
                if (v11)
                {
                  goto LABEL_372;
                }
              }
            }

            v199 = 0;
            v200 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v121 = [a2 position];
              if (v121 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_251;
              }

              v122 = 0;
              v123 = 0;
              v124 = 0;
              while (1)
              {
                v201 = 0;
                v125 = [a2 position] + 1;
                if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
                {
                  v127 = [a2 data];
                  [v127 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v124 |= (v201 & 0x7F) << v122;
                if ((v201 & 0x80) == 0)
                {
                  break;
                }

                v122 += 7;
                v11 = v123++ >= 9;
                if (v11)
                {
                  goto LABEL_205;
                }
              }

              [a2 hasError];
LABEL_205:
              PBRepeatedUInt32Add();
            }

          case 13:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 248) |= 8u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v199 & 0x7F) << v44;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
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
              v37 = v46;
            }

LABEL_265:
            v149 = 216;
            goto LABEL_298;
          case 14:
            v74 = 0;
            v75 = 0;
            v76 = 0;
            *(a1 + 248) |= 0x10u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v77 = [a2 position] + 1;
              if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
              {
                v79 = [a2 data];
                [v79 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v76 |= (v199 & 0x7F) << v74;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              v11 = v75++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_285;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v76;
            }

LABEL_285:
            v149 = 220;
            goto LABEL_298;
          case 15:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 248) |= 0x20u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v199 & 0x7F) << v56;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
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
              v37 = v58;
            }

LABEL_273:
            v149 = 224;
            goto LABEL_298;
          case 16:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 248) |= 0x40u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v199 & 0x7F) << v38;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
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
              v37 = v40;
            }

LABEL_261:
            v149 = 228;
            goto LABEL_298;
          case 17:
            if (v13 != 2)
            {
              v162 = 0;
              v163 = 0;
              v164 = 0;
              while (1)
              {
                LOBYTE(v199) = 0;
                v165 = [a2 position] + 1;
                if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
                {
                  v167 = [a2 data];
                  [v167 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v164 |= (v199 & 0x7F) << v162;
                if ((v199 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v162 += 7;
                v11 = v163++ >= 9;
                if (v11)
                {
                  goto LABEL_372;
                }
              }
            }

            v199 = 0;
            v200 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v107 = [a2 position];
              if (v107 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_251;
              }

              v108 = 0;
              v109 = 0;
              v110 = 0;
              while (1)
              {
                v201 = 0;
                v111 = [a2 position] + 1;
                if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
                {
                  v113 = [a2 data];
                  [v113 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v110 |= (v201 & 0x7F) << v108;
                if ((v201 & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                v11 = v109++ >= 9;
                if (v11)
                {
                  goto LABEL_175;
                }
              }

              [a2 hasError];
LABEL_175:
              PBRepeatedUInt32Add();
            }

          case 18:
            if (v13 != 2)
            {
              v168 = 0;
              v169 = 0;
              v170 = 0;
              while (1)
              {
                LOBYTE(v199) = 0;
                v171 = [a2 position] + 1;
                if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
                {
                  v173 = [a2 data];
                  [v173 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v170 |= (v199 & 0x7F) << v168;
                if ((v199 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v168 += 7;
                v11 = v169++ >= 9;
                if (v11)
                {
                  goto LABEL_372;
                }
              }
            }

            v199 = 0;
            v200 = 0;
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
                goto LABEL_251;
              }

              v115 = 0;
              v116 = 0;
              v117 = 0;
              while (1)
              {
                v201 = 0;
                v118 = [a2 position] + 1;
                if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
                {
                  v120 = [a2 data];
                  [v120 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v117 |= (v201 & 0x7F) << v115;
                if ((v201 & 0x80) == 0)
                {
                  break;
                }

                v115 += 7;
                v11 = v116++ >= 9;
                if (v11)
                {
                  goto LABEL_190;
                }
              }

              [a2 hasError];
LABEL_190:
              PBRepeatedUInt32Add();
            }

          case 19:
            if (v13 == 2)
            {
              v199 = 0;
              v200 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v142 = [a2 position];
                if (v142 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v143 = 0;
                v144 = 0;
                v145 = 0;
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
                    goto LABEL_250;
                  }
                }

                [a2 hasError];
LABEL_250:
                PBRepeatedUInt32Add();
              }

LABEL_251:
              PBReaderRecallMark();
            }

            else
            {
              v192 = 0;
              v193 = 0;
              v194 = 0;
              while (1)
              {
                LOBYTE(v199) = 0;
                v195 = [a2 position] + 1;
                if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
                {
                  v197 = [a2 data];
                  [v197 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v194 |= (v199 & 0x7F) << v192;
                if ((v199 & 0x80) == 0)
                {
                  break;
                }

                v192 += 7;
                v11 = v193++ >= 9;
                if (v11)
                {
                  goto LABEL_372;
                }
              }

LABEL_371:
              [a2 hasError];
LABEL_372:
              PBRepeatedUInt32Add();
            }

            break;
          case 20:
            if (v13 != 2)
            {
              v186 = 0;
              v187 = 0;
              v188 = 0;
              while (1)
              {
                LOBYTE(v199) = 0;
                v189 = [a2 position] + 1;
                if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
                {
                  v191 = [a2 data];
                  [v191 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v188 |= (v199 & 0x7F) << v186;
                if ((v199 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v186 += 7;
                v11 = v187++ >= 9;
                if (v11)
                {
                  goto LABEL_372;
                }
              }
            }

            v199 = 0;
            v200 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v135 = [a2 position];
              if (v135 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_251;
              }

              v136 = 0;
              v137 = 0;
              v138 = 0;
              while (1)
              {
                v201 = 0;
                v139 = [a2 position] + 1;
                if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
                {
                  v141 = [a2 data];
                  [v141 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v138 |= (v201 & 0x7F) << v136;
                if ((v201 & 0x80) == 0)
                {
                  break;
                }

                v136 += 7;
                v11 = v137++ >= 9;
                if (v11)
                {
                  goto LABEL_235;
                }
              }

              [a2 hasError];
LABEL_235:
              PBRepeatedUInt32Add();
            }

          case 25:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 248) |= 2u;
            while (1)
            {
              LOBYTE(v199) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v199 & 0x7F) << v31;
              if ((v199 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
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
              v37 = v33;
            }

LABEL_257:
            v149 = 208;
LABEL_298:
            *(a1 + v149) = v37;
            break;
          default:
            if (PBReaderSkipValueWithTag())
            {
              break;
            }

            return 0;
        }
      }

LABEL_373:
      v198 = [a2 position];
    }

    while (v198 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10007E984(uint64_t a1, void *a2)
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
        LOBYTE(v213) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v213 & 0x7F) << v5;
        if ((v213 & 0x80) == 0)
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
          LOBYTE(v213) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v213 & 0x7F) << v17;
          if ((v213 & 0x80) == 0)
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
            *(a1 + 252) |= 1u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v213 & 0x7F) << v24;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
LABEL_282:
                *(a1 + 200) = v30;
                goto LABEL_386;
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

            goto LABEL_282;
          case 2:
            v88 = 0;
            v89 = 0;
            v90 = 0;
            *(a1 + 252) |= 2u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v91 = [a2 position] + 1;
              if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
              {
                v93 = [a2 data];
                [v93 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v90 |= (v213 & 0x7F) << v88;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              v11 = v89++ >= 9;
              if (v11)
              {
                v73 = 0;
                goto LABEL_286;
              }
            }

            if ([a2 hasError])
            {
              v73 = 0;
            }

            else
            {
              v73 = v90;
            }

LABEL_286:
            v163 = 208;
            goto LABEL_311;
          case 3:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            *(a1 + 252) |= 0x800u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v69 |= (v213 & 0x7F) << v67;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              v11 = v68++ >= 9;
              if (v11)
              {
                v73 = 0;
                goto LABEL_278;
              }
            }

            if ([a2 hasError])
            {
              v73 = 0;
            }

            else
            {
              v73 = v69;
            }

LABEL_278:
            v163 = 248;
            goto LABEL_311;
          case 4:
            v122 = 0;
            v123 = 0;
            v124 = 0;
            *(a1 + 252) |= 4u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v125 = [a2 position] + 1;
              if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
              {
                v127 = [a2 data];
                [v127 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v124 |= (v213 & 0x7F) << v122;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              v11 = v123++ >= 9;
              if (v11)
              {
                v73 = 0;
                goto LABEL_298;
              }
            }

            if ([a2 hasError])
            {
              v73 = 0;
            }

            else
            {
              v73 = v124;
            }

LABEL_298:
            v163 = 212;
            goto LABEL_311;
          case 5:
            v128 = 0;
            v129 = 0;
            v130 = 0;
            *(a1 + 252) |= 0x20u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v131 = [a2 position] + 1;
              if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
              {
                v133 = [a2 data];
                [v133 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v130 |= (v213 & 0x7F) << v128;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v128 += 7;
              v11 = v129++ >= 9;
              if (v11)
              {
                v134 = 0;
                goto LABEL_302;
              }
            }

            if ([a2 hasError])
            {
              v134 = 0;
            }

            else
            {
              v134 = v130;
            }

LABEL_302:
            v73 = -(v134 & 1) ^ (v134 >> 1);
            v163 = 224;
            goto LABEL_311;
          case 6:
            if (v13 != 2)
            {
              v176 = 0;
              v177 = 0;
              v178 = 0;
              while (1)
              {
                LOBYTE(v213) = 0;
                v179 = [a2 position] + 1;
                if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
                {
                  v181 = [a2 data];
                  [v181 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v178 |= (v213 & 0x7F) << v176;
                if ((v213 & 0x80) == 0)
                {
                  goto LABEL_384;
                }

                v176 += 7;
                v11 = v177++ >= 9;
                if (v11)
                {
                  goto LABEL_385;
                }
              }
            }

            v213 = 0;
            v214 = 0;
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
                goto LABEL_253;
              }

              v75 = 0;
              v76 = 0;
              v77 = 0;
              while (1)
              {
                v215 = 0;
                v78 = [a2 position] + 1;
                if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
                {
                  v80 = [a2 data];
                  [v80 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v77 |= (v215 & 0x7F) << v75;
                if ((v215 & 0x80) == 0)
                {
                  break;
                }

                v75 += 7;
                v11 = v76++ >= 9;
                if (v11)
                {
                  goto LABEL_121;
                }
              }

              [a2 hasError];
LABEL_121:
              PBRepeatedUInt32Add();
            }

          case 7:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 252) |= 0x80u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v97 = [a2 position] + 1;
              if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
              {
                v99 = [a2 data];
                [v99 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v96 |= (v213 & 0x7F) << v94;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v11 = v95++ >= 9;
              if (v11)
              {
                v100 = 0;
                goto LABEL_290;
              }
            }

            if ([a2 hasError])
            {
              v100 = 0;
            }

            else
            {
              v100 = v96;
            }

LABEL_290:
            v73 = -(v100 & 1) ^ (v100 >> 1);
            v163 = 232;
            goto LABEL_311;
          case 8:
            if (v13 != 2)
            {
              v188 = 0;
              v189 = 0;
              v190 = 0;
              while (1)
              {
                LOBYTE(v213) = 0;
                v191 = [a2 position] + 1;
                if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
                {
                  v193 = [a2 data];
                  [v193 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v190 |= (v213 & 0x7F) << v188;
                if ((v213 & 0x80) == 0)
                {
                  goto LABEL_384;
                }

                v188 += 7;
                v11 = v189++ >= 9;
                if (v11)
                {
                  goto LABEL_385;
                }
              }
            }

            v213 = 0;
            v214 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v101 = [a2 position];
              if (v101 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_253;
              }

              v102 = 0;
              v103 = 0;
              v104 = 0;
              while (1)
              {
                v215 = 0;
                v105 = [a2 position] + 1;
                if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
                {
                  v107 = [a2 data];
                  [v107 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v104 |= (v215 & 0x7F) << v102;
                if ((v215 & 0x80) == 0)
                {
                  break;
                }

                v102 += 7;
                v11 = v103++ >= 9;
                if (v11)
                {
                  goto LABEL_171;
                }
              }

              [a2 hasError];
LABEL_171:
              PBRepeatedUInt32Add();
            }

          case 9:
            v142 = 0;
            v143 = 0;
            v144 = 0;
            *(a1 + 252) |= 0x400u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v145 = [a2 position] + 1;
              if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
              {
                v147 = [a2 data];
                [v147 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v144 |= (v213 & 0x7F) << v142;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v142 += 7;
              v11 = v143++ >= 9;
              if (v11)
              {
                v148 = 0;
                goto LABEL_306;
              }
            }

            if ([a2 hasError])
            {
              v148 = 0;
            }

            else
            {
              v148 = v144;
            }

LABEL_306:
            v73 = -(v148 & 1) ^ (v148 >> 1);
            v163 = 244;
            goto LABEL_311;
          case 10:
            if (v13 != 2)
            {
              v200 = 0;
              v201 = 0;
              v202 = 0;
              while (1)
              {
                LOBYTE(v213) = 0;
                v203 = [a2 position] + 1;
                if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
                {
                  v205 = [a2 data];
                  [v205 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v202 |= (v213 & 0x7F) << v200;
                if ((v213 & 0x80) == 0)
                {
                  goto LABEL_384;
                }

                v200 += 7;
                v11 = v201++ >= 9;
                if (v11)
                {
                  goto LABEL_385;
                }
              }
            }

            v213 = 0;
            v214 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v135 = [a2 position];
              if (v135 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_253;
              }

              v136 = 0;
              v137 = 0;
              v138 = 0;
              while (1)
              {
                v215 = 0;
                v139 = [a2 position] + 1;
                if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
                {
                  v141 = [a2 data];
                  [v141 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v138 |= (v215 & 0x7F) << v136;
                if ((v215 & 0x80) == 0)
                {
                  break;
                }

                v136 += 7;
                v11 = v137++ >= 9;
                if (v11)
                {
                  goto LABEL_228;
                }
              }

              [a2 hasError];
LABEL_228:
              PBRepeatedUInt32Add();
            }

          case 11:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 252) |= 0x40u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v213 & 0x7F) << v46;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v52 = 0;
                goto LABEL_270;
              }
            }

            if ([a2 hasError])
            {
              v52 = 0;
            }

            else
            {
              v52 = v48;
            }

LABEL_270:
            v73 = -(v52 & 1) ^ (v52 >> 1);
            v163 = 228;
            goto LABEL_311;
          case 12:
            if (v13 != 2)
            {
              v182 = 0;
              v183 = 0;
              v184 = 0;
              while (1)
              {
                LOBYTE(v213) = 0;
                v185 = [a2 position] + 1;
                if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
                {
                  v187 = [a2 data];
                  [v187 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v184 |= (v213 & 0x7F) << v182;
                if ((v213 & 0x80) == 0)
                {
                  goto LABEL_384;
                }

                v182 += 7;
                v11 = v183++ >= 9;
                if (v11)
                {
                  goto LABEL_385;
                }
              }
            }

            v213 = 0;
            v214 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v81 = [a2 position];
              if (v81 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_253;
              }

              v82 = 0;
              v83 = 0;
              v84 = 0;
              while (1)
              {
                v215 = 0;
                v85 = [a2 position] + 1;
                if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
                {
                  v87 = [a2 data];
                  [v87 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v84 |= (v215 & 0x7F) << v82;
                if ((v215 & 0x80) == 0)
                {
                  break;
                }

                v82 += 7;
                v11 = v83++ >= 9;
                if (v11)
                {
                  goto LABEL_136;
                }
              }

              [a2 hasError];
LABEL_136:
              PBRepeatedUInt32Add();
            }

          case 13:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 252) |= 0x100u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v213 & 0x7F) << v53;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v59 = 0;
                goto LABEL_274;
              }
            }

            if ([a2 hasError])
            {
              v59 = 0;
            }

            else
            {
              v59 = v55;
            }

LABEL_274:
            v73 = -(v59 & 1) ^ (v59 >> 1);
            v163 = 236;
            goto LABEL_311;
          case 14:
            if (v13 != 2)
            {
              v164 = 0;
              v165 = 0;
              v166 = 0;
              while (1)
              {
                LOBYTE(v213) = 0;
                v167 = [a2 position] + 1;
                if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
                {
                  v169 = [a2 data];
                  [v169 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v166 |= (v213 & 0x7F) << v164;
                if ((v213 & 0x80) == 0)
                {
                  goto LABEL_384;
                }

                v164 += 7;
                v11 = v165++ >= 9;
                if (v11)
                {
                  goto LABEL_385;
                }
              }
            }

            v213 = 0;
            v214 = 0;
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
                goto LABEL_253;
              }

              v40 = 0;
              v41 = 0;
              v42 = 0;
              while (1)
              {
                v215 = 0;
                v43 = [a2 position] + 1;
                if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
                {
                  v45 = [a2 data];
                  [v45 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v42 |= (v215 & 0x7F) << v40;
                if ((v215 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v11 = v41++ >= 9;
                if (v11)
                {
                  goto LABEL_64;
                }
              }

              [a2 hasError];
LABEL_64:
              PBRepeatedUInt32Add();
            }

          case 15:
            v108 = 0;
            v109 = 0;
            v110 = 0;
            *(a1 + 252) |= 0x200u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v111 = [a2 position] + 1;
              if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
              {
                v113 = [a2 data];
                [v113 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v110 |= (v213 & 0x7F) << v108;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              v11 = v109++ >= 9;
              if (v11)
              {
                v114 = 0;
                goto LABEL_294;
              }
            }

            if ([a2 hasError])
            {
              v114 = 0;
            }

            else
            {
              v114 = v110;
            }

LABEL_294:
            v73 = -(v114 & 1) ^ (v114 >> 1);
            v163 = 240;
            goto LABEL_311;
          case 16:
            if (v13 != 2)
            {
              v194 = 0;
              v195 = 0;
              v196 = 0;
              while (1)
              {
                LOBYTE(v213) = 0;
                v197 = [a2 position] + 1;
                if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
                {
                  v199 = [a2 data];
                  [v199 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v196 |= (v213 & 0x7F) << v194;
                if ((v213 & 0x80) == 0)
                {
                  goto LABEL_384;
                }

                v194 += 7;
                v11 = v195++ >= 9;
                if (v11)
                {
                  goto LABEL_385;
                }
              }
            }

            v213 = 0;
            v214 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v115 = [a2 position];
              if (v115 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_253;
              }

              v116 = 0;
              v117 = 0;
              v118 = 0;
              while (1)
              {
                v215 = 0;
                v119 = [a2 position] + 1;
                if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
                {
                  v121 = [a2 data];
                  [v121 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v118 |= (v215 & 0x7F) << v116;
                if ((v215 & 0x80) == 0)
                {
                  break;
                }

                v116 += 7;
                v11 = v117++ >= 9;
                if (v11)
                {
                  goto LABEL_195;
                }
              }

              [a2 hasError];
LABEL_195:
              PBRepeatedUInt32Add();
            }

          case 19:
            v156 = 0;
            v157 = 0;
            v158 = 0;
            *(a1 + 252) |= 8u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v159 = [a2 position] + 1;
              if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
              {
                v161 = [a2 data];
                [v161 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v158 |= (v213 & 0x7F) << v156;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v156 += 7;
              v11 = v157++ >= 9;
              if (v11)
              {
                v162 = 0;
                goto LABEL_310;
              }
            }

            if ([a2 hasError])
            {
              v162 = 0;
            }

            else
            {
              v162 = v158;
            }

LABEL_310:
            v73 = -(v162 & 1) ^ (v162 >> 1);
            v163 = 216;
            goto LABEL_311;
          case 20:
            if (v13 == 2)
            {
              v213 = 0;
              v214 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v149 = [a2 position];
                if (v149 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v150 = 0;
                v151 = 0;
                v152 = 0;
                while (1)
                {
                  v215 = 0;
                  v153 = [a2 position] + 1;
                  if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
                  {
                    v155 = [a2 data];
                    [v155 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v152 |= (v215 & 0x7F) << v150;
                  if ((v215 & 0x80) == 0)
                  {
                    break;
                  }

                  v150 += 7;
                  v11 = v151++ >= 9;
                  if (v11)
                  {
                    goto LABEL_252;
                  }
                }

                [a2 hasError];
LABEL_252:
                PBRepeatedUInt32Add();
              }

LABEL_253:
              PBReaderRecallMark();
            }

            else
            {
              v206 = 0;
              v207 = 0;
              v208 = 0;
              while (1)
              {
                LOBYTE(v213) = 0;
                v209 = [a2 position] + 1;
                if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
                {
                  v211 = [a2 data];
                  [v211 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v208 |= (v213 & 0x7F) << v206;
                if ((v213 & 0x80) == 0)
                {
                  break;
                }

                v206 += 7;
                v11 = v207++ >= 9;
                if (v11)
                {
                  goto LABEL_385;
                }
              }

LABEL_384:
              [a2 hasError];
LABEL_385:
              PBRepeatedUInt32Add();
            }

            break;
          case 21:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 252) |= 0x10u;
            while (1)
            {
              LOBYTE(v213) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v213 & 0x7F) << v31;
              if ((v213 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_266;
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

LABEL_266:
            v73 = -(v37 & 1) ^ (v37 >> 1);
            v163 = 220;
LABEL_311:
            *(a1 + v163) = v73;
            break;
          case 22:
            if (v13 != 2)
            {
              v170 = 0;
              v171 = 0;
              v172 = 0;
              while (1)
              {
                LOBYTE(v213) = 0;
                v173 = [a2 position] + 1;
                if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
                {
                  v175 = [a2 data];
                  [v175 getBytes:&v213 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v172 |= (v213 & 0x7F) << v170;
                if ((v213 & 0x80) == 0)
                {
                  goto LABEL_384;
                }

                v170 += 7;
                v11 = v171++ >= 9;
                if (v11)
                {
                  goto LABEL_385;
                }
              }
            }

            v213 = 0;
            v214 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v60 = [a2 position];
              if (v60 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_253;
              }

              v61 = 0;
              v62 = 0;
              v63 = 0;
              while (1)
              {
                v215 = 0;
                v64 = [a2 position] + 1;
                if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
                {
                  v66 = [a2 data];
                  [v66 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 |= (v215 & 0x7F) << v61;
                if ((v215 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                v11 = v62++ >= 9;
                if (v11)
                {
                  goto LABEL_97;
                }
              }

              [a2 hasError];
LABEL_97:
              PBRepeatedUInt32Add();
            }

          default:
            if (PBReaderSkipValueWithTag())
            {
              break;
            }

            return 0;
        }
      }

LABEL_386:
      v212 = [a2 position];
    }

    while (v212 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}