@interface AceObject(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation AceObject(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v27 = objc_autoreleasePoolPush();
      dictionary = [self dictionary];
      [dictionary af_enumerateDigestibleChunksWithOptions:0 usingBlock:v7];

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, AFSecurityDigestibleChunksProviderType, 4);
      groupIdentifier = [self groupIdentifier];
      [groupIdentifier af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      encodedClassName = [self encodedClassName];
      [encodedClassName af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      (*v8)(v7, &AFSecurityDigestibleChunksProviderAceId, 4);
      aceId = [self aceId];
      [aceId af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      (*v8)(v7, "!FER", 4);
      refId = [self refId];
      [refId af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      v31 = v7;
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
      context = objc_autoreleasePoolPush();
      dictionary2 = [self dictionary];
      allKeys = [dictionary2 allKeys];
      v14 = [allKeys sortedArrayUsingSelector:sel_compare_];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        v19 = *MEMORY[0x1E69C76C8];
        v20 = *MEMORY[0x1E69C76C0];
        v21 = *MEMORY[0x1E69C76D0];
        do
        {
          v22 = 0;
          do
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v23 = *(*(&v33 + 1) + 8 * v22);
            v24 = objc_autoreleasePoolPush();
            if (([v23 isEqualToString:v19] & 1) == 0 && (objc_msgSend(v23, "isEqualToString:", v20) & 1) == 0 && (objc_msgSend(v23, "isEqualToString:", @"aceId") & 1) == 0 && (objc_msgSend(v23, "isEqualToString:", v21) & 1) == 0)
            {
              v25 = v21;
              v26 = [dictionary2 objectForKey:v23];
              if (objc_opt_respondsToSelector())
              {
                [v23 af_enumerateDigestibleChunksWithOptions:0 usingBlock:v31];
                [v26 af_enumerateDigestibleChunksWithOptions:0 usingBlock:v31];
              }

              v21 = v25;
            }

            objc_autoreleasePoolPop(v24);
            ++v22;
          }

          while (v17 != v22);
          v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v17);
      }

      objc_autoreleasePoolPop(context);
      v7 = v31;
      (*(v31 + 2))(v31, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

@end