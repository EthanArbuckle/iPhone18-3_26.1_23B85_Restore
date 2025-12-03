@interface SecXPCHelper
+ (id)cleanDictionaryForXPC:(id)c;
+ (id)cleanObjectForXPC:(id)c;
+ (id)cleanseErrorForXPC:(id)c;
+ (id)encodedDataFromError:(id)error;
+ (id)errorFromEncodedData:(id)data;
+ (id)safeCKErrorPrimitiveClasses;
+ (id)safeErrorClasses;
+ (id)safeErrorCollectionClasses;
+ (id)safeErrorPrimitiveClasses;
@end

@implementation SecXPCHelper

+ (id)safeErrorClasses
{
  if (safeErrorClasses_onceToken != -1)
  {
    dispatch_once(&safeErrorClasses_onceToken, &__block_literal_global_24);
  }

  v3 = safeErrorClasses_errorClasses;

  return v3;
}

void __32__SecXPCHelper_safeErrorClasses__block_invoke()
{
  v33 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = safeErrorClasses_errorClasses;
  safeErrorClasses_errorClasses = v0;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = +[SecXPCHelper safeErrorPrimitiveClasses];
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [safeErrorClasses_errorClasses addObject:*(*(&v26 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v4);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = +[SecXPCHelper safeCKErrorPrimitiveClasses];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [safeErrorClasses_errorClasses addObject:*(*(&v22 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = +[SecXPCHelper safeErrorCollectionClasses];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [safeErrorClasses_errorClasses addObject:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)safeErrorPrimitiveClasses
{
  if (safeErrorPrimitiveClasses_onceToken != -1)
  {
    dispatch_once(&safeErrorPrimitiveClasses_onceToken, &__block_literal_global_4562);
  }

  v3 = safeErrorPrimitiveClasses_errorClasses;

  return v3;
}

Class __41__SecXPCHelper_safeErrorPrimitiveClasses__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = safeErrorPrimitiveClasses_errorClasses;
  safeErrorPrimitiveClasses_errorClasses = v0;

  v2 = 0;
  v5[0] = "NSData";
  v5[1] = "NSDate";
  v5[2] = "NSNull";
  v5[3] = "NSNumber";
  v5[4] = "NSString";
  v5[5] = "NSURL";
  do
  {
    result = objc_getClass(v5[v2]);
    if (result)
    {
      result = [safeErrorPrimitiveClasses_errorClasses addObject:result];
    }

    ++v2;
  }

  while (v2 != 6);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)safeCKErrorPrimitiveClasses
{
  if (safeCKErrorPrimitiveClasses_onceToken != -1)
  {
    dispatch_once(&safeCKErrorPrimitiveClasses_onceToken, &__block_literal_global_8_4554);
  }

  v3 = safeCKErrorPrimitiveClasses_errorClasses;

  return v3;
}

Class __43__SecXPCHelper_safeCKErrorPrimitiveClasses__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = safeCKErrorPrimitiveClasses_errorClasses;
  safeCKErrorPrimitiveClasses_errorClasses = v0;

  v2 = 0;
  v5[0] = "CKArchivedAnchoredPackage";
  v5[1] = "CKAsset";
  v5[2] = "CKPackage";
  v5[3] = "CKRecordID";
  v5[4] = "CKReference";
  v5[5] = "CLLocation";
  do
  {
    result = objc_getClass(v5[v2]);
    if (result)
    {
      result = [safeCKErrorPrimitiveClasses_errorClasses addObject:result];
    }

    ++v2;
  }

  while (v2 != 6);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)safeErrorCollectionClasses
{
  if (safeErrorCollectionClasses_onceToken != -1)
  {
    dispatch_once(&safeErrorCollectionClasses_onceToken, &__block_literal_global_16);
  }

  v3 = safeErrorCollectionClasses_errorClasses;

  return v3;
}

Class __42__SecXPCHelper_safeErrorCollectionClasses__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = safeErrorCollectionClasses_errorClasses;
  safeErrorCollectionClasses_errorClasses = v0;

  v2 = 0;
  v5[0] = "NSArray";
  v5[1] = "NSDictionary";
  v5[2] = "NSError";
  v5[3] = "NSOrderedSet";
  v5[4] = "NSSet";
  v5[5] = "NSURLError";
  do
  {
    result = objc_getClass(v5[v2]);
    if (result)
    {
      result = [safeErrorCollectionClasses_errorClasses addObject:result];
    }

    ++v2;
  }

  while (v2 != 6);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)encodedDataFromError:(id)error
{
  v3 = MEMORY[0x1E696ACC8];
  errorCopy = error;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:errorCopy forKey:@"error"];

  encodedData = [v5 encodedData];

  return encodedData;
}

+ (id)errorFromEncodedData:(id)data
{
  v3 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:0];

  if (v5)
  {
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)cleanseErrorForXPC:(id)c
{
  if (c)
  {
    cCopy = c;
    userInfo = [cCopy userInfo];
    v5 = [SecXPCHelper cleanDictionaryForXPC:userInfo];

    v6 = MEMORY[0x1E696ABC0];
    domain = [cCopy domain];
    code = [cCopy code];

    v9 = [v6 errorWithDomain:domain code:code userInfo:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)cleanObjectForXPC:(id)c
{
  v70 = *MEMORY[0x1E69E9840];
  cCopy = c;
  if (!cCopy)
  {
    v16 = 0;
    goto LABEL_53;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v4 = +[SecXPCHelper safeErrorPrimitiveClasses];
  v5 = [v4 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v62;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v61 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v16 = cCopy;

          goto LABEL_53;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v6);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = +[SecXPCHelper safeErrorCollectionClasses];
  v10 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  v12 = *v58;
  while (2)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*v58 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v57 + 1) + 8 * j);
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = MEMORY[0x1E696ABC0];
          v18 = cCopy;
          domain = [v18 domain];
          code = [v18 code];
          userInfo = [v18 userInfo];

          v22 = [SecXPCHelper cleanDictionaryForXPC:userInfo];
          v16 = [v17 errorWithDomain:domain code:code userInfo:v22];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [SecXPCHelper cleanDictionaryForXPC:cCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = cCopy;
              v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v24 = v23;
              v25 = [v24 countByEnumeratingWithState:&v53 objects:v67 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v54;
                do
                {
                  for (k = 0; k != v26; ++k)
                  {
                    if (*v54 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = [SecXPCHelper cleanObjectForXPC:*(*(&v53 + 1) + 8 * k)];
                    [v16 addObject:v29];
                  }

                  v26 = [v24 countByEnumeratingWithState:&v53 objects:v67 count:16];
                }

                while (v26);
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = cCopy;
                v16 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v30, "count")}];
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v24 = v30;
                v31 = [v24 countByEnumeratingWithState:&v49 objects:v66 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v50;
                  do
                  {
                    for (m = 0; m != v32; ++m)
                    {
                      if (*v50 != v33)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v35 = [SecXPCHelper cleanObjectForXPC:*(*(&v49 + 1) + 8 * m)];
                      [v16 addObject:v35];
                    }

                    v32 = [v24 countByEnumeratingWithState:&v49 objects:v66 count:16];
                  }

                  while (v32);
                }
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v36 = cCopy;
                v16 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v36, "count")}];
                v45 = 0u;
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v24 = v36;
                v37 = [v24 countByEnumeratingWithState:&v45 objects:v65 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v46;
                  do
                  {
                    for (n = 0; n != v38; ++n)
                    {
                      if (*v46 != v39)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v41 = [SecXPCHelper cleanObjectForXPC:*(*(&v45 + 1) + 8 * n)];
                      [v16 addObject:v41];
                    }

                    v38 = [v24 countByEnumeratingWithState:&v45 objects:v65 count:16];
                  }

                  while (v38);
                }
              }
            }
          }
        }

        goto LABEL_53;
      }
    }

    v11 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
LABEL_53:

  v42 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)cleanDictionaryForXPC:(id)c
{
  v22 = *MEMORY[0x1E69E9840];
  cCopy = c;
  if (cCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [cCopy allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [cCopy objectForKeyedSubscript:v10];
          v12 = [SecXPCHelper cleanObjectForXPC:v11];

          v13 = [self cleanObjectForXPC:v10];
          if (v13)
          {
            [dictionary setObject:v12 forKeyedSubscript:v13];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    dictionary = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

@end