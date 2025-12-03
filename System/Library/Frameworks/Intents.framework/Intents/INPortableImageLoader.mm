@interface INPortableImageLoader
- (INPortableImageLoader)initWithCoder:(id)coder;
- (INPortableImageLoaderHelping)helper;
- (NSString)serviceIdentifier;
- (id)_helperClassName;
- (void)filePathForImage:(id)image completion:(id)completion;
- (void)filePathForImage:(id)image usingPortableImageLoader:(id)loader completion:(id)completion;
- (void)loadDataImageFromImage:(id)image usingPortableImageLoader:(id)loader scaledSize:(id)size completion:(id)completion;
- (void)loadImageDataFromImage:(id)image accessSpecifier:(id)specifier completion:(id)completion;
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

- (INPortableImageLoader)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INPortableImageLoader;
  return [(INPortableImageLoader *)&v4 init];
}

- (void)filePathForImage:(id)image usingPortableImageLoader:(id)loader completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  loaderCopy = loader;
  completionCopy = completion;
  if (loaderCopy)
  {
    [loaderCopy filePathForImage:imageCopy usingPortableImageLoader:0 completion:completionCopy];
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
    completionCopy[2](completionCopy, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)loadDataImageFromImage:(id)image usingPortableImageLoader:(id)loader scaledSize:(id)size completion:(id)completion
{
  if (loader)
  {
    [loader loadDataImageFromImage:image usingPortableImageLoader:0 scaledSize:completion completion:{size.var0, size.var1}];
  }

  else
  {
    [(INPortableImageLoader *)self loadImageDataFromImage:image accessSpecifier:0 completion:completion, size.var0, size.var1];
  }
}

- (void)filePathForImage:(id)image completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = INSiriLogContextIntents;
    if (imageCopy)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "[INPortableImageLoader filePathForImage:completion:]";
        v16 = 2112;
        v17 = imageCopy;
        _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s Attempting to grab file path for image: %@", buf, 0x16u);
      }

      [(__CFString *)imageCopy _retrieveFilePathWithCompletion:completionCopy];
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
      completionCopy[2](completionCopy, 0, v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)loadImageDataFromImage:(id)image accessSpecifier:(id)specifier completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  specifierCopy = specifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = INSiriLogContextIntents;
    if (imageCopy)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "[INPortableImageLoader loadImageDataFromImage:accessSpecifier:completion:]";
        v24 = 2112;
        v25 = imageCopy;
        _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Attempting intrinsic loading strategy for image: %@", buf, 0x16u);
      }

      helper = [(INPortableImageLoader *)self helper];
      v13 = specifierCopy;
      if (!specifierCopy)
      {
        v13 = +[INHelperServiceAccessSpecifier accessSpecifierAppropriateForCurrentProcess];
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __75__INPortableImageLoader_loadImageDataFromImage_accessSpecifier_completion___block_invoke;
      v18[3] = &unk_1E7283580;
      v19 = completionCopy;
      [(__CFString *)imageCopy _loadImageDataAndSizeWithHelper:helper accessSpecifier:v13 completion:v18];
      if (!specifierCopy)
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
      (*(completionCopy + 2))(completionCopy, 0, v16);
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
  helper = [(INPortableImageLoader *)self helper];

  if (helper)
  {
    helper2 = [(INPortableImageLoader *)self helper];
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