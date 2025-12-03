@interface AEAggregationhelper
- (AEAggregationhelper)initWithPlugins:(id)plugins forUrl:(id)url withOptions:(id)options;
- (BOOL)acknowledgeAnnotationProvider:(id)provider willMergeAnnotationsWithAssertVersionMismatch:(id)mismatch assetID:(id)d assetURL:(id)l;
- (BOOL)helperValidateBookAuthorizationWithError:(id *)error needsCoordination:(BOOL)coordination;
- (id)annotationProviderWithCoordination:(BOOL)coordination forAssetID:(id)d;
- (id)helperCoverImage;
- (id)helperMetadataForKey:(id)key needsCoordination:(BOOL)coordination;
- (id)helperMinifiedController;
- (void)dealloc;
- (void)helperDeletePersistentCache;
- (void)helperUpdateCachedURLTo:(id)to;
- (void)setMetadata:(id)metadata forKey:(id)key;
- (void)viewControllerFromPluginIndex:(int)index withCompletion:(id)completion;
@end

@implementation AEAggregationhelper

- (AEAggregationhelper)initWithPlugins:(id)plugins forUrl:(id)url withOptions:(id)options
{
  pluginsCopy = plugins;
  urlCopy = url;
  optionsCopy = options;
  v12 = [(AEAggregationhelper *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_plugins, plugins);
    objc_storeStrong(&v13->_url, url);
    objc_storeStrong(&v13->_options, options);
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
      helperCoverImage = [v9 helperCoverImage];

      if (helperCoverImage)
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
    helperCoverImage = 0;
  }

  objc_autoreleasePoolPop(v3);

  return helperCoverImage;
}

- (id)helperMetadataForKey:(id)key needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  keyCopy = key;
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
      v14 = [v13 helperMetadataForKey:keyCopy needsCoordination:coordinationCopy];

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

- (void)setMetadata:(id)metadata forKey:(id)key
{
  metadataCopy = metadata;
  keyCopy = key;
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
          [v13 setMetadata:metadataCopy forKey:keyCopy];
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

- (void)helperUpdateCachedURLTo:(id)to
{
  toCopy = to;
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
        [v11 helperUpdateCachedURLTo:toCopy];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v5);
}

- (id)annotationProviderWithCoordination:(BOOL)coordination forAssetID:(id)d
{
  coordinationCopy = coordination;
  dCopy = d;
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
          v14 = [v13 annotationProviderWithCoordination:coordinationCopy forAssetID:dCopy];
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

- (BOOL)acknowledgeAnnotationProvider:(id)provider willMergeAnnotationsWithAssertVersionMismatch:(id)mismatch assetID:(id)d assetURL:(id)l
{
  providerCopy = provider;
  mismatchCopy = mismatch;
  dCopy = d;
  lCopy = l;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v19 acknowledgeAnnotationProvider:providerCopy willMergeAnnotationsWithAssertVersionMismatch:mismatchCopy assetID:dCopy assetURL:lCopy] & 1) == 0)
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

- (BOOL)helperValidateBookAuthorizationWithError:(id *)error needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  if (!error)
  {
    return 0;
  }

  errorCopy = error;
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
    v20 = errorCopy;
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
          v14 = [v13 helperValidateBookAuthorizationWithError:&v22 needsCoordination:coordinationCopy];
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
    errorCopy = v20;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  objc_autoreleasePoolPop(v6);
  v17 = v15;
  *errorCopy = v15;

  return v16;
}

- (void)viewControllerFromPluginIndex:(int)index withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [(NSArray *)self->_plugins count];
  if (v7 > index)
  {
    v8 = [(NSArray *)self->_plugins objectAtIndex:index];
    v9 = [v8 helperForURL:self->_url withOptions:self->_options];
    options = self->_options;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_C05E0;
    v13[3] = &unk_2CC950;
    indexCopy = index;
    v16 = v7;
    v13[4] = self;
    v14 = completionCopy;
    [v9 helperViewControllerWithOptions:options completion:v13];

LABEL_5:
    goto LABEL_6;
  }

  if (completionCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_C0740;
    v11[3] = &unk_2C8398;
    v12 = completionCopy;
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
      helperMinifiedController = [v9 helperMinifiedController];

      if (helperMinifiedController)
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
    helperMinifiedController = 0;
  }

  objc_autoreleasePoolPop(v3);

  return helperMinifiedController;
}

@end