@interface MTDictionaryDiff
- (MTDictionaryDiff)initWithProperties:(id)properties;
- (void)addCallback:(id)callback;
- (void)setDictionary:(id)dictionary;
@end

@implementation MTDictionaryDiff

- (MTDictionaryDiff)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = MTDictionaryDiff;
  v6 = [(MTDictionaryDiff *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    callbacks = v6->_callbacks;
    v6->_callbacks = v7;

    objc_storeStrong(&v6->_properties, properties);
  }

  return v6;
}

- (void)setDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dictionary = [(MTDictionaryDiff *)self dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  obj = [(MTDictionaryDiff *)self properties];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v20 = *v29;
    v21 = dictionaryCopy;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [dictionary objectForKeyedSubscript:{v10, v20, v21}];
        v12 = [(NSDictionary *)dictionaryCopy objectForKeyedSubscript:v10];
        if (v11 != v12 && ([v11 isEqual:v12] & 1) == 0)
        {
          v13 = dictionary;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          callbacks = [(MTDictionaryDiff *)selfCopy callbacks];
          v15 = [callbacks countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                  objc_enumerationMutation(callbacks);
                }

                (*(*(*(&v24 + 1) + 8 * j) + 16))();
              }

              v16 = [callbacks countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v16);
          }

          dictionary = v13;
          v8 = v20;
          dictionaryCopy = v21;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  dictionary = selfCopy->_dictionary;
  selfCopy->_dictionary = dictionaryCopy;
}

- (void)addCallback:(id)callback
{
  callbackCopy = callback;
  callbacks = [(MTDictionaryDiff *)self callbacks];
  v5 = objc_retainBlock(callbackCopy);

  [callbacks addObject:v5];
}

@end