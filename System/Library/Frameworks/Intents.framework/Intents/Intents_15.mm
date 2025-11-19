uint64_t INSearchForContactIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72877A0 + a1);
  }
}

uint64_t _INPBSetRelationshipIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBContactCard);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBContactCardReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setMeCard:v13];
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

uint64_t INSetRelationshipIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287810 + a1);
  }
}

uint64_t _INPBSearchForMeCardIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBContactCard);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBContactCardReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setMeCard:v13];
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

uint64_t _INPBSearchForContactIntentReadFrom(void *a1, void *a2)
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
          [a1 addContactIdentifiers:v13];
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

uint64_t _INPBSetNicknameIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBContactCard);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBContactCardReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setMeCard:v13];
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

uint64_t INSetNicknameIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287868 + a1);
  }
}

uint64_t _INPBRetrieveParkingLocationIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBLocation);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setParkingLocation:v13];
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

    v13 = objc_alloc_init(_INPBString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setParkingNote:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INRetrieveParkingLocationIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72878C0 + a1);
  }
}

uint64_t _INPBRetrieveParkingLocationIntentReadFrom(void *a1, void *a2)
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

uint64_t _INPBPrivateMediaItemValueDataReadFrom(void *a1, void *a2)
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
      LOBYTE(v48[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v48[0] & 0x7F) << v5;
      if ((v48[0] & 0x80) == 0)
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
        [a1 setRecommendationId:v13];
        goto LABEL_73;
      case 2u:
        v13 = PBReaderReadString();
        [a1 setAssetInfo:v13];
        goto LABEL_73;
      case 3u:
        v13 = PBReaderReadString();
        [a1 setSharedUserIdFromPlayableMusicAccount:v13];
        goto LABEL_73;
      case 4u:
        v13 = PBReaderReadString();
        [a1 setPunchoutURI:v13];
        goto LABEL_73;
      case 5u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v48[0] & 0x7F) << v14;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_79;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_79:
        [a1 setRequiresSubscription:v20];
        goto LABEL_74;
      case 6u:
        v13 = PBReaderReadString();
        [a1 setProvider:v13];
        goto LABEL_73;
      case 7u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v48[0] & 0x7F) << v38;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v44 = 0;
            goto LABEL_87;
          }
        }

        v44 = (v40 != 0) & ~[a2 hasError];
LABEL_87:
        [a1 setIsAvailable:v44];
        goto LABEL_74;
      case 8u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v48[0] & 0x7F) << v24;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_81;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_81:
        [a1 setIsHardBan:v30];
        goto LABEL_74;
      case 9u:
        v13 = PBReaderReadString();
        [a1 setBundleId:v13];
        goto LABEL_73;
      case 0xAu:
        v13 = PBReaderReadString();
        [a1 setUniversalResourceLink:v13];
        goto LABEL_73;
      case 0xBu:
        v13 = PBReaderReadString();
        [a1 setProviderAppName:v13];
        goto LABEL_73;
      case 0xCu:
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addInternalSignal:v13];
        }

        goto LABEL_73;
      case 0xDu:
        LODWORD(v48[0]) = 0;
        v21 = [a2 position] + 4;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:v48 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v23) = v48[0];
        [a1 setAmpConfidenceScore:v23];
        goto LABEL_74;
      case 0xEu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v48[0] & 0x7F) << v31;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_85;
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

LABEL_85:
        [a1 setAmpConfidenceLevel:v37];
        goto LABEL_74;
      case 0xFu:
        v13 = PBReaderReadData();
        [a1 setPegasusMetaData:v13];
        goto LABEL_73;
      default:
        if ((v12 >> 3) != 100)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

LABEL_74:
          v45 = [a2 position];
          if (v45 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        v13 = objc_alloc_init(_INPBMediaSubItem);
        v48[0] = 0;
        v48[1] = 0;
        if (PBReaderPlaceMark() && _INPBMediaSubItemReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          if (v13)
          {
            [a1 addMediaSubItems:v13];
          }

LABEL_73:

          goto LABEL_74;
        }

        return 0;
    }
  }
}

INPrivateMediaItemValueData *INIntentSlotValueTransformFromPrivateMediaItemValueData(INPrivateMediaItemValueData *a1)
{
  if (a1)
  {
    v2 = a1;
    v17 = [INPrivateMediaItemValueData alloc];
    v25 = [(INPrivateMediaItemValueData *)v2 recommendationId];
    v24 = [(INPrivateMediaItemValueData *)v2 assetInfo];
    v22 = [(INPrivateMediaItemValueData *)v2 sharedUserIdFromPlayableMusicAccount];
    v21 = [(INPrivateMediaItemValueData *)v2 punchoutURI];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivateMediaItemValueData requiresSubscription](v2, "requiresSubscription")}];
    v19 = [(INPrivateMediaItemValueData *)v2 provider];
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivateMediaItemValueData isAvailable](v2, "isAvailable")}];
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivateMediaItemValueData isHardBan](v2, "isHardBan")}];
    v4 = [(INPrivateMediaItemValueData *)v2 bundleId];
    v16 = [(INPrivateMediaItemValueData *)v2 universalResourceLink];
    v5 = [(INPrivateMediaItemValueData *)v2 providerAppName];
    v6 = [(INPrivateMediaItemValueData *)v2 internalSignals];
    v7 = MEMORY[0x1E696AD98];
    [(INPrivateMediaItemValueData *)v2 ampConfidenceScore];
    v8 = [v7 numberWithFloat:?];
    v9 = [(INPrivateMediaItemValueData *)v2 hasAmpConfidenceLevel];
    v10 = [(INPrivateMediaItemValueData *)v2 ampConfidenceLevel];
    if (!v9)
    {
      goto LABEL_7;
    }

    switch(v10)
    {
      case 30:
        v11 = 3;
        break;
      case 20:
        v11 = 2;
        break;
      case 10:
        v11 = 1;
        break;
      default:
LABEL_7:
        v11 = 0;
        break;
    }

    v12 = [(INPrivateMediaItemValueData *)v2 pegasusMetaData];
    v13 = [(INPrivateMediaItemValueData *)v2 mediaSubItems];

    v14 = INIntentSlotValueTransformFromMediaSubItems(v13);
    v18 = [(INPrivateMediaItemValueData *)v17 initWithRecommendationId:v25 assetInfo:v24 sharedUserIdFromPlayableMusicAccount:v22 punchoutURI:v21 requiresSubscription:v20 provider:v19 isAvailable:v23 isHardBan:v3 bundleId:v4 universalResourceLink:v16 providerAppName:v5 internalSignals:v6 ampConfidenceScore:v8 ampConfidenceLevel:v11 pegasusMetaData:v12 mediaSubItems:v14];

    a1 = v18;
    v1 = vars8;
  }

  return a1;
}

_INPBPrivateMediaItemValueData *INIntentSlotValueTransformToPrivateMediaItemValueData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPrivateMediaItemValueData);
    v3 = [v1 recommendationId];
    [(_INPBPrivateMediaItemValueData *)v2 setRecommendationId:v3];

    v4 = [v1 assetInfo];
    [(_INPBPrivateMediaItemValueData *)v2 setAssetInfo:v4];

    v5 = [v1 sharedUserIdFromPlayableMusicAccount];
    [(_INPBPrivateMediaItemValueData *)v2 setSharedUserIdFromPlayableMusicAccount:v5];

    v6 = [v1 punchoutURI];
    [(_INPBPrivateMediaItemValueData *)v2 setPunchoutURI:v6];

    v7 = [v1 requiresSubscription];
    -[_INPBPrivateMediaItemValueData setRequiresSubscription:](v2, "setRequiresSubscription:", [v7 BOOLValue]);

    v8 = [v1 provider];
    [(_INPBPrivateMediaItemValueData *)v2 setProvider:v8];

    v9 = [v1 isAvailable];
    -[_INPBPrivateMediaItemValueData setIsAvailable:](v2, "setIsAvailable:", [v9 BOOLValue]);

    v10 = [v1 isHardBan];
    -[_INPBPrivateMediaItemValueData setIsHardBan:](v2, "setIsHardBan:", [v10 BOOLValue]);

    v11 = [v1 bundleId];
    [(_INPBPrivateMediaItemValueData *)v2 setBundleId:v11];

    v12 = [v1 universalResourceLink];
    [(_INPBPrivateMediaItemValueData *)v2 setUniversalResourceLink:v12];

    v13 = [v1 providerAppName];
    [(_INPBPrivateMediaItemValueData *)v2 setProviderAppName:v13];

    v14 = [v1 internalSignals];
    [(_INPBPrivateMediaItemValueData *)v2 setInternalSignals:v14];

    v15 = [v1 ampConfidenceScore];
    [v15 floatValue];
    [(_INPBPrivateMediaItemValueData *)v2 setAmpConfidenceScore:?];

    v16 = [v1 ampConfidenceLevel];
    if (v16 >= 4)
    {
      v17 = 0x7FFFFFFFLL;
    }

    else
    {
      v17 = (10 * v16);
    }

    [(_INPBPrivateMediaItemValueData *)v2 setAmpConfidenceLevel:v17];
    v18 = [v1 pegasusMetaData];
    [(_INPBPrivateMediaItemValueData *)v2 setPegasusMetaData:v18];

    v19 = [v1 mediaSubItems];

    v20 = INIntentSlotValueTransformToMediaSubItems(v19);
    [(_INPBPrivateMediaItemValueData *)v2 setMediaSubItems:v20];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromPrivateMediaItemValueDatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromPrivateMediaItemValueData(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPrivateMediaItemValueDatas(void *a1)
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

          v8 = INIntentSlotValueTransformToPrivateMediaItemValueData(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBStopShareETAIntentReadFrom(void *a1, void *a2)
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
      [a1 addRecipient:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBShareETAIntentResponseReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v21 = objc_alloc_init(_INPBContact);
        v29 = 0;
        v30 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addRecipient:v21];
        }
      }

      else if ((v12 >> 3) == 2)
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
            v14 = [a2 position];
            if (v14 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v31 = 0;
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
                goto LABEL_33;
              }
            }

            [a2 hasError];
LABEL_33:
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
              goto LABEL_52;
            }
          }

          [a2 hasError];
LABEL_52:
          PBRepeatedInt32Add();
        }
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

uint64_t _INPBShareETAIntentReadFrom(void *a1, void *a2)
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
      [a1 addRecipient:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void INShareETAMediumOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    (*(v3 + 2))(v4, 1);
    v3 = v4;
    if ((a1 & 4) == 0)
    {
LABEL_6:
      if ((a1 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_13;
  }

  (*(v3 + 2))(v3, 0);
  v3 = v4;
  if ((a1 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((a1 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_13:
  (*(v3 + 2))(v4, 2);
  v3 = v4;
  if ((a1 & 8) != 0)
  {
LABEL_7:
    (*(v3 + 2))(v4, 3);
    v3 = v4;
  }

LABEL_8:
}

uint64_t INShareETAMediumOptionsContainsBackingType(unint64_t a1, int a2)
{
  v2 = (a1 >> 2) & 1;
  v3 = (a1 >> 3) & 1;
  if (a2 != 3)
  {
    LOBYTE(v3) = 0;
  }

  if (a2 != 2)
  {
    LOBYTE(v2) = v3;
  }

  v4 = (a1 >> 1) & 1;
  if (a2 != 1)
  {
    LOBYTE(v4) = 0;
  }

  if (!a2)
  {
    LOBYTE(v4) = a1;
  }

  if (a2 <= 1)
  {
    LOBYTE(v2) = v4;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INShareETAMediumOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result | 4;
    v4 = *result | 8;
    if (a2 != 3)
    {
      v4 = *result;
    }

    if (a2 != 2)
    {
      v3 = v4;
    }

    v5 = v2 | 1;
    if (a2 == 1)
    {
      v2 |= 2uLL;
    }

    if (!a2)
    {
      v2 = v5;
    }

    if (a2 > 1)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INShareETAMediumOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result & 0xFFFFFFFFFFFFFFFBLL;
    v4 = *result & 0xFFFFFFFFFFFFFFF7;
    if (a2 != 3)
    {
      v4 = *result;
    }

    if (a2 != 2)
    {
      v3 = v4;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (a2 == 1)
    {
      v2 &= ~2uLL;
    }

    if (!a2)
    {
      v2 = v5;
    }

    if (a2 > 1)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INShareETAMediumOptionsGetNames(uint64_t a1)
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

        goto LABEL_14;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"ids"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
LABEL_7:
        v4 = [v3 copy];

        goto LABEL_9;
      }

LABEL_6:
      [v3 addObject:@"SMS"];
      goto LABEL_7;
    }

LABEL_14:
    [v3 addObject:@"iMessage"];
    if ((v1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_9:

  return v4;
}

uint64_t INShareETAMediumOptionsWithNames(void *a1)
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
        v4 |= [v7 isEqualToString:@"none"];
        if ([v7 isEqualToString:@"ids"])
        {
          v4 |= 2uLL;
        }

        if ([v7 isEqualToString:@"iMessage"])
        {
          v4 |= 4uLL;
        }

        if ([v7 isEqualToString:@"SMS"])
        {
          v4 |= 8uLL;
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

id INShareETAMediumOptionsGetLocalizedNames(uint64_t a1, void *a2)
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

        goto LABEL_14;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"ids", @"ids", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
LABEL_7:
        v6 = [v4 copy];

        goto LABEL_9;
      }

LABEL_6:
      v5 = INLocalizedStringWithLocalizer(@"SMS", @"SMS", v3);
      [v4 addObject:v5];

      goto LABEL_7;
    }

LABEL_14:
    v10 = INLocalizedStringWithLocalizer(@"iMessage", @"iMessage", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_9:

  return v6;
}

uint64_t INShareETAIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287910 + a1);
  }
}

uint64_t _INPBStopShareETAIntentResponseReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v21 = objc_alloc_init(_INPBContact);
        v29 = 0;
        v30 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addRecipient:v21];
        }
      }

      else if ((v12 >> 3) == 2)
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
            v14 = [a2 position];
            if (v14 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v31 = 0;
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
                goto LABEL_33;
              }
            }

            [a2 hasError];
LABEL_33:
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
              goto LABEL_52;
            }
          }

          [a2 hasError];
LABEL_52:
          PBRepeatedInt32Add();
        }
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

uint64_t INStopShareETAIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72879B0 + a1);
  }
}

uint64_t _INPBPrivatePlayMediaIntentDataReadFrom(void *a1, void *a2)
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
      LOBYTE(v100) = 0;
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v100 & 0x7F) << v13;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_166:
            [a1 setAppSelectionEnabled:v19];
            goto LABEL_145;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
        goto LABEL_166;
      case 2u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v100 & 0x7F) << v42;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_158;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_158:
        [a1 setAppInferred:v48];
        goto LABEL_145;
      case 4u:
        v27 = objc_alloc_init(_INPBMediaItemValue);
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v27, a2))
        {
          goto LABEL_181;
        }

        PBReaderRecallMark();
        if (v27)
        {
          [a1 addAudioSearchResults:v27];
        }

        goto LABEL_144;
      case 5u:
        v27 = objc_alloc_init(_INPBPrivateMediaIntentData);
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark() || !_INPBPrivateMediaIntentDataReadFrom(v27, a2))
        {
          goto LABEL_181;
        }

        PBReaderRecallMark();
        [a1 setPrivateMediaIntentData:v27];
        goto LABEL_144;
      case 6u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v100 & 0x7F) << v28;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_152;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_152:
        [a1 setAppSelectionSignalsEnabled:v34];
        goto LABEL_145;
      case 7u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
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
            goto LABEL_162;
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

LABEL_162:
        [a1 setAppSelectionSignalsFrequencyDenominator:v55];
        goto LABEL_145;
      case 8u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v100 & 0x7F) << v63;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v69 = 0;
            goto LABEL_168;
          }
        }

        v69 = (v65 != 0) & ~[a2 hasError];
LABEL_168:
        [a1 setShouldSuppressCommonWholeHouseAudioRoutes:v69];
        goto LABEL_145;
      case 9u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v100 & 0x7F) << v70;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v76 = 0;
            goto LABEL_170;
          }
        }

        v76 = (v72 != 0) & ~[a2 hasError];
LABEL_170:
        [a1 setImmediatelyStartPlayback:v76];
        goto LABEL_145;
      case 0xAu:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v100 & 0x7F) << v91;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v97 = 0;
            goto LABEL_178;
          }
        }

        v97 = (v93 != 0) & ~[a2 hasError];
LABEL_178:
        [a1 setIsAmbiguousPlay:v97];
        goto LABEL_145;
      case 0xBu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v100 & 0x7F) << v84;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            v90 = 0;
            goto LABEL_176;
          }
        }

        v90 = (v86 != 0) & ~[a2 hasError];
LABEL_176:
        [a1 setIsPersonalizedRequest:v90];
        goto LABEL_145;
      case 0xCu:
        v27 = PBReaderReadString();
        if (v27)
        {
          [a1 addInternalSignal:v27];
        }

        goto LABEL_144;
      case 0xDu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v100 & 0x7F) << v56;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v62 = 0;
            goto LABEL_164;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_164:
        [a1 setEntityConfidenceSignalsEnabled:v62];
        goto LABEL_145;
      case 0xEu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v100 & 0x7F) << v35;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_156;
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

LABEL_156:
        [a1 setEntityConfidenceSignalsFrequencyDenominatorInternal:v41];
        goto LABEL_145;
      case 0xFu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v100 & 0x7F) << v20;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_150;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_150:
        [a1 setEntityConfidenceSignalsFrequencyDenominatorProd:v26];
        goto LABEL_145;
      case 0x10u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v100 & 0x7F) << v77;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v83 = 0;
            goto LABEL_174;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_174:
        [a1 setEntityConfidenceSignalsMaxItemsToDisambiguate:v83];
        goto LABEL_145;
      case 0x11u:
        v27 = objc_alloc_init(_INPBString);
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v27, a2))
        {
          goto LABEL_181;
        }

        PBReaderRecallMark();
        [a1 setAlternativeProviderBundleIdentifier:v27];
        goto LABEL_144;
      case 0x12u:
        v27 = objc_alloc_init(_INPBString);
        v100 = 0;
        v101 = 0;
        if (PBReaderPlaceMark() && _INPBStringReadFrom(v27, a2))
        {
          PBReaderRecallMark();
          [a1 setAmpPAFDataSetID:v27];
LABEL_144:

LABEL_145:
          v98 = [a2 position];
          if (v98 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_181:

        return 0;
      case 0x13u:
        v27 = PBReaderReadData();
        [a1 setPegasusMetaData:v27];
        goto LABEL_144;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_145;
    }
  }
}

id INIntentSlotValueTransformFromPrivatePlayMediaIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromPrivatePlayMediaIntentData(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPrivatePlayMediaIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformToPrivatePlayMediaIntentData(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBBusTripReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            [a1 setArrivalPlatform:v14];
            goto LABEL_42;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(_INPBLocationValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
            {
LABEL_49:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setArrivalBusStopLocation:v14];
            goto LABEL_42;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(_INPBLocationValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
            {
              goto LABEL_49;
            }

            PBReaderRecallMark();
            [a1 setDepartureBusStopLocation:v14];
            goto LABEL_42;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            [a1 setDeparturePlatform:v14];
            goto LABEL_42;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          [a1 setBusNumber:v14];
          goto LABEL_42;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBDateTimeRange);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          [a1 setTripDuration:v14];
          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setProvider:v14];
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setBusName:v14];
LABEL_42:

          goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBBoatTripReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
LABEL_42:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTripDuration:v14];
            goto LABEL_38;
          case 5:
            v14 = objc_alloc_init(_INPBLocationValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            PBReaderRecallMark();
            [a1 setDepartureBoatTerminalLocation:v14];
            goto LABEL_38;
          case 6:
            v14 = objc_alloc_init(_INPBLocationValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            PBReaderRecallMark();
            [a1 setArrivalBoatTerminalLocation:v14];
            goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            [a1 setProvider:v14];
            goto LABEL_38;
          case 2:
            v14 = PBReaderReadString();
            [a1 setBoatName:v14];
            goto LABEL_38;
          case 3:
            v14 = PBReaderReadString();
            [a1 setBoatNumber:v14];
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

INBusTrip *INIntentSlotValueTransformFromBusTrip(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v14 = [INBusTrip alloc];
    v13 = [v1 provider];
    v12 = [v1 busName];
    v2 = [v1 busNumber];
    v15 = [v1 tripDuration];
    v3 = INIntentSlotValueTransformFromDateTimeRange(v15);
    v4 = [v1 departureBusStopLocation];
    v5 = INIntentSlotValueTransformFromLocationValue(v4);
    v6 = [v1 departurePlatform];
    v7 = [v1 arrivalBusStopLocation];
    v8 = INIntentSlotValueTransformFromLocationValue(v7);
    v9 = [v1 arrivalPlatform];

    v10 = [(INBusTrip *)v14 initWithProvider:v13 busName:v12 busNumber:v2 tripDuration:v3 departureBusStopLocation:v5 departurePlatform:v6 arrivalBusStopLocation:v8 arrivalPlatform:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBBusTrip *INIntentSlotValueTransformToBusTrip(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBBusTrip);
    v3 = [v1 provider];
    [(_INPBBusTrip *)v2 setProvider:v3];

    v4 = [v1 busName];
    [(_INPBBusTrip *)v2 setBusName:v4];

    v5 = [v1 busNumber];
    [(_INPBBusTrip *)v2 setBusNumber:v5];

    v6 = [v1 tripDuration];
    v7 = INIntentSlotValueTransformToDateTimeRange(v6);
    [(_INPBBusTrip *)v2 setTripDuration:v7];

    v8 = [v1 departureBusStopLocation];
    v9 = INIntentSlotValueTransformToLocationValue(v8);
    [(_INPBBusTrip *)v2 setDepartureBusStopLocation:v9];

    v10 = [v1 departurePlatform];
    [(_INPBBusTrip *)v2 setDeparturePlatform:v10];

    v11 = [v1 arrivalBusStopLocation];
    v12 = INIntentSlotValueTransformToLocationValue(v11);
    [(_INPBBusTrip *)v2 setArrivalBusStopLocation:v12];

    v13 = [v1 arrivalPlatform];

    [(_INPBBusTrip *)v2 setArrivalPlatform:v13];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromBusTrips(void *a1)
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

          v8 = INIntentSlotValueTransformFromBusTrip(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToBusTrips(void *a1)
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

          v8 = INIntentSlotValueTransformToBusTrip(*(*(&v12 + 1) + 8 * i));
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

INBoatTrip *INIntentSlotValueTransformFromBoatTrip(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v13 = [INBoatTrip alloc];
    v2 = [v1 provider];
    v3 = [v1 boatName];
    v4 = [v1 boatNumber];
    v5 = [v1 tripDuration];
    v6 = INIntentSlotValueTransformFromDateTimeRange(v5);
    v7 = [v1 departureBoatTerminalLocation];
    v8 = INIntentSlotValueTransformFromLocationValue(v7);
    v9 = [v1 arrivalBoatTerminalLocation];

    v10 = INIntentSlotValueTransformFromLocationValue(v9);
    v11 = [(INBoatTrip *)v13 initWithProvider:v2 boatName:v3 boatNumber:v4 tripDuration:v6 departureBoatTerminalLocation:v8 arrivalBoatTerminalLocation:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBBoatTrip *INIntentSlotValueTransformToBoatTrip(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBBoatTrip);
    v3 = [v1 provider];
    [(_INPBBoatTrip *)v2 setProvider:v3];

    v4 = [v1 boatName];
    [(_INPBBoatTrip *)v2 setBoatName:v4];

    v5 = [v1 boatNumber];
    [(_INPBBoatTrip *)v2 setBoatNumber:v5];

    v6 = [v1 tripDuration];
    v7 = INIntentSlotValueTransformToDateTimeRange(v6);
    [(_INPBBoatTrip *)v2 setTripDuration:v7];

    v8 = [v1 departureBoatTerminalLocation];
    v9 = INIntentSlotValueTransformToLocationValue(v8);
    [(_INPBBoatTrip *)v2 setDepartureBoatTerminalLocation:v9];

    v10 = [v1 arrivalBoatTerminalLocation];

    v11 = INIntentSlotValueTransformToLocationValue(v10);
    [(_INPBBoatTrip *)v2 setArrivalBoatTerminalLocation:v11];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromBoatTrips(void *a1)
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

          v8 = INIntentSlotValueTransformFromBoatTrip(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToBoatTrips(void *a1)
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

          v8 = INIntentSlotValueTransformToBoatTrip(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBMediaSubItemReadFrom(void *a1, void *a2)
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
      [a1 setIdentifier:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setAssetInfo:v14];
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

INMediaSubItem *INIntentSlotValueTransformFromMediaSubItem(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INMediaSubItem alloc];
    v3 = [v1 identifier];
    v4 = [v1 assetInfo];

    v5 = [(INMediaSubItem *)v2 initWithIdentifier:v3 assetInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBMediaSubItem *INIntentSlotValueTransformToMediaSubItem(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBMediaSubItem);
    v3 = [v1 identifier];
    [(_INPBMediaSubItem *)v2 setIdentifier:v3];

    v4 = [v1 assetInfo];

    [(_INPBMediaSubItem *)v2 setAssetInfo:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromMediaSubItems(void *a1)
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

          v8 = INIntentSlotValueTransformFromMediaSubItem(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToMediaSubItems(void *a1)
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

          v8 = INIntentSlotValueTransformToMediaSubItem(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromSpeakerIDInfos(void *a1)
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

          v8 = INIntentSlotValueTransformFromSpeakerIDInfo(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToSpeakerIDInfos(void *a1)
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

          v8 = INIntentSlotValueTransformToSpeakerIDInfo(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromPrivateMediaIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromPrivateMediaIntentData(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPrivateMediaIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformToPrivateMediaIntentData(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBSpeakerIDInfoReadFrom(void *a1, void *a2)
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
        [a1 setSharedUserID:v20];
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
        [a1 setSpeakerIDConfidence:v19];
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

uint64_t _INPBPrivateMediaIntentDataReadFrom(void *a1, void *a2)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(_INPBSpeakerIDInfo);
        v59 = 0;
        v60 = 0;
        if (!PBReaderPlaceMark() || !_INPBSpeakerIDInfoReadFrom(v13, a2))
        {
          goto LABEL_112;
        }

        PBReaderRecallMark();
        [a1 setSpeakerIDInfo:v13];
        goto LABEL_71;
      case 2u:
        v13 = objc_alloc_init(_INPBAppIdentifier);
        v59 = 0;
        v60 = 0;
        if (!PBReaderPlaceMark() || !_INPBAppIdentifierReadFrom(v13, a2))
        {
          goto LABEL_112;
        }

        PBReaderRecallMark();
        [a1 setProxiedThirdPartyAppInfo:v13];
        goto LABEL_71;
      case 3u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          LOBYTE(v59) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v59 & 0x7F) << v24;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_95;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_95:
        [a1 setIsAppAttributionRequired:v30];
        goto LABEL_72;
      case 4u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          LOBYTE(v59) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v59 & 0x7F) << v31;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_97;
          }
        }

        v37 = (v33 != 0) & ~[a2 hasError];
LABEL_97:
        [a1 setUseDialogMemoryForAttribution:v37];
        goto LABEL_72;
      case 5u:
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
            goto LABEL_93;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_93:
        [a1 setIsAppCorrection:v20];
        goto LABEL_72;
      case 6u:
        v13 = objc_alloc_init(_INPBString);
        v59 = 0;
        v60 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_112;
        }

        PBReaderRecallMark();
        [a1 setFallbackUsername:v13];
        goto LABEL_71;
      case 7u:
        v13 = objc_alloc_init(_INPBWholeHouseAudioMetadata);
        v59 = 0;
        v60 = 0;
        if (!PBReaderPlaceMark() || !_INPBWholeHouseAudioMetadataReadFrom(v13, a2))
        {
          goto LABEL_112;
        }

        PBReaderRecallMark();
        [a1 setWholeHouseAudioMetadata:v13];
        goto LABEL_71;
      case 8u:
        LODWORD(v59) = 0;
        v38 = [a2 position] + 4;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 4, v39 <= objc_msgSend(a2, "length")))
        {
          v57 = [a2 data];
          [v57 getBytes:&v59 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v40) = v59;
        [a1 setNlConfidenceScore:v40];
        goto LABEL_72;
      case 9u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v59) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v59 & 0x7F) << v49;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_105;
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

LABEL_105:
        [a1 setNlConfidenceLevel:v55];
        goto LABEL_72;
      case 0xAu:
        LODWORD(v59) = 0;
        v21 = [a2 position] + 4;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
        {
          v56 = [a2 data];
          [v56 getBytes:&v59 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v23) = v59;
        [a1 setAsrConfidenceScore:v23];
        goto LABEL_72;
      case 0xBu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v59) = 0;
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
            v48 = 0;
            goto LABEL_101;
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

LABEL_101:
        [a1 setAsrConfidenceLevel:v48];
        goto LABEL_72;
      case 0xCu:
        v13 = objc_alloc_init(_INPBString);
        v59 = 0;
        v60 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_112;
        }

        PBReaderRecallMark();
        [a1 setResolvedSharedUserID:v13];
        goto LABEL_71;
      case 0xDu:
        v13 = objc_alloc_init(_INPBHomeAutomationEntityProvider);
        v59 = 0;
        v60 = 0;
        if (PBReaderPlaceMark() && _INPBHomeAutomationEntityProviderReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setHomeAutomationEntityProvider:v13];
LABEL_71:

LABEL_72:
          v41 = [a2 position];
          if (v41 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_112:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_72;
    }
  }
}

uint64_t _INPBPrivateAddMediaIntentDataReadFrom(void *a1, void *a2)
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
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addInternalSignal:v14];
          }

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          [a1 setPegasusMetaData:v14];
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBPrivateMediaIntentData);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBPrivateMediaIntentDataReadFrom(v14, a2))
          {
LABEL_38:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setPrivateMediaIntentData:v14];
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBMediaItemValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addAudioSearchResults:v14];
          }

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

INPrivateAddMediaIntentData *INIntentSlotValueTransformFromPrivateAddMediaIntentData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INPrivateAddMediaIntentData alloc];
    v3 = [v1 privateMediaIntentData];
    v4 = INIntentSlotValueTransformFromPrivateMediaIntentData(v3);
    v5 = [v1 audioSearchResults];
    v6 = INIntentSlotValueTransformFromMediaItemValues(v5);
    v7 = [v1 internalSignals];
    v8 = [v1 pegasusMetaData];

    v9 = [(INPrivateAddMediaIntentData *)v2 initWithPrivateMediaIntentData:v4 audioSearchResults:v6 internalSignals:v7 pegasusMetaData:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

_INPBPrivateAddMediaIntentData *INIntentSlotValueTransformToPrivateAddMediaIntentData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPrivateAddMediaIntentData);
    v3 = [v1 privateMediaIntentData];
    v4 = INIntentSlotValueTransformToPrivateMediaIntentData(v3);
    [(_INPBPrivateAddMediaIntentData *)v2 setPrivateMediaIntentData:v4];

    v5 = [v1 audioSearchResults];
    v6 = INIntentSlotValueTransformToMediaItemValues(v5);
    [(_INPBPrivateAddMediaIntentData *)v2 setAudioSearchResults:v6];

    v7 = [v1 internalSignals];
    [(_INPBPrivateAddMediaIntentData *)v2 setInternalSignals:v7];

    v8 = [v1 pegasusMetaData];

    [(_INPBPrivateAddMediaIntentData *)v2 setPegasusMetaData:v8];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromPrivateAddMediaIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromPrivateAddMediaIntentData(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPrivateAddMediaIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformToPrivateAddMediaIntentData(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBPrivateUpdateMediaAffinityIntentDataReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBPrivateMediaIntentData);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBPrivateMediaIntentDataReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPrivateMediaIntentData:v14];
        goto LABEL_26;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addInternalSignal:v14];
        }

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    [a1 setPegasusMetaData:v14];
LABEL_26:

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

INPrivateUpdateMediaAffinityIntentData *INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INPrivateUpdateMediaAffinityIntentData alloc];
    v3 = [v1 privateMediaIntentData];
    v4 = INIntentSlotValueTransformFromPrivateMediaIntentData(v3);
    v5 = [v1 internalSignals];
    v6 = [v1 pegasusMetaData];

    v7 = [(INPrivateUpdateMediaAffinityIntentData *)v2 initWithPrivateMediaIntentData:v4 internalSignals:v5 pegasusMetaData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBPrivateUpdateMediaAffinityIntentData *INIntentSlotValueTransformToPrivateUpdateMediaAffinityIntentData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPrivateUpdateMediaAffinityIntentData);
    v3 = [v1 privateMediaIntentData];
    v4 = INIntentSlotValueTransformToPrivateMediaIntentData(v3);
    [(_INPBPrivateUpdateMediaAffinityIntentData *)v2 setPrivateMediaIntentData:v4];

    v5 = [v1 internalSignals];
    [(_INPBPrivateUpdateMediaAffinityIntentData *)v2 setInternalSignals:v5];

    v6 = [v1 pegasusMetaData];

    [(_INPBPrivateUpdateMediaAffinityIntentData *)v2 setPegasusMetaData:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentData(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPrivateUpdateMediaAffinityIntentDatas(void *a1)
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

          v8 = INIntentSlotValueTransformToPrivateUpdateMediaAffinityIntentData(*(*(&v12 + 1) + 8 * i));
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

unint64_t INSpeakerIDConfidenceGetBackingType(unint64_t result)
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

uint64_t INSpeakerIDConfidenceGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INSpeakerIDConfidenceGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7287A68 + a1 - 1);
  }
}

uint64_t INSpeakerIDConfidenceWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"fullConfidence"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"highConfidence"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"mediumConfidence"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"ambiguousConfidence"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"noConfidence"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSpeakerIDConfidenceGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"full confidence";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"high confidence";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"medium confidence";
        break;
      case 4:
        v5 = @"ambiguous confidence";
        break;
      case 5:
        v5 = @"no confidence";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

uint64_t _INPBSendAnnouncementIntentReadFrom(void *a1, void *a2)
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
LABEL_51:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBAnnouncement);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBAnnouncementReadFrom(v21, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setAnnouncement:v21];
          goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_INPBHomeFilter);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBHomeFilterReadFrom(v21, a2))
            {
              goto LABEL_51;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addRecipients:v21];
            }

            goto LABEL_43;
          case 5:
            v21 = PBReaderReadString();
            [a1 setSharedUserID:v21];
LABEL_43:

            goto LABEL_48;
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
                goto LABEL_47;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
            [a1 setIsReply:v20];
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

uint64_t _INPBSendAnnouncementIntentResponseReadFrom(void *a1, void *a2)
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
          [a1 addSentAnnouncements:v13];
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

uint64_t INSendAnnouncementIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287A90 + a1);
  }
}

uint64_t INSetNumericSettingIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287B08 + a1);
  }
}

uint64_t INGetSettingIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287B58 + a1);
  }
}

uint64_t _INPBSetLabeledSettingIntentResponseReadFrom(void *a1, void *a2)
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
      [a1 setOldValue:v15];
      goto LABEL_24;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setUpdatedValue:v15];
      goto LABEL_24;
    }

    if (v14 == 3)
    {
      v15 = PBReaderReadString();
      [a1 setErrorDetail:v15];
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

uint64_t INSetTemporalSettingIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287B98 + a1);
  }
}

uint64_t _INPBSetBinarySettingIntentResponseReadFrom(void *a1, void *a2)
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
      v31 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v31 & 0x7F) << v6;
      if ((v31 & 0x80) == 0)
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
    if ((v13 >> 3) == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v33 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v33 & 0x7F) << v23;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v12 = v24++ >= 9;
        if (v12)
        {
          v29 = 0;
          goto LABEL_45;
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

LABEL_45:
      [a1 setOldValue:v29];
    }

    else if (v14 == 3)
    {
      v22 = PBReaderReadString();
      [a1 setErrorDetail:v22];
    }

    else if (v14 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v32 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v32 & 0x7F) << v15;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_49;
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

LABEL_49:
      [a1 setUpdatedValue:v21];
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

INSettingMetadata *INIntentSlotValueTransformFromSettingMetadata(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INSettingMetadata alloc];
    v3 = [v1 settingId];
    v4 = [v1 targetDevice];
    v5 = INIntentSlotValueTransformFromDevice(v4);
    v6 = [v1 targetApp];

    v7 = INIntentSlotValueTransformFromAppIdentifier(v6);
    v8 = [(INSettingMetadata *)v2 initWithSettingId:v3 targetDevice:v5 targetApp:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBSettingMetadata *INIntentSlotValueTransformToSettingMetadata(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBSettingMetadata);
    v3 = [v1 settingId];
    [(_INPBSettingMetadata *)v2 setSettingId:v3];

    v4 = [v1 targetDevice];
    v5 = INIntentSlotValueTransformToDevice(v4);
    [(_INPBSettingMetadata *)v2 setTargetDevice:v5];

    v6 = [v1 targetApp];

    v7 = INIntentSlotValueTransformToAppIdentifier(v6);
    [(_INPBSettingMetadata *)v2 setTargetApp:v7];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromSettingMetadatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromSettingMetadata(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToSettingMetadatas(void *a1)
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

          v8 = INIntentSlotValueTransformToSettingMetadata(*(*(&v12 + 1) + 8 * i));
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

uint64_t INSetLabeledSettingIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287BF8 + a1);
  }
}

uint64_t INBinarySettingValueGetBackingType(uint64_t result)
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

uint64_t INBinarySettingValueGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INBinarySettingValueGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7287C40 + a1 - 1);
  }
}

uint64_t INBinarySettingValueWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"on"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"off"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"toggle"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INBinarySettingValueGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"toggle";
      goto LABEL_7;
    case 2:
      v4 = @"off";
      goto LABEL_7;
    case 1:
      v4 = @"on";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBGetSettingResponseDataReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBSettingMetadata);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBSettingMetadataReadFrom(v21, a2))
          {
LABEL_62:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setSettingMetadata:v21];
          goto LABEL_48;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBNumericSettingValue);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBNumericSettingValueReadFrom(v21, a2))
          {
            goto LABEL_62;
          }

          PBReaderRecallMark();
          [a1 setNumericValue:v21];
          goto LABEL_48;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v21 = PBReaderReadString();
            [a1 setLabeledValue:v21];
LABEL_48:

            goto LABEL_59;
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
            [a1 setBinaryValue:v28];
            goto LABEL_59;
          case 3:
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
                goto LABEL_58;
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

LABEL_58:
            [a1 setBoundedValue:v20];
            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDeviceReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) == 1)
    {
      v22 = PBReaderReadString();
      [a1 setDeviceName:v22];
      goto LABEL_32;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setDeviceModel:v22];
LABEL_32:

      continue;
    }

    if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v25 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v25 & 0x7F) << v15;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_38;
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

LABEL_38:
      [a1 setDeviceCategory:v21];
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

uint64_t _INPBSetTemporalSettingIntentResponseReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBDateTimeRange);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setOldValue:v14];
        goto LABEL_27;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        [a1 setErrorDetail:v14];
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBDateTimeRange);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    PBReaderRecallMark();
    [a1 setUpdatedValue:v14];
    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

INSettingDevice *INIntentSlotValueTransformFromDevice(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INSettingDevice alloc];
    v3 = [v1 deviceName];
    v4 = [v1 deviceModel];
    v5 = [v1 hasDeviceCategory];
    v6 = [v1 deviceCategory];

    if (((v6 - 1 < 0xE) & v5) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(INSettingDevice *)v2 initWithDeviceName:v3 deviceModel:v4 deviceCategory:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBDevice *INIntentSlotValueTransformToDevice(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBDevice);
    v3 = [v1 deviceName];
    [(_INPBDevice *)v2 setDeviceName:v3];

    v4 = [v1 deviceModel];
    [(_INPBDevice *)v2 setDeviceModel:v4];

    v5 = [v1 deviceCategory];
    if ((v5 - 1) < 0xE)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    [(_INPBDevice *)v2 setDeviceCategory:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromDevices(void *a1)
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

          v8 = INIntentSlotValueTransformFromDevice(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToDevices(void *a1)
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

          v8 = INIntentSlotValueTransformToDevice(*(*(&v12 + 1) + 8 * i));
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

uint64_t INSettingActionGetBackingType(uint64_t result)
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

uint64_t INSettingActionGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INSettingActionGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7287CF8 + a1 - 1);
  }
}

uint64_t INSettingActionWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"set"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"increase"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"decrease"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSettingActionGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"decrease";
      goto LABEL_7;
    case 2:
      v4 = @"increase";
      goto LABEL_7;
    case 1:
      v4 = @"set";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t INSetBinarySettingIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287D10 + a1);
  }
}

uint64_t _INPBSetTemporalSettingIntentReadFrom(void *a1, void *a2)
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
LABEL_54:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBSettingMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBSettingMetadataReadFrom(v21, a2))
          {
            goto LABEL_54;
          }

          PBReaderRecallMark();
          [a1 setSettingMetadata:v21];
          goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_INPBDateTimeRangeValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            PBReaderRecallMark();
            [a1 setTimeValue:v21];
            goto LABEL_44;
          case 4:
            v21 = objc_alloc_init(_INPBTemporalEventTrigger);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBTemporalEventTriggerReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            PBReaderRecallMark();
            [a1 setTemporalEventTrigger:v21];
LABEL_44:

            goto LABEL_51;
          case 5:
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
            [a1 setAction:v20];
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

uint64_t _INPBSettingMetadataReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBAppIdentifier);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBAppIdentifierReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTargetApp:v14];
        goto LABEL_27;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        [a1 setSettingId:v14];
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBDevice);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBDeviceReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    PBReaderRecallMark();
    [a1 setTargetDevice:v14];
    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

INNumericSettingValue *INIntentSlotValueTransformFromNumericSettingValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INNumericSettingValue alloc];
    v3 = MEMORY[0x1E696AD98];
    [v1 value];
    v4 = [v3 numberWithDouble:?];
    v5 = [v1 hasUnit];
    v6 = [v1 unit];

    if (v6 == 1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(INNumericSettingValue *)v2 initWithValue:v4 unit:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBNumericSettingValue *INIntentSlotValueTransformToNumericSettingValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBNumericSettingValue);
    v3 = [v1 value];
    [v3 doubleValue];
    [(_INPBNumericSettingValue *)v2 setValue:?];

    v4 = [v1 unit];
    if (v4 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 0x7FFFFFFFLL;
    }

    [(_INPBNumericSettingValue *)v2 setUnit:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromNumericSettingValues(void *a1)
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

          v8 = INIntentSlotValueTransformFromNumericSettingValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToNumericSettingValues(void *a1)
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

          v8 = INIntentSlotValueTransformToNumericSettingValue(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBGetSettingIntentReadFrom(void *a1, void *a2)
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

      if (v13 == 2)
      {
        v21 = objc_alloc_init(_INPBSettingMetadata);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBSettingMetadataReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setSettingMetadata:v21];
LABEL_35:

        goto LABEL_42;
      }

      if (v13 == 3)
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
        [a1 setConfirmationValue:v20];
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

uint64_t _INPBSetNumericSettingIntentReadFrom(void *a1, void *a2)
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
          case 6:
            v14 = objc_alloc_init(_INPBTemporalEventTrigger);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBTemporalEventTriggerReadFrom(v14, a2))
            {
LABEL_68:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTemporalEventTrigger:v14];
            goto LABEL_47;
          case 5:
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
                goto LABEL_64;
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

LABEL_64:
            [a1 setAction:v28];
            goto LABEL_65;
          case 4:
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
                goto LABEL_60;
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

LABEL_60:
            [a1 setBoundedValue:v21];
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
            goto LABEL_47;
          case 2:
            v14 = objc_alloc_init(_INPBSettingMetadata);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBSettingMetadataReadFrom(v14, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setSettingMetadata:v14];
            goto LABEL_47;
          case 3:
            v14 = objc_alloc_init(_INPBNumericSettingValue);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBNumericSettingValueReadFrom(v14, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setNumericValue:v14];
LABEL_47:

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

uint64_t _INPBNumericSettingValueReadFrom(void *a1, void *a2)
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
      v26 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v26 & 0x7F) << v6;
      if ((v26 & 0x80) == 0)
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
      v25 = 0.0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v24 = [a2 data];
        [v24 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setValue:v25];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_37;
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

LABEL_37:
      [a1 setUnit:v20];
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

uint64_t _INPBGetSettingIntentResponseReadFrom(void *a1, void *a2)
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
        [a1 setErrorDetail:v13];
LABEL_24:

        goto LABEL_26;
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

    v13 = objc_alloc_init(_INPBGetSettingResponseData);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBGetSettingResponseDataReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addSettingResponseData:v13];
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_18ED77D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MediaRemoteLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaRemoteLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7287DC0;
    v6 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = MediaRemoteLibraryCore_frameworkLibrary;
    if (MediaRemoteLibraryCore_frameworkLibrary)
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

  v0 = MediaRemoteLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MediaPlayerLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7287DD8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = MediaPlayerLibraryCore_frameworkLibrary;
    if (MediaPlayerLibraryCore_frameworkLibrary)
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

  v0 = MediaPlayerLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

id getMPMediaItemPropertyArtwork()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyArtworkSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyArtworkSymbolLoc_ptr;
  if (!getMPMediaItemPropertyArtworkSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v6[3] = dlsym(v1, "MPMediaItemPropertyArtwork");
    getMPMediaItemPropertyArtworkSymbolLoc_ptr = v6[3];
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

uint64_t getkMRMediaRemoteNowPlayingInfoArtworkData()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr;
  v7 = getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v5[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtworkData");
    getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t getkMRMediaRemoteNowPlayingInfoArtworkDataWidth()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkDataWidthSymbolLoc_ptr;
  v7 = getkMRMediaRemoteNowPlayingInfoArtworkDataWidthSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtworkDataWidthSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v5[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtworkDataWidth");
    getkMRMediaRemoteNowPlayingInfoArtworkDataWidthSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t getkMRMediaRemoteNowPlayingInfoArtworkDataHeight()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkDataHeightSymbolLoc_ptr;
  v7 = getkMRMediaRemoteNowPlayingInfoArtworkDataHeightSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtworkDataHeightSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v5[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtworkDataHeight");
    getkMRMediaRemoteNowPlayingInfoArtworkDataHeightSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void *__getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtworkMIMEType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtworkDataHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtworkDataHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtworkDataHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtworkDataWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtworkDataWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtworkDataWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtworkData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaRemoteLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _INPBSetBinarySettingIntentReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBTemporalEventTrigger);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBTemporalEventTriggerReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setTemporalEventTrigger:v14];
          goto LABEL_42;
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
          [a1 setBinaryValue:v21];
          goto LABEL_47;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBSettingMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBSettingMetadataReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setSettingMetadata:v14];
LABEL_42:

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

uint64_t _INPBSetNumericSettingIntentResponseReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBNumericSettingValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBNumericSettingValueReadFrom(v14, a2))
          {
LABEL_43:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setOldValue:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBNumericSettingValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBNumericSettingValueReadFrom(v14, a2))
          {
            goto LABEL_43;
          }

          PBReaderRecallMark();
          [a1 setUpdatedValue:v14];
          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBNumericSettingValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBNumericSettingValueReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            PBReaderRecallMark();
            [a1 setMinValue:v14];
            goto LABEL_36;
          case 4:
            v14 = objc_alloc_init(_INPBNumericSettingValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBNumericSettingValueReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            PBReaderRecallMark();
            [a1 setMaxValue:v14];
            goto LABEL_36;
          case 5:
            v14 = PBReaderReadString();
            [a1 setErrorDetail:v14];
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

uint64_t INNumericSettingUnitGetBackingType(uint64_t a1)
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

uint64_t INNumericSettingUnitGetFacadeType(uint64_t result, int a2)
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

__CFString *INNumericSettingUnitGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"percentage";
  }

  else
  {
    return @"unknown";
  }
}

id INNumericSettingUnitGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"percentage", @"percentage", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _INPBSetLabeledSettingIntentReadFrom(void *a1, void *a2)
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
          v14 = PBReaderReadString();
          [a1 setLabeledValue:v14];
LABEL_34:

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBTemporalEventTrigger);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBTemporalEventTriggerReadFrom(v14, a2))
          {
LABEL_38:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setTemporalEventTrigger:v14];
          goto LABEL_34;
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
            goto LABEL_38;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBSettingMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBSettingMetadataReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          PBReaderRecallMark();
          [a1 setSettingMetadata:v14];
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

uint64_t INDeviceCategoryGetBackingType(uint64_t result)
{
  if ((result - 1) < 0xE)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INDeviceCategoryGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 0xE) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INDeviceCategoryGetName(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7287E08[a1 - 1];
  }
}

uint64_t INDeviceCategoryWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"phone"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"pad"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"watch"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Mac"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"AppleTV"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"homePod"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"TVRemote"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"speaker"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"headphone"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"batteryCase"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"keyboard"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"trackpad"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"mouse"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"pencil"])
  {
    v2 = 14;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INDeviceCategoryGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"phone";
      goto LABEL_16;
    case 2:
      v4 = @"pad";
      goto LABEL_16;
    case 3:
      v4 = @"watch";
      goto LABEL_16;
    case 4:
      v4 = @"Mac";
      goto LABEL_16;
    case 5:
      v4 = @"Apple TV";
      goto LABEL_16;
    case 6:
      v4 = @"home pod";
      goto LABEL_16;
    case 7:
      v4 = @"t v remote";
      goto LABEL_16;
    case 8:
      v4 = @"speaker";
      goto LABEL_16;
    case 9:
      v4 = @"headphone";
      goto LABEL_16;
    case 10:
      v4 = @"battery case";
      goto LABEL_16;
    case 11:
      v4 = @"keyboard";
      goto LABEL_16;
    case 12:
      v4 = @"trackpad";
      goto LABEL_16;
    case 13:
      v4 = @"mouse";
      goto LABEL_16;
    case 14:
      v4 = @"pencil";
LABEL_16:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t INBoundedSettingValueGetBackingType(uint64_t result)
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

uint64_t INBoundedSettingValueGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INBoundedSettingValueGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7287E78[a1 - 1];
  }
}

uint64_t INBoundedSettingValueWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"min"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"median"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"max"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INBoundedSettingValueGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"max";
      goto LABEL_7;
    case 2:
      v4 = @"median";
      goto LABEL_7;
    case 1:
      v4 = @"min";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

INGetSettingResponseData *INIntentSlotValueTransformFromGetSettingResponseData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INGetSettingResponseData alloc];
    v3 = [v1 settingMetadata];
    v4 = INIntentSlotValueTransformFromSettingMetadata(v3);
    v5 = [v1 numericValue];
    v6 = INIntentSlotValueTransformFromNumericSettingValue(v5);
    v7 = [v1 hasBoundedValue];
    v8 = [v1 boundedValue];
    if (((v8 - 1 < 3) & v7) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v1 hasBinaryValue];
    v11 = [v1 binaryValue];
    if (((v11 - 1 < 3) & v10) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v1 labeledValue];

    v14 = [(INGetSettingResponseData *)v2 initWithSettingMetadata:v4 numericValue:v6 boundedValue:v9 binaryValue:v12 labeledValue:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

_INPBGetSettingResponseData *INIntentSlotValueTransformToGetSettingResponseData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBGetSettingResponseData);
    v3 = [v1 settingMetadata];
    v4 = INIntentSlotValueTransformToSettingMetadata(v3);
    [(_INPBGetSettingResponseData *)v2 setSettingMetadata:v4];

    v5 = [v1 numericValue];
    v6 = INIntentSlotValueTransformToNumericSettingValue(v5);
    [(_INPBGetSettingResponseData *)v2 setNumericValue:v6];

    v7 = [v1 boundedValue] - 1;
    if (v7 < 3)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    [(_INPBGetSettingResponseData *)v2 setBoundedValue:v8];
    v9 = [v1 binaryValue] - 1;
    if (v9 < 3)
    {
      v10 = (v9 + 1);
    }

    else
    {
      v10 = 0x7FFFFFFFLL;
    }

    [(_INPBGetSettingResponseData *)v2 setBinaryValue:v10];
    v11 = [v1 labeledValue];

    [(_INPBGetSettingResponseData *)v2 setLabeledValue:v11];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromGetSettingResponseDatas(void *a1)
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

          v8 = INIntentSlotValueTransformFromGetSettingResponseData(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToGetSettingResponseDatas(void *a1)
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

          v8 = INIntentSlotValueTransformToGetSettingResponseData(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBSaveParkingLocationIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBLocation);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setParkingLocation:v13];
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

    v13 = objc_alloc_init(_INPBString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setParkingNote:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDeleteParkingLocationIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBLocation);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setParkingLocation:v13];
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

    v13 = objc_alloc_init(_INPBString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setParkingNote:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INDeleteParkingLocationIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7287E90[a1];
  }
}

uint64_t _INPBDeleteParkingLocationIntentReadFrom(void *a1, void *a2)
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

__CFString *INSaveParkingLocationIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7287EC0[a1];
  }
}

uint64_t _INPBSaveParkingLocationIntentReadFrom(void *a1, void *a2)
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
        [a1 setParkingNote:v14];
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

    v14 = objc_alloc_init(_INPBLocation);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setParkingLocation:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}