@interface VSPluginTTSDurationEstimation
- (VSPluginTTSDurationEstimation)initWithDictionary:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation VSPluginTTSDurationEstimation

- (void)performWithCompletion:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VSPluginTTSDurationEstimation *)self request];
    v7 = [(VSPluginTTSDurationEstimation *)self request];
    v8 = [v7 texts];
    *buf = 138412546;
    v48 = v6;
    v49 = 2112;
    v50 = v8;
    _os_log_impl(&dword_2334AC000, v5, OS_LOG_TYPE_DEFAULT, "VSPluginTTSDurationEstimation, %@, texts: %@", buf, 0x16u);
  }

  if (v4)
  {
    v9 = [(VSPluginTTSDurationEstimation *)self request];

    if (!v9)
    {
      v4[2](v4, MEMORY[0x277CBEC10]);
    }

    v38 = v4;
    v10 = MEMORY[0x277CBEAF8];
    v11 = [(VSPluginTTSDurationEstimation *)self request];
    v12 = [v11 locale];
    v13 = [v10 localeWithLocaleIdentifier:v12];

    v37 = v13;
    v40 = [objc_alloc(MEMORY[0x277CEF430]) initWithLocale:v13];
    [v40 setHandleTTSCodes:1];
    v36 = objc_alloc_init(MEMORY[0x277D47988]);
    v14 = [MEMORY[0x277CBEB18] array];
    v15 = objc_alloc_init(MEMORY[0x277D799A8]);
    v16 = objc_alloc_init(MEMORY[0x277D799A0]);
    v17 = MEMORY[0x277D799C8];
    v18 = [(VSPluginTTSDurationEstimation *)self request];
    v19 = [v18 gender];
    [v16 setGender:{objc_msgSend(v17, "genderFromString:", v19)}];

    v20 = [(VSPluginTTSDurationEstimation *)self request];
    v21 = [v20 locale];
    [v16 setLanguageCode:v21];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = [(VSPluginTTSDurationEstimation *)self request];
    v23 = [v22 texts];

    obj = v23;
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
          [v14 addObject:v33];

          ++v27;
        }

        while (v25 != v27);
        v25 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v25);
    }

    [v36 setDurations:v14];
    v34 = [v36 dictionary];
    v4 = v38;
    (v38)[2](v38, v34);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (VSPluginTTSDurationEstimation)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VSPluginTTSDurationEstimation;
  v5 = [(VSPluginTTSDurationEstimation *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D47980]) initWithDictionary:v4];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

@end