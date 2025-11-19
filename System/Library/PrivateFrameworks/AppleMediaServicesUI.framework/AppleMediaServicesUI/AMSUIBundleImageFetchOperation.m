@interface AMSUIBundleImageFetchOperation
- (AMSUIBundleImageFetchOperation)initWithImageName:(id)a3 searchBundles:(id)a4 compatibleWithTraitCollection:(id)a5;
- (void)main;
@end

@implementation AMSUIBundleImageFetchOperation

- (AMSUIBundleImageFetchOperation)initWithImageName:(id)a3 searchBundles:(id)a4 compatibleWithTraitCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = AMSUIBundleImageFetchOperation;
  v11 = [(AMSUIBundleImageFetchOperation *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithString:v8];
    imageName = v11->_imageName;
    v11->_imageName = v12;

    objc_storeStrong(&v11->_bundlesToSearch, a4);
    objc_storeStrong(&v11->_traitCollection, a5);
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
  v3 = [(AMSUIBundleImageFetchOperation *)self bundlesToSearch];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v3);
      }

      if (v6)
      {
        break;
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      v10 = MEMORY[0x1E69DCAB8];
      v11 = [(AMSUIBundleImageFetchOperation *)self imageName];
      v12 = [(AMSUIBundleImageFetchOperation *)self traitCollection];
      v6 = [v10 imageNamed:v11 inBundle:v9 compatibleWithTraitCollection:v12];

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        if (!v6)
        {
          goto LABEL_14;
        }

LABEL_12:
        v13 = self;
        v14 = v6;
        v15 = 0;
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

LABEL_14:
  v6 = AMSError();
  v13 = self;
  v14 = 0;
  v15 = v6;
LABEL_15:
  [(AMSUIAssetFetchOperation *)v13 _finishWithImage:v14 error:v15];

  v16 = *MEMORY[0x1E69E9840];
}

@end