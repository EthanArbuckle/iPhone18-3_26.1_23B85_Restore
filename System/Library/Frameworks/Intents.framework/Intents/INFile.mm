@interface INFile
+ (INFile)fileWithData:(NSData *)data filename:(NSString *)filename typeIdentifier:(NSString *)typeIdentifier;
+ (INFile)fileWithFileURL:(NSURL *)fileURL filename:(NSString *)filename typeIdentifier:(NSString *)typeIdentifier;
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
+ (void)initialize;
- (BOOL)_associatedAuditTokenIsEqualToAuditToken:(id *)token;
- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block;
- (BOOL)_isMarkedForDeletionOnDeallocation;
- (BOOL)isEqual:(id)equal;
- (BOOL)removedOnCompletion;
- (INFile)initWithCoder:(id)coder;
- (NSData)data;
- (NSItemProvider)_itemProvider;
- (NSString)filename;
- (NSURL)fileURL;
- (id)_dictionaryRepresentation;
- (id)_initWithBookmarkData:(id)data filename:(id)filename typeIdentifier:(id)identifier removedOnCompletion:(id)completion;
- (id)_initWithData:(id)data filename:(id)filename fileURL:(id)l typeIdentifier:(id)identifier removedOnCompletion:(id)completion;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)itemProvider;
- (unint64_t)hash;
- (void)_setAssociatedAuditToken:(id *)token;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadDataRepresentationWithType:(id)type completion:(id)completion;
- (void)loadFileRepresentationWithType:(id)type completion:(id)completion;
@end

@implementation INFile

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_fileURL && [(INFile *)self _isMarkedForDeletionOnDeallocation]&& [(INFile *)self _hasAssociatedAuditToken])
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v4 = processInfo;
    if (processInfo)
    {
      [processInfo if_auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v5 = [(INFile *)self _associatedAuditTokenIsEqualToAuditToken:buf];

    if (v5)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
      {
        fileURL = self->_fileURL;
        v13 = v6;
        absoluteString = [(NSURL *)fileURL absoluteString];
        *buf = 136315394;
        *&buf[4] = "[INFile dealloc]";
        *&buf[12] = 2112;
        *&buf[14] = absoluteString;
        _os_log_debug_impl(&dword_18E991000, v13, OS_LOG_TYPE_DEBUG, "%s Deleting file on deallocation: %@", buf, 0x16u);
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v8 = self->_fileURL;
      v17 = 0;
      [defaultManager removeItemAtURL:v8 error:&v17];
      v9 = v17;

      if (v9)
      {
        v10 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_fileURL;
          *buf = 136315650;
          *&buf[4] = "[INFile dealloc]";
          *&buf[12] = 2112;
          *&buf[14] = v15;
          *&buf[22] = 2112;
          *&buf[24] = v9;
          _os_log_error_impl(&dword_18E991000, v10, OS_LOG_TYPE_ERROR, "%s Error deleting file at URL: %@. Error: %@", buf, 0x20u);
        }
      }
    }
  }

  v16.receiver = self;
  v16.super_class = INFile;
  [(INFile *)&v16 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block
{
  blockCopy = block;
  fileURL = [(INFile *)self fileURL];
  v8 = [fileURL _intents_enumerateObjectsOfClass:class withBlock:blockCopy];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = INFile;
    v9 = [&v11 _intents_enumerateObjectsOfClass:class withBlock:blockCopy];
  }

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  encoderCopy = encoder;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(INFile *)self _isFileURLBased])
  {
    fileURL = [(INFile *)self fileURL];
    v8 = @"fileURL";
  }

  else
  {
    _bookmarkData = [(INFile *)self _bookmarkData];

    if (_bookmarkData)
    {
      fileURL = [(INFile *)self _bookmarkData];
      v8 = @"_bookmarkData";
    }

    else
    {
      fileURL = [(INFile *)self data];
      v8 = @"data";
    }
  }

  v10 = [encoderCopy encodeObject:fileURL];
  [dictionary if_setObjectIfNonNil:v10 forKey:v8];

  filename = [(INFile *)self filename];
  v12 = [encoderCopy encodeObject:filename];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"filename"];

  typeIdentifier = [(INFile *)self typeIdentifier];
  v14 = [encoderCopy encodeObject:typeIdentifier];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"typeIdentifier"];

  _removedOnCompletionValue = [(INFile *)self _removedOnCompletionValue];
  v16 = [encoderCopy encodeObject:_removedOnCompletionValue];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"removedOnCompletion"];

  return dictionary;
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
      v10 = objc_opt_class();
      v11 = [fromCopy objectForKeyedSubscript:@"filename"];
      v12 = [decoderCopy decodeObjectOfClass:v10 from:v11];

      v13 = objc_opt_class();
      v14 = [fromCopy objectForKeyedSubscript:@"typeIdentifier"];
      v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

      v16 = objc_opt_class();
      v17 = [fromCopy objectForKeyedSubscript:@"removedOnCompletion"];
      v18 = [decoderCopy decodeObjectOfClass:v16 from:v17];

      v19 = [fromCopy objectForKeyedSubscript:@"fileURL"];

      if (v19)
      {
        v20 = objc_opt_class();
        v21 = [fromCopy objectForKeyedSubscript:@"fileURL"];
        v22 = [decoderCopy decodeObjectOfClass:v20 from:v21];

        v23 = [INFile alloc];
        v24 = 0;
        v25 = v12;
        v26 = v22;
      }

      else
      {
        v30 = [fromCopy objectForKeyedSubscript:@"data"];
        if (!v30 || (v31 = v30, [fromCopy objectForKeyedSubscript:@"filename"], v32 = objc_claimAutoreleasedReturnValue(), v32, v31, !v32))
        {
          v35 = [fromCopy objectForKeyedSubscript:@"_bookmarkData"];

          if (!v35)
          {
            v28 = 0;
            goto LABEL_7;
          }

          v36 = objc_opt_class();
          v37 = [fromCopy objectForKeyedSubscript:@"_bookmarkData"];
          v22 = [decoderCopy decodeObjectOfClass:v36 from:v37];

          v27 = [[INFile alloc] _initWithBookmarkData:v22 filename:v12 typeIdentifier:v15 removedOnCompletion:v18];
LABEL_6:
          v28 = v27;

LABEL_7:
          goto LABEL_9;
        }

        v33 = objc_opt_class();
        v34 = [fromCopy objectForKeyedSubscript:@"data"];
        v22 = [decoderCopy decodeObjectOfClass:v33 from:v34];

        v23 = [INFile alloc];
        v24 = v22;
        v25 = v12;
        v26 = 0;
      }

      v27 = [(INFile *)v23 _initWithData:v24 filename:v25 fileURL:v26 typeIdentifier:v15 removedOnCompletion:v18];
      goto LABEL_6;
    }
  }

  v28 = 0;
LABEL_9:

  return v28;
}

- (id)itemProvider
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  _itemProviderRequestMetadata = [(INFile *)self _itemProviderRequestMetadata];
  supportedContentTypes = [_itemProviderRequestMetadata supportedContentTypes];

  objc_initWeak(&location, self);
  if ([supportedContentTypes count])
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v37 = "[INFile itemProvider]";
      v38 = 2112;
      v39 = supportedContentTypes;
      _os_log_debug_impl(&dword_18E991000, v6, OS_LOG_TYPE_DEBUG, "%s Registering type identifiers: %@ for item provider with itemProviderRequestMetadata", buf, 0x16u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = supportedContentTypes;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __22__INFile_itemProvider__block_invoke_60;
          v24[3] = &unk_1E7287300;
          objc_copyWeak(&v25, &location);
          v24[4] = v11;
          [v3 registerFileRepresentationForTypeIdentifier:v11 fileOptions:1 visibility:0 loadHandler:v24];
          objc_destroyWeak(&v25);
        }

        v8 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v8);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __22__INFile_itemProvider__block_invoke_2_61;
    v22[3] = &unk_1E72872D8;
    objc_copyWeak(&v23, &location);
    [v3 registerDataRepresentationForTypeIdentifier:@"com.apple.lplinkmetadata" visibility:0 loadHandler:v22];
    objc_destroyWeak(&v23);
  }

  else
  {
    typeIdentifier = [(INFile *)self typeIdentifier];
    v13 = typeIdentifier == 0;

    v14 = INSiriLogContextIntents;
    if (v13)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v37 = "[INFile itemProvider]";
        _os_log_debug_impl(&dword_18E991000, v14, OS_LOG_TYPE_DEBUG, "%s Did not find a typeIdentifier returning an empty item provider!", buf, 0xCu);
      }
    }

    else
    {
      v15 = INSiriLogContextIntents;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        typeIdentifier2 = [(INFile *)self typeIdentifier];
        *buf = 136315394;
        v37 = "[INFile itemProvider]";
        v38 = 2112;
        v39 = typeIdentifier2;
        _os_log_debug_impl(&dword_18E991000, v15, OS_LOG_TYPE_DEBUG, "%s Using natural type: %@ because no item provider metadata was found", buf, 0x16u);
      }

      fileURL = [(INFile *)self fileURL];

      typeIdentifier3 = [(INFile *)self typeIdentifier];
      if (fileURL)
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __22__INFile_itemProvider__block_invoke;
        v32[3] = &unk_1E72872B0;
        v18 = &v33;
        objc_copyWeak(&v33, &location);
        [v3 registerFileRepresentationForTypeIdentifier:typeIdentifier3 fileOptions:1 visibility:0 loadHandler:v32];
      }

      else
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __22__INFile_itemProvider__block_invoke_2;
        v30[3] = &unk_1E72872D8;
        v18 = &v31;
        objc_copyWeak(&v31, &location);
        [v3 registerDataRepresentationForTypeIdentifier:typeIdentifier3 visibility:0 loadHandler:v30];
      }

      objc_destroyWeak(v18);
    }
  }

  objc_destroyWeak(&location);

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __22__INFile_itemProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained fileURL];
  v3[2](v3, v5, 1, 0);

  return 0;
}

uint64_t __22__INFile_itemProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained data];
  v3[2](v3, v5, 0);

  return 0;
}

uint64_t __22__INFile_itemProvider__block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained loadFileRepresentationWithType:*(a1 + 32) completion:v3];

  return 0;
}

uint64_t __22__INFile_itemProvider__block_invoke_2_61(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _itemProviderRequestMetadata];
  v6 = [v5 metadata];
  v7 = _INItemProviderMetadataFromData(v6);

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __22__INFile_itemProvider__block_invoke_3;
  v10[3] = &unk_1E7287328;
  v11 = v3;
  v8 = v3;
  [v7 fetchLinkMetadataWithCompletion:v10];

  return 0;
}

void __22__INFile_itemProvider__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (NSItemProvider)_itemProvider
{
  itemProvider = self->_itemProvider;
  if (!itemProvider)
  {
    itemProvider = [(INFile *)self itemProvider];
    v5 = self->_itemProvider;
    self->_itemProvider = itemProvider;

    itemProvider = self->_itemProvider;
  }

  return itemProvider;
}

- (void)loadDataRepresentationWithType:(id)type completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  completionCopy = completion;
  v8 = _INVCVoiceShortcutClient();
  if (v8)
  {
    _itemProviderRequestMetadata = [(INFile *)self _itemProviderRequestMetadata];
    metadata = [_itemProviderRequestMetadata metadata];
    v11 = _INItemProviderMetadataFromData(metadata);

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__INFile_loadDataRepresentationWithType_completion___block_invoke;
    v14[3] = &unk_1E7287288;
    v15 = completionCopy;
    [v8 loadDataWithItemProviderRequestMetadata:v11 type:typeCopy completion:v14];
  }

  else
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[INFile loadDataRepresentationWithType:completion:]";
      _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s No VoiceShortcutClient; completing with nil", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __52__INFile_loadDataRepresentationWithType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
    v10 = 136315650;
    v11 = "[INFile loadDataRepresentationWithType:completion:]_block_invoke";
    v12 = 2048;
    v13 = [v5 length];
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&dword_18E991000, v9, OS_LOG_TYPE_DEBUG, "%s Loaded data: %lu with error: %@", &v10, 0x20u);
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)loadFileRepresentationWithType:(id)type completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  completionCopy = completion;
  v8 = _INVCVoiceShortcutClient();
  if (v8)
  {
    _itemProviderRequestMetadata = [(INFile *)self _itemProviderRequestMetadata];
    metadata = [_itemProviderRequestMetadata metadata];
    v11 = _INItemProviderMetadataFromData(metadata);

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__INFile_loadFileRepresentationWithType_completion___block_invoke;
    v14[3] = &unk_1E7287260;
    v15 = completionCopy;
    [v8 loadFileURLWithItemProviderRequestMetadata:v11 type:typeCopy openInPlace:1 completion:v14];
  }

  else
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[INFile loadFileRepresentationWithType:completion:]";
      _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s No VoiceShortcutClient; completing with nil", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __52__INFile_loadFileRepresentationWithType_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
  {
    v13 = v9;
    v14 = [v7 url];
    v15 = v14;
    v16 = @"NO";
    *v17 = 136315906;
    *&v17[4] = "[INFile loadFileRepresentationWithType:completion:]_block_invoke";
    if (a3)
    {
      v16 = @"YES";
    }

    *&v17[12] = 2112;
    *&v17[14] = v14;
    v18 = 2112;
    v19 = v16;
    v20 = 2112;
    v21 = v8;
    _os_log_debug_impl(&dword_18E991000, v13, OS_LOG_TYPE_DEBUG, "%s Loaded file url: %@ with wasOpenedInPlace: %@ error: %@", v17, 0x2Au);
  }

  v10 = *(a1 + 32);
  v11 = [v7 url];
  (*(v10 + 16))(v10, v11, a3, v8);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_setAssociatedAuditToken:(id *)token
{
  fileURL = self->_fileURL;
  v4 = *&token->var0[4];
  v5[0] = *token->var0;
  v5[1] = v4;
  INFileURLSetAssociatedAuditToken(fileURL, v5);
}

- (BOOL)_associatedAuditTokenIsEqualToAuditToken:(id *)token
{
  fileURL = self->_fileURL;
  v8 = *token;
  v9 = 0u;
  v10 = 0u;
  INFileURLGetAssociatedAuditToken(fileURL, &v9);
  return v9 == *v8.var0 && *(&v9 + 1) == *&v8.var0[2] && v10 == *&v8.var0[4] && *(&v10 + 1) == *&v8.var0[6];
}

- (BOOL)_isMarkedForDeletionOnDeallocation
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(self) = [defaultManager if_BOOLForExtendedAttributeName:@"INFileURLIsMarkedForDeletionOnDeallocation" ofItemAtURL:self->_fileURL];

  return self;
}

- (id)_dictionaryRepresentation
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  data = self->_data;
  v20 = data;
  v21[0] = @"data";
  if (!data)
  {
    data = [MEMORY[0x1E695DFB0] null];
  }

  v19 = data;
  v22[0] = data;
  v21[1] = @"bookmarkData";
  bookmarkData = self->_bookmarkData;
  null = bookmarkData;
  if (!bookmarkData)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v22[1] = null;
  v21[2] = @"filename";
  filename = self->_filename;
  null2 = filename;
  if (!filename)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null2;
  v21[3] = @"fileURL";
  fileURL = self->_fileURL;
  null3 = fileURL;
  if (!fileURL)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null3;
  v21[4] = @"typeIdentifier";
  typeIdentifier = self->_typeIdentifier;
  null4 = typeIdentifier;
  if (!typeIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{5, v17}];
  v14 = [v3 dictionaryWithDictionary:v13];

  if (typeIdentifier)
  {
    if (fileURL)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (fileURL)
    {
LABEL_13:
      if (filename)
      {
        goto LABEL_14;
      }

LABEL_22:

      if (bookmarkData)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  if (!filename)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (bookmarkData)
  {
    goto LABEL_15;
  }

LABEL_23:

LABEL_15:
  if (!v20)
  {
  }

  [v14 if_setObjectIfNonNil:self->_removedOnCompletionValue forKey:@"removedOnCompletion"];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_data forKey:@"data"];
  [coderCopy encodeObject:self->_bookmarkData forKey:@"_bookmarkData"];
  [coderCopy encodeObject:self->_filename forKey:@"filename"];
  [coderCopy encodeObject:self->_fileURL forKey:@"fileURL"];
  [coderCopy encodeObject:self->_typeIdentifier forKey:@"typeIdentifier"];
  [coderCopy encodeObject:self->_removedOnCompletionValue forKey:@"removedOnCompletion"];
  [coderCopy encodeObject:self->_itemProviderRequestMetadata forKey:@"_itemProviderRequestMetadata"];
  if (self->_fileURL)
  {
    v4 = MEMORY[0x193AD70C0]();
    [coderCopy encodeObject:v4 forKey:@"securityScope"];
  }
}

- (INFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bookmarkData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityScope"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemProviderRequestMetadata"];
  if (v7 && v8)
  {
    MEMORY[0x193AD70B0](v7, v8);
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"removedOnCompletion"];
  if (v5)
  {
    v12 = [objc_alloc(objc_opt_class()) _initWithBookmarkData:v5 filename:v6 typeIdentifier:v10 removedOnCompletion:v11];
  }

  else
  {
    if (!(v15 | v7))
    {
      v13 = 0;
      goto LABEL_9;
    }

    v12 = [objc_alloc(objc_opt_class()) _initWithData:v15 filename:v6 fileURL:v7 typeIdentifier:v10 removedOnCompletion:v11];
  }

  v13 = v12;
LABEL_9:
  [(INFile *)v13 _setItemProviderRequestMetadata:v9];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    data = self->_data;
    v11 = 0;
    if (data == v5[2] || [(NSData *)data isEqual:?])
    {
      filename = self->_filename;
      if (filename == v5[3] || [(NSString *)filename isEqual:?])
      {
        fileURL = self->_fileURL;
        if (fileURL == v5[4] || [(NSURL *)fileURL isEqual:?])
        {
          typeIdentifier = self->_typeIdentifier;
          if (typeIdentifier == v5[9] || [(NSString *)typeIdentifier isEqual:?])
          {
            bookmarkData = self->_bookmarkData;
            if (bookmarkData == v5[5] || [(NSData *)bookmarkData isEqual:?])
            {
              v11 = 1;
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  v4 = [(NSData *)self->_bookmarkData hash]^ v3;
  v5 = [(NSString *)self->_filename hash];
  v6 = v4 ^ v5 ^ [(NSURL *)self->_fileURL hash];
  return v6 ^ [(NSString *)self->_typeIdentifier hash];
}

- (id)_initWithBookmarkData:(id)data filename:(id)filename typeIdentifier:(id)identifier removedOnCompletion:(id)completion
{
  dataCopy = data;
  filenameCopy = filename;
  identifierCopy = identifier;
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = INFile;
  v14 = [(INFile *)&v22 init];
  if (v14)
  {
    v15 = [dataCopy copy];
    bookmarkData = v14->_bookmarkData;
    v14->_bookmarkData = v15;

    v17 = [filenameCopy copy];
    filename = v14->_filename;
    v14->_filename = v17;

    v19 = [identifierCopy copy];
    typeIdentifier = v14->_typeIdentifier;
    v14->_typeIdentifier = v19;

    objc_storeStrong(&v14->_removedOnCompletionValue, completion);
  }

  return v14;
}

- (id)_initWithData:(id)data filename:(id)filename fileURL:(id)l typeIdentifier:(id)identifier removedOnCompletion:(id)completion
{
  dataCopy = data;
  filenameCopy = filename;
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  v25.receiver = self;
  v25.super_class = INFile;
  v17 = [(INFile *)&v25 init];
  if (v17)
  {
    v18 = [dataCopy copy];
    data = v17->_data;
    v17->_data = v18;

    v20 = [filenameCopy copy];
    filename = v17->_filename;
    v17->_filename = v20;

    objc_storeStrong(&v17->_fileURL, l);
    v22 = [identifierCopy copy];
    typeIdentifier = v17->_typeIdentifier;
    v17->_typeIdentifier = v22;

    objc_storeStrong(&v17->_removedOnCompletionValue, completion);
  }

  return v17;
}

- (BOOL)removedOnCompletion
{
  _removedOnCompletionValue = [(INFile *)self _removedOnCompletionValue];
  bOOLValue = [_removedOnCompletionValue BOOLValue];

  return bOOLValue;
}

- (NSURL)fileURL
{
  fileURL = self->_fileURL;
  if (fileURL)
  {
    v3 = fileURL;
  }

  else
  {
    p_bookmarkData = &self->_bookmarkData;
    if (self->_bookmarkData)
    {
      v5 = _INVCVoiceShortcutClient();
      v6 = *p_bookmarkData;
      v12 = 0;
      v13 = 0;
      v7 = [v5 resolveBookmarkData:v6 updatedData:&v13 error:&v12];
      v8 = v13;
      v9 = v13;
      v10 = v12;
      v3 = [v7 url];

      if (v9)
      {
        objc_storeStrong(p_bookmarkData, v8);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)filename
{
  filename = self->_filename;
  if (filename)
  {
    lastPathComponent = filename;
  }

  else
  {
    lastPathComponent = [(NSURL *)self->_fileURL lastPathComponent];
  }

  return lastPathComponent;
}

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    data = self->_memoryMappedFileData;
    if (!data)
    {
      fileURL = self->_fileURL;
      if (fileURL)
      {
        [(NSURL *)fileURL startAccessingSecurityScopedResource];
        v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:self->_fileURL options:8 error:0];
        memoryMappedFileData = self->_memoryMappedFileData;
        self->_memoryMappedFileData = v5;

        [(NSURL *)self->_fileURL stopAccessingSecurityScopedResource];
        data = self->_memoryMappedFileData;
      }

      else
      {
        data = 0;
      }
    }
  }

  v7 = data;

  return v7;
}

+ (INFile)fileWithFileURL:(NSURL *)fileURL filename:(NSString *)filename typeIdentifier:(NSString *)typeIdentifier
{
  v7 = typeIdentifier;
  v8 = filename;
  v9 = fileURL;
  v10 = [[INFile alloc] _initWithData:0 filename:v8 fileURL:v9 typeIdentifier:v7 removedOnCompletion:0];

  return v10;
}

+ (INFile)fileWithData:(NSData *)data filename:(NSString *)filename typeIdentifier:(NSString *)typeIdentifier
{
  v7 = typeIdentifier;
  v8 = filename;
  v9 = data;
  v10 = [[INFile alloc] _initWithData:v9 filename:v8 fileURL:0 typeIdentifier:v7 removedOnCompletion:0];

  return v10;
}

@end