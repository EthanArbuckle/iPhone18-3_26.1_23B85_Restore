@interface PHPTPAnalyticsData
- (PHPTPAnalyticsData)init;
- (id)cplStateString;
- (id)description;
- (void)incrementConversionCountForAssetType:(signed __int16)type;
- (void)report;
- (void)updateWithPlatformInformation:(id)information;
@end

@implementation PHPTPAnalyticsData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9 = *&self->_vendor;
  platformVersion = self->_platformVersion;
  transport = self->_transport;
  cplStateString = [(PHPTPAnalyticsData *)self cplStateString];
  v7 = [v3 stringWithFormat:@"make: %@, os: %@, os_version: %@, transport: %@, clp_state: %@, library_asset_count: %lu, deferred_renders: %lu, videos_trancoded: %lu, images_transcoded: %lu, downloaded: %lu, duration: %g", v9, platformVersion, transport, cplStateString, self->_libraryAssetCount, self->_deferredRenderCount, self->_videoTranscodedCount, self->_imageTranscodedCount, self->_downloadedCount, (self->_timeDisconnected - self->_timeConnected) / 1000000000.0];

  return v7;
}

- (void)report
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = PLPTPGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "PTP Analytics:\n%@", &v13, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x1E69BF1F0]);
  v5 = *MEMORY[0x1E69BFAE0];
  [v4 setPayloadValue:self->_uuid forKey:*MEMORY[0x1E69BFAF0] onEventWithName:*MEMORY[0x1E69BFAE0]];
  [v4 setPayloadValue:self->_vendor forKey:*MEMORY[0x1E69BFB20] onEventWithName:v5];
  [v4 setPayloadValue:self->_platform forKey:*MEMORY[0x1E69BFB28] onEventWithName:v5];
  [v4 setPayloadValue:self->_platformVersion forKey:*MEMORY[0x1E69BFB30] onEventWithName:v5];
  [v4 setPayloadValue:self->_transport forKey:*MEMORY[0x1E69BFB38] onEventWithName:v5];
  cplStateString = [(PHPTPAnalyticsData *)self cplStateString];
  [v4 setPayloadValue:cplStateString forKey:*MEMORY[0x1E69BFAE8] onEventWithName:v5];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_libraryAssetCount];
  [v4 setPayloadValue:v7 forKey:*MEMORY[0x1E69BFB18] onEventWithName:v5];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_deferredRenderCount];
  [v4 setPayloadValue:v8 forKey:*MEMORY[0x1E69BFAF8] onEventWithName:v5];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_imageTranscodedCount];
  [v4 setPayloadValue:v9 forKey:*MEMORY[0x1E69BFB10] onEventWithName:v5];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_videoTranscodedCount];
  [v4 setPayloadValue:v10 forKey:*MEMORY[0x1E69BFB40] onEventWithName:v5];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_downloadedCount];
  [v4 setPayloadValue:v11 forKey:*MEMORY[0x1E69BFB00] onEventWithName:v5];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeDisconnected - self->_timeConnected];
  [v4 setPayloadValue:v12 forKey:*MEMORY[0x1E69BFB08] onEventWithName:v5];

  [v4 publishEventWithName:v5];
}

- (id)cplStateString
{
  cplState = self->_cplState;
  if (cplState > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75A3958[cplState];
  }
}

- (void)incrementConversionCountForAssetType:(signed __int16)type
{
  typeCopy = type;
  v6 = *MEMORY[0x1E69E9840];
  if ((type - 2) < 2)
  {
    v4 = PLPTPGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = typeCopy;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Unexpected asset type for transcode: %d", v5, 8u);
    }
  }

  else if (type == 1)
  {
    ++self->_videoTranscodedCount;
  }

  else if (!type)
  {
    ++self->_imageTranscodedCount;
  }
}

- (void)updateWithPlatformInformation:(id)information
{
  informationCopy = information;
  if (informationCopy)
  {
    v29 = informationCopy;
    v5 = [informationCopy objectForKeyedSubscript:*MEMORY[0x1E69C09E0]];
    v6 = v29;
    if (!v5 || (v7 = self->_vendor, v5, v6 = v29, !v7))
    {
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0A18]];
      v9 = v8;
      v10 = MEMORY[0x1E69C0A20];
      if (!v8 || ([v8 isEqualToString:*MEMORY[0x1E69C0A20]] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C0A28]) & 1) == 0)
      {
        v11 = *MEMORY[0x1E69C0A30];

        v9 = v11;
      }

      v12 = [v29 objectForKeyedSubscript:*MEMORY[0x1E69C09F0]];
      v13 = v12;
      v14 = *MEMORY[0x1E69C0A00];
      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = *MEMORY[0x1E69C0A00];
      }

      v16 = v15;

      if (![v16 isEqualToString:v14])
      {
        goto LABEL_17;
      }

      if ([v9 isEqualToString:*v10])
      {
        v17 = MEMORY[0x1E69C09F8];
      }

      else
      {
        if (![v9 isEqualToString:*MEMORY[0x1E69C0A28]])
        {
LABEL_17:
          vendor = self->_vendor;
          self->_vendor = v9;
          v20 = v9;

          platform = self->_platform;
          self->_platform = v16;
          v22 = v16;

          v23 = [v29 objectForKeyedSubscript:*MEMORY[0x1E69C0A38]];
          platformVersion = self->_platformVersion;
          self->_platformVersion = v23;

          v25 = [v29 objectForKeyedSubscript:*MEMORY[0x1E69C09E8]];
          buildVersion = self->_buildVersion;
          self->_buildVersion = v25;

          v27 = [v29 objectForKeyedSubscript:*MEMORY[0x1E69C0A10]];
          transport = self->_transport;
          self->_transport = v27;

          goto LABEL_18;
        }

        v17 = MEMORY[0x1E69C0A08];
      }

      v18 = *v17;

      v16 = v18;
      goto LABEL_17;
    }
  }

LABEL_18:

  MEMORY[0x1EEE66BB8]();
}

- (PHPTPAnalyticsData)init
{
  v7.receiver = self;
  v7.super_class = PHPTPAnalyticsData;
  v2 = [(PHPTPAnalyticsData *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = uUIDString;
  }

  return v2;
}

@end