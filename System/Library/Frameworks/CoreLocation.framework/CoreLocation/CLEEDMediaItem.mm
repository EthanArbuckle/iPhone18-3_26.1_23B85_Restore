@interface CLEEDMediaItem
+ (id)createMediaItemFromDict:(id)dict;
- (BOOL)isEqual:(id)equal;
- (CLEEDMediaItem)initWithCoder:(id)coder;
- (CLEEDMediaItem)initWithURL:(id)l assetIdentifier:(id)identifier sandboxExtension:(id)extension mediaType:(int64_t)type;
- (CLEEDMediaItem)initWithURL:(id)l sandboxExtension:(id)extension mediaType:(int64_t)type;
- (id)createMediaItemDict;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLEEDMediaItem

- (CLEEDMediaItem)initWithURL:(id)l sandboxExtension:(id)extension mediaType:(int64_t)type
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
    lCopy = l;
    v18 = 2114;
    extensionCopy = extension;
    v20 = 2050;
    typeCopy = type;
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

  result = [(CLEEDMediaItem *)self initWithURL:l assetIdentifier:0 sandboxExtension:extension mediaType:type];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLEEDMediaItem)initWithURL:(id)l assetIdentifier:(id)identifier sandboxExtension:(id)extension mediaType:(int64_t)type
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
    lCopy = l;
    v34 = 2114;
    identifierCopy = identifier;
    v36 = 2114;
    extensionCopy = extension;
    v38 = 2050;
    typeCopy = type;
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
    lCopy2 = l;
    v24 = 2114;
    identifierCopy2 = identifier;
    v26 = 2114;
    extensionCopy2 = extension;
    v28 = 2050;
    typeCopy2 = type;
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
    *(v14 + 4) = l;
    *(v14 + 6) = extension;
    *(v14 + 5) = identifier;
    *(v14 + 2) = type;
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_URL forKey:@"placeholderURL"];
  [coder encodeObject:self->_stagingURL forKey:@"stagingURL"];
  [coder encodeObject:self->_encryptedFileURL forKey:@"encryptedURL"];
  [coder encodeObject:self->_authTag forKey:@"authTag"];
  [coder encodeObject:self->_assetIdentifier forKey:@"assetIdentifier"];
  [coder encodeObject:self->_mediaItemID forKey:@"mediaUUID"];
  [coder encodeObject:self->_sandboxExtension forKey:@"sandboxExtension"];
  [coder encodeInteger:self->_type forKey:@"mediaType"];
  [coder encodeInteger:self->_uploadStatus forKey:@"uploadStatus"];
  [coder encodeObject:self->_mediaItemFormat forKey:@"mediaItemFormat"];
  [coder encodeInteger:self->_mediaItemSizeBytes forKey:@"mediaItemSizeBytes"];
  [coder encodeInteger:self->_originalSizeBytes forKey:@"originalSizeBytes"];
  [coder encodeInteger:self->_serverUploadStatus forKey:@"serverUploadStatus"];
  [coder encodeInteger:self->_uploadAttempts forKey:@"uploadAttempts"];
  [coder encodeInteger:self->_durationCopyMs forKey:@"durationCopyMs"];
  [coder encodeInteger:self->_durationTranscodeMs forKey:@"durationTranscodeMs"];
  [coder encodeInteger:self->_durationEncryptionMs forKey:@"durationEncryptionMs"];
  [coder encodeInteger:self->_durationUploadMs forKey:@"durationUploadMs"];
  [coder encodeBool:self->_metricProcessed forKey:@"metricProcessed"];
  didApplyDelayMitigation = self->_didApplyDelayMitigation;

  [coder encodeBool:didApplyDelayMitigation forKey:@"didApplyDelayMitigation"];
}

- (CLEEDMediaItem)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CLEEDMediaItem;
  v4 = [(CLEEDMediaItem *)&v6 init];
  if (v4)
  {
    v4->_URL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"placeholderURL"];
    v4->_stagingURL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"stagingURL"];
    v4->_encryptedFileURL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"encryptedURL"];
    v4->_authTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"authTag"];
    v4->_assetIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"assetIdentifier"];
    v4->_mediaItemID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"mediaUUID"];
    v4->_sandboxExtension = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    v4->_type = [coder decodeIntegerForKey:@"mediaType"];
    v4->_uploadStatus = [coder decodeIntegerForKey:@"uploadStatus"];
    v4->_serverUploadStatus = [coder decodeIntegerForKey:@"serverUploadStatus"];
    v4->_mediaItemFormat = [coder decodeObjectOfClass:objc_opt_class() forKey:@"mediaItemFormat"];
    v4->_mediaItemSizeBytes = [coder decodeIntegerForKey:@"mediaItemSizeBytes"];
    v4->_originalSizeBytes = [coder decodeIntegerForKey:@"originalSizeBytes"];
    v4->_uploadAttempts = [coder decodeIntegerForKey:@"uploadAttempts"];
    v4->_durationCopyMs = [coder decodeIntegerForKey:@"durationCopyMs"];
    v4->_durationTranscodeMs = [coder decodeIntegerForKey:@"durationTranscodeMs"];
    v4->_durationEncryptionMs = [coder decodeIntegerForKey:@"durationEncryptionMs"];
    v4->_durationUploadMs = [coder decodeIntegerForKey:@"durationUploadMs"];
    v4->_metricProcessed = [coder decodeBoolForKey:@"metricProcessed"];
    v4->_didApplyDelayMitigation = [coder decodeBoolForKey:@"didApplyDelayMitigation"];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  result = 0;
  if (objc_opt_isKindOfClass())
  {
    if ([(CLEEDMediaItem *)self assetIdentifier])
    {
      if ([equal assetIdentifier])
      {
        if (-[NSString isEqualToString:](-[CLEEDMediaItem assetIdentifier](self, "assetIdentifier"), "isEqualToString:", [equal assetIdentifier]))
        {
          type = [(CLEEDMediaItem *)self type];
          if (type == [equal type])
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
  assetIdentifier = [(CLEEDMediaItem *)self assetIdentifier];

  return [(NSString *)assetIdentifier hash];
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

+ (id)createMediaItemFromDict:(id)dict
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [dict valueForKey:@"placeholderURL"];
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
  v9 = [dict valueForKey:@"assetIdentifier"];
  v10 = [dict valueForKey:@"sandboxExtension"];
  v11 = [objc_msgSend(dict valueForKey:{@"mediaType", "intValue"}];
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
    -[CLEEDMediaItem setUploadStatus:](v16, "setUploadStatus:", [objc_msgSend(dict valueForKey:{@"uploadStatus", "intValue"}]);
    v17 = [dict valueForKey:@"stagingURL"];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17];
    }

    else
    {
      v18 = 0;
    }

    [(CLEEDMediaItem *)v16 setStagingURL:v18];
    v19 = [dict valueForKey:@"encryptedURL"];
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v19];
    }

    else
    {
      v20 = 0;
    }

    [(CLEEDMediaItem *)v16 setEncryptedFileURL:v20];
    -[CLEEDMediaItem setAuthTag:](v16, "setAuthTag:", [dict valueForKey:@"authTag"]);
    v21 = [dict valueForKey:@"mediaUUID"];
    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];
    }

    else
    {
      v22 = 0;
    }

    [(CLEEDMediaItem *)v16 setMediaItemID:v22];
    -[CLEEDMediaItem setMediaItemFormat:](v16, "setMediaItemFormat:", [dict valueForKey:@"mediaItemFormat"]);
    -[CLEEDMediaItem setServerUploadStatus:](v16, "setServerUploadStatus:", [objc_msgSend(dict valueForKey:{@"serverUploadStatus", "integerValue"}]);
    -[CLEEDMediaItem setMediaItemSizeBytes:](v16, "setMediaItemSizeBytes:", [objc_msgSend(dict valueForKey:{@"mediaItemSizeBytes", "unsignedIntegerValue"}]);
    -[CLEEDMediaItem setOriginalSizeBytes:](v16, "setOriginalSizeBytes:", [objc_msgSend(dict valueForKey:{@"originalSizeBytes", "unsignedIntegerValue"}]);
    -[CLEEDMediaItem setUploadAttempts:](v16, "setUploadAttempts:", [objc_msgSend(dict valueForKey:{@"uploadAttempts", "unsignedIntegerValue"}]);
    -[CLEEDMediaItem setDurationCopyMs:](v16, "setDurationCopyMs:", [objc_msgSend(dict valueForKey:{@"durationCopyMs", "integerValue"}]);
    -[CLEEDMediaItem setDurationTranscodeMs:](v16, "setDurationTranscodeMs:", [objc_msgSend(dict valueForKey:{@"durationTranscodeMs", "integerValue"}]);
    -[CLEEDMediaItem setDurationUploadMs:](v16, "setDurationUploadMs:", [objc_msgSend(dict valueForKey:{@"durationUploadMs", "integerValue"}]);
    -[CLEEDMediaItem setDurationEncryptionMs:](v16, "setDurationEncryptionMs:", [objc_msgSend(dict valueForKey:{@"durationEncryptionMs", "integerValue"}]);
    -[CLEEDMediaItem setMetricProcessed:](v16, "setMetricProcessed:", [objc_msgSend(dict valueForKey:{@"metricProcessed", "BOOLValue"}]);
    -[CLEEDMediaItem setDidApplyDelayMitigation:](v16, "setDidApplyDelayMitigation:", [objc_msgSend(dict valueForKey:{@"didApplyDelayMitigation", "BOOLValue"}]);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

@end