@interface PKImageWandCAPackage
+ (BOOL)_loadCAPackageViewWithName:(void *)name completion:;
+ (BOOL)loadPackageViewsWithHandler:(uint64_t)handler;
@end

@implementation PKImageWandCAPackage

+ (BOOL)loadPackageViewsWithHandler:(uint64_t)handler
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
    v8 = {;
    objc_exception_throw(v8);
  }

  v4 = v3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PKImageWandCAPackage_loadPackageViewsWithHandler___block_invoke;
  v11[3] = &unk_1E82DCDC8;
  v5 = v2;
  v12 = v5;
  if ([(PKImageWandCAPackage *)v4 _loadCAPackageViewWithName:v11 completion:?])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PKImageWandCAPackage_loadPackageViewsWithHandler___block_invoke_2;
    v9[3] = &unk_1E82DCDC8;
    v10 = v5;
    v6 = [(PKImageWandCAPackage *)v4 _loadCAPackageViewWithName:v9 completion:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_loadCAPackageViewWithName:(void *)name completion:
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = a2;
  objc_opt_self();
  v6 = PencilKitBundle();
  v7 = [v6 URLForResource:v5 withExtension:@"ca"];

  v8 = os_log_create("com.apple.pencilkit", "PKImageWandCAPackageView");
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      absoluteString = [v7 absoluteString];
      v11 = PencilKitBundle();
      *buf = 138412546;
      v20 = absoluteString;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "load ca asset: %@, bundle: %@", buf, 0x16u);
    }

    v12 = MEMORY[0x1E69DD3B0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__PKImageWandCAPackage__loadCAPackageViewWithName_completion___block_invoke;
    v16[3] = &unk_1E82DCDF0;
    v17 = v7;
    v18 = nameCopy;
    [v12 loadPackageViewWithContentsOfURL:v17 publishedObjectViewClassMap:0 completion:v16];

    v9 = v17;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      absoluteString2 = [0 absoluteString];
      v15 = PencilKitBundle();
      *buf = 138412546;
      v20 = absoluteString2;
      v21 = 2112;
      v22 = v15;
      _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "ca asset not found: %@, bundle: %@", buf, 0x16u);
    }
  }

  return v7 != 0;
}

void __62__PKImageWandCAPackage__loadCAPackageViewWithName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.pencilkit", "PKImageWandCAPackageView");
  v8 = v7;
  if (!a2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) absoluteString];
    v10 = PencilKitBundle();
    v11 = [v5 localizedDescription];
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "unable to load ca asset: %@, bundle: %@, error: %@", &v12, 0x20u);

    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) absoluteString];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "ca asset loaded: %@", &v12, 0xCu);
LABEL_4:
  }

LABEL_6:

  (*(*(a1 + 40) + 16))();
}

@end