uint64_t SPProtoSockPuppetObjectReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v72[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v72[0] & 0x7F) << v5;
      if ((v72[0] & 0x80) == 0)
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
          LOBYTE(v72[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v72[0] & 0x7F) << v13;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_110:
            v67 = 88;
            goto LABEL_123;
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

        goto LABEL_110;
      case 2u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 96) |= 0x40u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v72[0] & 0x7F) << v44;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_114;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v46;
        }

LABEL_114:
        v67 = 72;
        goto LABEL_123;
      case 3u:
        v36 = objc_alloc_init(SPProtoCacheMessage);
        objc_storeStrong((a1 + 32), v36);
        v72[0] = 0;
        v72[1] = 0;
        if (PBReaderPlaceMark() && SPProtoCacheMessageReadFrom(v36, a2))
        {
          PBReaderRecallMark();

LABEL_124:
          v68 = [a2 position];
          if (v68 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 4u:
        v27 = PBReaderReadString();
        v28 = 40;
        goto LABEL_51;
      case 5u:
        v27 = PBReaderReadString();
        v28 = 80;
        goto LABEL_51;
      case 6u:
        *(a1 + 96) |= 1u;
        v72[0] = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v69 = [a2 data];
          [v69 getBytes:v72 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v72[0];
        goto LABEL_124;
      case 7u:
        *(a1 + 96) |= 8u;
        LODWORD(v72[0]) = 0;
        v52 = [a2 position] + 4;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 4, v53 <= objc_msgSend(a2, "length")))
        {
          v70 = [a2 data];
          [v70 getBytes:v72 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 48) = v72[0];
        goto LABEL_124;
      case 8u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 96) |= 2u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v72[0] & 0x7F) << v38;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v40;
        }

LABEL_105:
        v66 = 16;
        goto LABEL_106;
      case 9u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 96) |= 0x10u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v72[0] & 0x7F) << v60;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_122;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v62;
        }

LABEL_122:
        v67 = 52;
        goto LABEL_123;
      case 0xAu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 96) |= 4u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v72[0] & 0x7F) << v29;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_101;
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

LABEL_101:
        v66 = 24;
LABEL_106:
        *(a1 + v66) = v35;
        goto LABEL_124;
      case 0xBu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 96) |= 0x20u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v72[0] & 0x7F) << v54;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_118;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v56;
        }

LABEL_118:
        v67 = 56;
LABEL_123:
        *(a1 + v67) = v19;
        goto LABEL_124;
      case 0xCu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 96) |= 0x80u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v72[0] & 0x7F) << v20;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_97;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_97:
        *(a1 + 92) = v26;
        goto LABEL_124;
      case 0xDu:
        v27 = PBReaderReadData();
        v28 = 64;
LABEL_51:
        v37 = *(a1 + v28);
        *(a1 + v28) = v27;

        goto LABEL_124;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_124;
    }
  }
}

uint64_t SPProtoAudioFileQueuePlayerReadFrom(id *a1, void *a2)
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
        LOBYTE(v19) = 0;
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(SPProtoObjectMessage);
            v16 = 1;
            goto LABEL_49;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(SPProtoAudioFilePlayerUpdateContainedIdentifier);
            v15 = 2;
            goto LABEL_45;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = objc_alloc_init(SPProtoAudioFilePlayerUpdateContainedIdentifier);
              v15 = 5;
              goto LABEL_45;
            case 9:
              v14 = objc_alloc_init(SPProtoObjectMessage);
              v16 = 4;
LABEL_49:
              objc_storeStrong(&a1[v16], v14);
              v19 = 0;
              v20 = 0;
              if (!PBReaderPlaceMark() || !SPProtoObjectMessageReadFrom(v14, a2))
              {
                goto LABEL_57;
              }

              goto LABEL_51;
            case 0xA:
              v14 = objc_alloc_init(SPProtoAudioFilePlayerUpdateContainedIdentifier);
              v15 = 7;
              goto LABEL_45;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SPProtoAudioFileQueuePlayerSetItems);
          objc_storeStrong(a1 + 10, v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !SPProtoAudioFileQueuePlayerSetItemsReadFrom(v14, a2))
          {
LABEL_57:

            return 0;
          }

          goto LABEL_51;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SPProtoObjectMessage);
          v16 = 3;
          goto LABEL_49;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(SPProtoAudioFileQueuePlayerSetRate);
            objc_storeStrong(a1 + 8, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SPProtoAudioFileQueuePlayerSetRateReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_51;
          case 4:
            v14 = objc_alloc_init(SPProtoAudioFilePlayerUpdateContainedIdentifier);
            v15 = 6;
LABEL_45:
            objc_storeStrong(&a1[v15], v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerUpdateContainedIdentifierReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

LABEL_51:
            PBReaderRecallMark();

            goto LABEL_52;
          case 5:
            v14 = objc_alloc_init(SPProtoAudioFilePlayerStatus);
            objc_storeStrong(a1 + 9, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerStatusReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _WKInterfaceObjectClassWithType(void *a1)
{
  v1 = _WKInterfaceObjectClassWithType_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _WKInterfaceObjectClassWithType_cold_1();
  }

  v3 = [_WKInterfaceObjectClassWithType___interfaceClasses objectForKeyedSubscript:v2];

  return v3;
}

id _WKValidatedAttributedString(void *a1)
{
  v1 = a1;
  v2 = [v1 mutableCopy];
  v3 = [v2 length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___WKValidatedAttributedString_block_invoke;
  v9[3] = &unk_278B7E048;
  v10 = v1;
  v4 = v2;
  v11 = v4;
  v5 = v1;
  [v4 enumerateAttributesInRange:0 options:v3 usingBlock:{0x100000, v9}];
  v6 = v11;
  v7 = v4;

  return v4;
}

void sub_23B33ECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRPairedDeviceRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass;
  v7 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v3[3] = &unk_278B7E070;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23B33EDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23B33EF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23B33F098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRDevicePropertyLocalizedModel()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getNRDevicePropertyLocalizedModelSymbolLoc_ptr;
  v7 = getNRDevicePropertyLocalizedModelSymbolLoc_ptr;
  if (!getNRDevicePropertyLocalizedModelSymbolLoc_ptr)
  {
    v1 = NanoRegistryLibrary();
    v5[3] = dlsym(v1, "NRDevicePropertyLocalizedModel");
    getNRDevicePropertyLocalizedModelSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getNRDevicePropertyLocalizedModel_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_23B33F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23B33F484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
  }

  getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278B7E090;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    NanoRegistryLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getNRDevicePropertyMainScreenWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyMainScreenWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyMainScreenWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyMainScreenHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyMainScreenHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyMainScreenHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyScreenScaleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyScreenScale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyScreenScaleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUIContentSizeCategorySmallSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIContentSizeCategorySmall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIContentSizeCategorySmallSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278B7E0C8;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    UIKitLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getUIContentSizeCategoryLargeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIContentSizeCategoryLarge");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIContentSizeCategoryLargeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertySystemVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertySystemVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyLocalizedModelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyLocalizedModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyLocalizedModelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertySystemNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertySystemName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SPProtoCacheAssetReadFrom(uint64_t a1, void *a2)
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
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
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
          v31 = PBReaderReadString();
          v32 = *(a1 + 24);
          *(a1 + 24) = v31;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_56;
          }

          v35 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v35;
        }
      }

      else if (v13 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v37 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v37 & 0x7F) << v24;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_53;
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

LABEL_53:
        *(a1 + 32) = v30;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v38 = 0;
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
            goto LABEL_49;
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

LABEL_49:
        *(a1 + 16) = v20;
      }

LABEL_56:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoAudioFilePlayerUpdateContainedIdentifierReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___SPProtoAudioFilePlayerUpdateContainedIdentifier__containedIdentifier;
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

    v13 = &OBJC_IVAR___SPProtoAudioFilePlayerUpdateContainedIdentifier__identifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoCacheAssetsReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SPProtoCacheAsset);
        [a1 addAssets:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SPProtoCacheAssetReadFrom(v13, a2))
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

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t SPProtoAudioFilePlayerMessageReadFrom(id *a1, void *a2)
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
        v14 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SPProtoAudioFileQueuePlayerReadFrom(&v14->super.super.isa, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SPProtoAudioFilePlayerAsset);
        objc_storeStrong(a1 + 1, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerAssetReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SPProtoAudioFilePlayerItem);
    objc_storeStrong(a1 + 2, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerItemReadFrom(&v14->super.super.isa, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass;
  v7 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke;
    v3[3] = &unk_278B7E070;
    v3[4] = &v4;
    __getUIImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23B34377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _RunLoopHandler()
{
  v43 = *MEMORY[0x277D85DE8];
  if ([__recordedValues count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [__recordedValues allKeys];
    v0 = [obj countByEnumeratingWithState:&v29 objects:v42 count:16];
    if (v0)
    {
      v2 = v0;
      v24 = *v30;
      *&v1 = 136446722;
      v22 = v1;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v29 + 1) + 8 * i);
          v5 = [__sharedRemoteInterface _interfaceControllerClientIDForControllerID:{v4, v22}];
          if (v5)
          {
            v6 = [__sharedRemoteInterface _interfaceControllerWithID:v4];
            v7 = [__recordedValues objectForKeyedSubscript:v4];
            v8 = [v7 count];

            v9 = wk_default_log();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v13 = objc_opt_class();
              *buf = 136446978;
              v34 = "_SendRecordedValues";
              v35 = 1024;
              v36 = 422;
              v37 = 2048;
              v38 = v8;
              v39 = 2114;
              v40 = v13;
              v14 = v13;
              _os_log_debug_impl(&dword_23B338000, v9, OS_LOG_TYPE_DEBUG, "%{public}s:%d: WatchKit: Send %lu setters to %{public}@", buf, 0x26u);
            }

            v10 = __sharedRemoteInterface;
            v11 = [__recordedValues objectForKeyedSubscript:v4];
            v41 = v5;
            v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
            [v10 sendSetViewController:v4 values:v11 clientIdentifiers:v12];
          }

          else
          {
            v6 = wk_default_log();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v34 = "_SendRecordedValues";
              v35 = 1024;
              v36 = 416;
              v37 = 2114;
              v38 = v4;
              _os_log_error_impl(&dword_23B338000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ has no client identifier", buf, 0x1Cu);
            }
          }
        }

        v2 = [obj countByEnumeratingWithState:&v29 objects:v42 count:16];
      }

      while (v2);
    }
  }

  [__recordedValues removeAllObjects];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = __performAfterSendSetViewControllers;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:buf count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v25 + 1) + 8 * j) + 16))();
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:buf count:16];
    }

    while (v17);
  }

  [__performAfterSendSetViewControllers removeAllObjects];
  result = [__cachedRunLoopValues removeAllObjects];
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

id getUNNotificationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUNNotificationClass_softClass;
  v7 = getUNNotificationClass_softClass;
  if (!getUNNotificationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUNNotificationClass_block_invoke;
    v3[3] = &unk_278B7E070;
    v3[4] = &v4;
    __getUNNotificationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23B3459CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ArchiveWithArchiverDelegate(void *a1)
{
  v1 = MEMORY[0x277CCAAB0];
  v2 = a1;
  v3 = [[v1 alloc] initRequiringSecureCoding:1];
  v4 = objc_opt_new();
  [v3 setDelegate:v4];
  [v3 encodeObject:v2 forKey:*MEMORY[0x277CCA308]];

  v5 = [v3 encodedData];

  return v5;
}

id SerializablePropertyValue(void *a1)
{
  v1 = a1;
  if (([MEMORY[0x277CCAC58] propertyList:v1 isValidForFormat:200] & 1) == 0)
  {
    v2 = ArchiveWithArchiverDelegate(v1);

    v1 = v2;
  }

  return v1;
}

void sub_23B349C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23B349EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23B34A0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23B34A2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23B34A4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SEL SetterForProperty(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (([v1 lengthOfBytesUsingEncoding:4] - 1) > 0x7C)
  {
    goto LABEL_5;
  }

  v2 = MEMORY[0x28223BE20]();
  v3 = v10 - ((v2 + 16) & 0xFFFFFFFFFFFFFFF0);
  if (([v1 getCString:v3 maxLength:v2 + 1 encoding:4] & 1) == 0)
  {
    goto LABEL_5;
  }

  *v3 = __toupper(*v3);
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v6 = [v4 stringWithFormat:@"set%@:", v5];

  if (v6)
  {
    v7 = NSSelectorFromString(v6);
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

id WKInterfaceControllerClass()
{
  if (WKInterfaceControllerClass_onceToken != -1)
  {
    WKInterfaceControllerClass_cold_1();
  }

  v1 = WKInterfaceControllerClass___wkInterfaceControllerClass;

  return v1;
}

Class __WKInterfaceControllerClass_block_invoke()
{
  result = NSClassFromString(&cfstr_Wkinterfacecon.isa);
  WKInterfaceControllerClass___wkInterfaceControllerClass = result;
  return result;
}

id SPInterfaceObjectWithType(void *a1)
{
  v1 = SPInterfaceObjectWithType_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    SPInterfaceObjectWithType_cold_1();
  }

  v3 = [SPInterfaceObjectWithType___interfaceClasses objectForKeyedSubscript:v2];

  return v3;
}

uint64_t __abort_with_reason(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getabort_with_reasonSymbolLoc_ptr;
  v8 = getabort_with_reasonSymbolLoc_ptr;
  if (!getabort_with_reasonSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getabort_with_reasonSymbolLoc_block_invoke;
    v4[3] = &unk_278B7E070;
    v4[4] = &v5;
    __getabort_with_reasonSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    __abort_with_reason_cold_1();
  }

  return v2(22, 1, a1, 2);
}

void sub_23B34E6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUNUserNotificationCenterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUNUserNotificationCenterClass_softClass;
  v7 = getUNUserNotificationCenterClass_softClass;
  if (!getUNUserNotificationCenterClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUNUserNotificationCenterClass_block_invoke;
    v3[3] = &unk_278B7E070;
    v3[4] = &v4;
    __getUNUserNotificationCenterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23B34F3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278B7E590;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    __getUIImageClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1();
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUNNotificationClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUNNotificationClass_block_invoke_cold_1();
  }

  getUNNotificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UserNotificationsLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __UserNotificationsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278B7E5A8;
    v5 = 0;
    UserNotificationsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UserNotificationsLibraryCore_frameworkLibrary;
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    UserNotificationsLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __UserNotificationsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserNotificationsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __SPInterfaceObjectWithType_block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"button";
  v4[0] = objc_opt_class();
  v3[1] = @"switch";
  v4[1] = objc_opt_class();
  v3[2] = @"image";
  v4[2] = objc_opt_class();
  v3[3] = @"label";
  v4[3] = objc_opt_class();
  v3[4] = @"list";
  v4[4] = objc_opt_class();
  v3[5] = @"table";
  v4[5] = objc_opt_class();
  v3[6] = @"group";
  v4[6] = objc_opt_class();
  v3[7] = @"map";
  v4[7] = objc_opt_class();
  v3[8] = @"slider";
  v4[8] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = SPInterfaceObjectWithType___interfaceClasses;
  SPInterfaceObjectWithType___interfaceClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void *__getabort_with_reasonSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SystemLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SystemLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278B7E5C0;
    v7 = 0;
    SystemLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SystemLibraryCore_frameworkLibrary;
  if (!SystemLibraryCore_frameworkLibrary)
  {
    __getabort_with_reasonSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "abort_with_reason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getabort_with_reasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SystemLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SystemLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUNUserNotificationCenterClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUNUserNotificationCenterClass_block_invoke_cold_1();
  }

  getUNUserNotificationCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUNNotificationDefaultActionIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UserNotificationsLibrary();
  result = dlsym(v2, "UNNotificationDefaultActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNNotificationDefaultActionIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUNNotificationResponseClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNNotificationResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUNNotificationResponseClass_block_invoke_cold_1();
  }

  getUNNotificationResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 14) = v3;
  *(a3 + 18) = 2114;
  *(a3 + 20) = result;
  *(a3 + 28) = 2114;
  *(a3 + 30) = a2;
  return result;
}

uint64_t SPProtoAudioFilePlayerCurrentTimeReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v18 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoAudioFilePlayerAssetUpdateMetaDataReadFrom(uint64_t a1, void *a2)
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
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 24;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_32:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_38;
            }

            v14 = PBReaderReadString();
            v15 = 40;
          }
        }

        else if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 48;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        goto LABEL_37;
      }

      if (v13 == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_37;
      }

      if (v13 != 3)
      {
        goto LABEL_32;
      }

      *(a1 + 64) |= 1u;
      v22 = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v22;
LABEL_38:
      v20 = [a2 position];
      if (v20 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 32;
LABEL_37:
    v19 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoCacheSyncDataReadFrom(uint64_t a1, void *a2)
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
        v15 = objc_alloc_init(SPProtoCacheAssets);
        v16 = 16;
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
LABEL_26:

        goto LABEL_28;
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

    v15 = objc_alloc_init(SPProtoCacheAssets);
    v16 = 24;
LABEL_23:
    objc_storeStrong((a1 + v16), v15);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !SPProtoCacheAssetsReadFrom(v15, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoCacheMessageReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
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

      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_50;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadData();
        v15 = 8;
        goto LABEL_50;
      }

      if (v13 != 6)
      {
        goto LABEL_38;
      }

      v16 = objc_alloc_init(SPProtoCacheSyncData);
      objc_storeStrong((a1 + 48), v16);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !SPProtoCacheSyncDataReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_60:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v34[0] & 0x7F) << v17;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_54;
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

LABEL_54:
        v31 = 40;
        goto LABEL_59;
      case 2:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v34[0] & 0x7F) << v24;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_58;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_58:
        v31 = 24;
LABEL_59:
        *(a1 + v31) = v23;
        goto LABEL_60;
      case 3:
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_50:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_60;
    }

LABEL_38:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoAudioFilePlayerStatusReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 32;
LABEL_44:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_55;
      }

      if (v13 != 2)
      {
LABEL_45:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_55;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 44) |= 2u;
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
      *(a1 + 40) = v22;
LABEL_55:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v14 = PBReaderReadString();
        v15 = 24;
        break;
      case 4:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 44) |= 1u;
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
            goto LABEL_50;
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

LABEL_50:
        *(a1 + 8) = v29;
        goto LABEL_55;
      case 5:
        v14 = PBReaderReadData();
        v15 = 16;
        break;
      default:
        goto LABEL_45;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

void sub_23B356B3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23B3582D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke_0(uint64_t a1)
{
  NanoRegistryLibrary_0();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1_0();
  }

  getNRPairedDeviceRegistryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278B7F090;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary_0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_0)
  {
    NanoRegistryLibrary_cold_1_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getNRDevicePropertyCurrentUserLocaleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_0();
  result = dlsym(v2, "NRDevicePropertyCurrentUserLocale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getXcodeSupportRemoteObjectProxy(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "getXcodeSupportRemoteObjectProxy";
    v17 = 1024;
    v18 = 80;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ", buf, 0x12u);
  }

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.companionappd" options:4096];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E10BE8];
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E0FCE8];
  [v3 setExportedInterface:v5];

  v6 = objc_alloc_init(SPXcodeSupport);
  [v3 setExportedObject:v6];

  [v3 resume];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __getXcodeSupportRemoteObjectProxy_block_invoke;
  v13[3] = &unk_278B7F128;
  v7 = v1;
  v14 = v7;
  v8 = [v3 remoteObjectProxyWithErrorHandler:v13];
  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getXcodeSupportRemoteObjectProxy_block_invoke_99;
    v10[3] = &unk_278B7F150;
    v12 = v7;
    v11 = v8;
    spUtils_dispatchAsyncToMainThread(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __getXcodeSupportRemoteObjectProxy_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __getXcodeSupportRemoteObjectProxy_block_invoke_2;
  v5[3] = &unk_278B7E4F8;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  spUtils_dispatchAsyncToMainThread(v5);
}

uint64_t __getXcodeSupportRemoteObjectProxy_block_invoke_2(uint64_t a1)
{
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __getXcodeSupportRemoteObjectProxy_block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void SPLaunchSockPuppetAppForCompanionAppWithIdentifier(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v18 = "SPLaunchSockPuppetAppForCompanionAppWithIdentifier";
    v19 = 1024;
    v20 = 148;
    v21 = 2114;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@, options=%{public}@", buf, 0x26u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke;
  v13[3] = &unk_278B7F1C8;
  v15 = v5;
  v16 = v7;
  v14 = v6;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  getXcodeSupportRemoteObjectProxy(v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v25 = v6;
    if (SPHoldCompanionExtensionProcessAssertion_block_invoke_onceToken != -1)
    {
      __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_cold_1();
    }

    v27 = [MEMORY[0x277CBEB38] dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [*(a1 + 32) allKeys];
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = [SPHoldCompanionExtensionProcessAssertion_block_invoke_sOptionsTranslations objectForKeyedSubscript:v13];
          v15 = [*(a1 + 32) objectForKeyedSubscript:v13];
          if ([SPHoldCompanionExtensionProcessAssertion_block_invoke_sKeysToLeaveValuesUntranslated containsObject:v13])
          {
            v16 = v15;
          }

          else if ([SPHoldCompanionExtensionProcessAssertion_block_invoke_sKeysWithBoolValues containsObject:v13])
          {
            v17 = [v15 BOOLValue];
            v18 = @"NO";
            if (v17)
            {
              v18 = @"YES";
            }

            v16 = v18;
          }

          else
          {
            v16 = [SPHoldCompanionExtensionProcessAssertion_block_invoke_sOptionsTranslations objectForKeyedSubscript:v15];
          }

          v19 = v16;
          if (v14)
          {
            v20 = v16 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            [v27 setObject:v16 forKeyedSubscript:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v10);
    }

    v21 = *(a1 + 40);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_3;
    v28[3] = &unk_278B7F1A0;
    v29 = v21;
    v30 = *(a1 + 32);
    v31 = *(a1 + 48);
    v22 = v27;
    [v5 launchSockPuppetAppForCompanionAppWithIdentifier:v29 options:v27 completion:v28];

    v7 = v26;
  }

  else
  {
    v23 = wk_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_cold_2();
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_100;
    v36[3] = &unk_278B7F150;
    v38 = *(a1 + 48);
    v37 = v7;
    spUtils_dispatchSyncToMainThread(v36);

    v22 = v38;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_2()
{
  v10[10] = *MEMORY[0x277D85DE8];
  v9[0] = @"SPXcodeSupportAppLaunchModeKey";
  v9[1] = @"SPXcodeSupportAppLaunchModeValueGlance";
  v10[0] = @"WK_APP_LAUNCH_MODE";
  v10[1] = @"GLANCE";
  v9[2] = @"SPXcodeSupportAppLaunchModeValueComplication";
  v9[3] = @"SPXcodeSupportAppLaunchModeValueNotification";
  v10[2] = @"COMPLICATION";
  v10[3] = @"NOTIFICATION";
  v9[4] = @"SPXcodeSupportAppLaunchModeNotificationRemotePayloadKey";
  v9[5] = @"SPXcodeSupportAppLaunchModeNotificationForceStaticPresentationKey";
  v10[4] = @"WK_NOTIF_CONTEXT";
  v10[5] = @"WK_NOTIF_FORCE_STATIC";
  v9[6] = @"SPDeviceBacklightAssertionTime";
  v9[7] = @"SPHoldCompanionExtensionProcessAssertion";
  v10[6] = @"lgbl";
  v10[7] = @"SPServerHoldCompanionExtensionProcessAssertion";
  v9[8] = @"SPXcodeSupportAppLaunchEnvironmentKey";
  v9[9] = @"SPXcodeSupportAppLaunchArgumentsKey";
  v10[8] = @"xle";
  v10[9] = @"xla";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:10];
  v1 = SPHoldCompanionExtensionProcessAssertion_block_invoke_sOptionsTranslations;
  SPHoldCompanionExtensionProcessAssertion_block_invoke_sOptionsTranslations = v0;

  v8 = @"SPXcodeSupportAppLaunchModeNotificationForceStaticPresentationKey";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v3 = SPHoldCompanionExtensionProcessAssertion_block_invoke_sKeysWithBoolValues;
  SPHoldCompanionExtensionProcessAssertion_block_invoke_sKeysWithBoolValues = v2;

  v7[0] = @"SPXcodeSupportAppLaunchModeNotificationRemotePayloadKey";
  v7[1] = @"SPSimulatorAppLaunchModeApplicationLaunchURLKey";
  v7[2] = @"SPDeviceBacklightAssertionTime";
  v7[3] = @"SPHoldCompanionExtensionProcessAssertion";
  v7[4] = @"SPXcodeSupportAppLaunchEnvironmentKey";
  v7[5] = @"SPXcodeSupportAppLaunchArgumentsKey";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v5 = SPHoldCompanionExtensionProcessAssertion_block_invoke_sKeysToLeaveValuesUntranslated;
  SPHoldCompanionExtensionProcessAssertion_block_invoke_sKeysToLeaveValuesUntranslated = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_3(id *a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_4;
  v7[3] = &unk_278B7F178;
  v12 = a2;
  v8 = a1[4];
  v9 = a1[5];
  v10 = v5;
  v11 = a1[6];
  v6 = v5;
  spUtils_dispatchSyncToMainThread(v7);
}

uint64_t __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = wk_default_log();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v11 = 136446978;
      v12 = "SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_4";
      v13 = 1024;
      v14 = 213;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_23B338000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Successfully launched WatchKit app for companionAppIdentifier %{public}@ with options %{public}@", &v11, 0x26u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_4_cold_1(a1, v4);
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void SPTerminateSockPuppetAppForCompanionAppWithIdentifier(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "SPTerminateSockPuppetAppForCompanionAppWithIdentifier";
    v14 = 1024;
    v15 = 224;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", buf, 0x1Cu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke;
  v9[3] = &unk_278B7F218;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  getXcodeSupportRemoteObjectProxy(v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_113;
    v9[3] = &unk_278B7F128;
    v6 = &v10;
    v7 = *(a1 + 32);
    v10 = *(a1 + 40);
    [a2 terminateSockPuppetAppForCompanionAppWithIdentifier:v7 completion:v9];
  }

  else
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_cold_1();
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_112;
    v11[3] = &unk_278B7F1F0;
    v6 = &v12;
    v12 = v5;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    spUtils_dispatchSyncToMainThread(v11);
  }
}

uint64_t __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_112(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = a1[4];
  v4 = wk_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_112_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[5];
    v10 = 136446722;
    v11 = "SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke";
    v12 = 1024;
    v13 = 246;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Successfully terminated WatchKit app for companionAppIdentifier %{public}@", &v10, 0x1Cu);
  }

  v7 = a1[4];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_2;
  v6[3] = &unk_278B7F150;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  spUtils_dispatchSyncToMainThread(v6);
}

void SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier";
    v14 = 1024;
    v15 = 263;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", buf, 0x1Cu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke;
  v9[3] = &unk_278B7F290;
  v10 = v3;
  v11 = v4;
  v6 = v3;
  v7 = v4;
  getXcodeSupportRemoteObjectProxy(v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_2;
    v11[3] = &unk_278B7F268;
    v7 = &v12;
    v8 = v6;
    v12 = v8;
    v9 = &v13;
    v13 = *(a1 + 40);
    [a2 getSockPuppetAppRunningStatusForCompanionAppWithIdentifier:v8 completion:v11];
  }

  else
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_cold_1();
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_114;
    v14[3] = &unk_278B7F150;
    v7 = &v16;
    v16 = *(a1 + 40);
    v9 = &v15;
    v15 = v5;
    spUtils_dispatchSyncToMainThread(v14);
  }
}

void __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_3;
  v7[3] = &unk_278B7F240;
  v8 = v5;
  v11 = a3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  spUtils_dispatchSyncToMainThread(v7);
}

uint64_t __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = wk_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_3_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v12 = 136446978;
    v13 = "SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_3";
    v14 = 1024;
    v15 = 275;
    v16 = 1024;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Successfully got app running status=%d for WatchKit app for companionAppIdentifier %{public}@", &v12, 0x22u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void SPGetCompanionExtensionPIDForCompanionAppWithIdentifier(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "SPGetCompanionExtensionPIDForCompanionAppWithIdentifier";
    v14 = 1024;
    v15 = 286;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", buf, 0x1Cu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke;
  v9[3] = &unk_278B7F290;
  v10 = v3;
  v11 = v4;
  v6 = v3;
  v7 = v4;
  getXcodeSupportRemoteObjectProxy(v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_2;
    v11[3] = &unk_278B7F2E0;
    v7 = &v12;
    v8 = v6;
    v12 = v8;
    v9 = &v13;
    v13 = *(a1 + 40);
    [a2 getCompanionExtensionPIDForCompanionAppWithIdentifier:v8 completion:v11];
  }

  else
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_cold_1();
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_116;
    v14[3] = &unk_278B7F150;
    v7 = &v16;
    v16 = *(a1 + 40);
    v9 = &v15;
    v15 = v5;
    spUtils_dispatchSyncToMainThread(v14);
  }
}

void __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_3;
  v7[3] = &unk_278B7F2B8;
  v8 = v5;
  v11 = a3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  spUtils_dispatchSyncToMainThread(v7);
}

uint64_t __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = wk_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_3_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v12 = 136446978;
    v13 = "SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_3";
    v14 = 1024;
    v15 = 298;
    v16 = 1024;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Successfully got PID=%d for WK1 extension for companionAppIdentifier %{public}@", &v12, 0x22u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier";
    v14 = 1024;
    v15 = 309;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", buf, 0x1Cu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke;
  v9[3] = &unk_278B7F290;
  v10 = v3;
  v11 = v4;
  v6 = v3;
  v7 = v4;
  getXcodeSupportRemoteObjectProxy(v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_2;
    v11[3] = &unk_278B7F308;
    v7 = &v12;
    v8 = v6;
    v12 = v8;
    v9 = &v13;
    v13 = *(a1 + 40);
    [a2 xcodeWillInstallSockPuppetAppWithCompanionAppIdentifier:v8 completion:v11];
  }

  else
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_cold_1();
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_118;
    v14[3] = &unk_278B7F150;
    v7 = &v16;
    v16 = *(a1 + 40);
    v9 = &v15;
    v15 = v5;
    spUtils_dispatchSyncToMainThread(v14);
  }
}

void __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_3;
  v5[3] = &unk_278B7F1F0;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  spUtils_dispatchSyncToMainThread(v5);
}

uint64_t __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_3(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = a1[4];
  v4 = wk_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_3_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[5];
    v10 = 136446722;
    v11 = "SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_3";
    v12 = 1024;
    v13 = 321;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Successfully handled willInstall for WatchKit app for companionAppIdentifier %{public}@", &v10, 0x1Cu);
  }

  v7 = a1[4];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 40);
  v5 = *a2;
  return result;
}

uint64_t SPProtoObjectMessageReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _WKInterfaceControllerCreateClass(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9, double a10)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  objc_storeStrong(&__viewControllerID, a3);
  v23 = a6;
  v24 = a1;
  objc_storeStrong(&__properties, a4);
  objc_storeStrong(&__gestureDescriptions, a5);
  v25 = MEMORY[0x23EE9A9D0](v23);

  v26 = __remoteSetup;
  __remoteSetup = v25;

  *&__contentFrame = a7;
  *(&__contentFrame + 1) = a8;
  qword_27E131AB8 = *&a9;
  unk_27E131AC0 = *&a10;
  v27 = NSClassFromString(v24);

  if ([(objc_class *)v27 isSubclassOfClass:objc_opt_class()])
  {
    v28 = objc_alloc_init(v27);
LABEL_5:
    v31 = v28;
    goto LABEL_6;
  }

  v29 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v29, sel_initWithContext_);
  if (class_getInstanceMethod(v27, sel_initWithContext_) != InstanceMethod)
  {
    v28 = [[v27 alloc] initWithContext:v19];
    goto LABEL_5;
  }

  v31 = objc_alloc_init(v27);
  [v31 awakeWithContext:v19];
LABEL_6:
  v32 = __viewControllerID;
  __viewControllerID = 0;

  v33 = __gestureDescriptions;
  __gestureDescriptions = 0;

  v34 = __properties;
  __properties = 0;

  v35 = __remoteSetup;
  __remoteSetup = 0;

  v36 = *(MEMORY[0x277CBF3A0] + 16);
  __contentFrame = *MEMORY[0x277CBF3A0];
  *&qword_27E131AB8 = v36;

  return v31;
}

uint64_t spUtils_uniqueNumber()
{
  ++spUtils_uniqueNumber_counter;
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processIdentifier];
  v2 = spUtils_uniqueNumber_counter | (v1 << 16);

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%X", v2];
}

id spUtils_serializeObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v6 = 0;
    v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v6];
    v3 = v6;
    v4 = v3;
    if (!v2)
    {
      spUtils_serializeObject_cold_1(v3, v1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id spUtils_deserializeObject(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6 = 0;
    a1 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v3 fromData:a1 error:&v6];
    v4 = v6;
    if (!a1)
    {
      spUtils_deserializeObject_cold_1(v3, v4);
    }
  }

  return a1;
}

id spUtils_allowedClassesForUserActivity()
{
  if (spUtils_allowedClassesForUserActivity_onceToken != -1)
  {
    spUtils_allowedClassesForUserActivity_cold_1();
  }

  v1 = spUtils_allowedClassesForUserActivity___allowedClasses;

  return v1;
}

uint64_t __spUtils_allowedClassesForUserActivity_block_invoke()
{
  v11 = MEMORY[0x277CBEB98];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  spUtils_allowedClassesForUserActivity___allowedClasses = [v11 setWithObjects:{v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

id spUtils_localizedStringForSystemLanguage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  v6 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [v6 firstObject];
  v8 = v3;
  v9 = v5;
  v10 = v7;
  if (![v8 length] || !objc_msgSend(@"Localizable", "length") || !objc_msgSend(v10, "length"))
  {
    goto LABEL_9;
  }

  v11 = [v9 localizations];
  v12 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
  v13 = CFBundleCopyLocalizationsForPreferences(v11, v12);
  if (![(__CFArray *)v13 count])
  {
    goto LABEL_7;
  }

  v14 = [(__CFArray *)v13 objectAtIndex:0];
  v15 = [v9 pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:v14];

  if (v15)
  {
    [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v15];
    v16 = v22 = v11;
    v17 = [v16 objectForKey:v8];

    v11 = v22;
  }

  else
  {
LABEL_7:
    v17 = 0;
  }

  if (!v17)
  {
LABEL_9:
    v17 = [v9 localizedStringForKey:v8 value:&stru_284DFE9D8 table:@"Localizable"];
  }

  v18 = v17;
  if (!v17)
  {
    v19 = wk_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      spUtils_localizedStringForSystemLanguage_cold_1(v8, v4, v19);
    }

    v18 = v8;
  }

  v20 = v18;

  return v20;
}

BOOL spUtils_appExtensionFirstUnlock()
{
  v12 = *MEMORY[0x277D85DE8];
  if (spUtils_appExtensionFirstUnlock_onceToken != -1)
  {
    spUtils_appExtensionFirstUnlock_cold_1();
  }

  state64 = 0;
  if (notify_get_state(spUtils_appExtensionFirstUnlock_token, &state64))
  {
    v0 = wk_default_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      spUtils_appExtensionFirstUnlock_cold_2();
    }

    v1 = 1;
  }

  else
  {
    v1 = state64 != 0;
  }

  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "spUtils_appExtensionFirstUnlock";
    v8 = 1024;
    v9 = 190;
    v10 = 1024;
    v11 = v1;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: unlocked=%d", buf, 0x18u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void __spUtils_appExtensionFirstUnlock_block_invoke()
{
  if (notify_register_check([@"com.apple.watchkit.notify.first_unlock" UTF8String], &spUtils_appExtensionFirstUnlock_token))
  {
    v0 = 1;
  }

  else
  {
    v0 = spUtils_appExtensionFirstUnlock_token == -1;
  }

  if (v0)
  {
    v1 = wk_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __spUtils_appExtensionFirstUnlock_block_invoke_cold_1();
    }
  }
}

uint64_t spUtils_machTimeString()
{
  v0 = mach_absolute_time();
  if (spUtils_machTimeString_onceToken != -1)
  {
    spUtils_machTimeString_cold_1();
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@" [%013.06f]", *&spUtils_machTimeString_mach_time_rate_i * v0];
}

double __spUtils_machTimeString_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  spUtils_machTimeString_mach_time_rate_i = *&result;
  return result;
}

BOOL spUtils_isRunningInF5DemoMode()
{
  if (DemoProgramNumber___onceToken != -1)
  {
    spUtils_isRunningInF5DemoMode_cold_1();
  }

  return DemoProgramNumber___fProgramNumber == 5;
}

BOOL spUtils_isRunningInF201DemoMode()
{
  if (DemoProgramNumber___onceToken != -1)
  {
    spUtils_isRunningInF5DemoMode_cold_1();
  }

  return DemoProgramNumber___fProgramNumber == 201;
}

uint64_t spUtils_isRunningInAnyDemoMode()
{
  if (DemoProgramNumber___onceToken != -1)
  {
    spUtils_isRunningInF5DemoMode_cold_1();
  }

  return DemoProgramNumber___demoModeEnabled;
}

BOOL spUtils_isRTL()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getUIApplicationClass_softClass;
  v9 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getUIApplicationClass_block_invoke;
    v5[3] = &unk_278B7E070;
    v5[4] = &v6;
    __getUIApplicationClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

void sub_23B35EDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id spUtils_SPURLQueryAllowedCharacterSet()
{
  if (spUtils_SPURLQueryAllowedCharacterSet_onceToken != -1)
  {
    spUtils_SPURLQueryAllowedCharacterSet_cold_1();
  }

  v1 = spUtils_SPURLQueryAllowedCharacterSet__spURLQueryAllowedCharacterSet;

  return v1;
}

id spUtils_companionConnectionClientIdentifier(int a1, int a2)
{
  if (a1 && a2)
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      spUtils_companionConnectionClientIdentifier_cold_1();
    }
  }

  v5 = spUtils_uniqueNumber();
  v6 = v5;
  if (!a1 || a2)
  {
    if (a2)
    {
      v7 = @"-";
    }

    else
    {
      v7 = @"_";
    }

    v8 = [v5 stringByAppendingString:v7];

    v6 = v8;
  }

  return v6;
}

uint64_t spUtils_isApplicationCompanionConnectionClientIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@"_"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 hasSuffix:@"-"] ^ 1;
  }

  return v2;
}

void spUtils_dispatchSyncToMainThread(void *a1)
{
  block = a1;
  if (isRunningOnMainQueue())
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

BOOL isRunningOnMainQueue()
{
  if (_setupMainQueueSpecific_onceToken != -1)
  {
    isRunningOnMainQueue_cold_1();
  }

  return dispatch_get_specific(&kIsMainQueueKey) == MEMORY[0x277D85CD0];
}

void spUtils_dispatchAsyncToMainThread(void *a1)
{
  block = a1;
  if (isRunningOnMainQueue())
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

id spUtils_UIColorFromString(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"@"];
  if (v3)
  {
    v4 = v2;
    v5 = 1.0;
    if (v2 < [v1 length] - 1)
    {
      v6 = [v1 substringFromIndex:v4 + 1];
      [v6 floatValue];
      v8 = v7;

      v5 = fmin(fmax(v8, 0.0), 1.0);
    }

    v9 = [v1 substringToIndex:v4];
  }

  else
  {
    v5 = 1.0;
    v9 = v1;
  }

  if (([v9 hasSuffix:@"Color"] & 1) == 0)
  {
    v10 = [v9 stringByAppendingString:@"Color"];

    v9 = v10;
  }

  if ([v9 hasPrefix:@"_"])
  {
    do
    {
      v11 = [v9 substringFromIndex:1];

      v9 = v11;
    }

    while (([v11 hasPrefix:@"_"] & 1) != 0);
  }

  else
  {
    v11 = v9;
  }

  v12 = NSSelectorFromString(v11);
  getUIColorClass();
  v13 = objc_opt_class();
  if (!class_getClassMethod(v13, v12))
  {

    goto LABEL_19;
  }

  getUIColorClass();
  v14 = [objc_opt_class() performSelector:v12];
  v15 = v14;
  if (v14 && v5 < 1.0)
  {
    v16 = [v14 colorWithAlphaComponent:v5];

    v15 = v16;
  }

  if (!v15)
  {
LABEL_19:
    v29 = 0;
    v30 = 0;
    if ([v1 length])
    {
      v17 = sscanf([v1 cStringUsingEncoding:1], "%02x%02x%02x%02x", &v30 + 4, &v30, &v29 + 4, &v29);
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          UIColorClass = getUIColorClass();
          v22 = SHIDWORD(v30) / 255.0;
          v23 = v30 / 255.0;
          v24 = SHIDWORD(v29) / 255.0;
          v25 = 1.0;
        }

        else
        {
          if (v17 != 4)
          {
            goto LABEL_32;
          }

          UIColorClass = getUIColorClass();
          v22 = SHIDWORD(v30) / 255.0;
          v23 = v30 / 255.0;
          v24 = SHIDWORD(v29) / 255.0;
          v25 = v29 / 255.0;
        }

        v26 = [UIColorClass colorWithRed:v22 green:v23 blue:v24 alpha:v25];
LABEL_31:
        v15 = v26;
        if (v26)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      if (v17 == 1)
      {
        v18 = getUIColorClass();
        v19 = SHIDWORD(v30) / 255.0;
        v20 = 1.0;
        goto LABEL_28;
      }

      if (v17 == 2)
      {
        v18 = getUIColorClass();
        v19 = SHIDWORD(v30) / 255.0;
        v20 = v30 / 255.0;
LABEL_28:
        v26 = [v18 colorWithWhite:v19 alpha:v20];
        goto LABEL_31;
      }
    }

LABEL_32:
    v27 = wk_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      spUtils_UIColorFromString_cold_1();
    }

    v15 = 0;
  }

LABEL_35:

  return v15;
}

id getUIColorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIColorClass_softClass;
  v7 = getUIColorClass_softClass;
  if (!getUIColorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIColorClass_block_invoke;
    v3[3] = &unk_278B7E070;
    v3[4] = &v4;
    __getUIColorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23B35F550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23B35F8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DemoProgramNumber_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0))
  {
    DemoProgramNumber___demoModeEnabled = 1;
    DemoProgramNumber___fProgramNumber = CFPreferencesGetAppIntegerValue(@"FProgramNumber", @"com.apple.demo-settings", 0);
  }

  v0 = wk_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446978;
    v3 = "DemoProgramNumber_block_invoke";
    v4 = 1024;
    v5 = 234;
    v6 = 1024;
    v7 = DemoProgramNumber___demoModeEnabled;
    v8 = 1024;
    v9 = DemoProgramNumber___fProgramNumber;
    _os_log_impl(&dword_23B338000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Demo mode enabled = %d, Demo program number = %d", &v2, 0x1Eu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

Class __getUIApplicationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary_0();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIApplicationClass_block_invoke_cold_1();
  }

  getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void UIKitLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __UIKitLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278B7F750;
    v3 = 0;
    UIKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_1)
  {
    UIKitLibrary_cold_1_0(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __UIKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUIColorClass_block_invoke(uint64_t a1)
{
  UIKitLibrary_0();
  result = objc_getClass("UIColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIColorClass_block_invoke_cold_1();
  }

  getUIColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIFontClass_block_invoke(uint64_t a1)
{
  UIKitLibrary_0();
  result = objc_getClass("UIFont");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIFontClass_block_invoke_cold_1();
  }

  getUIFontClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIFontDescriptorClass_block_invoke(uint64_t a1)
{
  UIKitLibrary_0();
  result = objc_getClass("UIFontDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIFontDescriptorClass_block_invoke_cold_1();
  }

  getUIFontDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SPProtoAudioFileQueuePlayerSetItemsReadFrom(void *a1, void *a2)
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
        v17 = 0;
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    if (v14)
    {
      [a1 addPlayerItemIdentifiers:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

id wk_default_log()
{
  if (wk_default_log_onceToken != -1)
  {
    wk_default_log_cold_1();
  }

  v1 = wk_default_log___logger;

  return v1;
}

uint64_t __wk_default_log_block_invoke()
{
  wk_default_log___logger = os_log_create("com.apple.watchkit", "default");

  return MEMORY[0x2821F96F8]();
}

id wk_extension_loading_log()
{
  if (wk_extension_loading_log_onceToken != -1)
  {
    wk_extension_loading_log_cold_1();
  }

  v1 = wk_extension_loading_log___logger;

  return v1;
}

uint64_t __wk_extension_loading_log_block_invoke()
{
  wk_extension_loading_log___logger = os_log_create("com.apple.watchkit", "extension_loading");

  return MEMORY[0x2821F96F8]();
}

id wk_bg_app_refresh_log()
{
  if (wk_bg_app_refresh_log_onceToken != -1)
  {
    wk_bg_app_refresh_log_cold_1();
  }

  v1 = wk_bg_app_refresh_log___logger;

  return v1;
}

uint64_t __wk_bg_app_refresh_log_block_invoke()
{
  wk_bg_app_refresh_log___logger = os_log_create("com.apple.watchkit", "bg_app_refresh");

  return MEMORY[0x2821F96F8]();
}

void ____allowedClasses_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = spUtils_allowedClassesForUserActivity();
  v1 = __allowedClasses___allowedClasses;
  __allowedClasses___allowedClasses = v0;

  v2 = __allowedClasses___allowedClasses;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v4 = [v2 setByAddingObjectsFromArray:{v3, v7, v8}];
  v5 = __allowedClasses___allowedClasses;
  __allowedClasses___allowedClasses = v4;

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t SPProtoAudioFileQueuePlayerSetRateReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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
        v20 = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoSockPuppetPlistReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SPProtoSockPuppetObject);
        [a1 addObject:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SPProtoSockPuppetObjectReadFrom(v13, a2))
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

uint64_t SPProtoAudioFilePlayerAssetReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SPProtoAudioFilePlayerAssetUpdateMetaData);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerAssetUpdateMetaDataReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

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

    v13 = objc_alloc_init(SPProtoObjectMessage);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SPProtoObjectMessageReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoAudioFilePlayerItemReadFrom(id *a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
          if (v13 == 7)
          {
            v14 = objc_alloc_init(SPProtoObjectMessage);
            v15 = 4;
LABEL_42:
            objc_storeStrong(&a1[v15], v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SPProtoObjectMessageReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

LABEL_44:
            PBReaderRecallMark();

            goto LABEL_45;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(SPProtoAudioFilePlayerItemSetCurrentTime);
            objc_storeStrong(a1 + 6, v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerItemSetCurrentTimeReadFrom(v14, a2))
            {
LABEL_50:

              return 0;
            }

            goto LABEL_44;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(SPProtoObjectMessage);
            v15 = 5;
            goto LABEL_42;
          }

          if (v13 == 6)
          {
            v14 = objc_alloc_init(SPProtoObjectMessage);
            v15 = 3;
            goto LABEL_42;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(SPProtoAudioFilePlayerStatus);
          objc_storeStrong(a1 + 7, v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerStatusReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SPProtoObjectMessage);
          v15 = 2;
          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SPProtoAudioFilePlayerUpdateContainedIdentifier);
          objc_storeStrong(a1 + 8, v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerUpdateContainedIdentifierReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SPProtoObjectMessage);
          v15 = 1;
          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoAudioFilePlayerItemSetCurrentTimeReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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
        *(a1 + 24) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoSockPuppetMessageReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SPProtoSockPuppetPlist);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SPProtoSockPuppetPlistReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

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

    v13 = objc_alloc_init(SPProtoAudioFilePlayerMessage);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SPProtoAudioFilePlayerMessageReadFrom(&v13->super.super.isa, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_3_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(a2 + 14) = a3;
  *(a2 + 18) = 2114;
  *(a2 + 20) = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  CTFontSetAltTextStyleSpec();
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v3 = getNRPairedDeviceRegistryClass_softClass_1;
  v37 = getNRPairedDeviceRegistryClass_softClass_1;
  if (!getNRPairedDeviceRegistryClass_softClass_1)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getNRPairedDeviceRegistryClass_block_invoke_1;
    v32 = &unk_278B7E070;
    v33 = &v34;
    __getNRPairedDeviceRegistryClass_block_invoke_1(&v29);
    v3 = v35[3];
  }

  v4 = v3;
  _Block_object_dispose(&v34, 8);
  v5 = [v3 sharedInstance];
  v6 = [v5 getDevices];
  v7 = [v6 firstObject];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v8 = getNPSDomainAccessorClass_softClass;
  v37 = getNPSDomainAccessorClass_softClass;
  if (!getNPSDomainAccessorClass_softClass)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getNPSDomainAccessorClass_block_invoke;
    v32 = &unk_278B7E070;
    v33 = &v34;
    __getNPSDomainAccessorClass_block_invoke(&v29);
    v8 = v35[3];
  }

  v9 = v8;
  _Block_object_dispose(&v34, 8);
  v10 = [[v8 alloc] initWithDomain:@".GlobalPreferences"];
  v11 = [v10 synchronize];
  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v12 setBool:objc_msgSend(v10 forKey:{"BOOLForKey:", @"AppleICUForce24HourTime", @"AppleICUForce24HourTime"}];

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v13 setBool:objc_msgSend(v10 forKey:{"BOOLForKey:", @"AppleICUForce12HourTime", @"AppleICUForce12HourTime"}];

  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v15 = getNRDevicePropertyPreferredLanguagesSymbolLoc_ptr;
  v37 = getNRDevicePropertyPreferredLanguagesSymbolLoc_ptr;
  if (!getNRDevicePropertyPreferredLanguagesSymbolLoc_ptr)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getNRDevicePropertyPreferredLanguagesSymbolLoc_block_invoke;
    v32 = &unk_278B7E070;
    v33 = &v34;
    v16 = NanoRegistryLibrary_1();
    v17 = dlsym(v16, "NRDevicePropertyPreferredLanguages");
    *(v33[1] + 24) = v17;
    getNRDevicePropertyPreferredLanguagesSymbolLoc_ptr = *(v33[1] + 24);
    v15 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v15)
  {
    main_cold_2();
  }

  v18 = [v7 valueForProperty:*v15];
  [v14 setObject:v18 forKey:@"AppleLanguages"];

  v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v20 = getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr_0;
  v37 = getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr_0;
  if (!getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr_0)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getNRDevicePropertyCurrentUserLocaleSymbolLoc_block_invoke_0;
    v32 = &unk_278B7E070;
    v33 = &v34;
    v21 = NanoRegistryLibrary_1();
    v22 = dlsym(v21, "NRDevicePropertyCurrentUserLocale");
    *(v33[1] + 24) = v22;
    getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr_0 = *(v33[1] + 24);
    v20 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v20)
  {
    main_cold_1();
  }

  v23 = [v7 valueForProperty:*v20];
  [v19 setObject:v23 forKey:@"AppleLocale"];

  v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v24 synchronize];

  v25 = [MEMORY[0x277CCAB98] defaultCenter];
  [v25 postNotificationName:*MEMORY[0x277CBE620] object:0];

  v26 = [MEMORY[0x277D3D358] defaultService];
  v27 = objc_alloc_init(SPPluginDelegate);
  [v26 setDelegate:v27];

  [v26 run];
  return 0;
}

void sub_23B36A83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke_1(uint64_t a1)
{
  NanoRegistryLibrary_1();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1_1();
  }

  getNRPairedDeviceRegistryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278B7F788;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary_1;
  if (!NanoRegistryLibraryCore_frameworkLibrary_1)
  {
    NanoRegistryLibrary_cold_1_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getNPSDomainAccessorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278B7F7A0;
    v6 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    __getNPSDomainAccessorClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("NPSDomainAccessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1();
  }

  getNPSDomainAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getNRDevicePropertyPreferredLanguagesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_1();
  result = dlsym(v2, "NRDevicePropertyPreferredLanguages");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyPreferredLanguagesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyCurrentUserLocaleSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_1();
  result = dlsym(v2, "NRDevicePropertyCurrentUserLocale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getNRDevicePropertyLocalizedModel_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyLocalizedModel(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:46 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:40 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WKInterfaceDevice.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void UIKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WKInterfaceDevice.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void __abort_with_reason_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void __abort_with_reason(uint32_t, uint64_t, const char *, uint64_t)"}];
  [v0 handleFailureInFunction:v1 file:@"SPUtils.h" lineNumber:15 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getUIImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPRemoteInterface.m" lineNumber:157 description:{@"Unable to find class %s", "UIImage"}];

  __break(1u);
}

void __getUIImageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SPRemoteInterface.m" lineNumber:156 description:{@"%s", *a1}];

  __break(1u);
}

void __getUNNotificationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUNNotificationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPRemoteInterface.m" lineNumber:96 description:{@"Unable to find class %s", "UNNotification"}];

  __break(1u);
}

void UserNotificationsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UserNotificationsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SPRemoteInterface.m" lineNumber:87 description:{@"%s", *a1}];

  __break(1u);
}

void __getabort_with_reasonSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SystemLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SPUtils.h" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void __getUNUserNotificationCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUNUserNotificationCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPRemoteInterface.m" lineNumber:88 description:{@"Unable to find class %s", "UNUserNotificationCenter"}];

  __break(1u);
}

void __getUNNotificationResponseClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUNNotificationResponseClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPRemoteInterface.m" lineNumber:90 description:{@"Unable to find class %s", "UNNotificationResponse"}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPDeviceConnection.m" lineNumber:37 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SPDeviceConnection.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void __getXcodeSupportRemoteObjectProxy_block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0(&dword_23B338000, a2, a3, "%{public}s:%d: error %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: Got error from getXcodeSupportRemoteObjectProxy(): %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke_4_cold_1(void *a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v6 = 136447234;
  v7 = "SPLaunchSockPuppetAppForCompanionAppWithIdentifier_block_invoke";
  v8 = 1024;
  v9 = 215;
  v10 = 2114;
  v11 = v2;
  v12 = 2114;
  v13 = v3;
  v14 = 2114;
  v15 = v4;
  _os_log_error_impl(&dword_23B338000, a2, OS_LOG_TYPE_ERROR, "%{public}s:%d: Failed to launch  WatchKit app for companionAppIdentifier %{public}@ with options %{public}@. Got error %{public}@", &v6, 0x30u);
  v5 = *MEMORY[0x277D85DE8];
}

void __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: Got error from getXcodeSupportRemoteObjectProxy(): %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __SPTerminateSockPuppetAppForCompanionAppWithIdentifier_block_invoke_112_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  v5 = 136446978;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: Got error terminating WatchKit app for companionAppIdentifier %{public}@: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: Got error from getXcodeSupportRemoteObjectProxy(): %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __SPGetSockPuppetAppRunningStatusForCompanionAppWithIdentifier_block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  v5 = 136446978;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: Got error getting app running status for WatchKit app for companionAppIdentifier %{public}@: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: Got error from getXcodeSupportRemoteObjectProxy(): %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __SPGetCompanionExtensionPIDForCompanionAppWithIdentifier_block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  v5 = 136446978;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: Got error getting PID for WK1 extension for companionAppIdentifier %{public}@: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: Got error from getXcodeSupportRemoteObjectProxy(): %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __SPXcodeWillInstallSockPuppetAppWithCompanionAppIdentifier_block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  v5 = 136446978;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: Got error handling willInstall for WatchKit app for companionAppIdentifier %{public}@: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void spUtils_serializeObject_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSData *spUtils_serializeObject(__strong id)"];
  [v4 handleFailureInFunction:v5 file:@"SPUtils.m" lineNumber:89 description:{@"Failed to archive object. Got error %@, object: %@", a1, a2}];
}

void spUtils_deserializeObject_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id spUtils_deserializeObject(NSData *__strong, NSSet<Class> *__strong)"}];
  [v4 handleFailureInFunction:v5 file:@"SPUtils.m" lineNumber:101 description:{@"failed to unarchive data as one of %@: %@", a1, a2}];
}

void spUtils_localizedStringForSystemLanguage_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  [v6 fileExistsAtPath:a2];
  *v10 = 136447234;
  OUTLINED_FUNCTION_3();
  *&v10[7] = 157;
  v10[9] = 2114;
  v11 = a1;
  v12 = 2114;
  v13 = a2;
  v14 = v7;
  v15 = v8;
  _os_log_error_impl(&dword_23B338000, a3, OS_LOG_TYPE_ERROR, "%{public}s:%d: Failed to localize key %{public}@ in bundle at %{public}@. bundleExists=%d", v10, 0x2Cu);

  v9 = *MEMORY[0x277D85DE8];
}

void spUtils_appExtensionFirstUnlock_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x277D85DE8];
}

void __spUtils_appExtensionFirstUnlock_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x277D85DE8];
}

void spUtils_companionConnectionClientIdentifier_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void spUtils_UIColorFromString_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __getUIApplicationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIApplicationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPUtils.m" lineNumber:54 description:{@"Unable to find class %s", "UIApplication"}];

  __break(1u);
}

void UIKitLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SPUtils.m" lineNumber:53 description:{@"%s", *a1}];

  __break(1u);
}

void __getUIColorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIColorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPUtils.m" lineNumber:55 description:{@"Unable to find class %s", "UIColor"}];

  __break(1u);
}

void __getUIFontClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIFontClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPUtils.m" lineNumber:56 description:{@"Unable to find class %s", "UIFont"}];

  __break(1u);
}

void __getUIFontDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIFontDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SPUtils.m" lineNumber:57 description:{@"Unable to find class %s", "UIFontDescriptor"}];

  __break(1u);
}

void main_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyCurrentUserLocale(void)"];
  [v0 handleFailureInFunction:v1 file:@"main.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void main_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyPreferredLanguages(void)"];
  [v0 handleFailureInFunction:v1 file:@"main.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"main.m" lineNumber:28 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"main.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getNPSDomainAccessorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNPSDomainAccessorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"main.m" lineNumber:32 description:{@"Unable to find class %s", "NPSDomainAccessor"}];

  __break(1u);
}

void __getNPSDomainAccessorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoPreferencesSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"main.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}