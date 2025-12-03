@interface LPVisualMedia
- (BOOL)isEqual:(id)equal;
- (LPVisualMedia)init;
- (LPVisualMedia)initWithCoder:(id)coder properties:(id)properties;
- (LPVisualMedia)initWithCoderInternal:(id)internal;
- (LPVisualMedia)initWithProperties:(id)properties;
- (LPVisualMediaProperties)properties;
- (NSData)_cachedData;
- (NSData)data;
- (id)_initByReferencingFileURL:(id)l MIMEType:(id)type properties:(id)properties;
- (id)_initWithData:(id)data MIMEType:(id)type properties:(id)properties;
- (id)_initWithData:(id)data fileURL:(id)l MIMEType:(id)type properties:(id)properties;
- (id)_initWithLPVisualMedia:(id)media;
- (unint64_t)_encodedSize;
- (void)data;
- (void)encodeWithCoder:(id)coder;
- (void)setFileURL:(id)l;
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

- (id)_initWithLPVisualMedia:(id)media
{
  mediaCopy = media;
  v9.receiver = self;
  v9.super_class = LPVisualMedia;
  v5 = [(LPVisualMedia *)&v9 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeStrong(&v5->_data, mediaCopy[1]);
    objc_storeStrong(p_isa + 2, mediaCopy[2]);
    objc_storeStrong(p_isa + 3, mediaCopy[3]);
    objc_storeStrong(p_isa + 4, mediaCopy[4]);
    v7 = p_isa;
  }

  return p_isa;
}

- (id)_initWithData:(id)data fileURL:(id)l MIMEType:(id)type properties:(id)properties
{
  lCopy = l;
  v12 = [(LPVisualMedia *)self _initWithData:data MIMEType:type properties:properties];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 3, l);
    v14 = v13;
  }

  return v13;
}

- (id)_initWithData:(id)data MIMEType:(id)type properties:(id)properties
{
  dataCopy = data;
  typeCopy = type;
  propertiesCopy = properties;
  v17.receiver = self;
  v17.super_class = LPVisualMedia;
  v12 = [(LPVisualMedia *)&v17 init];
  if (v12)
  {
    if (!dataCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPVisualMedia with nil data."];
    }

    if (!typeCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPVisualMedia with nil MIME type."];
    }

    objc_storeStrong(&v12->_data, data);
    objc_storeStrong(&v12->_MIMEType, type);
    v13 = [propertiesCopy copy];
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

- (void)setFileURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v4 = lCopy;
  }

  else
  {
    v4 = 0;
  }

  fileURL = self->_fileURL;
  self->_fileURL = v4;
}

- (id)_initByReferencingFileURL:(id)l MIMEType:(id)type properties:(id)properties
{
  lCopy = l;
  typeCopy = type;
  propertiesCopy = properties;
  v17.receiver = self;
  v17.super_class = LPVisualMedia;
  v12 = [(LPVisualMedia *)&v17 init];
  if (v12 && [lCopy isFileURL])
  {
    objc_storeStrong(&v12->_fileURL, l);
    objc_storeStrong(&v12->_MIMEType, type);
    v13 = [propertiesCopy copy];
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

- (LPVisualMedia)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = LPVisualMedia;
  v5 = [(LPVisualMedia *)&v10 init];
  if (v5)
  {
    v6 = [propertiesCopy copy];
    properties = v5->_properties;
    v5->_properties = v6;

    v8 = v5;
  }

  return v5;
}

- (NSData)data
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  data = selfCopy->_data;
  if (!data)
  {
    fileURL = selfCopy->_fileURL;
    if (fileURL)
    {
      v11 = 0;
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL options:1 error:&v11];
      v6 = v11;
      v7 = selfCopy->_data;
      selfCopy->_data = v5;

      if (v6)
      {
        v8 = LPLogChannelUI();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(LPVisualMedia *)v6 data];
        }
      }

      data = selfCopy->_data;
    }

    else
    {
      data = 0;
    }
  }

  v9 = data;
  objc_sync_exit(selfCopy);

  return v9;
}

- (NSData)_cachedData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_data;
  objc_sync_exit(selfCopy);

  return v3;
}

- (LPVisualMediaProperties)properties
{
  v2 = [(LPVisualMediaProperties *)self->_properties copy];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (![(LPVisualMedia *)self _isSubstitute])
  {
    data = [(LPVisualMedia *)self data];
    [coderCopy _lp_encodeObjectIfNotNil:data forKey:@"data"];
  }

  [coderCopy _lp_encodeStringIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  accessibilityText = [(LPVisualMediaProperties *)self->_properties accessibilityText];
  [coderCopy _lp_encodeStringIfNotNil:accessibilityText forKey:@"accessibilityText"];
}

- (LPVisualMedia)initWithCoderInternal:(id)internal
{
  internalCopy = internal;
  v12.receiver = self;
  v12.super_class = LPVisualMedia;
  v5 = [(LPVisualMedia *)&v12 init];
  if (v5)
  {
    v6 = [internalCopy _lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [internalCopy _lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v8;

    v10 = v5;
  }

  return v5;
}

- (LPVisualMedia)initWithCoder:(id)coder properties:(id)properties
{
  propertiesCopy = properties;
  v8 = [(LPVisualMedia *)self initWithCoderInternal:coder];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_properties, properties);
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPVisualMedia;
  if ([(LPVisualMedia *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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
  selfCopy = self;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPVisualMedia: Failed to load data: %@", &v2, 0xCu);
}

@end