@interface NWURLLoaderCache
- (void)copyVaryStateFromRequest:(void *)request varyValueToCopy:(void *)copy;
@end

@implementation NWURLLoaderCache

- (void)copyVaryStateFromRequest:(void *)request varyValueToCopy:(void *)copy
{
  v22 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  copyCopy = copy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = copyCopy;
  v6 = [copyCopy componentsSeparatedByString:{@", "}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v13 = [v11 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        v14 = [requestCopy valueForHTTPHeaderField:v13];
        if (v14)
        {
          [dictionary setObject:v14 forKeyedSubscript:v13];
        }

        else
        {
          [v13 caseInsensitiveCompare:@"Cookie"];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return dictionary;
}

@end