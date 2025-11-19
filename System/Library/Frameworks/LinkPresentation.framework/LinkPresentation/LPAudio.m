@interface LPAudio
- (AVAsset)_asset;
- (BOOL)_canEncodeWithoutComputation;
- (BOOL)isEqual:(id)a3;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (LPAudio)initWithCoder:(id)a3;
- (LPAudio)initWithStreamingURL:(id)a3 properties:(id)a4;
- (LPAudioProperties)properties;
- (NSData)data;
- (id)_initWithAudio:(id)a3;
- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4 properties:(id)a5;
- (unint64_t)_encodedSize;
- (void)data;
- (void)encodeWithCoder:(id)a3;
- (void)setFileURL:(id)a3;
@end

@implementation LPAudio

- (id)_initWithAudio:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = LPAudio;
  v5 = [(LPAudio *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_streamingURL, v4[6]);
    v7 = [v4[1] copy];
    data = v6->_data;
    v6->_data = v7;

    v9 = [v4[7] copy];
    MIMEType = v6->_MIMEType;
    v6->_MIMEType = v9;

    objc_storeStrong(&v6->_fileURL, v4[5]);
    v11 = [v4[4] copy];
    properties = v6->_properties;
    v6->_properties = v11;

    v13 = v6;
  }

  return v6;
}

- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = LPAudio;
  v11 = [(LPAudio *)&v16 init];
  if (v11 && [v8 isFileURL])
  {
    [(LPAudio *)v11 setFileURL:v8];
    objc_storeStrong(&v11->_MIMEType, a4);
    v12 = [v10 copy];
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

- (LPAudio)initWithStreamingURL:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LPAudio;
  v9 = [(LPAudio *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_streamingURL, a3);
    objc_storeStrong(&v10->_properties, a4);
    v11 = v10;
  }

  return v10;
}

- (LPAudio)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = LPAudio;
  v5 = [(LPAudio *)&v17 init];
  if (v5)
  {
    v6 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"streamingURL"];
    streamingURL = v5->_streamingURL;
    v5->_streamingURL = v6;

    v8 = [v4 _lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [v4 _lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v10;

    v12 = objc_alloc_init(LPAudioProperties);
    properties = v5->_properties;
    v5->_properties = v12;

    v14 = [v4 _lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(LPAudioProperties *)v5->_properties setAccessibilityText:v14];

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 _lp_encodeURLIfNotNilOrLocalFile:self->_streamingURL forKey:@"streamingURL"];
  if (![(LPAudio *)self _isSubstitute])
  {
    v4 = [(LPAudio *)self data];
    [v6 _lp_encodeObjectIfNotNil:v4 forKey:@"data"];
  }

  [v6 _lp_encodeStringIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  v5 = [(LPAudioProperties *)self->_properties accessibilityText];
  [v6 _lp_encodeStringIfNotNil:v5 forKey:@"accessibilityText"];
}

- (BOOL)_canEncodeWithoutComputation
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_data)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2->_streamingURL != 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPAudio;
  if ([(LPAudio *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSData *)v2->_data length];
  objc_sync_exit(v2);

  return v3;
}

- (void)setFileURL:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([v7 isFileURL])
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  fileURL = v4->_fileURL;
  v4->_fileURL = v5;

  objc_sync_exit(v4);
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
          [(LPAudio *)v6 data];
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
      v14 = [(AVURLAsset *)self->_asset resourceLoader];
      [v13 installCustomMediaLoader:v14];
    }

LABEL_12:
    v3 = self->_asset;

    goto LABEL_13;
  }

  v15 = [(LPAudio *)self data];

  if (v15)
  {
    v16 = MEMORY[0x1E6988168];
    v17 = MEMORY[0x1E695DFF8];
    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E696AFB0] UUID];
    v20 = [v19 UUIDString];
    v21 = [v18 stringWithFormat:@"link-presentation-audio://audio/%@", v20];
    v22 = [v17 URLWithString:v21];
    v23 = [v16 URLAssetWithURL:v22 options:0];

    if (!self->_mediaLoadingQueue)
    {
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v25 = dispatch_queue_create("com.apple.LinkPresentation.AudioFetching", v24);
      mediaLoadingQueue = self->_mediaLoadingQueue;
      self->_mediaLoadingQueue = v25;
    }

    v27 = [(AVURLAsset *)v23 resourceLoader];
    [v27 setDelegate:self queue:self->_mediaLoadingQueue];

    v28 = self->_asset;
    self->_asset = v23;
    v6 = v23;

    goto LABEL_12;
  }

  v3 = 0;
LABEL_13:

  return v3;
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 contentInformationRequest];

  if (v8)
  {
    v9 = [LPMIMETypeRegistry UTIForMIMEType:self->_MIMEType];
    v10 = [v7 contentInformationRequest];
    [v10 setContentType:v9];

    v11 = [(NSData *)self->_data length];
    v12 = [v7 contentInformationRequest];
    [v12 setContentLength:v11];

    v13 = [v7 contentInformationRequest];
    [v13 setByteRangeAccessSupported:1];
  }

  v14 = [v7 dataRequest];

  if (v14)
  {
    v15 = [v7 dataRequest];
    v16 = [v15 requestedOffset];
    v17 = [(NSData *)self->_data length];
    v18 = v17 - [v15 requestedOffset];
    if (!v18)
    {
      goto LABEL_11;
    }

    if (([v15 requestsAllDataToEndOfResource] & 1) == 0)
    {
      v19 = [v15 requestedLength];
      if (v19 < v18)
      {
        v18 = v19;
      }
    }

    v20 = [(NSData *)self->_data subdataWithRange:v16, v18];
    if (!v20)
    {
LABEL_11:

      v21 = 0;
      goto LABEL_12;
    }

    [v15 respondWithData:v20];
  }

  [v7 finishLoading];
  v21 = 1;
LABEL_12:

  return v21;
}

- (void)data
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPAudio: Failed to load data: %@", &v2, 0xCu);
}

@end