@interface CLEEDMediaItem
+ (id)createMediaItemFromDict:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CLEEDMediaItem)initWithCoder:(id)a3;
- (CLEEDMediaItem)initWithURL:(id)a3 assetIdentifier:(id)a4 sandboxExtension:(id)a5 mediaType:(int64_t)a6;
- (CLEEDMediaItem)initWithURL:(id)a3 sandboxExtension:(id)a4 mediaType:(int64_t)a5;
- (id)createMediaItemDict;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLEEDMediaItem

- (CLEEDMediaItem)initWithURL:(id)a3 sandboxExtension:(id)a4 mediaType:(int64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v15 = "[CLEEDMediaItem initWithURL:sandboxExtension:mediaType:]";
    v16 = 2114;
    v17 = a3;
    v18 = 2114;
    v19 = a4;
    v20 = 2050;
    v21 = a5;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[URL:%{public}@,Token:%{public}@,Type:%{public}lu]", buf, 0x2Au);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMediaItem initWithURL:sandboxExtension:mediaType:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  result = [(CLEEDMediaItem *)self initWithURL:a3 assetIdentifier:0 sandboxExtension:a4 mediaType:a5];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLEEDMediaItem)initWithURL:(id)a3 assetIdentifier:(id)a4 sandboxExtension:(id)a5 mediaType:(int64_t)a6
{
  v40 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v11 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136447234;
    v31 = "[CLEEDMediaItem initWithURL:assetIdentifier:sandboxExtension:mediaType:]";
    v32 = 2114;
    v33 = a3;
    v34 = 2114;
    v35 = a4;
    v36 = 2114;
    v37 = a5;
    v38 = 2050;
    v39 = a6;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[URL:%{public}@,assetIdentifier:%{public}@,Token:%{public}@,Type:%{public}lu]", buf, 0x34u);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v20 = 136447234;
    v21 = "[CLEEDMediaItem initWithURL:assetIdentifier:sandboxExtension:mediaType:]";
    v22 = 2114;
    v23 = a3;
    v24 = 2114;
    v25 = a4;
    v26 = 2114;
    v27 = a5;
    v28 = 2050;
    v29 = a6;
    v13 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMediaItem initWithURL:assetIdentifier:sandboxExtension:mediaType:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v19.receiver = self;
  v19.super_class = CLEEDMediaItem;
  v14 = [(CLEEDMediaItem *)&v19 init];
  if (v14)
  {
    *(v14 + 4) = a3;
    *(v14 + 6) = a5;
    *(v14 + 5) = a4;
    *(v14 + 2) = a6;
    *(v14 + 3) = 0;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 14) = -1;
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"notset"];
    *(v14 + 15) = 0;
    *(v14 + 12) = 0;
    *(v14 + 13) = 0;
    *(v14 + 11) = v15;
    *&v16 = -1;
    *(&v16 + 1) = -1;
    *(v14 + 8) = v16;
    *(v14 + 9) = v16;
    *(v14 + 4) = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLEEDMediaItem;
  [(CLEEDMediaItem *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_URL forKey:@"placeholderURL"];
  [a3 encodeObject:self->_stagingURL forKey:@"stagingURL"];
  [a3 encodeObject:self->_encryptedFileURL forKey:@"encryptedURL"];
  [a3 encodeObject:self->_authTag forKey:@"authTag"];
  [a3 encodeObject:self->_assetIdentifier forKey:@"assetIdentifier"];
  [a3 encodeObject:self->_mediaItemID forKey:@"mediaUUID"];
  [a3 encodeObject:self->_sandboxExtension forKey:@"sandboxExtension"];
  [a3 encodeInteger:self->_type forKey:@"mediaType"];
  [a3 encodeInteger:self->_uploadStatus forKey:@"uploadStatus"];
  [a3 encodeObject:self->_mediaItemFormat forKey:@"mediaItemFormat"];
  [a3 encodeInteger:self->_mediaItemSizeBytes forKey:@"mediaItemSizeBytes"];
  [a3 encodeInteger:self->_originalSizeBytes forKey:@"originalSizeBytes"];
  [a3 encodeInteger:self->_serverUploadStatus forKey:@"serverUploadStatus"];
  [a3 encodeInteger:self->_uploadAttempts forKey:@"uploadAttempts"];
  [a3 encodeInteger:self->_durationCopyMs forKey:@"durationCopyMs"];
  [a3 encodeInteger:self->_durationTranscodeMs forKey:@"durationTranscodeMs"];
  [a3 encodeInteger:self->_durationEncryptionMs forKey:@"durationEncryptionMs"];
  [a3 encodeInteger:self->_durationUploadMs forKey:@"durationUploadMs"];
  [a3 encodeBool:self->_metricProcessed forKey:@"metricProcessed"];
  didApplyDelayMitigation = self->_didApplyDelayMitigation;

  [a3 encodeBool:didApplyDelayMitigation forKey:@"didApplyDelayMitigation"];
}

- (CLEEDMediaItem)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLEEDMediaItem;
  v4 = [(CLEEDMediaItem *)&v6 init];
  if (v4)
  {
    v4->_URL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderURL"];
    v4->_stagingURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"stagingURL"];
    v4->_encryptedFileURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedURL"];
    v4->_authTag = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"authTag"];
    v4->_assetIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"assetIdentifier"];
    v4->_mediaItemID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"mediaUUID"];
    v4->_sandboxExtension = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    v4->_type = [a3 decodeIntegerForKey:@"mediaType"];
    v4->_uploadStatus = [a3 decodeIntegerForKey:@"uploadStatus"];
    v4->_serverUploadStatus = [a3 decodeIntegerForKey:@"serverUploadStatus"];
    v4->_mediaItemFormat = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"mediaItemFormat"];
    v4->_mediaItemSizeBytes = [a3 decodeIntegerForKey:@"mediaItemSizeBytes"];
    v4->_originalSizeBytes = [a3 decodeIntegerForKey:@"originalSizeBytes"];
    v4->_uploadAttempts = [a3 decodeIntegerForKey:@"uploadAttempts"];
    v4->_durationCopyMs = [a3 decodeIntegerForKey:@"durationCopyMs"];
    v4->_durationTranscodeMs = [a3 decodeIntegerForKey:@"durationTranscodeMs"];
    v4->_durationEncryptionMs = [a3 decodeIntegerForKey:@"durationEncryptionMs"];
    v4->_durationUploadMs = [a3 decodeIntegerForKey:@"durationUploadMs"];
    v4->_metricProcessed = [a3 decodeBoolForKey:@"metricProcessed"];
    v4->_didApplyDelayMitigation = [a3 decodeBoolForKey:@"didApplyDelayMitigation"];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  result = 0;
  if (objc_opt_isKindOfClass())
  {
    if ([(CLEEDMediaItem *)self assetIdentifier])
    {
      if ([a3 assetIdentifier])
      {
        if (-[NSString isEqualToString:](-[CLEEDMediaItem assetIdentifier](self, "assetIdentifier"), "isEqualToString:", [a3 assetIdentifier]))
        {
          v5 = [(CLEEDMediaItem *)self type];
          if (v5 == [a3 type])
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

- (unint64_t)hash
{
  v2 = [(CLEEDMediaItem *)self assetIdentifier];

  return [(NSString *)v2 hash];
}

- (id)createMediaItemDict
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMediaItem type](self, "type")), @"mediaType"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMediaItem uploadStatus](self, "uploadStatus")), @"uploadStatus"}];
    [v3 setValue:-[NSURL absoluteString](-[CLEEDMediaItem URL](self forKey:{"URL"), "absoluteString"), @"placeholderURL"}];
    [v3 setValue:-[CLEEDMediaItem assetIdentifier](self forKey:{"assetIdentifier"), @"assetIdentifier"}];
    [v3 setValue:-[CLEEDMediaItem sandboxExtension](self forKey:{"sandboxExtension"), @"sandboxExtension"}];
    [v3 setValue:-[NSURL absoluteString](-[CLEEDMediaItem stagingURL](self forKey:{"stagingURL"), "absoluteString"), @"stagingURL"}];
    [v3 setValue:-[NSURL absoluteString](-[CLEEDMediaItem encryptedFileURL](self forKey:{"encryptedFileURL"), "absoluteString"), @"encryptedURL"}];
    [v3 setValue:-[CLEEDMediaItem authTag](self forKey:{"authTag"), @"authTag"}];
    [v3 setValue:-[NSUUID UUIDString](-[CLEEDMediaItem mediaItemID](self forKey:{"mediaItemID"), "UUIDString"), @"mediaUUID"}];
    [v3 setValue:-[CLEEDMediaItem mediaItemFormat](self forKey:{"mediaItemFormat"), @"mediaItemFormat"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMediaItem serverUploadStatus](self, "serverUploadStatus")), @"serverUploadStatus"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", -[CLEEDMediaItem mediaItemSizeBytes](self, "mediaItemSizeBytes")), @"mediaItemSizeBytes"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", -[CLEEDMediaItem originalSizeBytes](self, "originalSizeBytes")), @"originalSizeBytes"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", -[CLEEDMediaItem uploadAttempts](self, "uploadAttempts")), @"uploadAttempts"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMediaItem durationCopyMs](self, "durationCopyMs")), @"durationCopyMs"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMediaItem durationTranscodeMs](self, "durationTranscodeMs")), @"durationTranscodeMs"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMediaItem durationUploadMs](self, "durationUploadMs")), @"durationUploadMs"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMediaItem durationEncryptionMs](self, "durationEncryptionMs")), @"durationEncryptionMs"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CLEEDMediaItem metricProcessed](self, "metricProcessed")), @"metricProcessed"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CLEEDMediaItem didApplyDelayMitigation](self, "didApplyDelayMitigation")), @"didApplyDelayMitigation"}];
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v4 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v10 = "[CLEEDMediaItem createMediaItemDict]";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil mediaItemDict, early return", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDMediaItem createMediaItemDict]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)createMediaItemFromDict:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [a3 valueForKey:@"placeholderURL"];
  v5 = objc_alloc(MEMORY[0x1E695DFF8]);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F0E6F140;
  }

  v7 = [v5 initWithString:v6];
  v8 = v7;
  v9 = [a3 valueForKey:@"assetIdentifier"];
  v10 = [a3 valueForKey:@"sandboxExtension"];
  v11 = [objc_msgSend(a3 valueForKey:{@"mediaType", "intValue"}];
  if (v7)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v13 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446723;
      v26 = "+[CLEEDMediaItem createMediaItemFromDict:]";
      v27 = 2113;
      v28 = v7;
      v29 = 2113;
      v30 = v10;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,URL:%{private}@, sandboxExtension:%{private}@,mandatory item nil, early return", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDMediaItem createMediaItemFromDict:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = [[CLEEDMediaItem alloc] initWithURL:v7 assetIdentifier:v9 sandboxExtension:v10 mediaType:v11];
    -[CLEEDMediaItem setUploadStatus:](v16, "setUploadStatus:", [objc_msgSend(a3 valueForKey:{@"uploadStatus", "intValue"}]);
    v17 = [a3 valueForKey:@"stagingURL"];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17];
    }

    else
    {
      v18 = 0;
    }

    [(CLEEDMediaItem *)v16 setStagingURL:v18];
    v19 = [a3 valueForKey:@"encryptedURL"];
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v19];
    }

    else
    {
      v20 = 0;
    }

    [(CLEEDMediaItem *)v16 setEncryptedFileURL:v20];
    -[CLEEDMediaItem setAuthTag:](v16, "setAuthTag:", [a3 valueForKey:@"authTag"]);
    v21 = [a3 valueForKey:@"mediaUUID"];
    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];
    }

    else
    {
      v22 = 0;
    }

    [(CLEEDMediaItem *)v16 setMediaItemID:v22];
    -[CLEEDMediaItem setMediaItemFormat:](v16, "setMediaItemFormat:", [a3 valueForKey:@"mediaItemFormat"]);
    -[CLEEDMediaItem setServerUploadStatus:](v16, "setServerUploadStatus:", [objc_msgSend(a3 valueForKey:{@"serverUploadStatus", "integerValue"}]);
    -[CLEEDMediaItem setMediaItemSizeBytes:](v16, "setMediaItemSizeBytes:", [objc_msgSend(a3 valueForKey:{@"mediaItemSizeBytes", "unsignedIntegerValue"}]);
    -[CLEEDMediaItem setOriginalSizeBytes:](v16, "setOriginalSizeBytes:", [objc_msgSend(a3 valueForKey:{@"originalSizeBytes", "unsignedIntegerValue"}]);
    -[CLEEDMediaItem setUploadAttempts:](v16, "setUploadAttempts:", [objc_msgSend(a3 valueForKey:{@"uploadAttempts", "unsignedIntegerValue"}]);
    -[CLEEDMediaItem setDurationCopyMs:](v16, "setDurationCopyMs:", [objc_msgSend(a3 valueForKey:{@"durationCopyMs", "integerValue"}]);
    -[CLEEDMediaItem setDurationTranscodeMs:](v16, "setDurationTranscodeMs:", [objc_msgSend(a3 valueForKey:{@"durationTranscodeMs", "integerValue"}]);
    -[CLEEDMediaItem setDurationUploadMs:](v16, "setDurationUploadMs:", [objc_msgSend(a3 valueForKey:{@"durationUploadMs", "integerValue"}]);
    -[CLEEDMediaItem setDurationEncryptionMs:](v16, "setDurationEncryptionMs:", [objc_msgSend(a3 valueForKey:{@"durationEncryptionMs", "integerValue"}]);
    -[CLEEDMediaItem setMetricProcessed:](v16, "setMetricProcessed:", [objc_msgSend(a3 valueForKey:{@"metricProcessed", "BOOLValue"}]);
    -[CLEEDMediaItem setDidApplyDelayMitigation:](v16, "setDidApplyDelayMitigation:", [objc_msgSend(a3 valueForKey:{@"didApplyDelayMitigation", "BOOLValue"}]);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

@end