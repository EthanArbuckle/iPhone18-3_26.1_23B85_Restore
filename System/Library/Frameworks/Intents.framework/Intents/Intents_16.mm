uint64_t _INPBReadAnnouncementIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBAnnouncementRecord);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBAnnouncementRecordReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addAnnouncementRecords:v13];
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

uint64_t _INPBReadAnnouncementIntentReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v28 = PBReaderReadString();
          [a1 setStartAnnouncementIdentifier:v28];
LABEL_46:

          goto LABEL_55;
        }

        if (v13 == 4)
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
              goto LABEL_54;
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

LABEL_54:
          [a1 setUserNotificationType:v27];
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_INPBIntentMetadata);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v28, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v28];
          goto LABEL_46;
        }

        if (v13 == 2)
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
          [a1 setReadType:v20];
          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INReadAnnouncementIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7287EF0[a1];
  }
}

INAnnouncement *INIntentSlotValueTransformFromAnnouncement(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INAnnouncement alloc];
    v3 = [v1 speechDataURL];
    v4 = INIntentSlotValueTransformFromURLValue(v3);
    v5 = [v1 identifier];
    v6 = [v1 speechDataTranscription];

    v7 = [(INAnnouncement *)v2 initWithSpeechDataURL:v4 identifier:v5 speechDataTranscription:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBAnnouncement *INIntentSlotValueTransformToAnnouncement(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBAnnouncement);
    v3 = [v1 speechDataURL];
    v4 = INIntentSlotValueTransformToURLValue(v3);
    [(_INPBAnnouncement *)v2 setSpeechDataURL:v4];

    v5 = [v1 identifier];
    [(_INPBAnnouncement *)v2 setIdentifier:v5];

    v6 = [v1 speechDataTranscription];

    [(_INPBAnnouncement *)v2 setSpeechDataTranscription:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromAnnouncements(void *a1)
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

          v8 = INIntentSlotValueTransformFromAnnouncement(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToAnnouncements(void *a1)
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

          v8 = INIntentSlotValueTransformToAnnouncement(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBAnnouncementReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBURLValue);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setSpeechDataURL:v14];
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31[0] & 0x7F) << v15;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_56;
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

LABEL_56:
          [a1 setStartTime:v21];
          goto LABEL_57;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v31[0]) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v31[0] & 0x7F) << v22;
              if ((v31[0] & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_52;
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

LABEL_52:
            [a1 setEndTime:v28];
            goto LABEL_57;
          case 4:
            v14 = PBReaderReadString();
            [a1 setIdentifier:v14];
            goto LABEL_46;
          case 5:
            v14 = PBReaderReadString();
            [a1 setSpeechDataTranscription:v14];
LABEL_46:

            goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBOpenSettingIntentResponseReadFrom(void *a1, void *a2)
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

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setPunchoutUrl:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setErrorDetail:v14];
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

uint64_t _INPBOpenSettingIntentReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBDataString);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setSearchQuery:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
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

    v14 = objc_alloc_init(_INPBSettingMetadata);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBSettingMetadataReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setSettingMetadata:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INOpenSettingIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7287F20[a1];
  }
}

INPrivateSearchForMediaIntentData *INIntentSlotValueTransformFromPrivateSearchForMediaIntentData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INPrivateSearchForMediaIntentData alloc];
    v3 = [v1 privateMediaIntentData];
    v4 = INIntentSlotValueTransformFromPrivateMediaIntentData(v3);
    v5 = [v1 audioSearchResults];
    v6 = INIntentSlotValueTransformFromMediaItemValues(v5);
    v7 = [v1 internalSignals];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "appInferred")}];
    v9 = [v1 pegasusMetaData];

    v10 = [(INPrivateSearchForMediaIntentData *)v2 initWithPrivateMediaIntentData:v4 audioSearchResults:v6 internalSignals:v7 appInferred:v8 pegasusMetaData:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBPrivateSearchForMediaIntentData *INIntentSlotValueTransformToPrivateSearchForMediaIntentData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPrivateSearchForMediaIntentData);
    v3 = [v1 privateMediaIntentData];
    v4 = INIntentSlotValueTransformToPrivateMediaIntentData(v3);
    [(_INPBPrivateSearchForMediaIntentData *)v2 setPrivateMediaIntentData:v4];

    v5 = [v1 audioSearchResults];
    v6 = INIntentSlotValueTransformToMediaItemValues(v5);
    [(_INPBPrivateSearchForMediaIntentData *)v2 setAudioSearchResults:v6];

    v7 = [v1 internalSignals];
    [(_INPBPrivateSearchForMediaIntentData *)v2 setInternalSignals:v7];

    v8 = [v1 appInferred];
    -[_INPBPrivateSearchForMediaIntentData setAppInferred:](v2, "setAppInferred:", [v8 BOOLValue]);

    v9 = [v1 pegasusMetaData];

    [(_INPBPrivateSearchForMediaIntentData *)v2 setPegasusMetaData:v9];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromPrivateSearchForMediaIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromPrivateSearchForMediaIntentData(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPrivateSearchForMediaIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformToPrivateSearchForMediaIntentData(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBPrivateSearchForMediaIntentDataReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_INPBPrivateMediaIntentData);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBPrivateMediaIntentDataReadFrom(v21, a2))
          {
LABEL_50:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setPrivateMediaIntentData:v21];
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBMediaItemValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v21, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addAudioSearchResults:v21];
          }

          goto LABEL_42;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            if (v21)
            {
              [a1 addInternalSignal:v21];
            }

            goto LABEL_42;
          case 5:
            v21 = PBReaderReadData();
            [a1 setPegasusMetaData:v21];
LABEL_42:

            goto LABEL_47;
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
                goto LABEL_46;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_46:
            [a1 setAppInferred:v20];
            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void INDayOfWeekOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  if (a1)
  {
    (*(v3 + 2))(v3, 1);
    v3 = v4;
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  (*(v3 + 2))(v4, 2);
  v3 = v4;
  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  (*(v3 + 2))(v4, 3);
  v3 = v4;
  if ((a1 & 8) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    (*(v3 + 2))(v4, 5);
    v3 = v4;
    if ((a1 & 0x20) == 0)
    {
LABEL_9:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  (*(v3 + 2))(v4, 4);
  v3 = v4;
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((a1 & 0x20) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  (*(v3 + 2))(v4, 6);
  v3 = v4;
  if ((a1 & 0x40) != 0)
  {
LABEL_10:
    (*(v3 + 2))(v4, 7);
    v3 = v4;
  }

LABEL_11:
}

uint64_t INDayOfWeekOptionsContainsBackingType(unint64_t a1, int a2)
{
  if (a1)
  {
    v2 = (a1 >> 5) & 1;
    v3 = (a1 >> 6) & 1;
    if (a2 != 7)
    {
      LOBYTE(v3) = 0;
    }

    if (a2 != 6)
    {
      LOBYTE(v2) = v3;
    }

    v4 = (a1 >> 3) & 1;
    v5 = (a1 >> 4) & 1;
    if (a2 != 5)
    {
      LOBYTE(v5) = 0;
    }

    if (a2 != 4)
    {
      LOBYTE(v4) = v5;
    }

    if (a2 <= 5)
    {
      LOBYTE(v2) = v4;
    }

    v6 = (a1 >> 1) & 1;
    v7 = (a1 >> 2) & 1;
    if (a2 != 3)
    {
      LOBYTE(v7) = 0;
    }

    if (a2 != 2)
    {
      LOBYTE(v6) = v7;
    }

    if (a2 == 1)
    {
      LOBYTE(v6) = a1;
    }

    if (a2 <= 3)
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

uint64_t *INDayOfWeekOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result | 0x20;
    v4 = *result | 0x40;
    if (a2 != 7)
    {
      v4 = *result;
    }

    if (a2 != 6)
    {
      v3 = v4;
    }

    v5 = v2 | 8;
    v6 = v2 | 0x10;
    if (a2 != 5)
    {
      v6 = *result;
    }

    if (a2 != 4)
    {
      v5 = v6;
    }

    if (a2 <= 5)
    {
      v3 = v5;
    }

    v7 = v2 | 1;
    v8 = v2 | 2;
    if (a2 == 3)
    {
      v2 |= 4uLL;
    }

    if (a2 == 2)
    {
      v2 = v8;
    }

    if (a2 == 1)
    {
      v2 = v7;
    }

    if (a2 > 3)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INDayOfWeekOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result & 0xFFFFFFFFFFFFFFDFLL;
    v4 = *result & 0xFFFFFFFFFFFFFFBFLL;
    if (a2 != 7)
    {
      v4 = *result;
    }

    if (a2 != 6)
    {
      v3 = v4;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFF7;
    v6 = v2 & 0xFFFFFFFFFFFFFFEFLL;
    if (a2 != 5)
    {
      v6 = *result;
    }

    if (a2 != 4)
    {
      v5 = v6;
    }

    if (a2 <= 5)
    {
      v3 = v5;
    }

    v7 = v2 & 0xFFFFFFFFFFFFFFFELL;
    v8 = v2 & 0xFFFFFFFFFFFFFFFDLL;
    if (a2 == 3)
    {
      v2 &= ~4uLL;
    }

    if (a2 == 2)
    {
      v2 = v8;
    }

    if (a2 == 1)
    {
      v2 = v7;
    }

    if (a2 > 3)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INDayOfWeekOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"monday"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"tuesday"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 addObject:@"wednesday"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:@"thursday"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:@"friday"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
LABEL_10:
        v4 = [v3 copy];

        goto LABEL_12;
      }

LABEL_9:
      [v3 addObject:@"sunday"];
      goto LABEL_10;
    }

LABEL_20:
    [v3 addObject:@"saturday"];
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_12:

  return v4;
}

uint64_t INDayOfWeekOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v11;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v3 |= [v6 isEqualToString:@"monday"];
        if ([v6 isEqualToString:@"tuesday"])
        {
          v3 |= 2uLL;
        }

        if ([v6 isEqualToString:@"wednesday"])
        {
          v3 |= 4uLL;
        }

        if ([v6 isEqualToString:@"thursday"])
        {
          v3 |= 8uLL;
        }

        if ([v6 isEqualToString:@"friday"])
        {
          v3 |= 0x10uLL;
        }

        if ([v6 isEqualToString:@"saturday"])
        {
          v3 |= 0x20uLL;
        }

        if ([v6 isEqualToString:@"sunday"])
        {
          v3 |= 0x40uLL;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

id INDayOfWeekOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"monday", @"monday", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"tuesday", @"tuesday", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = INLocalizedStringWithLocalizer(@"wednesday", @"wednesday", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    v11 = INLocalizedStringWithLocalizer(@"thursday", @"thursday", v3);
    [v4 addObject:v11];

    if ((a1 & 0x10) == 0)
    {
LABEL_7:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v12 = INLocalizedStringWithLocalizer(@"friday", @"friday", v3);
    [v4 addObject:v12];

    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x40) == 0)
      {
LABEL_10:
        v6 = [v4 copy];

        goto LABEL_12;
      }

LABEL_9:
      v5 = INLocalizedStringWithLocalizer(@"sunday", @"sunday", v3);
      [v4 addObject:v5];

      goto LABEL_10;
    }

LABEL_20:
    v13 = INLocalizedStringWithLocalizer(@"saturday", @"saturday", v3);
    [v4 addObject:v13];

    if ((a1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_12:

  return v6;
}

void INShortcutAvailabilityOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  if (a1)
  {
    (*(v3 + 2))(v3, 0);
    v3 = v4;
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  (*(v3 + 2))(v4, 1);
  v3 = v4;
  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  (*(v3 + 2))(v4, 2);
  v3 = v4;
  if ((a1 & 8) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    (*(v3 + 2))(v4, 4);
    v3 = v4;
    if ((a1 & 0x20) == 0)
    {
LABEL_9:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  (*(v3 + 2))(v4, 3);
  v3 = v4;
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((a1 & 0x20) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  (*(v3 + 2))(v4, 5);
  v3 = v4;
  if ((a1 & 0x40) != 0)
  {
LABEL_10:
    (*(v3 + 2))(v4, 6);
    v3 = v4;
  }

LABEL_11:
}

uint64_t INShortcutAvailabilityOptionsContainsBackingType(unint64_t a1, int a2)
{
  if (a1)
  {
    v2 = (a1 >> 5) & 1;
    v3 = (a1 >> 6) & 1;
    if (a2 != 6)
    {
      LOBYTE(v3) = 0;
    }

    if (a2 != 5)
    {
      LOBYTE(v2) = v3;
    }

    v4 = (a1 >> 3) & 1;
    v5 = (a1 >> 4) & 1;
    if (a2 != 4)
    {
      LOBYTE(v5) = 0;
    }

    if (a2 != 3)
    {
      LOBYTE(v4) = v5;
    }

    if (a2 <= 4)
    {
      LOBYTE(v2) = v4;
    }

    v6 = (a1 >> 1) & 1;
    v7 = (a1 >> 2) & 1;
    if (a2 != 2)
    {
      LOBYTE(v7) = 0;
    }

    if (a2 != 1)
    {
      LOBYTE(v6) = v7;
    }

    if (!a2)
    {
      LOBYTE(v6) = a1;
    }

    if (a2 <= 2)
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

uint64_t *INShortcutAvailabilityOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result | 0x20;
    v4 = *result | 0x40;
    if (a2 != 6)
    {
      v4 = *result;
    }

    if (a2 != 5)
    {
      v3 = v4;
    }

    v5 = v2 | 8;
    v6 = v2 | 0x10;
    if (a2 != 4)
    {
      v6 = *result;
    }

    if (a2 != 3)
    {
      v5 = v6;
    }

    if (a2 <= 4)
    {
      v3 = v5;
    }

    v7 = v2 | 1;
    v8 = v2 | 2;
    if (a2 == 2)
    {
      v2 |= 4uLL;
    }

    if (a2 == 1)
    {
      v2 = v8;
    }

    if (!a2)
    {
      v2 = v7;
    }

    if (a2 > 2)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INShortcutAvailabilityOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result & 0xFFFFFFFFFFFFFFDFLL;
    v4 = *result & 0xFFFFFFFFFFFFFFBFLL;
    if (a2 != 6)
    {
      v4 = *result;
    }

    if (a2 != 5)
    {
      v3 = v4;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFF7;
    v6 = v2 & 0xFFFFFFFFFFFFFFEFLL;
    if (a2 != 4)
    {
      v6 = *result;
    }

    if (a2 != 3)
    {
      v5 = v6;
    }

    if (a2 <= 4)
    {
      v3 = v5;
    }

    v7 = v2 & 0xFFFFFFFFFFFFFFFELL;
    v8 = v2 & 0xFFFFFFFFFFFFFFFDLL;
    if (a2 == 2)
    {
      v2 &= ~4uLL;
    }

    if (a2 == 1)
    {
      v2 = v8;
    }

    if (!a2)
    {
      v2 = v7;
    }

    if (a2 > 2)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INShortcutAvailabilityOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"sleepMindfulness"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"sleepJournaling"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 addObject:@"sleepMusic"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:@"sleepPodcasts"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:@"sleepReading"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
LABEL_10:
        v4 = [v3 copy];

        goto LABEL_12;
      }

LABEL_9:
      [v3 addObject:@"sleepYogaAndStretching"];
      goto LABEL_10;
    }

LABEL_20:
    [v3 addObject:@"sleepWrapUpYourDay"];
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_12:

  return v4;
}

uint64_t INShortcutAvailabilityOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v11;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v3 |= [v6 isEqualToString:@"sleepMindfulness"];
        if ([v6 isEqualToString:@"sleepJournaling"])
        {
          v3 |= 2uLL;
        }

        if ([v6 isEqualToString:@"sleepMusic"])
        {
          v3 |= 4uLL;
        }

        if ([v6 isEqualToString:@"sleepPodcasts"])
        {
          v3 |= 8uLL;
        }

        if ([v6 isEqualToString:@"sleepReading"])
        {
          v3 |= 0x10uLL;
        }

        if ([v6 isEqualToString:@"sleepWrapUpYourDay"])
        {
          v3 |= 0x20uLL;
        }

        if ([v6 isEqualToString:@"sleepYogaAndStretching"])
        {
          v3 |= 0x40uLL;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

id INShortcutAvailabilityOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"sleep mindfulness", @"sleep mindfulness", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"sleep journaling", @"sleep journaling", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = INLocalizedStringWithLocalizer(@"sleep music", @"sleep music", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    v11 = INLocalizedStringWithLocalizer(@"sleep podcasts", @"sleep podcasts", v3);
    [v4 addObject:v11];

    if ((a1 & 0x10) == 0)
    {
LABEL_7:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v12 = INLocalizedStringWithLocalizer(@"sleep reading", @"sleep reading", v3);
    [v4 addObject:v12];

    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x40) == 0)
      {
LABEL_10:
        v6 = [v4 copy];

        goto LABEL_12;
      }

LABEL_9:
      v5 = INLocalizedStringWithLocalizer(@"sleep yoga and stretching", @"sleep yoga and stretching", v3);
      [v4 addObject:v5];

      goto LABEL_10;
    }

LABEL_20:
    v13 = INLocalizedStringWithLocalizer(@"sleep wrap up your day", @"sleep wrap up your day", v3);
    [v4 addObject:v13];

    if ((a1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_12:

  return v6;
}

uint64_t _INPBAnnouncementRecordReadFrom(void *a1, void *a2)
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
        LOBYTE(v20[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v20[0]) & 0x7F) << v5;
        if ((LOBYTE(v20[0]) & 0x80) == 0)
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
        break;
      }

      if (v13 == 2)
      {
        v16 = PBReaderReadString();
        [a1 setIdentifier:v16];
LABEL_27:

        goto LABEL_32;
      }

      if (v13 == 3)
      {
        v20[0] = 0.0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setDuration:v20[0]];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(_INPBHomeFilter);
    v20[0] = 0.0;
    v20[1] = 0.0;
    if (!PBReaderPlaceMark() || !_INPBHomeFilterReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setOriginator:v16];
    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

INAnnouncementRecord *INIntentSlotValueTransformFromAnnouncementRecord(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INAnnouncementRecord alloc];
    v3 = [v1 originator];
    v4 = INIntentSlotValueTransformFromHomeFilter(v3);
    v5 = [v1 identifier];
    v6 = MEMORY[0x1E696AD98];
    [v1 duration];
    v8 = v7;

    v9 = [v6 numberWithDouble:v8];
    v10 = [(INAnnouncementRecord *)v2 initWithOriginator:v4 identifier:v5 duration:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBAnnouncementRecord *INIntentSlotValueTransformToAnnouncementRecord(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBAnnouncementRecord);
    v3 = [v1 originator];
    v4 = INIntentSlotValueTransformToHomeFilter(v3);
    [(_INPBAnnouncementRecord *)v2 setOriginator:v4];

    v5 = [v1 identifier];
    [(_INPBAnnouncementRecord *)v2 setIdentifier:v5];

    v6 = [v1 duration];

    [v6 doubleValue];
    [(_INPBAnnouncementRecord *)v2 setDuration:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromAnnouncementRecords(void *a1)
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

          v8 = INIntentSlotValueTransformFromAnnouncementRecord(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToAnnouncementRecords(void *a1)
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

          v8 = INIntentSlotValueTransformToAnnouncementRecord(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBStopAnnouncementIntentReadFrom(void *a1, void *a2)
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

uint64_t _INPBStopAnnouncementIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBAnnouncementRecord);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBAnnouncementRecordReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addStoppedAnnouncementRecords:v13];
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

__CFString *INStopAnnouncementIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7287F68[a1];
  }
}

_INPBWholeHouseAudioMetadata *INIntentSlotValueTransformToWholeHouseAudioMetadata(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBWholeHouseAudioMetadata);
    v3 = [v1 speakerNames];
    v4 = INIntentSlotValueTransformToStrings(v3);
    [(_INPBWholeHouseAudioMetadata *)v2 setSpeakerNames:v4];

    v5 = [v1 speakerRooms];
    v6 = INIntentSlotValueTransformToStrings(v5);
    [(_INPBWholeHouseAudioMetadata *)v2 setSpeakerRooms:v6];

    v7 = [v1 permanentNames];
    v8 = INIntentSlotValueTransformToStrings(v7);
    [(_INPBWholeHouseAudioMetadata *)v2 setPermanentNames:v8];

    v9 = [v1 intentSpeakerNames];
    v10 = INIntentSlotValueTransformToStrings(v9);
    [(_INPBWholeHouseAudioMetadata *)v2 setIntentSpeakerNames:v10];

    v11 = [v1 intentSpeakerRooms];
    v12 = INIntentSlotValueTransformToStrings(v11);
    [(_INPBWholeHouseAudioMetadata *)v2 setIntentSpeakerRooms:v12];

    v13 = [v1 intentDestinationSpeakers];
    v14 = INIntentSlotValueTransformToStrings(v13);
    [(_INPBWholeHouseAudioMetadata *)v2 setIntentDestinationSpeakers:v14];

    v15 = [v1 intentPermanentNames];
    v16 = INIntentSlotValueTransformToStrings(v15);
    [(_INPBWholeHouseAudioMetadata *)v2 setIntentPermanentNames:v16];

    v17 = [v1 spokenEntityTypes];
    v18 = INIntentSlotValueTransformToStrings(v17);
    [(_INPBWholeHouseAudioMetadata *)v2 setSpokenEntityTypes:v18];

    v19 = [v1 spokenEntityNames];
    v20 = INIntentSlotValueTransformToStrings(v19);
    [(_INPBWholeHouseAudioMetadata *)v2 setSpokenEntityNames:v20];

    v21 = [v1 numberOfHomeAutomationWords];
    -[_INPBWholeHouseAudioMetadata setNumberOfHomeAutomationWords:](v2, "setNumberOfHomeAutomationWords:", [v21 intValue]);

    v22 = [v1 isAllSpeakers];
    -[_INPBWholeHouseAudioMetadata setIsAllSpeakers:](v2, "setIsAllSpeakers:", [v22 BOOLValue]);

    v23 = [v1 isPauseOrStop];
    -[_INPBWholeHouseAudioMetadata setIsPauseOrStop:](v2, "setIsPauseOrStop:", [v23 BOOLValue]);

    v24 = [v1 isWholeHouseAudioCommand];
    -[_INPBWholeHouseAudioMetadata setIsWholeHouseAudioCommand:](v2, "setIsWholeHouseAudioCommand:", [v24 BOOLValue]);

    v25 = [v1 isInHere];
    -[_INPBWholeHouseAudioMetadata setIsInHere:](v2, "setIsInHere:", [v25 BOOLValue]);

    v26 = [v1 hasExcept];
    -[_INPBWholeHouseAudioMetadata setHasExcept:](v2, "setHasExcept:", [v26 BOOLValue]);

    v27 = [v1 isParticipatingSpeaker];

    -[_INPBWholeHouseAudioMetadata setIsParticipatingSpeaker:](v2, "setIsParticipatingSpeaker:", [v27 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromWholeHouseAudioMetadatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromWholeHouseAudioMetadata(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToWholeHouseAudioMetadatas(void *a1)
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

          v8 = INIntentSlotValueTransformToWholeHouseAudioMetadata(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBWholeHouseAudioMetadataReadFrom(void *a1, void *a2)
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
      LOBYTE(v65) = 0;
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_140;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addSpeakerNames:v13];
        }

        goto LABEL_117;
      case 2u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_140;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addSpeakerRooms:v13];
        }

        goto LABEL_117;
      case 3u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_140;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPermanentNames:v13];
        }

        goto LABEL_117;
      case 4u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_140;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addIntentSpeakerNames:v13];
        }

        goto LABEL_117;
      case 5u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_140;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addIntentSpeakerRooms:v13];
        }

        goto LABEL_117;
      case 6u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_140;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addIntentDestinationSpeakers:v13];
        }

        goto LABEL_117;
      case 7u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_140;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addIntentPermanentNames:v13];
        }

        goto LABEL_117;
      case 8u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_140;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addSpokenEntityType:v13];
        }

        goto LABEL_117;
      case 9u:
        v13 = objc_alloc_init(_INPBString);
        v65 = 0;
        v66 = 0;
        if (PBReaderPlaceMark() && _INPBStringReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          if (v13)
          {
            [a1 addSpokenEntityName:v13];
          }

LABEL_117:

LABEL_118:
          v63 = [a2 position];
          if (v63 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_140:

        return 0;
      case 0xAu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v65 & 0x7F) << v35;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_131;
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

LABEL_131:
        [a1 setNumberOfHomeAutomationWords:v41];
        goto LABEL_118;
      case 0xBu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v65 & 0x7F) << v56;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v62 = 0;
            goto LABEL_137;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_137:
        [a1 setIsAllSpeakers:v62];
        goto LABEL_118;
      case 0xCu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v65 & 0x7F) << v21;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_125;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_125:
        [a1 setIsPauseOrStop:v27];
        goto LABEL_118;
      case 0xDu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v65 & 0x7F) << v28;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_127;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_127:
        [a1 setIsWholeHouseAudioCommand:v34];
        goto LABEL_118;
      case 0xEu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v65 & 0x7F) << v49;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_135;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_135:
        [a1 setIsInHere:v55];
        goto LABEL_118;
      case 0xFu:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v65 & 0x7F) << v14;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_123;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_123:
        [a1 setHasExcept:v20];
        goto LABEL_118;
      case 0x10u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v65 & 0x7F) << v42;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_133;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_133:
        [a1 setIsParticipatingSpeaker:v48];
        goto LABEL_118;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_118;
    }
  }
}

uint64_t INMediaConfidenceLevelGetBackingType(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (10 * a1);
  }
}

uint64_t INMediaConfidenceLevelGetFacadeType(int a1, int a2)
{
  v2 = 3;
  v3 = 2;
  if (a2 != 20)
  {
    v3 = a2 == 10;
  }

  if (a2 != 30)
  {
    v2 = v3;
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

__CFString *INMediaConfidenceLevelGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7287F98[a1 - 1];
  }
}

uint64_t INMediaConfidenceLevelWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"low"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"medium"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"high"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaConfidenceLevelGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"high";
      goto LABEL_7;
    case 2:
      v4 = @"medium";
      goto LABEL_7;
    case 1:
      v4 = @"low";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBPlayAnnouncementSoundIntentReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_INPBIntentMetadata);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v20];
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
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setSoundType:v19];
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

__CFString *INPlayAnnouncementSoundIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7287FB0[a1];
  }
}

uint64_t _INPBPlayAnnouncementSoundIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t INAnnouncementSoundTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INAnnouncementSoundTypeGetFacadeType(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFString *INAnnouncementSoundTypeGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"announcementSent";
  }

  else
  {
    return @"unknown";
  }
}

id INAnnouncementSoundTypeGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"announcement sent", @"announcement sent", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

INConnectedCall *INIntentSlotValueTransformFromConnectedCall(INConnectedCall *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [INConnectedCall alloc];
    v4 = [(INConnectedCall *)v2 hasAudioRoute];
    v5 = [(INConnectedCall *)v2 audioRoute];

    if (v4 && (v5 - 2) <= 2)
    {
      v6 = qword_18EE5EFD0[v5 - 2];
    }

    else
    {
      v6 = 0;
    }

    a1 = [(INConnectedCall *)v3 initWithAudioRoute:v6];
    v1 = vars8;
  }

  return a1;
}

_INPBConnectedCall *INIntentSlotValueTransformToConnectedCall(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBConnectedCall);
    v3 = [v1 audioRoute];

    if (v3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0x7FFFFFFF;
    }

    if (v3 == 2)
    {
      v4 = 3;
    }

    if (v3 == 1000)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    [(_INPBConnectedCall *)v2 setAudioRoute:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromConnectedCalls(void *a1)
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

          v8 = INIntentSlotValueTransformFromConnectedCall(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToConnectedCalls(void *a1)
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

          v8 = INIntentSlotValueTransformToConnectedCall(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBConnectedCallReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 setAudioRoute:v20];
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

uint64_t _INPBAlarmSearchReadFrom(void *a1, void *a2)
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
        LOBYTE(v52) = 0;
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 8)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v52 & 0x7F) << v43;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_92;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_92:
            [a1 setIsMeridianInferred:v49];
            goto LABEL_99;
          }

          if (v13 == 7)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v52 & 0x7F) << v22;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_98;
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

LABEL_98:
            [a1 setPeriod:v28];
            goto LABEL_99;
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
              LOBYTE(v52) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v52 & 0x7F) << v36;
              if ((v52 & 0x80) == 0)
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
            [a1 setAlarmSearchStatus:v42];
            goto LABEL_99;
          }

          if (v13 == 6)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v52 & 0x7F) << v15;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_94;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_94:
            [a1 setIncludeSleepAlarm:v21];
            goto LABEL_99;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBDateTimeRangeValue);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v14, a2))
          {
LABEL_102:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setTime:v14];
          goto LABEL_71;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
            goto LABEL_102;
          }

          PBReaderRecallMark();
          [a1 setLabel:v14];
          goto LABEL_71;
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
            LOBYTE(v52) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v52 & 0x7F) << v29;
            if ((v52 & 0x80) == 0)
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
          [a1 setAlarmReferenceType:v35];
          goto LABEL_99;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setIdentifier:v14];
LABEL_71:

          goto LABEL_99;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_99:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INDeleteAlarmIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7288080[a1];
  }
}

INAlarm *INIntentSlotValueTransformFromAlarm(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v19 = 0;
    if ([v1 alarmRepeatScheduleOptionsCount])
    {
      v3 = 0;
      do
      {
        INAlarmRepeatScheduleOptionsAddBackingType(&v19, [v2 alarmRepeatScheduleOptionsAtIndex:v3++]);
      }

      while (v3 < [v2 alarmRepeatScheduleOptionsCount]);
    }

    v4 = [INAlarm alloc];
    v5 = [v2 identifier];
    v18 = [v2 dateTime];
    v6 = INIntentSlotValueTransformFromDateTime(v18);
    v17 = [v2 label];
    v7 = INIntentSlotValueTransformFromDataString(v17);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "enabled")}];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "firing")}];
    v10 = v19;
    v11 = [v2 sleepAlarmAttribute];
    v12 = INIntentSlotValueTransformFromSleepAlarmAttribute(v11);
    v13 = v4;
    v14 = v5;
    v15 = [(INAlarm *)v13 initWithIdentifier:v5 dateTime:v6 label:v7 enabled:v8 firing:v9 alarmRepeatScheduleOptions:v10 sleepAlarmAttribute:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

_INPBAlarm *INIntentSlotValueTransformToAlarm(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBAlarm);
    v3 = [v1 identifier];
    [(_INPBAlarm *)v2 setIdentifier:v3];

    v4 = [v1 dateTime];
    v5 = INIntentSlotValueTransformToDateTime(v4);
    [(_INPBAlarm *)v2 setDateTime:v5];

    v6 = [v1 label];
    v7 = INIntentSlotValueTransformToDataString(v6);
    [(_INPBAlarm *)v2 setLabel:v7];

    v8 = [v1 enabled];
    -[_INPBAlarm setEnabled:](v2, "setEnabled:", [v8 BOOLValue]);

    v9 = [v1 firing];
    -[_INPBAlarm setFiring:](v2, "setFiring:", [v9 BOOLValue]);

    v10 = [v1 alarmRepeatScheduleOptions];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __INIntentSlotValueTransformToAlarm_block_invoke;
    v15[3] = &unk_1E7288628;
    v11 = v2;
    v16 = v11;
    INAlarmRepeatScheduleOptionsEnumerateBackingTypes(v10, v15);
    v12 = [v1 sleepAlarmAttribute];

    v13 = INIntentSlotValueTransformToSleepAlarmAttribute(v12);
    [(_INPBAlarm *)v11 setSleepAlarmAttribute:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id INIntentSlotValueTransformFromAlarms(void *a1)
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

          v8 = INIntentSlotValueTransformFromAlarm(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToAlarms(void *a1)
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

          v8 = INIntentSlotValueTransformToAlarm(*(*(&v12 + 1) + 8 * i));
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

INAlarmSearch *INIntentSlotValueTransformFromAlarmSearch(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v23 = [INAlarmSearch alloc];
    v2 = [v1 hasAlarmReferenceType];
    v3 = [v1 alarmReferenceType];
    if (((v3 < 4) & v2) != 0)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    v22 = v4;
    v21 = [v1 identifier];
    v5 = [v1 time];
    v6 = INIntentSlotValueTransformFromDateTimeRangeValue(v5);
    v7 = [v1 label];
    v8 = INIntentSlotValueTransformFromDataString(v7);
    v9 = [v1 hasAlarmSearchStatus];
    v10 = [v1 alarmSearchStatus];
    if (((v10 - 1 < 4) & v9) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "includeSleepAlarm")}];
    v13 = [v1 hasPeriod];
    v14 = [v1 period];
    if (((v14 - 1 < 8) & v13) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = MEMORY[0x1E696AD98];
    v17 = [v1 isMeridianInferred];

    v18 = [v16 numberWithBool:v17];
    v19 = [(INAlarmSearch *)v23 initWithAlarmReferenceType:v22 identifier:v21 time:v6 label:v8 alarmSearchStatus:v11 includeSleepAlarm:v12 period:v15 isMeridianInferred:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

_INPBAlarmSearch *INIntentSlotValueTransformToAlarmSearch(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBAlarmSearch);
    v3 = [v1 alarmReferenceType] - 1;
    if (v3 >= 4)
    {
      v4 = 0x7FFFFFFFLL;
    }

    else
    {
      v4 = v3;
    }

    [(_INPBAlarmSearch *)v2 setAlarmReferenceType:v4];
    v5 = [v1 identifier];
    [(_INPBAlarmSearch *)v2 setIdentifier:v5];

    v6 = [v1 time];
    v7 = INIntentSlotValueTransformToDateTimeRangeValue(v6);
    [(_INPBAlarmSearch *)v2 setTime:v7];

    v8 = [v1 label];
    v9 = INIntentSlotValueTransformToDataString(v8);
    [(_INPBAlarmSearch *)v2 setLabel:v9];

    v10 = [v1 alarmSearchStatus] - 1;
    if (v10 < 4)
    {
      v11 = (v10 + 1);
    }

    else
    {
      v11 = 0x7FFFFFFFLL;
    }

    [(_INPBAlarmSearch *)v2 setAlarmSearchStatus:v11];
    v12 = [v1 includeSleepAlarm];
    -[_INPBAlarmSearch setIncludeSleepAlarm:](v2, "setIncludeSleepAlarm:", [v12 BOOLValue]);

    v13 = [v1 period];
    if (v13 >= 9)
    {
      v14 = 0x7FFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    [(_INPBAlarmSearch *)v2 setPeriod:v14];
    v15 = [v1 isMeridianInferred];

    -[_INPBAlarmSearch setIsMeridianInferred:](v2, "setIsMeridianInferred:", [v15 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromAlarmSearchs(void *a1)
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

          v8 = INIntentSlotValueTransformFromAlarmSearch(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToAlarmSearchs(void *a1)
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

          v8 = INIntentSlotValueTransformToAlarmSearch(*(*(&v12 + 1) + 8 * i));
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

unint64_t INAlarmPeriodGetBackingType(unint64_t result)
{
  if (result >= 9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INAlarmPeriodGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 8) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INAlarmPeriodGetName(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72880B0[a1 - 1];
  }
}

uint64_t INAlarmPeriodWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"morning"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"afternoon"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"evening"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"night"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"noon"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"midnight"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"today"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"tomorrow"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INAlarmPeriodGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v5 = @"today";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        v5 = @"tomorrow";
      }
    }

    else if (a1 == 5)
    {
      v5 = @"noon";
    }

    else
    {
      v5 = @"midnight";
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"evening";
    }

    else
    {
      v5 = @"night";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"morning";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_19;
    }

    v5 = @"afternoon";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_19:

  return v4;
}

uint64_t _INPBUpdateAlarmIntentReadFrom(void *a1, void *a2)
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
            v21 = objc_alloc_init(_INPBDateTimeRange);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v21, a2))
            {
LABEL_59:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setProposedTime:v21];
            goto LABEL_50;
          case 5:
            v21 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setProposedLabel:v21];
            goto LABEL_50;
          case 0x64:
            v21 = objc_alloc_init(_INPBIntentMetadata);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v21];
            goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_INPBAlarmSearch);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBAlarmSearchReadFrom(v21, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setAlarmSearch:v21];
            goto LABEL_50;
          case 2:
            v21 = objc_alloc_init(_INPBAlarm);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v21, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setAlarm:v21];
LABEL_50:

            goto LABEL_51;
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
                goto LABEL_56;
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

LABEL_56:
            [a1 setOperation:v20];
            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBCreateAlarmIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v37) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v37) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v37 & 0x7F) << v23;
            if ((v37 & 0x80) == 0)
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
          [a1 setRelativeOffsetInMinutes:v29];
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBDateTimeRange);
          v37 = 0;
          v38 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
          {
LABEL_78:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setTime:v14];
          goto LABEL_32;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBDataString);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_78;
            }

            PBReaderRecallMark();
            [a1 setLabel:v14];
            goto LABEL_32;
          case 4:
            if ((v12 & 7) == 2)
            {
              v37 = 0;
              v38 = 0;
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
                  v39 = 0;
                  v20 = [a2 position] + 1;
                  if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
                  {
                    v22 = [a2 data];
                    [v22 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v19 |= (v39 & 0x7F) << v17;
                  if ((v39 & 0x80) == 0)
                  {
                    break;
                  }

                  v17 += 7;
                  v11 = v18++ >= 9;
                  if (v11)
                  {
                    goto LABEL_47;
                  }
                }

                [a2 hasError];
LABEL_47:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              while (1)
              {
                LOBYTE(v37) = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v37 & 0x7F) << v30;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  goto LABEL_74;
                }
              }

              [a2 hasError];
LABEL_74:
              PBRepeatedInt32Add();
            }

            goto LABEL_75;
          case 0x64:
            v14 = objc_alloc_init(_INPBIntentMetadata);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
            {
              goto LABEL_78;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v14];
LABEL_32:

            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSnoozeAlarmIntentReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 100)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBAlarm);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addAlarms:v13];
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

uint64_t INChangeAlarmStatusOperationGetBackingType(uint64_t result)
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

uint64_t INChangeAlarmStatusOperationGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INChangeAlarmStatusOperationGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7288130[a1 - 1];
  }
}

uint64_t INChangeAlarmStatusOperationWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"enable"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"disable"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"dismiss"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INChangeAlarmStatusOperationGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"dismiss";
      goto LABEL_7;
    case 2:
      v4 = @"disable";
      goto LABEL_7;
    case 1:
      v4 = @"enable";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBUpdateAlarmIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBAlarm);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addConflictAlarms:v13];
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

    v13 = objc_alloc_init(_INPBAlarm);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setUpdatedAlarm:v13];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBChangeAlarmStatusIntentReadFrom(void *a1, void *a2)
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
        if (v13 == 100)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
LABEL_51:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_43;
        }

        if (v13 == 3)
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
              goto LABEL_47;
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

LABEL_47:
          [a1 setOperation:v21];
          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBAlarmSearch);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBAlarmSearchReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setAlarmSearch:v14];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBAlarm);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addAlarms:v14];
          }

LABEL_43:

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDeleteAlarmIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 100)
      {
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {
LABEL_35:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
        goto LABEL_30;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBAlarmSearch);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBAlarmSearchReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

        PBReaderRecallMark();
        [a1 setAlarmSearch:v14];
LABEL_30:

        goto LABEL_32;
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

    v14 = objc_alloc_init(_INPBAlarm);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v14, a2))
    {
      goto LABEL_35;
    }

    PBReaderRecallMark();
    if (v14)
    {
      [a1 addAlarms:v14];
    }

    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INCreateAlarmIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7288160[a1];
  }
}

__CFString *INSnoozeAlarmIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7288190[a1];
  }
}

uint64_t INUpdateAlarmOperationGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t INUpdateAlarmOperationGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 2);
  if (a2 == 1)
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

__CFString *INUpdateAlarmOperationGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"updateTime";
  }

  if (a1 == 1)
  {
    return @"updateLabel";
  }

  else
  {
    return v1;
  }
}

uint64_t INUpdateAlarmOperationWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"updateLabel"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"updateTime"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INUpdateAlarmOperationGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"update time";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"update label";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t INAlarmReferenceTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INAlarmReferenceTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 4) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INAlarmReferenceTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72881C0[a1 - 1];
  }
}

uint64_t INAlarmReferenceTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"default"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"this"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"next"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"all"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INAlarmReferenceTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"next";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_11;
      }

      v5 = @"all";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"default";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    v5 = @"this";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_11:

  return v4;
}

uint64_t _INPBCreateAlarmIntentResponseReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_INPBAlarm);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCreatedAlarm:v20];
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
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setSuccessCode:v19];
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

uint64_t _INPBSnoozeAlarmIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBChangeAlarmStatusIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBAlarm);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addModifiedAlarms:v13];
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

uint64_t _INPBAlarmReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = off_1E727B000;
    v6 = off_1E727B000;
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
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v23 = PBReaderReadString();
            [a1 setIdentifier:v23];
LABEL_73:

            goto LABEL_91;
          case 2:
            v23 = objc_alloc_init(v5[480]);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v23, a2))
            {
LABEL_94:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDateTime:v23];
            goto LABEL_73;
          case 3:
            v23 = objc_alloc_init(v6[477]);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v23, a2))
            {
              goto LABEL_94;
            }

            PBReaderRecallMark();
            [a1 setLabel:v23];
            goto LABEL_73;
        }
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
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

            v32 = v6;
            v33 = v5;
            while (1)
            {
              v34 = [a2 position];
              if (v34 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v35 = 0;
              v36 = 0;
              v37 = 0;
              while (1)
              {
                v50 = 0;
                v38 = [a2 position] + 1;
                if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
                {
                  v40 = [a2 data];
                  [v40 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v37 |= (v50 & 0x7F) << v35;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                v13 = v36++ >= 9;
                if (v13)
                {
                  goto LABEL_69;
                }
              }

              [a2 hasError];
LABEL_69:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v32 = v6;
            v33 = v5;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            while (1)
            {
              LOBYTE(v48) = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v48 & 0x7F) << v41;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v13 = v42++ >= 9;
              if (v13)
              {
                goto LABEL_89;
              }
            }

            [a2 hasError];
LABEL_89:
            PBRepeatedInt32Add();
          }

          v5 = v33;
          v6 = v32;
          goto LABEL_91;
        }

        if (v15 == 7)
        {
          v23 = objc_alloc_init(_INPBSleepAlarmAttribute);
          v48 = 0;
          v49 = 0;
          if (!PBReaderPlaceMark() || !_INPBSleepAlarmAttributeReadFrom(v23, a2))
          {
            goto LABEL_94;
          }

          PBReaderRecallMark();
          [a1 setSleepAlarmAttribute:v23];
          goto LABEL_73;
        }
      }

      else
      {
        if (v15 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v48 & 0x7F) << v24;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              v30 = 0;
              goto LABEL_75;
            }
          }

          v30 = (v26 != 0) & ~[a2 hasError];
LABEL_75:
          [a1 setEnabled:v30];
          goto LABEL_91;
        }

        if (v15 == 5)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
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
            v13 = v17++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_77;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_77:
          [a1 setFiring:v22];
          goto LABEL_91;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_91:
      v47 = [a2 position];
    }

    while (v47 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INChangeAlarmStatusIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7288238[a1];
  }
}

__CFString *INUpdateAlarmIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7288268[a1];
  }
}

uint64_t _INPBDeleteAlarmIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t INCreateAlarmSuccessCodeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INCreateAlarmSuccessCodeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 3) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INCreateAlarmSuccessCodeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7288298[a1 - 1];
  }
}

uint64_t INCreateAlarmSuccessCodeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"alarmCreated"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"duplicateAlarmExists"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"duplicateAlarmEnabled"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCreateAlarmSuccessCodeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"duplicate alarm enabled";
      goto LABEL_7;
    case 2:
      v4 = @"duplicate alarm exists";
      goto LABEL_7;
    case 1:
      v4 = @"alarm created";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBSleepAlarmAttributeReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_INPBDateTime);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setBedtime:v20];
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
        [a1 setOverride:v19];
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

void sub_18EDAC444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLNMetadataProviderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __LinkServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7288338;
    v7 = 0;
    LinkServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (LinkServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LNMetadataProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getLNMetadataProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __LinkServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

INSleepAlarmAttribute *INIntentSlotValueTransformFromSleepAlarmAttribute(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INSleepAlarmAttribute alloc];
    v3 = [v1 bedtime];
    v4 = INIntentSlotValueTransformFromDateTime(v3);
    v5 = MEMORY[0x1E696AD98];
    v6 = [v1 override];

    v7 = [v5 numberWithBool:v6];
    v8 = [(INSleepAlarmAttribute *)v2 initWithBedtime:v4 override:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBSleepAlarmAttribute *INIntentSlotValueTransformToSleepAlarmAttribute(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBSleepAlarmAttribute);
    v3 = [v1 bedtime];
    v4 = INIntentSlotValueTransformToDateTime(v3);
    [(_INPBSleepAlarmAttribute *)v2 setBedtime:v4];

    v5 = [v1 override];

    -[_INPBSleepAlarmAttribute setOverride:](v2, "setOverride:", [v5 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromSleepAlarmAttributes(void *a1)
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

          v8 = INIntentSlotValueTransformFromSleepAlarmAttribute(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToSleepAlarmAttributes(void *a1)
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

          v8 = INIntentSlotValueTransformToSleepAlarmAttribute(*(*(&v12 + 1) + 8 * i));
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

void INAlarmRepeatScheduleOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  if (a1)
  {
    (*(v3 + 2))(v3, 0);
    v3 = v4;
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  (*(v3 + 2))(v4, 1);
  v3 = v4;
  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  (*(v3 + 2))(v4, 2);
  v3 = v4;
  if ((a1 & 8) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  (*(v3 + 2))(v4, 3);
  v3 = v4;
  if ((a1 & 0x10) == 0)
  {
LABEL_8:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    (*(v3 + 2))(v4, 5);
    v3 = v4;
    if ((a1 & 0x40) == 0)
    {
LABEL_10:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  (*(v3 + 2))(v4, 4);
  v3 = v4;
  if ((a1 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((a1 & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_21:
  (*(v3 + 2))(v4, 6);
  v3 = v4;
  if ((a1 & 0x80) != 0)
  {
LABEL_11:
    (*(v3 + 2))(v4, 7);
    v3 = v4;
  }

LABEL_12:
}

uint64_t INAlarmRepeatScheduleOptionsContainsBackingType(unint64_t a1, int a2)
{
  if (a1)
  {
    v2 = (a1 >> 6) & 1;
    v3 = (a1 >> 7) & 1;
    if (a2 != 7)
    {
      LOBYTE(v3) = 0;
    }

    if (a2 != 6)
    {
      LOBYTE(v2) = v3;
    }

    v4 = (a1 >> 4) & 1;
    v5 = (a1 >> 5) & 1;
    if (a2 != 5)
    {
      LOBYTE(v5) = 0;
    }

    if (a2 != 4)
    {
      LOBYTE(v4) = v5;
    }

    if (a2 <= 5)
    {
      LOBYTE(v2) = v4;
    }

    v6 = (a1 >> 2) & 1;
    v7 = (a1 >> 3) & 1;
    if (a2 != 3)
    {
      LOBYTE(v7) = 0;
    }

    if (a2 != 2)
    {
      LOBYTE(v6) = v7;
    }

    v8 = (a1 >> 1) & 1;
    if (a2 != 1)
    {
      LOBYTE(v8) = 0;
    }

    if (!a2)
    {
      LOBYTE(v8) = a1;
    }

    if (a2 <= 1)
    {
      LOBYTE(v6) = v8;
    }

    if (a2 <= 3)
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

uint64_t *INAlarmRepeatScheduleOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result | 0x40;
    v4 = *result | 0x80;
    if (a2 != 7)
    {
      v4 = *result;
    }

    if (a2 != 6)
    {
      v3 = v4;
    }

    v5 = v2 | 0x10;
    v6 = v2 | 0x20;
    if (a2 != 5)
    {
      v6 = *result;
    }

    if (a2 != 4)
    {
      v5 = v6;
    }

    if (a2 <= 5)
    {
      v3 = v5;
    }

    v7 = v2 | 4;
    v8 = v2 | 8;
    if (a2 != 3)
    {
      v8 = *result;
    }

    if (a2 != 2)
    {
      v7 = v8;
    }

    v9 = v2 | 1;
    if (a2 == 1)
    {
      v2 |= 2uLL;
    }

    if (!a2)
    {
      v2 = v9;
    }

    if (a2 > 1)
    {
      v2 = v7;
    }

    if (a2 > 3)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INAlarmRepeatScheduleOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result & 0xFFFFFFFFFFFFFFBFLL;
    v4 = *result & 0xFFFFFFFFFFFFFF7FLL;
    if (a2 != 7)
    {
      v4 = *result;
    }

    if (a2 != 6)
    {
      v3 = v4;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFEFLL;
    v6 = v2 & 0xFFFFFFFFFFFFFFDFLL;
    if (a2 != 5)
    {
      v6 = *result;
    }

    if (a2 != 4)
    {
      v5 = v6;
    }

    if (a2 <= 5)
    {
      v3 = v5;
    }

    v7 = v2 & 0xFFFFFFFFFFFFFFFBLL;
    v8 = v2 & 0xFFFFFFFFFFFFFFF7;
    if (a2 != 3)
    {
      v8 = *result;
    }

    if (a2 != 2)
    {
      v7 = v8;
    }

    v9 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (a2 == 1)
    {
      v2 &= ~2uLL;
    }

    if (!a2)
    {
      v2 = v9;
    }

    if (a2 > 1)
    {
      v2 = v7;
    }

    if (a2 > 3)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INAlarmRepeatScheduleOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"none"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"monday"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:@"tuesday"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:@"wednesday"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v3 addObject:@"thursday"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v3 addObject:@"friday"];
    if ((v1 & 0x40) == 0)
    {
LABEL_9:
      if ((v1 & 0x80) == 0)
      {
LABEL_11:
        v4 = [v3 copy];

        goto LABEL_13;
      }

LABEL_10:
      [v3 addObject:@"sunday"];
      goto LABEL_11;
    }

LABEL_22:
    [v3 addObject:@"saturday"];
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_13:

  return v4;
}

uint64_t INAlarmRepeatScheduleOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v11;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v3 |= [v6 isEqualToString:@"none"];
        if ([v6 isEqualToString:@"monday"])
        {
          v3 |= 2uLL;
        }

        if ([v6 isEqualToString:@"tuesday"])
        {
          v3 |= 4uLL;
        }

        if ([v6 isEqualToString:@"wednesday"])
        {
          v3 |= 8uLL;
        }

        if ([v6 isEqualToString:@"thursday"])
        {
          v3 |= 0x10uLL;
        }

        if ([v6 isEqualToString:@"friday"])
        {
          v3 |= 0x20uLL;
        }

        if ([v6 isEqualToString:@"saturday"])
        {
          v3 |= 0x40uLL;
        }

        if ([v6 isEqualToString:@"sunday"])
        {
          v3 |= 0x80uLL;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

id INAlarmRepeatScheduleOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"none", @"none", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"monday", @"monday", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = INLocalizedStringWithLocalizer(@"tuesday", @"tuesday", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = INLocalizedStringWithLocalizer(@"wednesday", @"wednesday", v3);
    [v4 addObject:v11];

    if ((a1 & 0x10) == 0)
    {
LABEL_7:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v12 = INLocalizedStringWithLocalizer(@"thursday", @"thursday", v3);
    [v4 addObject:v12];

    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v13 = INLocalizedStringWithLocalizer(@"friday", @"friday", v3);
    [v4 addObject:v13];

    if ((a1 & 0x40) == 0)
    {
LABEL_9:
      if ((a1 & 0x80) == 0)
      {
LABEL_11:
        v6 = [v4 copy];

        goto LABEL_13;
      }

LABEL_10:
      v5 = INLocalizedStringWithLocalizer(@"sunday", @"sunday", v3);
      [v4 addObject:v5];

      goto LABEL_11;
    }

LABEL_22:
    v14 = INLocalizedStringWithLocalizer(@"saturday", @"saturday", v3);
    [v4 addObject:v14];

    if ((a1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_13:

  return v6;
}

uint64_t INAlarmSearchStatusGetBackingType(uint64_t result)
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

uint64_t INAlarmSearchStatusGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INAlarmSearchStatusGetName(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7288350[a1 - 1];
  }
}

uint64_t INAlarmSearchStatusWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"enabled"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"disabled"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"firing"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"snoozed"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INAlarmSearchStatusGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"firing";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_11;
      }

      v5 = @"snoozed";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"enabled";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    v5 = @"disabled";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_11:

  return v4;
}

uint64_t _INPBSearchAlarmIntentReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_INPBAlarm);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v21, a2))
          {
LABEL_51:

            return 0;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addAlarms:v21];
          }

          goto LABEL_43;
        }

        if (v13 == 100)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
          goto LABEL_43;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBAlarmSearch);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBAlarmSearchReadFrom(v21, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setAlarmSearch:v21];
LABEL_43:

          goto LABEL_48;
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
              goto LABEL_47;
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

LABEL_47:
          [a1 setAlarmSearchType:v20];
          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchAlarmIntentResponseReadFrom(uint64_t a1, void *a2)
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

__CFString *INSearchAlarmIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7288398[a1];
  }
}

uint64_t INAlarmSearchTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INAlarmSearchTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 5) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INAlarmSearchTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72883C8[a1 - 1];
  }
}

uint64_t INAlarmSearchTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"find"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"whenIs"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"howLongUntil"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"read"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"howMany"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INAlarmSearchTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"find";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"when is";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"how long until";
        break;
      case 4:
        v5 = @"read";
        break;
      case 5:
        v5 = @"how many";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

INBoatReservation *INIntentSlotValueTransformFromBoatReservation(INBoatReservation *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [(INBoatReservation *)v2 reservation];
    v4 = [INBoatReservation alloc];
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
    v10 = [(INBoatReservation *)v2 reservedSeat];
    v11 = INIntentSlotValueTransformFromSeat(v10);
    v12 = [(INBoatReservation *)v2 boatTrip];

    v13 = INIntentSlotValueTransformFromBoatTrip(v12);
    v17 = [(INBoatReservation *)v4 initWithItemReference:v24 reservationNumber:v21 bookingTime:v19 reservationStatus:v16 reservationHolderName:v15 actions:v8 URL:v9 reservedSeat:v11 boatTrip:v13];

    a1 = v17;
    v1 = vars8;
  }

  return a1;
}

_INPBBoatReservation *INIntentSlotValueTransformToBoatReservation(void *a1)
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

    v15 = objc_alloc_init(_INPBBoatReservation);
    [(_INPBBoatReservation *)v15 setReservation:v2];
    v16 = [v1 reservedSeat];
    v17 = INIntentSlotValueTransformToSeat(v16);
    [(_INPBBoatReservation *)v15 setReservedSeat:v17];

    v18 = [v1 boatTrip];

    v19 = INIntentSlotValueTransformToBoatTrip(v18);
    [(_INPBBoatReservation *)v15 setBoatTrip:v19];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromBoatReservations(void *a1)
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

          v8 = INIntentSlotValueTransformFromBoatReservation(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToBoatReservations(void *a1)
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

          v8 = INIntentSlotValueTransformToBoatReservation(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBBusReservationReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBReservation);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBReservationReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setReservation:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = objc_alloc_init(_INPBBusTrip);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBBusTripReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setBusTrip:v14];
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

    v14 = objc_alloc_init(_INPBSeat);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBSeatReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setReservedSeat:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBBoatReservationReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBReservation);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBReservationReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setReservation:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = objc_alloc_init(_INPBBoatTrip);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBBoatTripReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setBoatTrip:v14];
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

    v14 = objc_alloc_init(_INPBSeat);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBSeatReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setReservedSeat:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

INBusReservation *INIntentSlotValueTransformFromBusReservation(INBusReservation *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [(INBusReservation *)v2 reservation];
    v4 = [INBusReservation alloc];
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
    v10 = [(INBusReservation *)v2 reservedSeat];
    v11 = INIntentSlotValueTransformFromSeat(v10);
    v12 = [(INBusReservation *)v2 busTrip];

    v13 = INIntentSlotValueTransformFromBusTrip(v12);
    v17 = [(INBusReservation *)v4 initWithItemReference:v24 reservationNumber:v21 bookingTime:v19 reservationStatus:v16 reservationHolderName:v15 actions:v8 URL:v9 reservedSeat:v11 busTrip:v13];

    a1 = v17;
    v1 = vars8;
  }

  return a1;
}

_INPBBusReservation *INIntentSlotValueTransformToBusReservation(void *a1)
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

    v15 = objc_alloc_init(_INPBBusReservation);
    [(_INPBBusReservation *)v15 setReservation:v2];
    v16 = [v1 reservedSeat];
    v17 = INIntentSlotValueTransformToSeat(v16);
    [(_INPBBusReservation *)v15 setReservedSeat:v17];

    v18 = [v1 busTrip];

    v19 = INIntentSlotValueTransformToBusTrip(v18);
    [(_INPBBusReservation *)v15 setBusTrip:v19];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromBusReservations(void *a1)
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

          v8 = INIntentSlotValueTransformFromBusReservation(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToBusReservations(void *a1)
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

          v8 = INIntentSlotValueTransformToBusReservation(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBSkipAnnouncementIntentReadFrom(void *a1, void *a2)
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

uint64_t INReadActionTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t INReadActionTypeGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 2);
  if (a2 == 1)
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

__CFString *INReadActionTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"repeat";
  }

  if (a1 == 1)
  {
    return @"read";
  }

  else
  {
    return v1;
  }
}

uint64_t INReadActionTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"read"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"repeat"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}