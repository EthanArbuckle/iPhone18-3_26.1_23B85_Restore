@interface AMDDODMLEspressoDataProvider
- (AMDDODMLEspressoDataProvider)initWithInputs:(int64_t)inputs featureSizeMap:(id)map inputDictionary:(id)dictionary;
- (id)bindDataToInputsDirectly:(id)directly batchSize:(int64_t)size error:(id *)error errorDomain:(id)domain;
@end

@implementation AMDDODMLEspressoDataProvider

- (AMDDODMLEspressoDataProvider)initWithInputs:(int64_t)inputs featureSizeMap:(id)map inputDictionary:(id)dictionary
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
  v7 = selfCopy;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)bindDataToInputsDirectly:(id)directly batchSize:(int64_t)size error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, directly);
  sizeCopy = size;
  errorCopy = error;
  v45 = 0;
  objc_storeStrong(&v45, domain);
  memset(__b, 0, sizeof(__b));
  v31 = location[0];
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
      mutableBytes = [v22 mutableBytes];

      v42 = mutableBytes;
      v41 = [(NSDictionary *)selfCopy->_inputDictionary objectForKey:v44];
      if (v41)
      {
        v39 = [(NSDictionary *)selfCopy->_featureSizeMap objectForKey:v44];
        if (v39)
        {
          longValue = [v39 longValue];
          if (v42[2] * v42[3] * v42[4] * v42[5] == longValue * sizeCopy)
          {
            v38 = *v42;
            v37 = [v41 length] / 4;
            for (i = 0; i < sizeCopy; ++i)
            {
              longValue2 = [v39 longValue];
              for (j = 0; j < longValue2; ++j)
              {
                v33 = selfCopy->_currentIndex * longValue2 + i * longValue2 + j;
                if (v33 >= v37)
                {
                  v14 = [NSError alloc];
                  v18 = [v14 initWithDomain:v45 code:91 userInfo:0];
                  v15 = v18;
                  *errorCopy = v18;
                  v50 = 0;
                  v40 = 1;
                  goto LABEL_20;
                }

                v52 = 4 * v33;
                v51 = 4;
                v53 = 4 * v33;
                v54 = 4;
                [v41 getBytes:v38 + 4 * (i * longValue2 + j) range:{4 * v33, 4}];
              }
            }

            v40 = 0;
          }

          else
          {
            v12 = [NSError alloc];
            v19 = [v12 initWithDomain:v45 code:82 userInfo:0];
            v13 = v19;
            *errorCopy = v19;
            v50 = 0;
            v40 = 1;
          }
        }

        else
        {
          v9 = [NSError alloc];
          v20 = [v9 initWithDomain:v45 code:80 userInfo:0];
          v10 = v20;
          *errorCopy = v20;
          v50 = 0;
          v40 = 1;
        }

LABEL_20:
        objc_storeStrong(&v39, 0);
      }

      else
      {
        v7 = [NSError alloc];
        v21 = [v7 initWithDomain:v45 code:81 userInfo:0];
        v8 = v21;
        *errorCopy = v21;
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

  if (!v40)
  {
    selfCopy->_currentIndex += sizeCopy;
    if ((selfCopy->_currentIndex + sizeCopy) > selfCopy->_length)
    {
      selfCopy->_currentIndex = 0;
    }

    v50 = [NSNumber numberWithLong:1];
    v40 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  v16 = v50;

  return v16;
}

@end