id INReadActionTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"repeat";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"read";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBSkipAnnouncementIntentResponseReadFrom(uint64_t a1, void *a2)
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

__CFString *INSkipAnnouncementIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E72883F0[a1];
  }
}

uint64_t _INPBPowerValueReadFrom(void *a1, void *a2)
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

uint64_t _INPBJSONDictionaryReadFrom(void *a1, void *a2)
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
      [a1 setJsonString:v14];
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

uint64_t _INPBCallRecordFilterReadFrom(void *a1, void *a2)
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
          if ((v12 & 7) == 2)
          {
            v44 = 0;
            v45 = 0;
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
                v46 = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v46 & 0x7F) << v16;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  goto LABEL_34;
                }
              }

              [a2 hasError];
LABEL_34:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            while (1)
            {
              LOBYTE(v44) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v44 & 0x7F) << v37;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                goto LABEL_81;
              }
            }

            [a2 hasError];
LABEL_81:
            PBRepeatedInt32Add();
          }

          goto LABEL_82;
        }

LABEL_46:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_82;
      }

      v29 = objc_alloc_init(_INPBContact);
      v44 = 0;
      v45 = 0;
      if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v29, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      if (v29)
      {
        [a1 addParticipants:v29];
      }

LABEL_82:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v44 & 0x7F) << v30;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_69;
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

LABEL_69:
      [a1 setCallCapability:v36];
      goto LABEL_82;
    }

    if (v13 == 4)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v44 & 0x7F) << v22;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v28 = 0;
          goto LABEL_65;
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

LABEL_65:
      [a1 setPreferredCallProvider:v28];
      goto LABEL_82;
    }

    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromCallRecordFilters(void *a1)
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

          v8 = INIntentSlotValueTransformFromCallRecordFilter(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCallRecordFilters(void *a1)
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

          v8 = INIntentSlotValueTransformToCallRecordFilter(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBPowerReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBPowerValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBPowerValueReadFrom(v13, a2))
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

__CFString *INCarChargingConnectorTypeGetFacadeObject(int a1, int a2)
{
  if (a1 && (a2 - 2) <= 9)
  {
    return off_1E7288530[a2 - 2];
  }

  else
  {
    return 0;
  }
}

uint64_t INCarChargingConnectorTypeGetBackingType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"com.apple.intents.CarChargingConnectorType.J1772"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.CCS1"])
    {
      v3 = 3;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.CCS2"])
    {
      v3 = 4;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.CHAdeMO"])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.GBTAC"])
    {
      v3 = 6;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.GBTDC"])
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.Tesla"])
    {
      v3 = 8;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.Mennekes"])
    {
      v3 = 9;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.NACSDC"])
    {
      v3 = 10;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.CarChargingConnectorType.NACSAC"])
    {
      v3 = 11;
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

__CFString *INCarChargingConnectorTypeValueAsString(__CFString *a1)
{
  if (a1)
  {
    BackingType = INCarChargingConnectorTypeGetBackingType(a1);
    if ((BackingType - 2) >= 0xA)
    {
      a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", BackingType];
    }

    else
    {
      a1 = off_1E7288580[(BackingType - 2)];
    }

    v1 = vars8;
  }

  return a1;
}

INCarChargingConnectorPower *INIntentSlotValueTransformFromCarChargingConnectorPower(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INCarChargingConnectorPower alloc];
    v3 = [v1 hasChargingConnector];
    v4 = [v1 chargingConnector];
    if (v3 && (v4 - 2) <= 9)
    {
      v5 = off_1E7288530[v4 - 2];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v1 maximumPower];

    v8 = INIntentSlotValueTransformFromPower(v7);
    v9 = [(INCarChargingConnectorPower *)v2 initWithChargingConnector:v6 maximumPower:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

_INPBCarChargingConnectorPower *INIntentSlotValueTransformToCarChargingConnectorPower(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCarChargingConnectorPower);
    v3 = [v1 chargingConnector];
    [(_INPBCarChargingConnectorPower *)v2 setChargingConnector:INCarChargingConnectorTypeGetBackingType(v3)];

    v4 = [v1 maximumPower];

    v5 = INIntentSlotValueTransformToPower(v4);
    [(_INPBCarChargingConnectorPower *)v2 setMaximumPower:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCarChargingConnectorPowers(void *a1)
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

          v8 = INIntentSlotValueTransformFromCarChargingConnectorPower(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCarChargingConnectorPowers(void *a1)
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

          v8 = INIntentSlotValueTransformToCarChargingConnectorPower(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBCarChargingConnectorPowerReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(_INPBPower);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBPowerReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setMaximumPower:v20];
      }

      else if ((v12 >> 3) == 1)
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
        [a1 setChargingConnector:v19];
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

uint64_t _INPBCarHeadUnitReadFrom(void *a1, void *a2)
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
      [a1 setIAP2Identifier:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setBluetoothIdentifier:v14];
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

INCarHeadUnit *INIntentSlotValueTransformFromCarHeadUnit(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INCarHeadUnit alloc];
    v3 = [v1 bluetoothIdentifier];
    v4 = [v1 iAP2Identifier];

    v5 = [(INCarHeadUnit *)v2 initWithBluetoothIdentifier:v3 iAP2Identifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBCarHeadUnit *INIntentSlotValueTransformToCarHeadUnit(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCarHeadUnit);
    v3 = [v1 bluetoothIdentifier];
    [(_INPBCarHeadUnit *)v2 setBluetoothIdentifier:v3];

    v4 = [v1 iAP2Identifier];

    [(_INPBCarHeadUnit *)v2 setIAP2Identifier:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCarHeadUnits(void *a1)
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

          v8 = INIntentSlotValueTransformFromCarHeadUnit(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCarHeadUnits(void *a1)
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

          v8 = INIntentSlotValueTransformToCarHeadUnit(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBDataValueReadFrom(void *a1, void *a2)
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
        v13 = PBReaderReadData();
        [a1 setValue:v13];
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

__CFString *INReportIncidentIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E7288648[a1];
  }
}

uint64_t _INPBReportIncidentIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v27) = 0;
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

        v7 |= (LOBYTE(v27) & 0x7F) << v5;
        if ((LOBYTE(v27) & 0x80) == 0)
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
          case 6:
            v23 = objc_alloc_init(_INPBString);
            v27 = 0.0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v23, a2))
            {
LABEL_58:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setAdditionalDetails:v23];
            goto LABEL_50;
          case 5:
            v23 = objc_alloc_init(_INPBLocation);
            v27 = 0.0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v23, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setUserLocation:v23];
            goto LABEL_50;
          case 4:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v27) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (LOBYTE(v27) & 0x7F) << v16;
              if ((LOBYTE(v27) & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_52;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_52:
            [a1 setIsClear:v22];
            goto LABEL_55;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = objc_alloc_init(_INPBIntentMetadata);
            v27 = 0.0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v23, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v23];
            goto LABEL_50;
          case 2:
            v23 = objc_alloc_init(_INPBSupportedTrafficIncidentType);
            v27 = 0.0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !_INPBSupportedTrafficIncidentTypeReadFrom(v23, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setIncidentType:v23];
LABEL_50:

            goto LABEL_55;
          case 3:
            v27 = 0.0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setStartTime:v27];
            goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBReportIncidentIntentResponseReadFrom(void *a1, void *a2)
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
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
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

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBLocation);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
        {
          goto LABEL_60;
        }

        PBReaderRecallMark();
        [a1 setLocation:v14];
LABEL_27:

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

    v14 = objc_alloc_init(_INPBSupportedTrafficIncidentType);
    v30 = 0;
    v31 = 0;
    if (!PBReaderPlaceMark() || !_INPBSupportedTrafficIncidentTypeReadFrom(v14, a2))
    {
LABEL_60:

      return 0;
    }

    PBReaderRecallMark();
    if (v14)
    {
      [a1 addSupportedType:v14];
    }

    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

unint64_t INMapsTransportTypeGetBackingType(unint64_t result)
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

uint64_t INMapsTransportTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INMapsTransportTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72886E8[a1 - 1];
  }
}

uint64_t INMapsTransportTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"driving"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"walking"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"cycling"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"transit"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"rideshare"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMapsTransportTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"driving";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"walking";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"cycling";
        break;
      case 4:
        v5 = @"transit";
        break;
      case 5:
        v5 = @"rideshare";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

uint64_t INWorkoutAssociatedItemLabelGetBackingType(uint64_t a1)
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

uint64_t INWorkoutAssociatedItemLabelGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INWorkoutAssociatedItemLabelGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7288710[a1 - 1];
  }
}

uint64_t INWorkoutAssociatedItemLabelWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"narrator"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"playlist"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"song"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"trainer"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"workout"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutAssociatedItemLabelGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"narrator";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"playlist";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"song";
        break;
      case 4:
        v5 = @"trainer";
        break;
      case 5:
        v5 = @"workout";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

INWorkoutAssociatedItem *INIntentSlotValueTransformFromWorkoutAssociatedItem(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INWorkoutAssociatedItem alloc];
    v3 = [v1 hasItemLabel];
    v4 = [v1 itemLabel];
    if (((v4 < 5) & v3) != 0)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 itemID];
    v7 = [v1 hasContentRating];
    v8 = [v1 contentRating];
    v9 = 2 * (v8 == 1);
    if (!v8)
    {
      v9 = 1;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v1 itemName];

    v12 = INIntentSlotValueTransformFromDataString(v11);
    v13 = [(INWorkoutAssociatedItem *)v2 initWithItemLabel:v5 itemID:v6 contentRating:v10 itemName:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

_INPBWorkoutAssociatedItem *INIntentSlotValueTransformToWorkoutAssociatedItem(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBWorkoutAssociatedItem);
    v3 = [v1 itemLabel] - 1;
    if (v3 >= 5)
    {
      v4 = 0x7FFFFFFFLL;
    }

    else
    {
      v4 = v3;
    }

    [(_INPBWorkoutAssociatedItem *)v2 setItemLabel:v4];
    v5 = [v1 itemID];
    [(_INPBWorkoutAssociatedItem *)v2 setItemID:v5];

    v6 = [v1 contentRating];
    if (v6 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }

    if (v6 == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    [(_INPBWorkoutAssociatedItem *)v2 setContentRating:v8];
    v9 = [v1 itemName];

    v10 = INIntentSlotValueTransformToDataString(v9);
    [(_INPBWorkoutAssociatedItem *)v2 setItemName:v10];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromWorkoutAssociatedItems(void *a1)
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

          v8 = INIntentSlotValueTransformFromWorkoutAssociatedItem(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToWorkoutAssociatedItems(void *a1)
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

          v8 = INIntentSlotValueTransformToWorkoutAssociatedItem(*(*(&v12 + 1) + 8 * i));
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

uint64_t INWorkoutContentRatingLabelGetBackingType(uint64_t a1)
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

uint64_t INWorkoutContentRatingLabelGetFacadeType(int a1, int a2)
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

__CFString *INWorkoutContentRatingLabelGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"explicit";
  }

  if (a1 == 1)
  {
    return @"clean";
  }

  else
  {
    return v1;
  }
}

uint64_t INWorkoutContentRatingLabelWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"clean"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"explicit"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutContentRatingLabelGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"explicit";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"clean";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t INWorkoutSequenceLabelGetBackingType(uint64_t a1)
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

uint64_t INWorkoutSequenceLabelGetFacadeType(int a1, int a2)
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

__CFString *INWorkoutSequenceLabelGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"next";
  }

  if (a1 == 1)
  {
    return @"last";
  }

  else
  {
    return v1;
  }
}

uint64_t INWorkoutSequenceLabelWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"last"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"next"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutSequenceLabelGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"next";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"last";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBWorkoutAssociatedItemReadFrom(void *a1, void *a2)
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
          [a1 setContentRating:v28];
          goto LABEL_55;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setItemName:v14];
          goto LABEL_26;
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
              goto LABEL_50;
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

LABEL_50:
          [a1 setItemLabel:v21];
          goto LABEL_55;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setItemID:v14];
LABEL_26:

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

uint64_t _INPBResolveObjectReferenceResponseReadFrom(void *a1, void *a2)
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
      v14 = PBReaderReadData();
      [a1 setResolvedReference:v14];
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

uint64_t _INPBResolveObjectReferenceIntentReadFrom(void *a1, void *a2)
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

    v13 = PBReaderReadData();
    [a1 setReference:v13];
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INResolveObjectReferenceIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E7288760[a1];
  }
}

uint64_t _INPBResolveObjectReferenceIntentResponseReadFrom(void *a1, void *a2)
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
      v14 = PBReaderReadData();
      [a1 setResolvedReferences:v14];
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

uint64_t _INPBSupportedTrafficIncidentTypeReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(_INPBString);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLocalizedDisplayString:v20];
      }

      else if ((v12 >> 3) == 1)
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
        [a1 setType:v19];
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

void INMapsTransportTypeOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_9;
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

LABEL_14:
      (*(v3 + 2))(v4, 3);
      v3 = v4;
      if ((a1 & 8) == 0)
      {
LABEL_7:
        if ((a1 & 0x10) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  (*(v3 + 2))(v4, 2);
  v3 = v4;
  if ((a1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((a1 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  (*(v3 + 2))(v4, 4);
  v3 = v4;
  if ((a1 & 0x10) != 0)
  {
LABEL_8:
    (*(v3 + 2))(v4, 5);
    v3 = v4;
  }

LABEL_9:
}

uint64_t INMapsTransportTypeOptionsContainsBackingType(unint64_t a1, int a2)
{
  v2 = (a1 >> 2) & 1;
  v3 = (a1 >> 3) & 1;
  v4 = (a1 >> 4) & 1;
  if (a2 != 5)
  {
    LOBYTE(v4) = 0;
  }

  if (a2 != 4)
  {
    LOBYTE(v3) = v4;
  }

  if (a2 != 3)
  {
    LOBYTE(v2) = v3;
  }

  v5 = (a1 >> 1) & 1;
  if (a2 != 2)
  {
    LOBYTE(v5) = 0;
  }

  if (a2 == 1)
  {
    LOBYTE(v5) = a1;
  }

  if (a2 <= 2)
  {
    LOBYTE(v2) = v5;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INMapsTransportTypeOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result | 4;
    v4 = *result | 8;
    v5 = *result | 0x10;
    if (a2 != 5)
    {
      v5 = *result;
    }

    if (a2 != 4)
    {
      v4 = v5;
    }

    if (a2 != 3)
    {
      v3 = v4;
    }

    v6 = v2 | 1;
    if (a2 == 2)
    {
      v2 |= 2uLL;
    }

    if (a2 == 1)
    {
      v2 = v6;
    }

    if (a2 > 2)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INMapsTransportTypeOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result & 0xFFFFFFFFFFFFFFFBLL;
    v4 = *result & 0xFFFFFFFFFFFFFFF7;
    v5 = *result & 0xFFFFFFFFFFFFFFEFLL;
    if (a2 != 5)
    {
      v5 = *result;
    }

    if (a2 != 4)
    {
      v4 = v5;
    }

    if (a2 != 3)
    {
      v3 = v4;
    }

    v6 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (a2 == 2)
    {
      v2 &= ~2uLL;
    }

    if (a2 == 1)
    {
      v2 = v6;
    }

    if (a2 > 2)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INMapsTransportTypeOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"driving"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"walking"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v3 addObject:@"cycling"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
LABEL_8:
        v4 = [v3 copy];

        goto LABEL_10;
      }

LABEL_7:
      [v3 addObject:@"rideshare"];
      goto LABEL_8;
    }

LABEL_16:
    [v3 addObject:@"transit"];
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_10:

  return v4;
}

uint64_t INMapsTransportTypeOptionsWithNames(void *a1)
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
        v3 |= [v6 isEqualToString:@"driving"];
        if ([v6 isEqualToString:@"walking"])
        {
          v3 |= 2uLL;
        }

        if ([v6 isEqualToString:@"cycling"])
        {
          v3 |= 4uLL;
        }

        if ([v6 isEqualToString:@"transit"])
        {
          v3 |= 8uLL;
        }

        if ([v6 isEqualToString:@"rideshare"])
        {
          v3 |= 0x10uLL;
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

id INMapsTransportTypeOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"driving", @"driving", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"walking", @"walking", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    v10 = INLocalizedStringWithLocalizer(@"cycling", @"cycling", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
LABEL_8:
        v6 = [v4 copy];

        goto LABEL_10;
      }

LABEL_7:
      v5 = INLocalizedStringWithLocalizer(@"rideshare", @"rideshare", v3);
      [v4 addObject:v5];

      goto LABEL_8;
    }

LABEL_16:
    v11 = INLocalizedStringWithLocalizer(@"transit", @"transit", v3);
    [v4 addObject:v11];

    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_10:

  return v6;
}

uint64_t INTrafficIncidentTypeGetBackingType(uint64_t a1)
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

uint64_t INTrafficIncidentTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INTrafficIncidentTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72887F0[a1 - 1];
  }
}

uint64_t INTrafficIncidentTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"accident"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"hazard"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"speedtrap"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"construction"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"roadwork"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTrafficIncidentTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"accident";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"hazard";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"speedtrap";
        break;
      case 4:
        v5 = @"construction";
        break;
      case 5:
        v5 = @"roadwork";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

INSupportedTrafficIncidentType *INIntentSlotValueTransformFromSupportedTrafficIncidentType(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INSupportedTrafficIncidentType alloc];
    v3 = [v1 hasType];
    v4 = [v1 type];
    if (((v4 < 5) & v3) != 0)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 localizedDisplayString];

    v7 = INIntentSlotValueTransformFromString(v6);
    v8 = [(INSupportedTrafficIncidentType *)v2 initWithType:v5 localizedDisplayString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBSupportedTrafficIncidentType *INIntentSlotValueTransformToSupportedTrafficIncidentType(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBSupportedTrafficIncidentType);
    v3 = [v1 type] - 1;
    if (v3 >= 5)
    {
      v4 = 0x7FFFFFFFLL;
    }

    else
    {
      v4 = v3;
    }

    [(_INPBSupportedTrafficIncidentType *)v2 setType:v4];
    v5 = [v1 localizedDisplayString];

    v6 = INIntentSlotValueTransformToString(v5);
    [(_INPBSupportedTrafficIncidentType *)v2 setLocalizedDisplayString:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromSupportedTrafficIncidentTypes(void *a1)
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

          v8 = INIntentSlotValueTransformFromSupportedTrafficIncidentType(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToSupportedTrafficIncidentTypes(void *a1)
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

          v8 = INIntentSlotValueTransformToSupportedTrafficIncidentType(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBWorkoutCustomizationReadFrom(void *a1, void *a2)
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
      [a1 setFocus:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setEnvironment:v14];
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

INWorkoutCustomization *INIntentSlotValueTransformFromWorkoutCustomization(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INWorkoutCustomization alloc];
    v3 = [v1 focus];
    v4 = [v1 environment];

    v5 = [(INWorkoutCustomization *)v2 initWithFocus:v3 environment:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBWorkoutCustomization *INIntentSlotValueTransformToWorkoutCustomization(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBWorkoutCustomization);
    v3 = [v1 focus];
    [(_INPBWorkoutCustomization *)v2 setFocus:v3];

    v4 = [v1 environment];

    [(_INPBWorkoutCustomization *)v2 setEnvironment:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromWorkoutCustomizations(void *a1)
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

          v8 = INIntentSlotValueTransformFromWorkoutCustomization(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToWorkoutCustomizations(void *a1)
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

          v8 = INIntentSlotValueTransformToWorkoutCustomization(*(*(&v12 + 1) + 8 * i));
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

_INPBHomeAutomationEntityProvider *INIntentSlotValueTransformToHomeAutomationEntityProvider(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBHomeAutomationEntityProvider);
    v3 = [v1 roomNames];
    v4 = INIntentSlotValueTransformToStrings(v3);
    [(_INPBHomeAutomationEntityProvider *)v2 setRoomNames:v4];

    v5 = [v1 homeName];
    v6 = INIntentSlotValueTransformToString(v5);
    [(_INPBHomeAutomationEntityProvider *)v2 setHomeName:v6];

    v7 = [v1 zoneNames];
    v8 = INIntentSlotValueTransformToStrings(v7);
    [(_INPBHomeAutomationEntityProvider *)v2 setZoneNames:v8];

    v9 = [v1 accessoryNames];
    v10 = INIntentSlotValueTransformToStrings(v9);
    [(_INPBHomeAutomationEntityProvider *)v2 setAccessoryNames:v10];

    v11 = [v1 serviceNames];
    v12 = INIntentSlotValueTransformToStrings(v11);
    [(_INPBHomeAutomationEntityProvider *)v2 setServiceNames:v12];

    v13 = [v1 serviceGroups];
    v14 = INIntentSlotValueTransformToStrings(v13);
    [(_INPBHomeAutomationEntityProvider *)v2 setServiceGroups:v14];

    v15 = [v1 intentFromEntities];
    v16 = INIntentSlotValueTransformToHomeAutomationFromEntities(v15);
    [(_INPBHomeAutomationEntityProvider *)v2 setIntentFromEntities:v16];

    v17 = [v1 intentDeviceQuantifier];
    v18 = INIntentSlotValueTransformToString(v17);
    [(_INPBHomeAutomationEntityProvider *)v2 setIntentDeviceQuantifier:v18];

    v19 = [v1 destinationDeviceId];
    v20 = INIntentSlotValueTransformToString(v19);
    [(_INPBHomeAutomationEntityProvider *)v2 setDestinationDeviceId:v20];

    v21 = [v1 intentDeviceType];
    v22 = INIntentSlotValueTransformToString(v21);
    [(_INPBHomeAutomationEntityProvider *)v2 setIntentDeviceType:v22];

    v23 = [v1 intentPlaceHint];
    v24 = INIntentSlotValueTransformToString(v23);
    [(_INPBHomeAutomationEntityProvider *)v2 setIntentPlaceHint:v24];

    v25 = [v1 intentReference];

    v26 = INIntentSlotValueTransformToString(v25);
    [(_INPBHomeAutomationEntityProvider *)v2 setIntentReference:v26];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeAutomationEntityProviders(void *a1)
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

          v8 = INIntentSlotValueTransformFromHomeAutomationEntityProvider(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToHomeAutomationEntityProviders(void *a1)
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

          v8 = INIntentSlotValueTransformToHomeAutomationEntityProvider(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBHomeAutomationEntityProviderReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v14 = objc_alloc_init(_INPBString);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
              {
LABEL_81:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setIntentDeviceType:v14];
              goto LABEL_74;
            case 0xB:
              v14 = objc_alloc_init(_INPBString);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setIntentPlaceHint:v14];
              goto LABEL_74;
            case 0xC:
              v14 = objc_alloc_init(_INPBString);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setIntentReference:v14];
              goto LABEL_74;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = objc_alloc_init(_INPBHomeAutomationFromEntity);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_INPBHomeAutomationFromEntityReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addIntentFromEntities:v14];
              }

              goto LABEL_74;
            case 8:
              v14 = objc_alloc_init(_INPBString);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setIntentDeviceQuantifier:v14];
              goto LABEL_74;
            case 9:
              v14 = objc_alloc_init(_INPBString);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setDestinationDeviceId:v14];
              goto LABEL_74;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addAccessoryNames:v14];
            }

            goto LABEL_74;
          case 5:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addServiceNames:v14];
            }

            goto LABEL_74;
          case 6:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addServiceGroups:v14];
            }

            goto LABEL_74;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addRoomNames:v14];
            }

            goto LABEL_74;
          case 2:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setHomeName:v14];
            goto LABEL_74;
          case 3:
            v14 = objc_alloc_init(_INPBString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addZoneNames:v14];
            }

LABEL_74:

            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void std::__tree<std::__value_type<std::string,INSystemApp>,std::__map_value_compare<std::string,std::__value_type<std::string,INSystemApp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,INSystemApp>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,INSystemApp>,std::__map_value_compare<std::string,std::__value_type<std::string,INSystemApp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,INSystemApp>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,INSystemApp>,std::__map_value_compare<std::string,std::__value_type<std::string,INSystemApp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,INSystemApp>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_18EDCCFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_1E727D190, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_18EDCDBD8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

unint64_t INHomeAutomationEntityTypeGetBackingType(unint64_t result)
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

uint64_t INHomeAutomationEntityTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INHomeAutomationEntityTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7288818[a1 - 1];
  }
}

uint64_t INHomeAutomationEntityTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"accessory"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"room"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"zone"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeAutomationEntityTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"zone";
      goto LABEL_7;
    case 2:
      v4 = @"room";
      goto LABEL_7;
    case 1:
      v4 = @"accessory";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

INHomeAutomationFromEntity *INIntentSlotValueTransformFromHomeAutomationFromEntity(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INHomeAutomationFromEntity alloc];
    v3 = [v1 value];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = [v1 hasType];
    v6 = [v1 type];

    if (((v6 - 1 < 3) & v5) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(INHomeAutomationFromEntity *)v2 initWithValue:v4 type:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBHomeAutomationFromEntity *INIntentSlotValueTransformToHomeAutomationFromEntity(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBHomeAutomationFromEntity);
    v3 = [v1 value];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBHomeAutomationFromEntity *)v2 setValue:v4];

    v5 = [v1 type];
    if (v5 >= 4)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = v5;
    }

    [(_INPBHomeAutomationFromEntity *)v2 setType:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeAutomationFromEntities(void *a1)
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

          v8 = INIntentSlotValueTransformFromHomeAutomationFromEntity(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToHomeAutomationFromEntities(void *a1)
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

          v8 = INIntentSlotValueTransformToHomeAutomationFromEntity(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBHomeAutomationFromEntityReadFrom(void *a1, void *a2)
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
        [a1 setValue:v20];
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
        [a1 setType:v19];
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

__CFString *INJoinCallIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7288850[a1];
  }
}

uint64_t _INPBJoinCallIntentReadFrom(void *a1, void *a2)
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

      if (v13 == 10)
      {
        v14 = objc_alloc_init(_INPBCallGroupConversation);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBCallGroupConversationReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setGroupConversation:v14];
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

    v14 = objc_alloc_init(_INPBCallGroupConversationFilter);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBCallGroupConversationFilterReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setGroupConversationFilter:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBJoinCallIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBCallGroupConversationReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBContactValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v14, a2))
          {
LABEL_39:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addOtherParticipants:v14];
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBCallGroup);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBCallGroupReadFrom(v14, a2))
          {
            goto LABEL_39;
          }

          PBReaderRecallMark();
          [a1 setCallGroup:v14];
          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setConversationId:v14];
LABEL_35:

          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBContactValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v14, a2))
          {
            goto LABEL_39;
          }

          PBReaderRecallMark();
          [a1 setCaller:v14];
          goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INCallGroupConversation *INIntentSlotValueTransformFromCallGroupConversation(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INCallGroupConversation alloc];
    v3 = [v1 conversationId];
    v4 = [v1 caller];
    v5 = INIntentSlotValueTransformFromContactValueWithAlternatives(v4, 0);
    v6 = [v1 otherParticipants];
    v7 = INIntentSlotValueTransformFromContactValues(v6);
    v8 = [v1 callGroup];

    v9 = INIntentSlotValueTransformFromCallGroup(v8);
    v10 = [(INCallGroupConversation *)v2 initWithConversationId:v3 caller:v5 otherParticipants:v7 callGroup:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBCallGroupConversation *INIntentSlotValueTransformToCallGroupConversation(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCallGroupConversation);
    v3 = [v1 conversationId];
    [(_INPBCallGroupConversation *)v2 setConversationId:v3];

    v4 = [v1 caller];
    v5 = INIntentSlotValueTransformToContactValue(v4);
    [(_INPBCallGroupConversation *)v2 setCaller:v5];

    v6 = [v1 otherParticipants];
    v7 = INIntentSlotValueTransformToContactValues(v6);
    [(_INPBCallGroupConversation *)v2 setOtherParticipants:v7];

    v8 = [v1 callGroup];

    v9 = INIntentSlotValueTransformToCallGroup(v8);
    [(_INPBCallGroupConversation *)v2 setCallGroup:v9];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCallGroupConversations(void *a1)
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

          v8 = INIntentSlotValueTransformFromCallGroupConversation(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCallGroupConversations(void *a1)
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

          v8 = INIntentSlotValueTransformToCallGroupConversation(*(*(&v12 + 1) + 8 * i));
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

void sub_18EDD4124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLNActionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary_166032)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __LinkServicesLibraryCore_block_invoke_166033;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72888D8;
    v7 = 0;
    LinkServicesLibraryCore_frameworkLibrary_166032 = _sl_dlopen();
    v2 = v5[0];
    if (LinkServicesLibraryCore_frameworkLibrary_166032)
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
  result = objc_getClass("LNAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getLNActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __LinkServicesLibraryCore_block_invoke_166033(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary_166032 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _INPBCallGroupConversationFilterReadFrom(void *a1, void *a2)
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
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBCallGroup);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBCallGroupReadFrom(v14, a2))
          {
LABEL_49:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setCallGroup:v14];
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
              goto LABEL_45;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_45:
          [a1 setMatchCallerAndParticipantsExactly:v21];
          goto LABEL_46;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBContact);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          [a1 setCaller:v14];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBContact);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addParticipants:v14];
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

INCallGroupConversationFilter *INIntentSlotValueTransformFromCallGroupConversationFilter(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INCallGroupConversationFilter alloc];
    v3 = [v1 caller];
    v4 = INIntentSlotValueTransformFromContact(v3);
    v5 = [v1 participants];
    v6 = INIntentSlotValueTransformFromContacts(v5);
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "matchCallerAndParticipantsExactly")}];
    v8 = [v1 callGroup];

    v9 = INIntentSlotValueTransformFromCallGroup(v8);
    v10 = [(INCallGroupConversationFilter *)v2 initWithCaller:v4 participants:v6 matchCallerAndParticipantsExactly:v7 callGroup:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBCallGroupConversationFilter *INIntentSlotValueTransformToCallGroupConversationFilter(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCallGroupConversationFilter);
    v3 = [v1 caller];
    v4 = INIntentSlotValueTransformToContact(v3);
    [(_INPBCallGroupConversationFilter *)v2 setCaller:v4];

    v5 = [v1 participants];
    v6 = INIntentSlotValueTransformToContacts(v5);
    [(_INPBCallGroupConversationFilter *)v2 setParticipants:v6];

    v7 = [v1 matchCallerAndParticipantsExactly];
    -[_INPBCallGroupConversationFilter setMatchCallerAndParticipantsExactly:](v2, "setMatchCallerAndParticipantsExactly:", [v7 BOOLValue]);

    v8 = [v1 callGroup];

    v9 = INIntentSlotValueTransformToCallGroup(v8);
    [(_INPBCallGroupConversationFilter *)v2 setCallGroup:v9];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCallGroupConversationFilters(void *a1)
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

          v8 = INIntentSlotValueTransformFromCallGroupConversationFilter(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCallGroupConversationFilters(void *a1)
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

          v8 = INIntentSlotValueTransformToCallGroupConversationFilter(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBShareFocusStatusIntentReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBFocusStatus);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBFocusStatusReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setFocusStatus:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
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
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBFocusStatusReadFrom(void *a1, void *a2)
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
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setIsFocused:v20];
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

INFocusStatus *INIntentSlotValueTransformFromFocusStatus(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INFocusStatus alloc];
    v3 = MEMORY[0x1E696AD98];
    v4 = [v1 isFocused];

    v5 = [v3 numberWithBool:v4];
    v6 = [(INFocusStatus *)v2 initWithIsFocused:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

_INPBFocusStatus *INIntentSlotValueTransformToFocusStatus(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBFocusStatus);
    v3 = [v1 isFocused];

    -[_INPBFocusStatus setIsFocused:](v2, "setIsFocused:", [v3 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromFocusStatuses(void *a1)
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

          v8 = INIntentSlotValueTransformFromFocusStatus(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToFocusStatuses(void *a1)
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

          v8 = INIntentSlotValueTransformToFocusStatus(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBShareFocusStatusIntentResponseReadFrom(uint64_t a1, void *a2)
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

__CFString *INShareFocusStatusIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7288910[a1];
  }
}

uint64_t _INPBAddCallParticipantIntentReadFrom(void *a1, void *a2)
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

    v13 = objc_alloc_init(_INPBContact);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addParticipants:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INAddCallParticipantIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E7288940[a1];
  }
}

uint64_t _INPBAddCallParticipantIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBCallInvite);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBCallInviteReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addInvites:v13];
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

uint64_t _INPBUnsendMessagesIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBUnsendMessagesIntentReadFrom(void *a1, void *a2)
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
      [a1 addMessageIdentifiers:v13];
    }

LABEL_24:

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INUnsendMessagesIntentResponseCodeGetName(uint64_t a1)
{
  if (a1 <= 6)
  {
    v1 = @"INUnsendMessagesIntentResponseCodeFailureRequiringAppLaunch";
    v10 = @"INUnsendMessagesIntentResponseCodeFailureMessageNotFound";
    if (a1 != 6)
    {
      v10 = 0;
    }

    if (a1 != 5)
    {
      v1 = v10;
    }

    v11 = @"INUnsendMessagesIntentResponseCodeSuccess";
    v12 = @"INUnsendMessagesIntentResponseCodeFailure";
    if (a1 != 4)
    {
      v12 = 0;
    }

    if (a1 != 3)
    {
      v11 = v12;
    }

    if (a1 <= 4)
    {
      v1 = v11;
    }

    v5 = @"INUnsendMessagesIntentResponseCodeUnspecified";
    v13 = @"INUnsendMessagesIntentResponseCodeReady";
    v14 = @"INUnsendMessagesIntentResponseCodeInProgress";
    if (a1 != 2)
    {
      v14 = 0;
    }

    if (a1 != 1)
    {
      v13 = v14;
    }

    if (a1)
    {
      v5 = v13;
    }

    v9 = a1 <= 2;
  }

  else
  {
    v1 = @"INUnsendMessagesIntentResponseCodeFailureScreenTimeRestrictionEnabled";
    v2 = @"INUnsendMessagesIntentResponseCodeFailureDownTimeRestrictionEnabled";
    if (a1 != 1002)
    {
      v2 = 0;
    }

    if (a1 != 1001)
    {
      v1 = v2;
    }

    v3 = @"INUnsendMessagesIntentResponseCodeFailureRequiringInAppAuthentication";
    v4 = @"INUnsendMessagesIntentResponseCodeFailureNotAMemberOfConversation";
    if (a1 != 1000)
    {
      v4 = 0;
    }

    if (a1 != 11)
    {
      v3 = v4;
    }

    if (a1 <= 1000)
    {
      v1 = v3;
    }

    v5 = @"INUnsendMessagesIntentResponseCodeFailureUnsupportedOnService";
    v6 = @"INUnsendMessagesIntentResponseCodeFailureMessageServiceNotAvailable";
    if (a1 != 10)
    {
      v6 = 0;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = @"INUnsendMessagesIntentResponseCodeFailurePastUnsendTimeLimit";
    v8 = @"INUnsendMessagesIntentResponseCodeFailureMessageTypeUnsupported";
    if (a1 != 8)
    {
      v8 = 0;
    }

    if (a1 != 7)
    {
      v7 = v8;
    }

    if (a1 <= 8)
    {
      v5 = v7;
    }

    v9 = a1 <= 10;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t _INPBEditMessageIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBEditMessageIntentReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
        goto LABEL_25;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        [a1 setEditedContent:v14];
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

    v14 = PBReaderReadString();
    [a1 setMessageIdentifier:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INEditMessageIntentResponseCodeGetName(uint64_t a1)
{
  if (a1 <= 6)
  {
    v1 = @"INEditMessageIntentResponseCodeFailureRequiringAppLaunch";
    v10 = @"INEditMessageIntentResponseCodeFailureMessageNotFound";
    if (a1 != 6)
    {
      v10 = 0;
    }

    if (a1 != 5)
    {
      v1 = v10;
    }

    v11 = @"INEditMessageIntentResponseCodeSuccess";
    v12 = @"INEditMessageIntentResponseCodeFailure";
    if (a1 != 4)
    {
      v12 = 0;
    }

    if (a1 != 3)
    {
      v11 = v12;
    }

    if (a1 <= 4)
    {
      v1 = v11;
    }

    v5 = @"INEditMessageIntentResponseCodeUnspecified";
    v13 = @"INEditMessageIntentResponseCodeReady";
    v14 = @"INEditMessageIntentResponseCodeInProgress";
    if (a1 != 2)
    {
      v14 = 0;
    }

    if (a1 != 1)
    {
      v13 = v14;
    }

    if (a1)
    {
      v5 = v13;
    }

    v9 = a1 <= 2;
  }

  else
  {
    v1 = @"INEditMessageIntentResponseCodeFailureScreenTimeRestrictionEnabled";
    v2 = @"INEditMessageIntentResponseCodeFailureDownTimeRestrictionEnabled";
    if (a1 != 1002)
    {
      v2 = 0;
    }

    if (a1 != 1001)
    {
      v1 = v2;
    }

    v3 = @"INEditMessageIntentResponseCodeFailureRequiringInAppAuthentication";
    v4 = @"INEditMessageIntentResponseCodeFailureNotAMemberOfConversation";
    if (a1 != 1000)
    {
      v4 = 0;
    }

    if (a1 != 11)
    {
      v3 = v4;
    }

    if (a1 <= 1000)
    {
      v1 = v3;
    }

    v5 = @"INEditMessageIntentResponseCodeFailureUnsupportedOnService";
    v6 = @"INEditMessageIntentResponseCodeFailureMessageServiceNotAvailable";
    if (a1 != 10)
    {
      v6 = 0;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = @"INEditMessageIntentResponseCodeFailurePastEditTimeLimit";
    v8 = @"INEditMessageIntentResponseCodeFailureMessageTypeUnsupported";
    if (a1 != 8)
    {
      v8 = 0;
    }

    if (a1 != 7)
    {
      v7 = v8;
    }

    if (a1 <= 8)
    {
      v5 = v7;
    }

    v9 = a1 <= 10;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t _INPBCallInviteReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(_INPBURLValue);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v21, a2))
        {
          goto LABEL_46;
        }

        PBReaderRecallMark();
        [a1 setCallURL:v21];
LABEL_36:

        goto LABEL_43;
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
            goto LABEL_42;
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

LABEL_42:
        [a1 setInviteType:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBContact);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
    {
LABEL_46:

      return 0;
    }

    PBReaderRecallMark();
    if (v21)
    {
      [a1 addParticipants:v21];
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INCallInviteTypeGetBackingType(uint64_t result)
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

uint64_t INCallInviteTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INCallInviteTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72889C8[a1 - 1];
  }
}

uint64_t INCallInviteTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"add"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ring"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"link"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCallInviteTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"link";
      goto LABEL_7;
    case 2:
      v4 = @"ring";
      goto LABEL_7;
    case 1:
      v4 = @"add";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

INCallInvite *INIntentSlotValueTransformFromCallInvite(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INCallInvite alloc];
    v3 = [v1 participants];
    v4 = INIntentSlotValueTransformFromContacts(v3);
    v5 = [v1 hasInviteType];
    v6 = [v1 inviteType];
    if (((v6 - 1 < 3) & v5) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v1 callURL];

    v9 = INIntentSlotValueTransformFromURLValue(v8);
    v10 = [(INCallInvite *)v2 initWithParticipants:v4 inviteType:v7 callURL:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBCallInvite *INIntentSlotValueTransformToCallInvite(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCallInvite);
    v3 = [v1 participants];
    v4 = INIntentSlotValueTransformToContacts(v3);
    [(_INPBCallInvite *)v2 setParticipants:v4];

    v5 = [v1 inviteType] - 1;
    if (v5 < 3)
    {
      v6 = (v5 + 1);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    [(_INPBCallInvite *)v2 setInviteType:v6];
    v7 = [v1 callURL];

    v8 = INIntentSlotValueTransformToURLValue(v7);
    [(_INPBCallInvite *)v2 setCallURL:v8];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCallInvites(void *a1)
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

          v8 = INIntentSlotValueTransformFromCallInvite(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCallInvites(void *a1)
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

          v8 = INIntentSlotValueTransformToCallInvite(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBStartCallRequestMetadataReadFrom(void *a1, void *a2)
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
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setAppInferred:v20];
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

_INPBStartCallRequestMetadata *INIntentSlotValueTransformToStartCallRequestMetadata(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBStartCallRequestMetadata);
    v3 = [v1 appInferred];

    [(_INPBStartCallRequestMetadata *)v2 setAppInferred:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromStartCallRequestMetadatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromStartCallRequestMetadata(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToStartCallRequestMetadatas(void *a1)
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

          v8 = INIntentSlotValueTransformToStartCallRequestMetadata(*(*(&v12 + 1) + 8 * i));
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

_INPBSticker *INIntentSlotValueTransformToSticker(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBSticker);
    -[_INPBSticker setType:](v2, "setType:", INStickerTypeGetBackingType([v1 type]));
    v3 = [v1 avatarDescriptor];
    [(_INPBSticker *)v2 setAvatarDescriptor:v3];

    v4 = [v1 appBundleID];
    [(_INPBSticker *)v2 setAppBundleID:v4];

    v5 = [v1 stickerDescription];
    [(_INPBSticker *)v2 setStickerDescription:v5];

    v6 = [v1 emoji];

    [(_INPBSticker *)v2 setEmoji:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromStickers(void *a1)
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

          v8 = INIntentSlotValueTransformFromSticker(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToStickers(void *a1)
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

          v8 = INIntentSlotValueTransformToSticker(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBStickerReadFrom(void *a1, void *a2)
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
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v25 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v25 & 0x7F) << v16;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
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
        [a1 setType:v22];
        continue;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setAvatarDescriptor:v15];
        goto LABEL_28;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v15 = PBReaderReadString();
          [a1 setAppBundleID:v15];
          goto LABEL_28;
        case 4:
          v15 = PBReaderReadString();
          [a1 setStickerDescription:v15];
          goto LABEL_28;
        case 5:
          v15 = PBReaderReadString();
          [a1 setEmoji:v15];
LABEL_28:

          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INStickerTypeHasBackingType(uint64_t a1)
{
  v1 = a1 == 1002 || a1 == 1003;
  v2 = a1 == 1000 || a1 == 1001;
  if (a1 <= 1001)
  {
    v1 = v2;
  }

  v3 = a1 == 1 || a1 == 2;
  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a1 <= 999)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t INStickerTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1003)
  {
    v1 = 6;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 1002)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 1001)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a1 == 1000)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 1001)
  {
    v2 = v4;
  }

  if (a1 == 2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  if (a1 == 1)
  {
    v5 = 1;
  }

  if (!a1)
  {
    v5 = 0;
  }

  if (a1 <= 999)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t INStickerTypeGetFacadeType(int a1, int a2)
{
  if (a1 && (a2 - 1) <= 5)
  {
    return qword_18EE5FF28[a2 - 1];
  }

  else
  {
    return 0;
  }
}

__CFString *INStickerTypeGetName(uint64_t a1)
{
  if (a1 > 1000)
  {
    if (a1 == 1001)
    {
      return @"appBased";
    }

    if (a1 != 1002)
    {
      if (a1 == 1003)
      {
        return @"custom";
      }

      return @"unknown";
    }

    return @"generated";
  }

  else
  {
    if (a1 == 1)
    {
      return @"emoji";
    }

    if (a1 != 2)
    {
      if (a1 == 1000)
      {
        return @"memoji";
      }

      return @"unknown";
    }

    return @"generic";
  }
}

uint64_t INStickerTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"emoji"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"memoji"])
  {
    v2 = 1000;
  }

  else if ([v1 isEqualToString:@"appBased"])
  {
    v2 = 1001;
  }

  else if ([v1 isEqualToString:@"generated"])
  {
    v2 = 1002;
  }

  else if ([v1 isEqualToString:@"generic"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"custom"])
  {
    v2 = 1003;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INStickerTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 1000)
  {
    switch(a1)
    {
      case 1001:
        v5 = @"app based";
        break;
      case 1002:
        v5 = @"generated";
        break;
      case 1003:
        v5 = @"custom";
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
        v5 = @"emoji";
        break;
      case 2:
        v5 = @"generic";
        break;
      case 1000:
        v5 = @"memoji";
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_15:

  return v4;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}