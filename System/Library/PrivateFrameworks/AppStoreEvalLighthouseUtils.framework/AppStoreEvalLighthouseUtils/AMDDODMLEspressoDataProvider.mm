@interface AMDDODMLEspressoDataProvider
- (AMDDODMLEspressoDataProvider)initWithInputs:(int64_t)a3 featureSizeMap:(id)a4 inputDictionary:(id)a5;
- (id)bindDataToInputsDirectly:(id)a3 batchSize:(int64_t)a4 error:(id *)a5 errorDomain:(id)a6;
@end

@implementation AMDDODMLEspressoDataProvider

- (AMDDODMLEspressoDataProvider)initWithInputs:(int64_t)a3 featureSizeMap:(id)a4 inputDictionary:(id)a5
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v12->_length = v10;
  objc_storeStrong(&v12->_inputDictionary, v8);
  objc_storeStrong(&v12->_featureSizeMap, location);
  v12->_currentIndex = 0;
  v7 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (id)bindDataToInputsDirectly:(id)a3 batchSize:(int64_t)a4 error:(id *)a5 errorDomain:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v49 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = a4;
  v46 = a5;
  v45 = 0;
  objc_storeStrong(&v45, a6);
  memset(__b, 0, sizeof(__b));
  v31 = MEMORY[0x277D82BE0](location[0]);
  v32 = [v31 countByEnumeratingWithState:__b objects:v55 count:16];
  if (v32)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v32;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(v31);
      }

      v44 = *(__b[1] + 8 * v26);
      v22 = [location[0] objectForKeyedSubscript:v44];
      v6 = v22;
      v23 = [v22 mutableBytes];
      MEMORY[0x277D82BD8](v22);
      v42 = v23;
      v41 = [(NSDictionary *)v49->_inputDictionary objectForKey:v44];
      if (v41)
      {
        v39 = [(NSDictionary *)v49->_featureSizeMap objectForKey:v44];
        if (v39)
        {
          v11 = [v39 longValue];
          if (v42[2] * v42[3] * v42[4] * v42[5] == v11 * v47)
          {
            v38 = *v42;
            v37 = [v41 length] / 4uLL;
            for (i = 0; i < v47; ++i)
            {
              v35 = [v39 longValue];
              for (j = 0; j < v35; ++j)
              {
                v33 = v49->_currentIndex * v35 + i * v35 + j;
                if (v33 >= v37)
                {
                  v14 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v18 = [v14 initWithDomain:v45 code:91 userInfo:0];
                  v15 = v18;
                  *v46 = v18;
                  v50 = 0;
                  v40 = 1;
                  goto LABEL_20;
                }

                v52 = 4 * v33;
                v51 = 4;
                v53 = 4 * v33;
                v54 = 4;
                [v41 getBytes:v38 + 4 * (i * v35 + j) range:{4 * v33, 4}];
              }
            }

            v40 = 0;
          }

          else
          {
            v12 = objc_alloc(MEMORY[0x277CCA9B8]);
            v19 = [v12 initWithDomain:v45 code:82 userInfo:0];
            v13 = v19;
            *v46 = v19;
            v50 = 0;
            v40 = 1;
          }
        }

        else
        {
          v9 = objc_alloc(MEMORY[0x277CCA9B8]);
          v20 = [v9 initWithDomain:v45 code:80 userInfo:0];
          v10 = v20;
          *v46 = v20;
          v50 = 0;
          v40 = 1;
        }

LABEL_20:
        objc_storeStrong(&v39, 0);
      }

      else
      {
        v7 = objc_alloc(MEMORY[0x277CCA9B8]);
        v21 = [v7 initWithDomain:v45 code:81 userInfo:0];
        v8 = v21;
        *v46 = v21;
        v50 = 0;
        v40 = 1;
      }

      objc_storeStrong(&v41, 0);
      if (v40)
      {
        break;
      }

      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [v31 countByEnumeratingWithState:__b objects:v55 count:16];
        if (!v27)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
LABEL_24:
    v40 = 0;
  }

  MEMORY[0x277D82BD8](v31);
  if (!v40)
  {
    v49->_currentIndex += v47;
    if ((v49->_currentIndex + v47) > v49->_length)
    {
      v49->_currentIndex = 0;
    }

    v50 = [MEMORY[0x277CCABB0] numberWithLong:1];
    v40 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v16 = v50;

  return v16;
}

@end