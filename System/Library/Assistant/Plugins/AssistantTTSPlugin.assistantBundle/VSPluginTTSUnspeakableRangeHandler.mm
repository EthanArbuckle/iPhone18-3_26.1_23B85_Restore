@interface VSPluginTTSUnspeakableRangeHandler
- (void)performWithCompletion:(id)completion;
@end

@implementation VSPluginTTSUnspeakableRangeHandler

- (void)performWithCompletion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2334AC000, v4, OS_LOG_TYPE_INFO, "ttsGetUnspeakableRangeOfText= %@", buf, 0xCu);
  }

  v29 = objc_alloc_init(MEMORY[0x277D479A0]);
  v5 = objc_alloc(MEMORY[0x277D79988]);
  locale = [(SATTSGetUnspeakableRangeOfText *)self locale];
  v7 = [v5 initWithLanguage:locale];

  v8 = 0x277CBE000uLL;
  array = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(SATTSGetUnspeakableRangeOfText *)self texts];
  v10 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    v32 = array;
    v33 = v7;
    v31 = *v41;
    do
    {
      v13 = 0;
      v34 = v11;
      do
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        array2 = [*(v8 + 2840) array];
        if (v7)
        {
          v16 = [v7 unspeakableRangeOfText:v14];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v37;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v37 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                rangeValue = [*(*(&v36 + 1) + 8 * i) rangeValue];
                v23 = v22;
                v24 = objc_alloc_init(MEMORY[0x277D476A8]);
                [v24 setStart:rangeValue];
                [v24 setLength:v23];
                dictionary = [v24 dictionary];
                [array2 addObject:dictionary];
              }

              v18 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v18);
            array = v32;
            v7 = v33;
            v8 = 0x277CBE000;
            v12 = v31;
            v11 = v34;
          }
        }

        else
        {
          v16 = objc_alloc_init(MEMORY[0x277D476A8]);
          [v16 setStart:0];
          [v16 setLength:{objc_msgSend(v14, "length")}];
          dictionary2 = [v16 dictionary];
          [array2 addObject:dictionary2];
        }

        [array addObject:array2];
        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v11);
  }

  [v29 setResults:array];
  if (completionCopy)
  {
    dictionary3 = [v29 dictionary];
    completionCopy[2](completionCopy, dictionary3);
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end