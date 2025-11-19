void sub_18EA841EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20857(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *INSearchCallHistoryIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E727F540[a1];
  }
}

INNote *INIntentSlotValueTransformFromNote(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v13 = [INNote alloc];
    v16 = [v1 title];
    v2 = INIntentSlotValueTransformFromDataString(v16);
    v15 = [v1 contents];
    v3 = INIntentSlotValueTransformFromNoteContents(v15);
    v14 = [v1 groupName];
    v4 = INIntentSlotValueTransformFromDataString(v14);
    v5 = [v1 createdDateTime];
    v6 = INIntentSlotValueTransformFromDateTime(v5);
    v7 = [v1 modifiedDateTime];
    v8 = INIntentSlotValueTransformFromDateTime(v7);
    v9 = [v1 identifier];
    v10 = [v1 accountIdentifier];

    v11 = [(INNote *)v13 initWithTitle:v2 contents:v3 groupName:v4 createdDateComponents:v6 modifiedDateComponents:v8 identifier:v9 accountIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBNote *INIntentSlotValueTransformToNote(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBNote);
    v3 = [v1 title];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBNote *)v2 setTitle:v4];

    v5 = [v1 contents];
    v6 = INIntentSlotValueTransformToNoteContents(v5);
    [(_INPBNote *)v2 setContents:v6];

    v7 = [v1 groupName];
    v8 = INIntentSlotValueTransformToDataString(v7);
    [(_INPBNote *)v2 setGroupName:v8];

    v9 = [v1 createdDateComponents];
    v10 = INIntentSlotValueTransformToDateTime(v9);
    [(_INPBNote *)v2 setCreatedDateTime:v10];

    v11 = [v1 modifiedDateComponents];
    v12 = INIntentSlotValueTransformToDateTime(v11);
    [(_INPBNote *)v2 setModifiedDateTime:v12];

    v13 = [v1 identifier];
    [(_INPBNote *)v2 setIdentifier:v13];

    v14 = [v1 accountIdentifier];

    [(_INPBNote *)v2 setAccountIdentifier:v14];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromNotes(void *a1)
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

          v8 = INIntentSlotValueTransformFromNote(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToNotes(void *a1)
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

          v8 = INIntentSlotValueTransformToNote(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBOpenFileIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBIntentMetadata);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
            {
LABEL_75:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v14];
            goto LABEL_53;
          case 2:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v31 & 0x7F) << v23;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_72;
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

LABEL_72:
            [a1 setEntityType:v29];
            goto LABEL_54;
          case 3:
            v14 = objc_alloc_init(_INPBString);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            PBReaderRecallMark();
            [a1 setEntityName:v14];
            goto LABEL_53;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 7)
        {
          v14 = objc_alloc_init(_INPBString);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          PBReaderRecallMark();
          [a1 setScopeEntityName:v14];
          goto LABEL_53;
        }

        if (v13 == 6)
        {
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
              goto LABEL_68;
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

LABEL_68:
          [a1 setScope:v21];
          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBString);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          PBReaderRecallMark();
          [a1 setAppId:v14];
          goto LABEL_53;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBFileProperty);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBFilePropertyReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addProperties:v14];
          }

LABEL_53:

          goto LABEL_54;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBHomeAttributeValueReadFrom(void *a1, void *a2)
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

        v7 |= (LOBYTE(v55[0]) & 0x7F) << v5;
        if ((LOBYTE(v55[0]) & 0x80) == 0)
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
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            while (1)
            {
              LOBYTE(v55[0]) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (LOBYTE(v55[0]) & 0x7F) << v45;
              if ((LOBYTE(v55[0]) & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v51 = 0;
                goto LABEL_94;
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

LABEL_94:
            [a1 setUnit:v51];
            goto LABEL_103;
          }

          if (v13 == 8)
          {
            v28 = objc_alloc_init(_INPBHomeAttributeRange);
            v55[0] = 0.0;
            v55[1] = 0.0;
            if (!PBReaderPlaceMark() || !_INPBHomeAttributeRangeReadFrom(v28, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setRangeValue:v28];
            goto LABEL_50;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v55[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (LOBYTE(v55[0]) & 0x7F) << v36;
              if ((LOBYTE(v55[0]) & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_90;
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

LABEL_90:
            [a1 setIntegerValue:v42];
            goto LABEL_103;
          }

          if (v13 == 6)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v55[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (LOBYTE(v55[0]) & 0x7F) << v21;
              if ((LOBYTE(v55[0]) & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_100;
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

LABEL_100:
            [a1 setLimitValue:v27];
            goto LABEL_103;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v55[0] = 0.0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:v55 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setDoubleValue:v55[0]];
          goto LABEL_103;
        }

        if (v13 == 4)
        {
          v28 = PBReaderReadString();
          [a1 setStringValue:v28];
LABEL_50:

          goto LABEL_103;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v55[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (LOBYTE(v55[0]) & 0x7F) << v29;
            if ((LOBYTE(v55[0]) & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_86;
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

LABEL_86:
          [a1 setValueType:v35];
          goto LABEL_103;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v55[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (LOBYTE(v55[0]) & 0x7F) << v14;
            if ((LOBYTE(v55[0]) & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_96;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_96:
          [a1 setBooleanValue:v20];
          goto LABEL_103;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_103:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBAppBundleInfoReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentSupport);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentSupportReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addIntentSupport:v14];
          }

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBLocalizedProject);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocalizedProjectReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addLocalizedProjects:v14];
          }

          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v14 = objc_alloc_init(_INPBPlatformSupport);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBPlatformSupportReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addSupportedPlatforms:v14];
            }

            goto LABEL_41;
          case 4:
            v14 = objc_alloc_init(_INPBBuildId);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBBuildIdReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setBuildId:v14];
            goto LABEL_41;
          case 3:
            v14 = objc_alloc_init(_INPBAppId);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBAppIdReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setAppId:v14];
LABEL_41:

            goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDeleteHealthSampleIntentResponseReadFrom(uint64_t a1, void *a2)
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

id INIntentSlotValueTransformFromWellnessValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasPbDoubleValue])
    {
      v3 = [v2 pbDoubleValue];
      v4 = INIntentSlotValueTransformFromDouble(v3);
LABEL_6:
      v5 = v4;

      goto LABEL_8;
    }

    if ([v2 hasOrdinalValue])
    {
      v3 = [v2 ordinalValue];
      v4 = INIntentSlotValueTransformFromInteger(v3);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

_INPBWellnessValue *INIntentSlotValueTransformToWellnessValue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBWellnessValue);
    Type = CFNumberGetType(v1);
    if (Type <= kCFNumberDoubleType && ((1 << Type) & 0x3060) != 0)
    {
      v4 = INIntentSlotValueTransformToDouble(v1);
      [(_INPBWellnessValue *)v2 setPbDoubleValue:v4];
    }

    else
    {
      v4 = INIntentSlotValueTransformToInteger(v1);
      [(_INPBWellnessValue *)v2 setOrdinalValue:v4];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromWellnessValues(void *a1)
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

          v8 = INIntentSlotValueTransformFromWellnessValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToWellnessValues(void *a1)
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

          v8 = INIntentSlotValueTransformToWellnessValue(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBFindEventsIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_INPBContact);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
            {
LABEL_58:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addParticipants:v14];
            }

            goto LABEL_49;
          case 5:
            v14 = objc_alloc_init(_INPBLocation);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setLocation:v14];
            goto LABEL_49;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_55;
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

LABEL_55:
            [a1 setRequestedEventAttribute:v21];
            goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBIntentMetadata);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v14];
            goto LABEL_49;
          case 2:
            v14 = PBReaderReadString();
            [a1 setSearchQuery:v14];
LABEL_49:

            goto LABEL_50;
          case 3:
            v14 = objc_alloc_init(_INPBDateTimeRangeValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v14, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setDateTimeRange:v14];
            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBControlHomeIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBHomeEntityResponse);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeEntityResponseReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addEntityResponses:v13];
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

uint64_t INActionsAndApplicationRecordMatchesRequirementsFromDescriptor(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a1;
  v10 = INApplicationRecordMatchesRequirementsFromDescriptor(a3, v8, 0);
  v11 = [v8 intentIdentifier];
  v12 = [v9 containsObject:v11];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = [v8 intentIdentifier];
    v13 = [v7 containsObject:v14];
  }

  v15 = [v8 intentIdentifier];
  v16 = (v15 == 0) | v13;

  return v16 & v10 & 1;
}

uint64_t INApplicationRecordMatchesRequirementsFromDescriptor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [v6 teamIdentifier];
  if (v9)
  {
  }

  else
  {
    v10 = [v6 supportedIntents];
    v11 = [v10 count];

    if (!v11)
    {
LABEL_13:
      v16 = 1;
      goto LABEL_25;
    }
  }

  v12 = [v6 teamIdentifier];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  v14 = [v6 teamIdentifier];
  v15 = [v5 teamIdentifier];
  v16 = [v14 isEqualToString:v15];

  if (v16)
  {
LABEL_6:
    v17 = [v6 teamIdentifier];
    v18 = [v17 isEqualToString:@"0000000000"];

    v19 = [v6 bundleIdentifier];
    if ([v19 hasPrefix:@"com.apple."])
    {
    }

    else
    {
      v20 = [v6 extensionBundleIdentifier];
      v21 = [v20 hasPrefix:@"com.apple."];

      if (((v18 | v21) & 1) == 0)
      {
        v22 = [v5 teamIdentifier];
        v23 = [v22 isEqualToString:@"0000000000"];

        v24 = [v5 bundleIdentifier];
        v25 = [v24 hasPrefix:@"com.apple."];

        v16 = 0;
        if (v23 & 1) != 0 || (v25)
        {
          goto LABEL_25;
        }
      }
    }

    if (v7 && ([v7 skipSupportedIntentsCheck] & 1) != 0)
    {
      goto LABEL_13;
    }

    v26 = [v5 in_supportedIntents];
    v27 = [v5 bundleIdentifier];
    v28 = [INSystemAppMapper supportedIntentsOverridesForBundleIdentifier:v27];

    if ([v28 count])
    {
      v29 = [v26 mutableCopy];
      [v29 unionSet:v28];

      v26 = v29;
    }

    v30 = [v5 bundleIdentifier];
    v31 = [INAppResolver supportedIntentsOverridesForThirdPartyBundleIdentifier:v30];

    if ([v31 count])
    {
      v32 = [v26 mutableCopy];
      [v32 unionSet:v31];

      v26 = v32;
    }

    if (v7 && [v7 includeUserActivityTypes])
    {
      v33 = [v26 mutableCopy];
      v34 = [v5 if_userActivityTypes];
      [v33 addObjectsFromArray:v34];

      v26 = v33;
    }

    v35 = [v6 supportedIntents];
    if ([v35 count])
    {
      v36 = [v6 supportedIntents];
      v16 = [v36 intersectsSet:v26];
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_25:
  objc_autoreleasePoolPop(v8);

  return v16;
}

uint64_t INApplicationRecordMatchesRequirementsFromUserActivityDescriptor(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = INApplicationRecordMatchesRequirementsFromDescriptor(v6, v5, a3);
  v8 = [v6 if_userActivityTypes];

  v9 = [v8 mutableCopy];
  [v9 addObject:*MEMORY[0x1E696AA68]];
  v10 = [v5 userActivityType];
  if (v10)
  {
    v11 = v10;
    v12 = [v5 userActivityType];
    v13 = [v9 containsObject:v12];

    v7 &= v13;
  }

  return v7 & 1;
}

uint64_t INApplicationRecordMatchesRequirementsFromIntentDescriptor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = INApplicationRecordMatchesRequirementsFromDescriptor(v5, v6, v7);
  if (!v7 || ([v7 skipSupportedIntentsCheck] & 1) == 0)
  {
    v9 = [v5 in_supportedIntents];
    v10 = [v5 bundleIdentifier];
    v11 = [INSystemAppMapper supportedIntentsOverridesForBundleIdentifier:v10];

    if ([v11 count])
    {
      v12 = [v9 mutableCopy];
      [v12 unionSet:v11];

      v9 = v12;
    }

    v13 = [v5 bundleIdentifier];
    v14 = [INAppResolver supportedIntentsOverridesForThirdPartyBundleIdentifier:v13];

    if ([v14 count])
    {
      v15 = [v9 mutableCopy];
      [v15 unionSet:v14];

      v9 = v15;
    }

    if (v7 && [v7 includeUserActivityTypes])
    {
      v16 = [v9 mutableCopy];
      v17 = [v5 if_userActivityTypes];
      [v16 addObjectsFromArray:v17];

      v9 = v16;
    }

    v18 = [v6 intentClassName];
    if (v18)
    {
      v19 = v18;
      v20 = [v6 intentClassName];
      v21 = [v9 containsObject:v20];

      v8 &= v21;
    }
  }

  return v8 & 1;
}

id INIntentSlotValueTransformFromDateTimes(void *a1)
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

        v8 = INIntentSlotValueTransformFromDateTime(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToDateTimes(void *a1)
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

        v8 = INIntentSlotValueTransformToDateTime(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBIntentTypePhrasesReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBIntentType);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentTypeReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentType:v13];
        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    if (v13)
    {
      [a1 addIntentVocabularyExamples:v13];
    }

LABEL_24:

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INSetAudioSourceInCarIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727F750[a1];
  }
}

uint64_t _INPBShareFileIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
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
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v38[0] & 0x7F) << v29;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_63;
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

LABEL_63:
        [a1 setShareMode:v35];
        goto LABEL_64;
      }

      if (v13 != 4)
      {
        goto LABEL_36;
      }

      v21 = objc_alloc_init(_INPBShareDestination);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !_INPBShareDestinationReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      if (v21)
      {
        [a1 addRecipients:v21];
      }

LABEL_64:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v38[0] & 0x7F) << v22;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v28 = 0;
          goto LABEL_59;
        }
      }

      v28 = (v24 != 0) & ~[a2 hasError];
LABEL_59:
      [a1 setConfirm:v28];
      goto LABEL_64;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v38[0] & 0x7F) << v14;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_57;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_57:
      [a1 setSuccess:v20];
      goto LABEL_64;
    }

LABEL_36:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBOpenFileIntentResponseReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBInteger);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
          {
LABEL_49:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setNumResults:v14];
          goto LABEL_43;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          [a1 setQuery:v14];
          goto LABEL_43;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_45:
          [a1 setSuccess:v21];
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addEntities:v14];
          }

LABEL_43:

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBStartWorkoutIntentResponseReadFrom(uint64_t a1, void *a2)
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

INRestaurantReservation *INIntentSlotValueTransformFromRestaurantReservation(INRestaurantReservation *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [(INRestaurantReservation *)v2 reservation];
    v20 = [INRestaurantReservation alloc];
    v25 = [v3 itemReference];
    v26 = INIntentSlotValueTransformFromDataString(v25);
    v4 = [v3 reservationNumber];
    v24 = [v3 bookingTime];
    v5 = INIntentSlotValueTransformFromTimestamp(v24);
    v6 = [v3 hasReservationStatus];
    v7 = [v3 reservationStatus];
    if ((((v7 - 2) < 4) & v6) != 0)
    {
      v8 = (v7 - 1);
    }

    else
    {
      v8 = 0;
    }

    v19 = v8;
    v17 = [v3 reservationHolderName];
    v23 = [v3 actions];
    v16 = INIntentSlotValueTransformFromReservationActions(v23);
    v22 = [v3 url];
    v15 = INIntentSlotValueTransformFromURLValue(v22);
    v18 = [(INRestaurantReservation *)v2 reservationDuration];
    v9 = INIntentSlotValueTransformFromDateTimeRange(v18);
    v10 = [(INRestaurantReservation *)v2 partySize];
    v11 = INIntentSlotValueTransformFromInteger(v10);
    v12 = [(INRestaurantReservation *)v2 restaurantLocation];

    v13 = INIntentSlotValueTransformFromLocation(v12);
    v21 = [(INRestaurantReservation *)v20 initWithItemReference:v26 reservationNumber:v4 bookingTime:v5 reservationStatus:v19 reservationHolderName:v17 actions:v16 URL:v15 reservationDuration:v9 partySize:v11 restaurantLocation:v13];

    a1 = v21;
    v1 = vars8;
  }

  return a1;
}

_INPBRestaurantReservation *INIntentSlotValueTransformToRestaurantReservation(void *a1)
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

    v15 = objc_alloc_init(_INPBRestaurantReservation);
    [(_INPBRestaurantReservation *)v15 setReservation:v2];
    v16 = [v1 reservationDuration];
    v17 = INIntentSlotValueTransformToDateTimeRange(v16);
    [(_INPBRestaurantReservation *)v15 setReservationDuration:v17];

    v18 = [v1 partySize];
    v19 = INIntentSlotValueTransformToInteger(v18);
    [(_INPBRestaurantReservation *)v15 setPartySize:v19];

    v20 = [v1 restaurantLocation];

    v21 = INIntentSlotValueTransformToLocation(v20);
    [(_INPBRestaurantReservation *)v15 setRestaurantLocation:v21];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromRestaurantReservations(void *a1)
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

          v8 = INIntentSlotValueTransformFromRestaurantReservation(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToRestaurantReservations(void *a1)
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

          v8 = INIntentSlotValueTransformToRestaurantReservation(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBDecimalNumberValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38[0] & 0x7F) << v14;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_57;
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

LABEL_57:
          [a1 setMantissa:v20];
          goto LABEL_64;
        }

        goto LABEL_40;
      }

      v28 = objc_alloc_init(_INPBValueMetadata);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setValueMetadata:v28];

LABEL_64:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_63;
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

LABEL_63:
      [a1 setExponent:v35];
      goto LABEL_64;
    }

    if (v13 == 4)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v38[0] & 0x7F) << v21;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_59;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_59:
      [a1 setIsNegative:v27];
      goto LABEL_64;
    }

LABEL_40:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

INRideStatus *INIntentSlotValueTransformFromRideStatus(void *a1)
{
  v107 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(INRideStatus);
    v3 = [v1 rideIdentifier];
    [(INRideStatus *)v2 setRideIdentifier:v3];

    LODWORD(v3) = [v1 hasPhase];
    v4 = [v1 phase];
    if (v3 && (v4 - 1) <= 6)
    {
      v5 = qword_18EE5E818[v4 - 1];
    }

    else
    {
      v5 = 0;
    }

    [(INRideStatus *)v2 setPhase:v5];
    v91 = v2;
    if ([v1 hasDriver])
    {
      v6 = [v1 driver];
      if ([v6 hasRating])
      {
        v87 = [v6 rating];
      }

      else
      {
        v87 = 0;
      }

      if ([v6 hasPhoneNumber])
      {
        v8 = [v6 phoneNumber];
      }

      else
      {
        v8 = 0;
      }

      v9 = [v6 person];
      v10 = v9;
      v88 = v6;
      v85 = v9;
      v86 = v8;
      v84 = v1;
      if (v9)
      {
        v11 = [v9 valueMetadata];
        INPrivacyEntitlementValidateValueMetadata(v11);

        if (([v10 hasFirstName] & 1) != 0 || objc_msgSend(v10, "hasLastName"))
        {
          v12 = objc_alloc_init(MEMORY[0x1E696ADF0]);
          if ([v10 hasFirstName])
          {
            v13 = [v10 firstName];
            [v12 setGivenName:v13];
          }

          if ([v10 hasLastName])
          {
            v14 = [v10 lastName];
            [v12 setFamilyName:v14];
          }
        }

        else
        {
          v12 = 0;
        }

        if ([v10 hasFullName])
        {
          v22 = [v10 fullName];
        }

        else
        {
          v22 = 0;
        }

        v83 = v22;
        if ([v10 hasContactHandle])
        {
          v23 = [v10 contactHandle];
          v24 = INIntentSlotValueTransformFromContactHandle(v23);
        }

        else if (v8)
        {
          v24 = [[INPersonHandle alloc] initWithValue:v8 type:2];
        }

        else
        {
          v24 = 0;
        }

        if ([v10 hasImage])
        {
          v25 = [v10 image];
          v82 = INIntentSlotValueTransformFromImageValue(v25);
        }

        else
        {
          v82 = 0;
        }

        v26 = v24;
        if ([v10 hasValueMetadata])
        {
          v27 = [v10 valueMetadata];
          if ([v27 hasInput])
          {
            v81 = [v27 input];
          }

          else
          {
            v81 = 0;
          }

          if ([v27 hasUuid])
          {
            v80 = [v27 uuid];
          }

          else
          {
            v80 = 0;
          }
        }

        else
        {
          v80 = 0;
          v81 = 0;
        }

        if ([v10 aliasesCount])
        {
          v89 = v12;
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v28 = [v10 aliases];
          v29 = [v28 countByEnumeratingWithState:&v100 objects:v106 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v101;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v101 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = INIntentSlotValueTransformFromContactHandle(*(*(&v100 + 1) + 8 * i));
                [v15 addObject:v33];
              }

              v30 = [v28 countByEnumeratingWithState:&v100 objects:v106 count:16];
            }

            while (v30);
          }

          v12 = v89;
          v16 = v91;
          v21 = v87;
          v10 = v82;
          v19 = v83;
          v20 = v26;
        }

        else
        {
          v15 = 0;
          v21 = v87;
          v10 = v82;
          v19 = v83;
          v20 = v26;
          v16 = v2;
        }

        v18 = v80;
        v17 = v81;
      }

      else
      {
        v15 = 0;
        v16 = v2;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v20 = 0;
        v21 = v87;
      }

      v90 = v12;
      v34 = [[INRideDriver alloc] _initWithUserInput:v17 personHandle:v20 nameComponents:v12 displayName:v19 image:v10 contactIdentifier:v18 rating:v21 aliases:v15];
      [(INRideStatus *)v16 setDriver:v34];

      v2 = v16;
      v1 = v84;
    }

    if ([v1 hasVehicle])
    {
      v35 = [v1 vehicle];
      v36 = objc_alloc_init(INRideVehicle);
      v37 = [v35 location];
      v38 = INIntentSlotValueTransformFromGEOLocation(v37);
      [(INRideVehicle *)v36 setLocation:v38];

      v39 = [v35 registrationPlate];
      [(INRideVehicle *)v36 setRegistrationPlate:v39];

      v40 = [v35 manufacturer];
      [(INRideVehicle *)v36 setManufacturer:v40];

      v41 = [v35 model];
      [(INRideVehicle *)v36 setModel:v41];

      v42 = [v35 mapAnnotationImage];
      v43 = INIntentSlotValueTransformFromImageValue(v42);
      [(INRideVehicle *)v36 setMapAnnotationImage:v43];

      [(INRideStatus *)v2 setVehicle:v36];
    }

    v44 = [v1 estimatedPickupDate];
    v45 = INIntentSlotValueTransformFromTimestamp(v44);
    [(INRideStatus *)v2 setEstimatedPickupDate:v45];

    v46 = [v1 estimatedDropOffDate];
    v47 = INIntentSlotValueTransformFromTimestamp(v46);
    [(INRideStatus *)v2 setEstimatedDropOffDate:v47];

    v48 = [v1 estimatedPickupEndDate];
    v49 = INIntentSlotValueTransformFromTimestamp(v48);
    [(INRideStatus *)v2 setEstimatedPickupEndDate:v49];

    v50 = [v1 scheduledPickupTime];
    v51 = INIntentSlotValueTransformFromDateTimeRangeValue(v50);
    [(INRideStatus *)v2 setScheduledPickupTime:v51];

    v52 = [v1 pickupLocation];
    v53 = INIntentSlotValueTransformFromLocationValue(v52);
    [(INRideStatus *)v2 setPickupLocation:v53];

    v54 = [v1 waypoints];
    v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v54, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v56 = v54;
    v57 = [v56 countByEnumeratingWithState:&v96 objects:v105 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v97;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v97 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = INIntentSlotValueTransformFromLocationValue(*(*(&v96 + 1) + 8 * j));
          if (v61)
          {
            [v55 addObject:v61];
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v96 objects:v105 count:16];
      }

      while (v58);
    }

    [(INRideStatus *)v2 setWaypoints:v55];
    v62 = [v1 dropOffLocation];
    v63 = INIntentSlotValueTransformFromLocationValue(v62);
    [(INRideStatus *)v2 setDropOffLocation:v63];

    v64 = [v1 rideOption];
    v65 = INIntentSlotValueTransformFromRideOption(v64);
    [(INRideStatus *)v2 setRideOption:v65];

    v66 = [v1 userActivityForCancelingInApplication];
    v67 = INUserActivityDeserializeFromBackingStore(v66);
    [(INRideStatus *)v2 setUserActivityForCancelingInApplication:v67];

    if ([v1 hasCompletionStatus])
    {
      v68 = [INRideCompletionStatus alloc];
      v69 = [v1 completionStatus];
      v70 = [(INRideCompletionStatus *)v68 _initWithValue:v69];
      [(INRideStatus *)v2 setCompletionStatus:v70];
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v71 = [v1 additionalActionItems];
    v72 = [v71 countByEnumeratingWithState:&v92 objects:v104 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = 0;
      v75 = *v93;
      do
      {
        for (k = 0; k != v73; ++k)
        {
          if (*v93 != v75)
          {
            objc_enumerationMutation(v71);
          }

          v77 = INUserActivityDeserializeFromBackingStore(*(*(&v92 + 1) + 8 * k));
          if (v77)
          {
            if (!v74)
            {
              v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v74 addObject:v77];
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v92 objects:v104 count:16];
      }

      while (v73);
    }

    else
    {
      v74 = 0;
    }

    v7 = v91;
  }

  else
  {
    v7 = 0;
  }

  v78 = *MEMORY[0x1E69E9840];

  return v7;
}

_INPBRideStatus *INIntentSlotValueTransformToRideStatus(void *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBRideStatus);
    v3 = [v1 rideIdentifier];
    [(_INPBRideStatus *)v2 setRideIdentifier:v3];

    v4 = [v1 phase];
    if (v4 <= 6 && ((0x7Eu >> v4) & 1) != 0)
    {
      v5 = [v1 phase] - 1;
      if (v5 > 5)
      {
        v6 = 0x7FFFFFFFLL;
      }

      else
      {
        v6 = dword_18EE5E800[v5];
      }

      [(_INPBRideStatus *)v2 setPhase:v6];
    }

    v7 = [v1 driver];
    if (v7)
    {
      v8 = objc_alloc_init(_INPBRideDriver);
      v9 = INIntentSlotValueTransformToContactValue(v7);
      [(_INPBRideDriver *)v8 setPerson:v9];

      v10 = [v7 rating];
      [(_INPBRideDriver *)v8 setRating:v10];

      v11 = [v7 phoneNumber];
      [(_INPBRideDriver *)v8 setPhoneNumber:v11];

      [(_INPBRideStatus *)v2 setDriver:v8];
    }

    v12 = [v1 vehicle];
    if (v12)
    {
      v13 = objc_alloc_init(_INPBRideVehicle);
      v14 = [v12 location];
      v15 = INIntentSlotValueTransformToGEOLocation(v14);
      [(_INPBRideVehicle *)v13 setLocation:v15];

      v16 = [v12 registrationPlate];
      [(_INPBRideVehicle *)v13 setRegistrationPlate:v16];

      v17 = [v12 manufacturer];
      [(_INPBRideVehicle *)v13 setManufacturer:v17];

      v18 = [v12 model];
      [(_INPBRideVehicle *)v13 setModel:v18];

      v19 = [v12 mapAnnotationImage];
      v20 = INIntentSlotValueTransformToImageValue(v19);
      [(_INPBRideVehicle *)v13 setMapAnnotationImage:v20];

      [(_INPBRideStatus *)v2 setVehicle:v13];
    }

    v21 = [v1 estimatedPickupDate];
    v22 = INIntentSlotValueTransformToTimestamp(v21);
    [(_INPBRideStatus *)v2 setEstimatedPickupDate:v22];

    v23 = [v1 estimatedDropOffDate];
    v24 = INIntentSlotValueTransformToTimestamp(v23);
    [(_INPBRideStatus *)v2 setEstimatedDropOffDate:v24];

    v25 = [v1 estimatedPickupEndDate];
    v26 = INIntentSlotValueTransformToTimestamp(v25);
    [(_INPBRideStatus *)v2 setEstimatedPickupEndDate:v26];

    v27 = [v1 scheduledPickupTime];
    v28 = INIntentSlotValueTransformToDateTimeRangeValue(v27);
    [(_INPBRideStatus *)v2 setScheduledPickupTime:v28];

    v29 = [v1 pickupLocation];
    v30 = INIntentSlotValueTransformToLocationValue(v29);
    [(_INPBRideStatus *)v2 setPickupLocation:v30];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v31 = [v1 waypoints];
    v32 = [v31 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v58;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v58 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = INIntentSlotValueTransformToLocationValue(*(*(&v57 + 1) + 8 * i));
          if (v36)
          {
            [(_INPBRideStatus *)v2 addWaypoints:v36];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v33);
    }

    v37 = [v1 dropOffLocation];
    v38 = INIntentSlotValueTransformToLocationValue(v37);
    [(_INPBRideStatus *)v2 setDropOffLocation:v38];

    v39 = [v1 rideOption];
    v40 = INIntentSlotValueTransformToRideOption(v39);
    [(_INPBRideStatus *)v2 setRideOption:v40];

    v41 = [v1 userActivityForCancelingInApplication];
    v42 = INUserActivitySerializeToBackingStore(v41);
    [(_INPBRideStatus *)v2 setUserActivityForCancelingInApplication:v42];

    v43 = [v1 completionStatus];
    v44 = [v43 _newValue];
    [(_INPBRideStatus *)v2 setCompletionStatus:v44];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v45 = [v1 additionalActionActivities];
    v46 = [v45 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v54;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = INUserActivitySerializeToBackingStore(*(*(&v53 + 1) + 8 * j));
          if (v50)
          {
            [(_INPBRideStatus *)v2 addAdditionalActionItems:v50];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v47);
    }
  }

  else
  {
    v2 = 0;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t _INPBSetProfileInCarIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
LABEL_52:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBInteger);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v21, a2))
          {
            goto LABEL_52;
          }

          PBReaderRecallMark();
          [a1 setProfileNumber:v21];
          goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_INPBString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v21, a2))
            {
              goto LABEL_52;
            }

            PBReaderRecallMark();
            [a1 setProfileName:v21];
            goto LABEL_44;
          case 5:
            v21 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
            {
              goto LABEL_52;
            }

            PBReaderRecallMark();
            [a1 setCarName:v21];
LABEL_44:

            goto LABEL_49;
          case 4:
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
                goto LABEL_48;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_48:
            [a1 setDefaultProfile:v20];
            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBStartVideoCallIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
LABEL_56:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBDialingContact);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBDialingContactReadFrom(v21, a2))
          {
            goto LABEL_56;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addTargetContacts:v21];
          }

          goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v21 = objc_alloc_init(_INPBStartCallRequestMetadata);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBStartCallRequestMetadataReadFrom(v21, a2))
            {
              goto LABEL_56;
            }

            PBReaderRecallMark();
            [a1 setCallRequestMetadata:v21];
            goto LABEL_46;
          case 4:
            v21 = objc_alloc_init(_INPBDialingContact);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDialingContactReadFrom(v21, a2))
            {
              goto LABEL_56;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addContact:v21];
            }

LABEL_46:

            goto LABEL_53;
          case 3:
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
                goto LABEL_52;
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

LABEL_52:
            [a1 setAudioRoute:v20];
            goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBWellnessMetadataValueReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(_INPBString);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPbStringValue:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBDouble);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBDoubleReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setPbDoubleValue:v14];
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

    v14 = objc_alloc_init(_INPBInteger);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setOrdinalValue:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBRideVehicleReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MEMORY[0x1E69A1E70]);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !GEOLocationReadAllFrom())
          {
LABEL_39:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setLocation:v14];
          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setRegistrationPlate:v14];
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            [a1 setManufacturer:v14];
            goto LABEL_32;
          case 4:
            v14 = PBReaderReadString();
            [a1 setModel:v14];
            goto LABEL_32;
          case 5:
            v14 = objc_alloc_init(_INPBImageValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
            {
              goto LABEL_39;
            }

            PBReaderRecallMark();
            [a1 setMapAnnotationImage:v14];
            goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSetTaskAttributeIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        if ((v12 & 7) == 2)
        {
          v29 = 0;
          v30 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v15 = [a2 position];
            if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v31 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v31 & 0x7F) << v16;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                goto LABEL_36;
              }
            }

            [a2 hasError];
LABEL_36:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v29) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v29 & 0x7F) << v22;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              goto LABEL_50;
            }
          }

          [a2 hasError];
LABEL_50:
          PBRepeatedInt32Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBTask);
        v29 = 0;
        v30 = 0;
        if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setModifiedTask:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __INPopulateFormatStringWithArguments_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 72) + 8) + 24);
  v15 = v3;
  v5 = [v3 rangeAtIndex:1];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(a1 + 32) substringWithRange:{v5, v6 - 1}];
    v4 = [v7 integerValue] - 1;
  }

  if (v4 < [*(a1 + 40) count])
  {
    v8 = [*(a1 + 40) objectAtIndex:v4];
    if (objc_opt_respondsToSelector())
    {
      [v8 descriptionWithLocale:*(a1 + 48)];
    }

    else
    {
      [v8 description];
    }
    v9 = ;
    v10 = [v15 range];
    v12 = v11;
    [*(a1 + 56) replaceCharactersInRange:*(*(*(a1 + 80) + 8) + 24) + v10 withString:{v11, v9}];
    v13 = *(a1 + 64);
    v14 = [v9 copy];
    [v13 addObject:v14];

    *(*(*(a1 + 80) + 8) + 24) += [v9 length] - v12;
    ++*(*(*(a1 + 72) + 8) + 24);
  }
}

id INSharedFormatRegularExpression()
{
  if (INSharedFormatRegularExpression_onceToken != -1)
  {
    dispatch_once(&INSharedFormatRegularExpression_onceToken, &__block_literal_global_26710);
  }

  v1 = INSharedFormatRegularExpression_regularExpression;

  return v1;
}

uint64_t __INSharedFormatRegularExpression_block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?<!%)%([0-9]+\\$)?@" options:0 error:0];
  v1 = INSharedFormatRegularExpression_regularExpression;
  INSharedFormatRegularExpression_regularExpression = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __Block_byref_object_copy__26718(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __INLocalizedFormat_block_invoke(uint64_t a1)
{
  v2 = INCreateUniqueBundle(*(a1 + 32), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v13 = 0;
    v7 = INLocalizedFormatForBundle(v2, v4, v5, v6, &v13);
    v8 = v13;
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v8;

    CFRelease(v3);
  }
}

uint64_t __Block_byref_object_copy__26998(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _INPBTextNoteContentReadFrom(void *a1, void *a2)
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
      [a1 setText:v14];
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

uint64_t _INPBTemperatureValueReadFrom(void *a1, void *a2)
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

Class __getVCIntentDefinitionManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!VoiceShortcutsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __VoiceShortcutsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727F920;
    v7 = 0;
    VoiceShortcutsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (VoiceShortcutsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("VCIntentDefinitionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getVCIntentDefinitionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __VoiceShortcutsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceShortcutsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id _INVCVoiceShortcutClient()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = NSSelectorFromString(@"standardClient");
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v1 = getVCVoiceShortcutClientClass_softClass;
  v12 = getVCVoiceShortcutClientClass_softClass;
  if (!getVCVoiceShortcutClientClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v14 = __getVCVoiceShortcutClientClass_block_invoke;
    v15 = &unk_1E72888B8;
    v16 = &v9;
    __getVCVoiceShortcutClientClass_block_invoke(&buf);
    v1 = v10[3];
  }

  v2 = v1;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 performSelector:{v0, v9}];
    if ([v3 conformsToProtocol:&unk_1F0361878])
    {
      v4 = v3;
    }

    else
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "_INVCVoiceShortcutClient";
        _os_log_fault_impl(&dword_18E991000, v6, OS_LOG_TYPE_FAULT, "%s VCVoiceShortcutClient doesn't conform to the INVCVoiceShortcutClient protocol.", &buf, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "_INVCVoiceShortcutClient";
      _os_log_fault_impl(&dword_18E991000, v5, OS_LOG_TYPE_FAULT, "%s VCVoiceShortcutClient doesn't have a standardClient class method", &buf, 0xCu);
    }

    v4 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

Class __getVCVoiceShortcutClientClass_block_invoke(uint64_t a1)
{
  VoiceShortcutClientLibrary();
  result = objc_getClass("VCVoiceShortcutClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCVoiceShortcutClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return VoiceShortcutClientLibrary();
  }

  return result;
}

uint64_t VoiceShortcutClientLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary_27957)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VoiceShortcutClientLibraryCore_block_invoke_27958;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E727F938;
    v6 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary_27957 = _sl_dlopen();
    v1 = v4[0];
    v0 = VoiceShortcutClientLibraryCore_frameworkLibrary_27957;
    if (VoiceShortcutClientLibraryCore_frameworkLibrary_27957)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = VoiceShortcutClientLibraryCore_frameworkLibrary_27957;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke_27958(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary_27957 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id _INVCVoiceShortcutErrorDomain()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVCVoiceShortcutsErrorDomainSymbolLoc_ptr;
  v8 = getVCVoiceShortcutsErrorDomainSymbolLoc_ptr;
  if (!getVCVoiceShortcutsErrorDomainSymbolLoc_ptr)
  {
    v1 = VoiceShortcutClientLibrary();
    v6[3] = dlsym(v1, "VCVoiceShortcutsErrorDomain");
    getVCVoiceShortcutsErrorDomainSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *__getVCVoiceShortcutsErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VoiceShortcutClientLibrary();
  result = dlsym(v2, "VCVoiceShortcutsErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCVoiceShortcutsErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _INItemProviderMetadataFromData(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v2 = getWFItemProviderRequestMetadataClass_softClass;
  v14 = getWFItemProviderRequestMetadataClass_softClass;
  if (!getWFItemProviderRequestMetadataClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getWFItemProviderRequestMetadataClass_block_invoke;
    v16 = &unk_1E72888B8;
    v17 = &v11;
    __getWFItemProviderRequestMetadataClass_block_invoke(buf);
    v2 = v12[3];
  }

  v3 = v2;
  _Block_object_dispose(&v11, 8);
  v10 = 0;
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v2 fromData:v1 error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_INItemProviderMetadataFromData";
      *&buf[12] = 2112;
      *&buf[14] = v1;
      *&buf[22] = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Could not unarchive data %@ with error: %@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_18EAAF330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWFItemProviderRequestMetadataClass_block_invoke(uint64_t a1)
{
  VoiceShortcutClientLibrary();
  result = objc_getClass("WFItemProviderRequestMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFItemProviderRequestMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(_INPBSetDefrosterSettingsInCarIntentResponse *)v3 dictionaryRepresentation];
  }

  return result;
}

uint64_t _INPBSetDefrosterSettingsInCarIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBControlHomeIntentReadFrom(void *a1, void *a2)
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
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
LABEL_47:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_40;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBHomeContent);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBHomeContentReadFrom(v14, a2))
          {
            goto LABEL_47;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addContents:v14];
          }

          goto LABEL_40;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v14 = objc_alloc_init(_INPBHomeUserTask);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBHomeUserTaskReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            PBReaderRecallMark();
            [a1 setUserTask:v14];
            goto LABEL_40;
          case 6:
            v14 = objc_alloc_init(_INPBHomeFilter);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBHomeFilterReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addFilters:v14];
            }

            goto LABEL_40;
          case 7:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            PBReaderRecallMark();
            [a1 setTime:v14];
LABEL_40:

            goto LABEL_41;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIntentSupportReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBIntentType);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentTypeReadFrom(v14, a2))
        {
LABEL_35:

          return 0;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addIntentsSupported:v14];
        }

        goto LABEL_30;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBIntentType);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentTypeReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addIntentsRestrictedWhileLocked:v14];
        }

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    if (v14)
    {
      [a1 addSupportedMediaCategories:v14];
    }

LABEL_30:

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBGetRideStatusIntentReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
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

uint64_t INBalanceTypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INBalanceTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INBalanceTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727F950[a1 - 1];
  }
}

uint64_t INBalanceTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"money"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"points"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"miles"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INBalanceTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"miles";
      goto LABEL_7;
    case 2:
      v4 = @"points";
      goto LABEL_7;
    case 1:
      v4 = @"money";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBImageNoteContentReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBImageValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setImage:v13];
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

uint64_t INRidePhaseGetBackingType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return dword_18EE5E800[a1 - 1];
  }
}

uint64_t INRidePhaseGetFacadeType(int a1, int a2)
{
  if (a1 && (a2 - 1) <= 6)
  {
    return qword_18EE5E818[a2 - 1];
  }

  else
  {
    return 0;
  }
}

__CFString *INRidePhaseGetName(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727F968[a1 - 1];
  }
}

uint64_t INRidePhaseWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"received"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"confirmed"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"ongoing"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"completed"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"approachingPickup"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"pickup"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRidePhaseGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v5 = @"completed";
        break;
      case 5:
        v5 = @"approaching pickup";
        break;
      case 6:
        v5 = @"pickup";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v5 = @"received";
        break;
      case 2:
        v5 = @"confirmed";
        break;
      case 3:
        v5 = @"ongoing";
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_15:

  return v4;
}

uint64_t _INPBDeleteTimerIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(_INPBTimer);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

        PBReaderRecallMark();
        [a1 setTargetTimer:v21];
LABEL_35:

        goto LABEL_40;
      }

      if (v13 == 2)
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
            goto LABEL_39;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_39:
        [a1 setDeleteMultiple:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

id INIntentResponseObserverXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F03618D8];
  [v0 setClass:objc_opt_class() forSelector:sel_intentResponseDidUpdate_withSerializedCacheItems_ argumentIndex:0 ofReply:0];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_intentResponseDidUpdate_withSerializedCacheItems_ argumentIndex:1 ofReply:0];

  return v0;
}

__CFString *INSetProfileInCarIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727F9B8[a1];
  }
}

uint64_t _INPBPlayVoicemailIntentReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = PBReaderReadString();
        [a1 setCallRecordIdentifier:v13];
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBIntentMetadata);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_18EAB8EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 64), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29652(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727FAB0;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AssistantServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18EAB93D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _INPBModifyRelationshipReadFrom(void *a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(_INPBString);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTargetRelationship:v20];
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
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

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        [a1 setIsRemoval:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBStartPhotoPlaybackIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v44) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v12 >> 3) > 6)
      {
        if (v14 > 8)
        {
          if (v14 == 9)
          {
            if (v13 != 2)
            {
              v32 = 0;
              v33 = 0;
              v34 = 0;
              while (1)
              {
                LOBYTE(v44) = 0;
                v35 = [a2 position] + 1;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                {
                  v37 = [a2 data];
                  [v37 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v34 |= (v44 & 0x7F) << v32;
                if ((v44 & 0x80) == 0)
                {
                  goto LABEL_100;
                }

                v32 += 7;
                v11 = v33++ >= 9;
                if (v11)
                {
                  goto LABEL_101;
                }
              }
            }

            v44 = 0;
            v45 = 0;
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
                goto LABEL_81;
              }

              v26 = 0;
              v27 = 0;
              v28 = 0;
              while (1)
              {
                v46 = 0;
                v29 = [a2 position] + 1;
                if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
                {
                  v31 = [a2 data];
                  [v31 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v28 |= (v46 & 0x7F) << v26;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                v11 = v27++ >= 9;
                if (v11)
                {
                  goto LABEL_78;
                }
              }

              [a2 hasError];
LABEL_78:
              PBRepeatedInt32Add();
            }
          }

          if (v14 == 10)
          {
            v15 = objc_alloc_init(_INPBContactList);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactListReadFrom(v15, a2))
            {
LABEL_104:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setPeopleInPhoto:v15];
            goto LABEL_61;
          }
        }

        else
        {
          if (v14 == 7)
          {
            v15 = objc_alloc_init(_INPBStringList);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v15, a2))
            {
              goto LABEL_104;
            }

            PBReaderRecallMark();
            [a1 setSearchTerm:v15];
            goto LABEL_61;
          }

          if (v14 == 8)
          {
            if (v13 != 2)
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              while (1)
              {
                LOBYTE(v44) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  v43 = [a2 data];
                  [v43 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v44 & 0x7F) << v38;
                if ((v44 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v11 = v39++ >= 9;
                if (v11)
                {
                  goto LABEL_101;
                }
              }

LABEL_100:
              [a2 hasError];
LABEL_101:
              PBRepeatedInt32Add();
              goto LABEL_62;
            }

            v44 = 0;
            v45 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v17 = [a2 position];
              if (v17 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v18 = 0;
              v19 = 0;
              v20 = 0;
              while (1)
              {
                v46 = 0;
                v21 = [a2 position] + 1;
                if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
                {
                  v23 = [a2 data];
                  [v23 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v20 |= (v46 & 0x7F) << v18;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v18 += 7;
                v11 = v19++ >= 9;
                if (v11)
                {
                  goto LABEL_41;
                }
              }

              [a2 hasError];
LABEL_41:
              PBRepeatedInt32Add();
            }

LABEL_81:
            PBReaderRecallMark();
            goto LABEL_62;
          }
        }
      }

      else if (v14 > 2)
      {
        if (v14 == 3)
        {
          v15 = objc_alloc_init(_INPBLocation);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v15, a2))
          {
            goto LABEL_104;
          }

          PBReaderRecallMark();
          [a1 setLocationCreated:v15];
          goto LABEL_61;
        }

        if (v14 == 5)
        {
          v15 = objc_alloc_init(_INPBString);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v15, a2))
          {
            goto LABEL_104;
          }

          PBReaderRecallMark();
          [a1 setAlbumName:v15];
          goto LABEL_61;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = objc_alloc_init(_INPBIntentMetadata);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v15, a2))
          {
            goto LABEL_104;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v15];
          goto LABEL_61;
        }

        if (v14 == 2)
        {
          v15 = objc_alloc_init(_INPBDateTimeRange);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v15, a2))
          {
            goto LABEL_104;
          }

          PBReaderRecallMark();
          [a1 setDateCreated:v15];
LABEL_61:

          goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INFlightReservation *INIntentSlotValueTransformFromFlightReservation(INFlightReservation *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [(INFlightReservation *)v2 reservation];
    v4 = [INFlightReservation alloc];
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
    v10 = [(INFlightReservation *)v2 reservedSeat];
    v11 = INIntentSlotValueTransformFromSeat(v10);
    v12 = [(INFlightReservation *)v2 flight];

    v13 = INIntentSlotValueTransformFromFlight(v12);
    v17 = [(INFlightReservation *)v4 initWithItemReference:v24 reservationNumber:v21 bookingTime:v19 reservationStatus:v16 reservationHolderName:v15 actions:v8 URL:v9 reservedSeat:v11 flight:v13];

    a1 = v17;
    v1 = vars8;
  }

  return a1;
}

_INPBFlightReservation *INIntentSlotValueTransformToFlightReservation(void *a1)
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

    v15 = objc_alloc_init(_INPBFlightReservation);
    [(_INPBFlightReservation *)v15 setReservation:v2];
    v16 = [v1 reservedSeat];
    v17 = INIntentSlotValueTransformToSeat(v16);
    [(_INPBFlightReservation *)v15 setReservedSeat:v17];

    v18 = [v1 flight];

    v19 = INIntentSlotValueTransformToFlight(v18);
    [(_INPBFlightReservation *)v15 setFlight:v19];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromFlightReservations(void *a1)
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

          v8 = INIntentSlotValueTransformFromFlightReservation(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToFlightReservations(void *a1)
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

          v8 = INIntentSlotValueTransformToFlightReservation(*(*(&v12 + 1) + 8 * i));
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

uint64_t INWellnessObjectTypeHasBackingType(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      result = 1;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

unint64_t INWellnessObjectTypeGetBackingType(unint64_t result)
{
  if (result >= 0x4B)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INWellnessObjectTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 0x4A) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INWellnessObjectTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x49)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727FAC8[a1 - 1];
  }
}

uint64_t INWellnessObjectTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"basalBodyTemperature"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"biotin"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"bloodAlcoholContent"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"bloodGlucose"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"bloodPressure"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"bloodPressureDiastolic"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"bloodPressureSystolic"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"bloodType"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"bodyFatPercentage"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"bodyMassIndex"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"bodyTemperature"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"caffeine"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"calcium"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"carbohydrates"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"chloride"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"chromium"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"copper"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"dietaryCholesterol"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"dietarySugar"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"electrodermalActivity"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"energyConsumed"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"fatMonounSaturated"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"fatPolyunSaturated"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"fatSaturated"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"fatTotal"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"fiber"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"folate"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"forcedExpiratoryVolume"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"forcedVitalCapacity"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"heartRate"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"heartRateVariabilitySdnn"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"height"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"inhalerUsage"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"insulinDelivery"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"iodine"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"iron"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"leanBodyMass"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"magnesium"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"manganese"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"molybdenum"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"niacin"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"numberOfTimesFallen"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"oxygenSaturation"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"pantothenicAcid"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"peakExpiratoryFlowRate"])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:@"peripheralPerfusionIndex"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"phosphorus"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"potassium"])
  {
    v2 = 48;
  }

  else if ([v1 isEqualToString:@"protein"])
  {
    v2 = 49;
  }

  else if ([v1 isEqualToString:@"respiratoryRate"])
  {
    v2 = 50;
  }

  else if ([v1 isEqualToString:@"restingheartRate"])
  {
    v2 = 51;
  }

  else if ([v1 isEqualToString:@"riboflavin"])
  {
    v2 = 52;
  }

  else if ([v1 isEqualToString:@"selenium"])
  {
    v2 = 53;
  }

  else if ([v1 isEqualToString:@"sodium"])
  {
    v2 = 54;
  }

  else if ([v1 isEqualToString:@"thiamin"])
  {
    v2 = 55;
  }

  else if ([v1 isEqualToString:@"uvIndex"])
  {
    v2 = 56;
  }

  else if ([v1 isEqualToString:@"vitaminA"])
  {
    v2 = 57;
  }

  else if ([v1 isEqualToString:@"vitaminB12"])
  {
    v2 = 58;
  }

  else if ([v1 isEqualToString:@"vitaminB6"])
  {
    v2 = 59;
  }

  else if ([v1 isEqualToString:@"vitaminC"])
  {
    v2 = 60;
  }

  else if ([v1 isEqualToString:@"vitaminD"])
  {
    v2 = 61;
  }

  else if ([v1 isEqualToString:@"vitaminE"])
  {
    v2 = 62;
  }

  else if ([v1 isEqualToString:@"vitaminK"])
  {
    v2 = 63;
  }

  else if ([v1 isEqualToString:@"waistCircumference"])
  {
    v2 = 64;
  }

  else if ([v1 isEqualToString:@"walkingHeartRateAverage"])
  {
    v2 = 65;
  }

  else if ([v1 isEqualToString:@"water"])
  {
    v2 = 66;
  }

  else if ([v1 isEqualToString:@"weight"])
  {
    v2 = 67;
  }

  else if ([v1 isEqualToString:@"zinc"])
  {
    v2 = 68;
  }

  else if ([v1 isEqualToString:@"cervicalMucusQuality"])
  {
    v2 = 69;
  }

  else if ([v1 isEqualToString:@"ovulationTestResult"])
  {
    v2 = 70;
  }

  else if ([v1 isEqualToString:@"menstrualFlow"])
  {
    v2 = 71;
  }

  else if ([v1 isEqualToString:@"intermenstrualBleeding"])
  {
    v2 = 72;
  }

  else if ([v1 isEqualToString:@"sexualActivity"])
  {
    v2 = 73;
  }

  else if ([v1 isEqualToString:@"mindfulSession"])
  {
    v2 = 74;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWellnessObjectTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"basal body temperature";
      goto LABEL_77;
    case 2:
      v4 = @"biotin";
      goto LABEL_77;
    case 3:
      v4 = @"blood alcohol content";
      goto LABEL_77;
    case 4:
      v4 = @"blood glucose";
      goto LABEL_77;
    case 5:
      v4 = @"blood pressure";
      goto LABEL_77;
    case 6:
      v4 = @"blood pressure diastolic";
      goto LABEL_77;
    case 7:
      v4 = @"blood pressure systolic";
      goto LABEL_77;
    case 8:
      v4 = @"blood type";
      goto LABEL_77;
    case 9:
      v4 = @"body fat percentage";
      goto LABEL_77;
    case 10:
      v4 = @"body mass index";
      goto LABEL_77;
    case 11:
      v4 = @"body temperature";
      goto LABEL_77;
    case 12:
      v4 = @"caffeine";
      goto LABEL_77;
    case 13:
      v4 = @"calcium";
      goto LABEL_77;
    case 14:
      v4 = @"carbohydrates";
      goto LABEL_77;
    case 15:
      v4 = @"chloride";
      goto LABEL_77;
    case 16:
      v4 = @"chromium";
      goto LABEL_77;
    case 17:
      v4 = @"copper";
      goto LABEL_77;
    case 18:
      v4 = @"dietary cholesterol";
      goto LABEL_77;
    case 19:
      v4 = @"dietary sugar";
      goto LABEL_77;
    case 20:
      v4 = @"electrodermal activity";
      goto LABEL_77;
    case 21:
      v4 = @"energy consumed";
      goto LABEL_77;
    case 22:
      v4 = @"fat monoun saturated";
      goto LABEL_77;
    case 23:
      v4 = @"fat polyun saturated";
      goto LABEL_77;
    case 24:
      v4 = @"fat saturated";
      goto LABEL_77;
    case 25:
      v4 = @"fat total";
      goto LABEL_77;
    case 26:
      v4 = @"fiber";
      goto LABEL_77;
    case 27:
      v4 = @"folate";
      goto LABEL_77;
    case 28:
      v4 = @"forced expiratory volume";
      goto LABEL_77;
    case 29:
      v4 = @"forced vital capacity";
      goto LABEL_77;
    case 30:
      v4 = @"heart rate";
      goto LABEL_77;
    case 31:
      v4 = @"heart rate variability sdnn";
      goto LABEL_77;
    case 32:
      v4 = @"height";
      goto LABEL_77;
    case 33:
      v4 = @"inhaler usage";
      goto LABEL_77;
    case 34:
      v4 = @"insulin delivery";
      goto LABEL_77;
    case 35:
      v4 = @"iodine";
      goto LABEL_77;
    case 36:
      v4 = @"iron";
      goto LABEL_77;
    case 37:
      v4 = @"lean body mass";
      goto LABEL_77;
    case 38:
      v4 = @"magnesium";
      goto LABEL_77;
    case 39:
      v4 = @"manganese";
      goto LABEL_77;
    case 40:
      v4 = @"molybdenum";
      goto LABEL_77;
    case 41:
      v4 = @"niacin";
      goto LABEL_77;
    case 42:
      v4 = @"number of times fallen";
      goto LABEL_77;
    case 43:
      v4 = @"oxygen saturation";
      goto LABEL_77;
    case 44:
      v4 = @"pantothenic acid";
      goto LABEL_77;
    case 45:
      v4 = @"peak expiratory flow rate";
      goto LABEL_77;
    case 46:
      v4 = @"peripheral perfusion index";
      goto LABEL_77;
    case 47:
      v4 = @"phosphorus";
      goto LABEL_77;
    case 48:
      v4 = @"potassium";
      goto LABEL_77;
    case 49:
      v4 = @"protein";
      goto LABEL_77;
    case 50:
      v4 = @"respiratory rate";
      goto LABEL_77;
    case 51:
      v4 = @"restingheart rate";
      goto LABEL_77;
    case 52:
      v4 = @"riboflavin";
      goto LABEL_77;
    case 53:
      v4 = @"selenium";
      goto LABEL_77;
    case 54:
      v4 = @"sodium";
      goto LABEL_77;
    case 55:
      v4 = @"thiamin";
      goto LABEL_77;
    case 56:
      v4 = @"uv index";
      goto LABEL_77;
    case 57:
      v4 = @"vitamin a";
      goto LABEL_77;
    case 58:
      v4 = @"vitamin b12";
      goto LABEL_77;
    case 59:
      v4 = @"vitamin b6";
      goto LABEL_77;
    case 60:
      v4 = @"vitamin c";
      goto LABEL_77;
    case 61:
      v4 = @"vitamin d";
      goto LABEL_77;
    case 62:
      v4 = @"vitamin e";
      goto LABEL_77;
    case 63:
      v4 = @"vitamin k";
      goto LABEL_77;
    case 64:
      v4 = @"waist circumference";
      goto LABEL_77;
    case 65:
      v4 = @"walking heart rate average";
      goto LABEL_77;
    case 66:
      v4 = @"water";
      goto LABEL_77;
    case 67:
      v4 = @"weight";
      goto LABEL_77;
    case 68:
      v4 = @"zinc";
      goto LABEL_77;
    case 69:
      v4 = @"cervical mucus quality";
      goto LABEL_77;
    case 70:
      v4 = @"ovulation test result";
      goto LABEL_77;
    case 71:
      v4 = @"menstrual flow";
      goto LABEL_77;
    case 72:
      v4 = @"intermenstrual bleeding";
      goto LABEL_77;
    case 73:
      v4 = @"sexual activity";
      goto LABEL_77;
    case 74:
      v4 = @"mindful session";
LABEL_77:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

INSpatialEventTrigger *INIntentSlotValueTransformFromSpatialEventTrigger(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INSpatialEventTrigger alloc];
    v3 = [v1 location];
    v4 = INIntentSlotValueTransformFromLocationValue(v3);
    v5 = [v1 hasEvent];
    v6 = [v1 event];
    v7 = v6 == 10;
    if (v6 == 20)
    {
      v7 = 2;
    }

    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v1 suggestedValues];
    v10 = INIntentSlotValueTransformFromLocationValues(v9);
    v11 = [v1 hasMobileSpace];
    v12 = [v1 mobileSpace];

    if (v12 == 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(INSpatialEventTrigger *)v2 initWithPlacemark:v4 event:v8 suggestedValues:v10 mobileSpace:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

_INPBSpatialEventTrigger *INIntentSlotValueTransformToSpatialEventTrigger(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBSpatialEventTrigger);
    v3 = [v1 placemark];
    v4 = INIntentSlotValueTransformToLocationValue(v3);
    [(_INPBSpatialEventTrigger *)v2 setLocation:v4];

    v5 = [v1 event];
    if (v5 >= 3)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = (10 * v5);
    }

    [(_INPBSpatialEventTrigger *)v2 setEvent:v6];
    v7 = [v1 suggestedValues];
    v8 = INIntentSlotValueTransformToLocationValues(v7);
    [(_INPBSpatialEventTrigger *)v2 setSuggestedValues:v8];

    v9 = [v1 mobileSpace];
    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0x7FFFFFFF;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    [(_INPBSpatialEventTrigger *)v2 setMobileSpace:v11];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromSpatialEventTriggers(void *a1)
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

          v8 = INIntentSlotValueTransformFromSpatialEventTrigger(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToSpatialEventTriggers(void *a1)
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

          v8 = INIntentSlotValueTransformToSpatialEventTrigger(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromVolume(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromVolumeValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromVolumeValue(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    if ([v2 hasUnit])
    {
      switch([v2 unit])
      {
        case 1u:
          v4 = [MEMORY[0x1E696B088] megaliters];
          break;
        case 2u:
          v4 = [MEMORY[0x1E696B088] kiloliters];
          break;
        case 3u:
          v4 = [MEMORY[0x1E696B088] liters];
          break;
        case 4u:
          v4 = [MEMORY[0x1E696B088] deciliters];
          break;
        case 5u:
          v4 = [MEMORY[0x1E696B088] centiliters];
          break;
        case 6u:
          v4 = [MEMORY[0x1E696B088] milliliters];
          break;
        case 7u:
          v4 = [MEMORY[0x1E696B088] cubicKilometers];
          break;
        case 8u:
          v4 = [MEMORY[0x1E696B088] cubicDecimeters];
          break;
        case 9u:
          v4 = [MEMORY[0x1E696B088] cubicMillimeters];
          break;
        case 0xAu:
          v4 = [MEMORY[0x1E696B088] cubicInches];
          break;
        case 0xBu:
          v4 = [MEMORY[0x1E696B088] cubicFeet];
          break;
        case 0xCu:
          v4 = [MEMORY[0x1E696B088] cubicYards];
          break;
        case 0xDu:
          v4 = [MEMORY[0x1E696B088] cubicMiles];
          break;
        case 0xEu:
          v4 = [MEMORY[0x1E696B088] acreFeet];
          break;
        case 0xFu:
          v4 = [MEMORY[0x1E696B088] bushels];
          break;
        case 0x10u:
          v4 = [MEMORY[0x1E696B088] teaspoons];
          break;
        case 0x11u:
          v4 = [MEMORY[0x1E696B088] tablespoons];
          break;
        case 0x12u:
          v4 = [MEMORY[0x1E696B088] fluidOunces];
          break;
        case 0x13u:
          v4 = [MEMORY[0x1E696B088] cups];
          break;
        case 0x14u:
          v4 = [MEMORY[0x1E696B088] pints];
          break;
        case 0x15u:
          v4 = [MEMORY[0x1E696B088] quarts];
          break;
        case 0x16u:
          v4 = [MEMORY[0x1E696B088] gallons];
          break;
        case 0x17u:
          v4 = [MEMORY[0x1E696B088] imperialTeaspoons];
          break;
        case 0x18u:
          v4 = [MEMORY[0x1E696B088] imperialQuarts];
          break;
        case 0x19u:
          v4 = [MEMORY[0x1E696B088] imperialGallons];
          break;
        case 0x1Au:
          v4 = [MEMORY[0x1E696B088] metricCups];
          break;
        case 0x1Bu:
          v4 = [MEMORY[0x1E696B088] cubicCentimeters];
          break;
        case 0x1Cu:
          v4 = [MEMORY[0x1E696B088] cubicMeters];
          break;
        default:
          goto LABEL_34;
      }

      v5 = v4;
      if (v4)
      {
        v6 = objc_alloc(MEMORY[0x1E696AD28]);
        [v2 magnitude];
        v7 = [v6 initWithDoubleValue:v5 unit:?];

        goto LABEL_37;
      }
    }

LABEL_34:
    v8 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "INIntentSlotValueTransformFromVolumeValue";
      _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s _INPBVolumeValue must contain a unit. Otherwise ambiguous magnitude for NSMeasurement", &v11, 0xCu);
    }
  }

  v7 = 0;
LABEL_37:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

_INPBVolume *INIntentSlotValueTransformToVolume(void *a1)
{
  v1 = INIntentSlotValueTransformToVolumeValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBVolume);
    [(_INPBVolume *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBVolumeValue *INIntentSlotValueTransformToVolumeValue(void *a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_61;
  }

  v1 = a1;
  v2 = objc_alloc_init(_INPBVolumeValue);
  v3 = [v1 unit];
  [v1 doubleValue];
  v5 = v4;

  [(_INPBVolumeValue *)v2 setMagnitude:v5];
  v6 = [MEMORY[0x1E696B088] megaliters];
  v7 = [v3 isEqual:v6];

  if (v7)
  {
    v8 = 1;
LABEL_59:
    [(_INPBVolumeValue *)v2 setUnit:v8];
    goto LABEL_60;
  }

  v9 = [MEMORY[0x1E696B088] kiloliters];
  v10 = [v3 isEqual:v9];

  if (v10)
  {
    v8 = 2;
    goto LABEL_59;
  }

  v11 = [MEMORY[0x1E696B088] liters];
  v12 = [v3 isEqual:v11];

  if (v12)
  {
    v8 = 3;
    goto LABEL_59;
  }

  v13 = [MEMORY[0x1E696B088] deciliters];
  v14 = [v3 isEqual:v13];

  if (v14)
  {
    v8 = 4;
    goto LABEL_59;
  }

  v15 = [MEMORY[0x1E696B088] centiliters];
  v16 = [v3 isEqual:v15];

  if (v16)
  {
    v8 = 5;
    goto LABEL_59;
  }

  v17 = [MEMORY[0x1E696B088] milliliters];
  v18 = [v3 isEqual:v17];

  if (v18)
  {
    v8 = 6;
    goto LABEL_59;
  }

  v19 = [MEMORY[0x1E696B088] cubicCentimeters];
  v20 = [v3 isEqual:v19];

  if (v20)
  {
    v8 = 27;
    goto LABEL_59;
  }

  v21 = [MEMORY[0x1E696B088] cubicMeters];
  v22 = [v3 isEqual:v21];

  if (v22)
  {
    v8 = 28;
    goto LABEL_59;
  }

  v23 = [MEMORY[0x1E696B088] cubicKilometers];
  v24 = [v3 isEqual:v23];

  if (v24)
  {
    v8 = 7;
    goto LABEL_59;
  }

  v25 = [MEMORY[0x1E696B088] cubicDecimeters];
  v26 = [v3 isEqual:v25];

  if (v26)
  {
    v8 = 8;
    goto LABEL_59;
  }

  v27 = [MEMORY[0x1E696B088] cubicMillimeters];
  v28 = [v3 isEqual:v27];

  if (v28)
  {
    v8 = 9;
    goto LABEL_59;
  }

  v29 = [MEMORY[0x1E696B088] cubicInches];
  v30 = [v3 isEqual:v29];

  if (v30)
  {
    v8 = 10;
    goto LABEL_59;
  }

  v31 = [MEMORY[0x1E696B088] cubicFeet];
  v32 = [v3 isEqual:v31];

  if (v32)
  {
    v8 = 11;
    goto LABEL_59;
  }

  v33 = [MEMORY[0x1E696B088] cubicYards];
  v34 = [v3 isEqual:v33];

  if (v34)
  {
    v8 = 12;
    goto LABEL_59;
  }

  v35 = [MEMORY[0x1E696B088] cubicMiles];
  v36 = [v3 isEqual:v35];

  if (v36)
  {
    v8 = 13;
    goto LABEL_59;
  }

  v37 = [MEMORY[0x1E696B088] acreFeet];
  v38 = [v3 isEqual:v37];

  if (v38)
  {
    v8 = 14;
    goto LABEL_59;
  }

  v39 = [MEMORY[0x1E696B088] bushels];
  v40 = [v3 isEqual:v39];

  if (v40)
  {
    v8 = 15;
    goto LABEL_59;
  }

  v41 = [MEMORY[0x1E696B088] teaspoons];
  v42 = [v3 isEqual:v41];

  if (v42)
  {
    v8 = 16;
    goto LABEL_59;
  }

  v43 = [MEMORY[0x1E696B088] tablespoons];
  v44 = [v3 isEqual:v43];

  if (v44)
  {
    v8 = 17;
    goto LABEL_59;
  }

  v45 = [MEMORY[0x1E696B088] fluidOunces];
  v46 = [v3 isEqual:v45];

  if (v46)
  {
    v8 = 18;
    goto LABEL_59;
  }

  v47 = [MEMORY[0x1E696B088] cups];
  v48 = [v3 isEqual:v47];

  if (v48)
  {
    v8 = 19;
    goto LABEL_59;
  }

  v49 = [MEMORY[0x1E696B088] pints];
  v50 = [v3 isEqual:v49];

  if (v50)
  {
    v8 = 20;
    goto LABEL_59;
  }

  v51 = [MEMORY[0x1E696B088] quarts];
  v52 = [v3 isEqual:v51];

  if (v52)
  {
    v8 = 21;
    goto LABEL_59;
  }

  v53 = [MEMORY[0x1E696B088] gallons];
  v54 = [v3 isEqual:v53];

  if (v54)
  {
    v8 = 22;
    goto LABEL_59;
  }

  v55 = [MEMORY[0x1E696B088] imperialTeaspoons];
  v56 = [v3 isEqual:v55];

  if (v56)
  {
    v8 = 23;
    goto LABEL_59;
  }

  v57 = [MEMORY[0x1E696B088] imperialQuarts];
  v58 = [v3 isEqual:v57];

  if (v58)
  {
    v8 = 24;
    goto LABEL_59;
  }

  v59 = [MEMORY[0x1E696B088] imperialGallons];
  v60 = [v3 isEqual:v59];

  if (v60)
  {
    v8 = 25;
    goto LABEL_59;
  }

  v61 = [MEMORY[0x1E696B088] metricCups];
  v62 = [v3 isEqual:v61];

  if (v62)
  {
    v8 = 26;
    goto LABEL_59;
  }

LABEL_60:

LABEL_61:

  return v2;
}

id INIntentSlotValueTransformFromVolumeValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromVolumeValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromVolumes(void *a1)
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

        v8 = INIntentSlotValueTransformFromVolume(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToVolumeValues(void *a1)
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

        v8 = INIntentSlotValueTransformToVolumeValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueTransformToVolumes(void *a1)
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

        v8 = INIntentSlotValueTransformToVolume(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueRedactedValueFromVolumeValue(void *a1, uint64_t a2)
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
    v6 = [v3 copy];
  }

  return v6;
}

_INPBVolume *INIntentSlotValueRedactedVolumeFromVolume(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBVolume);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v5 values];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = INIntentSlotValueRedactedValueFromVolumeValue(*(*(&v16 + 1) + 8 * i), a2);
          if (v13)
          {
            [(_INPBVolume *)v7 addValue:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueRedactedVolumesFromVolumes(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = INIntentSlotValueRedactedVolumeFromVolume(*(*(&v17 + 1) + 8 * i), a2, v6);
        [v7 addObject:{v13, v17}];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

INPaymentMethod *INIntentSlotValueTransformFromPaymentMethodValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    v4 = [INPaymentMethod alloc];
    v5 = [v2 hasType];
    v6 = [v2 type];
    if (((v6 - 1 < 8) & v5) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v2 name];
    v9 = [v2 identificationHint];
    v10 = [v2 icon];
    v11 = INIntentSlotValueTransformFromImageValue(v10);
    v12 = [(INPaymentMethod *)v4 initWithType:v7 name:v8 identificationHint:v9 icon:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

_INPBPaymentMethodValue *INIntentSlotValueTransformToPaymentMethodValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPaymentMethodValue);
    v3 = [v1 type] - 1;
    if (v3 < 8)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 0x7FFFFFFFLL;
    }

    [(_INPBPaymentMethodValue *)v2 setType:v4];
    v5 = [v1 name];
    [(_INPBPaymentMethodValue *)v2 setName:v5];

    v6 = [v1 icon];
    v7 = INIntentSlotValueTransformToImageValue(v6);
    [(_INPBPaymentMethodValue *)v2 setIcon:v7];

    v8 = [v1 identificationHint];

    [(_INPBPaymentMethodValue *)v2 setIdentificationHint:v8];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromPaymentMethodValues(void *a1)
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

          v8 = INIntentSlotValueTransformFromPaymentMethodValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromPaymentMethod(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v1 = [a1 values];
    v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = INIntentSlotValueTransformFromPaymentMethodValue(*(*(&v10 + 1) + 8 * i));
          if (v6)
          {
            v7 = v6;
            goto LABEL_12;
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromPaymentMethods(void *a1)
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

        v8 = INIntentSlotValueTransformFromPaymentMethod(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPaymentMethodValues(void *a1)
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

          v8 = INIntentSlotValueTransformToPaymentMethodValue(*(*(&v12 + 1) + 8 * i));
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

_INPBPaymentMethod *INIntentSlotValueTransformToPaymentMethod(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPaymentMethod);
    v3 = INIntentSlotValueTransformToPaymentMethodValue(v1);

    if (v3)
    {
      [(_INPBPaymentMethod *)v2 addValue:v3];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformToPaymentMethods(void *a1)
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

        v8 = INIntentSlotValueTransformToPaymentMethod(*(*(&v12 + 1) + 8 * i));
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

_INPBPaymentMethodValue *INIntentSlotValueRedactedPaymentMethodValueFromPaymentMethodValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 valueMetadata];
  v8 = INPrivacyEntitlementOptionsForValueMetadata(v7);

  if ((v8 & a2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(_INPBPaymentMethodValue);
    -[_INPBPaymentMethodValue setType:](v9, "setType:", [v5 type]);
    v10 = [v5 name];
    [(_INPBPaymentMethodValue *)v9 setName:v10];

    v11 = [v5 icon];
    v12 = INIntentSlotValueRedactedImageValueFromImageValue(v11, a2);
    [(_INPBPaymentMethodValue *)v9 setIcon:v12];

    v13 = [v5 identificationHint];
    [(_INPBPaymentMethodValue *)v9 setIdentificationHint:v13];
  }

  return v9;
}

_INPBPaymentMethod *INIntentSlotValueRedactedPaymentMethodFromPaymentMethod(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBPaymentMethod);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v5 values];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = INIntentSlotValueRedactedPaymentMethodValueFromPaymentMethodValue(*(*(&v16 + 1) + 8 * i), a2, v6);
          if (v13)
          {
            [(_INPBPaymentMethod *)v7 addValue:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t _INPBTimestampReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
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

    if ((v13 >> 3) == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v30 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v30 & 0x7F) << v21;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_47;
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

LABEL_47:
      [a1 setNanos:v27];
    }

    else if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v31 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v31 & 0x7F) << v14;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
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

LABEL_43:
      [a1 setSeconds:v20];
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

uint64_t _INPBMoveFileIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = off_1E727C000;
    v6 = off_1E727C000;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v10 = [a2 position] + 1;
        if (v10 >= [a2 position] && (v11 = objc_msgSend(a2, "position") + 1, v11 <= objc_msgSend(a2, "length")))
        {
          v12 = [a2 data];
          [v12 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [a2 hasError] ? 0 : v9;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v40 = objc_alloc_init(_INPBString);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v40, a2))
            {
LABEL_108:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDestinationName:v40];
            goto LABEL_80;
          }

          if (v15 == 8)
          {
            v40 = objc_alloc_init(v6[11]);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !_INPBFilePropertyReadFrom(v40, a2))
            {
              goto LABEL_108;
            }

            PBReaderRecallMark();
            if (v40)
            {
              [a1 addProperties:v40];
            }

            goto LABEL_80;
          }
        }

        else
        {
          if (v15 == 5)
          {
            v40 = objc_alloc_init(_INPBString);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v40, a2))
            {
              goto LABEL_108;
            }

            PBReaderRecallMark();
            [a1 setSourceName:v40];
            goto LABEL_80;
          }

          if (v15 == 6)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              LOBYTE(v48) = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (v48 & 0x7F) << v26;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v13 = v27++ >= 9;
              if (v13)
              {
                v32 = 0;
                goto LABEL_88;
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

LABEL_88:
            [a1 setDestinationType:v32];
            goto LABEL_81;
          }
        }
      }

      else if (v15 > 2)
      {
        if (v15 == 3)
        {
          v40 = objc_alloc_init(_INPBString);
          v48 = 0;
          v49 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v40, a2))
          {
            goto LABEL_108;
          }

          PBReaderRecallMark();
          if (v40)
          {
            [a1 addEntityName:v40];
          }

          goto LABEL_80;
        }

        if (v15 == 4)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v48 & 0x7F) << v33;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v13 = v34++ >= 9;
            if (v13)
            {
              v39 = 0;
              goto LABEL_92;
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

LABEL_92:
          [a1 setSourceType:v39];
          goto LABEL_81;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v40 = objc_alloc_init(v5[63]);
          v48 = 0;
          v49 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v40, a2))
          {
            goto LABEL_108;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v40];
LABEL_80:

          goto LABEL_81;
        }

        if (v15 == 2)
        {
          if ((v14 & 7) == 2)
          {
            v48 = 0;
            v49 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            v17 = v6;
            v18 = v5;
            while (1)
            {
              v19 = [a2 position];
              if (v19 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v20 = 0;
              v21 = 0;
              v22 = 0;
              while (1)
              {
                v50 = 0;
                v23 = [a2 position] + 1;
                if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
                {
                  v25 = [a2 data];
                  [v25 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v22 |= (v50 & 0x7F) << v20;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v20 += 7;
                v13 = v21++ >= 9;
                if (v13)
                {
                  goto LABEL_37;
                }
              }

              [a2 hasError];
LABEL_37:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v17 = v6;
            v18 = v5;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            while (1)
            {
              LOBYTE(v48) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v48 & 0x7F) << v42;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v13 = v43++ >= 9;
              if (v13)
              {
                goto LABEL_104;
              }
            }

            [a2 hasError];
LABEL_104:
            PBRepeatedInt32Add();
          }

          v5 = v18;
          v6 = v17;
          goto LABEL_81;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPriceRangeValueReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBDecimalNumberValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDecimalNumberValueReadFrom(v14, a2))
          {
LABEL_38:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setMaximumPrice:v14];
          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setCurrencyCode:v14];
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBValueMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          PBReaderRecallMark();
          [a1 setValueMetadata:v14];
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBDecimalNumberValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDecimalNumberValueReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          PBReaderRecallMark();
          [a1 setMinimumPrice:v14];
          goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}