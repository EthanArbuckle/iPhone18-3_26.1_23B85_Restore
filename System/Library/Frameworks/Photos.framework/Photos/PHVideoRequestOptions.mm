@interface PHVideoRequestOptions
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)timeRange;
- (BOOL)hasValidTimeRange;
- (BOOL)isValidConfigurationWithError:(id *)error;
- (CGSize)targetSize;
- (NSString)description;
- (PHVideoRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setRestrictToStreamable:(BOOL)streamable;
- (void)setTimeRange:(id *)range;
@end

@implementation PHVideoRequestOptions

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = *&range->var1.var1;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.start.value = v3;
}

- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)timeRange
{
  v3 = *&self[2].var1.var0;
  *&retstr->var0.var0 = *&self[2].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var3;
  return self;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)hasValidTimeRange
{
  [(PHVideoRequestOptions *)self timeRange];
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [(PHVideoRequestOptions *)self timeRange];
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  [(PHVideoRequestOptions *)self timeRange];
  if (v5)
  {
    return 0;
  }

  [(PHVideoRequestOptions *)self timeRange];
  return v4 >= 0;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"version="];
  if ([(PHVideoRequestOptions *)self version]== PHVideoRequestOptionsVersionOriginal)
  {
    v4 = @"orig";
LABEL_3:
    [string appendString:v4];
    goto LABEL_5;
  }

  if ([(PHVideoRequestOptions *)self version]== PHVideoRequestOptionsVersionCurrent)
  {
    [string appendString:@"curr"];
    if ([(PHVideoRequestOptions *)self deliveryMode]== PHVideoRequestOptionsDeliveryModeAutomatic)
    {
      v4 = @"+auto";
      goto LABEL_3;
    }

    if ([(PHVideoRequestOptions *)self deliveryMode]== PHVideoRequestOptionsDeliveryModeHighQualityFormat)
    {
      v4 = @"+high";
      goto LABEL_3;
    }

    if ([(PHVideoRequestOptions *)self deliveryMode]== PHVideoRequestOptionsDeliveryModeMediumQualityFormat)
    {
      v4 = @"+med";
      goto LABEL_3;
    }

    if ([(PHVideoRequestOptions *)self deliveryMode]== PHVideoRequestOptionsDeliveryModeFastFormat)
    {
      v4 = @"+fst";
      goto LABEL_3;
    }

    if ([(PHVideoRequestOptions *)self deliveryMode]== 4)
    {
      v4 = @"+large";
      goto LABEL_3;
    }
  }

LABEL_5:
  if ([(PHVideoRequestOptions *)self isMediumHighQualityAllowed])
  {
    [string appendString:@"+HQ"];
  }

  if ([(PHVideoRequestOptions *)self isStreamingAllowed])
  {
    [string appendString:@"+stream"];
  }

  streamingVideoIntent = [(PHVideoRequestOptions *)self streamingVideoIntent];
  if (streamingVideoIntent)
  {
    v6 = _PHStreamingVideoIntentName(streamingVideoIntent);
    [string appendFormat:@"+streamingIntent:%@", v6];
  }

  downloadIntent = [(PHVideoRequestOptions *)self downloadIntent];
  if (downloadIntent)
  {
    v8 = _PHDownloadIntentName(downloadIntent);
    v9 = _PHDownloadPriorityName([(PHVideoRequestOptions *)self downloadPriority]);
    [string appendFormat:@"+downloadIntent:%@+downloadPriority:%@", v8, v9];
  }

  if ([(PHVideoRequestOptions *)self isNetworkAccessAllowed])
  {
    [string appendString:@"+network"];
  }

  if ([(PHVideoRequestOptions *)self hasValidTimeRange])
  {
    v10 = *MEMORY[0x1E695E480];
    [(PHVideoRequestOptions *)self timeRange];
    v11 = CMTimeRangeCopyDescription(v10, &range);
    [string appendString:@"+timeRange="];
    [string appendString:v11];
  }

  if ([(PHVideoRequestOptions *)self includeTimeRangeMapper])
  {
    [string appendString:@"+timeRangeMapper"];
  }

  if ([(PHVideoRequestOptions *)self restrictToStreamable])
  {
    [string appendString:@"+streamOnly"];
  }

  if ([(PHVideoRequestOptions *)self restrictToEncryptedStream])
  {
    [string appendString:@"+encrypted"];
  }

  return string;
}

- (void)setRestrictToStreamable:(BOOL)streamable
{
  self->_restrictToStreamable = streamable;
  if (streamable)
  {
    [(PHVideoRequestOptions *)self setStreamingAllowed:1];

    [(PHVideoRequestOptions *)self setNetworkAccessAllowed:1];
  }
}

- (BOOL)isValidConfigurationWithError:(id *)error
{
  if ([(PHVideoRequestOptions *)self restrictToStreamable])
  {
    if ([(PHVideoRequestOptions *)self isNetworkAccessAllowed])
    {
      if ([(PHVideoRequestOptions *)self isStreamingAllowed])
      {
        goto LABEL_4;
      }

      v8 = @"Restricting to streamable assets with streamable disallowed";
    }

    else
    {
      v8 = @"Restricting to streamable assets with network access disallowed";
    }

    v5 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3306 localizedDescription:v8];
    v6 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
  if (error)
  {
LABEL_5:
    v5 = v5;
    *error = v5;
  }

LABEL_6:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setVersion:{-[PHVideoRequestOptions version](self, "version")}];
  [v4 setDeliveryMode:{-[PHVideoRequestOptions deliveryMode](self, "deliveryMode")}];
  [v4 setNetworkAccessAllowed:{-[PHVideoRequestOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  [v4 setStreamingAllowed:{-[PHVideoRequestOptions isStreamingAllowed](self, "isStreamingAllowed")}];
  [v4 setStreamingVideoIntent:{-[PHVideoRequestOptions streamingVideoIntent](self, "streamingVideoIntent")}];
  [v4 setVideoComplementAllowed:{-[PHVideoRequestOptions isVideoComplementAllowed](self, "isVideoComplementAllowed")}];
  progressHandler = [(PHVideoRequestOptions *)self progressHandler];
  [v4 setProgressHandler:progressHandler];

  [(PHVideoRequestOptions *)self targetSize];
  [v4 setTargetSize:?];
  [v4 setContentMode:{-[PHVideoRequestOptions contentMode](self, "contentMode")}];
  [v4 setRestrictToPlayableOnCurrentDevice:{-[PHVideoRequestOptions restrictToPlayableOnCurrentDevice](self, "restrictToPlayableOnCurrentDevice")}];
  [v4 setRestrictToStreamable:{-[PHVideoRequestOptions restrictToStreamable](self, "restrictToStreamable")}];
  [v4 setRestrictToEncryptedStream:{-[PHVideoRequestOptions restrictToEncryptedStream](self, "restrictToEncryptedStream")}];
  [v4 setAllowMediumHighQuality:{-[PHVideoRequestOptions isMediumHighQualityAllowed](self, "isMediumHighQualityAllowed")}];
  resultHandlerQueue = [(PHVideoRequestOptions *)self resultHandlerQueue];
  [v4 setResultHandlerQueue:resultHandlerQueue];

  [v4 setLiveRenderVideoIfNeeded:{-[PHVideoRequestOptions liveRenderVideoIfNeeded](self, "liveRenderVideoIfNeeded")}];
  [v4 setLiveRenderAndOnDemandRenderVideoConcurrently:{-[PHVideoRequestOptions liveRenderAndOnDemandRenderVideoConcurrently](self, "liveRenderAndOnDemandRenderVideoConcurrently")}];
  [v4 setDownloadIntent:{-[PHVideoRequestOptions downloadIntent](self, "downloadIntent")}];
  [v4 setDownloadPriority:{-[PHVideoRequestOptions downloadPriority](self, "downloadPriority")}];
  [(PHVideoRequestOptions *)self timeRange];
  [v4 setTimeRange:&v8];
  [v4 setIncludeTimeRangeMapper:{-[PHVideoRequestOptions includeTimeRangeMapper](self, "includeTimeRangeMapper")}];
  return v4;
}

- (PHVideoRequestOptions)init
{
  v6.receiver = self;
  v6.super_class = PHVideoRequestOptions;
  v2 = [(PHVideoRequestOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_includeTimeRangeMapper = 0;
    *&v2->_networkAccessAllowed = 0;
    v2->_allowMediumHighQuality = 0;
    v2->_version = 0;
    v2->_deliveryMode = 0;
    progressHandler = v2->_progressHandler;
    v2->_progressHandler = 0;

    *&v3->_restrictToPlayableOnCurrentDevice = 1;
    v3->_restrictToEncryptedStream = 0;
  }

  return v3;
}

@end