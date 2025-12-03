@interface VSPluginTTSDurationEstimation
- (VSPluginTTSDurationEstimation)initWithDictionary:(id)dictionary;
- (void)performWithCompletion:(id)completion;
@end

@implementation VSPluginTTSDurationEstimation

- (void)performWithCompletion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    request = [(VSPluginTTSDurationEstimation *)self request];
    request2 = [(VSPluginTTSDurationEstimation *)self request];
    texts = [request2 texts];
    *buf = 138412546;
    v48 = request;
    v49 = 2112;
    v50 = texts;
    _os_log_impl(&dword_2334AC000, v5, OS_LOG_TYPE_DEFAULT, "VSPluginTTSDurationEstimation, %@, texts: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    request3 = [(VSPluginTTSDurationEstimation *)self request];

    if (!request3)
    {
      completionCopy[2](completionCopy, MEMORY[0x277CBEC10]);
    }

    v38 = completionCopy;
    v10 = MEMORY[0x277CBEAF8];
    request4 = [(VSPluginTTSDurationEstimation *)self request];
    locale = [request4 locale];
    v13 = [v10 localeWithLocaleIdentifier:locale];

    v37 = v13;
    v40 = [objc_alloc(MEMORY[0x277CEF430]) initWithLocale:v13];
    [v40 setHandleTTSCodes:1];
    v36 = objc_alloc_init(MEMORY[0x277D47988]);
    array = [MEMORY[0x277CBEB18] array];
    v15 = objc_alloc_init(MEMORY[0x277D799A8]);
    v16 = objc_alloc_init(MEMORY[0x277D799A0]);
    v17 = MEMORY[0x277D799C8];
    request5 = [(VSPluginTTSDurationEstimation *)self request];
    gender = [request5 gender];
    [v16 setGender:{objc_msgSend(v17, "genderFromString:", gender)}];

    request6 = [(VSPluginTTSDurationEstimation *)self request];
    locale2 = [request6 locale];
    [v16 setLanguageCode:locale2];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    request7 = [(VSPluginTTSDurationEstimation *)self request];
    texts2 = [request7 texts];

    obj = texts2;
    v24 = [texts2 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        v27 = 0;
        do
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v42 + 1) + 8 * v27);
          v41 = 0;
          v29 = [v40 parseStringWithFormat:v28 error:&v41];
          v30 = v41;
          if (v30)
          {
            v31 = VSGetLogDefault();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v48 = v28;
              v49 = 2112;
              v50 = v30;
              _os_log_error_impl(&dword_2334AC000, v31, OS_LOG_TYPE_ERROR, "Unable to parse text: '%@', error: %@", buf, 0x16u);
            }

            v32 = v28;
            v29 = v32;
          }

          [v16 setText:v29];
          [v15 estimateDurationOfRequest:v16];
          v33 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [array addObject:v33];

          ++v27;
        }

        while (v25 != v27);
        v25 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v25);
    }

    [v36 setDurations:array];
    dictionary = [v36 dictionary];
    completionCopy = v38;
    (v38)[2](v38, dictionary);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (VSPluginTTSDurationEstimation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = VSPluginTTSDurationEstimation;
  v5 = [(VSPluginTTSDurationEstimation *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D47980]) initWithDictionary:dictionaryCopy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

@end