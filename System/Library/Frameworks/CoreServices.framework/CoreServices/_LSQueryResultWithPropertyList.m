@interface _LSQueryResultWithPropertyList
- (_LSQueryResultWithPropertyList)initWithCoder:(id)a3;
- (_LSQueryResultWithPropertyList)initWithPropertyList:(id)a3;
- (_LSQueryResultWithPropertyList)propertyListWithClass:(Class)a3 valuesOfClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSQueryResultWithPropertyList

- (_LSQueryResultWithPropertyList)initWithPropertyList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _LSQueryResultWithPropertyList;
  v6 = [(_LSQueryResult *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

- (_LSQueryResultWithPropertyList)propertyListWithClass:(Class)a3 valuesOfClass:(Class)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__45;
  v29 = __Block_byref_object_dispose__45;
  v30 = [(_LSQueryResultWithPropertyList *)self propertyList];
  v6 = v26;
  if (a3)
  {
    if (v26[5])
    {
      isKindOfClass = objc_opt_isKindOfClass();
      v6 = v26;
      if ((isKindOfClass & 1) == 0)
      {
        v8 = v26[5];
        v26[5] = 0;

        v6 = v26;
      }
    }
  }

  if (a4 && v6[5])
  {
    v9 = _NSIsNSDictionary();
    v10 = v26[5];
    if (v9)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __70___LSQueryResultWithPropertyList_propertyListWithClass_valuesOfClass___block_invoke;
      v24[3] = &unk_1E6A1DB88;
      v24[4] = &v25;
      v24[5] = a4;
      [v10 enumerateKeysAndObjectsUsingBlock:v24];
    }

    else if (_NSIsNSArray())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v26[5];
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v31 count:16];
      if (v12)
      {
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v16 = v26[5];
              v26[5] = 0;

              goto LABEL_20;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v20 objects:v31 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }
  }

  v17 = v26[5];
  _Block_object_dispose(&v25, 8);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(_LSQueryResultWithPropertyList *)self propertyList];
  [v5 encodeObject:v4 forKey:@"propertyList"];
}

- (_LSQueryResultWithPropertyList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_LSQueryResult *)self _init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = XNSGetPropertyListClasses();
    v8 = [v4 ls_decodeDictionaryWithKeysOfClass:v6 valuesOfClasses:v7 forKey:@"propertyList"];
    propertyList = v5->_propertyList;
    v5->_propertyList = v8;
  }

  return v5;
}

@end