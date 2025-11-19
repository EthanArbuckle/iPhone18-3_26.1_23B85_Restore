@interface NSURL(NSURLPromisedItems)
- (NSError)_fixedUpSideFaultError:()NSURLPromisedItems;
- (id)_valueFromFaultDictionary:()NSURLPromisedItems forKey:;
- (uint64_t)_promiseExtensionConsume;
- (uint64_t)_promiseExtensionRelease:()NSURLPromisedItems;
- (uint64_t)checkPromisedItemIsReachableAndReturnError:()NSURLPromisedItems;
- (uint64_t)getPromisedItemResourceValue:()NSURLPromisedItems forKey:error:;
- (uint64_t)promisedItemResourceValuesForKeys:()NSURLPromisedItems error:;
- (void)_performWithPhysicalURL:()NSURLPromisedItems;
@end

@implementation NSURL(NSURLPromisedItems)

- (uint64_t)_promiseExtensionConsume
{
  v0 = MEMORY[0x1865CF9F0]();
  if (!v0)
  {
    return -1;
  }

  v1 = v0;
  CFDataGetBytePtr(v0);
  v2 = sandbox_extension_consume();
  CFRelease(v1);
  return v2;
}

- (uint64_t)_promiseExtensionRelease:()NSURLPromisedItems
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return sandbox_extension_release();
  }

  return result;
}

- (void)_performWithPhysicalURL:()NSURLPromisedItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = _CFURLPromiseCopyPhysicalURL();
  if (v5)
  {
    v6 = v5;
    if (([v5 isEqual:a1] & 1) != 0 || !_CFURLIsItemPromiseAtURL())
    {
      v7 = -1;
      v8 = a1;
    }

    else
    {
      v7 = [v6 _promiseExtensionConsume];
      v9[0] = 0;
      if ([v6 checkResourceIsReachableAndReturnError:v9])
      {
        v8 = v6;
      }

      else
      {
        v8 = a1;
      }
    }

    (*(a3 + 16))(a3, v8);
    [a1 _promiseExtensionRelease:v7];
    CFRelease(v6);
  }

  else
  {
    (*(a3 + 16))(a3, a1);

    [a1 _promiseExtensionRelease:-1];
  }
}

- (NSError)_fixedUpSideFaultError:()NSURLPromisedItems
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a3, "userInfo")}];
  if ([v5 objectForKey:@"NSURL"])
  {
    [v5 setObject:a1 forKey:@"NSURL"];
  }

  if ([v5 objectForKey:@"NSFilePath"])
  {
    [v5 setObject:objc_msgSend(a1 forKey:{"path"), @"NSFilePath"}];
  }

  v6 = [v5 objectForKey:@"NSUnderlyingError"];
  if (v6)
  {
    [v5 setObject:objc_msgSend(a1 forKey:{"_fixedUpSideFaultError:", v6), @"NSUnderlyingError"}];
  }

  v7 = [a3 domain];
  v8 = [a3 code];

  return [NSError errorWithDomain:v7 code:v8 userInfo:v5];
}

- (uint64_t)checkPromisedItemIsReachableAndReturnError:()NSURLPromisedItems
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__NSURL_NSURLPromisedItems__checkPromisedItemIsReachableAndReturnError___block_invoke;
  v7[3] = &unk_1E69F4480;
  v7[4] = a1;
  v7[5] = &v8;
  v7[6] = &v12;
  v7[7] = a3;
  [a1 _performWithPhysicalURL:v7];
  v4 = v9;
  v5 = *(v9 + 24);
  if (a3 && (v9[3] & 1) == 0)
  {
    *a3 = v13[5];
    v5 = *(v4 + 24);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5 & 1;
}

- (id)_valueFromFaultDictionary:()NSURLPromisedItems forKey:
{
  if ([a4 isEqualToString:*MEMORY[0x1E695DC68]])
  {
    v6 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E695DC30]), "pathExtension"}];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &stru_1EEEFDF90;
    }

    if (qword_1ED43F5F0 != -1)
    {
      dispatch_once(&qword_1ED43F5F0, &__block_literal_global_15);
    }

    v8 = _MergedGlobals_96(qword_1ED43F5E8, v7, 0);

    return v8;
  }

  else
  {

    return [a3 objectForKey:a4];
  }
}

- (uint64_t)getPromisedItemResourceValue:()NSURLPromisedItems forKey:error:
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__NSURL_NSURLPromisedItems__getPromisedItemResourceValue_forKey_error___block_invoke;
  v10[3] = &unk_1E69F44A8;
  v10[6] = &v11;
  v10[7] = &v21;
  v10[4] = a1;
  v10[5] = a4;
  v10[8] = &v15;
  [a1 _performWithPhysicalURL:v10];
  v7 = v12;
  v8 = *(v12 + 24);
  if (a5 && (v12[3] & 1) == 0)
  {
    *a5 = v16[5];
    v8 = *(v7 + 24);
  }

  if (a3 && (v8 & 1) != 0)
  {
    *a3 = v22[5];
    v8 = *(v7 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v8 & 1;
}

- (uint64_t)promisedItemResourceValuesForKeys:()NSURLPromisedItems error:
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__NSURL_NSURLPromisedItems__promisedItemResourceValuesForKeys_error___block_invoke;
  v8[3] = &unk_1E69F44D0;
  v8[4] = a1;
  v8[5] = a3;
  v8[6] = &v9;
  v8[7] = &v15;
  [a1 _performWithPhysicalURL:v8];
  v5 = v10;
  v6 = v10[5];
  if (a4 && !v6)
  {
    *a4 = v16[5];
    v6 = v5[5];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

@end