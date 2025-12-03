@interface _INDataImage
- (BOOL)_requiresRetrieval;
- (BOOL)isEqual:(id)equal;
- (_INDataImage)initWithCoder:(id)coder;
- (_INDataImage)initWithImageData:(id)data;
- (id)_copyWithSubclass:(Class)subclass;
- (id)_dictionaryRepresentation;
- (id)_identifier;
- (id)_sha256HashUUID;
- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion;
- (void)_retrieveImageDataWithReply:(id)reply;
- (void)_setImageData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _INDataImage

- (id)_identifier
{
  _sha256HashUUID = [(_INDataImage *)self _sha256HashUUID];
  uUIDString = [_sha256HashUUID UUIDString];

  return uUIDString;
}

- (id)_sha256HashUUID
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_hashLock);
  sha256HashUUID = self->_sha256HashUUID;
  if (!sha256HashUUID)
  {
    imageData = [(_INDataImage *)self imageData];
    CC_SHA256([imageData bytes], objc_msgSend(imageData, "length"), md);
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

- (_INDataImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _INDataImage;
  v5 = [(INImage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v6;

    v5->_hashLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _INDataImage;
  coderCopy = coder;
  [(INImage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageData forKey:{@"imageData", v5.receiver, v5.super_class}];
}

- (void)_setImageData:(id)data
{
  dataCopy = data;
  if (self->_imageData != dataCopy)
  {
    v7 = dataCopy;
    objc_storeStrong(&self->_imageData, data);
    os_unfair_lock_lock(&self->_hashLock);
    sha256HashUUID = self->_sha256HashUUID;
    self->_sha256HashUUID = 0;

    os_unfair_lock_unlock(&self->_hashLock);
    dataCopy = v7;
  }
}

- (id)_copyWithSubclass:(Class)subclass
{
  v10.receiver = self;
  v10.super_class = _INDataImage;
  v4 = [(INImage *)&v10 _copyWithSubclass:subclass];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    imageData = [(_INDataImage *)self imageData];
    [v5 _setImageData:imageData];
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
  _dictionaryRepresentation = [(INImage *)&v10 _dictionaryRepresentation];
  v5 = [_dictionaryRepresentation mutableCopy];

  v11 = @"imageData";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v5 addEntriesFromDictionary:v7];

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_retrieveImageDataWithReply:(id)reply
{
  if (reply)
  {
    (*(reply + 2))(reply, self, 0);
  }
}

- (BOOL)_requiresRetrieval
{
  imageData = [(_INDataImage *)self imageData];
  v3 = imageData == 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _INDataImage;
  if ([(INImage *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
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

- (_INDataImage)initWithImageData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = _INDataImage;
  v6 = [(INImage *)&v9 _initWithIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 9, data);
    v7->_hashLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  specifierCopy = specifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if (helperCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "[_INDataImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
        v19 = 2112;
        v20 = helperCopy;
        _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Attempting data image loading strategy with helper: %@", buf, 0x16u);
      }

      imageData = [(_INDataImage *)self imageData];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __98___INDataImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke;
      v15[3] = &unk_1E72835D0;
      v15[4] = self;
      v16 = completionCopy;
      [helperCopy loadImageSizeFromData:imageData completion:v15];
    }

    else
    {
      imageData2 = [(_INDataImage *)self imageData];
      (*(completionCopy + 2))(completionCopy, imageData2, 0, 0, 0.0, 0.0);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end