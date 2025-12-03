@interface _INURLImage
- (BOOL)_isEligibleForProxying;
- (BOOL)_isSupportedForDonation;
- (_INURLImage)initWithCoder:(id)coder;
- (_INURLImage)initWithImageURL:(id)l;
- (id)_copyWithSubclass:(Class)subclass;
- (id)_dictionaryRepresentation;
- (id)_identifier;
- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion;
- (void)_setSandboxExtensionData:(id)data;
- (void)_setUri:(id)uri;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _INURLImage

- (_INURLImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _INURLImage;
  v5 = [(INImage *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sandboxExtensionData"];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _INURLImage;
  coderCopy = coder;
  [(INImage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageURL forKey:{@"imageURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sandboxExtensionData forKey:@"_sandboxExtensionData"];
}

- (void)_setSandboxExtensionData:(id)data
{
  v4 = [data copy];
  sandboxExtensionData = self->_sandboxExtensionData;
  self->_sandboxExtensionData = v4;

  MEMORY[0x1EEE66BB8](v4, sandboxExtensionData);
}

- (BOOL)_isSupportedForDonation
{
  imageURL = [(_INURLImage *)self imageURL];
  if ([imageURL isFileURL])
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
  imageURL = [(_INURLImage *)self imageURL];
  isFileURL = [imageURL isFileURL];

  return isFileURL;
}

- (void)_setUri:(id)uri
{
  uriCopy = uri;
  if (([(NSURL *)self->_imageURL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_imageURL, uri);
  }
}

- (id)_copyWithSubclass:(Class)subclass
{
  v10.receiver = self;
  v10.super_class = _INURLImage;
  v4 = [(INImage *)&v10 _copyWithSubclass:subclass];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    imageURL = [(_INURLImage *)self imageURL];
    [v5 _setUri:imageURL];
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
  imageURL = [(_INURLImage *)self imageURL];
  absoluteString = [imageURL absoluteString];

  return absoluteString;
}

- (id)_dictionaryRepresentation
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _INURLImage;
  _dictionaryRepresentation = [(INImage *)&v10 _dictionaryRepresentation];
  v4 = [_dictionaryRepresentation mutableCopy];

  v11 = @"imageURL";
  imageURL = self->_imageURL;
  null = imageURL;
  if (!imageURL)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v4 addEntriesFromDictionary:v7];

  if (!imageURL)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (_INURLImage)initWithImageURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = _INURLImage;
  v6 = [(INImage *)&v9 _initWithIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 8, l);
  }

  return v7;
}

- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  specifierCopy = specifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
      _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Attempting URL image loading strategy without the sent helper", buf, 0xCu);
    }

    imageURL = [(_INURLImage *)self imageURL];
    if (helperCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
        v52 = 2112;
        v53 = helperCopy;
        _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Attempting URL image loading strategy with helper: %@", buf, 0x16u);
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke;
      v44[3] = &unk_1E7287288;
      v45 = completionCopy;
      [helperCopy loadImageDataFromURL:imageURL completion:v44];
      ephemeralSessionConfiguration = v45;
      goto LABEL_26;
    }

    if (![imageURL isFileURL])
    {
      if (imageURL)
      {
        v23 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
          _os_log_impl(&dword_18E991000, v23, OS_LOG_TYPE_INFO, "%s Attempting remote URL image loading strategy", buf, 0xCu);
        }

        ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
        [ephemeralSessionConfiguration setURLCache:0];
        v24 = [MEMORY[0x1E696AD68] requestWithURL:imageURL];
        [v24 setTimeoutInterval:4.0];
        [v24 setCachePolicy:1];
        v25 = [MEMORY[0x1E696AF78] sessionWithConfiguration:ephemeralSessionConfiguration];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_126;
        v34[3] = &unk_1E7283648;
        v34[4] = self;
        v37 = completionCopy;
        v35 = helperCopy;
        v36 = specifierCopy;
        v26 = [v25 dataTaskWithRequest:v24 completionHandler:v34];
        [v26 resume];
      }

      else
      {
        v27 = MEMORY[0x1E696ABC0];
        v46 = *MEMORY[0x1E696A578];
        v28 = MEMORY[0x1E696AEC0];
        ephemeralSessionConfiguration = [0 absoluteString];
        v29 = [v28 stringWithFormat:@"Failed to load image %@ from URL %@", self, ephemeralSessionConfiguration];
        v47 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v31 = [v27 errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:v30];
        (*(completionCopy + 2))(completionCopy, 0, 0, v31, 0.0, 0.0);
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

    startAccessingSecurityScopedResource = [imageURL startAccessingSecurityScopedResource];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_120;
    v41[3] = &unk_1E7283620;
    v43 = startAccessingSecurityScopedResource;
    v17 = imageURL;
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
      v39 = completionCopy;
      [v21 _retrieveImageDataWithReply:v38];
      v22 = v39;
LABEL_25:

      v18[2](v18);
      ephemeralSessionConfiguration = v42;
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
      (*(completionCopy + 2))(completionCopy, 0, 0, v22, 0.0, 0.0);
      goto LABEL_25;
    }

    v21 = 0;
    goto LABEL_24;
  }

LABEL_27:

  v33 = *MEMORY[0x1E69E9840];
}

@end