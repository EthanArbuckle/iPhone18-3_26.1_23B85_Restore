@interface TypeCheckedDictionaryReader
- (TypeCheckedDictionaryReader)initWithDictionary:(id)a3;
- (id)valueOfClass:(Class)a3 forKey:(id)a4;
- (id)valueOfClass:(Class)a3 forKeyPath:(id)a4;
@end

@implementation TypeCheckedDictionaryReader

- (TypeCheckedDictionaryReader)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TypeCheckedDictionaryReader;
  v5 = [(TypeCheckedDictionaryReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dictionary, v4);
  }

  return v6;
}

- (id)valueOfClass:(Class)a3 forKey:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dictionary);
  v7 = [WeakRetained objectForKeyedSubscript:v5];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)valueOfClass:(Class)a3 forKeyPath:(id)a4
{
  v6 = a4;
  v7 = [v6 rangeOfString:@"." options:4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(TypeCheckedDictionaryReader *)self valueOfClass:a3 forKey:v6];
    goto LABEL_20;
  }

  v9 = v7;
  v10 = [v6 substringToIndex:v7];
  WeakRetained = [(NSMutableDictionary *)self->_keyPathCache objectForKeyedSubscript:v10];
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dictionary);
    [v10 componentsSeparatedByString:@"."];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v35 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v27 = 16;
      v28 = self;
      v29 = v9;
      v30 = a3;
      v31 = v6;
      v17 = *v33;
      v18 = 1;
      while (2)
      {
        v19 = 0;
        v20 = WeakRetained;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v32 + 1) + 8 * v19);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          WeakRetained = [v20 objectForKeyedSubscript:v21];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v8 = 0;
            v6 = v31;
            goto LABEL_19;
          }

          v18 &= isKindOfClass ^ 1;
          v19 = v19 + 1;
          v20 = WeakRetained;
        }

        while (v16 != v19);
        v16 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v6 = v31;
      self = v28;
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    keyPathCache = self->_keyPathCache;
    if (!keyPathCache)
    {
      v25 = [[NSMutableDictionary alloc] initWithCapacity:5];
      v26 = self->_keyPathCache;
      self->_keyPathCache = v25;

      keyPathCache = self->_keyPathCache;
    }

    [(NSMutableDictionary *)keyPathCache setObject:WeakRetained forKeyedSubscript:v10, v27, v28, v29, v30];
LABEL_27:
  }

  v12 = [v6 substringFromIndex:{v9 + 1, v27, v28, v29, v30}];
  v13 = [WeakRetained objectForKeyedSubscript:v12];

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v8 = v14;
LABEL_19:

LABEL_20:

  return v8;
}

@end