@interface AAFResponseBodyRedactor
+ (id)redactedCopyForObject:(id)object forKeys:(id)keys;
+ (id)redactedCopyForResponse:(id)response forKeys:(id)keys;
@end

@implementation AAFResponseBodyRedactor

+ (id)redactedCopyForResponse:(id)response forKeys:(id)keys
{
  keysCopy = keys;
  responseCopy = response;
  objc_opt_class();
  v8 = [self redactedCopyForObject:responseCopy forKeys:keysCopy];

  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)redactedCopyForObject:(id)object forKeys:(id)keys
{
  v37 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keysCopy = keys;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(objectCopy, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = objectCopy;
    v9 = objectCopy;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          if ([keysCopy containsObject:v14])
          {
            [v8 setObject:@"<PRIVACY SENSITIVE>" forKeyedSubscript:v14];
          }

          else
          {
            v16 = [self redactedCopyForObject:v15 forKeys:keysCopy];
            [v8 setObject:v16 forKeyedSubscript:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    objectCopy = v26;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectCopy, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = objectCopy;
      v18 = objectCopy;
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [self redactedCopyForObject:*(*(&v27 + 1) + 8 * j) forKeys:keysCopy];
            [v8 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v20);
      }

      objectCopy = v17;
    }

    else
    {
      v8 = objectCopy;
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v8;
}

@end