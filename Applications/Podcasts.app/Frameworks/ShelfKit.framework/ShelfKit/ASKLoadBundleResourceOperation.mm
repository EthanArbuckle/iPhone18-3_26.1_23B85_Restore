@interface ASKLoadBundleResourceOperation
- (ASKLoadBundleResourceOperation)initWithResourceName:(id)a3 searchBundles:(id)a4;
- (void)main;
@end

@implementation ASKLoadBundleResourceOperation

- (ASKLoadBundleResourceOperation)initWithResourceName:(id)a3 searchBundles:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASKLoadBundleResourceOperation;
  v8 = [(ASKLoadBundleResourceOperation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    resourceName = v8->_resourceName;
    v8->_resourceName = v9;

    v11 = [v7 copy];
    searchBundles = v8->_searchBundles;
    v8->_searchBundles = v11;
  }

  return v8;
}

- (void)main
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(ASKLoadBundleResourceOperation *)self searchBundles];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      if (([(ASKLoadBundleResourceOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      v9 = [(ASKLoadBundleResourceOperation *)self resourceName];
      v10 = [UIImage imageNamed:v9 inBundle:v8 compatibleWithTraitCollection:0];

      if (v10)
      {
        v14 = self;
        v15 = v10;
        v16 = 0;
        goto LABEL_13;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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

    v11 = [(ASKLoadBundleResourceOperation *)self resourceName];
    v12 = [(ASKLoadBundleResourceOperation *)self searchBundles];
    v3 = [NSString stringWithFormat:@"No image found for %@ in %@", v11, v12];

    v21 = NSLocalizedDescriptionKey;
    v22 = v3;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [NSError errorWithDomain:@"ASKLoadBundleResourceOperationErrorDomain" code:560557415 userInfo:v13];

    v14 = self;
    v15 = 0;
    v16 = v10;
LABEL_13:
    [(ASKLoadResourceOperation *)v14 didCompleteWithResource:v15 error:v16];
  }
}

@end