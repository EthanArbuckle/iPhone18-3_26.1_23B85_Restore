@interface INPortableImageLoader
- (INPortableImageLoader)initWithCoder:(id)a3;
- (INPortableImageLoaderHelping)helper;
- (NSString)serviceIdentifier;
- (id)_helperClassName;
- (void)filePathForImage:(id)a3 completion:(id)a4;
- (void)filePathForImage:(id)a3 usingPortableImageLoader:(id)a4 completion:(id)a5;
- (void)loadDataImageFromImage:(id)a3 usingPortableImageLoader:(id)a4 scaledSize:(id)a5 completion:(id)a6;
- (void)loadImageDataFromImage:(id)a3 accessSpecifier:(id)a4 completion:(id)a5;
@end

@implementation INPortableImageLoader

- (NSString)serviceIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__INPortableImageLoader_serviceIdentifier__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  if (serviceIdentifier_onceToken_83629 != -1)
  {
    dispatch_once(&serviceIdentifier_onceToken_83629, block);
  }

  return serviceIdentifier_sServiceIdentifier_83630;
}

void __42__INPortableImageLoader_serviceIdentifier__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:v2];
  v4 = [v8 bundleIdentifier];
  v5 = NSStringFromClass(v2);
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];
  v7 = serviceIdentifier_sServiceIdentifier_83630;
  serviceIdentifier_sServiceIdentifier_83630 = v6;
}

- (INPortableImageLoader)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INPortableImageLoader;
  return [(INPortableImageLoader *)&v4 init];
}

- (void)filePathForImage:(id)a3 usingPortableImageLoader:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    [v8 filePathForImage:v7 usingPortableImageLoader:0 completion:v9];
  }

  else
  {
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[INPortableImageLoader filePathForImage:usingPortableImageLoader:completion:]";
      v19 = 2112;
      v20 = @"The INPortableImageLoader provided to filePathForImage:usingPortableImageLoader:completion: is nil";
      _os_log_error_impl(&dword_18E991000, v10, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16 = @"The INPortableImageLoader provided to filePathForImage:usingPortableImageLoader:completion: is nil";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = [v11 errorWithDomain:@"IntentsErrorDomain" code:6000 userInfo:v12];
    v9[2](v9, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)loadDataImageFromImage:(id)a3 usingPortableImageLoader:(id)a4 scaledSize:(id)a5 completion:(id)a6
{
  if (a4)
  {
    [a4 loadDataImageFromImage:a3 usingPortableImageLoader:0 scaledSize:a6 completion:{a5.var0, a5.var1}];
  }

  else
  {
    [(INPortableImageLoader *)self loadImageDataFromImage:a3 accessSpecifier:0 completion:a6, a5.var0, a5.var1];
  }
}

- (void)filePathForImage:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = INSiriLogContextIntents;
    if (v5)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "[INPortableImageLoader filePathForImage:completion:]";
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s Attempting to grab file path for image: %@", buf, 0x16u);
      }

      [(__CFString *)v5 _retrieveFilePathWithCompletion:v6];
    }

    else
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[INPortableImageLoader filePathForImage:completion:]";
        v16 = 2112;
        v17 = @"The INImage provided to INPortableImageLoader:filePathForImage is nil";
        _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }

      v8 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A278];
      v13 = @"The INImage provided to INPortableImageLoader:filePathForImage is nil";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [v8 errorWithDomain:@"IntentsErrorDomain" code:6000 userInfo:v9];
      v6[2](v6, 0, v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)loadImageDataFromImage:(id)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = INSiriLogContextIntents;
    if (v8)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "[INPortableImageLoader loadImageDataFromImage:accessSpecifier:completion:]";
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Attempting intrinsic loading strategy for image: %@", buf, 0x16u);
      }

      v12 = [(INPortableImageLoader *)self helper];
      v13 = v9;
      if (!v9)
      {
        v13 = +[INHelperServiceAccessSpecifier accessSpecifierAppropriateForCurrentProcess];
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __75__INPortableImageLoader_loadImageDataFromImage_accessSpecifier_completion___block_invoke;
      v18[3] = &unk_1E7283580;
      v19 = v10;
      [(__CFString *)v8 _loadImageDataAndSizeWithHelper:v12 accessSpecifier:v13 completion:v18];
      if (!v9)
      {
      }

      v14 = v19;
    }

    else
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[INPortableImageLoader loadImageDataFromImage:accessSpecifier:completion:]";
        v24 = 2112;
        v25 = @"The INImage provided to INPortableImageLoader:loadImageDataFromImage is nil";
        _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }

      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A278];
      v21 = @"The INImage provided to INPortableImageLoader:loadImageDataFromImage is nil";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v16 = [v15 errorWithDomain:@"IntentsErrorDomain" code:6000 userInfo:v14];
      (*(v10 + 2))(v10, 0, v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __75__INPortableImageLoader_loadImageDataFromImage_accessSpecifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (!a2 || a4)
  {
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 32) + 16);

    v11();
  }

  else
  {
    v12 = [INImage imageWithImageData:a2];
    [v12 _setImageSize:{a5, a6}];
    [v12 _setRenderingMode:a3];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_helperClassName
{
  v3 = [(INPortableImageLoader *)self helper];

  if (v3)
  {
    v4 = [(INPortableImageLoader *)self helper];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INPortableImageLoaderHelping)helper
{
  helper = self->_helper;
  if (!helper)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getINUIPortableImageLoaderHelperClass_softClass;
    v13 = getINUIPortableImageLoaderHelperClass_softClass;
    if (!getINUIPortableImageLoaderHelperClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getINUIPortableImageLoaderHelperClass_block_invoke;
      v9[3] = &unk_1E72888B8;
      v9[4] = &v10;
      __getINUIPortableImageLoaderHelperClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_helper;
    self->_helper = v6;

    helper = self->_helper;
  }

  return helper;
}

@end