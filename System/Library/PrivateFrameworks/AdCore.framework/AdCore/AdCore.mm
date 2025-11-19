void _ADLog(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v5;
  v8 = v7;
  if ([v7 hasSuffix:@"Logging"])
  {
    v8 = [v7 stringByReplacingCharactersInRange:objc_msgSend(v7 withString:{"length") - 7, 7, &stru_2850FB348}];
  }

  if (_ADLog_onceToken != -1)
  {
    _ADLog_cold_1();
  }

  if (_ADLog_internalBuild)
  {
    v9 = a3;
  }

  else
  {
    v9 = 2;
  }

  v10 = _ADLogQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ADLog_block_invoke_2;
  block[3] = &unk_278C55628;
  v16 = v9;
  v14 = v8;
  v15 = v6;
  v11 = v6;
  v12 = v8;
  dispatch_async(v10, block);
}

id _ADLogQueue()
{
  if (_ADLogQueue_onceToken != -1)
  {
    _ADLogQueue_cold_1();
  }

  v1 = _ADLogQueue_loggingQueue;

  return v1;
}

id GetKeychainPropertyListForKey(void *a1, OSStatus *a2)
{
  v3 = a1;
  v4 = ADCopyDataFromKeychain(v3, a2);
  v5 = v4;
  if (*a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error %ld reading keychain data for %@", *a2, v3];
    _ADLog(@"iAdPersistenceLogging", v7, 16);
  }

  else
  {
    v15 = 0;
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v15];
    v9 = MEMORY[0x277CCACA8];
    v10 = v15;
    v11 = v10;
    if (v8)
    {
      v12 = [v9 stringWithFormat:@"Loaded dictionary for %@", v3];
      _ADLog(@"iAdPersistenceLogging", v12, 0);

      goto LABEL_11;
    }

    v13 = [v9 stringWithFormat:@"Error deserializing data for %@: %@", v3, v10];
    _ADLog(@"iAdPersistenceLogging", v13, 16);
  }

  v8 = 0;
LABEL_11:

  return v8;
}

id ADCopyDataFromKeychain(void *a1, OSStatus *a2)
{
  v3 = a1;
  v4 = ADMakeMutableSecQuery(v3);
  [v4 setObject:*MEMORY[0x277CBED28] forKeyedSubscript:*MEMORY[0x277CDC558]];
  result = 0;
  v5 = SecItemCopyMatching(v4, &result);
  *a2 = v5;
  if (v5 || !result)
  {
    if (v5 == -25300)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No previous keychain records found for key %@.", v3];
      v8 = v7;
      v9 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error %ld retrieving secure data for key %@", v5, v3];
      v8 = v7;
      v9 = 16;
    }

    _ADLog(@"iAdPersistenceLogging", v8, v9);

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithData:?];
    CFRelease(result);
  }

  return v6;
}

void ADSaveToPromotedContentKeychain(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v11 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v11];
    v5 = v11;
    if (v5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Error archiving data: %@ for key: %@", v5, v3];
    }

    else
    {
      v7 = ADWriteDataToKeychain(v3, v4);
      if (!v7)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saved key: %@ keychain", v3];
        v9 = v8;
        v10 = 0;
        goto LABEL_8;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Error: %d saving key: %@ to keychain", v7, v3];
    }
    v8 = ;
    v9 = v8;
    v10 = 16;
LABEL_8:
    _ADLog(@"iAdIDLogging", v9, v10);

    goto LABEL_9;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"value for key: %@ is nil. So not saving to keychain.", v3];
  _ADLog(@"iAdIDLogging", v6, 16);

LABEL_9:
}

id ADMakeMutableSecQuery(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setObject:@"apple" forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  [v3 setObject:*MEMORY[0x277CDC238] forKeyedSubscript:*MEMORY[0x277CDC228]];
  [v3 setObject:@"com.apple.iAdIDRecords" forKeyedSubscript:*MEMORY[0x277CDC120]];
  [v3 setObject:*MEMORY[0x277CDBEE0] forKeyedSubscript:*MEMORY[0x277CDBED8]];
  v4 = [v2 dataUsingEncoding:4];

  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CDBFB8]];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CDBF20]];

  return v3;
}

uint64_t ADWriteDataToKeychain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = ADMakeMutableSecQuery(v3);
  [v5 removeObjectForKey:*MEMORY[0x277CDBED8]];
  SecItemDelete(v5);
  if (v4)
  {
    v6 = ADMakeMutableSecQuery(v3);
    v7 = *MEMORY[0x277CDC5E8];
    [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x277CDC5E8]];
    v8 = SecItemAdd(v6, 0);
    v9 = v8;
    if (v8)
    {
      if (v8 == -25299)
      {
        v10 = ADMakeMutableSecQuery(v3);
        [v10 removeObjectForKey:*MEMORY[0x277CDC228]];
        [v10 setObject:v4 forKeyedSubscript:v7];
        v11 = ADMakeMutableSecQuery(v3);

        v9 = SecItemUpdate(v11, v10);
        if (v9)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to update keychain item %@. Error %d", v3, v9];
          _ADLog(@"iAdPersistenceLogging", v12, 16);
        }
      }

      else
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error %d checking for existence of keychain item %@", v8, v3];
        _ADLog(@"iAdPersistenceLogging", v10, 16);
        v11 = v5;
      }

      v5 = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t ADAttributionRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v56) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v56 & 0x7F) << v5;
        if ((v56 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadData();
          v14 = 88;
          goto LABEL_60;
        case 2u:
          v13 = PBReaderReadData();
          v14 = 104;
          goto LABEL_60;
        case 3u:
          v13 = PBReaderReadData();
          v14 = 56;
          goto LABEL_60;
        case 4u:
          v13 = PBReaderReadString();
          v14 = 64;
          goto LABEL_60;
        case 5u:
          *(a1 + 124) |= 8u;
          v56 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 32;
          goto LABEL_91;
        case 6u:
          *(a1 + 124) |= 2u;
          v56 = 0;
          v34 = [a2 position] + 8;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 16;
          goto LABEL_91;
        case 7u:
          *(a1 + 124) |= 4u;
          v56 = 0;
          v38 = [a2 position] + 8;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 24;
          goto LABEL_91;
        case 8u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            LOBYTE(v56) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v56 & 0x7F) << v27;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_75;
            }
          }

          v33 = (v29 != 0) & ~[a2 hasError];
LABEL_75:
          *(a1 + 120) = v33;
          goto LABEL_92;
        case 9u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 124) |= 0x40u;
          while (1)
          {
            LOBYTE(v56) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v56 & 0x7F) << v41;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v43;
          }

LABEL_79:
          v47 = 96;
          goto LABEL_80;
        case 0xAu:
          v13 = PBReaderReadData();
          v14 = 112;
          goto LABEL_60;
        case 0xBu:
          v13 = PBReaderReadData();
          v14 = 72;
          goto LABEL_60;
        case 0xCu:
          *(a1 + 124) |= 0x10u;
          v56 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 40;
          goto LABEL_91;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 48;
LABEL_60:
          v40 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_92;
        case 0xEu:
          *(a1 + 124) |= 1u;
          v56 = 0;
          v36 = [a2 position] + 8;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 8;
LABEL_91:
          *(a1 + v50) = v49;
          goto LABEL_92;
        case 0xFu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 124) |= 0x20u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_92;
      }

      while (1)
      {
        LOBYTE(v56) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v56 & 0x7F) << v15;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_73;
        }
      }

      v21 = [a2 hasError] ? 0 : v17;
LABEL_73:
      v47 = 80;
LABEL_80:
      *(a1 + v47) = v21;
LABEL_92:
      v55 = [a2 position];
    }

    while (v55 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADUserTransparencyResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(ADTransparencyDetails);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ADTransparencyDetailsReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

id ADAdsOptions()
{
  if (ADAdsOptions_once != -1)
  {
    ADAdsOptions_cold_1();
  }

  v1 = ADAdsOptions_sOptions;

  return v1;
}

void __ADAdsOptions_block_invoke()
{
  v0 = ADAdsOptions_sOptions;
  ADAdsOptions_sOptions = &unk_285104C18;
}

uint64_t ADConfigurationReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
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
          v30 = PBReaderReadString();
          v31 = 24;
          goto LABEL_46;
        }

        if (v13 != 2)
        {
LABEL_47:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v38 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v38 & 0x7F) << v16;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_54;
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

LABEL_54:
        *(a1 + 32) = v22;
      }

      else
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v39 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v39 & 0x7F) << v23;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_50;
            }
          }

          v29 = (v25 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 36) = v29;
          goto LABEL_57;
        }

        if (v13 == 4)
        {
          v30 = PBReaderReadString();
          v31 = 16;
LABEL_46:
          v32 = *(a1 + v31);
          *(a1 + v31) = v30;

          goto LABEL_57;
        }

        if (v13 != 7)
        {
          goto LABEL_47;
        }

        *(a1 + 40) |= 1u;
        v36 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v36;
      }

LABEL_57:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADLogAnalyticsRequestReadFrom(char *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
          v15 = PBReaderReadData();
          v16 = 40;
LABEL_30:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadData();
            v16 = 16;
            goto LABEL_30;
          case 4:
            v15 = PBReaderReadData();
            v16 = 24;
            goto LABEL_30;
          case 0xA:
            v14 = objc_alloc_init(ADAnalyticsEvent);
            [a1 addEvents:v14];
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !ADAnalyticsEventReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *ADJingleAccountStatusToString(uint64_t a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    v2 = off_278C54FF0[a1 + 1];
  }

  return v2;
}

uint64_t ADTransparencyDetailsReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_278C55058[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADConfigurationResponseReadFrom(uint64_t a1, void *a2)
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

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_26;
        }

        goto LABEL_39;
      }

      v24 = objc_alloc_init(ADConfiguration);
      [a1 addTheConfiguration:v24];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ADConfigurationReadFrom(v24, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_26;
      case 4:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27[0] & 0x7F) << v17;
          if ((v27[0] & 0x80) == 0)
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
        *(a1 + 8) = v23;
        goto LABEL_45;
      case 5:
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_26:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_45;
    }

LABEL_39:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADParameterReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        v13 = &OBJC_IVAR___ADParameter__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ADParameter__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADClientSettingsRequestReadFrom(void *a1, void *a2)
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
        LOBYTE(v18[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18[0] & 0x7F) << v5;
        if ((v18[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(ADParameter);
        [a1 addCurrentSettingParams:v15];
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = a1[3];
        a1[3] = v14;
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(ADParameter);
    [a1 addCurrentSearchLandingAdsSettingParams:v15];
LABEL_23:
    v18[0] = 0;
    v18[1] = 0;
    if (!PBReaderPlaceMark() || !ADParameterReadFrom(v15, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

id ClientTypeToString(uint64_t a1)
{
  if (ClientTypeToString_onceToken != -1)
  {
    ClientTypeToString_cold_1();
  }

  v2 = ClientTypeToString_strings;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __ClientTypeToString_block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_285104830;
  v3[1] = &unk_285104848;
  v4[0] = @"ClientType_Default";
  v4[1] = @"ClientType_Tilt";
  v3[2] = &unk_285104860;
  v3[3] = &unk_285104878;
  v4[2] = @"ClientType_AnonymousDemand";
  v4[3] = @"ClientType_Content";
  v3[4] = &unk_285104890;
  v3[5] = &unk_2851048A8;
  v4[4] = @"ClientType_Toro";
  v4[5] = @"ClientType_DevicePack";
  v3[6] = &unk_2851048C0;
  v4[6] = @"ClientType_DeviceNewsPlusSubscriber";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = ClientTypeToString_strings;
  ClientTypeToString_strings = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_23E6E3978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E6E3D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ADOptOutRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          *(a1 + 48) |= 1u;
          v37 = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v37 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v32 = v37;
          v33 = 8;
LABEL_53:
          *(a1 + v33) = v32;
          goto LABEL_56;
        }

        if (v13 == 5)
        {
          *(a1 + 48) |= 4u;
          LODWORD(v37) = 0;
          v29 = [a2 position] + 4;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v37 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 40) = v37;
          goto LABEL_56;
        }

        if (v13 != 6)
        {
LABEL_33:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_56;
        }

        v16 = PBReaderReadData();
        v17 = 24;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v37 & 0x7F) << v22;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                LOBYTE(v28) = 0;
                goto LABEL_48;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_48:
            *(a1 + 44) = v28;
            goto LABEL_56;
          }

          if (v13 != 3)
          {
            goto LABEL_33;
          }

          *(a1 + 48) |= 2u;
          v37 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v37 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v32 = v37;
          v33 = 16;
          goto LABEL_53;
        }

        v16 = PBReaderReadData();
        v17 = 32;
      }

      v18 = *(a1 + v17);
      *(a1 + v17) = v16;

LABEL_56:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADKeyedParameterListReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(ADParameter);
    [a1 addParameterList:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !ADParameterReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void _reachabilityDidChange(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Network reachability flags changed to 0x%x", a2];
  _ADLog(@"iAdInternalLogging", v4, 0);

  v5 = 0;
  v7[10] = a2;
  if ((a2 & 2) != 0)
  {
    if ((a2 & 0x10000) != 0)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Somehow we believe that 'apple.com' is local to the device. We do not yet have internet access."];
      _ADLog(@"iAdInternalLogging", v6, 16);

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  [v7 _updateStatus:v5];
}

uint64_t ADAnalyticsEventReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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

      if ((v12 >> 3) == 3)
      {
        v25 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
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

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADSegmentUpdateRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 10)
      {
        if (v14 <= 40)
        {
          switch(v14)
          {
            case 0xB:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 160) |= 4u;
              while (1)
              {
                LOBYTE(v84) = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v84 & 0x7F) << v52;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v58 = 0;
                  goto LABEL_120;
                }
              }

              if ([a2 hasError])
              {
                v58 = 0;
              }

              else
              {
                v58 = v54;
              }

LABEL_120:
              *(a1 + 104) = v58;
              goto LABEL_159;
            case 0x27:
              v32 = PBReaderReadString();
              v33 = 136;
              goto LABEL_114;
            case 0x28:
              v32 = PBReaderReadString();
              v33 = 128;
LABEL_114:
              v59 = *(a1 + v33);
              *(a1 + v33) = v32;

              goto LABEL_159;
          }
        }

        else
        {
          if (v14 <= 42)
          {
            if (v14 == 41)
            {
              v32 = PBReaderReadData();
              v33 = 112;
              goto LABEL_114;
            }

            if (v13 != 2)
            {
              v66 = 0;
              v67 = 0;
              v68 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v69 = [a2 position] + 1;
                if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
                {
                  v71 = [a2 data];
                  [v71 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v68 |= (v84 & 0x7F) << v66;
                if ((v84 & 0x80) == 0)
                {
                  goto LABEL_150;
                }

                v66 += 7;
                v11 = v67++ >= 9;
                if (v11)
                {
                  goto LABEL_151;
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
              v18 = [a2 position];
              if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_101;
              }

              v19 = 0;
              v20 = 0;
              v21 = 0;
              while (1)
              {
                v86 = 0;
                v22 = [a2 position] + 1;
                if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
                {
                  v24 = [a2 data];
                  [v24 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v21 |= (v86 & 0x7F) << v19;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v11 = v20++ >= 9;
                if (v11)
                {
                  goto LABEL_42;
                }
              }

              [a2 hasError];
LABEL_42:
              PBRepeatedInt32Add();
            }
          }

          if (v14 == 43)
          {
            if (v13 != 2)
            {
              v60 = 0;
              v61 = 0;
              v62 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v84 & 0x7F) << v60;
                if ((v84 & 0x80) == 0)
                {
                  goto LABEL_150;
                }

                v60 += 7;
                v11 = v61++ >= 9;
                if (v11)
                {
                  goto LABEL_151;
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
              v45 = [a2 position];
              if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                v86 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v86 & 0x7F) << v46;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  goto LABEL_100;
                }
              }

              [a2 hasError];
LABEL_100:
              PBRepeatedInt32Add();
            }

LABEL_101:
            PBReaderRecallMark();
            goto LABEL_159;
          }

          if (v14 == 44)
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
                  break;
                }

                v72 += 7;
                v11 = v73++ >= 9;
                if (v11)
                {
                  goto LABEL_151;
                }
              }

LABEL_150:
              [a2 hasError];
LABEL_151:
              PBRepeatedInt32Add();
              goto LABEL_159;
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
              v36 = [a2 position];
              if (v36 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_101;
              }

              v37 = 0;
              v38 = 0;
              v39 = 0;
              while (1)
              {
                v86 = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v86 & 0x7F) << v37;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  goto LABEL_80;
                }
              }

              [a2 hasError];
LABEL_80:
              PBRepeatedInt32Add();
            }
          }
        }
      }

      else if (v14 <= 4)
      {
        switch(v14)
        {
          case 2:
            v32 = PBReaderReadData();
            v33 = 120;
            goto LABEL_114;
          case 3:
            v32 = PBReaderReadString();
            v33 = 144;
            goto LABEL_114;
          case 4:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 160) |= 0x10u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v84 & 0x7F) << v25;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                LOBYTE(v31) = 0;
                goto LABEL_122;
              }
            }

            v31 = (v27 != 0) & ~[a2 hasError];
LABEL_122:
            *(a1 + 156) = v31;
            goto LABEL_159;
        }
      }

      else if (v14 > 8)
      {
        if (v14 == 9)
        {
          *(a1 + 160) |= 2u;
          v84 = 0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v84 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v79 = v84;
          v80 = 88;
          goto LABEL_156;
        }

        if (v14 == 10)
        {
          *(a1 + 160) |= 8u;
          LODWORD(v84) = 0;
          v34 = [a2 position] + 4;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v84 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 152) = v84;
          goto LABEL_159;
        }
      }

      else
      {
        if (v14 == 5)
        {
          v32 = PBReaderReadString();
          v33 = 96;
          goto LABEL_114;
        }

        if (v14 == 8)
        {
          *(a1 + 160) |= 1u;
          v84 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v84 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v79 = v84;
          v80 = 80;
LABEL_156:
          *(a1 + v80) = v79;
          goto LABEL_159;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_159:
      v83 = [a2 position];
    }

    while (v83 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADSettingsReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(ADParameter);
    [a1 addParameters:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !ADParameterReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADExperimentBucketReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 2u;
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
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_48:
        v30 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 16);
            *(a1 + 16) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_50;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
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
        v30 = 8;
      }

      *(a1 + v30) = v22;
LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADConfigurationRequestReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(ADConfiguration);
        [a1 addCurrentConfiguration:v13];
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !ADConfigurationReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = a1[2];
    a1[2] = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SetKeychainPropertyListForKey(void *a1, uint64_t a2)
{
  v3 = a1;
  v13 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:&v13];
  v5 = v13;
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v5 code];
    v9 = [v6 userInfo];
    v10 = [v7 stringWithFormat:@"Error serializing property list. Error %lu.\n%@", v8, v9];
    _ADLog(@"iAdIDLogging", v10, 16);

    v11 = 4294899602;
LABEL_5:

    goto LABEL_6;
  }

  v11 = ADWriteDataToKeychain(v3, v4);
  if (v11)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error saving data to keychain: %d", v11];
    _ADLog(@"iAdInternalLogging", v9, 16);
    goto LABEL_5;
  }

LABEL_6:

  return v11;
}

id ADEncryptString(void *a1)
{
  v1 = a1;
  if (ADEncryptString_onceToken != -1)
  {
    ADEncryptString_cold_1();
  }

  v2 = [v1 dataUsingEncoding:4];
  v3 = [v2 length];
  v4 = [v2 bytes];
  v5 = malloc_type_calloc(ADEncryptString_cipherBufferSize, 1uLL, 0x100004077774924uLL);
  v6 = SecKeyEncrypt(ADEncryptString_adServerKeyRef, 1u, v4, v3, v5, &ADEncryptString_cipherBufferSize);
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to encrypt string with result %d.", v6];
    _ADLog(@"ToroLogging", v7, 16);

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:ADEncryptString_cipherBufferSize];
  }

  free(v5);

  return v8;
}

size_t __ADEncryptString_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  ADEncryptString_adServerKeyRef = SecKeyCreateRSAPublicKey();
  result = SecKeyGetBlockSize(ADEncryptString_adServerKeyRef);
  ADEncryptString_cipherBufferSize = result;
  return result;
}

__CFString *ADAdConnectionGetStringForValue(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return @"<BADVALUE>";
  }

  else
  {
    return off_278C55350[a1];
  }
}

__CFString *dumpObject(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v22 = @"(null)";
    goto LABEL_51;
  }

  v32 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v34 = v1;
  v3 = objc_opt_class();
  for (i = objc_opt_class(); ; i = objc_opt_class())
  {
    if (v3 == i)
    {
      v19 = [v2 AD_jsonString];
      v20 = [v19 mutableCopy];

      v21 = v20;
      goto LABEL_50;
    }

    outCount = 0;
    v31 = v3;
    v33 = class_copyPropertyList(v3, &outCount);
    if (outCount)
    {
      v5 = 0;
      while (1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v33[v5])];
        v7 = [v34 valueForKey:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v8 = v7;
          goto LABEL_9;
        }

        if (!v7)
        {
          break;
        }

        if (v7 != -[objc_class superclass](v31, "superclass") && ([v6 isEqualToString:@"superclass"] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 AD_dictionaryForJSON];
            goto LABEL_9;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 AD_arrayForJSON];
            goto LABEL_9;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 AD_dataStringForJSON];
            goto LABEL_9;
          }

          NSClassFromString(&cfstr_Nsblock.isa);
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7];
LABEL_9:
            v9 = v8;
          }

          else
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found an object that could not be converted to JSON: %@ (%@)", v7, objc_opt_class()];
              _ADLog(@"ToroLogging", v18, 0);

              v17 = 1;
              goto LABEL_34;
            }

            v16 = [v7 dictionaryRepresentation];
            v9 = [v16 AD_dictionaryForJSON];
          }

LABEL_10:
          v10 = 1;
          while (1)
          {
            v11 = [v2 objectForKey:v6];
            if (!v11)
            {
              break;
            }

            v12 = [v2 objectForKey:v6];
            v13 = [v12 isEqual:v9];

            if (v13)
            {
              break;
            }

            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: There are multiple properties in this object with the same name... (%@)", v6];
            _ADLog(@"ToroLogging", v14, 0);

            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v6, v10];

            v10 = (v10 + 1);
            v6 = v15;
          }

          [v2 setObject:v9 forKey:v6];
          goto LABEL_15;
        }

        v9 = 0;
LABEL_15:

        if (++v5 >= outCount)
        {
          goto LABEL_33;
        }
      }

      v9 = @"(null)";
      goto LABEL_10;
    }

LABEL_33:
    v17 = 0;
LABEL_34:
    if (v33 && outCount)
    {
      free(v33);
    }

    if (v17)
    {
      break;
    }

    v3 = [(objc_class *)v31 superclass];
  }

  for (j = objc_opt_class(); j != objc_opt_class(); j = [j superclass])
  {
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:class_getName(j)];
    [v32 appendFormat:@"--- %@ ---\n", v24];

    v35 = 0;
    v25 = class_copyPropertyList(j, &v35);
    if (v35)
    {
      v26 = v25;
      for (k = 0; k < v35; ++k)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v26[k])];
        v29 = [v34 valueForKey:v28];
        [v32 appendFormat:@"%@: %@\n", v28, v29];
      }

      if (v35)
      {
        free(v26);
      }
    }
  }

  v21 = v32;
LABEL_50:
  v22 = [MEMORY[0x277CCACA8] stringWithString:v21];

  v1 = v34;
LABEL_51:

  return v22;
}

uint64_t RequestRetryDelay(uint64_t a1)
{
  if (((a1 - 2) & (a1 - 1)) != 0)
  {
    return 0;
  }

  else
  {
    return 30;
  }
}

void takeXPCTransaction(void *a1)
{
  v1 = a1;
  v2 = _TransactionQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __takeXPCTransaction_block_invoke;
  block[3] = &unk_278C551F8;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

id _TransactionQueue()
{
  if (_TransactionQueue_onceToken != -1)
  {
    _TransactionQueue_cold_1();
  }

  v1 = _TransactionQueue___queue;

  return v1;
}

void __takeXPCTransaction_block_invoke(uint64_t a1)
{
  v2 = _TransactionsByReason();
  v5 = [v2 objectForKey:*(a1 + 32)];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = _TransactionsByReason();
    [v3 setObject:v5 forKey:*(a1 + 32)];
  }

  [*(a1 + 32) UTF8String];
  v4 = os_transaction_create();
  [v5 addObject:v4];
}

id _TransactionsByReason()
{
  if (_TransactionsByReason_onceToken != -1)
  {
    _TransactionsByReason_cold_1();
  }

  v1 = _TransactionsByReason___transactions;

  return v1;
}

void releaseXPCTransaction(void *a1)
{
  v1 = a1;
  v2 = _TransactionQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __releaseXPCTransaction_block_invoke;
  block[3] = &unk_278C551F8;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void __releaseXPCTransaction_block_invoke(uint64_t a1)
{
  v2 = _TransactionsByReason();
  v4 = [v2 objectForKey:*(a1 + 32)];

  if ([v4 count])
  {
    [v4 removeLastObject];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"****** imbalanced transactions for reason '%@' -- please file a radar ******", *(a1 + 32)];
    _ADLog(@"LATDLogging", v3, 0);
  }
}

BOOL StringMatch(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  v5 = a2;
  v6 = [v3 UTF8String];
  v7 = [v5 UTF8String];

  v8 = 0;
  if (v6 && v7)
  {
    memset(&v16, 0, sizeof(v16));
    if (regcomp(&v16, v7, 7))
    {
      MEMORY[0x28223BE20]();
      regerror(0, &v16, v15, 0xFFuLL);
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
      v14 = [v12 stringWithFormat:@"[%s]: Error %d compiling regular expression pattern '%s' - %@", "BOOL StringMatch(NSString *__strong, NSString *__strong)", 0, v7, v13];
      _ADLog(@"iAdInternalLogging", v14, 0);

      memset(&v16, 0, sizeof(v16));
      v8 = 0;
    }

    else
    {
      v9 = regexec(&v16, [v3 UTF8String], 0, 0, 2);
      MEMORY[0x23EF10640](&v16);
      v8 = v9 == 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

id StringIsUUID(void *a1)
{
  result = a1;
  if (result)
  {
    v2 = result;
    if ([result hasPrefix:@"DPID-"])
    {
      v3 = [v2 stringByReplacingOccurrencesOfString:@"DPID-" withString:&stru_2850FB348];

      v2 = v3;
    }

    v4 = StringMatch(v2, @"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}");

    return v4;
  }

  return result;
}

BOOL StringIsFromUUID(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x277CCAD78];
  v2 = a1;
  v3 = [[v1 alloc] initWithUUIDString:v2];

  v4 = v3 != 0;
  return v4;
}

void ADSimulateCrash(uint64_t a1, void *a2, int a3)
{
  v8 = a2;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v8];
  _ADLog(@"iAdInternalLogging", v4, 16);

  getpid();
  SimulateCrash();
  v5 = +[ADCoreSettings sharedInstance];
  LODWORD(v4) = [v5 unitTesting];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 0;
  }

  if (!v6)
  {
    exit(1);
  }

  if (a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"We should exit at this point. If you see this log outside of the Unit Tests, Please file a radar..."];
    _ADLog(@"iAdInternalLogging", v7, 16);
  }
}

uint64_t ADLogAnalyticsResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t ADClientSettingsResponseReadFrom(uint64_t a1, void *a2)
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

        v7 |= (v20[0] & 0x7F) << v5;
        if ((v20[0] & 0x80) == 0)
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
        v16 = objc_alloc_init(ADParameter);
        [a1 addSearchLandingAdsSettingsParams:v16];
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            *(a1 + 32) |= 1u;
            v20[0] = 0;
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

            *(a1 + 8) = v20[0];
          }

          else if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_32;
        }

        v16 = objc_alloc_init(ADParameter);
        [a1 addSearchAdsSettingsParams:v16];
      }

      v20[0] = 0;
      v20[1] = 0;
      if (!PBReaderPlaceMark() || !ADParameterReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_32:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADOptOutResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t ADUserTargetingPropertiesReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v122) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v122 & 0x7F) << v6;
      if ((v122 & 0x80) == 0)
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
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v14 = v13 & 7;
    if (v14 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        *(a1 + 348) |= 1u;
        v122 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v118 = [a2 data];
          [v118 getBytes:&v122 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 80) = v122;
        goto LABEL_173;
      case 2u:
        v32 = PBReaderReadString();
        v33 = 112;
        goto LABEL_172;
      case 3u:
        v32 = PBReaderReadString();
        v33 = 184;
        goto LABEL_172;
      case 4u:
        *(a1 + 348) |= 0x200u;
        LODWORD(v122) = 0;
        v67 = [a2 position] + 4;
        if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 4, v68 <= objc_msgSend(a2, "length")))
        {
          v121 = [a2 data];
          [v121 getBytes:&v122 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v116 = v122;
        v117 = 320;
        goto LABEL_239;
      case 5u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 348) |= 0x100u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v122 & 0x7F) << v69;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_186;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v71;
        }

LABEL_186:
        v96 = 288;
        goto LABEL_199;
      case 6u:
        v32 = PBReaderReadString();
        v33 = 120;
        goto LABEL_172;
      case 7u:
        v32 = PBReaderReadString();
        v33 = 264;
        goto LABEL_172;
      case 8u:
        v32 = PBReaderReadString();
        v33 = 216;
        goto LABEL_172;
      case 9u:
        v32 = PBReaderReadString();
        v33 = 240;
        goto LABEL_172;
      case 0xAu:
        v81 = PBReaderReadString();
        if (v81)
        {
          [a1 addUserKeyboard:v81];
        }

        goto LABEL_148;
      case 0xBu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 348) |= 4u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v122 & 0x7F) << v36;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_179;
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

LABEL_179:
        v96 = 128;
        goto LABEL_199;
      case 0xCu:
        if (v14 == 2)
        {
          v122 = 0;
          v123 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v56 = [a2 position];
            if (v56 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v57 = 0;
            v58 = 0;
            v59 = 0;
            while (1)
            {
              v124 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v124 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v124 & 0x7F) << v57;
              if ((v124 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v12 = v58++ >= 9;
              if (v12)
              {
                goto LABEL_108;
              }
            }

            [a2 hasError];
LABEL_108:
            PBRepeatedInt32Add();
          }

LABEL_109:
          PBReaderRecallMark();
        }

        else
        {
          v109 = 0;
          v110 = 0;
          v111 = 0;
          while (1)
          {
            LOBYTE(v122) = 0;
            v112 = [a2 position] + 1;
            if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
            {
              v114 = [a2 data];
              [v114 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v111 |= (v122 & 0x7F) << v109;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v109 += 7;
            v12 = v110++ >= 9;
            if (v12)
            {
              goto LABEL_228;
            }
          }

LABEL_227:
          [a2 hasError];
LABEL_228:
          PBRepeatedInt32Add();
        }

        goto LABEL_173;
      case 0xDu:
        if (v14 != 2)
        {
          v103 = 0;
          v104 = 0;
          v105 = 0;
          while (1)
          {
            LOBYTE(v122) = 0;
            v106 = [a2 position] + 1;
            if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
            {
              v108 = [a2 data];
              [v108 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v105 |= (v122 & 0x7F) << v103;
            if ((v122 & 0x80) == 0)
            {
              goto LABEL_227;
            }

            v103 += 7;
            v12 = v104++ >= 9;
            if (v12)
            {
              goto LABEL_228;
            }
          }
        }

        v122 = 0;
        v123 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v49 = [a2 position];
          if (v49 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_109;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v124 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v124 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v124 & 0x7F) << v50;
            if ((v124 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v12 = v51++ >= 9;
            if (v12)
            {
              goto LABEL_88;
            }
          }

          [a2 hasError];
LABEL_88:
          PBRepeatedInt32Add();
        }

      case 0xEu:
        *(a1 + 348) |= 0x20u;
        LODWORD(v122) = 0;
        v34 = [a2 position] + 4;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
        {
          v115 = [a2 data];
          [v115 getBytes:&v122 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v116 = v122;
        v117 = 232;
        goto LABEL_239;
      case 0xFu:
        *(a1 + 348) |= 0x40u;
        LODWORD(v122) = 0;
        v63 = [a2 position] + 4;
        if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 4, v64 <= objc_msgSend(a2, "length")))
        {
          v119 = [a2 data];
          [v119 getBytes:&v122 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v116 = v122;
        v117 = 256;
        goto LABEL_239;
      case 0x10u:
        *(a1 + 348) |= 0x10u;
        LODWORD(v122) = 0;
        v65 = [a2 position] + 4;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 4, v66 <= objc_msgSend(a2, "length")))
        {
          v120 = [a2 data];
          [v120 getBytes:&v122 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v116 = v122;
        v117 = 200;
LABEL_239:
        *(a1 + v117) = v116;
        goto LABEL_173;
      case 0x11u:
        v32 = PBReaderReadString();
        v33 = 224;
        goto LABEL_172;
      case 0x14u:
        v81 = objc_alloc_init(ADParameter);
        [a1 addTargeting:v81];
        v122 = 0;
        v123 = 0;
        if (PBReaderPlaceMark() && ADParameterReadFrom(v81, a2))
        {
          PBReaderRecallMark();
LABEL_148:

LABEL_173:
          v4 = a2;
          continue;
        }

        return 0;
      case 0x15u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 348) |= 0x800u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v122 & 0x7F) << v25;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_175;
          }
        }

        v31 = (v27 != 0) & ~[a2 hasError];
LABEL_175:
        v95 = 345;
        goto LABEL_182;
      case 0x16u:
        v32 = PBReaderReadString();
        v33 = 328;
        goto LABEL_172;
      case 0x17u:
        v32 = PBReaderReadString();
        v33 = 208;
        goto LABEL_172;
      case 0x18u:
        v32 = PBReaderReadString();
        v33 = 104;
        goto LABEL_172;
      case 0x19u:
        v32 = PBReaderReadString();
        v33 = 176;
        goto LABEL_172;
      case 0x1Au:
        v32 = PBReaderReadString();
        v33 = 280;
        goto LABEL_172;
      case 0x1Bu:
        v32 = PBReaderReadString();
        v33 = 88;
        goto LABEL_172;
      case 0x1Cu:
        v32 = PBReaderReadString();
        v33 = 248;
        goto LABEL_172;
      case 0x1Du:
        v32 = PBReaderReadString();
        v33 = 304;
        goto LABEL_172;
      case 0x1Eu:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 348) |= 2u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v122 & 0x7F) << v88;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_198;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v90;
        }

LABEL_198:
        v96 = 96;
        goto LABEL_199;
      case 0x1Fu:
        v32 = PBReaderReadString();
        v33 = 192;
        goto LABEL_172;
      case 0x20u:
        v32 = PBReaderReadString();
        v33 = 144;
        goto LABEL_172;
      case 0x21u:
        v32 = PBReaderReadString();
        v33 = 136;
        goto LABEL_172;
      case 0x22u:
        v32 = PBReaderReadString();
        v33 = 168;
        goto LABEL_172;
      case 0x23u:
        v32 = PBReaderReadString();
        v33 = 160;
        goto LABEL_172;
      case 0x24u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 348) |= 0x400u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v122 & 0x7F) << v43;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_181;
          }
        }

        v31 = (v45 != 0) & ~[a2 hasError];
LABEL_181:
        v95 = 344;
LABEL_182:
        *(a1 + v95) = v31;
        goto LABEL_173;
      case 0x25u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 348) |= 8u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v122 & 0x7F) << v82;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_194;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v84;
        }

LABEL_194:
        v96 = 152;
        goto LABEL_199;
      case 0x26u:
        v32 = PBReaderReadString();
        v33 = 296;
LABEL_172:
        v94 = *(a1 + v33);
        *(a1 + v33) = v32;

        goto LABEL_173;
      case 0x27u:
        if (v14 != 2)
        {
          v97 = 0;
          v98 = 0;
          v99 = 0;
          while (1)
          {
            LOBYTE(v122) = 0;
            v100 = [a2 position] + 1;
            if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
            {
              v102 = [a2 data];
              [v102 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v99 |= (v122 & 0x7F) << v97;
            if ((v122 & 0x80) == 0)
            {
              goto LABEL_227;
            }

            v97 += 7;
            v12 = v98++ >= 9;
            if (v12)
            {
              goto LABEL_228;
            }
          }
        }

        v122 = 0;
        v123 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v18 = [a2 position];
          if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_109;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          while (1)
          {
            v124 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v124 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v124 & 0x7F) << v19;
            if ((v124 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v12 = v20++ >= 9;
            if (v12)
            {
              goto LABEL_38;
            }
          }

          [a2 hasError];
LABEL_38:
          PBRepeatedInt32Add();
        }

      case 0x28u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 348) |= 0x80u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v122 & 0x7F) << v75;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v12 = v76++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_190;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v77;
        }

LABEL_190:
        v96 = 272;
LABEL_199:
        *(a1 + v96) = v42;
        goto LABEL_173;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_173;
    }
  }
}

uint64_t ADSponsoredSearchRequestReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(ADUserTargetingProperties);
        objc_storeStrong((a1 + 40), v13);
        v65 = 0;
        v66 = 0;
        if (PBReaderPlaceMark() && ADUserTargetingPropertiesReadFrom(v13, a2))
        {
          goto LABEL_84;
        }

        goto LABEL_116;
      case 2u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 80) |= 0x40u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v65 & 0x7F) << v48;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            LOBYTE(v35) = 0;
            goto LABEL_110;
          }
        }

        v35 = (v50 != 0) & ~[a2 hasError];
LABEL_110:
        v62 = 76;
        goto LABEL_113;
      case 3u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 80) |= 0x20u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v65 & 0x7F) << v36;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v35) = 0;
            goto LABEL_106;
          }
        }

        v35 = (v38 != 0) & ~[a2 hasError];
LABEL_106:
        v62 = 75;
        goto LABEL_113;
      case 4u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 80) |= 8u;
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
            LOBYTE(v35) = 0;
            goto LABEL_108;
          }
        }

        v35 = (v44 != 0) & ~[a2 hasError];
LABEL_108:
        v62 = 73;
        goto LABEL_113;
      case 5u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 80) |= 2u;
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
            v20 = 0;
            goto LABEL_101;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_101:
        v61 = 56;
        goto LABEL_102;
      case 6u:
        v27 = PBReaderReadString();
        v28 = 16;
        goto LABEL_81;
      case 7u:
        v27 = PBReaderReadString();
        v28 = 64;
        goto LABEL_81;
      case 8u:
        v27 = PBReaderReadString();
        v28 = 8;
        goto LABEL_81;
      case 9u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 80) |= 0x10u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v65 & 0x7F) << v55;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            LOBYTE(v35) = 0;
            goto LABEL_112;
          }
        }

        v35 = (v57 != 0) & ~[a2 hasError];
LABEL_112:
        v62 = 74;
        goto LABEL_113;
      case 0xAu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 80) |= 4u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v65 & 0x7F) << v29;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            LOBYTE(v35) = 0;
            goto LABEL_104;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_104:
        v62 = 72;
LABEL_113:
        *(a1 + v62) = v35;
        goto LABEL_114;
      case 0xBu:
        v13 = objc_alloc_init(ADRotatingIdentifiers);
        objc_storeStrong((a1 + 48), v13);
        v65 = 0;
        v66 = 0;
        if (PBReaderPlaceMark() && ADRotatingIdentifiersReadFrom(v13, a2))
        {
LABEL_84:
          PBReaderRecallMark();

LABEL_114:
          v63 = [a2 position];
          if (v63 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_116:

        return 0;
      case 0xCu:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 80) |= 1u;
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
            goto LABEL_97;
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

LABEL_97:
        v61 = 24;
LABEL_102:
        *(a1 + v61) = v20;
        goto LABEL_114;
      case 0xDu:
        v27 = PBReaderReadString();
        v28 = 32;
LABEL_81:
        v54 = *(a1 + v28);
        *(a1 + v28) = v27;

        goto LABEL_114;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_114;
    }
  }
}

uint64_t ADAttributionResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(ADKeyedParameterList);
        [a1 addVersionedAttributionDetails:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ADKeyedParameterListReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

uint64_t ADRotatingIdentifiersReadFrom(char *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 24;
LABEL_25:
        v14 = *&a1[v16];
        *&a1[v16] = v15;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(ADExperimentBucket);
        [a1 addExperimentBuckets:v14];
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !ADExperimentBucketReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v16 = 8;
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADUserTransparencyRequestReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = 8;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 32;
        }

LABEL_51:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_57;
      }

      if (v13 == 6)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 52) |= 2u;
        while (1)
        {
          v35 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v35 & 0x7F) << v24;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_53;
          }
        }

        v22 = (v26 != 0) & ~[a2 hasError];
LABEL_53:
        v31 = 49;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_38:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          v34 = 0;
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
            LOBYTE(v22) = 0;
            goto LABEL_55;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_55:
        v31 = 48;
      }

      *(a1 + v31) = v22;
LABEL_57:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v14 = PBReaderReadData();
        v15 = 16;
        break;
      case 2:
        v14 = PBReaderReadString();
        v15 = 40;
        break;
      case 3:
        v14 = PBReaderReadData();
        v15 = 24;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ADSegmentUpdateResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) == 4)
      {
        *(a1 + 32) |= 1u;
        v26 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26;
        v23 = 8;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_34;
        }

        *(a1 + 32) |= 2u;
        v26 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26;
        v23 = 16;
      }

      *(a1 + v23) = v22;
LABEL_34:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void ADLogBarrier()
{
  v0 = _ADLogQueue();
  dispatch_barrier_sync(v0, &__block_literal_global_21);
}