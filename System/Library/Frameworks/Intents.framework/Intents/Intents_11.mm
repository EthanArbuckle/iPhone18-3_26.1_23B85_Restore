uint64_t _INPBIntentSlotVocabularyValueReadFrom(void *a1, void *a2)
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
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v15 = PBReaderReadString();
      [a1 setPhrase:v15];
      goto LABEL_25;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setPronunciation:v15];
LABEL_25:

      continue;
    }

    if (v14 == 3)
    {
      v15 = PBReaderReadString();
      if (v15)
      {
        [a1 addExamples:v15];
      }

      goto LABEL_25;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t _INPBDistanceValueReadFrom(void *a1, void *a2)
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

        v7 |= (LOBYTE(v27[0]) & 0x7F) << v5;
        if ((LOBYTE(v27[0]) & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v23 = objc_alloc_init(_INPBValueMetadata);
        v27[0] = 0.0;
        v27[1] = 0.0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v23];
      }

      else if (v13 == 2)
      {
        v27[0] = 0.0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setMagnitude:v27[0]];
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v27[0]) & 0x7F) << v14;
          if ((LOBYTE(v27[0]) & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        [a1 setUnit:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBAppendToNoteIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = objc_alloc_init(_INPBNoteContent);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBNoteContentReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setContent:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBNote);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBNoteReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setTargetNote:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchForNotebookItemsIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = off_1E727C000;
    v6 = off_1E727B000;
    v7 = off_1E727C000;
    v8 = off_1E727B000;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v79) = 0;
        v12 = [a2 position] + 1;
        if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
        {
          v14 = [a2 data];
          [v14 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v11 |= (v79 & 0x7F) << v9;
        if ((v79 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 7)
      {
        if (v17 <= 10)
        {
          switch(v17)
          {
            case 8:
              v32 = objc_alloc_init(v8[481]);
              v79 = 0;
              v80 = 0;
              if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v32, a2))
              {
LABEL_164:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setDateTime:v32];
              goto LABEL_113;
            case 9:
              v66 = 0;
              v67 = 0;
              v68 = 0;
              while (1)
              {
                LOBYTE(v79) = 0;
                v69 = [a2 position] + 1;
                if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
                {
                  v71 = [a2 data];
                  [v71 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v68 |= (v79 & 0x7F) << v66;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v66 += 7;
                v15 = v67++ >= 9;
                if (v15)
                {
                  v72 = 0;
                  goto LABEL_148;
                }
              }

              if ([a2 hasError])
              {
                v72 = 0;
              }

              else
              {
                v72 = v68;
              }

LABEL_148:
              [a1 setDateSearchType:v72];
              goto LABEL_114;
            case 0xA:
              v32 = PBReaderReadString();
              [a1 setNotebookItemIdentifier:v32];
              goto LABEL_113;
          }
        }

        else if (v17 > 49)
        {
          if (v17 == 50)
          {
            v32 = objc_alloc_init(v6[477]);
            v79 = 0;
            v80 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v32, a2))
            {
              goto LABEL_164;
            }

            PBReaderRecallMark();
            [a1 setGroupName:v32];
            goto LABEL_113;
          }

          if (v17 == 51)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            while (1)
            {
              LOBYTE(v79) = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v79 & 0x7F) << v40;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v15 = v41++ >= 9;
              if (v15)
              {
                v46 = 0;
                goto LABEL_144;
              }
            }

            v46 = (v42 != 0) & ~[a2 hasError];
LABEL_144:
            [a1 setIncludeAllNoteContents:v46];
            goto LABEL_114;
          }
        }

        else
        {
          if (v17 == 11)
          {
            v54 = v6;
            v55 = v7;
            v56 = v5;
            if ((v16 & 7) == 2)
            {
              v79 = 0;
              v80 = 0;
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
                  v81 = 0;
                  v62 = [a2 position] + 1;
                  if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                  {
                    v64 = [a2 data];
                    [v64 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v61 |= (v81 & 0x7F) << v59;
                  if ((v81 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  v15 = v60++ >= 9;
                  if (v15)
                  {
                    goto LABEL_97;
                  }
                }

                [a2 hasError];
LABEL_97:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v73 = 0;
              v74 = 0;
              v75 = 0;
              while (1)
              {
                LOBYTE(v79) = 0;
                v76 = [a2 position] + 1;
                if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
                {
                  v78 = [a2 data];
                  [v78 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v75 |= (v79 & 0x7F) << v73;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v73 += 7;
                v15 = v74++ >= 9;
                if (v15)
                {
                  goto LABEL_160;
                }
              }

              [a2 hasError];
LABEL_160:
              PBRepeatedInt32Add();
            }

            v5 = v56;
            v7 = v55;
            v6 = v54;
            v8 = off_1E727B000;
            goto LABEL_114;
          }

          if (v17 == 12)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              LOBYTE(v79) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v79 & 0x7F) << v25;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v15 = v26++ >= 9;
              if (v15)
              {
                v31 = 0;
                goto LABEL_138;
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

LABEL_138:
            [a1 setTaskPriority:v31];
            goto LABEL_114;
          }
        }
      }

      else if (v17 <= 3)
      {
        switch(v17)
        {
          case 1:
            v32 = objc_alloc_init(v5[63]);
            v79 = 0;
            v80 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v32, a2))
            {
              goto LABEL_164;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v32];
            goto LABEL_113;
          case 2:
            v32 = objc_alloc_init(v6[477]);
            v79 = 0;
            v80 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v32, a2))
            {
              goto LABEL_164;
            }

            PBReaderRecallMark();
            [a1 setTitle:v32];
            goto LABEL_113;
          case 3:
            v32 = PBReaderReadString();
            [a1 setContent:v32];
LABEL_113:

            goto LABEL_114;
        }
      }

      else
      {
        if (v17 <= 5)
        {
          if (v17 == 4)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            while (1)
            {
              LOBYTE(v79) = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v79 & 0x7F) << v47;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v15 = v48++ >= 9;
              if (v15)
              {
                v53 = 0;
                goto LABEL_130;
              }
            }

            if ([a2 hasError])
            {
              v53 = 0;
            }

            else
            {
              v53 = v49;
            }

LABEL_130:
            [a1 setItemType:v53];
          }

          else
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v79) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v79 & 0x7F) << v18;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v15 = v19++ >= 9;
              if (v15)
              {
                v24 = 0;
                goto LABEL_134;
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

LABEL_134:
            [a1 setStatus:v24];
          }

          goto LABEL_114;
        }

        if (v17 == 6)
        {
          v32 = objc_alloc_init(v7[90]);
          v79 = 0;
          v80 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v32, a2))
          {
            goto LABEL_164;
          }

          PBReaderRecallMark();
          [a1 setLocation:v32];
          goto LABEL_113;
        }

        if (v17 == 7)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          while (1)
          {
            LOBYTE(v79) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v79 & 0x7F) << v33;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v15 = v34++ >= 9;
            if (v15)
            {
              v39 = 0;
              goto LABEL_142;
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

LABEL_142:
          [a1 setLocationSearchType:v39];
          goto LABEL_114;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_114:
      v65 = [a2 position];
    }

    while (v65 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INCodableAttributeMetadataInputTypeAsString(uint64_t a1)
{
  v1 = @"Field";
  if (a1 == 1)
  {
    v1 = @"Stepper";
  }

  if (a1 == 2)
  {
    return @"Slider";
  }

  else
  {
    return v1;
  }
}

uint64_t _INPBSearchForBillsIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v31 & 0x7F) << v22;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_60;
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

LABEL_60:
            [a1 setBillType:v28];
            goto LABEL_65;
          case 6:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
LABEL_68:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDueDateRange:v14];
            goto LABEL_56;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v31 & 0x7F) << v15;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_64;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_64:
            [a1 setStatus:v21];
            goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBIntentMetadata);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v14];
            goto LABEL_56;
          case 2:
            v14 = objc_alloc_init(_INPBBillPayeeValue);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBBillPayeeValueReadFrom(v14, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setBillPayee:v14];
            goto LABEL_56;
          case 3:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setPaymentDateRange:v14];
LABEL_56:

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INSaveProfileInCarIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7283AE0[a1];
  }
}

id INIntentSlotValueTransformFromDataStringList(void *a1)
{
  v1 = [a1 dataStrings];
  v2 = INIntentSlotValueTransformFromDataStrings(v1);

  return v2;
}

_INPBDataStringList *INIntentSlotValueTransformToDataStringList(void *a1)
{
  v1 = INIntentSlotValueTransformToDataStrings(a1);
  v2 = objc_alloc_init(_INPBDataStringList);
  v3 = [v1 copy];
  [(_INPBDataStringList *)v2 setDataStrings:v3];

  return v2;
}

uint64_t _INPBPayBillIntentResponseReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBFinancialAccountValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBFinancialAccountValueReadFrom(v14, a2))
          {
LABEL_45:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setFromAccount:v14];
          goto LABEL_38;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBBillDetailsValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBBillDetailsValueReadFrom(v14, a2))
          {
            goto LABEL_45;
          }

          PBReaderRecallMark();
          [a1 setBillDetails:v14];
          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v14 = objc_alloc_init(_INPBPaymentAmountValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBPaymentAmountValueReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setTransactionAmount:v14];
            goto LABEL_38;
          case 6:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setTransactionScheduledDate:v14];
            goto LABEL_38;
          case 7:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setTransactionNote:v14];
LABEL_38:

            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t INOvulationValueTypeGetBackingType(unint64_t result)
{
  if (result >= 4)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INOvulationValueTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 3) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INOvulationValueTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7283B10[a1 - 1];
  }
}

uint64_t INOvulationValueTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"negative"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"positive"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"indeterminate"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INOvulationValueTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"indeterminate";
      goto LABEL_7;
    case 2:
      v4 = @"positive";
      goto LABEL_7;
    case 1:
      v4 = @"negative";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBLocationValueReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        v14 = objc_alloc_init(_INPBValueMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = objc_alloc_init(MEMORY[0x1E69A21E0]);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !GEOMapItemStorageReadAllFrom())
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setMapItemStorage:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(MEMORY[0x1E69A2318]);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !GEOPDPlaceReadAllFrom())
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setPlace:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

INHomeAction *INIntentSlotValueTransformFromHomeAction(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 hasAttributeType];
    v4 = [v2 attributeType];
    if (((v4 < 0x42) & v3) != 0)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    if ([v2 hasAttributeValue])
    {
      v6 = [v2 attributeValue];
      v7 = [v6 hasValueType];
      v8 = [v6 valueType];
      if (((v8 < 6) & v7) != 0)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = 0;
      }

      if ([v6 hasBooleanValue])
      {
        v10 = [v6 BOOLeanValue];
      }

      else
      {
        v10 = 0;
      }

      v14 = 0.0;
      if ([v6 hasDoubleValue])
      {
        [v6 doubleValue];
        v14 = v15;
      }

      if ([v6 hasIntegerValue])
      {
        v12 = [v6 integerValue];
      }

      else
      {
        v12 = 0;
      }

      if ([v6 hasStringValue])
      {
        v13 = [v6 stringValue];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0.0;
    }

    v11 = [[INHomeAction alloc] initWithType:v5 valueType:v9 BOOLValue:v10 doubleValue:v12 integerValue:v13 stringValue:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBHomeAttribute *INIntentSlotValueTransformToHomeAction(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBHomeAttribute);
    if (INHomeAttributeTypeHasBackingType([v1 type]))
    {
      v3 = [v1 type] - 1;
      if (v3 >= 0x42)
      {
        v4 = 0x7FFFFFFFLL;
      }

      else
      {
        v4 = v3;
      }

      [(_INPBHomeAttribute *)v2 setAttributeType:v4];
    }

    v5 = objc_alloc_init(_INPBHomeAttributeValue);
    v6 = [v1 valueType];
    if (v6 <= 6 && ((0x7Eu >> v6) & 1) != 0)
    {
      v7 = [v1 valueType] - 1;
      if (v7 >= 6)
      {
        v8 = 0x7FFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      [(_INPBHomeAttributeValue *)v5 setValueType:v8];
    }

    v9 = [v1 valueType];
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v10 = [v1 stringValue];
        [(_INPBHomeAttributeValue *)v5 setStringValue:v10];
      }

      else if (v9 == 4)
      {
        -[_INPBHomeAttributeValue setIntegerValue:](v5, "setIntegerValue:", [v1 integerValue]);
      }
    }

    else if (v9 == 1)
    {
      -[_INPBHomeAttributeValue setBooleanValue:](v5, "setBooleanValue:", [v1 BOOLValue]);
    }

    else if (v9 == 2)
    {
      [v1 doubleValue];
      [(_INPBHomeAttributeValue *)v5 setDoubleValue:?];
    }

    [(_INPBHomeAttribute *)v2 setAttributeValue:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeActions(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromHomeAction(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToHomeActions(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToHomeAction(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBConfigureHomeIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPauseWorkoutIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBStartWorkoutIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v59) = 0;
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v28 = objc_alloc_init(_INPBIntentMetadata);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v28, a2))
            {
LABEL_126:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v28];
            goto LABEL_83;
          }

          if (v13 == 2)
          {
            v28 = objc_alloc_init(_INPBDataString);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v28, a2))
            {
              goto LABEL_126;
            }

            PBReaderRecallMark();
            [a1 setWorkoutName:v28];
            goto LABEL_83;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v28 = objc_alloc_init(_INPBDouble);
              v59 = 0;
              v60 = 0;
              if (!PBReaderPlaceMark() || !_INPBDoubleReadFrom(v28, a2))
              {
                goto LABEL_126;
              }

              PBReaderRecallMark();
              [a1 setGoalValue:v28];
              goto LABEL_83;
            case 4:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v59 & 0x7F) << v29;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_109;
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

LABEL_109:
              [a1 setWorkoutGoalUnitType:v35];
              goto LABEL_84;
            case 5:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v59 & 0x7F) << v21;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_117;
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

LABEL_117:
              [a1 setWorkoutLocationType:v27];
              goto LABEL_84;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v59 & 0x7F) << v51;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v57 = 0;
                goto LABEL_123;
              }
            }

            v57 = (v53 != 0) & ~[a2 hasError];
LABEL_123:
            [a1 setIsVoiceOnly:v57];
            goto LABEL_84;
          case 0xA:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v59 & 0x7F) << v36;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_113;
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

LABEL_113:
            [a1 setSequenceLabel:v42];
            goto LABEL_84;
          case 0xB:
            v28 = objc_alloc_init(_INPBWorkoutCustomization);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_INPBWorkoutCustomizationReadFrom(v28, a2))
            {
              goto LABEL_126;
            }

            PBReaderRecallMark();
            [a1 setCustomization:v28];
            goto LABEL_83;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v59 & 0x7F) << v44;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                v50 = 0;
                goto LABEL_121;
              }
            }

            v50 = (v46 != 0) & ~[a2 hasError];
LABEL_121:
            [a1 setIsOpenEnded:v50];
            goto LABEL_84;
          case 7:
            v28 = objc_alloc_init(_INPBWorkoutAssociatedItem);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_INPBWorkoutAssociatedItemReadFrom(v28, a2))
            {
              goto LABEL_126;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addAssociatedItems:v28];
            }

LABEL_83:

            goto LABEL_84;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v59 & 0x7F) << v14;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_119;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_119:
            [a1 setIsBuiltInWorkoutType:v20];
            goto LABEL_84;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_84:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBUserActivityReadFrom(void *a1, void *a2)
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
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v15 = PBReaderReadString();
      [a1 setUri:v15];
      goto LABEL_24;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setTitle:v15];
      goto LABEL_24;
    }

    if (v14 == 3)
    {
      v15 = PBReaderReadData();
      [a1 setData:v15];
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

uint64_t _INPBRequestPaymentIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBPaymentRecord);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBPaymentRecordReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPaymentRecord:v13];
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

INTaskList *INIntentSlotValueTransformFromTaskList(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v13 = [INTaskList alloc];
    v15 = [v1 title];
    v2 = INIntentSlotValueTransformFromDataString(v15);
    v14 = [v1 tasks];
    v3 = INIntentSlotValueTransformFromTasks(v14);
    v4 = [v1 groupName];
    v5 = INIntentSlotValueTransformFromDataString(v4);
    v6 = [v1 createdDateTime];
    v7 = INIntentSlotValueTransformFromDateTime(v6);
    v8 = [v1 modifiedDateTime];
    v9 = INIntentSlotValueTransformFromDateTime(v8);
    v10 = [v1 identifier];

    v11 = [(INTaskList *)v13 initWithTitle:v2 tasks:v3 groupName:v5 createdDateComponents:v7 modifiedDateComponents:v9 identifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBTaskList *INIntentSlotValueTransformToTaskList(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBTaskList);
    v3 = [v1 title];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBTaskList *)v2 setTitle:v4];

    v5 = [v1 tasks];
    v6 = INIntentSlotValueTransformToTasks(v5);
    [(_INPBTaskList *)v2 setTasks:v6];

    v7 = [v1 groupName];
    v8 = INIntentSlotValueTransformToDataString(v7);
    [(_INPBTaskList *)v2 setGroupName:v8];

    v9 = [v1 createdDateComponents];
    v10 = INIntentSlotValueTransformToDateTime(v9);
    [(_INPBTaskList *)v2 setCreatedDateTime:v10];

    v11 = [v1 modifiedDateComponents];
    v12 = INIntentSlotValueTransformToDateTime(v11);
    [(_INPBTaskList *)v2 setModifiedDateTime:v12];

    v13 = [v1 identifier];

    [(_INPBTaskList *)v2 setIdentifier:v13];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromTaskLists(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromTaskList(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToTaskLists(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToTaskList(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBDoubleListReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setConditionType:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBDouble);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBDoubleReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addDataString:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBActivateCarSignalIntentResponseReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v27[0] & 0x7F) << v4;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        v10 = v5++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v27[0] = 0;
          v27[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
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
              v10 = v15++ >= 9;
              if (v10)
              {
                goto LABEL_32;
              }
            }

            [a2 hasError];
LABEL_32:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v27[0] & 0x7F) << v20;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              goto LABEL_46;
            }
          }

          [a2 hasError];
LABEL_46:
          PBRepeatedInt32Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_18EC23144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__90461(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18EC26C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18EC26DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _INPBSetMessageAttributeIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addIdentifier:v21];
        }

LABEL_34:

        goto LABEL_41;
      }

      if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24[0] & 0x7F) << v14;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        [a1 setAttribute:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBAddTasksIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v30) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        if ((v12 & 7) == 2)
        {
          v30 = 0;
          v31 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v32 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v32 & 0x7F) << v17;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_38;
              }
            }

            [a2 hasError];
LABEL_38:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v30) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v30 & 0x7F) << v23;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              goto LABEL_56;
            }
          }

          [a2 hasError];
LABEL_56:
          PBRepeatedInt32Add();
        }

        goto LABEL_57;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBTask);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v14, a2))
        {
          goto LABEL_60;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addAddedTasks:v14];
        }

LABEL_42:

        goto LABEL_57;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBTaskList);
    v30 = 0;
    v31 = 0;
    if (!PBReaderPlaceMark() || !_INPBTaskListReadFrom(v14, a2))
    {
LABEL_60:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setModifiedTaskList:v14];
    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBEventReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(_INPBString);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addEventDescriptors:v13];
        }

LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEventType:v13];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

id _INProtocolFromType(uint64_t a1, objc_class *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = strlen(a1);
  if (*a1 == 64 && *(a1 + 1) == 34 && *(a1 + v4 - 1) == 34 && *(a1 + 2) == 60 && *(a1 + v4 - 2) == 62)
  {
    v5 = v10 - ((MEMORY[0x1EEE9AC00]() + 11) & 0xFFFFFFFFFFFFFFF0);
    strlcpy(v5, (a1 + 3), v6);
    v7 = _INLookupNameInModule(v5, a2, &__block_literal_global_11);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void _INSetDoubleProperty(void *a1, const char *a2, double a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithDouble:a3];
  _INSetIdProperty(v6, a2, v7);
}

void _INSetFloatProperty(void *a1, const char *a2, float a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  *&v7 = a3;
  v8 = [v5 numberWithFloat:v7];
  _INSetIdProperty(v6, a2, v8);
}

void _INSetBoolProperty(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithBool:a3];
  _INSetIdProperty(v6, a2, v7);
}

void _INSetUnsignedLongLongProperty(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithUnsignedLongLong:a3];
  _INSetIdProperty(v6, a2, v7);
}

void _INSetLongLongProperty(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithLongLong:a3];
  _INSetIdProperty(v6, a2, v7);
}

void _INSetUnsignedLongProperty(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithUnsignedLong:a3];
  _INSetIdProperty(v6, a2, v7);
}

void _INSetLongProperty(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithLong:a3];
  _INSetIdProperty(v6, a2, v7);
}

void _INSetUnsignedIntProperty(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithUnsignedInt:a3];
  _INSetIdProperty(v6, a2, v7);
}

void _INSetIntProperty(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithInt:a3];
  _INSetIdProperty(v6, a2, v7);
}

double _INGetDoubleProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

float _INGetFloatProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

uint64_t _INGetBoolProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t _INGetUnsignedLongLongProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

uint64_t _INGetLongLongProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = [v2 longLongValue];

  return v3;
}

uint64_t _INGetUnsignedLongProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = [v2 unsignedLongValue];

  return v3;
}

uint64_t _INGetLongProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = [v2 longValue];

  return v3;
}

uint64_t _INGetUnsignedIntProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = [v2 unsignedIntValue];

  return v3;
}

uint64_t _INGetIntProperty(void *a1, const char *a2)
{
  v2 = _INGetIdProperty(a1, a2);
  v3 = [v2 intValue];

  return v3;
}

uint64_t INSortTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t INSortTypeGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 1);
  if (!a2)
  {
    v2 = 1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INSortTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"byDate";
  }

  if (a1 == 1)
  {
    return @"asIs";
  }

  else
  {
    return v1;
  }
}

uint64_t INSortTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"asIs"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"byDate"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSortTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"by date";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"as is";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBIntentTypeReadFrom(void *a1, void *a2)
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
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setType:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBContactRelationshipReadFrom(void *a1, void *a2)
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

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setRelation:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setName:v14];
LABEL_22:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

__CFString *_INSyncSlotFromVocabularyStringType(uint64_t a1)
{
  if (a1 <= 500)
  {
    v1 = @"PaymentsOrganizationNameType";
    v2 = @"PaymentsAccountNicknameType";
    v3 = @"NotebookItemTitleType";
    if (a1 != 500)
    {
      v3 = 0;
    }

    if (a1 != 401)
    {
      v2 = v3;
    }

    if (a1 != 400)
    {
      v1 = v2;
    }

    v4 = @"CarProfileNameType";
    v5 = @"CarNameType";
    if (a1 != 301)
    {
      v5 = 0;
    }

    if (a1 != 300)
    {
      v4 = v5;
    }

    if (a1 <= 399)
    {
      v1 = v4;
    }

    v6 = @"PhotoTagsType";
    v7 = @"PhotoAlbumNameType";
    v8 = @"HealthActivityNameType";
    if (a1 != 200)
    {
      v8 = 0;
    }

    if (a1 != 101)
    {
      v7 = v8;
    }

    if (a1 != 100)
    {
      v6 = v7;
    }

    v9 = @"ContactNameType";
    v10 = @"ContactGroupNameType";
    if (a1 != 2)
    {
      v10 = 0;
    }

    if (a1 != 1)
    {
      v9 = v10;
    }

    if (a1 <= 99)
    {
      v6 = v9;
    }

    v11 = a1 <= 299;
LABEL_39:
    if (v11)
    {
      return v6;
    }

    else
    {
      return v1;
    }
  }

  if (a1 <= 703)
  {
    v1 = @"MusicArtistNameType";
    v12 = @"AudiobookTitleType";
    v13 = @"AudiobookAuthorNameType";
    if (a1 != 703)
    {
      v13 = 0;
    }

    if (a1 != 702)
    {
      v12 = v13;
    }

    if (a1 != 701)
    {
      v1 = v12;
    }

    v6 = @"NotebookItemGroupNameType";
    v14 = @"PlaylistTitleType";
    if (a1 != 700)
    {
      v14 = 0;
    }

    if (a1 != 501)
    {
      v6 = v14;
    }

    v11 = a1 <= 700;
    goto LABEL_39;
  }

  v16 = @"PhotoMemoryNameType";
  v17 = @"AutoShortcutNameType";
  if (a1 != 50003)
  {
    v17 = 0;
  }

  if (a1 == 50002)
  {
    v18 = @"MediaUserContextType";
  }

  else
  {
    v18 = v17;
  }

  if (a1 != 50001)
  {
    v16 = v18;
  }

  v19 = @"ShowTitleType";
  if (a1 == 50000)
  {
    v20 = @"VoiceCommandNameType";
  }

  else
  {
    v20 = 0;
  }

  if (a1 != 704)
  {
    v19 = v20;
  }

  if (a1 <= 50000)
  {
    return v19;
  }

  else
  {
    return v16;
  }
}

void sub_18EC2EC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_INStringFromVocabularyStringType(uint64_t a1)
{
  if (a1 <= 499)
  {
    v1 = @"INVocabularyStringTypeCarName";
    v7 = @"INVocabularyStringTypePaymentsOrganizationName";
    v8 = @"INVocabularyStringTypePaymentsAccountNickname";
    if (a1 != 401)
    {
      v8 = 0;
    }

    if (a1 != 400)
    {
      v7 = v8;
    }

    if (a1 != 301)
    {
      v1 = v7;
    }

    v9 = @"INVocabularyStringTypeWorkoutActivityName";
    v10 = @"INVocabularyStringTypeCarProfileName";
    if (a1 != 300)
    {
      v10 = 0;
    }

    if (a1 != 200)
    {
      v9 = v10;
    }

    if (a1 <= 300)
    {
      v1 = v9;
    }

    v4 = @"INVocabularyStringTypePhotoTag";
    v11 = @"INVocabularyStringTypePhotoAlbumName";
    if (a1 != 101)
    {
      v11 = 0;
    }

    if (a1 != 100)
    {
      v4 = v11;
    }

    v12 = @"INVocabularyStringTypeContactName";
    v13 = @"INVocabularyStringTypeContactGroupName";
    if (a1 != 2)
    {
      v13 = 0;
    }

    if (a1 != 1)
    {
      v12 = v13;
    }

    if (a1 <= 99)
    {
      v4 = v12;
    }

    v6 = a1 <= 199;
    goto LABEL_37;
  }

  if (a1 <= 702)
  {
    v1 = @"INVocabularyStringTypeMediaPlaylistTitle";
    v2 = @"INVocabularyStringTypeMediaMusicArtistName";
    v3 = @"INVocabularyStringTypeMediaAudiobookTitle";
    if (a1 != 702)
    {
      v3 = 0;
    }

    if (a1 != 701)
    {
      v2 = v3;
    }

    if (a1 != 700)
    {
      v1 = v2;
    }

    v4 = @"INVocabularyStringTypeNotebookItemTitle";
    v5 = @"INVocabularyStringTypeNotebookItemGroupName";
    if (a1 != 501)
    {
      v5 = 0;
    }

    if (a1 != 500)
    {
      v4 = v5;
    }

    v6 = a1 <= 699;
LABEL_37:
    if (v6)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  v15 = @"_INVocabularyStringTypeAutoShortcutName";
  if (a1 != 50003)
  {
    v15 = 0;
  }

  if (a1 == 50001)
  {
    v16 = @"INVocabularyStringTypePhotoMemoryName";
  }

  else
  {
    v16 = v15;
  }

  if (a1 == 50000)
  {
    v17 = @"_INVocabularyStringTypeVoiceCommandName";
  }

  else
  {
    v17 = v16;
  }

  v18 = @"INVocabularyStringTypeMediaAudiobookAuthorName";
  v19 = @"INVocabularyStringTypeMediaShowTitle";
  if (a1 != 704)
  {
    v19 = 0;
  }

  if (a1 != 703)
  {
    v18 = v19;
  }

  if (a1 <= 49999)
  {
    return v18;
  }

  else
  {
    return v17;
  }
}

void *_INVocabularyStringTypeFromSlotName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ContactNameType"])
  {
    v2 = &unk_1F02D8218;
  }

  else if ([v1 isEqualToString:@"ContactGroupNameType"])
  {
    v2 = &unk_1F02D8230;
  }

  else if ([v1 isEqualToString:@"PhotoAlbumNameType"])
  {
    v2 = &unk_1F02D8248;
  }

  else if ([v1 isEqualToString:@"PhotoMemoryNameType"])
  {
    v2 = &unk_1F02D8260;
  }

  else if ([v1 isEqualToString:@"PhotoTagsType"])
  {
    v2 = &unk_1F02D8278;
  }

  else if ([v1 isEqualToString:@"HealthActivityNameType"])
  {
    v2 = &unk_1F02D8290;
  }

  else if ([v1 isEqualToString:@"CarProfileNameType"])
  {
    v2 = &unk_1F02D82A8;
  }

  else if ([v1 isEqualToString:@"CarNameType"])
  {
    v2 = &unk_1F02D82C0;
  }

  else if ([v1 isEqualToString:@"PaymentsOrganizationNameType"])
  {
    v2 = &unk_1F02D82D8;
  }

  else if ([v1 isEqualToString:@"PaymentsAccountNicknameType"])
  {
    v2 = &unk_1F02D82F0;
  }

  else if ([v1 isEqualToString:@"NotebookItemTitleType"])
  {
    v2 = &unk_1F02D8308;
  }

  else if ([v1 isEqualToString:@"NotebookItemGroupNameType"])
  {
    v2 = &unk_1F02D8320;
  }

  else if ([v1 isEqualToString:@"VoiceCommandNameType"])
  {
    v2 = &unk_1F02D8338;
  }

  else if ([v1 isEqualToString:@"AutoShortcutNameType"])
  {
    v2 = &unk_1F02D8350;
  }

  else if ([v1 isEqualToString:@"PlaylistTitleType"])
  {
    v2 = &unk_1F02D8368;
  }

  else if ([v1 isEqualToString:@"MusicArtistNameType"])
  {
    v2 = &unk_1F02D8380;
  }

  else if ([v1 isEqualToString:@"AudiobookTitleType"])
  {
    v2 = &unk_1F02D8398;
  }

  else if ([v1 isEqualToString:@"AudiobookAuthorNameType"])
  {
    v2 = &unk_1F02D83B0;
  }

  else if ([v1 isEqualToString:@"ShowTitleType"])
  {
    v2 = &unk_1F02D83C8;
  }

  else if ([v1 isEqualToString:@"MediaUserContextType"])
  {
    v2 = &unk_1F02D83E0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _INPBNoteContentReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(_INPBTextNoteContent);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBTextNoteContentReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setText:v21];
LABEL_35:

        goto LABEL_42;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_41;
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

LABEL_41:
        [a1 setType:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBImageNoteContent);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBImageNoteContentReadFrom(v21, a2))
    {
LABEL_45:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setImage:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSaveProfileInCarIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSetProfileInCarIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBEmptyReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchForBillsIntentResponseReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBBillDetailsValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBBillDetailsValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addBills:v13];
        }
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

__CFString *INCancelWorkoutIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7284110[a1];
  }
}

uint64_t _INPBPauseTimerIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBTimer);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPausedTimers:v13];
        }
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

uint64_t _INPBCallRecordValueReadFrom(void *a1, void *a2)
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
      LOBYTE(v51) = 0;
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        [a1 setIdentifier:v13];
        goto LABEL_75;
      case 2u:
        v13 = objc_alloc_init(_INPBDateTime);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v13, a2))
        {
          goto LABEL_105;
        }

        PBReaderRecallMark();
        [a1 setDateCreated:v13];
        goto LABEL_75;
      case 3u:
        v13 = objc_alloc_init(_INPBContactValue);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v13, a2))
        {
          goto LABEL_105;
        }

        PBReaderRecallMark();
        [a1 setCaller:v13];
        goto LABEL_75;
      case 4u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v51 & 0x7F) << v21;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_92;
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

LABEL_92:
        [a1 setCallType:v27];
        goto LABEL_76;
      case 5u:
        v13 = objc_alloc_init(_INPBCallMetrics);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_INPBCallMetricsReadFrom(v13, a2))
        {
          goto LABEL_105;
        }

        PBReaderRecallMark();
        [a1 setCallMetrics:v13];
        goto LABEL_75;
      case 6u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v51 & 0x7F) << v28;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_94;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_94:
        [a1 setUnseen:v34];
        goto LABEL_76;
      case 7u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v51 & 0x7F) << v35;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_98:
        [a1 setCallCapability:v41];
        goto LABEL_76;
      case 8u:
        v13 = objc_alloc_init(_INPBInteger);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v13, a2))
        {
          goto LABEL_105;
        }

        PBReaderRecallMark();
        [a1 setNumberOfCalls:v13];
        goto LABEL_75;
      case 9u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v51 & 0x7F) << v43;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v49 = 0;
            goto LABEL_102;
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

LABEL_102:
        [a1 setPreferredCallProvider:v49];
        goto LABEL_76;
      case 0xAu:
        v13 = PBReaderReadString();
        [a1 setProviderId:v13];
        goto LABEL_75;
      case 0xBu:
        v13 = PBReaderReadString();
        [a1 setProviderBundleId:v13];
        goto LABEL_75;
      case 0xCu:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v51 & 0x7F) << v14;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_88;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_88:
        [a1 setIsCallerIdBlocked:v20];
        goto LABEL_76;
      case 0xDu:
        v13 = objc_alloc_init(_INPBContactValue);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && _INPBContactValueReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          if (v13)
          {
            [a1 addParticipants:v13];
          }

LABEL_75:

LABEL_76:
          v42 = [a2 position];
          if (v42 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_105:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_76;
    }
  }
}

uint64_t _INPBSearchForTimersIntentResponseReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        v14 = objc_alloc_init(_INPBTimer);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v14, a2))
        {
LABEL_37:

          return 0;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addTimers:v14];
        }

        goto LABEL_32;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBTimer);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v14, a2))
        {
          goto LABEL_37;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addMatchedTimers:v14];
        }

LABEL_32:

        goto LABEL_34;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBTimer);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v14, a2))
    {
      goto LABEL_37;
    }

    PBReaderRecallMark();
    if (v14)
    {
      [a1 addUnmatchedTimers:v14];
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

unint64_t INNoteContentTypeGetBackingType(unint64_t result)
{
  if (result >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INNoteContentTypeGetFacadeType(int a1, int a2)
{
  v2 = a2 == 1;
  if (a2 == 2)
  {
    v2 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INNoteContentTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"image";
  }

  if (a1 == 1)
  {
    return @"text";
  }

  else
  {
    return v1;
  }
}

uint64_t INNoteContentTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"text"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"image"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INNoteContentTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"image";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"text";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBSetCarLockStatusIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id getHKUnitClass_95490()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass_95491;
  v7 = getHKUnitClass_softClass_95491;
  if (!getHKUnitClass_softClass_95491)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke_95492;
    v3[3] = &unk_1E72888B8;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke_95492(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18EC61D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKUnitClass_block_invoke_95492(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_95493)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __HealthKitLibraryCore_block_invoke_95494;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72851E8;
    v7 = 0;
    HealthKitLibraryCore_frameworkLibrary_95493 = _sl_dlopen();
    v2 = v5[0];
    if (HealthKitLibraryCore_frameworkLibrary_95493)
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
  result = objc_getClass("HKUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getHKUnitClass_softClass_95491 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke_95494(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_95493 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id INIntentSlotValueTransformFromWellnessUnitType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_87;
  }

  if ([v1 hasMassUnit])
  {
    switch([v2 massUnit])
    {
      case 1u:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"kg";
        goto LABEL_60;
      case 2u:
        v7 = [getHKUnitClass_95490() gramUnit];
        goto LABEL_61;
      case 3u:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"dg";
        goto LABEL_60;
      case 4u:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"cg";
        goto LABEL_60;
      case 5u:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"mg";
        goto LABEL_60;
      case 6u:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"µg";
        goto LABEL_60;
      case 7u:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"ng";
        goto LABEL_60;
      case 8u:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"pg";
        goto LABEL_60;
      case 9u:
        v7 = [getHKUnitClass_95490() ounceUnit];
        goto LABEL_61;
      case 0xAu:
        v7 = [getHKUnitClass_95490() poundUnit];
        goto LABEL_61;
      case 0xBu:
        v7 = [getHKUnitClass_95490() stoneUnit];
        goto LABEL_61;
      case 0xCu:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"t";
        goto LABEL_60;
      case 0xDu:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"ton";
        goto LABEL_60;
      case 0xEu:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"ct";
        goto LABEL_60;
      case 0xFu:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"oz t";
        goto LABEL_60;
      case 0x10u:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"slug";
        goto LABEL_60;
      default:
        goto LABEL_87;
    }
  }

  if ([v2 hasTimeUnit])
  {
    v5 = [v2 timeUnit];
    v6 = 0;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v7 = [getHKUnitClass_95490() hourUnit];
      }

      else
      {
        if (v5 != 4)
        {
          goto LABEL_88;
        }

        v7 = [getHKUnitClass_95490() dayUnit];
      }
    }

    else if (v5 == 1)
    {
      v7 = [getHKUnitClass_95490() secondUnit];
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_88;
      }

      v7 = [getHKUnitClass_95490() minuteUnit];
    }

    goto LABEL_61;
  }

  if ([v2 hasEnergyUnit])
  {
    v8 = [v2 energyUnit];
    v6 = 0;
    if (v8 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          goto LABEL_88;
        }

        v7 = [getHKUnitClass_95490() jouleUnit];
        goto LABEL_61;
      }

      HKUnitClass_95490 = getHKUnitClass_95490();
      v4 = @"kJ";
      goto LABEL_60;
    }

    switch(v8)
    {
      case 3:
        v7 = [getHKUnitClass_95490() kilocalorieUnit];
        break;
      case 4:
        v7 = [getHKUnitClass_95490() largeCalorieUnit];
        break;
      case 5:
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"kWh";
        goto LABEL_60;
      default:
        goto LABEL_88;
    }

LABEL_61:
    v6 = v7;
    goto LABEL_88;
  }

  if (![v2 hasLengthUnit])
  {
    if ([v2 hasVolumeUnit])
    {
      switch([v2 volumeUnit])
      {
        case 1u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"ML";
          goto LABEL_60;
        case 2u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"kL";
          goto LABEL_60;
        case 3u:
          v7 = [getHKUnitClass_95490() literUnit];
          goto LABEL_61;
        case 4u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"dL";
          goto LABEL_60;
        case 5u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"cL";
          goto LABEL_60;
        case 6u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"mL";
          goto LABEL_60;
        case 7u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"km³";
          goto LABEL_60;
        case 8u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"dm³";
          goto LABEL_60;
        case 9u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"mm³";
          goto LABEL_60;
        case 0xAu:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"in³";
          goto LABEL_60;
        case 0xBu:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"ft³";
          goto LABEL_60;
        case 0xCu:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"yd³";
          goto LABEL_60;
        case 0xDu:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"mi³";
          goto LABEL_60;
        case 0xEu:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"af";
          goto LABEL_60;
        case 0xFu:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"bsh";
          goto LABEL_60;
        case 0x10u:
        case 0x17u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"tsp";
          goto LABEL_60;
        case 0x11u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"tbsp";
          goto LABEL_60;
        case 0x12u:
          v7 = [getHKUnitClass_95490() fluidOunceUSUnit];
          goto LABEL_61;
        case 0x13u:
          v7 = [getHKUnitClass_95490() cupUSUnit];
          goto LABEL_61;
        case 0x14u:
          v7 = [getHKUnitClass_95490() pintUSUnit];
          goto LABEL_61;
        case 0x15u:
        case 0x18u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"qt";
          goto LABEL_60;
        case 0x16u:
        case 0x19u:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"gal";
          goto LABEL_60;
        case 0x1Au:
          HKUnitClass_95490 = getHKUnitClass_95490();
          v4 = @"metric cup";
          goto LABEL_60;
        default:
          goto LABEL_87;
      }
    }

    if ([v2 hasTemperatureUnit])
    {
      v10 = [v2 temperatureUnit];
      switch(v10)
      {
        case 3:
          v7 = [getHKUnitClass_95490() kelvinUnit];
          goto LABEL_61;
        case 2:
          v7 = [getHKUnitClass_95490() degreeFahrenheitUnit];
          goto LABEL_61;
        case 1:
          v7 = [getHKUnitClass_95490() degreeCelsiusUnit];
          goto LABEL_61;
      }

      goto LABEL_87;
    }

    if ([v2 hasRespiratoryRateUnit])
    {
      if ([v2 respiratoryRateUnit] == 1)
      {
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"breaths/min";
LABEL_60:
        v7 = [HKUnitClass_95490 unitFromString:v4];
        goto LABEL_61;
      }
    }

    else if ([v2 hasHeartRateUnit])
    {
      if ([v2 heartRateUnit] == 1)
      {
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"bpm";
        goto LABEL_60;
      }
    }

    else if ([v2 hasBloodPressureUnit])
    {
      if ([v2 bloodPressureUnit] == 1)
      {
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"mmHg";
        goto LABEL_60;
      }
    }

    else if ([v2 hasBloodGlucoseUnit])
    {
      v13 = [v2 bloodGlucoseUnit];
      if (v13 == 2)
      {
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"mmol/L";
        goto LABEL_60;
      }

      if (v13 == 1)
      {
        HKUnitClass_95490 = getHKUnitClass_95490();
        v4 = @"mg/dL";
        goto LABEL_60;
      }
    }

LABEL_87:
    v6 = 0;
    goto LABEL_88;
  }

  v9 = [v2 lengthUnit];
  v6 = 0;
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      v7 = [getHKUnitClass_95490() meterUnit];
      goto LABEL_61;
    }

    if (v9 == 2)
    {
      v7 = [getHKUnitClass_95490() mileUnit];
      goto LABEL_61;
    }

    if (v9 != 3)
    {
      goto LABEL_88;
    }

    v11 = getHKUnitClass_95490();
    v12 = 5;
    goto LABEL_65;
  }

  if (v9 <= 5)
  {
    if (v9 == 4)
    {
      [getHKUnitClass_95490() footUnit];
    }

    else
    {
      [getHKUnitClass_95490() inchUnit];
    }
    v7 = ;
    goto LABEL_61;
  }

  if (v9 == 6)
  {
    v7 = [getHKUnitClass_95490() yardUnit];
    goto LABEL_61;
  }

  if (v9 == 7)
  {
    v11 = getHKUnitClass_95490();
    v12 = 9;
LABEL_65:
    v7 = [v11 meterUnitWithMetricPrefix:v12];
    goto LABEL_61;
  }

LABEL_88:

  return v6;
}

_INPBWellnessUnitType *INIntentSlotValueTransformToWellnessUnitType(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_36;
  }

  v2 = objc_alloc_init(_INPBWellnessUnitType);
  v3 = [v1 unitString];
  v4 = [v3 isEqualToString:@"kg"];

  if (v4)
  {
    v5 = v2;
    v6 = 1;
LABEL_35:
    [(_INPBWellnessUnitType *)v5 setMassUnit:v6];
    goto LABEL_36;
  }

  v7 = [v1 unitString];
  v8 = [v7 isEqualToString:@"g"];

  if (v8)
  {
    v5 = v2;
    v6 = 2;
    goto LABEL_35;
  }

  v9 = [v1 unitString];
  v10 = [v9 isEqualToString:@"slug"];

  if (v10)
  {
    v5 = v2;
    v6 = 16;
    goto LABEL_35;
  }

  v11 = [v1 unitString];
  v12 = [v11 isEqualToString:@"oz"];

  if (v12)
  {
    v5 = v2;
    v6 = 9;
    goto LABEL_35;
  }

  v13 = [v1 unitString];
  v14 = [v13 isEqualToString:@"lb"];

  if (v14)
  {
    v5 = v2;
    v6 = 10;
    goto LABEL_35;
  }

  v15 = [v1 unitString];
  v16 = [v15 isEqualToString:@"st"];

  if (v16)
  {
    v5 = v2;
    v6 = 11;
    goto LABEL_35;
  }

  v17 = [v1 unitString];
  v18 = [v17 isEqualToString:@"ct"];

  if (v18)
  {
    v5 = v2;
    v6 = 14;
    goto LABEL_35;
  }

  v19 = [v1 unitString];
  v20 = [v19 isEqualToString:@"dg"];

  if (v20)
  {
    v5 = v2;
    v6 = 3;
    goto LABEL_35;
  }

  v21 = [v1 unitString];
  v22 = [v21 isEqualToString:@"ng"];

  if (v22)
  {
    v5 = v2;
    v6 = 7;
    goto LABEL_35;
  }

  v23 = [v1 unitString];
  v24 = [v23 isEqualToString:@"pg"];

  if (v24)
  {
    v5 = v2;
    v6 = 8;
    goto LABEL_35;
  }

  v25 = [v1 unitString];
  v26 = [v25 isEqualToString:@"cg"];

  if (v26)
  {
    v5 = v2;
    v6 = 4;
    goto LABEL_35;
  }

  v27 = [v1 unitString];
  v28 = [v27 isEqualToString:@"µg"];

  if (v28)
  {
    v5 = v2;
    v6 = 6;
    goto LABEL_35;
  }

  v29 = [v1 unitString];
  v30 = [v29 isEqualToString:@"mg"];

  if (v30)
  {
    v5 = v2;
    v6 = 5;
    goto LABEL_35;
  }

  v31 = [v1 unitString];
  v32 = [v31 isEqualToString:@"oz t"];

  if (v32)
  {
    v5 = v2;
    v6 = 15;
    goto LABEL_35;
  }

  v33 = [v1 unitString];
  v34 = [v33 isEqualToString:@"ton"];

  if (v34)
  {
    v5 = v2;
    v6 = 13;
    goto LABEL_35;
  }

  v35 = [v1 unitString];
  v36 = [v35 isEqualToString:@"t"];

  if (v36)
  {
    v5 = v2;
    v6 = 12;
    goto LABEL_35;
  }

  v38 = [v1 unitString];
  v39 = [v38 isEqualToString:@"d"];

  if (v39)
  {
    v40 = v2;
    v41 = 4;
LABEL_47:
    [(_INPBWellnessUnitType *)v40 setTimeUnit:v41];
    goto LABEL_36;
  }

  v42 = [v1 unitString];
  v43 = [v42 isEqualToString:@"hr"];

  if (v43)
  {
    v40 = v2;
    v41 = 3;
    goto LABEL_47;
  }

  v44 = [v1 unitString];
  v45 = [v44 isEqualToString:@"min"];

  if (v45)
  {
    v40 = v2;
    v41 = 2;
    goto LABEL_47;
  }

  v46 = [v1 unitString];
  v47 = [v46 isEqualToString:@"s"];

  if (v47)
  {
    v40 = v2;
    v41 = 1;
    goto LABEL_47;
  }

  v48 = [v1 unitString];
  v49 = [v48 isEqualToString:@"J"];

  if (v49)
  {
    v50 = v2;
    v51 = 2;
LABEL_58:
    [(_INPBWellnessUnitType *)v50 setEnergyUnit:v51];
    goto LABEL_36;
  }

  v52 = [v1 unitString];
  v53 = [v52 isEqualToString:@"Cal"];

  if (v53)
  {
    v50 = v2;
    v51 = 4;
    goto LABEL_58;
  }

  v54 = [v1 unitString];
  v55 = [v54 isEqualToString:@"kcal"];

  if (v55)
  {
    v50 = v2;
    v51 = 3;
    goto LABEL_58;
  }

  v56 = [v1 unitString];
  v57 = [v56 isEqualToString:@"kJ"];

  if (v57)
  {
    v50 = v2;
    v51 = 1;
    goto LABEL_58;
  }

  v58 = [v1 unitString];
  v59 = [v58 isEqualToString:@"kWh"];

  if (v59)
  {
    v50 = v2;
    v51 = 5;
    goto LABEL_58;
  }

  v60 = [v1 unitString];
  v61 = [v60 isEqualToString:@"mi"];

  if (v61)
  {
    v62 = v2;
    v63 = 2;
LABEL_73:
    [(_INPBWellnessUnitType *)v62 setLengthUnit:v63];
    goto LABEL_36;
  }

  v64 = [v1 unitString];
  v65 = [v64 isEqualToString:@"ft"];

  if (v65)
  {
    v62 = v2;
    v63 = 4;
    goto LABEL_73;
  }

  v66 = [v1 unitString];
  v67 = [v66 isEqualToString:@"in"];

  if (v67)
  {
    v62 = v2;
    v63 = 5;
    goto LABEL_73;
  }

  v68 = [v1 unitString];
  v69 = [v68 isEqualToString:@"yd"];

  if (v69)
  {
    v62 = v2;
    v63 = 6;
    goto LABEL_73;
  }

  v70 = [v1 unitString];
  v71 = [v70 isEqualToString:@"m"];

  if (v71)
  {
    v62 = v2;
    v63 = 1;
    goto LABEL_73;
  }

  v72 = [v1 unitString];
  v73 = [v72 isEqualToString:@"km"];

  if (v73)
  {
    v62 = v2;
    v63 = 7;
    goto LABEL_73;
  }

  v74 = [v1 unitString];
  v75 = [v74 isEqualToString:@"cm"];

  if (v75)
  {
    v62 = v2;
    v63 = 3;
    goto LABEL_73;
  }

  v76 = [v1 unitString];
  v77 = [v76 isEqualToString:@"cup_us"];

  if (v77)
  {
    v78 = v2;
    v79 = 19;
LABEL_110:
    [(_INPBWellnessUnitType *)v78 setVolumeUnit:v79];
    goto LABEL_36;
  }

  v80 = [v1 unitString];
  v81 = [v80 isEqualToString:@"pt_us"];

  if (v81)
  {
    v78 = v2;
    v79 = 20;
    goto LABEL_110;
  }

  v82 = [v1 unitString];
  v83 = [v82 isEqualToString:@"L"];

  if (v83)
  {
    v78 = v2;
    v79 = 3;
    goto LABEL_110;
  }

  v84 = [v1 unitString];
  v85 = [v84 isEqualToString:@"qt"];

  if (v85)
  {
    v78 = v2;
    v79 = 21;
    goto LABEL_110;
  }

  v86 = [v1 unitString];
  v87 = [v86 isEqualToString:@"bsh"];

  if (v87)
  {
    v78 = v2;
    v79 = 15;
    goto LABEL_110;
  }

  v88 = [v1 unitString];
  v89 = [v88 isEqualToString:@"gal"];

  if (v89)
  {
    v78 = v2;
    v79 = 22;
    goto LABEL_110;
  }

  v90 = [v1 unitString];
  v91 = [v90 isEqualToString:@"tsp"];

  if (v91)
  {
    goto LABEL_87;
  }

  v92 = [v1 unitString];
  v93 = [v92 isEqualToString:@"dL"];

  if (v93)
  {
    v78 = v2;
    v79 = 4;
    goto LABEL_110;
  }

  v94 = [v1 unitString];
  v95 = [v94 isEqualToString:@"kL"];

  if (v95)
  {
    v78 = v2;
    v79 = 2;
    goto LABEL_110;
  }

  v96 = [v1 unitString];
  v97 = [v96 isEqualToString:@"ML"];

  if (v97)
  {
    v78 = v2;
    v79 = 1;
    goto LABEL_110;
  }

  v98 = [v1 unitString];
  v99 = [v98 isEqualToString:@"af"];

  if (v99)
  {
    v78 = v2;
    v79 = 14;
    goto LABEL_110;
  }

  v100 = [v1 unitString];
  v101 = [v100 isEqualToString:@"cL"];

  if (v101)
  {
    v78 = v2;
    v79 = 5;
    goto LABEL_110;
  }

  v102 = [v1 unitString];
  v103 = [v102 isEqualToString:@"ft³"];

  if (v103)
  {
    v78 = v2;
    v79 = 11;
    goto LABEL_110;
  }

  v104 = [v1 unitString];
  v105 = [v104 isEqualToString:@"in³"];

  if (v105)
  {
    v78 = v2;
    v79 = 10;
    goto LABEL_110;
  }

  v106 = [v1 unitString];
  v107 = [v106 isEqualToString:@"mi³"];

  if (v107)
  {
    v78 = v2;
    v79 = 13;
    goto LABEL_110;
  }

  v108 = [v1 unitString];
  v109 = [v108 isEqualToString:@"yd³"];

  if (v109)
  {
    v78 = v2;
    v79 = 12;
    goto LABEL_110;
  }

  v110 = [v1 unitString];
  v111 = [v110 isEqualToString:@"metric cup"];

  if (v111)
  {
    v78 = v2;
    v79 = 26;
    goto LABEL_110;
  }

  v112 = [v1 unitString];
  v113 = [v112 isEqualToString:@"mL"];

  if (v113)
  {
    v78 = v2;
    v79 = 6;
    goto LABEL_110;
  }

  v114 = [v1 unitString];
  v115 = [v114 isEqualToString:@"tbsp"];

  if (v115)
  {
LABEL_87:
    v78 = v2;
    v79 = 16;
    goto LABEL_110;
  }

  v116 = [v1 unitString];
  v117 = [v116 isEqualToString:@"fl_oz_us"];

  if (v117)
  {
    v78 = v2;
    v79 = 18;
    goto LABEL_110;
  }

  v118 = [v1 unitString];
  v119 = [v118 isEqualToString:@"qt"];

  if (v119)
  {
    v78 = v2;
    v79 = 24;
    goto LABEL_110;
  }

  v120 = [v1 unitString];
  v121 = [v120 isEqualToString:@"dm³"];

  if (v121)
  {
    v78 = v2;
    v79 = 8;
    goto LABEL_110;
  }

  v122 = [v1 unitString];
  v123 = [v122 isEqualToString:@"km³"];

  if (v123)
  {
    v78 = v2;
    v79 = 7;
    goto LABEL_110;
  }

  v124 = [v1 unitString];
  v125 = [v124 isEqualToString:@"gal"];

  if (v125)
  {
    v78 = v2;
    v79 = 25;
    goto LABEL_110;
  }

  v126 = [v1 unitString];
  v127 = [v126 isEqualToString:@"mm³"];

  if (v127)
  {
    v78 = v2;
    v79 = 9;
    goto LABEL_110;
  }

  v128 = [v1 unitString];
  v129 = [v128 isEqualToString:@"tsp"];

  if (v129)
  {
    v78 = v2;
    v79 = 23;
    goto LABEL_110;
  }

  v130 = [v1 unitString];
  v131 = [v130 isEqualToString:@"degC"];

  if (v131)
  {
    v132 = v2;
    v133 = 1;
LABEL_132:
    [(_INPBWellnessUnitType *)v132 setTemperatureUnit:v133];
    goto LABEL_36;
  }

  v134 = [v1 unitString];
  v135 = [v134 isEqualToString:@"degF"];

  if (v135)
  {
    v132 = v2;
    v133 = 2;
    goto LABEL_132;
  }

  v136 = [v1 unitString];
  v137 = [v136 isEqualToString:@"K"];

  if (v137)
  {
    v132 = v2;
    v133 = 3;
    goto LABEL_132;
  }

  v138 = [v1 unitString];
  v139 = [v138 isEqualToString:@"breaths/min"];

  if (v139)
  {
    [(_INPBWellnessUnitType *)v2 setRespiratoryRateUnit:1];
    goto LABEL_36;
  }

  v140 = [v1 unitString];
  v141 = [v140 isEqualToString:@"bpm"];

  if (v141)
  {
    [(_INPBWellnessUnitType *)v2 setHeartRateUnit:1];
    goto LABEL_36;
  }

  v142 = [v1 unitString];
  v143 = [v142 isEqualToString:@"mmHg"];

  if (v143)
  {
    [(_INPBWellnessUnitType *)v2 setBloodPressureUnit:1];
    goto LABEL_36;
  }

  v144 = [v1 unitString];
  v145 = [v144 isEqualToString:@"mg/dL"];

  if (v145)
  {
    v146 = v2;
    v147 = 1;
  }

  else
  {
    v148 = [v1 unitString];
    v149 = [v148 isEqualToString:@"mmol/L"];

    if (!v149)
    {
      goto LABEL_36;
    }

    v146 = v2;
    v147 = 2;
  }

  [(_INPBWellnessUnitType *)v146 setBloodGlucoseUnit:v147];
LABEL_36:

  return v2;
}

id INIntentSlotValueTransformFromWellnessUnitTypes(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromWellnessUnitType(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToWellnessUnitTypes(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToWellnessUnitType(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

__CFString *INSearchForAccountsIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E72852A0[a1];
  }
}

uint64_t _INPBRangeValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v28 = objc_alloc_init(_INPBValueMetadata);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v28];
      }

      else if (v13 == 3)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
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

LABEL_46:
        [a1 setLength:v27];
      }

      else if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
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

LABEL_50:
        [a1 setLocation:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromTimestamp(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 seconds];
    v4 = [v2 nanos];

    v5 = v3;
    if (v4 >= 1)
    {
      v5 = v4 / 1000000000.0 + v5;
    }

    a1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v5];
    v1 = vars8;
  }

  return a1;
}

_INPBTimestamp *INIntentSlotValueTransformToTimestamp(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBTimestamp);
    [v1 timeIntervalSince1970];
    v4 = v3;

    [(_INPBTimestamp *)v2 setSeconds:vcvtmd_s64_f64(v4)];
    [(_INPBTimestamp *)v2 setNanos:((v4 - floor(v4)) * 1000000000.0)];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromTimestamps(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromTimestamp(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToTimestamps(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToTimestamp(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t _INPBGenericIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setMetadata:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBProperty);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBPropertyReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addProperties:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBQueryHomeIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(_INPBHomeEntity);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeEntityReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addEntities:v13];
        }

LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBIntentMetadata);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v13];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

INTrainReservation *INIntentSlotValueTransformFromTrainReservation(INTrainReservation *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [(INTrainReservation *)v2 reservation];
    v4 = [INTrainReservation alloc];
    v23 = [v3 itemReference];
    v24 = INIntentSlotValueTransformFromDataString(v23);
    v21 = [v3 reservationNumber];
    v22 = [v3 bookingTime];
    v19 = INIntentSlotValueTransformFromTimestamp(v22);
    v5 = [v3 hasReservationStatus];
    v6 = [v3 reservationStatus];
    if ((((v6 - 2) < 4) & v5) != 0)
    {
      v7 = (v6 - 1);
    }

    else
    {
      v7 = 0;
    }

    v16 = v7;
    v15 = [v3 reservationHolderName];
    v20 = [v3 actions];
    v8 = INIntentSlotValueTransformFromReservationActions(v20);
    v18 = [v3 url];
    v9 = INIntentSlotValueTransformFromURLValue(v18);
    v10 = [(INTrainReservation *)v2 reservedSeat];
    v11 = INIntentSlotValueTransformFromSeat(v10);
    v12 = [(INTrainReservation *)v2 trainTrip];

    v13 = INIntentSlotValueTransformFromTrainTrip(v12);
    v17 = [(INTrainReservation *)v4 initWithItemReference:v24 reservationNumber:v21 bookingTime:v19 reservationStatus:v16 reservationHolderName:v15 actions:v8 URL:v9 reservedSeat:v11 trainTrip:v13];

    a1 = v17;
    v1 = vars8;
  }

  return a1;
}

_INPBTrainReservation *INIntentSlotValueTransformToTrainReservation(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBReservation);
    v3 = [v1 itemReference];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBReservation *)v2 setItemReference:v4];

    v5 = [v1 reservationNumber];
    [(_INPBReservation *)v2 setReservationNumber:v5];

    v6 = [v1 bookingTime];
    v7 = INIntentSlotValueTransformToTimestamp(v6);
    [(_INPBReservation *)v2 setBookingTime:v7];

    v8 = [v1 reservationStatus];
    if (v8 < 5)
    {
      v9 = (v8 + 1);
    }

    else
    {
      v9 = 0x7FFFFFFFLL;
    }

    [(_INPBReservation *)v2 setReservationStatus:v9];
    v10 = [v1 reservationHolderName];
    [(_INPBReservation *)v2 setReservationHolderName:v10];

    v11 = [v1 actions];
    v12 = INIntentSlotValueTransformToReservationActions(v11);
    [(_INPBReservation *)v2 setActions:v12];

    v13 = [v1 URL];
    v14 = INIntentSlotValueTransformToURLValue(v13);
    [(_INPBReservation *)v2 setUrl:v14];

    v15 = objc_alloc_init(_INPBTrainReservation);
    [(_INPBTrainReservation *)v15 setReservation:v2];
    v16 = [v1 reservedSeat];
    v17 = INIntentSlotValueTransformToSeat(v16);
    [(_INPBTrainReservation *)v15 setReservedSeat:v17];

    v18 = [v1 trainTrip];

    v19 = INIntentSlotValueTransformToTrainTrip(v18);
    [(_INPBTrainReservation *)v15 setTrainTrip:v19];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromTrainReservations(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromTrainReservation(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToTrainReservations(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToTrainReservation(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

unint64_t INCervicalMucusQualityValueTypeGetBackingType(unint64_t result)
{
  if (result >= 6)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INCervicalMucusQualityValueTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 5) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INCervicalMucusQualityValueTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72852F0[a1 - 1];
  }
}

uint64_t INCervicalMucusQualityValueTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"dry"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"sticky"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"creamy"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"watery"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"eggwhite"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCervicalMucusQualityValueTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"dry";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"sticky";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"creamy";
        break;
      case 4:
        v5 = @"watery";
        break;
      case 5:
        v5 = @"eggwhite";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

uint64_t INRelativeSettingGetBackingType(uint64_t result)
{
  if ((result - 1) < 4)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INRelativeSettingGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 4) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INRelativeSettingGetName(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7285318[a1 - 1];
  }
}

uint64_t INRelativeSettingWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"lowest"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"lower"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"higher"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"highest"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRelativeSettingGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"higher";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_11;
      }

      v5 = @"highest";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"lowest";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    v5 = @"lower";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_11:

  return v4;
}

uint64_t INTaskStatusGetBackingType(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (10 * a1);
  }
}

uint64_t INTaskStatusGetFacadeType(int a1, int a2)
{
  v2 = a2 == 10;
  if (a2 == 20)
  {
    v2 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INTaskStatusGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"completed";
  }

  if (a1 == 1)
  {
    return @"notCompleted";
  }

  else
  {
    return v1;
  }
}

uint64_t INTaskStatusWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"notCompleted"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"completed"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTaskStatusGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"completed";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"not completed";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBURLValueReadFrom(void *a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v14 = objc_alloc_init(_INPBValueMetadata);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v14];
        goto LABEL_25;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        [a1 setAbsoluteString:v14];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    [a1 setScope:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBCallMetricsReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBCallMetricsValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBCallMetricsValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValue:v13];
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

INBillPayee *INIntentSlotValueTransformFromBillPayeeValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    v4 = [INBillPayee alloc];
    v5 = [v2 nickname];
    v6 = INIntentSlotValueTransformFromDataString(v5);
    v7 = [v2 accountNumber];
    v8 = [v2 organizationName];
    v9 = INIntentSlotValueTransformFromDataString(v8);
    v10 = [(INBillPayee *)v4 initWithNickname:v6 number:v7 organizationName:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBBillPayeeValue *INIntentSlotValueTransformToBillPayeeValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBBillPayeeValue);
    v3 = [v1 nickname];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBBillPayeeValue *)v2 setNickname:v4];

    v5 = [v1 accountNumber];
    [(_INPBBillPayeeValue *)v2 setAccountNumber:v5];

    v6 = [v1 organizationName];

    v7 = INIntentSlotValueTransformToDataString(v6);
    [(_INPBBillPayeeValue *)v2 setOrganizationName:v7];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromBillPayeeValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromBillPayeeValue(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToBillPayeeValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToBillPayeeValue(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

_INPBBillPayeeValue *INIntentSlotValueRedactedBillPayeeValueFromBillPayeeValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 valueMetadata];
  v5 = INPrivacyEntitlementOptionsForValueMetadata(v4);

  if ((v5 & a2) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(_INPBBillPayeeValue);
    v7 = [v3 nickname];
    [(_INPBBillPayeeValue *)v6 setNickname:v7];

    v8 = [v3 accountNumber];
    [(_INPBBillPayeeValue *)v6 setAccountNumber:v8];

    v9 = [v3 organizationName];
    [(_INPBBillPayeeValue *)v6 setOrganizationName:v9];
  }

  return v6;
}

void INPhotoAttributeOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_33;
  }

  v4 = v3;
  if (a1)
  {
    (*(v3 + 2))(v3, 2);
    v3 = v4;
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  (*(v3 + 2))(v4, 3);
  v3 = v4;
  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  (*(v3 + 2))(v4, 4);
  v3 = v4;
  if ((a1 & 8) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  (*(v3 + 2))(v4, 10);
  v3 = v4;
  if ((a1 & 0x10) == 0)
  {
LABEL_8:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  (*(v3 + 2))(v4, 11);
  v3 = v4;
  if ((a1 & 0x20) == 0)
  {
LABEL_9:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  (*(v3 + 2))(v4, 12);
  v3 = v4;
  if ((a1 & 0x40) == 0)
  {
LABEL_10:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  (*(v3 + 2))(v4, 13);
  v3 = v4;
  if ((a1 & 0x80) == 0)
  {
LABEL_11:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  (*(v3 + 2))(v4, 14);
  v3 = v4;
  if ((a1 & 0x100) == 0)
  {
LABEL_12:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  (*(v3 + 2))(v4, 15);
  v3 = v4;
  if ((a1 & 0x200) == 0)
  {
LABEL_13:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  (*(v3 + 2))(v4, 16);
  v3 = v4;
  if ((a1 & 0x400) == 0)
  {
LABEL_14:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  (*(v3 + 2))(v4, 50);
  v3 = v4;
  if ((a1 & 0x800) == 0)
  {
LABEL_15:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  (*(v3 + 2))(v4, 51);
  v3 = v4;
  if ((a1 & 0x1000) == 0)
  {
LABEL_16:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  (*(v3 + 2))(v4, 52);
  v3 = v4;
  if ((a1 & 0x2000) == 0)
  {
LABEL_17:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  (*(v3 + 2))(v4, 53);
  v3 = v4;
  if ((a1 & 0x4000) == 0)
  {
LABEL_18:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  (*(v3 + 2))(v4, 80);
  v3 = v4;
  if ((a1 & 0x8000) == 0)
  {
LABEL_19:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  (*(v3 + 2))(v4, 81);
  v3 = v4;
  if ((a1 & 0x10000) == 0)
  {
LABEL_20:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  (*(v3 + 2))(v4, 300);
  v3 = v4;
  if ((a1 & 0x20000) == 0)
  {
LABEL_21:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  (*(v3 + 2))(v4, 301);
  v3 = v4;
  if ((a1 & 0x40000) == 0)
  {
LABEL_22:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  (*(v3 + 2))(v4, 302);
  v3 = v4;
  if ((a1 & 0x80000) == 0)
  {
LABEL_23:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  (*(v3 + 2))(v4, 303);
  v3 = v4;
  if ((a1 & 0x100000) == 0)
  {
LABEL_24:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  (*(v3 + 2))(v4, 304);
  v3 = v4;
  if ((a1 & 0x200000) == 0)
  {
LABEL_25:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  (*(v3 + 2))(v4, 305);
  v3 = v4;
  if ((a1 & 0x400000) == 0)
  {
LABEL_26:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  (*(v3 + 2))(v4, 306);
  v3 = v4;
  if ((a1 & 0x800000) == 0)
  {
LABEL_27:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  (*(v3 + 2))(v4, 307);
  v3 = v4;
  if ((a1 & 0x1000000) == 0)
  {
LABEL_28:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  (*(v3 + 2))(v4, 54);
  v3 = v4;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_29:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_62:
    (*(v3 + 2))(v4, 56);
    v3 = v4;
    if ((a1 & 0x8000000) == 0)
    {
LABEL_31:
      if ((a1 & 0x10000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_61:
  (*(v3 + 2))(v4, 55);
  v3 = v4;
  if ((a1 & 0x4000000) != 0)
  {
    goto LABEL_62;
  }

LABEL_30:
  if ((a1 & 0x8000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_63:
  (*(v3 + 2))(v4, 57);
  v3 = v4;
  if ((a1 & 0x10000000) != 0)
  {
LABEL_32:
    (*(v3 + 2))(v4, 58);
    v3 = v4;
  }

LABEL_33:
}

uint64_t INPhotoAttributeOptionsContainsBackingType(unint64_t a1, int a2)
{
  if (a1)
  {
    if (a2 <= 53)
    {
      if (a2 > 13)
      {
        v2 = (a1 >> 12) & 1;
        v15 = (a1 >> 13) & 1;
        if (a2 != 53)
        {
          LOBYTE(v15) = 0;
        }

        if (a2 != 52)
        {
          LOBYTE(v2) = v15;
        }

        v16 = (a1 >> 10) & 1;
        v17 = (a1 >> 11) & 1;
        if (a2 != 51)
        {
          LOBYTE(v17) = 0;
        }

        if (a2 != 50)
        {
          LOBYTE(v16) = v17;
        }

        if (a2 <= 51)
        {
          LOBYTE(v2) = v16;
        }

        v6 = (a1 >> 7) & 1;
        v18 = (a1 >> 8) & 1;
        v19 = (a1 >> 9) & 1;
        if (a2 != 16)
        {
          LOBYTE(v19) = 0;
        }

        if (a2 != 15)
        {
          LOBYTE(v18) = v19;
        }

        if (a2 != 14)
        {
          LOBYTE(v6) = v18;
        }

        v10 = a2 <= 49;
      }

      else
      {
        v2 = (a1 >> 5) & 1;
        v11 = (a1 >> 6) & 1;
        if (a2 != 13)
        {
          LOBYTE(v11) = 0;
        }

        if (a2 != 12)
        {
          LOBYTE(v2) = v11;
        }

        v12 = (a1 >> 3) & 1;
        v13 = (a1 >> 4) & 1;
        if (a2 != 11)
        {
          LOBYTE(v13) = 0;
        }

        if (a2 != 10)
        {
          LOBYTE(v12) = v13;
        }

        if (a2 <= 11)
        {
          LOBYTE(v2) = v12;
        }

        v6 = (a1 >> 1) & 1;
        v14 = (a1 >> 2) & 1;
        if (a2 != 4)
        {
          LOBYTE(v14) = 0;
        }

        if (a2 != 3)
        {
          LOBYTE(v6) = v14;
        }

        if (a2 == 2)
        {
          LOBYTE(v6) = a1;
        }

        v10 = a2 <= 9;
      }
    }

    else if (a2 <= 299)
    {
      v2 = (a1 >> 14) & 1;
      v20 = (a1 >> 15) & 1;
      if (a2 != 81)
      {
        LOBYTE(v20) = 0;
      }

      if (a2 != 80)
      {
        LOBYTE(v2) = v20;
      }

      v21 = (a1 >> 27) & 1;
      v22 = (a1 >> 28) & 1;
      if (a2 != 58)
      {
        LOBYTE(v22) = 0;
      }

      if (a2 != 57)
      {
        LOBYTE(v21) = v22;
      }

      if (a2 <= 79)
      {
        LOBYTE(v2) = v21;
      }

      v6 = (a1 >> 24) & 1;
      v23 = (a1 >> 25) & 1;
      v24 = (a1 >> 26) & 1;
      if (a2 != 56)
      {
        LOBYTE(v24) = 0;
      }

      if (a2 != 55)
      {
        LOBYTE(v23) = v24;
      }

      if (a2 != 54)
      {
        LOBYTE(v6) = v23;
      }

      v10 = a2 <= 56;
    }

    else
    {
      v2 = (a1 >> 22) & 1;
      v3 = (a1 >> 23) & 1;
      if (a2 != 307)
      {
        LOBYTE(v3) = 0;
      }

      if (a2 != 306)
      {
        LOBYTE(v2) = v3;
      }

      v4 = (a1 >> 20) & 1;
      v5 = (a1 >> 21) & 1;
      if (a2 != 305)
      {
        LOBYTE(v5) = 0;
      }

      if (a2 != 304)
      {
        LOBYTE(v4) = v5;
      }

      if (a2 <= 305)
      {
        LOBYTE(v2) = v4;
      }

      v6 = (a1 >> 18) & 1;
      v7 = (a1 >> 19) & 1;
      if (a2 != 303)
      {
        LOBYTE(v7) = 0;
      }

      if (a2 != 302)
      {
        LOBYTE(v6) = v7;
      }

      v8 = (a1 >> 16) & 1;
      v9 = (a1 >> 17) & 1;
      if (a2 != 301)
      {
        LOBYTE(v9) = 0;
      }

      if (a2 != 300)
      {
        LOBYTE(v8) = v9;
      }

      if (a2 <= 301)
      {
        LOBYTE(v6) = v8;
      }

      v10 = a2 <= 303;
    }

    if (v10)
    {
      LOBYTE(v2) = v6;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INPhotoAttributeOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 <= 53)
    {
      if (a2 > 13)
      {
        v3 = v2 | 0x1000;
        v16 = v2 | 0x2000;
        if (a2 != 53)
        {
          v16 = *result;
        }

        if (a2 != 52)
        {
          v3 = v16;
        }

        v17 = v2 | 0x400;
        v18 = v2 | 0x800;
        if (a2 != 51)
        {
          v18 = *result;
        }

        if (a2 != 50)
        {
          v17 = v18;
        }

        if (a2 <= 51)
        {
          v3 = v17;
        }

        v19 = v2 | 0x80;
        v20 = v2 | 0x100;
        if (a2 == 16)
        {
          v2 |= 0x200uLL;
        }

        if (a2 == 15)
        {
          v2 = v20;
        }

        if (a2 == 14)
        {
          v2 = v19;
        }

        v10 = a2 <= 49;
      }

      else
      {
        v3 = v2 | 0x20;
        v11 = v2 | 0x40;
        if (a2 != 13)
        {
          v11 = *result;
        }

        if (a2 != 12)
        {
          v3 = v11;
        }

        v12 = v2 | 8;
        v13 = v2 | 0x10;
        if (a2 != 11)
        {
          v13 = *result;
        }

        if (a2 != 10)
        {
          v12 = v13;
        }

        if (a2 <= 11)
        {
          v3 = v12;
        }

        v14 = v2 | 1;
        v15 = v2 | 2;
        if (a2 == 4)
        {
          v2 |= 4uLL;
        }

        if (a2 == 3)
        {
          v2 = v15;
        }

        if (a2 == 2)
        {
          v2 = v14;
        }

        v10 = a2 <= 9;
      }
    }

    else if (a2 <= 299)
    {
      v3 = v2 | 0x4000;
      v21 = v2 | 0x8000;
      if (a2 != 81)
      {
        v21 = *result;
      }

      if (a2 != 80)
      {
        v3 = v21;
      }

      v22 = v2 | 0x8000000;
      v23 = v2 | 0x10000000;
      if (a2 != 58)
      {
        v23 = *result;
      }

      if (a2 != 57)
      {
        v22 = v23;
      }

      if (a2 <= 79)
      {
        v3 = v22;
      }

      v24 = v2 | 0x1000000;
      v25 = v2 | 0x2000000;
      if (a2 == 56)
      {
        v2 |= 0x4000000uLL;
      }

      if (a2 == 55)
      {
        v2 = v25;
      }

      if (a2 == 54)
      {
        v2 = v24;
      }

      v10 = a2 <= 56;
    }

    else
    {
      v3 = v2 | 0x400000;
      v4 = v2 | 0x800000;
      if (a2 != 307)
      {
        v4 = *result;
      }

      if (a2 != 306)
      {
        v3 = v4;
      }

      v5 = v2 | 0x100000;
      v6 = v2 | 0x200000;
      if (a2 != 305)
      {
        v6 = *result;
      }

      if (a2 != 304)
      {
        v5 = v6;
      }

      if (a2 <= 305)
      {
        v3 = v5;
      }

      v7 = v2 | 0x40000;
      v8 = v2 | 0x80000;
      if (a2 != 303)
      {
        v8 = *result;
      }

      if (a2 != 302)
      {
        v7 = v8;
      }

      v9 = v2 | 0x10000;
      if (a2 == 301)
      {
        v2 |= 0x20000uLL;
      }

      if (a2 == 300)
      {
        v2 = v9;
      }

      if (a2 > 301)
      {
        v2 = v7;
      }

      v10 = a2 <= 303;
    }

    if (!v10)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INPhotoAttributeOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 <= 53)
    {
      if (a2 > 13)
      {
        v3 = v2 & 0xFFFFFFFFFFFFEFFFLL;
        v16 = v2 & 0xFFFFFFFFFFFFDFFFLL;
        if (a2 != 53)
        {
          v16 = *result;
        }

        if (a2 != 52)
        {
          v3 = v16;
        }

        v17 = v2 & 0xFFFFFFFFFFFFFBFFLL;
        v18 = v2 & 0xFFFFFFFFFFFFF7FFLL;
        if (a2 != 51)
        {
          v18 = *result;
        }

        if (a2 != 50)
        {
          v17 = v18;
        }

        if (a2 <= 51)
        {
          v3 = v17;
        }

        v19 = v2 & 0xFFFFFFFFFFFFFF7FLL;
        v20 = v2 & 0xFFFFFFFFFFFFFEFFLL;
        if (a2 == 16)
        {
          v2 &= ~0x200uLL;
        }

        if (a2 == 15)
        {
          v2 = v20;
        }

        if (a2 == 14)
        {
          v2 = v19;
        }

        v10 = a2 <= 49;
      }

      else
      {
        v3 = v2 & 0xFFFFFFFFFFFFFFDFLL;
        v11 = v2 & 0xFFFFFFFFFFFFFFBFLL;
        if (a2 != 13)
        {
          v11 = *result;
        }

        if (a2 != 12)
        {
          v3 = v11;
        }

        v12 = v2 & 0xFFFFFFFFFFFFFFF7;
        v13 = v2 & 0xFFFFFFFFFFFFFFEFLL;
        if (a2 != 11)
        {
          v13 = *result;
        }

        if (a2 != 10)
        {
          v12 = v13;
        }

        if (a2 <= 11)
        {
          v3 = v12;
        }

        v14 = v2 & 0xFFFFFFFFFFFFFFFELL;
        v15 = v2 & 0xFFFFFFFFFFFFFFFDLL;
        if (a2 == 4)
        {
          v2 &= ~4uLL;
        }

        if (a2 == 3)
        {
          v2 = v15;
        }

        if (a2 == 2)
        {
          v2 = v14;
        }

        v10 = a2 <= 9;
      }
    }

    else if (a2 <= 299)
    {
      v3 = v2 & 0xFFFFFFFFFFFFBFFFLL;
      v21 = v2 & 0xFFFFFFFFFFFF7FFFLL;
      if (a2 != 81)
      {
        v21 = *result;
      }

      if (a2 != 80)
      {
        v3 = v21;
      }

      v22 = v2 & 0xFFFFFFFFF7FFFFFFLL;
      v23 = v2 & 0xFFFFFFFFEFFFFFFFLL;
      if (a2 != 58)
      {
        v23 = *result;
      }

      if (a2 != 57)
      {
        v22 = v23;
      }

      if (a2 <= 79)
      {
        v3 = v22;
      }

      v24 = v2 & 0xFFFFFFFFFEFFFFFFLL;
      v25 = v2 & 0xFFFFFFFFFDFFFFFFLL;
      if (a2 == 56)
      {
        v2 &= ~0x4000000uLL;
      }

      if (a2 == 55)
      {
        v2 = v25;
      }

      if (a2 == 54)
      {
        v2 = v24;
      }

      v10 = a2 <= 56;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFBFFFFFLL;
      v4 = v2 & 0xFFFFFFFFFF7FFFFFLL;
      if (a2 != 307)
      {
        v4 = *result;
      }

      if (a2 != 306)
      {
        v3 = v4;
      }

      v5 = v2 & 0xFFFFFFFFFFEFFFFFLL;
      v6 = v2 & 0xFFFFFFFFFFDFFFFFLL;
      if (a2 != 305)
      {
        v6 = *result;
      }

      if (a2 != 304)
      {
        v5 = v6;
      }

      if (a2 <= 305)
      {
        v3 = v5;
      }

      v7 = v2 & 0xFFFFFFFFFFFBFFFFLL;
      v8 = v2 & 0xFFFFFFFFFFF7FFFFLL;
      if (a2 != 303)
      {
        v8 = *result;
      }

      if (a2 != 302)
      {
        v7 = v8;
      }

      v9 = v2 & 0xFFFFFFFFFFFEFFFFLL;
      if (a2 == 301)
      {
        v2 &= ~0x20000uLL;
      }

      if (a2 == 300)
      {
        v2 = v9;
      }

      if (a2 > 301)
      {
        v2 = v7;
      }

      v10 = a2 <= 303;
    }

    if (!v10)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INPhotoAttributeOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"photo"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_39;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"video"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }

LABEL_39:
    [v3 addObject:@"GIF"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
    }

LABEL_40:
    [v3 addObject:@"flash"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }

LABEL_41:
    [v3 addObject:@"landscapeOrientation"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_42:
    [v3 addObject:@"portraitOrientation"];
    if ((v1 & 0x40) == 0)
    {
LABEL_9:
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }

LABEL_43:
    [v3 addObject:@"favorite"];
    if ((v1 & 0x80) == 0)
    {
LABEL_10:
      if ((v1 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_44:
    [v3 addObject:@"selfie"];
    if ((v1 & 0x100) == 0)
    {
LABEL_11:
      if ((v1 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_46;
    }

LABEL_45:
    [v3 addObject:@"frontFacingCamera"];
    if ((v1 & 0x200) == 0)
    {
LABEL_12:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_47;
    }

LABEL_46:
    [v3 addObject:@"screenshot"];
    if ((v1 & 0x400) == 0)
    {
LABEL_13:
      if ((v1 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_48;
    }

LABEL_47:
    [v3 addObject:@"burstPhoto"];
    if ((v1 & 0x800) == 0)
    {
LABEL_14:
      if ((v1 & 0x1000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

LABEL_48:
    [v3 addObject:@"HDRPhoto"];
    if ((v1 & 0x1000) == 0)
    {
LABEL_15:
      if ((v1 & 0x2000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }

LABEL_49:
    [v3 addObject:@"squarePhoto"];
    if ((v1 & 0x2000) == 0)
    {
LABEL_16:
      if ((v1 & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }

LABEL_50:
    [v3 addObject:@"panoramaPhoto"];
    if ((v1 & 0x4000) == 0)
    {
LABEL_17:
      if ((v1 & 0x8000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }

LABEL_51:
    [v3 addObject:@"timeLapseVideo"];
    if ((v1 & 0x8000) == 0)
    {
LABEL_18:
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_53;
    }

LABEL_52:
    [v3 addObject:@"slowMotionVideo"];
    if ((v1 & 0x10000) == 0)
    {
LABEL_19:
      if ((v1 & 0x20000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_54;
    }

LABEL_53:
    [v3 addObject:@"noirFilter"];
    if ((v1 & 0x20000) == 0)
    {
LABEL_20:
      if ((v1 & 0x40000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_55;
    }

LABEL_54:
    [v3 addObject:@"chromeFilter"];
    if ((v1 & 0x40000) == 0)
    {
LABEL_21:
      if ((v1 & 0x80000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_56;
    }

LABEL_55:
    [v3 addObject:@"instantFilter"];
    if ((v1 & 0x80000) == 0)
    {
LABEL_22:
      if ((v1 & 0x100000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_57;
    }

LABEL_56:
    [v3 addObject:@"tonalFilter"];
    if ((v1 & 0x100000) == 0)
    {
LABEL_23:
      if ((v1 & 0x200000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_58;
    }

LABEL_57:
    [v3 addObject:@"transferFilter"];
    if ((v1 & 0x200000) == 0)
    {
LABEL_24:
      if ((v1 & 0x400000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_59;
    }

LABEL_58:
    [v3 addObject:@"monoFilter"];
    if ((v1 & 0x400000) == 0)
    {
LABEL_25:
      if ((v1 & 0x800000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_60;
    }

LABEL_59:
    [v3 addObject:@"fadeFilter"];
    if ((v1 & 0x800000) == 0)
    {
LABEL_26:
      if ((v1 & 0x1000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_61;
    }

LABEL_60:
    [v3 addObject:@"processFilter"];
    if ((v1 & 0x1000000) == 0)
    {
LABEL_27:
      if ((v1 & 0x2000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_62;
    }

LABEL_61:
    [v3 addObject:@"portraitPhoto"];
    if ((v1 & 0x2000000) == 0)
    {
LABEL_28:
      if ((v1 & 0x4000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_63;
    }

LABEL_62:
    [v3 addObject:@"livePhoto"];
    if ((v1 & 0x4000000) == 0)
    {
LABEL_29:
      if ((v1 & 0x8000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_64;
    }

LABEL_63:
    [v3 addObject:@"loopPhoto"];
    if ((v1 & 0x8000000) == 0)
    {
LABEL_30:
      if ((v1 & 0x10000000) == 0)
      {
LABEL_32:
        v4 = [v3 copy];

        goto LABEL_34;
      }

LABEL_31:
      [v3 addObject:@"longExposurePhoto"];
      goto LABEL_32;
    }

LABEL_64:
    [v3 addObject:@"bouncePhoto"];
    if ((v1 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_34:

  return v4;
}