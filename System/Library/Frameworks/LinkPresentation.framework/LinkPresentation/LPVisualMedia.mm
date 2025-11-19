@interface LPVisualMedia
- (BOOL)isEqual:(id)a3;
- (LPVisualMedia)init;
- (LPVisualMedia)initWithCoder:(id)a3 properties:(id)a4;
- (LPVisualMedia)initWithCoderInternal:(id)a3;
- (LPVisualMedia)initWithProperties:(id)a3;
- (LPVisualMediaProperties)properties;
- (NSData)_cachedData;
- (NSData)data;
- (id)_initByReferencingFileURL:(id)a3 MIMEType:(id)a4 properties:(id)a5;
- (id)_initWithData:(id)a3 MIMEType:(id)a4 properties:(id)a5;
- (id)_initWithData:(id)a3 fileURL:(id)a4 MIMEType:(id)a5 properties:(id)a6;
- (id)_initWithLPVisualMedia:(id)a3;
- (unint64_t)_encodedSize;
- (void)data;
- (void)encodeWithCoder:(id)a3;
- (void)setFileURL:(id)a3;
@end

@implementation LPVisualMedia

- (LPVisualMedia)init
{
  v6.receiver = self;
  v6.super_class = LPVisualMedia;
  v2 = [(LPVisualMedia *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_initWithLPVisualMedia:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LPVisualMedia;
  v5 = [(LPVisualMedia *)&v9 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeStrong(&v5->_data, v4[1]);
    objc_storeStrong(p_isa + 2, v4[2]);
    objc_storeStrong(p_isa + 3, v4[3]);
    objc_storeStrong(p_isa + 4, v4[4]);
    v7 = p_isa;
  }

  return p_isa;
}

- (id)_initWithData:(id)a3 fileURL:(id)a4 MIMEType:(id)a5 properties:(id)a6
{
  v11 = a4;
  v12 = [(LPVisualMedia *)self _initWithData:a3 MIMEType:a5 properties:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 3, a4);
    v14 = v13;
  }

  return v13;
}

- (id)_initWithData:(id)a3 MIMEType:(id)a4 properties:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = LPVisualMedia;
  v12 = [(LPVisualMedia *)&v17 init];
  if (v12)
  {
    if (!v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPVisualMedia with nil data."];
    }

    if (!v10)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPVisualMedia with nil MIME type."];
    }

    objc_storeStrong(&v12->_data, a3);
    objc_storeStrong(&v12->_MIMEType, a4);
    v13 = [v11 copy];
    properties = v12->_properties;
    v12->_properties = v13;

    v15 = v12;
  }

  return v12;
}

- (unint64_t)_encodedSize
{
  fileURL = self->_fileURL;
  if (fileURL)
  {
    return [(NSURL *)fileURL _lp_fileSize];
  }

  else
  {
    return [(NSData *)self->_data length];
  }
}

- (void)setFileURL:(id)a3
{
  v6 = a3;
  if ([v6 isFileURL])
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  fileURL = self->_fileURL;
  self->_fileURL = v4;
}

- (id)_initByReferencingFileURL:(id)a3 MIMEType:(id)a4 properties:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = LPVisualMedia;
  v12 = [(LPVisualMedia *)&v17 init];
  if (v12 && [v9 isFileURL])
  {
    objc_storeStrong(&v12->_fileURL, a3);
    objc_storeStrong(&v12->_MIMEType, a4);
    v13 = [v11 copy];
    properties = v12->_properties;
    v12->_properties = v13;

    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (LPVisualMedia)initWithProperties:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LPVisualMedia;
  v5 = [(LPVisualMedia *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    properties = v5->_properties;
    v5->_properties = v6;

    v8 = v5;
  }

  return v5;
}

- (NSData)data
{
  v2 = self;
  objc_sync_enter(v2);
  data = v2->_data;
  if (!data)
  {
    fileURL = v2->_fileURL;
    if (fileURL)
    {
      v11 = 0;
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL options:1 error:&v11];
      v6 = v11;
      v7 = v2->_data;
      v2->_data = v5;

      if (v6)
      {
        v8 = LPLogChannelUI();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(LPVisualMedia *)v6 data];
        }
      }

      data = v2->_data;
    }

    else
    {
      data = 0;
    }
  }

  v9 = data;
  objc_sync_exit(v2);

  return v9;
}

- (NSData)_cachedData
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_data;
  objc_sync_exit(v2);

  return v3;
}

- (LPVisualMediaProperties)properties
{
  v2 = [(LPVisualMediaProperties *)self->_properties copy];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (![(LPVisualMedia *)self _isSubstitute])
  {
    v4 = [(LPVisualMedia *)self data];
    [v6 _lp_encodeObjectIfNotNil:v4 forKey:@"data"];
  }

  [v6 _lp_encodeStringIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  v5 = [(LPVisualMediaProperties *)self->_properties accessibilityText];
  [v6 _lp_encodeStringIfNotNil:v5 forKey:@"accessibilityText"];
}

- (LPVisualMedia)initWithCoderInternal:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPVisualMedia;
  v5 = [(LPVisualMedia *)&v12 init];
  if (v5)
  {
    v6 = [v4 _lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 _lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v8;

    v10 = v5;
  }

  return v5;
}

- (LPVisualMedia)initWithCoder:(id)a3 properties:(id)a4
{
  v7 = a4;
  v8 = [(LPVisualMedia *)self initWithCoderInternal:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_properties, a4);
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPVisualMedia;
  if ([(LPVisualMedia *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_3(v6[1], self->_data) & 1) != 0 && objectsAreEqual_3(v6[2], self->_MIMEType) && objectsAreEqual_3(v6[3], self->_fileURL))
      {
        v5 = objectsAreEqual_3(v6[4], self->_properties);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)data
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPVisualMedia: Failed to load data: %@", &v2, 0xCu);
}

@end