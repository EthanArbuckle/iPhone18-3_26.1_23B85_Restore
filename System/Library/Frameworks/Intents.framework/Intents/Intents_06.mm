uint64_t _INPBDurationReadFrom(void *a1, void *a2)
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

uint64_t _INPBSetTimerAttributeIntentResponseReadFrom(void *a1, void *a2)
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
        [a1 setUpdatedTimer:v13];
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

uint64_t _INPBGetFileInformationIntentResponseReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(_INPBString);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

        PBReaderRecallMark();
        [a1 setEntityName:v21];
LABEL_35:

        goto LABEL_40;
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
            goto LABEL_39;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_39:
        [a1 setSuccess:v20];
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

    v21 = objc_alloc_init(_INPBFileProperty);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBFilePropertyReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setProperty:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDeleteHealthSampleIntentReadFrom(void *a1, void *a2)
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
        [a1 setIntentMetadata:v13];
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
    if (v13)
    {
      [a1 addSampleUuids:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INSetDefrosterSettingsInCarIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727FDD0[a1];
  }
}

uint64_t _INPBPlayAudioMessageIntentReadFrom(void *a1, void *a2)
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

    v13 = PBReaderReadString();
    [a1 setMessageIdentifier:v13];
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSpatialEventTriggerReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v28 = objc_alloc_init(_INPBLocationValue);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v28, a2))
          {
LABEL_61:

            return 0;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addSuggestedValues:v28];
          }

          goto LABEL_49;
        }

        if (v13 == 4)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v31 & 0x7F) << v21;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_57;
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

LABEL_57:
          [a1 setMobileSpace:v27];
          goto LABEL_58;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_INPBLocationValue);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v28, a2))
          {
            goto LABEL_61;
          }

          PBReaderRecallMark();
          [a1 setLocation:v28];
LABEL_49:

          goto LABEL_58;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
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
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_53;
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

LABEL_53:
          [a1 setEvent:v20];
          goto LABEL_58;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_58:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBCancelWorkoutIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBTemperatureReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBTemperatureValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBTemperatureValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
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

uint64_t INRadioTypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 5)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INRadioTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INRadioTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727FE08[a1 - 1];
  }
}

uint64_t INRadioTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AM"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"FM"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"HD"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"satellite"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"DAB"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRadioTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"AM";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"FM";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"HD";
        break;
      case 4:
        v5 = @"satellite";
        break;
      case 5:
        v5 = @"DAB";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

uint64_t INEnumerateObjectsInCodable(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 _objectDescription];
  v6 = [v5 attributes];
  v7 = [v6 allValues];
  v8 = _INEnumerateObjectAttributes(v4, v7, v3);

  return v8;
}

uint64_t _INEnumerateObjectAttributes(void *a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v41 = a1;
  v5 = a2;
  v6 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = ___INEnumerateObjectAttributes_block_invoke;
  v59[3] = &unk_1E727FE38;
  v46 = v6;
  v60 = v46;
  v61 = &v62;
  v45 = MEMORY[0x193AD7780](v59);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v7)
  {
    v42 = *v56;
    do
    {
      v43 = v7;
      for (i = 0; i != v43; ++i)
      {
        if (*v56 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v55 + 1) + 8 * i);
        v9 = [v8 propertyName];
        v10 = [v9 hasPrefix:@"_"];

        if ((v10 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v8 propertyName];
              [v41 valueForPropertyNamed:v11];
            }

            else
            {
              v11 = [v8 propertyName];
              [v41 valueForKey:v11];
            }
            v13 = ;

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v13 = v14;
              v15 = [v13 countByEnumeratingWithState:&v51 objects:v67 count:16];
              if (v15)
              {
                v16 = *v52;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v52 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v51 + 1) + 8 * j);
                    v19 = v8;
                    if (v8)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v20 = v19;
                      }

                      else
                      {
                        v20 = 0;
                      }
                    }

                    else
                    {
                      v20 = 0;
                    }

                    v21 = v20;

                    v22 = [v21 codableDescription];
                    v23 = [v22 attributes];
                    v24 = [v23 allValues];
                    v25 = _INEnumerateObjectAttributes(v18, v24, v46);

                    if (v25)
                    {
                      *(v63 + 24) = 1;
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v51 objects:v67 count:16];
                }

                while (v15);
              }

              goto LABEL_29;
            }

            if (v13)
            {
              v26 = v8;
              if (v26)
              {
                objc_opt_class();
                v27 = (objc_opt_isKindOfClass() & 1) != 0 ? v26 : 0;
              }

              else
              {
                v27 = 0;
              }

              v32 = v27;

              v33 = [v32 codableDescription];
              v34 = [v33 attributes];
              v35 = [v34 allValues];
              v36 = _INEnumerateObjectAttributes(v13, v35, v46);

              if (v36)
              {
                *(v63 + 24) = 1;
              }
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v8 propertyName];
              [v41 valueForPropertyNamed:v12];
            }

            else
            {
              v12 = [v8 propertyName];
              [v41 valueForKey:v12];
            }
            v13 = ;

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = v13;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v13 = v28;
              v29 = [v13 countByEnumeratingWithState:&v47 objects:v66 count:16];
              if (v29)
              {
                v30 = *v48;
                do
                {
                  for (k = 0; k != v29; ++k)
                  {
                    if (*v48 != v30)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v45[2](v45, *(*(&v47 + 1) + 8 * k));
                  }

                  v29 = [v13 countByEnumeratingWithState:&v47 objects:v66 count:16];
                }

                while (v29);
              }

LABEL_29:
            }

            else
            {
              (v45)[2](v45, v13);
            }
          }

          continue;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v7);
  }

  v37 = *(v63 + 24);
  _Block_object_dispose(&v62, 8);

  v38 = *MEMORY[0x1E69E9840];
  return v37 & 1;
}

id getCNContactPhoneNumbersKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCNContactPhoneNumbersKeySymbolLoc_ptr_33534;
  v8 = getCNContactPhoneNumbersKeySymbolLoc_ptr_33534;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_33534)
  {
    v1 = ContactsLibrary_33522();
    v6[3] = dlsym(v1, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_33534 = v6[3];
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

id getCNContactEmailAddressesKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCNContactEmailAddressesKeySymbolLoc_ptr_33531;
  v8 = getCNContactEmailAddressesKeySymbolLoc_ptr_33531;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_33531)
  {
    v1 = ContactsLibrary_33522();
    v6[3] = dlsym(v1, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_33531 = v6[3];
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

id getCNContactIdentifierKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCNContactIdentifierKeySymbolLoc_ptr;
  v8 = getCNContactIdentifierKeySymbolLoc_ptr;
  if (!getCNContactIdentifierKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary_33522();
    v6[3] = dlsym(v1, "CNContactIdentifierKey");
    getCNContactIdentifierKeySymbolLoc_ptr = v6[3];
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

void *__getCNContactImageDataAvailableKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactImageDataAvailableKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactImageDataAvailableKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary_33522()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_33527)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_33528;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E727FE58;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_33527 = _sl_dlopen();
    v1 = v4[0];
    v0 = ContactsLibraryCore_frameworkLibrary_33527;
    if (ContactsLibraryCore_frameworkLibrary_33527)
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

  v0 = ContactsLibraryCore_frameworkLibrary_33527;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *__getCNContactImageDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactImageDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactImageDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_33528(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_33527 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCNContactIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke_33532(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr_33531 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke_33535(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr_33534 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18EAD16C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactNamePrefixKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactNamePrefixKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNamePrefixKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactMiddleNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactMiddleNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactMiddleNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactNameSuffixKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactNameSuffixKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNameSuffixKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactNicknameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactNicknameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNicknameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactPhoneticGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticMiddleNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactPhoneticMiddleNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticMiddleNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_33522();
  result = dlsym(v2, "CNContactPhoneticFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _INPBSetDefrosterSettingsInCarIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
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
              goto LABEL_54;
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

LABEL_54:
          [a1 setDefroster:v28];
          goto LABEL_55;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(_INPBDataString);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
          {
LABEL_58:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setCarName:v21];
          goto LABEL_39;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
            goto LABEL_58;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
LABEL_39:

          goto LABEL_55;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
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
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_50:
          [a1 setEnable:v20];
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

uint64_t _INPBRefinementItemReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBSelectionItem);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBSelectionItemReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setItem:v13];
        goto LABEL_23;
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

    v13 = PBReaderReadString();
    [a1 setSubKeyPath:v13];
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

INBalanceAmount *INIntentSlotValueTransformFromBalanceAmountValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 customAmount];
    v4 = [v3 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v4);
    v5 = [v2 currencyAmount];
    v6 = [v5 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v6);

    if ([v2 hasCurrencyAmount])
    {
      v7 = [v2 currencyAmount];
      v8 = [INBalanceAmount alloc];
      v9 = [v7 amount];
      v10 = INIntentSlotValueTransformFromDecimalNumberValue(v9);
      v11 = [v7 currencyCode];
      v12 = [(INBalanceAmount *)v8 initWithAmount:v10 currencyCode:v11];
    }

    else
    {
      v13 = [INBalanceAmount alloc];
      v7 = [v2 customAmount];
      v9 = INIntentSlotValueTransformFromDecimalNumberValue(v7);
      v14 = [v2 hasType];
      v15 = [v2 type];
      if (((v15 - 1 < 3) & v14) != 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v12 = [(INBalanceAmount *)v13 initWithAmount:v9 balanceType:v16];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

_INPBBalanceAmountValue *INIntentSlotValueTransformToBalanceAmountValue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBBalanceAmountValue);
    v3 = [v1 balanceType] - 1;
    if (v3 < 3)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 0x7FFFFFFFLL;
    }

    [(_INPBBalanceAmountValue *)v2 setType:v4];
    if ([v1 balanceType] == 1 && (objc_msgSend(v1, "amount"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v1, "currencyCode"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [INCurrencyAmount alloc];
      v9 = [v1 amount];
      v10 = [v1 currencyCode];
      v11 = [(INCurrencyAmount *)v8 initWithAmount:v9 currencyCode:v10];

      v12 = INIntentSlotValueTransformToCurrencyAmountValue(v11);
      [(_INPBBalanceAmountValue *)v2 setCurrencyAmount:v12];
    }

    else
    {
      v11 = [v1 amount];
      v12 = INIntentSlotValueTransformToDecimalNumberValue(v11);
      [(_INPBBalanceAmountValue *)v2 setCustomAmount:v12];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBBalanceAmountValue *INIntentSlotValueRedactedBalanceAmountValueFromBalanceAmountValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 currencyAmount];
  v8 = [v7 valueMetadata];
  v9 = INPrivacyEntitlementOptionsForValueMetadata(v8);

  v10 = [v5 customAmount];
  v11 = [v10 valueMetadata];
  v12 = INPrivacyEntitlementOptionsForValueMetadata(v11) | v9;

  if ((v12 & a2) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_alloc_init(_INPBBalanceAmountValue);
    v14 = [v5 currencyAmount];
    v15 = INIntentSlotValueRedactedCurrencyAmountValueFromCurrencyAmountValue(v14, a2, v6);
    [(_INPBBalanceAmountValue *)v13 setCurrencyAmount:v15];

    v16 = [v5 customAmount];
    v17 = INIntentSlotValueRedactedValueFromDecimalNumberValue(v16, a2);
    [(_INPBBalanceAmountValue *)v13 setCustomAmount:v17];

    -[_INPBBalanceAmountValue setType:](v13, "setType:", [v5 type]);
  }

  return v13;
}

__CFString *INSetSeatSettingsInCarIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727FE88[a1];
  }
}

id INIntentSlotValueTransformFromDateTimeRanges(void *a1)
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

        v8 = INIntentSlotValueTransformFromDateTimeRange(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromDateTimeRangeValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromDateTimeRangeValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToDateTimeRanges(void *a1)
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

        v8 = INIntentSlotValueTransformToDateTimeRange(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToDateTimeRangeValues(void *a1)
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

        v8 = INIntentSlotValueTransformToDateTimeRangeValue(*(*(&v12 + 1) + 8 * i));
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

_INPBDateTimeRange *INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(_INPBDateTimeRange);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v3 values];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = *v16;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 valueMetadata];
        v12 = INPrivacyEntitlementOptionsForValueMetadata(v11);

        if ((v12 & a2) == 0)
        {
          if (!v10)
          {
            continue;
          }

          [(_INPBDateTimeRange *)v4 addValue:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_13:

        goto LABEL_15;
      }
    }
  }

  v4 = 0;
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

id INIntentSlotValueRedactedDateTimeRangesFromDateTimeRanges(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(*(*(&v17 + 1) + 8 * i), a2);
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

uint64_t _INPBUpdateEventIntentResponseReadFrom(void *a1, void *a2)
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
          [a1 addConflictingEventIdentifiers:v21];
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
        [a1 setConfirmationReason:v20];
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

    v21 = objc_alloc_init(_INPBCalendarEvent);
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBCalendarEventReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setUpdatedEvent:v21];
    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBFilePropertyReadFrom(void *a1, void *a2)
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
            goto LABEL_46;
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

LABEL_46:
        [a1 setName:v28];
      }

      else if (v13 == 3)
      {
        v21 = objc_alloc_init(_INPBFilePropertyValue);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBFilePropertyValueReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValue:v21];
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
        [a1 setQualifier:v20];
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

uint64_t INCallDestinationTypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 5)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INCallDestinationTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INCallDestinationTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727FF40[a1 - 1];
  }
}

uint64_t INCallDestinationTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"normal"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"emergency"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"voicemail"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"redial"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"callBack"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCallDestinationTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"normal";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"emergency";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"voicemail";
        break;
      case 4:
        v5 = @"redial";
        break;
      case 5:
        v5 = @"call back";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

id INIntentSlotValueTransformFromUUIDValue(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AFB0];
    v2 = a1;
    v3 = [v1 alloc];
    v4 = [v2 uuidString];

    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBUUIDValue *INIntentSlotValueTransformToUUIDValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBUUIDValue);
    v3 = [v1 UUIDString];

    [(_INPBUUIDValue *)v2 setUuidString:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueRedactedValueFromUUIDValue(void *a1, uint64_t a2)
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
    v6 = v3;
  }

  return v6;
}

__CFString *INCreateEventIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727FF68[a1];
  }
}

__CFString *INPersonRelationshipGetFacadeObject(int a1, unsigned int a2)
{
  result = 0;
  if (a2 <= 0xC)
  {
    if (a1)
    {
      return off_1E7280000[a2];
    }
  }

  return result;
}

uint64_t INPersonRelationshipGetBackingType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"com.apple.intents.PersonRelationship.Father"])
    {
      v3 = 0;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Mother"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Parent"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Brother"])
    {
      v3 = 3;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Sister"])
    {
      v3 = 4;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Child"])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Friend"])
    {
      v3 = 6;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Spouse"])
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Partner"])
    {
      v3 = 8;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Assistant"])
    {
      v3 = 9;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Manager"])
    {
      v3 = 10;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Son"])
    {
      v3 = 11;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonRelationship.Daughter"])
    {
      v3 = 12;
    }

    else
    {
      v3 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFLL;
  }

  return v3;
}

__CFString *INPersonRelationshipValueAsString(__CFString *a1)
{
  if (a1)
  {
    BackingType = INPersonRelationshipGetBackingType(a1);
    if (BackingType >= 0xD)
    {
      a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", BackingType];
    }

    else
    {
      a1 = off_1E7280068[BackingType];
    }

    v1 = vars8;
  }

  return a1;
}

__CFString *INGetVisualCodeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E72800D0[a1];
  }
}

id INIntentSlotValueTransformFromDataValue(void *a1)
{
  v1 = a1;
  v2 = [v1 valueMetadata];
  INPrivacyEntitlementValidateValueMetadata(v2);

  v3 = [v1 value];
  v4 = [v3 copy];

  return v4;
}

id INIntentSlotValueTransformFromDataValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromDataValue(*(*(&v12 + 1) + 8 * i));
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

_INPBDataValue *INIntentSlotValueTransformToDataValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBDataValue);
    [(_INPBDataValue *)v2 setValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformToDataValues(void *a1)
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

        v8 = INIntentSlotValueTransformToDataValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromURLValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [v1 absoluteString];
    v5 = [v3 URLWithString:v4];

    if ([v5 isFileURL] && objc_msgSend(v2, "hasScope"))
    {
      MEMORY[0x193AD70B0](v5, [v2 scope]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBURLValue *INIntentSlotValueTransformToURLValue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBURLValue);
    v3 = [v1 absoluteString];
    [(_INPBURLValue *)v2 setAbsoluteString:v3];

    if ([v1 isFileURL])
    {
      v4 = MEMORY[0x193AD70C0](v1);
      [(_INPBURLValue *)v2 setScope:v4];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromURLValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromURLValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToURLValues(void *a1)
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

        v8 = INIntentSlotValueTransformToURLValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueRedactedValueFromURLValue(void *a1, uint64_t a2)
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
    v6 = v3;
  }

  return v6;
}

uint64_t INHomeEntityTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return dword_18EE5E888[a1 - 1];
  }
}

uint64_t INHomeEntityTypeGetFacadeType(int a1, unsigned int a2)
{
  result = 0;
  if (a2 <= 6)
  {
    if (a1)
    {
      return qword_18EE5E8B0[a2];
    }
  }

  return result;
}

__CFString *INHomeEntityTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7280110[a1 - 1];
  }
}

uint64_t INHomeEntityTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"home"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"zone"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"room"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"group"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"scene"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"trigger"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"device"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"serviceGroup"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"accessory"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"service"])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeEntityTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v5 = @"trigger";
      }

      else
      {
        v5 = @"device";
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v5 = @"service group";
          break;
        case 9:
          v5 = @"accessory";
          break;
        case 10:
          v5 = @"service";
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"home";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_23;
      }

      v5 = @"zone";
    }
  }

  else if (a1 == 3)
  {
    v5 = @"room";
  }

  else if (a1 == 4)
  {
    v5 = @"group";
  }

  else
  {
    v5 = @"scene";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_23:

  return v4;
}

uint64_t _INPBStartVideoCallIntentResponseReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 1000)
        {
          v14 = objc_alloc_init(_INPBCallMetrics);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBCallMetricsReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setMetrics:v14];
          goto LABEL_39;
        }

        if (v13 == 3)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_43;
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

LABEL_43:
          [a1 setAudioRoute:v21];
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setStatus:v14];
LABEL_39:

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTargetContacts:v14];
          }

          goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBConflictingParameterReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBSelectionItem);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBSelectionItemReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addAlternateItems:v13];
        }

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
    [a1 setKeyPath:v13];
LABEL_24:

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBUUIDValueReadFrom(void *a1, void *a2)
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
        [a1 setUuidString:v13];
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

    v13 = objc_alloc_init(_INPBValueMetadata);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setValueMetadata:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBWellnessMetadataPairReadFrom(void *a1, void *a2)
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

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBString);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setKey:v14];
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

    v14 = objc_alloc_init(_INPBWellnessMetadataValue);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBWellnessMetadataValueReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setValue:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INIntentSlotValueTransformFromCondition(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasConditionalOperator] && (v3 = objc_msgSend(v2, "conditionalOperator") - 2, v3 <= 2))
  {
    v4 = qword_18EE5E8E8[v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *INSearchForPhotosIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E72801A0[a1];
  }
}

id INIntentSlotValueTransformFromProperty(void *a1)
{
  v1 = a1;
  v2 = [v1 payload];
  if (![v2 hasType])
  {
    v7 = 0;
    goto LABEL_25;
  }

  v3 = [v2 type];
  if (v3 > 49)
  {
    if (v3 > 52)
    {
      if (v3 != 53)
      {
        if (v3 == 105)
        {
          v4 = [v2 payloadDateTimeValues];
          v5 = [v4 firstObject];
          v6 = INIntentSlotValueTransformFromDateTime(v5);
          goto LABEL_21;
        }

        goto LABEL_28;
      }

      v4 = [v2 payloadContactLists];
      v5 = [v4 firstObject];
      v8 = [v5 contacts];
      v9 = INIntentSlotValueTransformFromContacts(v8);
    }

    else if (v3 == 50)
    {
      v4 = [v2 payloadStringLists];
      v5 = [v4 firstObject];
      v8 = [v5 dataStrings];
      v9 = INIntentSlotValueTransformFromStrings(v8);
    }

    else
    {
      if (v3 != 51)
      {
        goto LABEL_28;
      }

      v4 = [v2 payloadDoubleLists];
      v5 = [v4 firstObject];
      v8 = [v5 dataStrings];
      v9 = INIntentSlotValueTransformFromDoubles(v8);
    }

    v7 = v9;

    goto LABEL_24;
  }

  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v4 = [v2 payloadContactValues];
      v5 = [v4 firstObject];
      v6 = INIntentSlotValueTransformFromContactValueWithAlternatives(v5, 0);
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = [v2 payloadLocations];
      v5 = [v4 firstObject];
      v6 = INIntentSlotValueTransformFromLocationValue(v5);
      goto LABEL_21;
    }

LABEL_28:
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v2 type];
    if (v12 <= 99)
    {
      v13 = @"String";
      switch(v12)
      {
        case 1:
          goto LABEL_85;
        case 2:
          v13 = @"Double";
          goto LABEL_85;
        case 3:
          v13 = @"Integer";
          goto LABEL_85;
        case 4:
          v13 = @"Contact";
          goto LABEL_85;
        case 5:
          v13 = @"DateTimeRange";
          goto LABEL_85;
        case 6:
          v13 = @"Location";
          goto LABEL_85;
        case 7:
          v13 = @"DataString";
          goto LABEL_85;
        case 8:
          v13 = @"Long";
          goto LABEL_85;
        case 9:
          v13 = @"PaymentMethod";
          goto LABEL_85;
        case 10:
          v13 = @"Temperature";
          goto LABEL_85;
        case 11:
          v13 = @"Distance";
          goto LABEL_85;
        case 12:
          v13 = @"FinancialAccount";
          goto LABEL_85;
        case 13:
          v13 = @"BillType";
          goto LABEL_85;
        case 14:
          v13 = @"Mass";
          goto LABEL_85;
        case 15:
          v13 = @"Volume";
          goto LABEL_85;
        case 16:
          v13 = @"Speed";
          goto LABEL_85;
        case 17:
          v13 = @"Energy";
          goto LABEL_85;
        case 50:
          v13 = @"StringList";
          goto LABEL_85;
        case 51:
          v13 = @"DoubleList";
          goto LABEL_85;
        case 52:
          v13 = @"IntegerList";
          goto LABEL_85;
        case 53:
          v13 = @"ContactList";
          goto LABEL_85;
        case 54:
          v13 = @"DateTimeRangeList";
          goto LABEL_85;
        case 55:
          v13 = @"LocationList";
          goto LABEL_85;
        case 56:
          v13 = @"DataStringList";
          goto LABEL_85;
        case 57:
          v13 = @"LongList";
          goto LABEL_85;
        case 58:
          v13 = @"PaymentMethodList";
          goto LABEL_85;
        case 59:
          v13 = @"TemperatureList";
          goto LABEL_85;
        case 60:
          v13 = @"DistanceList";
          goto LABEL_85;
        default:
          goto LABEL_84;
      }
    }

    if (v12 <= 106)
    {
      if (v12 > 102)
      {
        switch(v12)
        {
          case 'g':
            v13 = @"PrimitiveDouble";
            goto LABEL_85;
          case 'h':
            v13 = @"PrimitiveString";
            goto LABEL_85;
          case 'i':
            v13 = @"DateTime";
            goto LABEL_85;
        }

        goto LABEL_84;
      }

      if (v12 == 100)
      {
        v13 = @"PrimitiveBool";
      }

      else if (v12 == 101)
      {
        v13 = @"PrimitiveInt";
      }

      else
      {
        v13 = @"PrimitiveLong";
      }
    }

    else
    {
      if (v12 > 109)
      {
        if (v12 <= 111)
        {
          if (v12 == 110)
          {
            v13 = @"CalendarEvent";
          }

          else
          {
            v13 = @"EventParticipant";
          }

          goto LABEL_85;
        }

        if (v12 == 112)
        {
          v13 = @"EventAttribute";
          goto LABEL_85;
        }

        if (v12 == 1000)
        {
          v13 = @"Extension";
          goto LABEL_85;
        }

LABEL_84:
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
        goto LABEL_85;
      }

      if (v12 == 107)
      {
        v13 = @"Intent";
      }

      else if (v12 == 108)
      {
        v13 = @"ModifyRelationship";
      }

      else
      {
        v13 = @"ModifyNickname";
      }
    }

LABEL_85:
    v14 = [v11 stringWithFormat:@"Unsupported Property of type %@ is not yet supported.", v13];

    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v14 userInfo:0];
    objc_exception_throw(v15);
  }

  if (v3 == 1)
  {
    v4 = [v2 payloadStringValues];
    v5 = [v4 firstObject];
    v6 = INIntentSlotValueTransformFromStringValue(v5);
    goto LABEL_21;
  }

  if (v3 != 2)
  {
    goto LABEL_28;
  }

  v4 = [v2 payloadDoubleValues];
  v5 = [v4 firstObject];
  v6 = INIntentSlotValueTransformFromDoubleValue(v5);
LABEL_21:
  v7 = v6;
LABEL_24:

LABEL_25:

  return v7;
}

uint64_t _INPBUncompressFileIntentReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(_INPBString);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setEntityName:v21];
LABEL_35:

        goto LABEL_42;
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
        [a1 setEntityType:v20];
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

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {
LABEL_45:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INListRideOptionsIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E72801F0[a1];
  }
}

__CFString *INGetRideStatusIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7280248[a1];
  }
}

uint64_t __Block_byref_object_copy__37078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _INPBRequestPaymentIntentReadFrom(void *a1, void *a2)
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
        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setNote:v14];
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBCurrencyAmount);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBCurrencyAmountReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setCurrencyAmount:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBContact);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setPayer:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INModifyRelationship *INIntentSlotValueTransformFromModifyRelationship(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INModifyRelationship alloc];
    v3 = [v1 targetRelationship];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = MEMORY[0x1E696AD98];
    v6 = [v1 isRemoval];

    v7 = [v5 numberWithBool:v6];
    v8 = [(INModifyRelationship *)v2 initWithTargetRelationship:v4 isRemoval:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBModifyRelationship *INIntentSlotValueTransformToModifyRelationship(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBModifyRelationship);
    v3 = [v1 targetRelationship];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBModifyRelationship *)v2 setTargetRelationship:v4];

    v5 = [v1 isRemoval];

    -[_INPBModifyRelationship setIsRemoval:](v2, "setIsRemoval:", [v5 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromModifyRelationships(void *a1)
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

          v8 = INIntentSlotValueTransformFromModifyRelationship(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToModifyRelationships(void *a1)
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

          v8 = INIntentSlotValueTransformToModifyRelationship(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBDeleteFilePermanentlyIntentResponseReadFrom(void *a1, void *a2)
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

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v31 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v31 & 0x7F) << v21;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_43;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_43:
      [a1 setConfirm:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v30 & 0x7F) << v14;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_41;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_41:
      [a1 setSuccess:v20];
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

uint64_t _INPBSearchForPhotosIntentReadFrom(void *a1, void *a2)
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
      LOBYTE(v43) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v43 & 0x7F) << v5;
      if ((v43 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
        goto LABEL_83;
      case 2u:
        v14 = objc_alloc_init(_INPBDateTimeRange);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setDateCreated:v14];
        goto LABEL_83;
      case 3u:
        v14 = objc_alloc_init(_INPBLocation);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setLocationCreated:v14];
        goto LABEL_83;
      case 5u:
        v14 = objc_alloc_init(_INPBString);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setAlbumName:v14];
        goto LABEL_83;
      case 8u:
        v14 = objc_alloc_init(_INPBStringList);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setSearchTerm:v14];
        goto LABEL_83;
      case 9u:
        if (v13 != 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            LOBYTE(v43) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v43 & 0x7F) << v31;
            if ((v43 & 0x80) == 0)
            {
              goto LABEL_105;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              goto LABEL_106;
            }
          }
        }

        v43 = 0;
        v44 = 0;
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
            goto LABEL_86;
          }

          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            v45 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v45 & 0x7F) << v17;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              goto LABEL_44;
            }
          }

          [a2 hasError];
LABEL_44:
          PBRepeatedInt32Add();
        }

      case 0xAu:
        if (v13 == 2)
        {
          v43 = 0;
          v44 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v23 = [a2 position];
            if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              v45 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v45 & 0x7F) << v24;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                goto LABEL_73;
              }
            }

            [a2 hasError];
LABEL_73:
            PBRepeatedInt32Add();
          }

LABEL_86:
          PBReaderRecallMark();
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            LOBYTE(v43) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v43 & 0x7F) << v37;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              goto LABEL_106;
            }
          }

LABEL_105:
          [a2 hasError];
LABEL_106:
          PBRepeatedInt32Add();
        }

        goto LABEL_84;
      case 0xBu:
        v14 = objc_alloc_init(_INPBContactList);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactListReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setPeopleInPhoto:v14];
        goto LABEL_83;
      case 0xCu:
        v14 = objc_alloc_init(_INPBEventList);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBEventListReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setEvents:v14];
        goto LABEL_83;
      case 0xDu:
        v14 = objc_alloc_init(_INPBPlaceList);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBPlaceListReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setPlaces:v14];
        goto LABEL_83;
      case 0xEu:
        v14 = objc_alloc_init(_INPBActivityList);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBActivityListReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setActivities:v14];
        goto LABEL_83;
      case 0xFu:
        v14 = objc_alloc_init(_INPBGeographicalFeatureList);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBGeographicalFeatureListReadFrom(v14, a2))
        {
          goto LABEL_109;
        }

        PBReaderRecallMark();
        [a1 setGeographicalFeatures:v14];
        goto LABEL_83;
      case 0x10u:
        v14 = objc_alloc_init(_INPBString);
        v43 = 0;
        v44 = 0;
        if (PBReaderPlaceMark() && _INPBStringReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setMemoryName:v14];
LABEL_83:

LABEL_84:
          v30 = [a2 position];
          if (v30 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_109:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_84;
    }
  }
}

uint64_t _INPBSetClimateSettingsInCarIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBEventListReadFrom(void *a1, void *a2)
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
        [a1 setCondition:v13];
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

    v13 = objc_alloc_init(_INPBEvent);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBEventReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addEvent:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchForAccountsIntentReadFrom(void *a1, void *a2)
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
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
LABEL_64:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBDataString);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
          {
            goto LABEL_64;
          }

          PBReaderRecallMark();
          [a1 setAccountNickname:v21];
          goto LABEL_50;
        }
      }

      else
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
                goto LABEL_56;
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

LABEL_56:
            [a1 setAccountType:v28];
            goto LABEL_61;
          case 5:
            v21 = objc_alloc_init(_INPBDataString);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setOrganizationName:v21];
LABEL_50:

            goto LABEL_61;
          case 6:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
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
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_60;
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

LABEL_60:
            [a1 setRequestedBalanceType:v20];
            goto LABEL_61;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromCallRecordValues(void *a1)
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

          v8 = INIntentSlotValueTransformFromCallRecordValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCallRecordValues(void *a1)
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

          v8 = INIntentSlotValueTransformToCallRecordValue(*(*(&v12 + 1) + 8 * i));
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

uint64_t INWorkoutGoalUnitTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 0xA)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INWorkoutGoalUnitTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 0xA) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INWorkoutGoalUnitTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7280360[a1 - 1];
  }
}

uint64_t INWorkoutGoalUnitTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"inch"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"meter"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"foot"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"mile"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"yard"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"second"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"minute"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"hour"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"joule"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"kiloCalorie"])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutGoalUnitTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v5 = @"second";
      }

      else
      {
        v5 = @"minute";
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v5 = @"hour";
          break;
        case 9:
          v5 = @"joule";
          break;
        case 10:
          v5 = @"kilo calorie";
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"inch";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_23;
      }

      v5 = @"meter";
    }
  }

  else if (a1 == 3)
  {
    v5 = @"foot";
  }

  else if (a1 == 4)
  {
    v5 = @"mile";
  }

  else
  {
    v5 = @"yard";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_23:

  return v4;
}

id INIntentSlotValueTransformFromDoubles(void *a1)
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

        v8 = INIntentSlotValueTransformFromDouble(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToDoubles(void *a1)
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

        v8 = INIntentSlotValueTransformToDouble(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromDoubleValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromDoubleValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToDoubleValues(void *a1)
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

        v8 = INIntentSlotValueTransformToDoubleValue(*(*(&v12 + 1) + 8 * i));
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

_INPBDouble *INIntentSlotValueRedactedDoubleFromDouble(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(_INPBDouble);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v3 values];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = *v16;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 valueMetadata];
        v12 = INPrivacyEntitlementOptionsForValueMetadata(v11);

        if ((v12 & a2) == 0)
        {
          if (!v10)
          {
            continue;
          }

          [(_INPBDouble *)v4 addValue:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_13:

        goto LABEL_15;
      }
    }
  }

  v4 = 0;
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

id INIntentSlotValueRedactedDoublesFromDoubles(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedDoubleFromDouble(*(*(&v17 + 1) + 8 * i), a2);
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

uint64_t _INPBCreateTaskListIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBTaskList);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBTaskListReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCreatedTaskList:v13];
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

uint64_t _INPBDictionaryReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBPair);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBPairReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPair:v13];
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

uint64_t INVoicemailPlaybackStateGetBackingType(unint64_t a1)
{
  if (a1 < 4)
  {
    return (a1 + 1);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INVoicemailPlaybackStateGetFacadeType(unsigned __int8 a1, int a2)
{
  if ((((a2 - 2) < 3) & a1) != 0)
  {
    return (a2 - 1);
  }

  else
  {
    return 0;
  }
}

__CFString *INVoicemailPlaybackStateGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72803B0[a1 - 1];
  }
}

uint64_t INVoicemailPlaybackStateWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"stopped"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"playing"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"completed"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVoicemailPlaybackStateGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"completed";
      goto LABEL_7;
    case 2:
      v4 = @"playing";
      goto LABEL_7;
    case 1:
      v4 = @"stopped";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

__CFString *INQueryHealthSampleIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7280460[a1];
  }
}

uint64_t INPrivacyEntitlementOptionsMissingForExtension(char a1, _OWORD *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69D54D0], *MEMORY[0x1E695E4C0]);
  v7 = *MEMORY[0x1E69D5500];
  v8 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v8;
  v9 = TCCAccessCheckAuditToken();
  CFRelease(Mutable);
  if (v9 == 1)
  {
LABEL_3:
    v10 = 0;
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v15 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v15;
  v16 = SecTaskCreateWithAuditToken(0, &token);
  if (v16)
  {
    v17 = v16;
    error = 0;
    v18 = SecTaskCopyValueForEntitlement(v16, @"com.apple.Contacts.database-allow", &error);
    v19 = v18;
    v20 = error;
    if (error)
    {
      v21 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 136315394;
        *&token.val[1] = "_INPrivacyEntitlementHasContactsDBAccessEntitlement";
        LOWORD(token.val[3]) = 2114;
        *(&token.val[3] + 2) = v20;
        _os_log_error_impl(&dword_18E991000, v21, OS_LOG_TYPE_ERROR, "%s Failed reading entitlement with error: %{public}@", &token, 0x16u);
      }

      CFRelease(error);
    }

    else
    {
      if (!v18 || (objc_opt_respondsToSelector() & 1) != 0)
      {
        goto LABEL_13;
      }

      v24 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 136315394;
        *&token.val[1] = "_INPrivacyEntitlementHasContactsDBAccessEntitlement";
        LOWORD(token.val[3]) = 2114;
        *(&token.val[3] + 2) = @"com.apple.Contacts.database-allow";
        _os_log_error_impl(&dword_18E991000, v24, OS_LOG_TYPE_ERROR, "%s Expected a Boolean value for the %{public}@ entitlement, but found something else.", &token, 0x16u);
      }
    }

    v19 = 0;
LABEL_13:
    CFRelease(v17);
    goto LABEL_17;
  }

  v22 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    token.val[0] = 136315138;
    *&token.val[1] = "_INPrivacyEntitlementHasContactsDBAccessEntitlement";
    _os_log_error_impl(&dword_18E991000, v22, OS_LOG_TYPE_ERROR, "%s SecTaskCreateWithAuditToken() failed, assuming the extension process is NOT entitled.", &token, 0xCu);
  }

  v19 = 0;
LABEL_17:
  v23 = [v19 BOOLValue];

  v10 = v23 ^ 1u;
  if ((a1 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = MEMORY[0x1E695FBE8];
  v12 = [v5 bundleIdentifier];
  LODWORD(v11) = [v11 authorizationStatusForBundleIdentifier:v12];

  if (v11 < 3)
  {
    v10 |= 2uLL;
  }

LABEL_6:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t INPrivacyEntitlementValidateIntentMetadata(void *a1)
{
  v1 = a1;
  v2 = [v1 requiredEntitlementsCount];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      [v1 requiredEntitlementAtIndex:i];
    }
  }

  return 1;
}

uint64_t _INPBDialingContactReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBDialingContactValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDialingContactValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
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

uint64_t _INPBResumeTimerIntentResponseReadFrom(void *a1, void *a2)
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
          [a1 addResumedTimers:v13];
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

id INIntentSlotValueTransformFromJSONDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasJsonString])
  {
    v3 = [v2 jsonString];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 dataUsingEncoding:4];
      v10 = 0;
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v10];
      v7 = v6;
      v8 = 0;
      if (!v10)
      {
        v8 = v6;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBJSONDictionary *INIntentSlotValueTransformToJSONDictionary(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v1 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a1 options:0 error:&v5];
    v2 = 0;
    if (!v5)
    {
      v2 = objc_alloc_init(_INPBJSONDictionary);
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:4];
      [(_INPBJSONDictionary *)v2 setJsonString:v3];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *INStartAudioCallIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7280508[a1];
  }
}

uint64_t _INPBCopyFileIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v38 & 0x7F) << v29;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_64;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_64:
          [a1 setOverwrite:v35];
          goto LABEL_67;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v38 & 0x7F) << v15;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_66;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_66:
          [a1 setSuccess:v21];
          goto LABEL_67;
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
              LOBYTE(v38) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v38 & 0x7F) << v22;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_62;
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

LABEL_62:
            [a1 setEntityType:v28];
            goto LABEL_67;
          case 4:
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
LABEL_70:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setEntityName:v14];
            goto LABEL_47;
          case 5:
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_70;
            }

            PBReaderRecallMark();
            [a1 setDestinationName:v14];
LABEL_47:

            goto LABEL_67;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_67:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPaymentMethodReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBPaymentMethodValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBPaymentMethodValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
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

id INIntentSlotValueTransformFromMessageReactions(void *a1)
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

          v8 = INIntentSlotValueTransformFromMessageReaction(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToMessageReactions(void *a1)
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

          v8 = INIntentSlotValueTransformToMessageReaction(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBResumeWorkoutIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t INMessageReactionTypeHasBackingType(uint64_t a1)
{
  v1 = a1 == 1008 || a1 == 1009;
  v2 = a1 == 1007 || v1;
  v3 = a1 == 1005 || a1 == 1006;
  v4 = a1 == 1004 || v3;
  if (a1 <= 1006)
  {
    v2 = v4;
  }

  v5 = a1 == 1002 || a1 == 1003;
  v6 = a1 == 1001 || v5;
  v7 = a1 == 2 || a1 == 1000;
  v8 = a1 == 1 || v7;
  if (a1 <= 1000)
  {
    v6 = v8;
  }

  if (a1 <= 1003)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t INMessageReactionTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1009)
  {
    v1 = 12;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 1008)
  {
    v2 = 9;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 1007)
  {
    v3 = 8;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1006)
  {
    v4 = 7;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (a1 == 1005)
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  if (a1 == 1004)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 1006)
  {
    v3 = v6;
  }

  if (a1 == 1003)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

  if (a1 == 1002)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (a1 == 1001)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (a1 == 1000)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    v10 = 11;
  }

  if (a1 == 1)
  {
    v10 = 10;
  }

  if (a1 > 1000)
  {
    v10 = v9;
  }

  if (a1 <= 1003)
  {
    return v10;
  }

  else
  {
    return v3;
  }
}

uint64_t INMessageReactionTypeGetFacadeType(int a1, int a2)
{
  if (a1 && (a2 - 1) <= 0xB)
  {
    return qword_18EE5E9D8[a2 - 1];
  }

  else
  {
    return 0;
  }
}

__CFString *INMessageReactionTypeGetName(uint64_t a1)
{
  if (a1 > 1003)
  {
    if (a1 > 1006)
    {
      switch(a1)
      {
        case 1007:
          return @"tapbackSticker";
        case 1008:
          return @"tapbackGeneratedEmoji";
        case 1009:
          return @"customAcknowledgement";
      }

      return @"unknown";
    }

    if (a1 == 1004)
    {
      return @"tapbackQuestionedReaction";
    }

    else if (a1 == 1005)
    {
      return @"tapbackLaughedReaction";
    }

    else
    {
      return @"droppedSticker";
    }
  }

  else
  {
    if (a1 <= 1000)
    {
      switch(a1)
      {
        case 1:
          return @"emoji";
        case 2:
          return @"generic";
        case 1000:
          return @"tapbackLikedReaction";
      }

      return @"unknown";
    }

    if (a1 == 1001)
    {
      return @"tapbackDislikedReaction";
    }

    else if (a1 == 1002)
    {
      return @"tapbackEmphasizedReaction";
    }

    else
    {
      return @"tapbackLovedReaction";
    }
  }
}

uint64_t INMessageReactionTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"tapbackLikedReaction"])
  {
    v2 = 1000;
  }

  else if ([v1 isEqualToString:@"tapbackDislikedReaction"])
  {
    v2 = 1001;
  }

  else if ([v1 isEqualToString:@"tapbackEmphasizedReaction"])
  {
    v2 = 1002;
  }

  else if ([v1 isEqualToString:@"tapbackLovedReaction"])
  {
    v2 = 1003;
  }

  else if ([v1 isEqualToString:@"tapbackQuestionedReaction"])
  {
    v2 = 1004;
  }

  else if ([v1 isEqualToString:@"tapbackLaughedReaction"])
  {
    v2 = 1005;
  }

  else if ([v1 isEqualToString:@"droppedSticker"])
  {
    v2 = 1006;
  }

  else if ([v1 isEqualToString:@"tapbackSticker"])
  {
    v2 = 1007;
  }

  else if ([v1 isEqualToString:@"tapbackGeneratedEmoji"])
  {
    v2 = 1008;
  }

  else if ([v1 isEqualToString:@"emoji"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"generic"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"customAcknowledgement"])
  {
    v2 = 1009;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMessageReactionTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 1003)
  {
    if (a1 > 1006)
    {
      switch(a1)
      {
        case 1007:
          v5 = @"tapback sticker";
          break;
        case 1008:
          v5 = @"tapback generated emoji";
          break;
        case 1009:
          v5 = @"custom acknowledgement";
          break;
        default:
          goto LABEL_27;
      }
    }

    else if (a1 == 1004)
    {
      v5 = @"tapback questioned reaction";
    }

    else if (a1 == 1005)
    {
      v5 = @"tapback laughed reaction";
    }

    else
    {
      v5 = @"dropped sticker";
    }
  }

  else if (a1 > 1000)
  {
    if (a1 == 1001)
    {
      v5 = @"tapback disliked reaction";
    }

    else if (a1 == 1002)
    {
      v5 = @"tapback emphasized reaction";
    }

    else
    {
      v5 = @"tapback loved reaction";
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v5 = @"emoji";
        break;
      case 2:
        v5 = @"generic";
        break;
      case 1000:
        v5 = @"tapback liked reaction";
        break;
      default:
        goto LABEL_27;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_27:

  return v4;
}

id INIntentSlotValueTransformFromCustomObjects(void *a1)
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

          v8 = INIntentSlotValueTransformFromCustomObject(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCustomObjects(void *a1)
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

          v8 = INIntentSlotValueTransformToCustomObject(*(*(&v12 + 1) + 8 * i));
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

INAppIntent *INIntentCreateFromDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"appIntentIdentifier"];

  if (v5)
  {
    v6 = [[INAppIntent alloc] initWithJSONDictionary:v4];
LABEL_12:

    goto LABEL_13;
  }

  if (v3 || ([v4 objectForKeyedSubscript:@"typeName"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = INIntentSchemaGetIntentDescriptionWithType(v3);
    v8 = [v7 facadeClass];
    if (!v8)
    {
      v9 = objc_opt_class();
      v10 = NSClassFromString(v3);
      if (!v10 || (v11 = v10, ![(objc_class *)v10 isSubclassOfClass:v9]))
      {
        v18 = 0;
        v19 = 0;
        v13 = INSchemaWithTypeName(v3, &v19, &v18);
        v14 = v19;
        v15 = v18;
        v6 = [[INIntent alloc] _initWithIdentifier:0 schema:v13 name:v14 data:0];

        v16 = [v13 _mainBundleIdentifier];
        [(INAppIntent *)v6 _setLaunchId:v16];

        goto LABEL_11;
      }

      v12 = v11;
      v8 = v11;
    }

    v6 = objc_alloc_init(v8);
LABEL_11:
    [(INIntent *)v6 _updateWithJSONDictionary:v4];

    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

__CFString *INSearchForNotebookItemsIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7280570[a1];
  }
}

__CFString *INSetClimateSettingsInCarIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E72805A0[a1];
  }
}

uint64_t _INPBPaymentMethodValueReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBValueMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setValueMetadata:v14];
          goto LABEL_40;
        }

        if (v13 == 2)
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
              goto LABEL_46;
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

LABEL_46:
          [a1 setType:v21];
          goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            [a1 setName:v14];
            goto LABEL_40;
          case 4:
            v14 = objc_alloc_init(_INPBImageValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setIcon:v14];
            goto LABEL_40;
          case 5:
            v14 = PBReaderReadString();
            [a1 setIdentificationHint:v14];
LABEL_40:

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

id _INVoiceShortcutError(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A278]];

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:a1 userInfo:v7];

  return v8;
}

uint64_t _INPBSetAudioSourceInCarIntentReadFrom(void *a1, void *a2)
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
        v28 = objc_alloc_init(_INPBIntentMetadata);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v28];
      }

      else if (v13 == 2)
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
        [a1 setAudioSource:v27];
      }

      else if (v13 == 3)
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
        [a1 setRelativeAudioSourceReference:v20];
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

uint64_t __INCacheableGetSerializationQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.intents.cacheable.serialization", 0);
  v1 = INCacheableGetSerializationQueue_queue;
  INCacheableGetSerializationQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t INMessageAttributeGetBackingType(uint64_t result)
{
  if ((result - 1) < 5)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INMessageAttributeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INMessageAttributeGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72806E0[a1 - 1];
  }
}

uint64_t INMessageAttributeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"read"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"unread"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"flagged"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"unflagged"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"played"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMessageAttributeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"read";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"unread";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"flagged";
        break;
      case 4:
        v5 = @"unflagged";
        break;
      case 5:
        v5 = @"played";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

uint64_t _INPBIntegerListReadFrom(void *a1, void *a2)
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

    v13 = objc_alloc_init(_INPBInteger);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v13, a2))
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

void __INSyncTransactionCheckVocabularyUpdatesEnabled_block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = @"VoiceCommandNameType";
  v5 = @"com.apple.VoiceShortcuts";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:1];
  v6[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = INSyncTransactionCheckVocabularyUpdatesEnabled_vocabularyUpdatesOverrides;
  INSyncTransactionCheckVocabularyUpdatesEnabled_vocabularyUpdatesOverrides = v1;

  v3 = *MEMORY[0x1E69E9840];
}

void sub_18EB051C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _INPBDistanceReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBDistanceValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDistanceValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
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

uint64_t INDateSearchTypeGetBackingType(unint64_t a1)
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

uint64_t INDateSearchTypeGetFacadeType(int a1, int a2)
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

__CFString *INDateSearchTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7280730[a1 - 1];
  }
}

uint64_t INDateSearchTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"byDueDate"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"byModifiedDate"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"byCreatedDate"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INDateSearchTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"by created date";
      goto LABEL_7;
    case 2:
      v4 = @"by modified date";
      goto LABEL_7;
    case 1:
      v4 = @"by due date";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t INCallRecordTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return dword_18EE5EA60[a1 - 1];
  }
}

uint64_t INCallRecordTypeGetFacadeType(int a1, int a2)
{
  if (a1 && (a2 - 2) <= 8)
  {
    return qword_18EE5EA80[a2 - 2];
  }

  else
  {
    return 0;
  }
}

__CFString *INCallRecordTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7280748[a1 - 1];
  }
}

uint64_t INCallRecordTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"outgoing"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"missed"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"received"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"latest"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"voicemail"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"ringing"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"inProgress"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"onHold"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCallRecordTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v5 = @"in progress";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        v5 = @"on hold";
      }
    }

    else if (a1 == 5)
    {
      v5 = @"voicemail";
    }

    else
    {
      v5 = @"ringing";
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"received";
    }

    else
    {
      v5 = @"latest";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"outgoing";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_19;
    }

    v5 = @"missed";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_19:

  return v4;
}

uint64_t _INPBBillDetailsValueReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v21 = objc_alloc_init(_INPBCurrencyAmountValue);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v21, a2))
            {
LABEL_83:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setAmountDue:v21];
            goto LABEL_59;
          }

          if (v13 == 4)
          {
            v21 = objc_alloc_init(_INPBCurrencyAmountValue);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v21, a2))
            {
              goto LABEL_83;
            }

            PBReaderRecallMark();
            [a1 setMinimumDue:v21];
            goto LABEL_59;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v21 = objc_alloc_init(_INPBValueMetadata);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v21, a2))
            {
              goto LABEL_83;
            }

            PBReaderRecallMark();
            [a1 setValueMetadata:v21];
            goto LABEL_59;
          }

          if (v13 == 2)
          {
            v21 = objc_alloc_init(_INPBBillPayeeValue);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBBillPayeeValueReadFrom(v21, a2))
            {
              goto LABEL_83;
            }

            PBReaderRecallMark();
            [a1 setBillPayee:v21];
            goto LABEL_59;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v21 = objc_alloc_init(_INPBCurrencyAmountValue);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v21, a2))
          {
            goto LABEL_83;
          }

          PBReaderRecallMark();
          [a1 setLateFee:v21];
          goto LABEL_59;
        }

        if (v13 == 6)
        {
          v21 = objc_alloc_init(_INPBDateTime);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v21, a2))
          {
            goto LABEL_83;
          }

          PBReaderRecallMark();
          [a1 setDueDate:v21];
          goto LABEL_59;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v21 = objc_alloc_init(_INPBDateTime);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v21, a2))
            {
              goto LABEL_83;
            }

            PBReaderRecallMark();
            [a1 setPaymentDate:v21];
LABEL_59:

            goto LABEL_60;
          case 8:
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
                goto LABEL_80;
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

LABEL_80:
            [a1 setBillType:v29];
            goto LABEL_60;
          case 9:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
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
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_76;
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

LABEL_76:
            [a1 setStatus:v20];
            goto LABEL_60;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_60:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INContactRelationship *INIntentSlotValueTransformFromContactRelationship(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INContactRelationship alloc];
    v3 = [v1 name];
    v4 = [v1 relation];

    v5 = [(INContactRelationship *)v2 initWithName:v3 relation:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBContactRelationship *INIntentSlotValueTransformToContactRelationship(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBContactRelationship);
    v3 = [v1 name];
    [(_INPBContactRelationship *)v2 setName:v3];

    v4 = [v1 relation];

    [(_INPBContactRelationship *)v2 setRelation:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromContactRelationships(void *a1)
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

          v8 = INIntentSlotValueTransformFromContactRelationship(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToContactRelationships(void *a1)
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

          v8 = INIntentSlotValueTransformToContactRelationship(*(*(&v12 + 1) + 8 * i));
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

INTemporalEventTrigger *INIntentSlotValueTransformFromTemporalEventTrigger(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INTemporalEventTrigger alloc];
    v3 = [v1 dateTime];

    v4 = INIntentSlotValueTransformFromDateTimeRangeValue(v3);
    v5 = [(INTemporalEventTrigger *)v2 initWithDateComponentsRange:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBTemporalEventTrigger *INIntentSlotValueTransformToTemporalEventTrigger(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBTemporalEventTrigger);
    v3 = [v1 dateComponentsRange];

    v4 = INIntentSlotValueTransformToDateTimeRangeValue(v3);
    [(_INPBTemporalEventTrigger *)v2 setDateTime:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromTemporalEventTriggers(void *a1)
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

          v8 = INIntentSlotValueTransformFromTemporalEventTrigger(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToTemporalEventTriggers(void *a1)
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

          v8 = INIntentSlotValueTransformToTemporalEventTrigger(*(*(&v12 + 1) + 8 * i));
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

uint64_t INHomeDeviceTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) > 0x2C)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return dword_18EE5EAC8[a1 - 1];
  }
}

uint64_t INHomeDeviceTypeGetFacadeType(int a1, unsigned int a2)
{
  result = 0;
  if (a2 <= 0x31)
  {
    if (a1)
    {
      return qword_18EE5EB80[a2];
    }
  }

  return result;
}