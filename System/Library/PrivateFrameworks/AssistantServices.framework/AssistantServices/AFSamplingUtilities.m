@interface AFSamplingUtilities
+ (BOOL)deleteItemAtFilePath:(id)a3 error:(id *)a4;
+ (BOOL)fileExistsAndNotEmpty:(id)a3 samplingComponent:(id)a4;
+ (BOOL)isFileNameValid:(id)a3;
+ (BOOL)isFileOlderThanAgeInSeconds:(double)a3 filePath:(id)a4 samplingComponent:(id)a5;
+ (id)createSamplingDirectory;
+ (id)dateFormatter;
+ (id)deleteItemAtFilePath:(id)a3;
+ (id)sampledLibraryDirectoryPath;
+ (int64_t)calculateFileNameAgeInDays:(id)a3;
+ (void)deleteAllSamplingData;
@end

@implementation AFSamplingUtilities

+ (BOOL)fileExistsAndNotEmpty:(id)a3 samplingComponent:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v7 fileExistsAtPath:v5])
  {
    v20 = 0;
    v8 = [v7 attributesOfItemAtPath:v5 error:&v20];
    v9 = v20;
    if (v8)
    {
      v10 = [v8 objectForKey:*MEMORY[0x1E696A3B8]];
      v11 = [v10 unsignedLongLongValue];
      v12 = v11 != 0;
      if (!v11)
      {
        v13 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v22 = "+[AFSamplingUtilities fileExistsAndNotEmpty:samplingComponent:]";
          v23 = 2112;
          v24 = v6;
          v25 = 2112;
          v26 = v5;
          _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s %@ Sampling: File is empty: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v15 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v18 = v15;
        v19 = [v9 localizedDescription];
        *buf = 136315906;
        v22 = "+[AFSamplingUtilities fileExistsAndNotEmpty:samplingComponent:]";
        v23 = 2112;
        v24 = v6;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = v19;
        _os_log_error_impl(&dword_1912FE000, v18, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to resolve attributes for file: %@, error: %@", buf, 0x2Au);
      }

      v12 = 0;
    }
  }

  else
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "+[AFSamplingUtilities fileExistsAndNotEmpty:samplingComponent:]";
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v5;
      _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s %@ Sampling: No file at path: %@", buf, 0x20u);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)dateFormatter
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v4 = MEMORY[0x1E695DFE8];
  v5 = [a1 timezone];
  v6 = [v4 timeZoneWithAbbreviation:v5];
  [v3 setTimeZone:v6];

  v7 = [a1 sampledSubDirectoryNameFormat];
  [v3 setDateFormat:v7];

  return v3;
}

+ (int64_t)calculateFileNameAgeInDays:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() dateFormatter];
  v5 = [v4 dateFromString:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [MEMORY[0x1E695DEE8] currentCalendar];
    v8 = [v7 components:16 fromDate:v5 toDate:v6 options:0];
    v9 = [v8 day];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isFileNameValid:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [objc_opt_class() sampledSubDirectoryNameFormat];
  v6 = [v5 length];

  if (v4 == v6)
  {
    v7 = [objc_opt_class() dateFormatter];
    v8 = [v7 dateFromString:v3];

    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isFileOlderThanAgeInSeconds:(double)a3 filePath:(id)a4 samplingComponent:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v10 = [v9 attributesOfItemAtPath:v7 error:&v21];
  v11 = v21;

  if (!v10)
  {
    v16 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }

    *buf = 136315906;
    v23 = "+[AFSamplingUtilities isFileOlderThanAgeInSeconds:filePath:samplingComponent:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v11;
    v17 = "%s %@ Sampling: Failed to resolve attributes for file: %@, error: %@";
LABEL_10:
    _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x2Au);
    goto LABEL_7;
  }

  v12 = [v10 fileCreationDate];
  [v12 timeIntervalSinceNow];
  v14 = fabs(v13);

  if (v14 <= a3)
  {
    v16 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v20 = v14 / 60.0;
    *buf = 136315906;
    v23 = "+[AFSamplingUtilities isFileOlderThanAgeInSeconds:filePath:samplingComponent:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2048;
    v27 = rintf(v20);
    v28 = 2112;
    v29 = v7;
    v17 = "%s %@ Sampling: File ineligible for upload as it is only %ld minutes old: %@";
    goto LABEL_10;
  }

  v15 = 1;
LABEL_8:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (void)deleteAllSamplingData
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [a1 component];
    v21 = 136315394;
    v22 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Deleting all sampling data.", &v21, 0x16u);
  }

  v6 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v7 = [v6 firstObject];

  v8 = [a1 sampledCachesSubDirectoryPath];
  v9 = [v7 stringByAppendingPathComponent:v8];

  v10 = [a1 deleteItemAtFilePath:v9 error:0];
  v11 = AFSiriLogContextUtility;
  if (v10)
  {
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v12 = v11;
    v13 = [a1 component];
    v21 = 136315650;
    v22 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted sampling cache: %@", &v21, 0x20u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = [a1 component];
    v21 = 136315650;
    v22 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v9;
    _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete sampling cache: %@", &v21, 0x20u);
LABEL_6:
  }

LABEL_8:
  v14 = [a1 sampledLibraryDirectoryPath];
  v15 = [a1 deleteItemAtFilePath:v14 error:0];

  v16 = AFSiriLogContextUtility;
  if ((v15 & 1) == 0)
  {
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v17 = v16;
    v18 = [a1 component];
    v19 = [a1 sampledLibraryDirectoryPath];
    v21 = 136315650;
    v22 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete sampling directory: %@", &v21, 0x20u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [a1 component];
    v19 = [a1 sampledLibraryDirectoryPath];
    v21 = 136315650;
    v22 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted sampling directory: %@", &v21, 0x20u);
LABEL_11:
  }

LABEL_13:

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)deleteItemAtFilePath:(id)a3
{
  v5 = 0;
  [a1 deleteItemAtFilePath:a3 error:&v5];
  v3 = v5;

  return v3;
}

+ (BOOL)deleteItemAtFilePath:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v8 = [v7 removeItemAtPath:v6 error:&v21];
  v9 = v21;
  v10 = v9;
  if ((v8 & 1) == 0 && !AFIsFileNotFoundError(v9))
  {
    v15 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v17 = v15;
      v18 = [a1 component];
      *buf = 136315906;
      v23 = "+[AFSamplingUtilities deleteItemAtFilePath:error:]";
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v10;
      _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete file: %@, error: %@", buf, 0x2Au);

      if (a4)
      {
        goto LABEL_7;
      }
    }

    else if (a4)
    {
LABEL_7:
      v16 = v10;
      v12 = 0;
      *a4 = v10;
      goto LABEL_10;
    }

    v12 = 0;
    goto LABEL_10;
  }

  v11 = AFSiriLogContextUtility;
  v12 = 1;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    v14 = [a1 component];
    *buf = 136315650;
    v23 = "+[AFSamplingUtilities deleteItemAtFilePath:error:]";
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted file: %@", buf, 0x20u);
  }

LABEL_10:

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)createSamplingDirectory
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [a1 sampledLibraryDirectoryPath];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v8 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      v12 = [a1 component];
      *buf = 136315906;
      v15 = "+[AFSamplingUtilities createSamplingDirectory]";
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to create sampling directory (%@), error: %@", buf, 0x2Au);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)sampledLibraryDirectoryPath
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v4 = [v3 firstObject];

  v5 = [a1 sampledSubDirectoryPath];
  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

@end