@interface BCSGenericDataParser
+ (id)_parsedDataFromDDResult:(__DDResult *)a3 decodedString:(id)a4;
+ (id)parseString:(id)a3;
@end

@implementation BCSGenericDataParser

+ (id)parseString:(id)a3
{
  v4 = a3;
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    [(BCSGenericDataParser *)v5 parseString:v6, v7, v8, v9, v10, v11, v12];
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v13 = getDDScannerCreateSymbolLoc_ptr;
  v71 = getDDScannerCreateSymbolLoc_ptr;
  if (!getDDScannerCreateSymbolLoc_ptr)
  {
    v14 = DataDetectorsCoreLibrary();
    v69[3] = dlsym(v14, "DDScannerCreate");
    getDDScannerCreateSymbolLoc_ptr = v69[3];
    v13 = v69[3];
  }

  _Block_object_dispose(&v68, 8);
  if (!v13)
  {
    +[BCSGenericDataParser parseString:];
  }

  v15 = (v13)(0, 0, 0);
  if (!v15)
  {
    v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v35)
    {
      [(BCSGenericDataParser *)v35 parseString:v36, v37, v38, v39, v40, v41, v42];
    }

    goto LABEL_35;
  }

  v16 = v15;
  v17 = [v4 length];
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v18 = getDDScanQueryCreateFromStringSymbolLoc_ptr;
  v71 = getDDScanQueryCreateFromStringSymbolLoc_ptr;
  if (!getDDScanQueryCreateFromStringSymbolLoc_ptr)
  {
    v19 = DataDetectorsCoreLibrary();
    v69[3] = dlsym(v19, "DDScanQueryCreateFromString");
    getDDScanQueryCreateFromStringSymbolLoc_ptr = v69[3];
    v18 = v69[3];
  }

  _Block_object_dispose(&v68, 8);
  if (!v18)
  {
    +[BCSGenericDataParser parseString:];
  }

  v20 = (v18)(0, v4, 0, v17);
  if (!v20)
  {
    v43 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v43)
    {
      [(BCSGenericDataParser *)v43 parseString:v44, v45, v46, v47, v48, v49, v50];
    }

    goto LABEL_34;
  }

  v21 = v20;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v22 = getDDScannerScanQuerySymbolLoc_ptr;
  v71 = getDDScannerScanQuerySymbolLoc_ptr;
  if (!getDDScannerScanQuerySymbolLoc_ptr)
  {
    v23 = DataDetectorsCoreLibrary();
    v69[3] = dlsym(v23, "DDScannerScanQuery");
    getDDScannerScanQuerySymbolLoc_ptr = v69[3];
    v22 = v69[3];
  }

  _Block_object_dispose(&v68, 8);
  if (!v22)
  {
    +[BCSGenericDataParser parseString:];
  }

  if (!v22(v16, v21))
  {
    v51 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v51)
    {
      [(BCSGenericDataParser *)v51 parseString:v52, v53, v54, v55, v56, v57, v58];
    }

    CFRelease(v21);
LABEL_34:
    CFRelease(v16);
LABEL_35:
    v31 = 0;
    goto LABEL_40;
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v24 = getDDScannerCopyResultsWithOptionsSymbolLoc_ptr;
  v71 = getDDScannerCopyResultsWithOptionsSymbolLoc_ptr;
  if (!getDDScannerCopyResultsWithOptionsSymbolLoc_ptr)
  {
    v25 = DataDetectorsCoreLibrary();
    v69[3] = dlsym(v25, "DDScannerCopyResultsWithOptions");
    getDDScannerCopyResultsWithOptionsSymbolLoc_ptr = v69[3];
    v24 = v69[3];
  }

  _Block_object_dispose(&v68, 8);
  if (!v24)
  {
    +[BCSGenericDataParser parseString:];
  }

  v26 = v24(v16, 1);
  v27 = v26;
  if (!v26)
  {
    v59 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v59)
    {
      [(BCSGenericDataParser *)v59 parseString:v60, v61, v62, v63, v64, v65, v66];
    }

    goto LABEL_38;
  }

  v28 = [v26 count];
  if (!v28)
  {
LABEL_38:
    v31 = 0;
    goto LABEL_39;
  }

  v29 = v28;
  v30 = 0;
  v31 = 0;
  while (1)
  {
    v32 = [v27 objectAtIndexedSubscript:v30];

    v33 = [a1 _parsedDataFromDDResult:v32 decodedString:v4];
    v34 = v33;
    if (v33)
    {
      break;
    }

LABEL_25:

    if (v29 == ++v30)
    {
      goto LABEL_39;
    }
  }

  if ([v33 type] != 1)
  {
    if (!v31)
    {
      v31 = v34;
    }

    goto LABEL_25;
  }

  v31 = v34;
LABEL_39:
  CFRelease(v21);
  CFRelease(v16);

LABEL_40:

  return v31;
}

+ (id)_parsedDataFromDDResult:(__DDResult *)a3 decodedString:(id)a4
{
  v5 = a4;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v6 = getDDResultGetRangeSymbolLoc_ptr;
  v47 = getDDResultGetRangeSymbolLoc_ptr;
  if (!getDDResultGetRangeSymbolLoc_ptr)
  {
    v7 = DataDetectorsCoreLibrary();
    v45[3] = dlsym(v7, "DDResultGetRange");
    getDDResultGetRangeSymbolLoc_ptr = v45[3];
    v6 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v6)
  {
    +[BCSGenericDataParser _parsedDataFromDDResult:decodedString:];
  }

  v9 = v5;
  if (!v6(a3))
  {
    if (v8 == [v5 length])
    {
      v9 = 0;
    }

    else
    {
      v9 = v5;
    }
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v10 = getDDResultGetCategorySymbolLoc_ptr;
  v47 = getDDResultGetCategorySymbolLoc_ptr;
  if (!getDDResultGetCategorySymbolLoc_ptr)
  {
    v11 = DataDetectorsCoreLibrary();
    v45[3] = dlsym(v11, "DDResultGetCategory");
    getDDResultGetCategorySymbolLoc_ptr = v45[3];
    v10 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v10)
  {
    +[BCSGenericDataParser _parsedDataFromDDResult:decodedString:];
  }

  v12 = v10(a3);
  if ((v12 - 1) >= 2)
  {
    if (v12 != 3)
    {
      v26 = 0;
      goto LABEL_31;
    }

    v14 = [getDDScannerResultClass() resultFromCoreResult:a3];
    if (v14)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v18)
      {
        [(BCSGenericDataParser *)v18 _parsedDataFromDDResult:v19 decodedString:v20, v21, v22, v23, v24, v25];
      }

      v26 = [[BCSDataDetectorsScannerResultData alloc] initWithScannerResult:v14 type:6 extraPreviewText:v9];
      goto LABEL_30;
    }

    v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v35)
    {
      [(BCSGenericDataParser *)v35 _parsedDataFromDDResult:v36 decodedString:v37, v38, v39, v40, v41, v42];
    }
  }

  else
  {
    v13 = _bcs_urlFromDDResult(a3);
    v14 = v13;
    if (v13)
    {
      v15 = [v13 scheme];
      v16 = [v15 lowercaseString];

      if ([v16 isEqualToString:@"mailto"])
      {
        v17 = 3;
      }

      else if ([v16 isEqualToString:@"tel"])
      {
        v17 = 4;
      }

      else
      {
        v17 = 1;
      }

      v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v27)
      {
        [(BCSGenericDataParser *)v27 _parsedDataFromDDResult:v28 decodedString:v29, v30, v31, v32, v33, v34];
      }

      v26 = [[BCSParsedURLData alloc] initWithURL:v14 type:v17 extraPreviewText:v9];

      goto LABEL_30;
    }
  }

  v26 = 0;
LABEL_30:

LABEL_31:

  return v26;
}

+ (void)parseString:.cold.3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CFArrayRef _DDScannerCopyResultsWithOptions(DDScannerRef, DDScannerCopyResultsOptions)"}];
  [v0 handleFailureInFunction:v1 file:@"BCSGenericDataParser.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)parseString:.cold.5()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Boolean _DDScannerScanQuery(DDScannerRef, DDScanQueryRef)"}];
  [v0 handleFailureInFunction:v1 file:@"BCSGenericDataParser.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)parseString:.cold.7()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"DDScanQueryRef _DDScanQueryCreateFromString(CFAllocatorRef, CFStringRef, CFRange)"}];
  [v0 handleFailureInFunction:v1 file:@"BCSGenericDataParser.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)parseString:.cold.9()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"DDScannerRef _DDScannerCreate(DDScannerType, DDScannerOptions, CFErrorRef *)"}];
  [v0 handleFailureInFunction:v1 file:@"BCSGenericDataParser.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)_parsedDataFromDDResult:decodedString:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"DDResultCategory _DDResultGetCategory(DDResultRef)"];
  [v0 handleFailureInFunction:v1 file:@"BCSGenericDataParser.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)_parsedDataFromDDResult:decodedString:.cold.5()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFRange _DDResultGetRange(DDResultRef)"];
  [v0 handleFailureInFunction:v1 file:@"BCSGenericDataParser.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end