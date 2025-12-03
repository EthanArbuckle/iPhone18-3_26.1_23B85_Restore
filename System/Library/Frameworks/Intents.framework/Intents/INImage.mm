@interface INImage
+ (INImage)imageNamed:(NSString *)name;
+ (INImage)imageWithImageData:(NSData *)imageData;
+ (INImage)imageWithURL:(NSURL *)URL;
+ (INImage)imageWithURL:(NSURL *)URL width:(double)width height:(double)height;
+ (INImage)systemImageNamed:(NSString *)systemImageName;
+ (id)_bundleImageWithURL:(id)l;
+ (id)_classesInCluster;
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
+ (void)buildFromCachePayload:(id)payload identifier:(id)identifier completion:(id)completion;
+ (void)initialize;
+ (void)registerImageLoadersOnce;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_imageSize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_preferredScaledSize;
- (BOOL)_requiresRetrieval;
- (BOOL)isEqual:(id)equal;
- (INImage)initWithCoder:(id)coder;
- (id)_copyWithSubclass:(Class)subclass;
- (id)_descriptionAtIndent:(unint64_t)indent;
- (id)_dictionaryRepresentation;
- (id)_in_downscaledImageForFilePersistence;
- (id)_in_writeableFilePersistenceConfigurationForStoreType:(unint64_t)type;
- (id)_initWithData:(id)data;
- (id)_initWithIdentifier:(id)identifier;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_preferredImageLoader;
- (id)_preferredImageLoaderForFilePath;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion;
- (void)_retrieveFilePathWithCompletion:(id)completion;
- (void)_retrieveImageDataWithReply:(id)reply;
- (void)_retrieveImageFilePathWithReply:(id)reply;
- (void)encodeWithCoder:(id)coder;
- (void)generateCachePayloadWithCompletion:(id)completion;
@end

@implementation INImage

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___INImage;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {
    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

+ (void)registerImageLoadersOnce
{
  if (registerImageLoadersOnce_onceToken != -1)
  {
    dispatch_once(&registerImageLoadersOnce_onceToken, &__block_literal_global_44418);
  }
}

void __35__INImage_registerImageLoadersOnce__block_invoke()
{
  v5 = objc_alloc_init(INPortableImageLoader);
  v0 = +[INImageServiceRegistry sharedInstance];
  [v0 registerImageService:v5];

  v1 = +[INImageServiceRegistry sharedInstance];
  v2 = objc_alloc_init(INImageFilePersistence);
  [v1 registerImageService:v2];

  v3 = +[INImageServiceRegistry sharedInstance];
  v4 = objc_alloc_init(INImageServiceConnection);
  [v3 registerImageService:v4];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_preferredScaledSize
{
  width = self->_preferredScaledSize.width;
  height = self->_preferredScaledSize.height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (unint64_t)hash
{
  _identifier = [(INImage *)self _identifier];
  v3 = [_identifier hash];

  return v3;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v42[2] = *MEMORY[0x1E69E9840];
  encoderCopy = encoder;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(INImage *)self _imageSize];
  if (v7 == 0.0 && ([(INImage *)self _imageSize], v8 == 0.0))
  {
    v9 = +[INCache sharedCache];
    _identifier = [(INImage *)self _identifier];
    v11 = [v9 cacheableObjectForIdentifier:_identifier];

    v12 = v11;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41[0] = @"width";
        v13 = MEMORY[0x1E696AD98];
        [v12 _imageSize];
        v14 = [v13 numberWithDouble:?];
        v41[1] = @"height";
        v42[0] = v14;
        v15 = MEMORY[0x1E696AD98];
        [v12 _imageSize];
        v17 = [v15 numberWithDouble:v16];
        v42[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
        [dictionary setObject:v18 forKey:@"imageSize"];
      }
    }
  }

  else
  {
    v39[0] = @"width";
    v19 = MEMORY[0x1E696AD98];
    [(INImage *)self _imageSize];
    v12 = [v19 numberWithDouble:?];
    v39[1] = @"height";
    v40[0] = v12;
    v20 = MEMORY[0x1E696AD98];
    [(INImage *)self _imageSize];
    v22 = [v20 numberWithDouble:v21];
    v40[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    [dictionary setObject:v23 forKey:@"imageSize"];
  }

  if ([(INImage *)self _renderingMode])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INImage _renderingMode](self, "_renderingMode")}];
    [dictionary setObject:v24 forKey:@"renderingMode"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _imageData = [(INImage *)self _imageData];
    absoluteString = [encoderCopy encodeObject:_imageData];
    [dictionary if_setObjectIfNonNil:absoluteString forKey:@"imageData"];
    v27 = @"Data";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _imageData = [(INImage *)self _URLRepresentation];
      absoluteString = [_imageData absoluteString];
      v28 = [encoderCopy encodeObject:absoluteString];
      [dictionary if_setObjectIfNonNil:v28 forKey:@"uri"];

      v27 = @"Bundle";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _imageData = [(INImage *)self _URLRepresentation];
        absoluteString = [_imageData absoluteString];
        v29 = [encoderCopy encodeObject:absoluteString];
        [dictionary if_setObjectIfNonNil:v29 forKey:@"uri"];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_25;
        }

        selfCopy = self;
        if (selfCopy)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = selfCopy;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;

        _URLRepresentation = [(INImage *)selfCopy _URLRepresentation];
        absoluteString2 = [_URLRepresentation absoluteString];
        v35 = [encoderCopy encodeObject:absoluteString2];
        [dictionary if_setObjectIfNonNil:v35 forKey:@"uri"];

        _imageData = [(INImage *)v32 _storageServiceIdentifier];

        absoluteString = [encoderCopy encodeObject:_imageData];
        [dictionary if_setObjectIfNonNil:absoluteString forKey:@"storageServiceIdentifier"];
      }

      v27 = @"URL";
    }
  }

  [dictionary if_setObjectIfNonNil:v27 forKey:@"type"];
LABEL_25:
  v36 = [dictionary copy];

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  descriptionCopy = description;
  fromCopy = from;
  if (fromCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [fromCopy objectForKeyedSubscript:@"uri"];
      v11 = [fromCopy objectForKeyedSubscript:@"type"];

      if (!v11)
      {
LABEL_6:
        v13 = [[INImage alloc] _initWithIdentifier:v10];
LABEL_7:
        v14 = [fromCopy objectForKeyedSubscript:@"imageSize"];
        v15 = [v14 objectForKeyedSubscript:@"width"];
        [v15 doubleValue];
        v17 = v16;

        v18 = [fromCopy objectForKeyedSubscript:@"imageSize"];
        v19 = [v18 objectForKeyedSubscript:@"height"];
        [v19 doubleValue];
        v21 = v20;

        [v13 _setImageSize:{v17, v21}];
        v22 = [fromCopy objectForKeyedSubscript:@"renderingMode"];
        integerValue = [v22 integerValue];

        [v13 _setRenderingMode:integerValue];
        goto LABEL_9;
      }

      v12 = [fromCopy objectForKeyedSubscript:@"type"];
      if ([v12 isEqualToString:@"Unknown"])
      {
LABEL_5:

        goto LABEL_6;
      }

      if ([v12 isEqualToString:@"Data"])
      {

        v25 = objc_opt_class();
        v26 = [fromCopy objectForKeyedSubscript:@"imageData"];
        v27 = [decoderCopy decodeObjectOfClass:v25 from:v26];
        v13 = [INImage imageWithImageData:v27];

        goto LABEL_7;
      }

      if ([v12 isEqualToString:@"URL"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"Bundle"))
      {

        v28 = [MEMORY[0x1E695DFF8] URLWithString:v10];
        v13 = [INImage imageWithURL:v28];
      }

      else
      {
        if (([v12 isEqualToString:@"Proxy"] & 1) == 0)
        {
          goto LABEL_5;
        }

        v13 = [(INImage *)[INRemoteImageProxy alloc] _initWithIdentifier:v10];
        [v13 _setProxyIdentifier:v10];
        v28 = [fromCopy objectForKeyedSubscript:@"storageServiceIdentifier"];
        [v13 _setStorageServiceIdentifier:v28];
      }

      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (void)generateCachePayloadWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = INCacheableGetSerializationQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__INImage_INCacheSupport__generateCachePayloadWithCompletion___block_invoke;
    v6[3] = &unk_1E7287140;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(v5, v6);
  }
}

void __62__INImage_INCacheSupport__generateCachePayloadWithCompletion___block_invoke(uint64_t a1)
{
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [*(a1 + 32) _imageData];
  if (v2)
  {
    [v17 setObject:v2 forKey:@"_imageData"];
  }

  v3 = [*(a1 + 32) _uri];
  if (v3)
  {
    [v17 setObject:v3 forKey:@"_uri"];
  }

  v4 = [*(a1 + 32) _name];
  if (v4)
  {
    [v17 setObject:v4 forKey:@"_name"];
  }

  v5 = [*(a1 + 32) _bundlePath];
  if (v5)
  {
    [v17 setObject:v5 forKey:@"_bundlePath"];
  }

  v6 = [*(a1 + 32) _bundleIdentifier];
  if (v6)
  {
    [v17 setObject:v6 forKey:@"_bundleIdentifier"];
  }

  v7 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) _storageServiceIdentifier];
    if (v8)
    {
      [v17 setObject:v8 forKey:@"_storageServiceIdentifier"];
    }

    v9 = [*(a1 + 32) _proxyIdentifier];
    if (v9)
    {
      [v17 setObject:v9 forKey:@"_proxyIdentifier"];
    }
  }

  v10 = MEMORY[0x1E696AD98];
  [*(a1 + 32) _imageSize];
  v11 = [v10 numberWithDouble:?];
  [v17 setObject:v11 forKey:@"_imageSize.width"];

  v12 = MEMORY[0x1E696AD98];
  [*(a1 + 32) _imageSize];
  v14 = [v12 numberWithDouble:v13];
  [v17 setObject:v14 forKey:@"_imageSize.height"];

  v15 = *(a1 + 40);
  v16 = [v17 copy];
  (*(v15 + 16))(v15, v16);
}

+ (void)buildFromCachePayload:(id)payload identifier:(id)identifier completion:(id)completion
{
  payloadCopy = payload;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = INCacheableGetSerializationQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__INImage_INCacheSupport__buildFromCachePayload_identifier_completion___block_invoke;
    v12[3] = &unk_1E727FD20;
    v13 = identifierCopy;
    v14 = payloadCopy;
    selfCopy = self;
    v15 = completionCopy;
    dispatch_async(v11, v12);
  }
}

void __71__INImage_INCacheSupport__buildFromCachePayload_identifier_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v22 = v2;
  if (!v2 || ![v2 length])
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];

    v22 = v4;
  }

  v5 = [*(a1 + 40) objectForKey:@"_uri"];
  v6 = [*(a1 + 40) objectForKey:@"_imageData"];
  v7 = [*(a1 + 40) objectForKey:@"_name"];
  v8 = [*(a1 + 40) objectForKey:@"_bundlePath"];
  v9 = [*(a1 + 40) objectForKey:@"_bundleIdentifier"];
  v10 = [*(a1 + 40) objectForKey:@"_storageServiceIdentifier"];
  v11 = [*(a1 + 40) objectForKey:@"_proxyIdentifier"];
  v12 = v11;
  if (v6)
  {
    v13 = [INImage imageWithImageData:v6];
LABEL_6:
    v14 = v13;
    goto LABEL_10;
  }

  if (v8 | v9 && v7)
  {
    v14 = [(INImage *)[_INBundleImage alloc] _initWithIdentifier:0];
    v15 = objc_alloc_init(INImageBundle);
    [(INImageBundle *)v15 setBundlePath:v8];
    [(INImageBundle *)v15 setBundleIdentifier:v9];
    [v14 setImageName:v7];
    [v14 setImageBundle:v15];
  }

  else
  {
    if (v5)
    {
      v13 = [INImage imageWithURL:v5];
      goto LABEL_6;
    }

    v14 = 0;
    if (v10 && v11)
    {
      v14 = [(INImage *)[INRemoteImageProxy alloc] _initWithIdentifier:v22];
      [v14 _setStorageServiceIdentifier:v10];
      [v14 _setProxyIdentifier:v12];
    }
  }

LABEL_10:
  v16 = [*(a1 + 40) objectForKey:@"_imageSize.width"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [*(a1 + 40) objectForKey:@"_imageSize.height"];
  [v19 doubleValue];
  v21 = v20;

  [v14 _setImageSize:{v18, v21}];
  [v14 _setIdentifier:v22];
  (*(*(a1 + 48) + 16))();
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    imagesCopy = images;
    v8 = [(INImage *)self copy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__INImage_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
    v9[3] = &unk_1E72804E8;
    v10 = completionCopy;
    imagesCopy[2](imagesCopy, v8, v9);
  }
}

+ (id)_classesInCluster
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)_bundleImageWithURL:(id)l
{
  lCopy = l;
  v4 = [_INBundleImage alloc];
  absoluteString = [lCopy absoluteString];

  v6 = [(INImage *)v4 _initWithIdentifier:absoluteString];

  return v6;
}

+ (INImage)systemImageNamed:(NSString *)systemImageName
{
  v3 = systemImageName;
  v4 = [(INImage *)[_INBundleImage alloc] _initWithIdentifier:0];
  [v4 setImageName:v3];

  v5 = objc_alloc_init(INImageBundle);
  [(INImageBundle *)v5 setBundleType:2];
  [v4 setImageBundle:v5];
  [v4 _setRenderingMode:2];
  v6 = +[INCache sharedCache];
  [v6 addCacheableObject:v4];

  return v4;
}

+ (INImage)imageNamed:(NSString *)name
{
  v3 = name;
  v4 = [(INImage *)[_INBundleImage alloc] _initWithIdentifier:0];
  [v4 setImageName:v3];

  v5 = objc_alloc_init(INImageBundle);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(INImageBundle *)v5 setBundleIdentifier:bundleIdentifier];

  [v4 setImageBundle:v5];
  v8 = +[INCache sharedCache];
  [v8 addCacheableObject:v4];

  return v4;
}

+ (INImage)imageWithImageData:(NSData *)imageData
{
  v3 = imageData;
  v4 = [[_INDataImage alloc] initWithImageData:v3];

  return v4;
}

+ (INImage)imageWithURL:(NSURL *)URL width:(double)width height:(double)height
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = URL;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = v7;
  if ([(NSURL *)v9 isFileURL])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [(NSURL *)v9 path];
    v12 = [defaultManager isReadableFileAtPath:path];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = [[_INURLImage alloc] initWithImageURL:v9];
    [(INImage *)v16 _setImageSize:width, height];
    v17 = +[INCache sharedCache];
    [v17 addCacheableObject:v16];

    goto LABEL_12;
  }

  scheme = [(NSURL *)v9 scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"http"])
  {

    goto LABEL_8;
  }

  v15 = [lowercaseString isEqualToString:@"https"];

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_9:
  v18 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315906;
    v22 = "+[INImage imageWithURL:width:height:]";
    v23 = 2112;
    v24 = v8;
    v25 = 2048;
    v26 = width;
    v27 = 2048;
    v28 = height;
    _os_log_error_impl(&dword_18E991000, v18, OS_LOG_TYPE_ERROR, "%s Invalid URL=%@ {%f,%f}", &v21, 0x2Au);
  }

  v16 = 0;
LABEL_12:

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (INImage)imageWithURL:(NSURL *)URL
{
  v4 = URL;
  v5 = [[INRemoteImageProxy alloc] _initWithURLRepresentation:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [[_INBundleImage alloc] _initWithURLRepresentation:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [self imageWithURL:v4 width:180.0 height:180.0];
    }

    v7 = v10;
  }

  return v7;
}

- (INImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  v6 = [(INImage *)self _initWithIdentifier:v5];

  if (v6)
  {
    [coderCopy decodeDoubleForKey:@"_imageSize.width"];
    v8 = v7;
    [coderCopy decodeDoubleForKey:@"_imageSize.height"];
    [(INImage *)v6 _setImageSize:v8, v9];
    [coderCopy decodeDoubleForKey:@"_preferredScaledSize.width"];
    v11 = v10;
    [coderCopy decodeDoubleForKey:@"_preferredScaledSize.height"];
    v13 = v12;
    v14 = [coderCopy decodeIntegerForKey:@"_renderingMode"];
    [(INImage *)v6 _setPreferredScaledSize:v11, v13];
    [(INImage *)v6 _setRenderingMode:v14];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [(INImage *)self _imageSize];
  [coderCopy encodeDouble:@"_imageSize.width" forKey:?];
  [(INImage *)self _imageSize];
  [coderCopy encodeDouble:@"_imageSize.height" forKey:v5];
  [(INImage *)self _preferredScaledSize];
  [coderCopy encodeDouble:@"_preferredScaledSize.width" forKey:?];
  [(INImage *)self _preferredScaledSize];
  [coderCopy encodeDouble:@"_preferredScaledSize.height" forKey:v6];
  [coderCopy encodeInteger:-[INImage _renderingMode](self forKey:{"_renderingMode"), @"_renderingMode"}];
}

- (id)_copyWithSubclass:(Class)subclass
{
  subclassCopy = subclass;
  if (([(objc_class *)subclass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    subclassCopy = objc_opt_class();
  }

  v5 = [subclassCopy alloc];
  _identifier = [(INImage *)self _identifier];
  v7 = [v5 _initWithIdentifier:_identifier];

  [(INImage *)self _imageSize];
  [v7 _setImageSize:?];
  [(INImage *)self _preferredScaledSize];
  [v7 _setPreferredScaledSize:?];
  [v7 _setRenderingMode:{-[INImage _renderingMode](self, "_renderingMode")}];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(INImage *)self _copyWithSubclass:v4];
}

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"width:%f height:%f", *&self->_imageSize.width, *&self->_imageSize.height];
  v11[0] = @"identifier";
  identifier = self->_identifier;
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"_imageSize";
  null2 = v3;
  if (!v3)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"_renderingMode";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->__renderingMode];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (v3)
  {
    if (identifier)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (identifier)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INImage;
  v6 = [(INImage *)&v11 description];
  _dictionaryRepresentation = [(INImage *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v10 = 1;
    }

    else
    {
      _identifier = [(INImage *)self _identifier];
      _identifier2 = [(INImage *)v5 _identifier];
      if (_identifier == _identifier2)
      {
        v10 = 1;
      }

      else
      {
        _identifier3 = [(INImage *)self _identifier];
        _identifier4 = [(INImage *)v5 _identifier];
        v10 = [_identifier3 isEqual:_identifier4];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)_preferredImageLoaderForFilePath
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[INImageServiceRegistry sharedInstance];
  imageLoaders = [v3 imageLoaders];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = imageLoaders;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0 || [v10 canLoadImageDataForImage:{self, v14}]) && (objc_opt_respondsToSelector())
        {
          v11 = v10;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_preferredImageLoader
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[INImageServiceRegistry sharedInstance];
  imageLoaders = [v3 imageLoaders];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = imageLoaders;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0 || [v10 canLoadImageDataForImage:{self, v14}]) && (objc_opt_respondsToSelector())
        {
          v11 = v10;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_retrieveImageFilePathWithReply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (replyCopy)
  {
    _preferredImageLoaderForFilePath = [(INImage *)self _preferredImageLoaderForFilePath];
    if (_preferredImageLoaderForFilePath)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v14 = "[INImage _retrieveImageFilePathWithReply:]";
        v15 = 2112;
        v16 = _preferredImageLoaderForFilePath;
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Found preferred image loader %@ for image %@, attempting load", buf, 0x20u);
      }

      [_preferredImageLoaderForFilePath filePathForImage:self usingPortableImageLoader:0 completion:replyCopy];
    }

    else
    {
      v7 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A578];
      v12 = @"No preferred image loader available for image: %@";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v9 = [v7 errorWithDomain:@"IntentsErrorDomain" code:6001 userInfo:v8];
      replyCopy[2](replyCopy, 0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_retrieveImageDataWithReply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (replyCopy)
  {
    _preferredImageLoader = [(INImage *)self _preferredImageLoader];
    if (_preferredImageLoader)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v14 = "[INImage _retrieveImageDataWithReply:]";
        v15 = 2112;
        v16 = _preferredImageLoader;
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Found preferred image loader %@ for image %@, attempting load", buf, 0x20u);
      }

      [_preferredImageLoader loadDataImageFromImage:self usingPortableImageLoader:0 scaledSize:replyCopy completion:{0.0, 0.0}];
    }

    else
    {
      v7 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A578];
      v12 = @"No preferred image loader available for image: %@";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v9 = [v7 errorWithDomain:@"IntentsErrorDomain" code:6001 userInfo:v8];
      replyCopy[2](replyCopy, 0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_requiresRetrieval
{
  _imageData = [(INImage *)self _imageData];
  v3 = _imageData == 0;

  return v3;
}

- (id)_initWithData:(id)data
{
  dataCopy = data;
  v5 = [objc_opt_class() imageWithImageData:dataCopy];

  return v5;
}

- (id)_initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = INImage;
  v6 = [(INImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    [objc_opt_class() registerImageLoadersOnce];
  }

  return v7;
}

- (void)_retrieveFilePathWithCompletion:(id)completion
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (completion)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Attempted to grab file path for an INImage, which is not supported";
    v5 = MEMORY[0x1E695DF20];
    completionCopy = completion;
    v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v4 errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:v7];
    (*(completion + 2))(completionCopy, 0, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (completion)
  {
    v6 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"No intrinsic loading supported in the base class.";
    v7 = MEMORY[0x1E695DF20];
    completionCopy = completion;
    v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v6 errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:v9];
    (*(completion + 2))(completionCopy, 0, 0, v10, 0.0, 0.0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_in_writeableFilePersistenceConfigurationForStoreType:(unint64_t)type
{
  v24 = *MEMORY[0x1E69E9840];
  _identifier = [(INImage *)self _identifier];
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v6 = [uRLPathAllowedCharacterSet mutableCopy];

  [v6 removeCharactersInString:@"./:"];
  v7 = [_identifier stringByAddingPercentEncodingWithAllowedCharacters:v6];

  v8 = [v7 stringByAppendingPathExtension:@"png"];

  v9 = v8;
  v10 = _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(type);
  v11 = [v10 stringByAppendingPathComponent:v9];

  v12 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[INImage(INImageFilePersistence) _in_writeableFilePersistenceConfigurationForStoreType:]";
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s Checking writability of file path: %@", &v20, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingLastPathComponent = [v11 stringByDeletingLastPathComponent];
  v15 = [defaultManager isWritableFileAtPath:stringByDeletingLastPathComponent];

  v16 = INSiriLogContextIntents;
  if (v15)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "[INImage(INImageFilePersistence) _in_writeableFilePersistenceConfigurationForStoreType:]";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_18E991000, v16, OS_LOG_TYPE_INFO, "%s Can write to file path: %@", &v20, 0x16u);
    }

    v17 = objc_alloc_init(_INFilePersistenceConfiguration);
    [(_INFilePersistenceConfiguration *)v17 setIdentifier:v9];
    [(_INFilePersistenceConfiguration *)v17 setFilePath:v11];
  }

  else
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[INImage(INImageFilePersistence) _in_writeableFilePersistenceConfigurationForStoreType:]";
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_18E991000, v16, OS_LOG_TYPE_ERROR, "%s Not able to write to file path: %@", &v20, 0x16u);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_in_downscaledImageForFilePersistence
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _INImageSizeProviderClass();
  if (v3)
  {
    [(INImage *)self _preferredScaledSize];
    v9 = 0;
    v4 = [v3 downscaledPNGImageForImage:self size:&v9 error:?];
    v3 = v9;
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "[INImage(INImageFilePersistence) _in_downscaledImageForFilePersistence]";
      v12 = 2112;
      selfCopy = self;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Failed to downscale data image %@ (non-fatal): %@", buf, 0x20u);
    }
  }

  v4 = 0;
LABEL_7:
  if (v4)
  {
    self = v4;
  }

  selfCopy2 = self;

  v7 = *MEMORY[0x1E69E9840];
  return self;
}

@end