@interface MTDictionaryDiff
- (MTDictionaryDiff)initWithProperties:(id)a3;
- (void)addCallback:(id)a3;
- (void)setDictionary:(id)a3;
@end

@implementation MTDictionaryDiff

- (MTDictionaryDiff)initWithProperties:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MTDictionaryDiff;
  v6 = [(MTDictionaryDiff *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    callbacks = v6->_callbacks;
    v6->_callbacks = v7;

    objc_storeStrong(&v6->_properties, a3);
  }

  return v6;
}

- (void)setDictionary:(id)a3
{
  v4 = a3;
  v5 = [(MTDictionaryDiff *)self dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = self;
  obj = [(MTDictionaryDiff *)self properties];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v20 = *v29;
    v21 = v4;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v20, v21}];
        v12 = [(NSDictionary *)v4 objectForKeyedSubscript:v10];
        if (v11 != v12 && ([v11 isEqual:v12] & 1) == 0)
        {
          v13 = v5;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v14 = [(MTDictionaryDiff *)v22 callbacks];
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v25;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v25 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                (*(*(*(&v24 + 1) + 8 * j) + 16))();
              }

              v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v16);
          }

          v5 = v13;
          v8 = v20;
          v4 = v21;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  dictionary = v22->_dictionary;
  v22->_dictionary = v4;
}

- (void)addCallback:(id)a3
{
  v4 = a3;
  v6 = [(MTDictionaryDiff *)self callbacks];
  v5 = objc_retainBlock(v4);

  [v6 addObject:v5];
}

@end