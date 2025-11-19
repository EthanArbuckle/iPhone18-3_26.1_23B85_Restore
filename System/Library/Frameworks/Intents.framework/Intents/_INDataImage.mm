@interface _INDataImage
- (BOOL)_requiresRetrieval;
- (BOOL)isEqual:(id)a3;
- (_INDataImage)initWithCoder:(id)a3;
- (_INDataImage)initWithImageData:(id)a3;
- (id)_copyWithSubclass:(Class)a3;
- (id)_dictionaryRepresentation;
- (id)_identifier;
- (id)_sha256HashUUID;
- (void)_loadImageDataAndSizeWithHelper:(id)a3 accessSpecifier:(id)a4 completion:(id)a5;
- (void)_retrieveImageDataWithReply:(id)a3;
- (void)_setImageData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _INDataImage

- (id)_identifier
{
  v2 = [(_INDataImage *)self _sha256HashUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)_sha256HashUUID
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_hashLock);
  sha256HashUUID = self->_sha256HashUUID;
  if (!sha256HashUUID)
  {
    v4 = [(_INDataImage *)self imageData];
    CC_SHA256([v4 bytes], objc_msgSend(v4, "length"), md);
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:md];
    v6 = self->_sha256HashUUID;
    self->_sha256HashUUID = v5;

    sha256HashUUID = self->_sha256HashUUID;
  }

  v7 = sha256HashUUID;
  os_unfair_lock_unlock(&self->_hashLock);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (_INDataImage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _INDataImage;
  v5 = [(INImage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v6;

    v5->_hashLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _INDataImage;
  v4 = a3;
  [(INImage *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imageData forKey:{@"imageData", v5.receiver, v5.super_class}];
}

- (void)_setImageData:(id)a3
{
  v5 = a3;
  if (self->_imageData != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_imageData, a3);
    os_unfair_lock_lock(&self->_hashLock);
    sha256HashUUID = self->_sha256HashUUID;
    self->_sha256HashUUID = 0;

    os_unfair_lock_unlock(&self->_hashLock);
    v5 = v7;
  }
}

- (id)_copyWithSubclass:(Class)a3
{
  v10.receiver = self;
  v10.super_class = _INDataImage;
  v4 = [(INImage *)&v10 _copyWithSubclass:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_INDataImage *)self imageData];
    [v5 _setImageData:v6];
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

- (id)_dictionaryRepresentation
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(NSData *)self->_imageData length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data length: %tu", -[NSData length](self->_imageData, "length")];
  }

  else
  {
    v3 = 0;
  }

  v10.receiver = self;
  v10.super_class = _INDataImage;
  v4 = [(INImage *)&v10 _dictionaryRepresentation];
  v5 = [v4 mutableCopy];

  v11 = @"imageData";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v5 addEntriesFromDictionary:v7];

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_retrieveImageDataWithReply:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, self, 0);
  }
}

- (BOOL)_requiresRetrieval
{
  v2 = [(_INDataImage *)self imageData];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _INDataImage;
  if ([(INImage *)&v10 isEqual:v4])
  {
    v5 = v4;
    imageData = self->_imageData;
    v7 = v5[9];
    if (imageData)
    {
      if (v7 && ([(NSData *)imageData isEqual:?]& 1) != 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v7)
    {
LABEL_5:
      v8 = 1;
LABEL_9:

      goto LABEL_10;
    }

    v8 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (_INDataImage)initWithImageData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _INDataImage;
  v6 = [(INImage *)&v9 _initWithIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 9, a3);
    v7->_hashLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)_loadImageDataAndSizeWithHelper:(id)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "[_INDataImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Attempting data image loading strategy with helper: %@", buf, 0x16u);
      }

      v12 = [(_INDataImage *)self imageData];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __98___INDataImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke;
      v15[3] = &unk_1E72835D0;
      v15[4] = self;
      v16 = v10;
      [v8 loadImageSizeFromData:v12 completion:v15];
    }

    else
    {
      v13 = [(_INDataImage *)self imageData];
      (*(v10 + 2))(v10, v13, 0, 0, 0.0, 0.0);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end