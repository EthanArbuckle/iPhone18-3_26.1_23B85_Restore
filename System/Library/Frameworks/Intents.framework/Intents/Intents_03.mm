__CFString *INSetMessageAttributeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E727D9D8[a1];
  }
}

uint64_t _INPBHomeContentReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBHomeAttribute);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeAttributeReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addActions:v13];
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

    v13 = objc_alloc_init(_INPBHomeFilter);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBHomeFilterReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setFilter:v13];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBHomeFilterReadFrom(void *a1, void *a2)
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
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addEntityIdentifiers:v13];
        }

        goto LABEL_94;
      case 2u:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setHome:v13];
        goto LABEL_94;
      case 3u:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setScene:v13];
        goto LABEL_94;
      case 4u:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setZone:v13];
        goto LABEL_94;
      case 5u:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setGroup:v13];
        goto LABEL_94;
      case 6u:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setRoom:v13];
        goto LABEL_94;
      case 7u:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setAccessory:v13];
        goto LABEL_94;
      case 8u:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setService:v13];
        goto LABEL_94;
      case 9u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v65 & 0x7F) << v57;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v63 = 0;
            goto LABEL_138;
          }
        }

        if ([a2 hasError])
        {
          v63 = 0;
        }

        else
        {
          v63 = v59;
        }

LABEL_138:
        [a1 setEntityType:v63];
        goto LABEL_95;
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
            goto LABEL_126;
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

LABEL_126:
        [a1 setServiceType:v41];
        goto LABEL_95;
      case 0xBu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v65 & 0x7F) << v50;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v56 = 0;
            goto LABEL_134;
          }
        }

        if ([a2 hasError])
        {
          v56 = 0;
        }

        else
        {
          v56 = v52;
        }

LABEL_134:
        [a1 setSubServiceType:v56];
        goto LABEL_95;
      case 0xCu:
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
            goto LABEL_122;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_122:
        [a1 setIsExcludeFilter:v34];
        goto LABEL_95;
      case 0xDu:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        [a1 setEntityName:v13];
        goto LABEL_94;
      case 0xEu:
        v13 = objc_alloc_init(_INPBDataString);
        v65 = 0;
        v66 = 0;
        if (PBReaderPlaceMark() && _INPBDataStringReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setOuterDeviceName:v13];
LABEL_94:

LABEL_95:
          v49 = [a2 position];
          if (v49 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_141:

        return 0;
      case 0xFu:
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
            goto LABEL_120;
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

LABEL_120:
        [a1 setOuterDeviceType:v27];
        goto LABEL_95;
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
            goto LABEL_130;
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

LABEL_130:
        [a1 setDeviceType:v48];
        goto LABEL_95;
      case 0x11u:
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
            goto LABEL_116;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_116:
        [a1 setHasAllQuantifier:v20];
        goto LABEL_95;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_95;
    }
  }
}

uint64_t _INPBRunWorkflowIntentReadFrom(void *a1, void *a2)
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
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
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

    v13 = objc_alloc_init(_INPBDataString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setWorkflow:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id INCounterpartIdentifiersForApplicationRecord(void *a1)
{
  v1 = MEMORY[0x1E695DFA8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 counterpartIdentifiers];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [v3 initWithArray:v5];

  return v6;
}

uint64_t INCancelRideIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1E727DD60 + a1);
  }
}

unint64_t INMenstruationValueTypeGetBackingType(unint64_t result)
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

uint64_t INMenstruationValueTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INMenstruationValueTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E727DD80 + a1 - 1);
  }
}

uint64_t INMenstruationValueTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"light"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"medium"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"heavy"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMenstruationValueTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"heavy";
      goto LABEL_7;
    case 2:
      v4 = @"medium";
      goto LABEL_7;
    case 1:
      v4 = @"light";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBShareFileIntentReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v21, a2))
          {
LABEL_52:

            return 0;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addEntityName:v21];
          }

          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(_INPBShareDestination);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBShareDestinationReadFrom(v21, a2))
          {
            goto LABEL_52;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addRecipients:v21];
          }

          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
            goto LABEL_52;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
LABEL_44:

          goto LABEL_49;
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
              goto LABEL_48;
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

LABEL_48:
          [a1 setShareMode:v20];
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

uint64_t _INPBAppBuildReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBAppId);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBAppIdReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setAppId:v13];
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

    v13 = objc_alloc_init(_INPBBuildId);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBBuildIdReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setBuildId:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id _INImageSizeProviderClass()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getINUIImageSizeProviderClass_softClass;
  v8 = getINUIImageSizeProviderClass_softClass;
  if (!getINUIImageSizeProviderClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getINUIImageSizeProviderClass_block_invoke;
    v4[3] = &unk_1E72888B8;
    v4[4] = &v5;
    __getINUIImageSizeProviderClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  if ([v0 conformsToProtocol:&unk_1F03617B8])
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_18E9F1230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINUIImageSizeProviderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IntentsUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IntentsUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727DDB0;
    v7 = 0;
    IntentsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (IntentsUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("INUIImageSizeProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getINUIImageSizeProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IntentsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntentsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18E9F1688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWFOnScreenContentNodeClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __VoiceShortcutClientLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727DDC8;
    v7 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (VoiceShortcutClientLibraryCore_frameworkLibrary)
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
  result = objc_getClass("WFOnScreenContentNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getWFOnScreenContentNodeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void INIssueSandboxExtensionToProcess(void *a1, __int128 *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __INIssueSandboxExtensionToProcess_block_invoke;
  v3[3] = &__block_descriptor_64_e15__16__0__NSURL_8l;
  v2 = a2[1];
  v4 = *a2;
  v5 = v2;
  _INIssueSandboxExtensionWithTokenGeneratorBlock(a1, v3);
}

uint64_t __INIssueSandboxExtensionToProcess_block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9BB0];
  v4 = [a2 path];
  [v4 fileSystemRepresentation];
  v5 = *MEMORY[0x1E69E9BE0];
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6 = sandbox_extension_issue_file_to_process();

  return v6;
}

void _INIssueSandboxExtensionWithTokenGeneratorBlock(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 isFileURL])
  {
    v5 = v4[2](v4, v3);
    if (v5)
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 length:strlen(v5) + 1];
      MEMORY[0x193AD70B0](v3, v6);
    }

    else
    {
      v7 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v6 = v7;
      v9 = __error();
      v10 = strerror(*v9);
      v11 = 136315650;
      v12 = "_INIssueSandboxExtensionWithTokenGeneratorBlock";
      v13 = 2112;
      v14 = v3;
      v15 = 2080;
      v16 = v10;
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Could not create sandbox read extension for file URL %@, error: %s", &v11, 0x20u);
    }
  }

LABEL_6:

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __INIssueSandboxExtensionsForFileURLEnumerableToProcess_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isFileURL];
  if (v4)
  {
    v5 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __INIssueSandboxExtensionToProcess_block_invoke;
    v7[3] = &__block_descriptor_64_e15__16__0__NSURL_8l;
    _INIssueSandboxExtensionWithTokenGeneratorBlock(v3, v7);
  }

  return v4;
}

uint64_t __INIssueSandboxExtensionsForFileURLEnumerable_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isFileURL];
  if (v3)
  {
    _INIssueSandboxExtensionWithTokenGeneratorBlock(v2, &__block_literal_global_5);
  }

  return v3;
}

uint64_t INNotebookItemTypeGetBackingType(unint64_t a1)
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

uint64_t INNotebookItemTypeGetFacadeType(int a1, int a2)
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

__CFString *INNotebookItemTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727DE20[a1 - 1];
  }
}

uint64_t INNotebookItemTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"note"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"taskList"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"task"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INNotebookItemTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"task";
      goto LABEL_7;
    case 2:
      v4 = @"task list";
      goto LABEL_7;
    case 1:
      v4 = @"note";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

id INIntentSchemaGetIntentNames()
{
  if (INIntentSchemaGetIntentNames_onceToken != -1)
  {
    dispatch_once(&INIntentSchemaGetIntentNames_onceToken, &__block_literal_global_3706);
  }

  v1 = INIntentSchemaGetIntentNames_list;

  return v1;
}

void __INIntentSchemaGetIntentNames_block_invoke()
{
  v0 = INIntentSchemaGetIntentNames_list;
  INIntentSchemaGetIntentNames_list = &unk_1F02D8478;
}

id INIntentSchemaGetIntentTypes()
{
  if (INIntentSchemaGetIntentTypes_onceToken != -1)
  {
    dispatch_once(&INIntentSchemaGetIntentTypes_onceToken, &__block_literal_global_336);
  }

  v1 = INIntentSchemaGetIntentTypes_list;

  return v1;
}

void __INIntentSchemaGetIntentTypes_block_invoke()
{
  v0 = INIntentSchemaGetIntentTypes_list;
  INIntentSchemaGetIntentTypes_list = &unk_1F02D8490;
}

id INAlarmDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INAlarmDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INAlarmDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_1437);
    }

    v2 = [sAlarmDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCalendarEventDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCalendarEventDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCalendarEventDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_1847);
    }

    v2 = [sCalendarEventDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCarPlayDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCarPlayDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCarPlayDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_2994);
    }

    v2 = [sCarPlayDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INContactDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INContactDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INContactDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4109);
    }

    v2 = [sContactDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFilesDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFilesDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFilesDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4262);
    }

    v2 = [sFilesDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFindDeviceDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFindDeviceDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFindDeviceDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4266);
    }

    v2 = [sFindDeviceDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFocusStatusDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFocusStatusDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFocusStatusDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4319);
    }

    v2 = [sFocusStatusDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INGeoDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INGeoDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INGeoDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4334);
    }

    v2 = [sGeoDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeCommunicationDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INHomeCommunicationDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INHomeCommunicationDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4656);
    }

    v2 = [sHomeCommunicationDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeKitDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INHomeKitDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INHomeKitDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4782);
    }

    v2 = [sHomeKitDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INNotebookDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INNotebookDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INNotebookDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_5867);
    }

    v2 = [sNotebookDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPaymentsDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INPaymentsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INPaymentsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_7022);
    }

    v2 = [sPaymentsDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPhotosDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INPhotosDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INPhotosDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_7826);
    }

    v2 = [sPhotosDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRRaaSDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRRaaSDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRRaaSDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8107);
    }

    v2 = [sRRaaSDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRadioDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRadioDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRadioDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8150);
    }

    v2 = [sRadioDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INReservationsDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INReservationsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INReservationsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8303);
    }

    v2 = [sReservationsDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRidesharingDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRidesharingDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRidesharingDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8362);
    }

    v2 = [sRidesharingDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSettingsDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INSettingsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INSettingsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8592);
    }

    v2 = [sSettingsDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVisualCodeDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INVisualCodeDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INVisualCodeDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_9743);
    }

    v2 = [sVisualCodeDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVoiceCommandsDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INVoiceCommandsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INVoiceCommandsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_9795);
    }

    v2 = [sVoiceCommandsDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWellnessDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWellnessDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWellnessDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_9961);
    }

    v2 = [sWellnessDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkflowDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWorkflowDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWorkflowDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_10350);
    }

    v2 = [sWorkflowDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutsDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWorkoutsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWorkoutsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_10400);
    }

    v2 = [sWorkoutsDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INGenericDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INGenericDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INGenericDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_10701);
    }

    v2 = [sGenericDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INAlarmDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INAlarmDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INAlarmDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_1437);
    }

    v2 = [sAlarmDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCalendarEventDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCalendarEventDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCalendarEventDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_1847);
    }

    v2 = [sCalendarEventDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCarPlayDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCarPlayDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCarPlayDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_2994);
    }

    v2 = [sCarPlayDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INContactDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INContactDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INContactDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4109);
    }

    v2 = [sContactDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFilesDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFilesDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFilesDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4262);
    }

    v2 = [sFilesDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFindDeviceDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFindDeviceDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFindDeviceDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4266);
    }

    v2 = [sFindDeviceDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFocusStatusDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFocusStatusDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFocusStatusDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4319);
    }

    v2 = [sFocusStatusDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INGeoDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INGeoDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INGeoDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4334);
    }

    v2 = [sGeoDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeCommunicationDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INHomeCommunicationDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INHomeCommunicationDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4656);
    }

    v2 = [sHomeCommunicationDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeKitDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INHomeKitDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INHomeKitDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_4782);
    }

    v2 = [sHomeKitDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INMediaDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INMediaDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_5008);
    }

    v2 = [sMediaDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INNotebookDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INNotebookDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INNotebookDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_5867);
    }

    v2 = [sNotebookDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPaymentsDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INPaymentsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INPaymentsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_7022);
    }

    v2 = [sPaymentsDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPhotosDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INPhotosDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INPhotosDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_7826);
    }

    v2 = [sPhotosDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRRaaSDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRRaaSDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRRaaSDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8107);
    }

    v2 = [sRRaaSDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRadioDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRadioDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRadioDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8150);
    }

    v2 = [sRadioDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INReservationsDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INReservationsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INReservationsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8303);
    }

    v2 = [sReservationsDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRidesharingDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRidesharingDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRidesharingDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8362);
    }

    v2 = [sRidesharingDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSettingsDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INSettingsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INSettingsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_8592);
    }

    v2 = [sSettingsDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTimersDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INTimersDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INTimersDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_9173);
    }

    v2 = [sTimersDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVisualCodeDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INVisualCodeDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INVisualCodeDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_9743);
    }

    v2 = [sVisualCodeDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVoiceCommandsDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INVoiceCommandsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INVoiceCommandsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_9795);
    }

    v2 = [sVoiceCommandsDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWellnessDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWellnessDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWellnessDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_9961);
    }

    v2 = [sWellnessDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkflowDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWorkflowDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWorkflowDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_10350);
    }

    v2 = [sWorkflowDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutsDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWorkoutsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWorkoutsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_10400);
    }

    v2 = [sWorkoutsDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INGenericDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INGenericDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INGenericDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_10701);
    }

    v2 = [sGenericDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __INIntentSchemaGetIntentDescriptionWithType_block_invoke()
{
  v0 = INIntentSchemaGetIntentDescriptionWithType_map;
  INIntentSchemaGetIntentDescriptionWithType_map = &unk_1F02DD240;
}

id INIntentSchemaGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INIntentSchemaGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INIntentSchemaGetIntentResponseNames()
{
  if (INIntentSchemaGetIntentResponseNames_onceToken != -1)
  {
    dispatch_once(&INIntentSchemaGetIntentResponseNames_onceToken, &__block_literal_global_743);
  }

  v1 = INIntentSchemaGetIntentResponseNames_list;

  return v1;
}

void __INIntentSchemaGetIntentResponseNames_block_invoke()
{
  v0 = INIntentSchemaGetIntentResponseNames_list;
  INIntentSchemaGetIntentResponseNames_list = &unk_1F02D84A8;
}

id INIntentSchemaGetIntentResponseTypes()
{
  if (INIntentSchemaGetIntentResponseTypes_onceToken != -1)
  {
    dispatch_once(&INIntentSchemaGetIntentResponseTypes_onceToken, &__block_literal_global_1084);
  }

  v1 = INIntentSchemaGetIntentResponseTypes_list;

  return v1;
}

void __INIntentSchemaGetIntentResponseTypes_block_invoke()
{
  v0 = INIntentSchemaGetIntentResponseTypes_list;
  INIntentSchemaGetIntentResponseTypes_list = &unk_1F02D84C0;
}

id INAlarmDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INAlarmDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INAlarmDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_1817);
    }

    v2 = [sAlarmDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCalendarEventDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCalendarEventDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCalendarEventDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_2398);
    }

    v2 = [sCalendarEventDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCallsDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCallsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCallsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_2942);
    }

    v2 = [sCallsDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCarPlayDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCarPlayDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCarPlayDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4028);
    }

    v2 = [sCarPlayDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INContactDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INContactDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INContactDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4246);
    }

    v2 = [sContactDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFilesDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFilesDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFilesDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4264);
    }

    v2 = [sFilesDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFindDeviceDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFindDeviceDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFindDeviceDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4309);
    }

    v2 = [sFindDeviceDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFocusStatusDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFocusStatusDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFocusStatusDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4330);
    }

    v2 = [sFocusStatusDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INGeoDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INGeoDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INGeoDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4624);
    }

    v2 = [sGeoDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeCommunicationDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INHomeCommunicationDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INHomeCommunicationDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4761);
    }

    v2 = [sHomeCommunicationDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeKitDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INHomeKitDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INHomeKitDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4995);
    }

    v2 = [sHomeKitDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INMediaDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INMediaDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_5387);
    }

    v2 = [sMediaDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INNotebookDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INNotebookDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INNotebookDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_6968);
    }

    v2 = [sNotebookDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPaymentsDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INPaymentsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INPaymentsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_7797);
    }

    v2 = [sPaymentsDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPhotosDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INPhotosDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INPhotosDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8098);
    }

    v2 = [sPhotosDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRRaaSDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRRaaSDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRRaaSDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8143);
    }

    v2 = [sRRaaSDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRadioDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRadioDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRadioDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8299);
    }

    v2 = [sRadioDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INReservationsDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INReservationsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INReservationsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8355);
    }

    v2 = [sReservationsDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRidesharingDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRidesharingDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRidesharingDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8575);
    }

    v2 = [sRidesharingDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSettingsDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INSettingsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INSettingsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_9135);
    }

    v2 = [sSettingsDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTimersDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INTimersDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INTimersDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_9703);
    }

    v2 = [sTimersDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVisualCodeDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INVisualCodeDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INVisualCodeDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_9786);
    }

    v2 = [sVisualCodeDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVoiceCommandsDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INVoiceCommandsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INVoiceCommandsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_9904);
    }

    v2 = [sVoiceCommandsDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWellnessDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWellnessDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWellnessDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_10321);
    }

    v2 = [sWellnessDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkflowDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWorkflowDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWorkflowDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_10387);
    }

    v2 = [sWorkflowDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutsDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWorkoutsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWorkoutsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_10689);
    }

    v2 = [sWorkoutsDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INGenericDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INGenericDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INGenericDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_10705);
    }

    v2 = [sGenericDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __INIntentSchemaGetIntentResponseDescriptionWithName_block_invoke()
{
  v0 = INIntentSchemaGetIntentResponseDescriptionWithName_map;
  INIntentSchemaGetIntentResponseDescriptionWithName_map = &unk_1F02DD268;
}

id INAlarmDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INAlarmDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INAlarmDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_1817);
    }

    v2 = [sAlarmDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCalendarEventDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCalendarEventDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCalendarEventDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_2398);
    }

    v2 = [sCalendarEventDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCallsDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCallsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCallsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_2942);
    }

    v2 = [sCallsDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCarPlayDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCarPlayDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCarPlayDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4028);
    }

    v2 = [sCarPlayDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INContactDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INContactDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INContactDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4246);
    }

    v2 = [sContactDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFilesDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFilesDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFilesDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4264);
    }

    v2 = [sFilesDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFindDeviceDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFindDeviceDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFindDeviceDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4309);
    }

    v2 = [sFindDeviceDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INFocusStatusDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INFocusStatusDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INFocusStatusDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4330);
    }

    v2 = [sFocusStatusDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INGeoDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INGeoDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INGeoDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4624);
    }

    v2 = [sGeoDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeCommunicationDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INHomeCommunicationDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INHomeCommunicationDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4761);
    }

    v2 = [sHomeCommunicationDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeKitDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INHomeKitDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INHomeKitDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_4995);
    }

    v2 = [sHomeKitDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INMediaDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INMediaDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_5387);
    }

    v2 = [sMediaDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INNotebookDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INNotebookDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INNotebookDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_6968);
    }

    v2 = [sNotebookDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPaymentsDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INPaymentsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INPaymentsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_7797);
    }

    v2 = [sPaymentsDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPhotosDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INPhotosDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INPhotosDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8098);
    }

    v2 = [sPhotosDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRRaaSDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRRaaSDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRRaaSDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8143);
    }

    v2 = [sRRaaSDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRadioDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRadioDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRadioDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8299);
    }

    v2 = [sRadioDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INReservationsDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INReservationsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INReservationsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8355);
    }

    v2 = [sReservationsDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRidesharingDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INRidesharingDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INRidesharingDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_8575);
    }

    v2 = [sRidesharingDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSettingsDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INSettingsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INSettingsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_9135);
    }

    v2 = [sSettingsDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTimersDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INTimersDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INTimersDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_9703);
    }

    v2 = [sTimersDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVisualCodeDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INVisualCodeDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INVisualCodeDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_9786);
    }

    v2 = [sVisualCodeDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVoiceCommandsDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INVoiceCommandsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INVoiceCommandsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_9904);
    }

    v2 = [sVoiceCommandsDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWellnessDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWellnessDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWellnessDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_10321);
    }

    v2 = [sWellnessDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkflowDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWorkflowDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWorkflowDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_10387);
    }

    v2 = [sWorkflowDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutsDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INWorkoutsDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INWorkoutsDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_10689);
    }

    v2 = [sWorkoutsDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INGenericDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INGenericDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INGenericDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_10705);
    }

    v2 = [sGenericDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __INIntentSchemaGetIntentResponseDescriptionWithType_block_invoke()
{
  v0 = INIntentSchemaGetIntentResponseDescriptionWithType_map;
  INIntentSchemaGetIntentResponseDescriptionWithType_map = &unk_1F02DD290;
}

id INIntentSchemaGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INIntentSchemaGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INAlarmDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INAlarmDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INAlarmDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INAlarmDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INAlarmDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INAlarmDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INAlarmDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INAlarmDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCalendarEventDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INCalendarEventDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCalendarEventDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INCalendarEventDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCalendarEventDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INCalendarEventDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCalendarEventDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INCalendarEventDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCallsDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INCallsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCallsDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INCallsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCallsDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INCallsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCallsDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INCallsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCarPlayDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INCarPlayDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCarPlayDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INCarPlayDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCarPlayDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INCarPlayDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCarPlayDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INCarPlayDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INContactDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INContactDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INContactDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INContactDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INContactDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INContactDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INContactDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INContactDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFilesDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INFilesDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFilesDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INFilesDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFilesDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INFilesDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFilesDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INFilesDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFindDeviceDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INFindDeviceDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFindDeviceDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INFindDeviceDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFindDeviceDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INFindDeviceDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFindDeviceDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INFindDeviceDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFocusStatusDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INFocusStatusDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFocusStatusDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INFocusStatusDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFocusStatusDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INFocusStatusDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INFocusStatusDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INFocusStatusDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INGeoDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INGeoDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INGeoDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INGeoDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INGeoDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INGeoDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INGeoDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INGeoDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INHomeCommunicationDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INHomeCommunicationDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INHomeCommunicationDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INHomeCommunicationDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INHomeCommunicationDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INHomeCommunicationDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INHomeCommunicationDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INHomeCommunicationDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INHomeKitDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INHomeKitDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INHomeKitDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INHomeKitDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INHomeKitDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INHomeKitDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INHomeKitDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INHomeKitDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INMediaDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INMediaDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INMediaDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INMediaDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INMediaDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INMediaDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INMediaDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INMediaDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INMessagesDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INMessagesDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INMessagesDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INMessagesDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INMessagesDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INMessagesDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INMessagesDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INMessagesDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INNotebookDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INNotebookDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INNotebookDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INNotebookDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INNotebookDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INNotebookDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INNotebookDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INNotebookDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INPaymentsDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INPaymentsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INPaymentsDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INPaymentsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INPaymentsDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INPaymentsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INPaymentsDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INPaymentsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INPhotosDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INPhotosDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INPhotosDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INPhotosDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INPhotosDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INPhotosDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INPhotosDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INPhotosDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRRaaSDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INRRaaSDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRRaaSDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INRRaaSDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRRaaSDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INRRaaSDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRRaaSDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INRRaaSDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRadioDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INRadioDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRadioDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INRadioDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRadioDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INRadioDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRadioDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INRadioDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INReservationsDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INReservationsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INReservationsDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INReservationsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INReservationsDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INReservationsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INReservationsDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INReservationsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRidesharingDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INRidesharingDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRidesharingDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INRidesharingDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRidesharingDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INRidesharingDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INRidesharingDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INRidesharingDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INSettingsDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INSettingsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INSettingsDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INSettingsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INSettingsDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INSettingsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INSettingsDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INSettingsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INTimersDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INTimersDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INTimersDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INTimersDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INTimersDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INTimersDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INTimersDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INTimersDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INVisualCodeDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INVisualCodeDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INVisualCodeDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INVisualCodeDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INVisualCodeDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INVisualCodeDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INVisualCodeDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INVisualCodeDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INVoiceCommandsDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INVoiceCommandsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INVoiceCommandsDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INVoiceCommandsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INVoiceCommandsDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INVoiceCommandsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INVoiceCommandsDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INVoiceCommandsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWellnessDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INWellnessDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWellnessDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INWellnessDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWellnessDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INWellnessDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWellnessDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INWellnessDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWorkflowDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INWorkflowDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWorkflowDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INWorkflowDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWorkflowDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INWorkflowDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWorkflowDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INWorkflowDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWorkoutsDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INWorkoutsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWorkoutsDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INWorkoutsDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWorkoutsDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INWorkoutsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INWorkoutsDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INWorkoutsDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INGenericDomainGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INGenericDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INGenericDomainGetIntentDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INGenericDomainGetIntentDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INGenericDomainGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:2];
    v3 = INGenericDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INGenericDomainGetIntentResponseDescriptionWithDataClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    v2 = [v1 substringFromIndex:5];
    v3 = INGenericDomainGetIntentResponseDescriptionWithName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _CleanUpDirectoryAsNeeded(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (([v5 isEqualToString:v3] & 1) == 0 && !rmdir(objc_msgSend(v5, "fileSystemRepresentation")))
  {
    v4 = [v5 stringByDeletingLastPathComponent];
    _CleanUpDirectoryAsNeeded(v4, v3);
  }
}

Class __getPDCPreflightManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PrivacyDisclosureCoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727DF30;
    v7 = 0;
    PrivacyDisclosureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PDCPreflightManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getPDCPreflightManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PrivacyDisclosureCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivacyDisclosureCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _INPBVoiceCommandDeviceInformationReadFrom(void *a1, void *a2)
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
          goto LABEL_45;
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

LABEL_45:
      [a1 setDeviceIdiom:v27];
    }

    else if ((v13 >> 3) == 2)
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
          goto LABEL_41;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_41:
      [a1 setIsHomePodInUltimateMode:v20];
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

void sub_18EA1B0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchableItemAttributeSetClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary();
  result = objc_getClass("CSSearchableItemAttributeSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchableItemAttributeSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCSSearchableItemClass_block_invoke(v3);
  }

  return result;
}

void __getCSSearchableItemClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSSearchableItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchableItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    CoreSpotlightLibrary();
  }
}

void CoreSpotlightLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreSpotlightLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E727E030;
    v4 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (CoreSpotlightLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __CoreSpotlightLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getCSSearchableIndexClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSSearchableIndex");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchableIndexClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(INInteraction *)v2 donateInteractionWithCompletion:v3, v4];
  }
}

void sub_18EA1D68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSAUISnippetClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SAObjectsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SAObjectsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727E018;
    v7 = 0;
    SAObjectsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SAObjectsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SAUISnippet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getSAUISnippetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SAObjectsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SAObjectsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *INAppendToNoteIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E727E0B8[a1];
  }
}

id INIntentSlotValueTransformFromIntegers(void *a1)
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

        v8 = INIntentSlotValueTransformFromInteger(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromLongs(void *a1)
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

        v8 = INIntentSlotValueTransformFromLong(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToIntegers(void *a1)
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

        v8 = INIntentSlotValueTransformToInteger(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToLongs(void *a1)
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

        v8 = INIntentSlotValueTransformToLong(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromIntegerValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromIntegerValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToIntegerValues(void *a1)
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

        v8 = INIntentSlotValueTransformToIntegerValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromLongValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromLongValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToLongValues(void *a1)
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

        v8 = INIntentSlotValueTransformToLongValue(*(*(&v12 + 1) + 8 * i));
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

_INPBInteger *INIntentSlotValueRedactedIntegerFromInteger(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(_INPBInteger);
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

          [(_INPBInteger *)v4 addValue:v10];
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

id INIntentSlotValueRedactedIntegersFromIntegers(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedIntegerFromInteger(*(*(&v17 + 1) + 8 * i), a2);
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

_INPBLong *INIntentSlotValueRedactedLongFromLong(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(_INPBLong);
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

          [(_INPBLong *)v4 addValue:v10];
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

id INIntentSlotValueRedactedLongssFromLongs(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedLongFromLong(*(*(&v17 + 1) + 8 * i), a2);
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

__CFString *INStartWorkoutIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E727E0F0[a1];
  }
}

__CFString *INAddTasksIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727E138[a1];
  }
}

void INPrivacyEntitlementOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v4 = v3;
    if (a1)
    {
      (*(v3 + 2))(v3, 1);
      v3 = v4;
    }

    if ((a1 & 2) != 0)
    {
      (*(v3 + 2))(v4, 2);
      v3 = v4;
    }
  }
}

uint64_t INPrivacyEntitlementOptionsContainsBackingType(unint64_t a1, int a2)
{
  v2 = (a1 >> 1) & 1;
  if (a2 == 1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (a2 != 2)
  {
    LOBYTE(v2) = v3;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INPrivacyEntitlementOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 == 1)
    {
      v2 = *result | 1;
    }

    if (a2 == 2)
    {
      v2 = *result | 2;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INPrivacyEntitlementOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 == 1)
    {
      v2 = *result & 0xFFFFFFFFFFFFFFFELL;
    }

    if (a2 == 2)
    {
      v2 = *result & 0xFFFFFFFFFFFFFFFDLL;
    }

    *result = v2;
  }

  return result;
}

id INPrivacyEntitlementOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"contacts"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"location"];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

uint64_t INPrivacyEntitlementOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v4 |= [v7 isEqualToString:@"contacts"];
        if ([v7 isEqualToString:@"location"])
        {
          v4 |= 2uLL;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

id INPrivacyEntitlementOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v5 = INLocalizedStringWithLocalizer(@"contacts", @"contacts", v3);
      [v4 addObject:v5];
    }

    if ((a1 & 2) != 0)
    {
      v6 = INLocalizedStringWithLocalizer(@"location", @"location", v3);
      [v4 addObject:v6];
    }

    v7 = [v4 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

__CFString *INRunVoiceCommandIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0x15)
  {
    return 0;
  }

  else
  {
    return off_1E727E168[a1];
  }
}

__CFString *INSetRadioStationIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E727E218[a1];
  }
}

id INIntentSlotValueTransformFromBools(void *a1)
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

        v8 = INIntentSlotValueTransformFromBool(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToBools(void *a1)
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

        v8 = INIntentSlotValueTransformToBool(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromBoolValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromBoolValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToBoolValues(void *a1)
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

        v8 = INIntentSlotValueTransformToBoolValue(*(*(&v12 + 1) + 8 * i));
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

_INPBBool *INIntentSlotValueRedactedBoolFromBool(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(_INPBBool);
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

          [(_INPBBool *)v4 addValue:v10];
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

id INIntentSlotValueRedactedBoolsFromBools(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedBoolFromBool(*(*(&v17 + 1) + 8 * i), a2);
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

uint64_t _INPBIntentVocabularyReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBIntentSlotVocabularyPolicy);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentSlotVocabularyPolicyReadFrom(v13, a2))
        {
          goto LABEL_32;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addIntentSlotVocabularyPolicies:v13];
        }

LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBIntentTypePhrases);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentTypePhrasesReadFrom(v13, a2))
    {
LABEL_32:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addIntentTypePhrases:v13];
    }

    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

void sub_18EA25CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchableIndexClass_block_invoke_5744(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_5746)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreSpotlightLibraryCore_block_invoke_5747;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727E2C8;
    v7 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_5746 = _sl_dlopen();
    v2 = v5[0];
    if (CoreSpotlightLibraryCore_frameworkLibrary_5746)
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
  result = objc_getClass("CSSearchableIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCSSearchableIndexClass_softClass_5743 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_5747(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_5746 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _INPBRunWorkflowIntentResponseReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_INPBArchivedObject);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBArchivedObjectReadFrom(v21, a2))
            {
LABEL_76:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setUnderlyingIntent:v21];
            goto LABEL_66;
          case 2:
            v21 = objc_alloc_init(_INPBArchivedObject);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBArchivedObjectReadFrom(v21, a2))
            {
              goto LABEL_76;
            }

            PBReaderRecallMark();
            [a1 setUnderlyingIntentResponse:v21];
            goto LABEL_66;
          case 3:
            v21 = PBReaderReadString();
            [a1 setUtterance:v21];
LABEL_66:

            goto LABEL_73;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v21 = objc_alloc_init(_INPBVoiceCommandStepInfo);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_INPBVoiceCommandStepInfoReadFrom(v21, a2))
          {
            goto LABEL_76;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addStep:v21];
          }

          goto LABEL_66;
        }

        if (v13 == 7)
        {
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
              goto LABEL_72;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_72:
          [a1 setRequestsIntentExecution:v28];
          goto LABEL_73;
        }
      }

      else
      {
        if (v13 == 4)
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
              goto LABEL_68;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_68:
          [a1 setWaitingForResume:v35];
          goto LABEL_73;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38 & 0x7F) << v14;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_70;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_70:
          [a1 setContinueRunning:v20];
          goto LABEL_73;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_73:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSendMessageAttachmentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
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
                goto LABEL_64;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_64:
            [a1 setCurrentLocation:v21];
            goto LABEL_59;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(_INPBURLValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setSpeechDataURL:v14];
            goto LABEL_58;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(_INPBFileDataAttachment);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBFileDataAttachmentReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setFile:v14];
            goto LABEL_58;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_INPBURLValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setFileURL:v14];
            goto LABEL_58;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBFileDataAttachment);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBFileDataAttachmentReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          [a1 setAudioMessageFile:v14];
          goto LABEL_58;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(_INPBURLValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          [a1 setAudioMessageFileURL:v14];
          goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(_INPBURLValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setSharedLink:v14];
            goto LABEL_58;
          case 8:
            v14 = PBReaderReadString();
            [a1 setTypeIdentifier:v14];
            goto LABEL_58;
          case 9:
            v14 = PBReaderReadString();
            [a1 setPhAssetId:v14];
LABEL_58:

            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INPaymentAmount *INIntentSlotValueTransformFromPaymentAmountValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INPaymentAmount alloc];
    v3 = [v1 hasAmountType];
    v4 = [v1 amountType];
    if (((v4 - 1 < 6) & v3) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 value];

    v7 = INIntentSlotValueTransformFromCurrencyAmountValue(v6);
    v8 = [(INPaymentAmount *)v2 initWithAmountType:v5 amount:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBPaymentAmountValue *INIntentSlotValueTransformToPaymentAmountValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPaymentAmountValue);
    v3 = [v1 amount];
    v4 = INIntentSlotValueTransformToCurrencyAmountValue(v3);
    [(_INPBPaymentAmountValue *)v2 setValue:v4];

    v5 = [v1 amountType];
    if ((v5 - 1) < 6)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    [(_INPBPaymentAmountValue *)v2 setAmountType:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromPaymentAmountValues(void *a1)
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

          v8 = INIntentSlotValueTransformFromPaymentAmountValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPaymentAmountValues(void *a1)
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

          v8 = INIntentSlotValueTransformToPaymentAmountValue(*(*(&v12 + 1) + 8 * i));
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

INModifyNickname *INIntentSlotValueTransformFromModifyNickname(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INModifyNickname alloc];
    v3 = [v1 targetNickname];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = MEMORY[0x1E696AD98];
    v6 = [v1 isRemoval];

    v7 = [v5 numberWithBool:v6];
    v8 = [(INModifyNickname *)v2 initWithTargetNickname:v4 isRemoval:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBModifyNickname *INIntentSlotValueTransformToModifyNickname(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBModifyNickname);
    v3 = [v1 targetNickname];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBModifyNickname *)v2 setTargetNickname:v4];

    v5 = [v1 isRemoval];

    -[_INPBModifyNickname setIsRemoval:](v2, "setIsRemoval:", [v5 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromModifyNicknames(void *a1)
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

          v8 = INIntentSlotValueTransformFromModifyNickname(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToModifyNicknames(void *a1)
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

          v8 = INIntentSlotValueTransformToModifyNickname(*(*(&v12 + 1) + 8 * i));
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

INCallGroup *INIntentSlotValueTransformFromCallGroup(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INCallGroup alloc];
    v3 = [v1 groupName];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = [v1 groupId];

    v6 = INIntentSlotValueTransformFromString(v5);
    v7 = [(INCallGroup *)v2 initWithGroupName:v4 groupId:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBCallGroup *INIntentSlotValueTransformToCallGroup(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCallGroup);
    v3 = [v1 groupName];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBCallGroup *)v2 setGroupName:v4];

    v5 = [v1 groupId];

    v6 = INIntentSlotValueTransformToString(v5);
    [(_INPBCallGroup *)v2 setGroupId:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformToCallGroups(void *a1)
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

          v8 = INIntentSlotValueTransformToCallGroup(*(*(&v12 + 1) + 8 * i));
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

uint64_t INCarAudioSourceGetBackingType(uint64_t result)
{
  if ((result - 1) < 9)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INCarAudioSourceGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 9) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INCarAudioSourceGetName(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E727E498 + a1 - 1);
  }
}

uint64_t INCarAudioSourceWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"CarPlay"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"iPod"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"radio"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"bluetooth"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"AUX"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"USB"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"memoryCard"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"opticalDrive"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"hardDrive"])
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCarAudioSourceGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v5 = @"radio";
      }

      else
      {
        v5 = @"bluetooth";
      }
    }

    else if (a1 == 1)
    {
      v5 = @"CarPlay";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_21;
      }

      v5 = @"iPod";
    }
  }

  else if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v5 = @"AUX";
    }

    else
    {
      v5 = @"USB";
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        v5 = @"memory card";
        break;
      case 8:
        v5 = @"optical drive";
        break;
      case 9:
        v5 = @"hard drive";
        break;
      default:
        goto LABEL_21;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_21:

  return v4;
}

id __INExtensionGetDefaultIntentHandler(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    v5 = [a2 _className];
    v6 = [v5 stringByAppendingString:@"Handling"];

    v7 = NSProtocolFromString(v6);
    if (v7 && [v3 conformsToProtocol:v7])
    {
      v4 = v3;
    }

    else
    {
      v8 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v11 = v8;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 136315906;
        v15 = "__INExtensionGetDefaultIntentHandler";
        v16 = 2114;
        v17 = v13;
        v18 = 2082;
        v19 = "__INExtensionGetDefaultIntentHandler";
        v20 = 2114;
        v21 = v6;
        _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s Class %{public}@ must either implement the method %{public}s or must itself conform to protocol %{public}@", &v14, 0x2Au);
      }

      v4 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t _INPBCreateEventIntentReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
LABEL_44:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setTitle:v14];
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v14 = objc_alloc_init(_INPBLocation);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            PBReaderRecallMark();
            [a1 setLocation:v14];
            goto LABEL_37;
          case 4:
            v14 = objc_alloc_init(_INPBContact);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addParticipants:v14];
            }

            goto LABEL_37;
          case 3:
            v14 = objc_alloc_init(_INPBDateTimeRangeValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            PBReaderRecallMark();
            [a1 setDateTimeRange:v14];
            goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INAudioCallTTYTypeGetBackingType(uint64_t a1)
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

uint64_t INAudioCallTTYTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INAudioCallTTYTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E727E4E0 + a1 - 1);
  }
}

uint64_t INAudioCallTTYTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"none"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"direct"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"relay"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INAudioCallTTYTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"relay";
      goto LABEL_7;
    case 2:
      v4 = @"direct";
      goto LABEL_7;
    case 1:
      v4 = @"none";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBHomeEntityReadFrom(void *a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v21 = objc_alloc_init(_INPBDataString);
              v51 = 0;
              v52 = 0;
              if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
              {
LABEL_128:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setEntityName:v21];
              goto LABEL_97;
            case 0xB:
              v21 = objc_alloc_init(_INPBDataString);
              v51 = 0;
              v52 = 0;
              if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
              {
                goto LABEL_128;
              }

              PBReaderRecallMark();
              [a1 setGroup:v21];
              goto LABEL_97;
            case 0xC:
              v21 = objc_alloc_init(_INPBDataString);
              v51 = 0;
              v52 = 0;
              if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
              {
                goto LABEL_128;
              }

              PBReaderRecallMark();
              if (v21)
              {
                [a1 addZones:v21];
              }

              goto LABEL_97;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v21 = objc_alloc_init(_INPBDataString);
              v51 = 0;
              v52 = 0;
              if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
              {
                goto LABEL_128;
              }

              PBReaderRecallMark();
              [a1 setRoom:v21];
              goto LABEL_97;
            case 8:
              v21 = objc_alloc_init(_INPBDataString);
              v51 = 0;
              v52 = 0;
              if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
              {
                goto LABEL_128;
              }

              PBReaderRecallMark();
              [a1 setZone:v21];
              goto LABEL_97;
            case 9:
              v21 = objc_alloc_init(_INPBDataString);
              v51 = 0;
              v52 = 0;
              if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
              {
                goto LABEL_128;
              }

              PBReaderRecallMark();
              [a1 setHome:v21];
              goto LABEL_97;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            if ((v12 & 7) == 2)
            {
              v51 = 0;
              v52 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v30 = [a2 position];
                if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v31 = 0;
                v32 = 0;
                v33 = 0;
                while (1)
                {
                  v53 = 0;
                  v34 = [a2 position] + 1;
                  if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                  {
                    v36 = [a2 data];
                    [v36 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v33 |= (v53 & 0x7F) << v31;
                  if ((v53 & 0x80) == 0)
                  {
                    break;
                  }

                  v31 += 7;
                  v11 = v32++ >= 9;
                  if (v11)
                  {
                    goto LABEL_77;
                  }
                }

                [a2 hasError];
LABEL_77:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
              while (1)
              {
                LOBYTE(v51) = 0;
                v48 = [a2 position] + 1;
                if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
                {
                  v50 = [a2 data];
                  [v50 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v47 |= (v51 & 0x7F) << v45;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v11 = v46++ >= 9;
                if (v11)
                {
                  goto LABEL_125;
                }
              }

              [a2 hasError];
LABEL_125:
              PBRepeatedInt32Add();
            }

            goto LABEL_98;
          case 5:
            v21 = PBReaderReadString();
            [a1 setEntityIdentifier:v21];
LABEL_97:

            goto LABEL_98;
          case 6:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v51 & 0x7F) << v22;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_109;
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

LABEL_109:
            [a1 setSceneType:v28];
            goto LABEL_98;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_INPBString);
            v51 = 0;
            v52 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v21, a2))
            {
              goto LABEL_128;
            }

            PBReaderRecallMark();
            [a1 setName:v21];
            goto LABEL_97;
          case 2:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v51 & 0x7F) << v37;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_113;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v39;
            }

LABEL_113:
            [a1 setEntityType:v43];
            goto LABEL_98;
          case 3:
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
                goto LABEL_105;
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

LABEL_105:
            [a1 setDeviceType:v20];
            goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_98:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INUpdateEventConfirmationReasonGetBackingType(uint64_t a1)
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

uint64_t INUpdateEventConfirmationReasonGetFacadeType(int a1, int a2)
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