uint64_t ENCloneFileToTemporaryDirectory(int a1, uint64_t a2, void *a3)
{
  v6 = objc_alloc(MEMORY[0x277CBEBC0]);
  v7 = NSTemporaryDirectory();
  v8 = [v6 initFileURLWithPath:v7 isDirectory:1];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:a3];

  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = open([v8 fileSystemRepresentation], 0);
  if ((v11 & 0x80000000) == 0 || *__error() && !*__error())
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __ENCloneFileToTemporaryDirectory_block_invoke;
    v28[3] = &__block_descriptor_36_e5_v8__0l;
    v29 = v11;
    v12 = MEMORY[0x2383EE560](v28);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = -1;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __ENCloneFileToTemporaryDirectory_block_invoke_2;
    v23[3] = &unk_278A4AF10;
    v23[4] = &v24;
    v13 = MEMORY[0x2383EE560](v23);
    if (a2)
    {
      v14 = sandbox_extension_consume();
      v25[3] = v14;
      if (v14 == -1 && (!*__error() || *__error()))
      {
        if (a3)
        {
          ENErrorF(2);
          *a3 = v20 = 0;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_26;
      }
    }

    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];

    v17 = [v16 UTF8String];
    v18 = [v8 URLByAppendingPathComponent:v16];
    v19 = [v18 fileSystemRepresentation];
    if (fclonefileat(a1, v11, v17, 0) && (!*__error() || *__error()))
    {
      if (a3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v20 = open(v19, 0);
      if ((v20 & 0x80000000) == 0)
      {
        unlink(v19);
LABEL_25:

LABEL_26:
        v13[2](v13);

        _Block_object_dispose(&v24, 8);
        v12[2](v12);

        goto LABEL_27;
      }

      if (*__error())
      {
        v21 = *__error();
        unlink(v19);
        if (!v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        unlink(v19);
      }

      if (a3)
      {
LABEL_23:
        ENErrorF(2);
        *a3 = v20 = 0;
        goto LABEL_25;
      }
    }

    v20 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_30:
    v20 = 0;
    goto LABEL_27;
  }

  ENErrorF(2);
  *a3 = v20 = 0;
LABEL_27:

  return v20;
}

void sub_238291C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  (*(v8 + 16))(v8);
  _Unwind_Resume(a1);
}

id ENErrorF(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  if ((a1 - 1) > 0xF)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_278A4AF50[a1 - 1];
  }

  v3 = NSPrintV();
  v11 = v2;
  v4 = NSPrintF();
  v5 = objc_alloc(MEMORY[0x277CCA9B8]);
  v12[0] = @"cuErrorDesc";
  v12[1] = @"cuErrorMsg";
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &stru_284B06230;
  }

  v13[0] = v4;
  v13[1] = v6;
  v12[2] = *MEMORY[0x277CCA068];
  v13[2] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:{3, v11, v3}];
  v8 = [v5 initWithDomain:@"ENErrorDomain" code:a1 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __ENCloneFileToTemporaryDirectory_block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result != -1)
  {
    return MEMORY[0x282204FA0]();
  }

  return result;
}

uint64_t ENCompareDiagnosisReportTypes(int a1, int a2)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_2382C88D8[a1 - 1];
  }

  if ((a2 - 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_2382C88D8[a2 - 1];
  }

  v4 = v2 > v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

SecKeyRef ENCopyPublicKeyFromBase64String(void *a1, void *a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      v15 = 2;
LABEL_11:
      ENErrorF(v15);
      *a2 = v11 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_6;
  }

  if ([v3 length] <= 0x41)
  {
    if (a2)
    {
      v15 = 15;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:1];
  v6 = [v5 subdataWithRange:{objc_msgSend(v5, "length") - 65, 65}];
  v16 = 0;
  v7 = *MEMORY[0x277CDC030];
  v8 = *MEMORY[0x277CDBFE0];
  v17[0] = *MEMORY[0x277CDC028];
  v17[1] = v8;
  v9 = *MEMORY[0x277CDC000];
  v18[0] = v7;
  v18[1] = v9;
  v17[2] = *MEMORY[0x277CDC018];
  v18[2] = &unk_284B0EF58;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v11 = SecKeyCreateWithData(v6, v10, &v16);
  v12 = v16;
  if (!v11)
  {
    ENCopyPublicKeyFromBase64String_cold_1(a2, v16);
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

id ENNestedErrorF(void *a1, uint64_t a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ((a2 - 1) > 0xF)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_278A4AF50[a2 - 1];
  }

  v5 = NSPrintV();
  v17 = v4;
  v6 = NSPrintF();
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v18[0] = @"cuErrorDesc";
  v18[1] = @"cuErrorMsg";
  v8 = &stru_284B06230;
  if (v5)
  {
    v8 = v5;
  }

  v19[0] = v6;
  v19[1] = v8;
  v9 = *MEMORY[0x277CCA068];
  v19[2] = v6;
  v10 = *MEMORY[0x277CCA7E8];
  v18[2] = v9;
  v18[3] = v10;
  v11 = v3;
  if (!v3)
  {
    v12 = *MEMORY[0x277CCA590];
    v11 = NSErrorF();
  }

  v19[3] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:{4, v17, v5}];
  v14 = [v7 initWithDomain:@"ENErrorDomain" code:a2 userInfo:v13];

  if (!v3)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id ENDataVaultPath()
{
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library/ExposureNotification"];

  return v1;
}

id ENDataVaultURL()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = ENDataVaultPath();
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];

  return v2;
}

id ENDefaultExpirationDate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] date];
  }

  v4 = v3;
  v5 = [v3 dateByAddingTimeInterval:1209600.0];

  return v5;
}

const char *ENErrorMetricTypeToString(int a1)
{
  if (a1 > 3003)
  {
    if (a1 <= 5002)
    {
      if (a1 > 4002)
      {
        if (a1 > 5000)
        {
          if (a1 == 5001)
          {
            return "APIErrorInsufficientStorage";
          }

          else
          {
            return "APIErrorAPIMisuse";
          }
        }

        if (a1 == 4003)
        {
          return "ExposureDatabaseMigrationFailure";
        }

        if (a1 == 5000)
        {
          return "APIErrorUnsupported";
        }
      }

      else
      {
        if (a1 > 4000)
        {
          if (a1 == 4001)
          {
            return "ExposureDatabaseUnknownError";
          }

          else
          {
            return "ExposureDatabaseDiskFull";
          }
        }

        if (a1 == 3004)
        {
          return "ExposureDetectionManagerKeyFileProcessingFailure";
        }

        if (a1 == 4000)
        {
          return "ExposureDatabaseCorruption";
        }
      }
    }

    else if (a1 <= 5999)
    {
      if (a1 <= 5004)
      {
        if (a1 == 5003)
        {
          return "APIErrorInternal";
        }

        else
        {
          return "APIErrorInsufficientMemory";
        }
      }

      if (a1 == 5005)
      {
        return "APIErrorBadFormat";
      }

      if (a1 == 5006)
      {
        return "APIErrorDataInaccessible";
      }
    }

    else
    {
      if (a1 <= 6001)
      {
        if (a1 == 6000)
        {
          return "ConfigurationManagerUnknownNetworkError";
        }

        else
        {
          return "ConfigurationManagerSigValidationFailure";
        }
      }

      switch(a1)
      {
        case 6002:
          return "ConfigurationManagerBadResponseFormat";
        case 6003:
          return "ConfigurationManagerStoreFailure";
        case 6004:
          return "ConfigurationManagerInvalidResponse";
      }
    }
  }

  else if (a1 <= 1999)
  {
    if (a1 > 1002)
    {
      if (a1 <= 1004)
      {
        if (a1 == 1003)
        {
          return "AdvertisementDatabaseFailedToOpenAllStores";
        }

        else
        {
          return "AdvertisementDatabaseUnauthorized";
        }
      }

      if (a1 == 1005)
      {
        return "AdvertisementDatabaseTempStoreLimit";
      }

      if (a1 == 1006)
      {
        return "AdvertisementDatabaseAEMDecryptionFailure";
      }
    }

    else
    {
      if (a1 > 1000)
      {
        if (a1 == 1001)
        {
          return "AdvertisementDatabaseUnknownError";
        }

        else
        {
          return "AdvertisementDatabaseDiskFull";
        }
      }

      if (!a1)
      {
        return "Unknown";
      }

      if (a1 == 1000)
      {
        return "AdvertisementDatabaseCorruption";
      }
    }
  }

  else
  {
    if (a1 <= 2003)
    {
      if (a1 > 2001)
      {
        if (a1 == 2002)
        {
          return "DownloadManagerKeyFileNoResponse";
        }

        else
        {
          return "DownloadManagerKeyFileBadFormat";
        }
      }

      else if (a1 == 2000)
      {
        return "DownloadManagerIndexFileNoResponse";
      }

      else
      {
        return "DownloadManagerIndexFileBadFormat";
      }
    }

    if (a1 > 3000)
    {
      if (a1 == 3001)
      {
        return "ExposureDetectionManagerUnableToOpenSigFile";
      }

      if (a1 == 3002)
      {
        return "ExposureDetectionManagerUnableToOpenKeyFile";
      }

      return "ExposureDetectionManagerSigValidationFailure";
    }

    if (a1 == 2004)
    {
      return "DownloadManagerStateFileCorrupt";
    }

    if (a1 == 3000)
    {
      return "ExposureDetectionManagerBadArchive";
    }
  }

  if ((a1 - 10000) >= 0x3E8)
  {
    v2 = "?";
  }

  else
  {
    v2 = "ConfigurationManagerHTTPErrorStatus";
  }

  if ((a1 - 9000) >= 0x3E8)
  {
    v3 = v2;
  }

  else
  {
    v3 = "DownloadManagerKeyFileHTTPErrorStatus";
  }

  if ((a1 - 8000) >= 0x3E8)
  {
    return v3;
  }

  else
  {
    return "DownloadManagerIndexFileHTTPErrorStatus";
  }
}

id ENFrameworkBundle()
{
  if (ENFrameworkBundle_sOnce != -1)
  {
    ENFrameworkBundle_cold_1();
  }

  v1 = ENFrameworkBundle_sBundle;

  return v1;
}

void __ENFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ExposureNotification"];
  v1 = ENFrameworkBundle_sBundle;
  ENFrameworkBundle_sBundle = v0;

  if (!ENFrameworkBundle_sBundle)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/Frameworks/ExposureNotification.framework" isDirectory:1];
    if (v2)
    {
      v5 = v2;
      v3 = [MEMORY[0x277CCA8D8] bundleWithURL:v2];
      v4 = ENFrameworkBundle_sBundle;
      ENFrameworkBundle_sBundle = v3;

      v2 = v5;
    }
  }
}

id ENLocalizedString(void *a1)
{
  v1 = a1;
  v2 = ENFrameworkBundle();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizations];
    v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        v7 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v4 forPreferences:v5];
        v8 = [v7 firstObject];

        if (v8)
        {
          v9 = [v3 pathForResource:@"Localizable" ofType:@"strings" inDirectory:@"." forLocalization:v8];
          if (v9)
          {
            v10 = v9;
            v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v9];
            v12 = [v11 objectForKeyedSubscript:v1];

            if (v12)
            {
LABEL_10:

              goto LABEL_11;
            }
          }

          else
          {
          }
        }
      }
    }

    v12 = [v3 localizedStringForKey:v1 value:&stru_284B06230 table:@"Localizable"];
    goto LABEL_10;
  }

  v12 = v1;
LABEL_11:

  return v12;
}

void ENWriteTemporaryExposureKeysCSV(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  FPrintF();
  FPrintF();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 keyData];
        v9 = [v7 rollingStartNumber];
        v10 = [v7 transmissionRiskLevel];
        v16 = [v7 rollingPeriod];
        FPrintF();

        if ([v7 daysSinceOnsetOfSymptoms] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [v7 daysSinceOnsetOfSymptoms];
          FPrintF();
        }

        v14 = [v7 diagnosisReportType];
        FPrintF();
        v15 = [v7 vaccinated];
        FPrintF();
        v12 = [v7 variantOfConcernType];
        FPrintF();
        FPrintF();
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:{16, v12}];
    }

    while (v4);
  }

  [obj count];
  FPrintF();

  v11 = *MEMORY[0x277D85DE8];
}

id ENXPCDecodeSecureObject(void *a1, const char *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_value(v7, a2);
    v9 = v8;
    if (v8)
    {
      if (MEMORY[0x2383EE9C0](v8) != MEMORY[0x277D86458])
      {
        if (a4)
        {
          v17 = 2;
LABEL_24:
          ENErrorF(v17);
          *a4 = v15 = 0;
          goto LABEL_10;
        }

        goto LABEL_25;
      }

      length = 0;
      data = xpc_dictionary_get_data(v7, a2, &length);
      if (data)
      {
        if (length)
        {
          v11 = data;
          v12 = objc_alloc(MEMORY[0x277CBEA90]);
          v13 = [v12 initWithBytesNoCopy:v11 length:length freeWhenDone:0];
          v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:v13 error:a4];
          if (v14)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
LABEL_9:

LABEL_10:
              goto LABEL_11;
            }

            if (a4)
            {
              ENErrorF(15);
              *a4 = v15 = 0;
              goto LABEL_9;
            }
          }

          v15 = 0;
          goto LABEL_9;
        }

        if (a4)
        {
          goto LABEL_23;
        }

LABEL_25:
        v15 = 0;
        goto LABEL_10;
      }

      if (!a4)
      {
        goto LABEL_25;
      }
    }

    else if (!a4)
    {
      goto LABEL_25;
    }

LABEL_23:
    v17 = 15;
    goto LABEL_24;
  }

  if (a4)
  {
    ENErrorF(2);
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_11:

  return v15;
}

id ENXPCDecodeSecureObjectIfPresent(void *a1, const char *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_value(v7, a2);
    if (v8)
    {
      v9 = ENXPCDecodeSecureObject(v7, a2, a3, a4);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (a4)
  {
    ENErrorF(2);
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL ENXPCEncodeSecureObject(void *a1, const char *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (MEMORY[0x2383EE9C0](v7) != MEMORY[0x277D86468])
  {
    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    if (a4)
    {
LABEL_10:
      ENErrorF(2);
      *a4 = v11 = 0;
      goto LABEL_6;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_6;
  }

  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:a4];
  v10 = v9;
  v11 = v9 != 0;
  if (v9)
  {
    xpc_dictionary_set_data(v7, a2, [v9 bytes], objc_msgSend(v9, "length"));
  }

LABEL_6:
  return v11;
}

uint64_t ENXPCGetNextClientID()
{
  if (ENXPCGetNextClientID_sOnce != -1)
  {
    ENXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&ENXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __ENXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  ENXPCGetNextClientID_sNext = word_27DF03F62 << 16;
  return result;
}

_BYTE *ENAEMCrypt()
{
  ccaes_ctr_crypt_mode();
  result = ccctr_one_shot();
  if (result)
  {
    v1 = ENAEMCrypt_cold_1();
    return ENRPIMetadataDeserialize(v1, v2);
  }

  return result;
}

_BYTE *ENRPIMetadataDeserialize(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 >= 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = (v2 >> 4) & 3;
  if (v5)
  {
    v6 = v2 > 0x3F;
  }

  else
  {
    v6 = 0;
  }

  *result = *a2 >> 6;
  result[1] = v5;
  if (v6)
  {
    v7 = (v2 >> 2) & 3;
  }

  else
  {
    v7 = v4;
  }

  result[2] = v3;
  result[3] = v7;
  return result;
}

_BYTE *ENRPIMetadataSerialize(_BYTE *result, uint64_t a2)
{
  *a2 = (*result << 6) | (16 * (result[1] & 3)) | (4 * (result[3] & 3));
  *(a2 + 1) = result[2];
  *(a2 + 2) = 0;
  return result;
}

uint64_t ENAEMKDerive()
{
  ccsha256_di();
  result = cchkdf();
  if (result)
  {
    v1 = ENAEMKDerive_cold_1();
    return ENRPIDerive(v1);
  }

  return result;
}

uint64_t ENRPIDerive()
{
  v2 = *MEMORY[0x277D85DE8];
  ccaes_ecb_encrypt_mode();
  result = ccecb_one_shot();
  if (result)
  {
    ENRPIDerive_cold_1();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ENRPIDeriveBatch(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v7 = &v13[-2 * v6];
  bzero(v7, v8);
  if (a4)
  {
    v9 = a4;
    v10 = v7;
    do
    {
      *(v10 + 2) = 18768;
      *v10 = 1378700869;
      *(v10 + 6) = 0;
      *(v10 + 5) = 0;
      *(v10 + 3) = a3;
      v10 += 2;
      ++a3;
      --v9;
    }

    while (v9);
  }

  ccaes_ecb_encrypt_mode();
  result = ccecb_one_shot();
  if (result)
  {
    ENRPIDeriveBatch_cold_1();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ENRPIKDerive()
{
  ccsha256_di();
  result = cchkdf();
  if (result)
  {
    v1 = ENRPIKDerive_cold_1();
    return ENTEKGenerate(v1);
  }

  return result;
}

ENExposureDetectionHistoryCheck *ENTEKGenerate(uint64_t a1)
{
  v2 = ccrng();
  result = (*v2)(v2, 16, a1);
  if (result)
  {
    v4 = ENTEKGenerate_cold_1();
    return [(ENExposureDetectionHistoryCheck *)v4 init];
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_238297F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382998D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23829A788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return CUXPCDecodeDouble();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return CUXPCDecodeSInt64RangedEx();
}

void LogInvalidValueForKey(void *a1, void *a2)
{
  v4 = a2;
  v3 = [a1 objectForKeyedSubscript:?];
  if (v3)
  {
    if (gLogCategory__ENRegionServerConfiguration <= 10 && (gLogCategory__ENRegionServerConfiguration != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else if (gLogCategory__ENRegionServerConfiguration <= 10 && (gLogCategory__ENRegionServerConfiguration != -1 || _LogCategory_Initialize()))
  {
    LogInvalidValueForKey_cold_1();
  }
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return CFDictionaryGetInt64Ranged();
}

void OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void OUTLINED_FUNCTION_5(uint64_t a1)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void sub_2382A0B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  (*(v26 + 16))(v26);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2382A19BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382A1F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  (*(a9 + 16))();
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return CUXPCDecodeUInt64RangedEx();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return [v0 readDataIntoBuffer:v2 - 192 maxLength:128 error:v1];
}

void sub_2382A3910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2382A5758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2382A83C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382A89A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  (*(v8 + 16))(v8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2382AA034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382AB8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382AC230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(v12 + 16))(v12);
  (*(v11 + 16))(v11);
  (*(v10 + 16))(v10);
  (*(a10 + 16))();
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2382ACE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382AD3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382B3A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{
  *v1 = a1;
  v3 = *(v2 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t result)
{
  v2 = *(*v1 + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_7(uint64_t a1)
{
  v3 = *(*v1 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

void __DefaultDispatchQueue_block_invoke()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  v1 = v6;
  v2 = [v6 UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create(v2, v3);
  v5 = DefaultDispatchQueue_defaultQueue;
  DefaultDispatchQueue_defaultQueue = v4;
}

void sub_2382B6F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ENUICreateRemotePresentationController()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthExposureNotificationUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthExposureNotificationUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278A4BC88;
    v6 = 0;
    HealthExposureNotificationUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HealthExposureNotificationUILibraryCore_frameworkLibrary)
  {
    ENUICreateRemotePresentationController_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  v0 = NSClassFromString(&cfstr_Enuipresentati.isa);
  if (v0)
  {
    v1 = v0;
    if ([(objc_class *)v0 conformsToProtocol:&unk_284B18CE8])
    {
      v0 = objc_alloc_init(v1);
    }

    else
    {
      v0 = 0;
    }
  }

  v2 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __HealthExposureNotificationUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthExposureNotificationUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2382B86B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2382B8A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v10 _writeBytes:&a9 length:8 error:v9];
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return [v12 _writeBytes:&a11 length:4 error:v11];
}

uint64_t OUTLINED_FUNCTION_9_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 writeVarInt:8 * a4 error:a5];
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  result = 0;
  *v0 = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 writeVarInt:(8 * a4) | 1 error:a5];
}

id ENUIRemoteViewControllerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B18DA8];
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_setPresentationRequest_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_2382BA328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _responseCallback(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gENUserAlertMutex);
  v4 = gENUserAlertMap;
  v5 = [MEMORY[0x277CCABB0] numberWithLong:a1];
  v6 = [v4 objectForKeyedSubscript:v5];

  pthread_mutex_unlock(&gENUserAlertMutex);
  [v6 _responseCallback:a1 responseFlags:a2];
}

BOOL ENValidateRegionCodeISO(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = v1;
  if ([v3 containsString:@"-"])
  {
    v4 = [v3 componentsSeparatedByString:@"-"];
    if ([v4 count] != 2)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5 = [v4 firstObject];

    v3 = v5;
  }

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/System/Library/Carrier Bundles/iPhone/Default.bundle/ISO2MCC.plist"];
  v6 = [v3 lowercaseString];
  v7 = [v4 objectForKey:v6];

  v8 = [v7 firstObject];
  v9 = v8 != 0;

LABEL_6:
  objc_autoreleasePoolPop(v2);
LABEL_7:

  return v9;
}

void *ENCopyPublicKeyFromBase64String_cold_1(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    result = ENNestedErrorF(a2, 15);
    *v2 = result;
  }

  return result;
}

BOOL UInt64NumIsInRange(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = (objc_opt_isKindOfClass() & 1) != 0 && [v1 unsignedLongLongValue] < 0x10000;

  return v2;
}

void ENUICreateRemotePresentationController_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthExposureNotificationUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ENRemotePresentationController.m" lineNumber:12 description:{@"%s", *a1}];

  __break(1u);
}