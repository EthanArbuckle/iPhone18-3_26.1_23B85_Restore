@interface AMDCoreMLDataProvider
- (AMDCoreMLDataProvider)initWithInputs:(int64_t)inputs featureSizeMap:(id)map inputDictionary:(id)dictionary;
- (id)fetchData:(int64_t)data error:(id *)error errorDomain:(id)domain;
@end

@implementation AMDCoreMLDataProvider

- (AMDCoreMLDataProvider)initWithInputs:(int64_t)inputs featureSizeMap:(id)map inputDictionary:(id)dictionary
{
  selfCopy = self;
  v11 = a2;
  inputsCopy = inputs;
  location = 0;
  objc_storeStrong(&location, map);
  v8 = 0;
  objc_storeStrong(&v8, dictionary);
  selfCopy->_length = inputsCopy;
  objc_storeStrong(&selfCopy->_inputDictionary, v8);
  objc_storeStrong(&selfCopy->_featureSizeMap, location);
  selfCopy->_currentIndex = 0;
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)fetchData:(int64_t)data error:(id *)error errorDomain:(id)domain
{
  v59 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v50 = a2;
  dataCopy = data;
  errorCopy = error;
  location = 0;
  objc_storeStrong(&location, domain);
  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_featureSizeMap);
  v30 = [obj countByEnumeratingWithState:__b objects:v58 count:16];
  if (v30)
  {
    v26 = *__b[2];
    v27 = 0;
    v28 = v30;
    while (1)
    {
      v25 = v27;
      if (*__b[2] != v26)
      {
        objc_enumerationMutation(obj);
      }

      v45 = *(__b[1] + 8 * v27);
      v43 = [(NSDictionary *)selfCopy->_featureSizeMap objectForKey:v45];
      if (v43)
      {
        v41 = [(NSDictionary *)selfCopy->_inputDictionary objectForKey:v45];
        if (v41)
        {
          currentIndex = selfCopy->_currentIndex;
          v40 = 4 * currentIndex * [v43 longValue];
          v21 = dataCopy;
          v39 = 4 * v21 * [v43 longValue];
          v38 = v40 + v39;
          v22 = v40;
          if (v22 < [v41 length] && (v19 = v38, v19 <= objc_msgSend(v41, "length")))
          {
            v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
            for (i = v40; i < v38; i += 4)
            {
              v35 = 0;
              v54 = i;
              v53 = 4;
              v55 = i;
              v56 = 4;
              v34[1] = i;
              v34[2] = 4;
              [v41 getBytes:&v35 range:{i, 4}];
              LODWORD(v11) = v35;
              v34[0] = [MEMORY[0x277CCABB0] numberWithFloat:v11];
              [v37 addObject:v34[0]];
              objc_storeStrong(v34, 0);
            }

            v15 = MEMORY[0x277CBFF48];
            v17 = [MEMORY[0x277CCABB0] numberWithInteger:dataCopy];
            v57[0] = v17;
            v57[1] = v43;
            v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
            v33 = [v15 doubleMultiArrayWithShape:? valueArray:? error:?];
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v17);
            [v46 setObject:v33 forKey:v45];
            objc_storeStrong(&v33, 0);
            objc_storeStrong(&v37, 0);
            v42 = 0;
          }

          else
          {
            v9 = objc_alloc(MEMORY[0x277CCA9B8]);
            v18 = [v9 initWithDomain:location code:91 userInfo:0];
            v10 = v18;
            *errorCopy = v18;
            v52 = 0;
            v42 = 1;
          }
        }

        else
        {
          v7 = objc_alloc(MEMORY[0x277CCA9B8]);
          v23 = [v7 initWithDomain:location code:81 userInfo:0];
          v8 = v23;
          *errorCopy = v23;
          v52 = 0;
          v42 = 1;
        }

        objc_storeStrong(&v41, 0);
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277CCA9B8]);
        v24 = [v5 initWithDomain:location code:80 userInfo:0];
        v6 = v24;
        *errorCopy = v24;
        v52 = 0;
        v42 = 1;
      }

      objc_storeStrong(&v43, 0);
      if (v42)
      {
        break;
      }

      ++v27;
      if (v25 + 1 >= v28)
      {
        v27 = 0;
        v28 = [obj countByEnumeratingWithState:__b objects:v58 count:16];
        if (!v28)
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
LABEL_20:
    v42 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v42)
  {
    v12 = objc_alloc(MEMORY[0x277CBFED0]);
    v32 = [v12 initWithDictionary:v46 error:errorCopy];
    v31 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v31 addObject:v32];
    selfCopy->_currentIndex += dataCopy;
    if (selfCopy->_currentIndex + dataCopy > selfCopy->_length)
    {
      selfCopy->_currentIndex = 0;
    }

    v52 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v31];
    v42 = 1;
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v13 = v52;

  return v13;
}

@end