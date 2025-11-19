@interface AMDCoreMLDataProvider
- (AMDCoreMLDataProvider)initWithInputs:(int64_t)a3 featureSizeMap:(id)a4 inputDictionary:(id)a5;
- (id)fetchData:(int64_t)a3 error:(id *)a4 errorDomain:(id)a5;
@end

@implementation AMDCoreMLDataProvider

- (AMDCoreMLDataProvider)initWithInputs:(int64_t)a3 featureSizeMap:(id)a4 inputDictionary:(id)a5
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
  v7 = v12;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (id)fetchData:(int64_t)a3 error:(id *)a4 errorDomain:(id)a5
{
  v50 = self;
  v49 = a2;
  v48 = a3;
  v47 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v45 = objc_alloc_init(NSMutableDictionary);
  memset(__b, 0, sizeof(__b));
  obj = v50->_featureSizeMap;
  v29 = [(NSDictionary *)obj countByEnumeratingWithState:__b objects:v57 count:16];
  if (v29)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v29;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(__b[1] + 8 * v26);
      v42 = [(NSDictionary *)v50->_featureSizeMap objectForKey:v44];
      if (v42)
      {
        v40 = [(NSDictionary *)v50->_inputDictionary objectForKey:v44];
        if (v40)
        {
          currentIndex = v50->_currentIndex;
          v39 = 4 * currentIndex * [v42 longValue];
          v20 = v48;
          v38 = 4 * v20 * [v42 longValue];
          v37 = v39 + v38;
          v21 = v39;
          if (v21 < [v40 length] && (v18 = v37, v18 <= objc_msgSend(v40, "length")))
          {
            v36 = objc_alloc_init(NSMutableArray);
            for (i = v39; i < v37; i += 4)
            {
              v34 = 0;
              v53 = i;
              v52 = 4;
              v54 = i;
              v55 = 4;
              v33[1] = i;
              v33[2] = 4;
              [v40 getBytes:&v34 range:{i, 4}];
              LODWORD(v11) = v34;
              v33[0] = [NSNumber numberWithFloat:v11];
              [v36 addObject:v33[0]];
              objc_storeStrong(v33, 0);
            }

            v16 = [NSNumber numberWithInteger:v48];
            v56[0] = v16;
            v56[1] = v42;
            v15 = [NSArray arrayWithObjects:v56 count:2];
            v32 = [MLMultiArray doubleMultiArrayWithShape:"doubleMultiArrayWithShape:valueArray:error:" valueArray:? error:?];

            [v45 setObject:v32 forKey:v44];
            objc_storeStrong(&v32, 0);
            objc_storeStrong(&v36, 0);
            v41 = 0;
          }

          else
          {
            v9 = [NSError alloc];
            v17 = [v9 initWithDomain:location code:91 userInfo:0];
            v10 = v17;
            *v47 = v17;
            v51 = 0;
            v41 = 1;
          }
        }

        else
        {
          v7 = [NSError alloc];
          v22 = [v7 initWithDomain:location code:81 userInfo:0];
          v8 = v22;
          *v47 = v22;
          v51 = 0;
          v41 = 1;
        }

        objc_storeStrong(&v40, 0);
      }

      else
      {
        v5 = [NSError alloc];
        v23 = [v5 initWithDomain:location code:80 userInfo:0];
        v6 = v23;
        *v47 = v23;
        v51 = 0;
        v41 = 1;
      }

      objc_storeStrong(&v42, 0);
      if (v41)
      {
        break;
      }

      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [(NSDictionary *)obj countByEnumeratingWithState:__b objects:v57 count:16];
        if (!v27)
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
LABEL_20:
    v41 = 0;
  }

  if (!v41)
  {
    v12 = [MLDictionaryFeatureProvider alloc];
    v31 = [v12 initWithDictionary:v45 error:v47];
    v30 = [&__NSArray0__struct mutableCopy];
    [v30 addObject:v31];
    v50->_currentIndex += v48;
    if (v50->_currentIndex + v48 > v50->_length)
    {
      v50->_currentIndex = 0;
    }

    v51 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v30];
    v41 = 1;
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&location, 0);
  v13 = v51;

  return v13;
}

@end