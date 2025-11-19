@interface ASKLoadBundleResourceOperation
+ (id)_searchBundles;
- (ASKLoadBundleResourceOperation)initWithResourceName:(id)a3;
- (ASKLoadBundleResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5;
- (void)main;
@end

@implementation ASKLoadBundleResourceOperation

- (ASKLoadBundleResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5
{
  v6 = [a3 URL];
  v7 = [v6 host];
  v8 = [(ASKLoadBundleResourceOperation *)self initWithResourceName:v7];

  return v8;
}

- (ASKLoadBundleResourceOperation)initWithResourceName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASKLoadBundleResourceOperation;
  v5 = [(ASKLoadBundleResourceOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    resourceName = v5->_resourceName;
    v5->_resourceName = v6;
  }

  return v5;
}

+ (id)_searchBundles
{
  if (_searchBundles_onceToken != -1)
  {
    +[ASKLoadBundleResourceOperation _searchBundles];
  }

  v3 = _searchBundles__searchBundles;

  return v3;
}

void __48__ASKLoadBundleResourceOperation__searchBundles__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4[0] = v0;
  v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppStoreKit"];
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v3 = _searchBundles__searchBundles;
  _searchBundles__searchBundles = v2;
}

- (void)main
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [objc_opt_class() _searchBundles];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      if (([(ASKLoadBundleResourceOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      v9 = MEMORY[0x1E69DCAB8];
      v10 = [(ASKLoadBundleResourceOperation *)self resourceName];
      v11 = [v9 imageNamed:v10 inBundle:v8 compatibleWithTraitCollection:0];

      if (v11)
      {
        v17 = self;
        v18 = v11;
        v19 = 0;
        goto LABEL_13;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    if (([(ASKLoadBundleResourceOperation *)self isCancelled]& 1) != 0)
    {
      return;
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = [(ASKLoadBundleResourceOperation *)self resourceName];
    v14 = [objc_opt_class() _searchBundles];
    v3 = [v12 stringWithFormat:@"No image found for %@ in %@", v13, v14, v20];

    v15 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25 = v3;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = [v15 errorWithDomain:@"ASKLoadBundleResourceOperationErrorDomain" code:560557415 userInfo:v16];

    v17 = self;
    v18 = 0;
    v19 = v11;
LABEL_13:
    [(ASKLoadResourceOperation *)v17 didCompleteWithResource:v18 error:v19];
  }
}

@end