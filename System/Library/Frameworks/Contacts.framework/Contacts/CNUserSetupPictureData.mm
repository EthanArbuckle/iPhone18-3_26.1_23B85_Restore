@interface CNUserSetupPictureData
+ (id)log;
+ (id)userSetupPictureDataFromData:(id)data;
- (CGRect)cropRect;
- (CNUserSetupPictureData)initWithCoder:(id)coder;
- (CNUserSetupPictureData)initWithImageData:(id)data thumbnailImageData:(id)imageData cropRect:(CGRect)rect memojiMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNUserSetupPictureData

+ (id)log
{
  if (log_cn_once_token_0_6 != -1)
  {
    +[CNUserSetupPictureData log];
  }

  v3 = log_cn_once_object_0_6;

  return v3;
}

uint64_t __29__CNUserSetupPictureData_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNUserSetupPictureData");
  v1 = log_cn_once_object_0_6;
  log_cn_once_object_0_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)userSetupPictureDataFromData:(id)data
{
  if (data)
  {
    v3 = MEMORY[0x1E696ACD0];
    dataCopy = data;
    v9 = 0;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = [objc_opt_class() log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CNUserSetupPictureData *)v6 userSetupPictureDataFromData:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CNUserSetupPictureData)initWithImageData:(id)data thumbnailImageData:(id)imageData cropRect:(CGRect)rect memojiMetadata:(id)metadata
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  imageDataCopy = imageData;
  metadataCopy = metadata;
  v21.receiver = self;
  v21.super_class = CNUserSetupPictureData;
  v17 = [(CNUserSetupPictureData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_imageData, data);
    objc_storeStrong(&v18->_thumbnailImageData, imageData);
    v18->_cropRect.origin.x = x;
    v18->_cropRect.origin.y = y;
    v18->_cropRect.size.width = width;
    v18->_cropRect.size.height = height;
    objc_storeStrong(&v18->_memojiMetadata, metadata);
    v19 = v18;
  }

  return v18;
}

- (CNUserSetupPictureData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"version"];
  if (v5 >= 2)
  {
    v15 = v5;
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CNUserSetupPictureData *)v15 initWithCoder:v16];
    }

    selfCopy = 0;
  }

  else
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImageData"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cropRect"];
    v18 = NSRectFromString(v8);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memojiMetadata"];
    self = [(CNUserSetupPictureData *)self initWithImageData:v6 thumbnailImageData:v7 cropRect:v13 memojiMetadata:x, y, width, height];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:1 forKey:@"version"];
  imageData = [(CNUserSetupPictureData *)self imageData];
  [coderCopy encodeObject:imageData forKey:@"imageData"];

  thumbnailImageData = [(CNUserSetupPictureData *)self thumbnailImageData];
  [coderCopy encodeObject:thumbnailImageData forKey:@"thumbnailImageData"];

  [(CNUserSetupPictureData *)self cropRect];
  v7 = NSStringFromRect(v10);
  [coderCopy encodeObject:v7 forKey:@"cropRect"];

  memojiMetadata = [(CNUserSetupPictureData *)self memojiMetadata];
  [coderCopy encodeObject:memojiMetadata forKey:@"memojiMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNUserSetupPictureData alloc];
  imageData = [(CNUserSetupPictureData *)self imageData];
  thumbnailImageData = [(CNUserSetupPictureData *)self thumbnailImageData];
  [(CNUserSetupPictureData *)self cropRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  memojiMetadata = [(CNUserSetupPictureData *)self memojiMetadata];
  v16 = [(CNUserSetupPictureData *)v4 initWithImageData:imageData thumbnailImageData:thumbnailImageData cropRect:memojiMetadata memojiMetadata:v8, v10, v12, v14];

  return v16;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (void)userSetupPictureDataFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving setup user picture data: %@", &v2, 0xCu);
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Unknown versions for Setup User picture data: %ld", &v2, 0xCu);
}

@end