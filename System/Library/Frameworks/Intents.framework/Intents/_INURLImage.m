@interface _INURLImage
- (BOOL)_isEligibleForProxying;
- (BOOL)_isSupportedForDonation;
- (_INURLImage)initWithCoder:(id)a3;
- (_INURLImage)initWithImageURL:(id)a3;
- (id)_copyWithSubclass:(Class)a3;
- (id)_dictionaryRepresentation;
- (id)_identifier;
- (void)_loadImageDataAndSizeWithHelper:(id)a3 accessSpecifier:(id)a4 completion:(id)a5;
- (void)_setSandboxExtensionData:(id)a3;
- (void)_setUri:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _INURLImage

- (_INURLImage)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _INURLImage;
  v5 = [(INImage *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sandboxExtensionData"];
    sandboxExtensionData = v5->_sandboxExtensionData;
    v5->_sandboxExtensionData = v8;

    if (v5->_imageURL)
    {
      if (v5->_sandboxExtensionData)
      {
        MEMORY[0x193AD70B0]();
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _INURLImage;
  v4 = a3;
  [(INImage *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imageURL forKey:{@"imageURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sandboxExtensionData forKey:@"_sandboxExtensionData"];
}

- (void)_setSandboxExtensionData:(id)a3
{
  v4 = [a3 copy];
  sandboxExtensionData = self->_sandboxExtensionData;
  self->_sandboxExtensionData = v4;

  MEMORY[0x1EEE66BB8](v4, sandboxExtensionData);
}

- (BOOL)_isSupportedForDonation
{
  v2 = [(_INURLImage *)self imageURL];
  if ([v2 isFileURL])
  {
    v3 = 1;
  }

  else
  {
    if (INThisProcessIsSystemProcess_onceToken != -1)
    {
      dispatch_once(&INThisProcessIsSystemProcess_onceToken, &__block_literal_global_48);
    }

    v3 = INThisProcessIsSystemProcess_isSystemProcess;
  }

  return v3 & 1;
}

- (BOOL)_isEligibleForProxying
{
  v2 = [(_INURLImage *)self imageURL];
  v3 = [v2 isFileURL];

  return v3;
}

- (void)_setUri:(id)a3
{
  v5 = a3;
  if (([(NSURL *)self->_imageURL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_imageURL, a3);
  }
}

- (id)_copyWithSubclass:(Class)a3
{
  v10.receiver = self;
  v10.super_class = _INURLImage;
  v4 = [(INImage *)&v10 _copyWithSubclass:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_INURLImage *)self imageURL];
    [v5 _setUri:v6];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)_identifier
{
  v2 = [(_INURLImage *)self imageURL];
  v3 = [v2 absoluteString];

  return v3;
}

- (id)_dictionaryRepresentation
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _INURLImage;
  v3 = [(INImage *)&v10 _dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v11 = @"imageURL";
  imageURL = self->_imageURL;
  v6 = imageURL;
  if (!imageURL)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v4 addEntriesFromDictionary:v7];

  if (!imageURL)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (_INURLImage)initWithImageURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _INURLImage;
  v6 = [(INImage *)&v9 _initWithIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 8, a3);
  }

  return v7;
}

- (void)_loadImageDataAndSizeWithHelper:(id)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
      _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Attempting URL image loading strategy without the sent helper", buf, 0xCu);
    }

    v12 = [(_INURLImage *)self imageURL];
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
        v52 = 2112;
        v53 = v8;
        _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Attempting URL image loading strategy with helper: %@", buf, 0x16u);
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke;
      v44[3] = &unk_1E7287288;
      v45 = v10;
      [v8 loadImageDataFromURL:v12 completion:v44];
      v14 = v45;
      goto LABEL_26;
    }

    if (![v12 isFileURL])
    {
      if (v12)
      {
        v23 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
          _os_log_impl(&dword_18E991000, v23, OS_LOG_TYPE_INFO, "%s Attempting remote URL image loading strategy", buf, 0xCu);
        }

        v14 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
        [v14 setURLCache:0];
        v24 = [MEMORY[0x1E696AD68] requestWithURL:v12];
        [v24 setTimeoutInterval:4.0];
        [v24 setCachePolicy:1];
        v25 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v14];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_126;
        v34[3] = &unk_1E7283648;
        v34[4] = self;
        v37 = v10;
        v35 = v8;
        v36 = v9;
        v26 = [v25 dataTaskWithRequest:v24 completionHandler:v34];
        [v26 resume];
      }

      else
      {
        v27 = MEMORY[0x1E696ABC0];
        v46 = *MEMORY[0x1E696A578];
        v28 = MEMORY[0x1E696AEC0];
        v14 = [0 absoluteString];
        v29 = [v28 stringWithFormat:@"Failed to load image %@ from URL %@", self, v14];
        v47 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v31 = [v27 errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:v30];
        (*(v10 + 2))(v10, 0, 0, v31, 0.0, 0.0);
      }

      goto LABEL_26;
    }

    v15 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
      _os_log_impl(&dword_18E991000, v15, OS_LOG_TYPE_INFO, "%s Attempting file URL image loading strategy", buf, 0xCu);
    }

    v16 = [v12 startAccessingSecurityScopedResource];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_120;
    v41[3] = &unk_1E7283620;
    v43 = v16;
    v17 = v12;
    v42 = v17;
    v18 = MEMORY[0x193AD7780](v41);
    v40 = 0;
    v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v17 options:0 error:&v40];
    v20 = v40;
    if (v19)
    {
      v21 = [INImage imageWithImageData:v19];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_122;
      v38[3] = &unk_1E72835F8;
      v39 = v10;
      [v21 _retrieveImageDataWithReply:v38];
      v22 = v39;
LABEL_25:

      v18[2](v18);
      v14 = v42;
LABEL_26:

      goto LABEL_27;
    }

    v32 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
      v52 = 2114;
      v53 = v17;
      v54 = 2114;
      v55 = v20;
      _os_log_error_impl(&dword_18E991000, v32, OS_LOG_TYPE_ERROR, "%s Failed to load image from file URL %{public}@: %{public}@", buf, 0x20u);
      if (v20)
      {
        goto LABEL_21;
      }
    }

    else if (v20)
    {
LABEL_21:
      v48 = *MEMORY[0x1E696AA08];
      v49 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
LABEL_24:
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:v21];
      (*(v10 + 2))(v10, 0, 0, v22, 0.0, 0.0);
      goto LABEL_25;
    }

    v21 = 0;
    goto LABEL_24;
  }

LABEL_27:

  v33 = *MEMORY[0x1E69E9840];
}

@end