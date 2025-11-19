@interface AXAuditReportGenerator
- (AXAuditReportGenerator)init;
- (id)_anyAuditIssueFromResults:(id)a3;
- (id)_fileExtensionForReportType:(int64_t)a3;
- (id)_fullOutputPathForReportType:(int64_t)a3 outputPath:(id)a4 outputFilename:(id)a5;
- (id)_generateHTMLSourceFromTemplates;
- (id)_htmlTemplate;
- (id)_htmlTemplatePath;
- (id)_jsonArrayForIssues:(id)a3 screenName:(id)a4;
- (id)_jsonData;
- (id)_jsonDictionary;
- (id)_jsonDictionaryForAuditIssueImage:(id)a3 thumbnailOnly:(BOOL)a4;
- (id)_jsonDictionaryForIssue:(id)a3 screenName:(id)a4;
- (id)_jsonDictionaryForScreen:(id)a3 issuesOnScreen:(id)a4;
- (id)_jsonString;
- (id)_locStringForKey:(id)a3;
- (id)generateReportType:(int64_t)a3 outputPath:(id)a4 outputFilename:(id)a5 error:(id *)a6;
- (id)imageDataForIssue:(id)a3 thumbnailOnly:(BOOL)a4;
- (id)reportHeaderForIssues:(id)a3;
- (id)textDescriptionForIssues:(id)a3;
- (void)_generateMapOfScreensToIssues:(id)a3;
- (void)_processScreenshotsForAXAuditResult:(id)a3 completion:(id)a4;
- (void)appendIssues:(id)a3;
- (void)generateXCTestReportType:(int64_t)a3 forAuditResult:(id)a4 completion:(id)a5;
@end

@implementation AXAuditReportGenerator

- (AXAuditReportGenerator)init
{
  v8.receiver = self;
  v8.super_class = AXAuditReportGenerator;
  v2 = [(AXAuditReportGenerator *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    issues = v2->__issues;
    v2->__issues = v3;

    v5 = objc_opt_new();
    auditScreenToIssuesMapping = v2->__auditScreenToIssuesMapping;
    v2->__auditScreenToIssuesMapping = v5;
  }

  return v2;
}

- (void)appendIssues:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(AXAuditReportGenerator *)self _issues];
    [v4 addObjectsFromArray:v5];
  }

  [(AXAuditReportGenerator *)self _generateMapOfScreensToIssues:v5];
}

- (void)_generateMapOfScreensToIssues:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__AXAuditReportGenerator__generateMapOfScreensToIssues___block_invoke;
  v3[3] = &unk_278BE3020;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __56__AXAuditReportGenerator__generateMapOfScreensToIssues___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 timeStamp];
  if (v3)
  {
    v4 = [*(a1 + 32) _auditScreenToIssuesMapping];
    v5 = [v4 objectForKey:v3];

    if (!v5)
    {
      v5 = objc_opt_new();
      v6 = [*(a1 + 32) _auditScreenToIssuesMapping];
      [v6 setObject:v5 forKey:v3];
    }

    [v5 addObject:v7];
  }
}

- (id)_fileExtensionForReportType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"txt";
  }

  else
  {
    return off_278BE30B8[a3];
  }
}

- (id)_fullOutputPathForReportType:(int64_t)a3 outputPath:(id)a4 outputFilename:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = [(AXAuditReportGenerator *)self _defaultSavePath];
  }

  if (![v9 length])
  {
    v10 = [(AXAuditReportGenerator *)self _issues];
    v11 = [v10 firstObject];

    v12 = [v11 timeStamp];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 stringByReplacingOccurrencesOfString:@":" withString:@"-"];

      v15 = [v14 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    }

    else
    {
      v14 = objc_opt_new();
      v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
      v17 = [MEMORY[0x277CBEBB0] systemTimeZone];
      [v14 setTimeZone:v17];

      [v14 setDateFormat:@"yyyy-MM-dd_HH-mm:ss"];
      v15 = [v14 stringFromDate:v16];
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"AuditReport_%@", v15];

    v19 = [(AXAuditReportGenerator *)self _fileExtensionForReportType:a3];
    v9 = [v18 stringByAppendingPathExtension:v19];
  }

  v20 = [v8 stringByAppendingPathComponent:v9];

  return v20;
}

- (void)generateXCTestReportType:(int64_t)a3 forAuditResult:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy_;
  v17[4] = __Block_byref_object_dispose_;
  v18 = 0;
  v10 = +[AXAuditScreenshotManager sharedManager];
  [v10 clear];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__AXAuditReportGenerator_generateXCTestReportType_forAuditResult_completion___block_invoke;
  v12[3] = &unk_278BE3048;
  v16 = a3;
  v14 = v19;
  v12[4] = self;
  v11 = v9;
  v13 = v11;
  v15 = v17;
  [(AXAuditReportGenerator *)self _processScreenshotsForAXAuditResult:v8 completion:v12];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

uint64_t __77__AXAuditReportGenerator_generateXCTestReportType_forAuditResult_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 3)
  {
    v3 = [*(a1 + 32) _jsonString];
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = [*(a1 + 32) _generateHTMLSourceFromTemplates];
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

LABEL_6:
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = *(*(*(a1 + 56) + 8) + 40);
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

- (void)_processScreenshotsForAXAuditResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 auditIssues];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v6 auditIssues];
    v11 = [v10 mutableCopy];
    [(AXAuditReportGenerator *)self set_issues:v11];

    v12 = +[AXAuditScreenshotManager sharedManager];
    v13 = [v6 auditIssues];
    v14 = [v13 count];

    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = [v6 auditIssues];
        v17 = [v16 objectAtIndexedSubscript:i];

        v18 = [v6 screenshotInfoDictionaryForAuditIssue:v17];
        v19 = [v17 timeStamp];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __73__AXAuditReportGenerator__processScreenshotsForAXAuditResult_completion___block_invoke;
        v20[3] = &unk_278BE3070;
        v23 = i;
        v22 = v14;
        v21 = v7;
        [v12 addScreenshotWithInfo:v18 timestamp:v19 completion:v20];
      }
    }
  }

  else
  {
    v7[2](v7);
  }
}

uint64_t __73__AXAuditReportGenerator__processScreenshotsForAXAuditResult_completion___block_invoke(uint64_t result)
{
  if (*(result + 40) - 1 == *(result + 48))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)generateReportType:(int64_t)a3 outputPath:(id)a4 outputFilename:(id)a5 error:(id *)a6
{
  v9 = [(AXAuditReportGenerator *)self _fullOutputPathForReportType:a3 outputPath:a4 outputFilename:a5];
  if (a3 == 3)
  {
    v10 = [(AXAuditReportGenerator *)self _jsonString];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v10 = [(AXAuditReportGenerator *)self _generateHTMLSourceFromTemplates];
  }

  v11 = v10;
  [v10 writeToFile:v9 atomically:1 encoding:4 error:a6];

LABEL_6:
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &stru_284FBB130;
  }

  v13 = v12;

  return v12;
}

- (id)_locStringForKey:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__AXAuditReportGenerator__locStringForKey___block_invoke;
  block[3] = &unk_278BE2CD0;
  block[4] = self;
  v3 = _locStringForKey__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_locStringForKey__onceToken, block);
  }

  v5 = [_locStringForKey__myBundle localizedStringForKey:v4 value:v4 table:@"Localizable"];

  return v5;
}

uint64_t __43__AXAuditReportGenerator__locStringForKey___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _locStringForKey__myBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (id)reportHeaderForIssues:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(AXAuditReportGenerator *)self _locStringForKey:@"axAuditReport"];
  v8 = [(AXAuditReportGenerator *)self _locStringForKey:@"timeStamp"];
  v9 = [v5 firstObject];
  v10 = [v9 timeStamp];
  v11 = [(AXAuditReportGenerator *)self _locStringForKey:@"device"];
  v12 = [(AXAuditReportGenerator *)self deviceName];
  v13 = [(AXAuditReportGenerator *)self _locStringForKey:@"numOfIssuesFound"];
  v14 = [v5 count];

  v15 = [v6 initWithFormat:@"%@\n%@: %@\n%@: %@\n%@: %ld\n\n", v7, v8, v10, v11, v12, v13, v14];

  return v15;
}

- (id)textDescriptionForIssues:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = &stru_284FBB130;
  if ([v4 count])
  {
    v6 = objc_opt_new();
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v8 = [(AXAuditReportGenerator *)self reportHeaderForIssues:v4];
    v25 = v7;
    [(__CFString *)v7 appendString:v8];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v4;
    obj = v4;
    v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v26)
    {
      v24 = *v28;
      v9 = 1;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [v11 issueClassification];
          v13 = [v6 shortTitleForAuditIssue:v11];
          v14 = [v6 longDescriptionForAuditIssue:v11];
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = [(AXAuditReportGenerator *)self _locStringForKey:@"issue"];
          v17 = [(AXAuditReportGenerator *)self _locStringForKey:@"errorCode"];
          v18 = [v15 initWithFormat:@"\n%@ %ld: %@\n%@: %ld\n%@\n", v16, v9, v13, v17, v12, v14];

          [(__CFString *)v25 appendString:v18];
          ++v9;
        }

        v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v26);
    }

    v19 = &stru_284FBB130;
    if (v25)
    {
      v19 = v25;
    }

    v5 = v19;

    v4 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)imageDataForIssue:(id)a3 thumbnailOnly:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[AXAuditScreenshotManager sharedManager];
  v7 = [v5 timeStamp];
  [v6 screenshotScaleFactorForTimestamp:v7];
  v9 = v8;

  if (v4)
  {
    [v6 thumbnailImageOfIssue:v5];
  }

  else
  {
    [v6 screenshotForIssue:v5 elementRect:0];
  }
  v10 = ;

  [v10 size];
  v12 = (v11 / v9);
  v14 = (v13 / v9);
  if (v12 < 1 || v14 < 1)
  {
    v21 = 0;
  }

  else
  {
    v16 = v14;
    v17 = v12;
    v24.width = v12;
    v24.height = v14;
    UIGraphicsBeginImageContext(v24);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(CurrentContext, 0.0, v16);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    v19 = [v10 CGImage];
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = v17;
    v25.size.height = v16;
    CGContextDrawImage(CurrentContext, v25, v19);
    v20 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v21 = UIImageJPEGRepresentation(v20, 0.75);
  }

  return v21;
}

- (id)_htmlTemplatePath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"AuditReport" ofType:@"html"];

  return v3;
}

- (id)_htmlTemplate
{
  v2 = [(AXAuditReportGenerator *)self _htmlTemplatePath];
  if ([v2 length])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v2 encoding:4 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_generateHTMLSourceFromTemplates
{
  v3 = [(AXAuditReportGenerator *)self _htmlTemplate];
  v4 = [v3 mutableCopy];

  v5 = [(AXAuditReportGenerator *)self _jsonString];
  [v4 replaceOccurrencesOfString:@"[[JSON_OBJ_REPLACE]]" withString:v5 options:2 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

- (id)_jsonDictionaryForIssue:(id)a3 screenName:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v5 issueClassification];
  v10 = [v8 longDescriptionForAuditIssue:v5];
  v36 = [v8 longDescExtraInfoForAuditIssue:v5];
  v11 = [v8 shortTitleForAuditIssue:v5];
  v35 = [v5 screenGroupId];
  v12 = [v5 isDuplicate];
  v34 = [v8 humanReadableDescriptionForAuditIssueTestType:v5];
  v13 = [MEMORY[0x277CCABB0] numberWithLong:v9];
  [v7 setObject:v13 forKey:@"_axKeyErrorCode"];

  v14 = [v8 suggestionDescriptionForAuditIssue:v5];
  if ([v11 length])
  {
    [v7 setObject:v11 forKey:@"_axKeyShortDesc"];
  }

  v31 = v11;
  if ([v10 length])
  {
    [v7 setObject:v10 forKey:@"_axKeyLongDesc"];
  }

  if ([v36 length])
  {
    [v7 setObject:v36 forKey:@"_axKeyLongDescExtraInfo"];
  }

  v15 = [v5 elementText];
  v16 = [v15 length];

  if (v16)
  {
    v17 = [v5 elementText];
    [v7 setObject:v17 forKey:@"_axKeyElementText"];
  }

  if (v35)
  {
    [v7 setObject:v35 forKey:@"_axKeyScreenGroupName"];
    v18 = v34;
    if (!v6)
    {
      goto LABEL_15;
    }

    v19 = @"_axKeyScreenName";
  }

  else
  {
    v18 = v34;
    if (!v6)
    {
      goto LABEL_15;
    }

    [v7 setObject:v6 forKey:@"_axKeyScreenName"];
    v19 = @"_axKeyScreenGroupName";
  }

  [v7 setObject:v6 forKey:v19];
LABEL_15:
  v32 = v10;
  if (v18)
  {
    [v7 setObject:v18 forKey:@"_axKeyIssueTestType"];
  }

  v33 = v6;
  if (v14)
  {
    [v7 setObject:v14 forKey:@"_axKeyIssueSuggestion"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  [v7 setObject:v20 forKey:@"_axKeyIssueIsDuplicate"];

  v21 = [(AXAuditReportGenerator *)self _jsonDictionaryForAuditIssueImage:v5 thumbnailOnly:1];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v37 + 1) + 8 * i);
        v27 = [v21 objectForKeyedSubscript:v26];
        if (v27)
        {
          [v7 setObject:v27 forKey:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v23);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_anyAuditIssueFromResults:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 caseResults];
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v18 + 1) + 8 * j) auditIssues];
              v15 = [v14 firstObject];

              if (v15)
              {

                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v15 = 0;
    }

    while (v5);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_jsonDictionaryForAuditIssueImage:(id)a3 thumbnailOnly:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[AXAuditScreenshotManager sharedManager];
  v7 = objc_opt_new();
  v8 = [v5 timeStamp];
  [v6 screenshotScaleFactorForTimestamp:v8];
  v59 = v9;

  v10 = [v5 timeStamp];
  [v6 screenshotRotationForTimestamp:v10];
  v12 = v11;

  v13 = [v5 timeStamp];
  [v6 screenshotDisplayBoundsForTimestamp:v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = objc_autoreleasePoolPush();
  if (v4)
  {
    [v6 thumbnailImageOfIssue:v5];
  }

  else
  {
    [v6 screenshotForIssue:v5 elementRect:0];
  }
  v23 = ;
  v24 = v23;
  if (v23)
  {
    [v23 size];
    v26 = (v25 / *&v59);
    v28 = (v27 / *&v59);
    v63.width = v26;
    v63.height = v28;
    UIGraphicsBeginImageContext(v63);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(CurrentContext, 0.0, v28);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    v30 = [v24 CGImage];
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.width = v26;
    v64.size.height = v28;
    CGContextDrawImage(CurrentContext, v64, v30);
    v31 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v32 = UIImageJPEGRepresentation(v31, 0.75);
    v33 = [v32 base64EncodedStringWithOptions:0];
    if ([v33 length])
    {
      v56 = v32;
      v57 = v31;
      v58 = v22;
      v34 = [@"data:image/jpegbase64 "];;
      v35 = @"_axKeyImageFull";
      if (v4)
      {
        v35 = @"_axKeyImageThumbnail";
      }

      v36 = v35;
      v37 = objc_opt_new();
      [v37 setObject:v34 forKey:@"_axKeyImageData"];
      v38 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
      [v37 setObject:v38 forKey:@"_axKeyImageWidth"];

      v39 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
      [v37 setObject:v39 forKey:@"_axKeyImageHeight"];

      [v7 setObject:v37 forKey:v36];
      if (v4)
      {
        v40 = *(MEMORY[0x277CBF3A0] + 16);
        v60 = *MEMORY[0x277CBF3A0];
        v61 = v40;
        v41 = [v6 screenshotForIssue:v5 elementRect:&v60];
        v42 = vdupq_lane_s64(v59, 0);
        v60 = vdivq_f64(v60, v42);
        v61 = vdivq_f64(v61, v42);
        [v41 size];
        v44 = v60;
        v60.f64[1] = v43 / *&v59 - v61.f64[1] - v60.f64[1];
        v45 = [MEMORY[0x277CCABB0] numberWithDouble:v44.f64[0]];
        [v7 setObject:v45 forKey:@"_axKeyElementRectInScreenshotX"];

        v46 = [MEMORY[0x277CCABB0] numberWithDouble:v60.f64[1]];
        [v7 setObject:v46 forKey:@"_axKeyElementRectInScreenshotY"];

        v47 = [MEMORY[0x277CCABB0] numberWithDouble:v61.f64[0]];
        [v7 setObject:v47 forKey:@"_axKeyElementRectInScreenshotWidth"];

        v48 = [MEMORY[0x277CCABB0] numberWithDouble:v61.f64[1]];
        [v7 setObject:v48 forKey:@"_axKeyElementRectInScreenshotHeight"];
      }

      else
      {
        v49 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        [v7 setObject:v49 forKey:@"_axKeyDisplayBoundsXPx"];

        v50 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        [v7 setObject:v50 forKey:@"_axKeyDisplayBoundsYPx"];

        v51 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
        [v7 setObject:v51 forKey:@"_axKeyDisplayBoundsWidthPx"];

        v52 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
        [v7 setObject:v52 forKey:@"_axKeyDisplayBoundsHeightPx"];

        v53 = [MEMORY[0x277CCABB0] numberWithDouble:*&v59];
        [v7 setObject:v53 forKey:@"_axKeyScreenshotScale"];

        v54 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
        [v7 setObject:v54 forKey:@"_axKeyScreenshotRotation"];
      }

      v31 = v57;
      v22 = v58;
      v32 = v56;
    }
  }

  objc_autoreleasePoolPop(v22);

  return v7;
}

- (id)_jsonArrayForIssues:(id)a3 screenName:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(AXAuditReportGenerator *)self _jsonDictionaryForIssue:*(*(&v17 + 1) + 8 * i) screenName:v7, v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_jsonDictionaryForScreen:(id)a3 issuesOnScreen:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(AXAuditReportGenerator *)self _jsonArrayForIssues:v7 screenName:v6];
  [v8 setObject:v6 forKeyedSubscript:@"_axKeyScreenName"];
  if (v9 && [v9 count])
  {
    [v8 setObject:v9 forKeyedSubscript:@"_axKeyAllIssues"];
    v22 = [v9 objectAtIndexedSubscript:0];
    v10 = [v22 objectForKeyedSubscript:@"_axKeyScreenGroupName"];
    if (!v10)
    {
      v10 = v6;
    }

    v21 = v10;
    [v8 setObject:v10 forKeyedSubscript:@"_axKeyScreenGroupName"];
    v20 = [v7 firstObject];
    v11 = [AXAuditReportGenerator _jsonDictionaryForAuditIssueImage:"_jsonDictionaryForAuditIssueImage:thumbnailOnly:" thumbnailOnly:?];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v11 objectForKeyedSubscript:v16];
          if (v17)
          {
            [v8 setObject:v17 forKey:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_jsonDictionary
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v3 setObject:v4 forKeyedSubscript:@"_axKeyAllScreens"];

  v5 = [(AXAuditReportGenerator *)self _auditScreenToIssuesMapping];
  v6 = [v5 allKeys];

  if ([v6 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__AXAuditReportGenerator__jsonDictionary__block_invoke;
    v14[3] = &unk_278BE3098;
    v14[4] = self;
    v7 = v3;
    v15 = v7;
    [v6 enumerateObjectsUsingBlock:v14];
    v8 = v7;
  }

  else
  {
    v9 = [(AXAuditReportGenerator *)self _issues];
    v10 = [(AXAuditReportGenerator *)self _jsonDictionaryForScreen:@"Screen1" issuesOnScreen:v9];

    v11 = [v3 objectForKeyedSubscript:@"_axKeyAllScreens"];
    [v11 addObject:v10];
    v12 = v3;
  }

  return v3;
}

void __41__AXAuditReportGenerator__jsonDictionary__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v11 = [v5 stringWithFormat:@"%lu", a3];
  v7 = [*(a1 + 32) _auditScreenToIssuesMapping];
  v8 = [v7 objectForKey:v6];

  v9 = [*(a1 + 32) _jsonDictionaryForScreen:v11 issuesOnScreen:v8];
  v10 = [*(a1 + 40) objectForKeyedSubscript:@"_axKeyAllScreens"];
  [v10 addObject:v9];
}

- (id)_jsonData
{
  v2 = [(AXAuditReportGenerator *)self _jsonDictionary];
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:1 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_jsonString
{
  v2 = [(AXAuditReportGenerator *)self _jsonData];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];

  return v3;
}

@end