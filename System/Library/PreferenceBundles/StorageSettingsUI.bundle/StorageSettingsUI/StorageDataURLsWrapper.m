@interface StorageDataURLsWrapper
- (void)startObservingURLs:(id)a3 withUpdateHandler:(id)a4;
@end

@implementation StorageDataURLsWrapper

- (void)startObservingURLs:(id)a3 withUpdateHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 path];
        STMSizeOfFileTree();

        v15 = objc_alloc_init(SAURLSize);
        [v15 setSize:v18];
        [v7 setObject:v15 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = objc_alloc_init(SAURLSizerResults);
  [v16 setUrlInfo:v7];
  v17 = objc_alloc_init(NSError);
  v6[2](v6, v16, v17);
}

@end