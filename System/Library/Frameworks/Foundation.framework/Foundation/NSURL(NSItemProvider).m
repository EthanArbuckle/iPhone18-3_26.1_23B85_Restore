@interface NSURL(NSItemProvider)
+ (id)objectWithItemProviderData:()NSItemProvider typeIdentifier:error:;
+ (uint64_t)readableTypeIdentifiersForItemProvider;
+ (uint64_t)writableTypeIdentifiersForItemProvider;
- (NSData)_URLArchive;
- (uint64_t)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:;
- (void)writableTypeIdentifiersForItemProvider;
@end

@implementation NSURL(NSItemProvider)

+ (uint64_t)readableTypeIdentifiersForItemProvider
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = _MergedGlobals_89[0]();
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:1];
}

- (NSData)_URLArchive
{
  v2 = [a1 baseURL];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if (v2)
  {
    [v3 addObject:{objc_msgSend(a1, "relativeString")}];
    v4 = [v2 absoluteString];
  }

  else
  {
    [v3 addObject:{objc_msgSend(a1, "absoluteString")}];
    v4 = &stru_1EEEFDF90;
  }

  [v3 addObject:v4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [a1 _NSItemProviderArchive_customArchiveDictionary];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  return [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];
}

+ (id)objectWithItemProviderData:()NSItemProvider typeIdentifier:error:
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v8 = _MergedGlobals_89[0]();
  if (off_1ED4398B8(a4, v8))
  {
    v36 = 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v38 = ___URLFromURLArchive_block_invoke;
    v39 = &unk_1E69F6820;
    v40 = a4;
    v41 = &v35;
    v13 = [NSPropertyListSerialization propertyListWithData:a3 options:0 format:0 error:&v36];
    if (_NSIsNSArray())
    {
      if ([v13 count] >= 2 && (objc_msgSend(v13, "objectAtIndexedSubscript:", 0), _NSIsNSString()) && (objc_msgSend(v13, "objectAtIndexedSubscript:", 1), _NSIsNSString()))
      {
        v14 = [objc_msgSend(v13 objectAtIndexedSubscript:{1), "isEqualToString:", &stru_1EEEFDF90}];
        v15 = objc_alloc(MEMORY[0x1E695DFF8]);
        v16 = [v13 objectAtIndexedSubscript:0];
        if (v14)
        {
          v17 = [v15 initWithString:v16];
        }

        else
        {
          v17 = [v15 initWithString:v16 relativeToURL:{objc_msgSend(v13, "objectAtIndexedSubscript:", 1)}];
        }

        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if ([v13 count] >= 3)
      {
        v19 = [v13 objectAtIndexedSubscript:2];
        if (_NSIsNSDictionary())
        {
          if (objc_opt_respondsToSelector())
          {
            [v18 _NSItemProviderArchive_didUnarchiveCustomDictionary:v19];
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }

    (v38)(v37, v18, v36);
    v20 = v18;
    if (v20)
    {
      v21 = v35;
      goto LABEL_31;
    }
  }

  else
  {
    v35 = _NSIPCocoaErrorWithCode(4864, 0, 0, @"A URL cannot be instantiated from a representation of type “%@”.", v9, v10, v11, v12, a4);
  }

  if ([a3 length])
  {
    v26 = [[NSString alloc] initWithData:a3 encoding:4];
    if (v26)
    {
      v20 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v26];
      v27 = [v20 scheme];
      if (v20 && [v27 length] && (objc_msgSend(v20, "isFileURL") & 1) == 0)
      {
        v32 = 0;
      }

      else
      {

        v32 = _NSIPCocoaErrorWithCode(4864, v35, 0, @"A URL cannot be instantiated from a representation of type “%@” even after treating it as a string.", v28, v29, v30, v31, a4);
        v20 = 0;
      }

      v35 = v32;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v35;
  if (!(v20 | v35))
  {
    v21 = _NSIPCocoaErrorWithCode(4864, 0, 0, @"A URL could not be instantiated because of an unknown error.", v22, v23, v24, v25, v34);
    v20 = 0;
    v35 = v21;
  }

LABEL_31:
  if (a5 && v21)
  {
    *a5 = v21;
  }

  return v20;
}

+ (uint64_t)writableTypeIdentifiersForItemProvider
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = _MergedGlobals_89[0]();
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:1];
}

- (void)writableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x1E695DF70] array];
  if ([a1 isFileURL])
  {
    [v2 addObject:off_1ED4398B0[0]()];
  }

  [v2 addObject:_MergedGlobals_89[0]()];
  return v2;
}

- (uint64_t)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:
{
  if (([a3 isEqualToString:off_1ED4398B0[0]()] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", _MergedGlobals_89[0]()))
  {
    v7 = [a1 _URLArchive];
  }

  else
  {
    v7 = 0;
  }

  (*(a4 + 16))(a4, v7, 0);
  return 0;
}

@end