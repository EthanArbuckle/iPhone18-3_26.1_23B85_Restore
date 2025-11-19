@interface AEAggregationhelper
- (AEAggregationhelper)initWithPlugins:(id)a3 forUrl:(id)a4 withOptions:(id)a5;
- (BOOL)acknowledgeAnnotationProvider:(id)a3 willMergeAnnotationsWithAssertVersionMismatch:(id)a4 assetID:(id)a5 assetURL:(id)a6;
- (BOOL)helperValidateBookAuthorizationWithError:(id *)a3 needsCoordination:(BOOL)a4;
- (id)annotationProviderWithCoordination:(BOOL)a3 forAssetID:(id)a4;
- (id)helperCoverImage;
- (id)helperMetadataForKey:(id)a3 needsCoordination:(BOOL)a4;
- (id)helperMinifiedController;
- (void)dealloc;
- (void)helperDeletePersistentCache;
- (void)helperUpdateCachedURLTo:(id)a3;
- (void)setMetadata:(id)a3 forKey:(id)a4;
- (void)viewControllerFromPluginIndex:(int)a3 withCompletion:(id)a4;
@end

@implementation AEAggregationhelper

- (AEAggregationhelper)initWithPlugins:(id)a3 forUrl:(id)a4 withOptions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(AEAggregationhelper *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_plugins, a3);
    objc_storeStrong(&v13->_url, a4);
    objc_storeStrong(&v13->_options, a5);
  }

  return v13;
}

- (void)dealloc
{
  url = self->_url;
  self->_url = 0;

  plugins = self->_plugins;
  self->_plugins = 0;

  options = self->_options;
  self->_options = 0;

  v6.receiver = self;
  v6.super_class = AEAggregationhelper;
  [(AEAggregationhelper *)&v6 dealloc];
}

- (id)helperCoverImage
{
  v3 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_plugins;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v12 + 1) + 8 * v8) helperForURL:self->_url withOptions:{self->_options, v12}];
      v10 = [v9 helperCoverImage];

      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (id)helperMetadataForKey:(id)a3 needsCoordination:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_plugins;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [*(*(&v16 + 1) + 8 * v12) helperForURL:self->_url withOptions:{self->_options, v16}];
      v14 = [v13 helperMetadataForKey:v6 needsCoordination:v4];

      if (v14)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v14;
}

- (void)setMetadata:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_plugins;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) helperForURL:self->_url withOptions:{self->_options, v14}];
        if (objc_opt_respondsToSelector())
        {
          [v13 setMetadata:v6 forKey:v7];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)helperDeletePersistentCache
{
  v3 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_plugins;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) helperForURL:self->_url withOptions:{self->_options, v10}];
        [v9 helperDeletePersistentCache];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)helperUpdateCachedURLTo:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_plugins;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) helperForURL:self->_url withOptions:{self->_options, v12}];
        [v11 helperUpdateCachedURLTo:v4];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v5);
}

- (id)annotationProviderWithCoordination:(BOOL)a3 forAssetID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_plugins;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v17 = v7;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) helperForURL:self->_url withOptions:self->_options];
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 annotationProviderWithCoordination:v4 forAssetID:v6];
          if (v14)
          {
            v15 = v14;

            goto LABEL_12;
          }
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_12:
    v7 = v17;
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v15;
}

- (BOOL)acknowledgeAnnotationProvider:(id)a3 willMergeAnnotationsWithAssertVersionMismatch:(id)a4 assetID:(id)a5 assetURL:(id)a6
{
  v23 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = self->_plugins;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v22 = v13;
    v17 = *v25;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * i) helperForURL:self->_url withOptions:{self->_options, v22}];
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v19 acknowledgeAnnotationProvider:v23 willMergeAnnotationsWithAssertVersionMismatch:v10 assetID:v11 assetURL:v12] & 1) == 0)
        {

          v20 = 0;
          goto LABEL_12;
        }
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v20 = 1;
LABEL_12:
    v13 = v22;
  }

  else
  {
    v20 = 1;
  }

  objc_autoreleasePoolPop(v13);
  return v20;
}

- (BOOL)helperValidateBookAuthorizationWithError:(id *)a3 needsCoordination:(BOOL)a4
{
  v21 = a4;
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v6 = objc_autoreleasePoolPush();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_plugins;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v19 = v6;
    v20 = v4;
    v10 = 0;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v23 + 1) + 8 * i) helperForURL:self->_url withOptions:{self->_options, v19, v20}];
        if (objc_opt_respondsToSelector())
        {
          v22 = v10;
          v14 = [v13 helperValidateBookAuthorizationWithError:&v22 needsCoordination:v21];
          v15 = v22;

          if (v14)
          {

            v16 = 1;
            goto LABEL_15;
          }

          v10 = v15;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v16 = 0;
    v15 = v10;
LABEL_15:
    v6 = v19;
    v4 = v20;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  objc_autoreleasePoolPop(v6);
  v17 = v15;
  *v4 = v15;

  return v16;
}

- (void)viewControllerFromPluginIndex:(int)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(NSArray *)self->_plugins count];
  if (v7 > a3)
  {
    v8 = [(NSArray *)self->_plugins objectAtIndex:a3];
    v9 = [v8 helperForURL:self->_url withOptions:self->_options];
    options = self->_options;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_C05E0;
    v13[3] = &unk_2CC950;
    v15 = a3;
    v16 = v7;
    v13[4] = self;
    v14 = v6;
    [v9 helperViewControllerWithOptions:options completion:v13];

LABEL_5:
    goto LABEL_6;
  }

  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_C0740;
    v11[3] = &unk_2C8398;
    v12 = v6;
    dispatch_async(&_dispatch_main_q, v11);
    v8 = v12;
    goto LABEL_5;
  }

LABEL_6:
}

- (id)helperMinifiedController
{
  v3 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_plugins;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v12 + 1) + 8 * v8) helperForURL:self->_url withOptions:{self->_options, v12}];
      v10 = [v9 helperMinifiedController];

      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v10;
}

@end