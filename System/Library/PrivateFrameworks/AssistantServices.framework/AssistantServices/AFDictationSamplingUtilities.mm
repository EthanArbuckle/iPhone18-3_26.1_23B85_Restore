@interface AFDictationSamplingUtilities
+ (id)samplingDateAsString;
@end

@implementation AFDictationSamplingUtilities

+ (id)samplingDateAsString
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  sampledLibraryDirectoryPath = [self sampledLibraryDirectoryPath];
  sampledPlistFileName = [self sampledPlistFileName];
  v6 = [v3 stringWithFormat:@"%@/%@", sampledLibraryDirectoryPath, sampledPlistFileName];

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v22 = 0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7 error:&v22];
  v9 = v22;
  if (v9)
  {
    v10 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v18 = v10;
      component = [self component];
      *buf = 136315906;
      v24 = "+[AFDictationSamplingUtilities samplingDateAsString]";
      v25 = 2112;
      v26 = component;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v9;
      _os_log_error_impl(&dword_1912FE000, v18, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Error while reading plist at location %@ - %@", buf, 0x2Au);
    }

    v11 = 0;
  }

  else
  {
    sampledCurrentSamplingDateKey = [self sampledCurrentSamplingDateKey];
    v13 = [v8 objectForKey:sampledCurrentSamplingDateKey];

    if (v13)
    {
      dateFormatter = [objc_opt_class() dateFormatter];
      v11 = [dateFormatter stringFromDate:v13];
    }

    else
    {
      v15 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        v20 = v15;
        component2 = [self component];
        *buf = 136315394;
        v24 = "+[AFDictationSamplingUtilities samplingDateAsString]";
        v25 = 2112;
        v26 = component2;
        _os_log_error_impl(&dword_1912FE000, v20, OS_LOG_TYPE_ERROR, "%s %@ Sampling: currentSamplingDate is nil. Check if ADDictationOnDeviceSampling is getting initialized.", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

@end