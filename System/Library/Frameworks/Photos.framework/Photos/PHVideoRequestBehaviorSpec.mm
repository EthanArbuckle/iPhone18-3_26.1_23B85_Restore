@interface PHVideoRequestBehaviorSpec
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)timeRange;
- (BOOL)hasValidTimeRange;
- (PHVideoRequestBehaviorSpec)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shortDescription;
- (int64_t)videoDeliveryMode;
- (int64_t)videoVersion;
- (void)encodeWithCoder:(id)coder;
- (void)setTimeRange:(id *)range;
@end

@implementation PHVideoRequestBehaviorSpec

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
  v3 = *&self[1].var1.var0;
  *&retstr->var0.var0 = *&self[1].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var3;
  return self;
}

- (BOOL)hasValidTimeRange
{
  [(PHVideoRequestBehaviorSpec *)self timeRange];
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [(PHVideoRequestBehaviorSpec *)self timeRange];
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  [(PHVideoRequestBehaviorSpec *)self timeRange];
  if (v5)
  {
    return 0;
  }

  [(PHVideoRequestBehaviorSpec *)self timeRange];
  return v4 >= 0;
}

- (PHVideoRequestBehaviorSpec)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PHVideoRequestBehaviorSpec;
  v5 = [(PHVideoRequestBehaviorSpec *)&v10 init];
  if (v5)
  {
    *(v5 + 2) = [coderCopy decodeInt64ForKey:@"deliveryMode"];
    *(v5 + 3) = [coderCopy decodeInt64ForKey:@"version"];
    v5[8] = [coderCopy decodeBoolForKey:@"networkAccessAllowed"];
    v5[9] = [coderCopy decodeBoolForKey:@"streamingAllowed"];
    *(v5 + 4) = [coderCopy decodeInt64ForKey:@"streamingVideoIntent"];
    v5[10] = [coderCopy decodeBoolForKey:@"videoComplementAllowed"];
    v5[11] = [coderCopy decodeBoolForKey:@"mediumHighQualityAllowed"];
    v5[12] = [coderCopy decodeBoolForKey:@"restrictToPlayableOnCurrentDevice"];
    v5[13] = [coderCopy decodeBoolForKey:@"restrictToStreamable"];
    v5[14] = [coderCopy decodeBoolForKey:@"restrictToEncryptedStream"];
    *(v5 + 5) = [coderCopy decodeIntegerForKey:@"downloadIntent"];
    *(v5 + 6) = [coderCopy decodeIntegerForKey:@"downloadPriority"];
    if (coderCopy)
    {
      [coderCopy decodeCMTimeRangeForKey:@"timeRange"];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    *(v5 + 56) = v7;
    *(v5 + 72) = v8;
    *(v5 + 88) = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deliveryMode = self->_deliveryMode;
  coderCopy = coder;
  [coderCopy encodeInt64:deliveryMode forKey:@"deliveryMode"];
  [coderCopy encodeInt64:self->_version forKey:@"version"];
  [coderCopy encodeBool:self->_networkAccessAllowed forKey:@"networkAccessAllowed"];
  [coderCopy encodeBool:self->_streamingAllowed forKey:@"streamingAllowed"];
  [coderCopy encodeInt64:self->_streamingVideoIntent forKey:@"streamingVideoIntent"];
  [coderCopy encodeBool:self->_videoComplementAllowed forKey:@"videoComplementAllowed"];
  [coderCopy encodeBool:self->_mediumHighQualityAllowed forKey:@"mediumHighQualityAllowed"];
  [coderCopy encodeBool:self->_restrictToPlayableOnCurrentDevice forKey:@"restrictToPlayableOnCurrentDevice"];
  [coderCopy encodeBool:self->_restrictToStreamable forKey:@"restrictToStreamable"];
  [coderCopy encodeBool:self->_restrictToEncryptedStream forKey:@"restrictToEncryptedStream"];
  [coderCopy encodeInteger:self->_downloadIntent forKey:@"downloadIntent"];
  [coderCopy encodeInteger:self->_downloadPriority forKey:@"downloadPriority"];
  v6 = *&self->_timeRange.start.epoch;
  v7[0] = *&self->_timeRange.start.value;
  v7[1] = v6;
  v7[2] = *&self->_timeRange.duration.timescale;
  [coderCopy encodeCMTimeRange:v7 forKey:@"timeRange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHVideoRequestBehaviorSpec);
  [(PHVideoRequestBehaviorSpec *)v4 setDeliveryMode:[(PHVideoRequestBehaviorSpec *)self deliveryMode]];
  [(PHVideoRequestBehaviorSpec *)v4 setVersion:[(PHVideoRequestBehaviorSpec *)self version]];
  [(PHVideoRequestBehaviorSpec *)v4 setNetworkAccessAllowed:[(PHVideoRequestBehaviorSpec *)self isNetworkAccessAllowed]];
  [(PHVideoRequestBehaviorSpec *)v4 setStreamingAllowed:[(PHVideoRequestBehaviorSpec *)self isStreamingAllowed]];
  [(PHVideoRequestBehaviorSpec *)v4 setStreamingVideoIntent:[(PHVideoRequestBehaviorSpec *)self streamingVideoIntent]];
  [(PHVideoRequestBehaviorSpec *)v4 setVideoComplementAllowed:[(PHVideoRequestBehaviorSpec *)self isVideoComplementAllowed]];
  [(PHVideoRequestBehaviorSpec *)v4 setMediumHighQualityAllowed:[(PHVideoRequestBehaviorSpec *)self isMediumHighQualityAllowed]];
  [(PHVideoRequestBehaviorSpec *)v4 setRestrictToPlayableOnCurrentDevice:[(PHVideoRequestBehaviorSpec *)self restrictToPlayableOnCurrentDevice]];
  [(PHVideoRequestBehaviorSpec *)v4 setRestrictToStreamable:[(PHVideoRequestBehaviorSpec *)self restrictToStreamable]];
  [(PHVideoRequestBehaviorSpec *)v4 setRestrictToEncryptedStream:[(PHVideoRequestBehaviorSpec *)self restrictToEncryptedStream]];
  [(PHVideoRequestBehaviorSpec *)v4 setDownloadIntent:[(PHVideoRequestBehaviorSpec *)self downloadIntent]];
  [(PHVideoRequestBehaviorSpec *)v4 setDownloadPriority:[(PHVideoRequestBehaviorSpec *)self downloadPriority]];
  [(PHVideoRequestBehaviorSpec *)self timeRange];
  v6[0] = v6[3];
  v6[1] = v6[4];
  v6[2] = v6[5];
  [(PHVideoRequestBehaviorSpec *)v4 setTimeRange:v6];
  return v4;
}

- (int64_t)videoVersion
{
  version = self->_version;
  if (version == 8)
  {
    return 2;
  }

  else
  {
    return version == 1;
  }
}

- (int64_t)videoDeliveryMode
{
  deliveryMode = self->_deliveryMode;
  if (deliveryMode > 4)
  {
    return 2;
  }

  else
  {
    return qword_19CB29CB8[deliveryMode];
  }
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = @"Y";
  if (self->_networkAccessAllowed)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  if (self->_streamingAllowed)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v22 = _PHStreamingVideoIntentName(self->_streamingVideoIntent);
  v21 = _PHDownloadIntentName(self->_downloadIntent);
  v7 = _PHDownloadPriorityName(self->_downloadPriority);
  version = self->_version;
  v20 = v7;
  if (version == 8)
  {
    v9 = @"penult";
  }

  else if (version == 1)
  {
    v9 = @"orig";
  }

  else if (version)
  {
    v9 = 0;
  }

  else
  {
    v9 = @"curr";
  }

  if (!self->_restrictToPlayableOnCurrentDevice)
  {
    v4 = @"N";
  }

  deliveryMode = self->_deliveryMode;
  if (deliveryMode <= 1)
  {
    if (!deliveryMode)
    {
      v11 = @"auto";
      goto LABEL_31;
    }

    if (deliveryMode == 1)
    {
      v11 = @"high";
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (deliveryMode != 2)
  {
    if (deliveryMode == 4)
    {
      v11 = @"large";
      goto LABEL_31;
    }

    if (deliveryMode == 3)
    {
      v11 = @"fast";
      goto LABEL_31;
    }

LABEL_30:
    v11 = @"unknown";
    goto LABEL_31;
  }

  if (self->_mediumHighQualityAllowed)
  {
    v12 = @"med-hi";
  }

  else
  {
    v12 = @"med";
  }

  v11 = v12;
LABEL_31:
  hasValidTimeRange = [(PHVideoRequestBehaviorSpec *)self hasValidTimeRange];
  if (hasValidTimeRange)
  {
    v14 = *MEMORY[0x1E695E480];
    [(PHVideoRequestBehaviorSpec *)self timeRange];
    v15 = CMTimeRangeCopyDescription(v14, &range);
  }

  else
  {
    v15 = @"none";
  }

  if (self->_restrictToStreamable)
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  if (self->_restrictToEncryptedStream)
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v18 = [v3 stringWithFormat:@"net: %@, stream: %@, streamingIntent: %@, downloadIntent: %@, downloadPriority: %@, ver: %@, playable: %@, delivery: %@, timeRange: %@ streamOnly: %@ encryptedOnly: %@", v5, v6, v22, v21, v20, v9, v4, v11, v15, v16, v17];
  if (hasValidTimeRange)
  {
  }

  return v18;
}

@end