@interface CNUserSetupPictureData
+ (id)log;
+ (id)userSetupPictureDataFromData:(id)a3;
- (CGRect)cropRect;
- (CNUserSetupPictureData)initWithCoder:(id)a3;
- (CNUserSetupPictureData)initWithImageData:(id)a3 thumbnailImageData:(id)a4 cropRect:(CGRect)a5 memojiMetadata:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (id)userSetupPictureDataFromData:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = a3;
    v9 = 0;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];

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

- (CNUserSetupPictureData)initWithImageData:(id)a3 thumbnailImageData:(id)a4 cropRect:(CGRect)a5 memojiMetadata:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v21.receiver = self;
  v21.super_class = CNUserSetupPictureData;
  v17 = [(CNUserSetupPictureData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_imageData, a3);
    objc_storeStrong(&v18->_thumbnailImageData, a4);
    v18->_cropRect.origin.x = x;
    v18->_cropRect.origin.y = y;
    v18->_cropRect.size.width = width;
    v18->_cropRect.size.height = height;
    objc_storeStrong(&v18->_memojiMetadata, a6);
    v19 = v18;
  }

  return v18;
}

- (CNUserSetupPictureData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"version"];
  if (v5 >= 2)
  {
    v15 = v5;
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CNUserSetupPictureData *)v15 initWithCoder:v16];
    }

    v14 = 0;
  }

  else
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImageData"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cropRect"];
    v18 = NSRectFromString(v8);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memojiMetadata"];
    self = [(CNUserSetupPictureData *)self initWithImageData:v6 thumbnailImageData:v7 cropRect:v13 memojiMetadata:x, y, width, height];

    v14 = self;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:1 forKey:@"version"];
  v5 = [(CNUserSetupPictureData *)self imageData];
  [v4 encodeObject:v5 forKey:@"imageData"];

  v6 = [(CNUserSetupPictureData *)self thumbnailImageData];
  [v4 encodeObject:v6 forKey:@"thumbnailImageData"];

  [(CNUserSetupPictureData *)self cropRect];
  v7 = NSStringFromRect(v10);
  [v4 encodeObject:v7 forKey:@"cropRect"];

  v8 = [(CNUserSetupPictureData *)self memojiMetadata];
  [v4 encodeObject:v8 forKey:@"memojiMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNUserSetupPictureData alloc];
  v5 = [(CNUserSetupPictureData *)self imageData];
  v6 = [(CNUserSetupPictureData *)self thumbnailImageData];
  [(CNUserSetupPictureData *)self cropRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CNUserSetupPictureData *)self memojiMetadata];
  v16 = [(CNUserSetupPictureData *)v4 initWithImageData:v5 thumbnailImageData:v6 cropRect:v15 memojiMetadata:v8, v10, v12, v14];

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