@interface AMSUIBundleImageFetchOperation
- (AMSUIBundleImageFetchOperation)initWithImageName:(id)name searchBundles:(id)bundles compatibleWithTraitCollection:(id)collection;
- (void)main;
@end

@implementation AMSUIBundleImageFetchOperation

- (AMSUIBundleImageFetchOperation)initWithImageName:(id)name searchBundles:(id)bundles compatibleWithTraitCollection:(id)collection
{
  nameCopy = name;
  bundlesCopy = bundles;
  collectionCopy = collection;
  v15.receiver = self;
  v15.super_class = AMSUIBundleImageFetchOperation;
  v11 = [(AMSUIBundleImageFetchOperation *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithString:nameCopy];
    imageName = v11->_imageName;
    v11->_imageName = v12;

    objc_storeStrong(&v11->_bundlesToSearch, bundles);
    objc_storeStrong(&v11->_traitCollection, collection);
  }

  return v11;
}

- (void)main
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  bundlesToSearch = [(AMSUIBundleImageFetchOperation *)self bundlesToSearch];
  v4 = [bundlesToSearch countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(bundlesToSearch);
      }

      if (v6)
      {
        break;
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      v10 = MEMORY[0x1E69DCAB8];
      imageName = [(AMSUIBundleImageFetchOperation *)self imageName];
      traitCollection = [(AMSUIBundleImageFetchOperation *)self traitCollection];
      v6 = [v10 imageNamed:imageName inBundle:v9 compatibleWithTraitCollection:traitCollection];

      if (v5 == ++v8)
      {
        v5 = [bundlesToSearch countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        if (!v6)
        {
          goto LABEL_14;
        }

LABEL_12:
        selfCopy2 = self;
        v14 = v6;
        v15 = 0;
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

LABEL_14:
  v6 = AMSError();
  selfCopy2 = self;
  v14 = 0;
  v15 = v6;
LABEL_15:
  [(AMSUIAssetFetchOperation *)selfCopy2 _finishWithImage:v14 error:v15];

  v16 = *MEMORY[0x1E69E9840];
}

@end