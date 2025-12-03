@interface _LSQueryResultWithPropertyList
- (_LSQueryResultWithPropertyList)initWithCoder:(id)coder;
- (_LSQueryResultWithPropertyList)initWithPropertyList:(id)list;
- (_LSQueryResultWithPropertyList)propertyListWithClass:(Class)class valuesOfClass:(Class)ofClass;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSQueryResultWithPropertyList

- (_LSQueryResultWithPropertyList)initWithPropertyList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = _LSQueryResultWithPropertyList;
  _init = [(_LSQueryResult *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, list);
  }

  return v7;
}

- (_LSQueryResultWithPropertyList)propertyListWithClass:(Class)class valuesOfClass:(Class)ofClass
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__45;
  v29 = __Block_byref_object_dispose__45;
  propertyList = [(_LSQueryResultWithPropertyList *)self propertyList];
  v6 = v26;
  if (class)
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

  if (ofClass && v6[5])
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
      v24[5] = ofClass;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  propertyList = [(_LSQueryResultWithPropertyList *)self propertyList];
  [coderCopy encodeObject:propertyList forKey:@"propertyList"];
}

- (_LSQueryResultWithPropertyList)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(_LSQueryResult *)self _init];
  if (_init)
  {
    v6 = objc_opt_class();
    v7 = XNSGetPropertyListClasses();
    v8 = [coderCopy ls_decodeDictionaryWithKeysOfClass:v6 valuesOfClasses:v7 forKey:@"propertyList"];
    propertyList = _init->_propertyList;
    _init->_propertyList = v8;
  }

  return _init;
}

@end