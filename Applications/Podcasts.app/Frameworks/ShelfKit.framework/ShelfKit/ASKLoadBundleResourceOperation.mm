@interface ASKLoadBundleResourceOperation
- (ASKLoadBundleResourceOperation)initWithResourceName:(id)name searchBundles:(id)bundles;
- (void)main;
@end

@implementation ASKLoadBundleResourceOperation

- (ASKLoadBundleResourceOperation)initWithResourceName:(id)name searchBundles:(id)bundles
{
  nameCopy = name;
  bundlesCopy = bundles;
  v14.receiver = self;
  v14.super_class = ASKLoadBundleResourceOperation;
  v8 = [(ASKLoadBundleResourceOperation *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    resourceName = v8->_resourceName;
    v8->_resourceName = v9;

    v11 = [bundlesCopy copy];
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
  searchBundles = [(ASKLoadBundleResourceOperation *)self searchBundles];
  v4 = [searchBundles countByEnumeratingWithState:&v17 objects:v23 count:16];
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
        objc_enumerationMutation(searchBundles);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      if (([(ASKLoadBundleResourceOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      resourceName = [(ASKLoadBundleResourceOperation *)self resourceName];
      v10 = [UIImage imageNamed:resourceName inBundle:v8 compatibleWithTraitCollection:0];

      if (v10)
      {
        selfCopy2 = self;
        v15 = v10;
        v16 = 0;
        goto LABEL_13;
      }

      if (v5 == ++v7)
      {
        v5 = [searchBundles countByEnumeratingWithState:&v17 objects:v23 count:16];
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

    resourceName2 = [(ASKLoadBundleResourceOperation *)self resourceName];
    searchBundles2 = [(ASKLoadBundleResourceOperation *)self searchBundles];
    searchBundles = [NSString stringWithFormat:@"No image found for %@ in %@", resourceName2, searchBundles2];

    v21 = NSLocalizedDescriptionKey;
    v22 = searchBundles;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [NSError errorWithDomain:@"ASKLoadBundleResourceOperationErrorDomain" code:560557415 userInfo:v13];

    selfCopy2 = self;
    v15 = 0;
    v16 = v10;
LABEL_13:
    [(ASKLoadResourceOperation *)selfCopy2 didCompleteWithResource:v15 error:v16];
  }
}

@end