@interface LPAudio
- (AVAsset)_asset;
- (BOOL)_canEncodeWithoutComputation;
- (BOOL)isEqual:(id)equal;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (LPAudio)initWithCoder:(id)coder;
- (LPAudio)initWithStreamingURL:(id)l properties:(id)properties;
- (LPAudioProperties)properties;
- (NSData)data;
- (id)_initWithAudio:(id)audio;
- (id)initByReferencingFileURL:(id)l MIMEType:(id)type properties:(id)properties;
- (unint64_t)_encodedSize;
- (void)data;
- (void)encodeWithCoder:(id)coder;
- (void)setFileURL:(id)l;
@end

@implementation LPAudio

- (id)_initWithAudio:(id)audio
{
  audioCopy = audio;
  v15.receiver = self;
  v15.super_class = LPAudio;
  v5 = [(LPAudio *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_streamingURL, audioCopy[6]);
    v7 = [audioCopy[1] copy];
    data = v6->_data;
    v6->_data = v7;

    v9 = [audioCopy[7] copy];
    MIMEType = v6->_MIMEType;
    v6->_MIMEType = v9;

    objc_storeStrong(&v6->_fileURL, audioCopy[5]);
    v11 = [audioCopy[4] copy];
    properties = v6->_properties;
    v6->_properties = v11;

    v13 = v6;
  }

  return v6;
}

- (id)initByReferencingFileURL:(id)l MIMEType:(id)type properties:(id)properties
{
  lCopy = l;
  typeCopy = type;
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = LPAudio;
  v11 = [(LPAudio *)&v16 init];
  if (v11 && [lCopy isFileURL])
  {
    [(LPAudio *)v11 setFileURL:lCopy];
    objc_storeStrong(&v11->_MIMEType, type);
    v12 = [propertiesCopy copy];
    properties = v11->_properties;
    v11->_properties = v12;

    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (LPAudio)initWithStreamingURL:(id)l properties:(id)properties
{
  lCopy = l;
  propertiesCopy = properties;
  v13.receiver = self;
  v13.super_class = LPAudio;
  v9 = [(LPAudio *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_streamingURL, l);
    objc_storeStrong(&v10->_properties, properties);
    v11 = v10;
  }

  return v10;
}

- (LPAudio)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = LPAudio;
  v5 = [(LPAudio *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"streamingURL"];
    streamingURL = v5->_streamingURL;
    v5->_streamingURL = v6;

    v8 = [coderCopy _lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [coderCopy _lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v10;

    v12 = objc_alloc_init(LPAudioProperties);
    properties = v5->_properties;
    v5->_properties = v12;

    v14 = [coderCopy _lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(LPAudioProperties *)v5->_properties setAccessibilityText:v14];

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_streamingURL forKey:@"streamingURL"];
  if (![(LPAudio *)self _isSubstitute])
  {
    data = [(LPAudio *)self data];
    [coderCopy _lp_encodeObjectIfNotNil:data forKey:@"data"];
  }

  [coderCopy _lp_encodeStringIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  accessibilityText = [(LPAudioProperties *)self->_properties accessibilityText];
  [coderCopy _lp_encodeStringIfNotNil:accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)_canEncodeWithoutComputation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_data)
  {
    v3 = 1;
  }

  else
  {
    v3 = selfCopy->_streamingURL != 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPAudio;
  if ([(LPAudio *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_2(v6[6], self->_streamingURL) & 1) != 0 && objectsAreEqual_2(v6[1], self->_data) && objectsAreEqual_2(v6[7], self->_MIMEType) && objectsAreEqual_2(v6[5], self->_fileURL))
      {
        v5 = objectsAreEqual_2(v6[4], self->_properties);
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

- (unint64_t)_encodedSize
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSData *)selfCopy->_data length];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setFileURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([lCopy isFileURL])
  {
    v5 = lCopy;
  }

  else
  {
    v5 = 0;
  }

  fileURL = selfCopy->_fileURL;
  selfCopy->_fileURL = v5;

  objc_sync_exit(selfCopy);
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
          [(LPAudio *)v6 data];
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

- (LPAudioProperties)properties
{
  v2 = [(LPAudioProperties *)self->_properties copy];

  return v2;
}

- (AVAsset)_asset
{
  asset = self->_asset;
  if (asset)
  {
    v3 = asset;
    goto LABEL_13;
  }

  streamingURL = self->_streamingURL;
  if (streamingURL)
  {
    v6 = streamingURL;
    v7 = +[LPTestingOverrides customLoader];

    if (v7)
    {
      v8 = +[LPTestingOverrides customLoader];
      v9 = [v8 overrideURLForMediaURL:v6];

      v6 = v9;
    }

    v10 = [MEMORY[0x1E6988168] assetWithURL:v6];
    v11 = self->_asset;
    self->_asset = v10;

    v12 = +[LPTestingOverrides customLoader];

    if (v12)
    {
      v13 = +[LPTestingOverrides customLoader];
      resourceLoader = [(AVURLAsset *)self->_asset resourceLoader];
      [v13 installCustomMediaLoader:resourceLoader];
    }

LABEL_12:
    v3 = self->_asset;

    goto LABEL_13;
  }

  data = [(LPAudio *)self data];

  if (data)
  {
    v16 = MEMORY[0x1E6988168];
    v17 = MEMORY[0x1E695DFF8];
    v18 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v21 = [v18 stringWithFormat:@"link-presentation-audio://audio/%@", uUIDString];
    v22 = [v17 URLWithString:v21];
    v23 = [v16 URLAssetWithURL:v22 options:0];

    if (!self->_mediaLoadingQueue)
    {
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v25 = dispatch_queue_create("com.apple.LinkPresentation.AudioFetching", v24);
      mediaLoadingQueue = self->_mediaLoadingQueue;
      self->_mediaLoadingQueue = v25;
    }

    resourceLoader2 = [(AVURLAsset *)v23 resourceLoader];
    [resourceLoader2 setDelegate:self queue:self->_mediaLoadingQueue];

    v28 = self->_asset;
    self->_asset = v23;
    v6 = v23;

    goto LABEL_12;
  }

  v3 = 0;
LABEL_13:

  return v3;
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  loaderCopy = loader;
  resourceCopy = resource;
  contentInformationRequest = [resourceCopy contentInformationRequest];

  if (contentInformationRequest)
  {
    v9 = [LPMIMETypeRegistry UTIForMIMEType:self->_MIMEType];
    contentInformationRequest2 = [resourceCopy contentInformationRequest];
    [contentInformationRequest2 setContentType:v9];

    v11 = [(NSData *)self->_data length];
    contentInformationRequest3 = [resourceCopy contentInformationRequest];
    [contentInformationRequest3 setContentLength:v11];

    contentInformationRequest4 = [resourceCopy contentInformationRequest];
    [contentInformationRequest4 setByteRangeAccessSupported:1];
  }

  dataRequest = [resourceCopy dataRequest];

  if (dataRequest)
  {
    dataRequest2 = [resourceCopy dataRequest];
    requestedOffset = [dataRequest2 requestedOffset];
    v17 = [(NSData *)self->_data length];
    v18 = v17 - [dataRequest2 requestedOffset];
    if (!v18)
    {
      goto LABEL_11;
    }

    if (([dataRequest2 requestsAllDataToEndOfResource] & 1) == 0)
    {
      requestedLength = [dataRequest2 requestedLength];
      if (requestedLength < v18)
      {
        v18 = requestedLength;
      }
    }

    v20 = [(NSData *)self->_data subdataWithRange:requestedOffset, v18];
    if (!v20)
    {
LABEL_11:

      v21 = 0;
      goto LABEL_12;
    }

    [dataRequest2 respondWithData:v20];
  }

  [resourceCopy finishLoading];
  v21 = 1;
LABEL_12:

  return v21;
}

- (void)data
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPAudio: Failed to load data: %@", &v2, 0xCu);
}

@end