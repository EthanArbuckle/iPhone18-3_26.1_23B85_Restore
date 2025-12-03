@interface CNRenderingSessionFrameAttributes
- (CNRenderingSessionFrameAttributes)initWithSampleBuffer:(CMSampleBufferRef)sampleBuffer sessionAttributes:(CNRenderingSessionAttributes *)sessionAttributes;
- (CNRenderingSessionFrameAttributes)initWithTimedMetadataGroup:(AVTimedMetadataGroup *)metadataGroup sessionAttributes:(CNRenderingSessionAttributes *)sessionAttributes;
- (float)originalFNumber;
- (float)originalFocusDisparity;
- (id)_initJustWithPTTimedRenderingMetadata:(id)metadata;
- (id)_initWithPTTimedRenderingMetadata:(id)metadata;
- (id)_initWithTimedData:(id)data sessionAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CNRenderingSessionFrameAttributes

- (CNRenderingSessionFrameAttributes)initWithSampleBuffer:(CMSampleBufferRef)sampleBuffer sessionAttributes:(CNRenderingSessionAttributes *)sessionAttributes
{
  v6 = MEMORY[0x277CE6648];
  v7 = sessionAttributes;
  v8 = [[v6 alloc] initWithSampleBuffer:sampleBuffer];
  v9 = [(CNRenderingSessionFrameAttributes *)self initWithTimedMetadataGroup:v8 sessionAttributes:v7];

  return v9;
}

- (CNRenderingSessionFrameAttributes)initWithTimedMetadataGroup:(AVTimedMetadataGroup *)metadataGroup sessionAttributes:(CNRenderingSessionAttributes *)sessionAttributes
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = sessionAttributes;
  if (metadataGroup)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    items = [(AVTimedMetadataGroup *)metadataGroup items];
    v8 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(items);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 key];
          v14 = [v13 isEqual:0x284A05320];

          if (v14)
          {
            value = [v12 value];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              value2 = [v12 value];
              self = [(CNRenderingSessionFrameAttributes *)self _initWithTimedData:value2 sessionAttributes:v6];
              selfCopy = self;
            }

            else
            {
              value2 = _CNLogSystem();
              if (os_log_type_enabled(value2, OS_LOG_TYPE_ERROR))
              {
                [(CNRenderingSessionFrameAttributes *)0x284A05320 initWithTimedMetadataGroup:v12 sessionAttributes:value2];
              }

              selfCopy = 0;
            }

            goto LABEL_18;
          }
        }

        v9 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
LABEL_18:
  }

  else
  {
    selfCopy = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (float)originalFocusDisparity
{
  majorVersion = [(CNRenderingSessionFrameAttributes *)self majorVersion];
  if (majorVersion == 2)
  {
    internalMetadata = self->_internalMetadata;

    [(PTTimedRenderingMetadata *)internalMetadata focusDisparity];
  }

  else if (majorVersion == 1)
  {
    v4 = self->_internalMetadata;

    [(PTTimedRenderingMetadata *)v4 focusDistance];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (float)originalFNumber
{
  majorVersion = [(CNRenderingSessionFrameAttributes *)self majorVersion];
  if (majorVersion == 2)
  {
    internalMetadata = self->_internalMetadata;

    [(PTTimedRenderingMetadata *)internalMetadata fNumber];
  }

  else if (majorVersion == 1)
  {
    v4 = self->_internalMetadata;

    [(PTTimedRenderingMetadata *)v4 aperture];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [(CNRenderingSessionFrameAttributes *)self mutableCopyWithZone:zone];

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) _initJustWithPTTimedRenderingMetadata:self->_internalMetadata];
  [(CNRenderingSessionFrameAttributes *)self focusDisparity];
  [v4 setFocusDisparity:?];
  [(CNRenderingSessionFrameAttributes *)self fNumber];
  [v4 setFNumber:?];
  return v4;
}

- (id)_initWithPTTimedRenderingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v11.receiver = self;
  v11.super_class = CNRenderingSessionFrameAttributes;
  v6 = [(CNRenderingSessionFrameAttributes *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalMetadata, metadata);
    [(CNRenderingSessionFrameAttributes *)v7 originalFocusDisparity];
    v7->_focusDisparity = v8;
    [(CNRenderingSessionFrameAttributes *)v7 originalFNumber];
    v7->_fNumber = v9;
  }

  return v7;
}

- (id)_initJustWithPTTimedRenderingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = CNRenderingSessionFrameAttributes;
  v6 = [(CNRenderingSessionFrameAttributes *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalMetadata, metadata);
  }

  return v7;
}

- (id)_initWithTimedData:(id)data sessionAttributes:(id)attributes
{
  dataCopy = data;
  v7 = MEMORY[0x277D3E8F8];
  attributesCopy = attributes;
  majorVersion = [attributesCopy majorVersion];
  minorVersion = [attributesCopy minorVersion];

  v11 = [v7 objectFromData:dataCopy withMajorVersion:majorVersion minorVersion:minorVersion];
  if (v11)
  {
    self = [(CNRenderingSessionFrameAttributes *)self _initWithPTTimedRenderingMetadata:v11];
    selfCopy = self;
  }

  else
  {
    v13 = _CNLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CNRenderingSessionFrameAttributes _initWithTimedData:dataCopy sessionAttributes:v13];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithTimedMetadataGroup:(NSObject *)a3 sessionAttributes:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a2 value];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_236F52000, a3, OS_LOG_TYPE_ERROR, "error: metadata item %@ of class %@ (expected NSData) -- skipping", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initWithTimedData:(uint64_t)a1 sessionAttributes:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_236F52000, a2, OS_LOG_TYPE_ERROR, "Failed to deserialize timed rendering metadata: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end