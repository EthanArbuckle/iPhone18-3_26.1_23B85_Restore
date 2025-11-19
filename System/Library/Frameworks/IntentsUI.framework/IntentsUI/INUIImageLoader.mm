@interface INUIImageLoader
+ (id)registeredImageLoaderWithScreenDelegate;
- (BOOL)loadImage:(id)a3 withCompletionHandler:(id)a4;
- (BOOL)loadImage:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
- (INUIImageLoaderDelegate)delegate;
- (NSString)serviceIdentifier;
- (void)dealloc;
- (void)deregisterWithIntents;
- (void)loadDataImageFromImage:(id)a3 usingPortableImageLoader:(id)a4 scaledSize:(id)a5 completion:(id)a6;
- (void)registerWithIntents;
- (void)setDelegate:(id)a3;
@end

@implementation INUIImageLoader

- (INUIImageLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadDataImageFromImage:(id)a3 usingPortableImageLoader:(id)a4 scaledSize:(id)a5 completion:(id)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v71 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v13)
  {
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CD3F00]);
    }

    v14 = [v12 helper];
    v15 = MEMORY[0x277CD38C8];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [(INUIImageLoader *)self delegate];
      v17 = [v16 traitCollectionForImageLoader:self];
      [v14 setTraitCollection:v17];
    }

    else
    {

      v18 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v41 = v18;
        v42 = [v12 helper];
        *buf = 136315394;
        v61 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]";
        v62 = 2112;
        v63 = objc_opt_class();
        v43 = v63;
        _os_log_error_impl(&dword_22CA36000, v41, OS_LOG_TYPE_ERROR, "%s The helper on INPortableImageLoader was of an expected class (expected INUIPortableImageLoaderHelper, got %@)", buf, 0x16u);
      }

      v14 = 0;
    }

    v19 = [MEMORY[0x277CD3D28] sharedInstance];
    v20 = [v19 imageLoaders];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v54 objects:v70 count:16];
    if (v22)
    {
      v48 = v14;
      v49 = v13;
      v50 = v12;
      v23 = *v55;
      v24 = &off_27872C000;
      v25 = &off_27872C000;
      while (2)
      {
        v26 = 0;
        v27 = v24[194];
        v28 = v25;
        v29 = v25[350];
        do
        {
          if (*v55 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v54 + 1) + 8 * v26);
          if (((objc_opt_respondsToSelector() & 1) == 0 || [(INUIImageLoader *)v30 canLoadImageDataForImage:v11]) && (objc_opt_respondsToSelector() & 1) != 0 && v30 != self)
          {
            v22 = v30;
            goto LABEL_23;
          }

          v26 = (v26 + 1);
        }

        while (v22 != v26);
        v22 = [v21 countByEnumeratingWithState:&v54 objects:v70 count:16];
        v24 = &off_27872C000;
        v25 = v28;
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_23:
      v13 = v49;
      v12 = v50;
      v15 = MEMORY[0x277CD38C8];
      v14 = v48;
    }

    v31 = [(INUIImageLoader *)self delegate];

    if (!v31)
    {
      v32 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v61 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]";
        _os_log_error_impl(&dword_22CA36000, v32, OS_LOG_TYPE_ERROR, "%s The delegate on INPortableImageLoader is nil", buf, 0xCu);
      }
    }

    v33 = [v14 traitCollection];

    if (!v33 && (v34 = *v15, os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR)))
    {
      *buf = 136315138;
      v61 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]";
      _os_log_error_impl(&dword_22CA36000, v34, OS_LOG_TYPE_ERROR, "%s The traitCollection on INUIPortableImageLoaderHelper is nil", buf, 0xCu);
      if (v22)
      {
        goto LABEL_30;
      }
    }

    else if (v22)
    {
LABEL_30:
      v35 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
      {
        v36 = MEMORY[0x277CCABB0];
        v37 = v35;
        v38 = [v36 numberWithDouble:var0];
        v39 = [MEMORY[0x277CCABB0] numberWithDouble:var1];
        *buf = 136316162;
        v61 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]";
        v62 = 2112;
        v63 = v22;
        v64 = 2112;
        v65 = self;
        v66 = 2112;
        v67 = v38;
        v68 = 2112;
        v69 = v39;
        _os_log_impl(&dword_22CA36000, v37, OS_LOG_TYPE_INFO, "%s Found preferred image loader %@ for image %@, attempting load at size {%@, %@}", buf, 0x34u);
      }

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __89__INUIImageLoader_loadDataImageFromImage_usingPortableImageLoader_scaledSize_completion___block_invoke;
      v51[3] = &unk_27872BAB8;
      v53 = v13;
      v52 = v11;
      [(INUIImageLoader *)v22 loadDataImageFromImage:v52 usingPortableImageLoader:v12 scaledSize:v51 completion:var0, var1];

      v40 = v53;
      goto LABEL_35;
    }

    v44 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CD3848];
    v58 = *MEMORY[0x277CCA450];
    v59 = @"No preferred image loader available for image: %@";
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v46 = [v44 errorWithDomain:v45 code:6001 userInfo:v40];
    (*(v13 + 2))(v13, 0, v46);

LABEL_35:
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __89__INUIImageLoader_loadDataImageFromImage_usingPortableImageLoader_scaledSize_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      [v5 _imageSize];
      v9 = v8;
      v11 = v10;
      v12 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = v12;
        v15 = [v13 numberWithDouble:v9];
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v17 = *(a1 + 32);
        v21 = 136316162;
        v22 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]_block_invoke";
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_22CA36000, v14, OS_LOG_TYPE_INFO, "%s Loaded data image %@ of size {%@, %@} from input image %@", &v21, 0x34u);
      }
    }

    else
    {
      v18 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        v21 = 136315394;
        v22 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]_block_invoke";
        v23 = 2112;
        v24 = v20;
        _os_log_error_impl(&dword_22CA36000, v18, OS_LOG_TYPE_ERROR, "%s No image was loaded for input image %@", &v21, 0x16u);
      }
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();

  v19 = *MEMORY[0x277D85DE8];
}

- (NSString)serviceIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__INUIImageLoader_serviceIdentifier__block_invoke;
  block[3] = &unk_27872BEE0;
  block[4] = self;
  if (serviceIdentifier_onceToken != -1)
  {
    dispatch_once(&serviceIdentifier_onceToken, block);
  }

  return serviceIdentifier_sServiceIdentifier;
}

void __36__INUIImageLoader_serviceIdentifier__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:v2];
  v4 = [v8 bundleIdentifier];
  v5 = NSStringFromClass(v2);
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];
  v7 = serviceIdentifier_sServiceIdentifier;
  serviceIdentifier_sServiceIdentifier = v6;
}

- (BOOL)loadImage:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 intentsImage];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 _imageData];
      v12 = [v10 _uri];
      v13 = v12;
      if (v11)
      {
        v14 = [MEMORY[0x277D4C3B0] imageWithData:v11];
        v7[2](v7, v14, 0);
      }

      else
      {
        if (!v12 || ![v12 isFileURL])
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __59__INUIImageLoader_loadImage_withContext_completionHandler___block_invoke_2;
          v23[3] = &unk_27872BA90;
          v24 = v7;
          [v10 _retrieveImageDataWithReply:v23];

          goto LABEL_15;
        }

        v14 = [objc_alloc(MEMORY[0x277D4C760]) initWithFacade:v8];
        [v14 setType:52];
        v16 = objc_alloc_init(MEMORY[0x277D4C7F0]);
        v17 = objc_alloc_init(MEMORY[0x277D4C7E8]);
        v18 = [v13 absoluteString];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &stru_283FD21E8;
        }

        [v17 setAddress:v20];

        [v16 setUrlValue:v17];
        [v14 setUrlImage:v16];
        v21 = [objc_alloc(MEMORY[0x277D4C3B0]) initWithProtobuf:v14];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __59__INUIImageLoader_loadImage_withContext_completionHandler___block_invoke;
        v25[3] = &unk_27872BA68;
        v26 = v7;
        [v21 loadImageDataWithCompletionAndErrorHandler:v25];
      }

LABEL_15:
      v15 = 1;
      goto LABEL_16;
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
    v10 = 0;
    v8 = 0;
  }

LABEL_16:

  return v15;
}

void __59__INUIImageLoader_loadImage_withContext_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = MEMORY[0x277D4C3B0];
    v6 = a3;
    v7 = [v5 imageWithData:a2];
    (*(v3 + 16))(v3, v7, v6);
  }
}

void __59__INUIImageLoader_loadImage_withContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = MEMORY[0x277D4C3B0];
    v6 = a3;
    v8 = [a2 _imageData];
    v7 = [v5 imageWithData:v8];
    (*(v3 + 16))(v3, v7, v6);
  }
}

- (BOOL)loadImage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  LOBYTE(self) = [(INUIImageLoader *)self loadImage:v7 withContext:v8 completionHandler:v6];

  return self;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)dealloc
{
  [(INUIImageLoader *)self deregisterWithIntents];
  [(INUIImageLoader *)self deregisterWithSearchFoundation];
  v3.receiver = self;
  v3.super_class = INUIImageLoader;
  [(INUIImageLoader *)&v3 dealloc];
}

- (void)deregisterWithIntents
{
  v3 = [MEMORY[0x277CD3D28] sharedInstance];
  [v3 unregisterImageService:self];
}

- (void)registerWithIntents
{
  v3 = [MEMORY[0x277CD3D28] sharedInstance];
  [v3 registerImageService:self];
}

+ (id)registeredImageLoaderWithScreenDelegate
{
  v2 = objc_alloc_init(a1);
  [v2 registerWithIntents];
  [v2 registerWithSearchFoundation];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v2 setDelegate:v3];

  return v2;
}

@end