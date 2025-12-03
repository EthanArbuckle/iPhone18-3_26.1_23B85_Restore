@interface VCMediaNegotiationBlob
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)accessNetworkType;
- (unsigned)mediaControlInfoVersion;
- (void)addBandwidthSettings:(id)settings;
- (void)addMultiwayAudioStreams:(id)streams;
- (void)addMultiwayVideoStream:(id)stream;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)formatBandwidthConfig:(int)config maxBanxwidth:(unsigned int)banxwidth bandwidthString:(id)string;
- (void)mergeFrom:(id)from;
- (void)printBandwidthSettingsWithLogFile:(void *)file;
- (void)printCaptionsSettingsWithLogFile:(void *)file;
- (void)printMomentsSettingsWithLogFile:(void *)file;
- (void)printMultiwayAudioStreamsWithLogFile:(void *)file;
- (void)printMultiwayVideoStreamsWithLogFile:(void *)file;
- (void)printWithTitle:(id)title blobSize:(unsigned int)size logFile:(void *)file;
- (void)setHasAccessNetworkType:(BOOL)type;
- (void)setHasAllowDynamicMaxBitrate:(BOOL)bitrate;
- (void)setHasAllowsContentsChangeWithAspectPreservation:(BOOL)preservation;
- (void)setHasBasebandCodecSampleRate:(BOOL)rate;
- (void)setHasBlobVersion:(BOOL)version;
- (void)setHasMediaControlInfoVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlob

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlob *)self setAudioSettings:0];
  [(VCMediaNegotiationBlob *)self setVideoSettings:0];
  [(VCMediaNegotiationBlob *)self setScreenSettings:0];
  [(VCMediaNegotiationBlob *)self setUserAgent:0];
  [(VCMediaNegotiationBlob *)self setBasebandCodec:0];
  [(VCMediaNegotiationBlob *)self setBandwidthSettings:0];
  [(VCMediaNegotiationBlob *)self setCaptionsSettings:0];
  [(VCMediaNegotiationBlob *)self setMultiwayAudioStreams:0];
  [(VCMediaNegotiationBlob *)self setMomentsSettings:0];
  [(VCMediaNegotiationBlob *)self setMultiwayVideoStreams:0];
  [(VCMediaNegotiationBlob *)self setFaceTimeSettings:0];
  [(VCMediaNegotiationBlob *)self setEncryptionSettings:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlob;
  [(VCMediaNegotiationBlob *)&v3 dealloc];
}

- (void)setHasAllowDynamicMaxBitrate:(BOOL)bitrate
{
  if (bitrate)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAllowsContentsChangeWithAspectPreservation:(BOOL)preservation
{
  if (preservation)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasBasebandCodecSampleRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addBandwidthSettings:(id)settings
{
  bandwidthSettings = self->_bandwidthSettings;
  if (!bandwidthSettings)
  {
    bandwidthSettings = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_bandwidthSettings = bandwidthSettings;
  }

  [(NSMutableArray *)bandwidthSettings addObject:settings];
}

- (void)addMultiwayAudioStreams:(id)streams
{
  multiwayAudioStreams = self->_multiwayAudioStreams;
  if (!multiwayAudioStreams)
  {
    multiwayAudioStreams = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_multiwayAudioStreams = multiwayAudioStreams;
  }

  [(NSMutableArray *)multiwayAudioStreams addObject:streams];
}

- (void)setHasBlobVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addMultiwayVideoStream:(id)stream
{
  multiwayVideoStreams = self->_multiwayVideoStreams;
  if (!multiwayVideoStreams)
  {
    multiwayVideoStreams = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_multiwayVideoStreams = multiwayVideoStreams;
  }

  [(NSMutableArray *)multiwayVideoStreams addObject:stream];
}

- (unsigned)mediaControlInfoVersion
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_mediaControlInfoVersion;
  }

  else
  {
    return 1;
  }
}

- (void)setHasMediaControlInfoVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (unsigned)accessNetworkType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_accessNetworkType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAccessNetworkType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlob;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlob description](&v3, sel_description), -[VCMediaNegotiationBlob dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v49 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_allowDynamicMaxBitrate), @"allowDynamicMaxBitrate"}];
    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_allowsContentsChangeWithAspectPreservation), @"allowsContentsChangeWithAspectPreservation"}];
  }

  audioSettings = self->_audioSettings;
  if (audioSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobAudioSettings dictionaryRepresentation](audioSettings forKey:{"dictionaryRepresentation"), @"audioSettings"}];
  }

  videoSettings = self->_videoSettings;
  if (videoSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobVideoSettings dictionaryRepresentation](videoSettings forKey:{"dictionaryRepresentation"), @"videoSettings"}];
  }

  screenSettings = self->_screenSettings;
  if (screenSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobVideoSettings dictionaryRepresentation](screenSettings forKey:{"dictionaryRepresentation"), @"screenSettings"}];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [dictionary setObject:userAgent forKey:@"userAgent"];
  }

  basebandCodec = self->_basebandCodec;
  if (basebandCodec)
  {
    [dictionary setObject:basebandCodec forKey:@"basebandCodec"];
  }

  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_basebandCodecSampleRate), @"basebandCodecSampleRate"}];
  }

  if ([(NSMutableArray *)self->_bandwidthSettings count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bandwidthSettings, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    bandwidthSettings = self->_bandwidthSettings;
    v12 = [(NSMutableArray *)bandwidthSettings countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v46;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(bandwidthSettings);
          }

          [v10 addObject:{objc_msgSend(*(*(&v45 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)bandwidthSettings countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"bandwidthSettings"];
  }

  captionsSettings = self->_captionsSettings;
  if (captionsSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobCaptionsSettings dictionaryRepresentation](captionsSettings forKey:{"dictionaryRepresentation"), @"captionsSettings"}];
  }

  if ([(NSMutableArray *)self->_multiwayAudioStreams count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_multiwayAudioStreams, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    multiwayAudioStreams = self->_multiwayAudioStreams;
    v19 = [(NSMutableArray *)multiwayAudioStreams countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(multiwayAudioStreams);
          }

          [v17 addObject:{objc_msgSend(*(*(&v40 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v20 = [(NSMutableArray *)multiwayAudioStreams countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v20);
    }

    [dictionary setObject:v17 forKey:@"multiwayAudioStreams"];
  }

  momentsSettings = self->_momentsSettings;
  if (momentsSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobMomentsSettings dictionaryRepresentation](momentsSettings forKey:{"dictionaryRepresentation"), @"momentsSettings"}];
  }

  v24 = self->_has;
  if (v24)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_ntpTime), @"ntpTime"}];
    v24 = self->_has;
  }

  if ((v24 & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_blobVersion), @"blobVersion"}];
  }

  if ([(NSMutableArray *)self->_multiwayVideoStreams count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_multiwayVideoStreams, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    multiwayVideoStreams = self->_multiwayVideoStreams;
    v27 = [(NSMutableArray *)multiwayVideoStreams countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(multiwayVideoStreams);
          }

          [v25 addObject:{objc_msgSend(*(*(&v35 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v28 = [(NSMutableArray *)multiwayVideoStreams countByEnumeratingWithState:&v35 objects:v34 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"multiwayVideoStream"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mediaControlInfoVersion), @"mediaControlInfoVersion"}];
  }

  faceTimeSettings = self->_faceTimeSettings;
  if (faceTimeSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationFaceTimeSettings dictionaryRepresentation](faceTimeSettings forKey:{"dictionaryRepresentation"), @"faceTimeSettings"}];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_accessNetworkType), @"accessNetworkType"}];
  }

  encryptionSettings = self->_encryptionSettings;
  if (encryptionSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobMediaEncryptionSettings dictionaryRepresentation](encryptionSettings forKey:{"dictionaryRepresentation"), @"encryptionSettings"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_audioSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_videoSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_screenSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_basebandCodec)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  bandwidthSettings = self->_bandwidthSettings;
  v6 = [(NSMutableArray *)bandwidthSettings countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(bandwidthSettings);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)bandwidthSettings countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v7);
  }

  if (self->_captionsSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  multiwayAudioStreams = self->_multiwayAudioStreams;
  v11 = [(NSMutableArray *)multiwayAudioStreams countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(multiwayAudioStreams);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)multiwayAudioStreams countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v12);
  }

  if (self->_momentsSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = self->_has;
  if (v15)
  {
    PBDataWriterWriteUint64Field();
    v15 = self->_has;
  }

  if ((v15 & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  multiwayVideoStreams = self->_multiwayVideoStreams;
  v17 = [(NSMutableArray *)multiwayVideoStreams countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(multiwayVideoStreams);
        }

        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)multiwayVideoStreams countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_faceTimeSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_encryptionSettings)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(to + 136) = self->_allowDynamicMaxBitrate;
    *(to + 140) |= 0x20u;
    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    *(to + 137) = self->_allowsContentsChangeWithAspectPreservation;
    *(to + 140) |= 0x40u;
  }

  if (self->_audioSettings)
  {
    [to setAudioSettings:?];
  }

  if (self->_videoSettings)
  {
    [to setVideoSettings:?];
  }

  if (self->_screenSettings)
  {
    [to setScreenSettings:?];
  }

  if (self->_userAgent)
  {
    [to setUserAgent:?];
  }

  if (self->_basebandCodec)
  {
    [to setBasebandCodec:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(to + 12) = self->_basebandCodecSampleRate;
    *(to + 140) |= 4u;
  }

  if ([(VCMediaNegotiationBlob *)self bandwidthSettingsCount])
  {
    [to clearBandwidthSettings];
    bandwidthSettingsCount = [(VCMediaNegotiationBlob *)self bandwidthSettingsCount];
    if (bandwidthSettingsCount)
    {
      v7 = bandwidthSettingsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addBandwidthSettings:{-[VCMediaNegotiationBlob bandwidthSettingsAtIndex:](self, "bandwidthSettingsAtIndex:", i)}];
      }
    }
  }

  if (self->_captionsSettings)
  {
    [to setCaptionsSettings:?];
  }

  if ([(VCMediaNegotiationBlob *)self multiwayAudioStreamsCount])
  {
    [to clearMultiwayAudioStreams];
    multiwayAudioStreamsCount = [(VCMediaNegotiationBlob *)self multiwayAudioStreamsCount];
    if (multiwayAudioStreamsCount)
    {
      v10 = multiwayAudioStreamsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addMultiwayAudioStreams:{-[VCMediaNegotiationBlob multiwayAudioStreamsAtIndex:](self, "multiwayAudioStreamsAtIndex:", j)}];
      }
    }
  }

  if (self->_momentsSettings)
  {
    [to setMomentsSettings:?];
  }

  v12 = self->_has;
  if (v12)
  {
    *(to + 1) = self->_ntpTime;
    *(to + 140) |= 1u;
    v12 = self->_has;
  }

  if ((v12 & 8) != 0)
  {
    *(to + 13) = self->_blobVersion;
    *(to + 140) |= 8u;
  }

  if ([(VCMediaNegotiationBlob *)self multiwayVideoStreamsCount])
  {
    [to clearMultiwayVideoStreams];
    multiwayVideoStreamsCount = [(VCMediaNegotiationBlob *)self multiwayVideoStreamsCount];
    if (multiwayVideoStreamsCount)
    {
      v14 = multiwayVideoStreamsCount;
      for (k = 0; k != v14; ++k)
      {
        [to addMultiwayVideoStream:{-[VCMediaNegotiationBlob multiwayVideoStreamAtIndex:](self, "multiwayVideoStreamAtIndex:", k)}];
      }
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(to + 20) = self->_mediaControlInfoVersion;
    *(to + 140) |= 0x10u;
  }

  if (self->_faceTimeSettings)
  {
    [to setFaceTimeSettings:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 4) = self->_accessNetworkType;
    *(to + 140) |= 2u;
  }

  if (self->_encryptionSettings)
  {

    [to setEncryptionSettings:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 136) = self->_allowDynamicMaxBitrate;
    *(v5 + 140) |= 0x20u;
    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    *(v5 + 137) = self->_allowsContentsChangeWithAspectPreservation;
    *(v5 + 140) |= 0x40u;
  }

  *(v6 + 24) = [(VCMediaNegotiationBlobAudioSettings *)self->_audioSettings copyWithZone:zone];
  *(v6 + 128) = [(VCMediaNegotiationBlobVideoSettings *)self->_videoSettings copyWithZone:zone];

  *(v6 + 112) = [(VCMediaNegotiationBlobVideoSettings *)self->_screenSettings copyWithZone:zone];
  *(v6 + 120) = [(NSString *)self->_userAgent copyWithZone:zone];

  *(v6 + 40) = [(NSString *)self->_basebandCodec copyWithZone:zone];
  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 48) = self->_basebandCodecSampleRate;
    *(v6 + 140) |= 4u;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  bandwidthSettings = self->_bandwidthSettings;
  v9 = [(NSMutableArray *)bandwidthSettings countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(bandwidthSettings);
        }

        v13 = [*(*(&v39 + 1) + 8 * i) copyWithZone:zone];
        [v6 addBandwidthSettings:v13];
      }

      v10 = [(NSMutableArray *)bandwidthSettings countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v10);
  }

  *(v6 + 56) = [(VCMediaNegotiationBlobCaptionsSettings *)self->_captionsSettings copyWithZone:zone];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  multiwayAudioStreams = self->_multiwayAudioStreams;
  v15 = [(NSMutableArray *)multiwayAudioStreams countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(multiwayAudioStreams);
        }

        v19 = [*(*(&v34 + 1) + 8 * j) copyWithZone:zone];
        [v6 addMultiwayAudioStreams:v19];
      }

      v16 = [(NSMutableArray *)multiwayAudioStreams countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v16);
  }

  *(v6 + 88) = [(VCMediaNegotiationBlobMomentsSettings *)self->_momentsSettings copyWithZone:zone];
  v20 = self->_has;
  if (v20)
  {
    *(v6 + 8) = self->_ntpTime;
    *(v6 + 140) |= 1u;
    v20 = self->_has;
  }

  if ((v20 & 8) != 0)
  {
    *(v6 + 52) = self->_blobVersion;
    *(v6 + 140) |= 8u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  multiwayVideoStreams = self->_multiwayVideoStreams;
  v22 = [(NSMutableArray *)multiwayVideoStreams countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(multiwayVideoStreams);
        }

        v26 = [*(*(&v29 + 1) + 8 * k) copyWithZone:zone];
        [v6 addMultiwayVideoStream:v26];
      }

      v23 = [(NSMutableArray *)multiwayVideoStreams countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v23);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 80) = self->_mediaControlInfoVersion;
    *(v6 + 140) |= 0x10u;
  }

  *(v6 + 72) = [(VCMediaNegotiationFaceTimeSettings *)self->_faceTimeSettings copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_accessNetworkType;
    *(v6 + 140) |= 2u;
  }

  *(v6 + 64) = [(VCMediaNegotiationBlobMediaEncryptionSettings *)self->_encryptionSettings copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equal + 140) & 0x20) == 0)
    {
      goto LABEL_69;
    }

    if (self->_allowDynamicMaxBitrate)
    {
      if ((*(equal + 136) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(equal + 136))
    {
      goto LABEL_69;
    }
  }

  else if ((*(equal + 140) & 0x20) != 0)
  {
    goto LABEL_69;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equal + 140) & 0x40) != 0)
    {
      if (self->_allowsContentsChangeWithAspectPreservation)
      {
        if ((*(equal + 137) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else if (*(equal + 137))
      {
        goto LABEL_69;
      }

      goto LABEL_6;
    }

LABEL_69:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 140) & 0x40) != 0)
  {
    goto LABEL_69;
  }

LABEL_6:
  audioSettings = self->_audioSettings;
  if (!(audioSettings | *(equal + 3)) || (v5 = [(VCMediaNegotiationBlobAudioSettings *)audioSettings isEqual:?]) != 0)
  {
    videoSettings = self->_videoSettings;
    if (!(videoSettings | *(equal + 16)) || (v5 = [(VCMediaNegotiationBlobVideoSettings *)videoSettings isEqual:?]) != 0)
    {
      screenSettings = self->_screenSettings;
      if (!(screenSettings | *(equal + 14)) || (v5 = [(VCMediaNegotiationBlobVideoSettings *)screenSettings isEqual:?]) != 0)
      {
        userAgent = self->_userAgent;
        if (!(userAgent | *(equal + 15)) || (v5 = [(NSString *)userAgent isEqual:?]) != 0)
        {
          basebandCodec = self->_basebandCodec;
          if (!(basebandCodec | *(equal + 5)) || (v5 = [(NSString *)basebandCodec isEqual:?]) != 0)
          {
            if ((*&self->_has & 4) != 0)
            {
              if ((*(equal + 140) & 4) == 0 || self->_basebandCodecSampleRate != *(equal + 12))
              {
                goto LABEL_69;
              }
            }

            else if ((*(equal + 140) & 4) != 0)
            {
              goto LABEL_69;
            }

            bandwidthSettings = self->_bandwidthSettings;
            if (!(bandwidthSettings | *(equal + 4)) || (v5 = [(NSMutableArray *)bandwidthSettings isEqual:?]) != 0)
            {
              captionsSettings = self->_captionsSettings;
              if (!(captionsSettings | *(equal + 7)) || (v5 = [(VCMediaNegotiationBlobCaptionsSettings *)captionsSettings isEqual:?]) != 0)
              {
                multiwayAudioStreams = self->_multiwayAudioStreams;
                if (!(multiwayAudioStreams | *(equal + 12)) || (v5 = [(NSMutableArray *)multiwayAudioStreams isEqual:?]) != 0)
                {
                  momentsSettings = self->_momentsSettings;
                  if (!(momentsSettings | *(equal + 11)) || (v5 = [(VCMediaNegotiationBlobMomentsSettings *)momentsSettings isEqual:?]) != 0)
                  {
                    has = self->_has;
                    if (has)
                    {
                      if ((*(equal + 140) & 1) == 0 || self->_ntpTime != *(equal + 1))
                      {
                        goto LABEL_69;
                      }
                    }

                    else if (*(equal + 140))
                    {
                      goto LABEL_69;
                    }

                    if ((*&self->_has & 8) != 0)
                    {
                      if ((*(equal + 140) & 8) == 0 || self->_blobVersion != *(equal + 13))
                      {
                        goto LABEL_69;
                      }
                    }

                    else if ((*(equal + 140) & 8) != 0)
                    {
                      goto LABEL_69;
                    }

                    multiwayVideoStreams = self->_multiwayVideoStreams;
                    if (multiwayVideoStreams | *(equal + 13))
                    {
                      v5 = [(NSMutableArray *)multiwayVideoStreams isEqual:?];
                      if (!v5)
                      {
                        return v5;
                      }

                      has = self->_has;
                    }

                    if ((has & 0x10) != 0)
                    {
                      if ((*(equal + 140) & 0x10) == 0 || self->_mediaControlInfoVersion != *(equal + 20))
                      {
                        goto LABEL_69;
                      }
                    }

                    else if ((*(equal + 140) & 0x10) != 0)
                    {
                      goto LABEL_69;
                    }

                    faceTimeSettings = self->_faceTimeSettings;
                    if (faceTimeSettings | *(equal + 9))
                    {
                      v5 = [(VCMediaNegotiationFaceTimeSettings *)faceTimeSettings isEqual:?];
                      if (!v5)
                      {
                        return v5;
                      }

                      has = self->_has;
                    }

                    if ((has & 2) != 0)
                    {
                      if ((*(equal + 140) & 2) == 0 || self->_accessNetworkType != *(equal + 4))
                      {
                        goto LABEL_69;
                      }
                    }

                    else if ((*(equal + 140) & 2) != 0)
                    {
                      goto LABEL_69;
                    }

                    encryptionSettings = self->_encryptionSettings;
                    if (encryptionSettings | *(equal + 8))
                    {

                      LOBYTE(v5) = [(VCMediaNegotiationBlobMediaEncryptionSettings *)encryptionSettings isEqual:?];
                    }

                    else
                    {
                      LOBYTE(v5) = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v21 = 2654435761 * self->_allowDynamicMaxBitrate;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v20 = 2654435761 * self->_allowsContentsChangeWithAspectPreservation;
      goto LABEL_6;
    }
  }

  v20 = 0;
LABEL_6:
  v19 = [(VCMediaNegotiationBlobAudioSettings *)self->_audioSettings hash];
  v18 = [(VCMediaNegotiationBlobVideoSettings *)self->_videoSettings hash];
  v17 = [(VCMediaNegotiationBlobVideoSettings *)self->_screenSettings hash];
  v16 = [(NSString *)self->_userAgent hash];
  v15 = [(NSString *)self->_basebandCodec hash];
  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_basebandCodecSampleRate;
  }

  else
  {
    v14 = 0;
  }

  v13 = [(NSMutableArray *)self->_bandwidthSettings hash];
  v3 = [(VCMediaNegotiationBlobCaptionsSettings *)self->_captionsSettings hash];
  v4 = [(NSMutableArray *)self->_multiwayAudioStreams hash];
  v5 = [(VCMediaNegotiationBlobMomentsSettings *)self->_momentsSettings hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_ntpTime;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_11:
      v7 = 2654435761 * self->_blobVersion;
      goto LABEL_14;
    }
  }

  v7 = 0;
LABEL_14:
  v8 = [(NSMutableArray *)self->_multiwayVideoStreams hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = 2654435761 * self->_mediaControlInfoVersion;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(VCMediaNegotiationFaceTimeSettings *)self->_faceTimeSettings hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_accessNetworkType;
  }

  else
  {
    v11 = 0;
  }

  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(VCMediaNegotiationBlobMediaEncryptionSettings *)self->_encryptionSettings hash];
}

- (void)mergeFrom:(id)from
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = *(from + 140);
  if ((v5 & 0x20) != 0)
  {
    self->_allowDynamicMaxBitrate = *(from + 136);
    *&self->_has |= 0x20u;
    v5 = *(from + 140);
  }

  if ((v5 & 0x40) != 0)
  {
    self->_allowsContentsChangeWithAspectPreservation = *(from + 137);
    *&self->_has |= 0x40u;
  }

  audioSettings = self->_audioSettings;
  v7 = *(from + 3);
  if (audioSettings)
  {
    if (v7)
    {
      [(VCMediaNegotiationBlobAudioSettings *)audioSettings mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(VCMediaNegotiationBlob *)self setAudioSettings:?];
  }

  videoSettings = self->_videoSettings;
  v9 = *(from + 16);
  if (videoSettings)
  {
    if (v9)
    {
      [(VCMediaNegotiationBlobVideoSettings *)videoSettings mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(VCMediaNegotiationBlob *)self setVideoSettings:?];
  }

  screenSettings = self->_screenSettings;
  v11 = *(from + 14);
  if (screenSettings)
  {
    if (v11)
    {
      [(VCMediaNegotiationBlobVideoSettings *)screenSettings mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(VCMediaNegotiationBlob *)self setScreenSettings:?];
  }

  if (*(from + 15))
  {
    [(VCMediaNegotiationBlob *)self setUserAgent:?];
  }

  if (*(from + 5))
  {
    [(VCMediaNegotiationBlob *)self setBasebandCodec:?];
  }

  if ((*(from + 140) & 4) != 0)
  {
    self->_basebandCodecSampleRate = *(from + 12);
    *&self->_has |= 4u;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = *(from + 4);
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v48;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(VCMediaNegotiationBlob *)self addBandwidthSettings:*(*(&v47 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v47 objects:v46 count:16];
    }

    while (v14);
  }

  captionsSettings = self->_captionsSettings;
  v18 = *(from + 7);
  if (captionsSettings)
  {
    if (v18)
    {
      [(VCMediaNegotiationBlobCaptionsSettings *)captionsSettings mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(VCMediaNegotiationBlob *)self setCaptionsSettings:?];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = *(from + 12);
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(VCMediaNegotiationBlob *)self addMultiwayAudioStreams:*(*(&v42 + 1) + 8 * j)];
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v21);
  }

  momentsSettings = self->_momentsSettings;
  v25 = *(from + 11);
  if (momentsSettings)
  {
    if (v25)
    {
      [(VCMediaNegotiationBlobMomentsSettings *)momentsSettings mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(VCMediaNegotiationBlob *)self setMomentsSettings:?];
  }

  v26 = *(from + 140);
  if (v26)
  {
    self->_ntpTime = *(from + 1);
    *&self->_has |= 1u;
    v26 = *(from + 140);
  }

  if ((v26 & 8) != 0)
  {
    self->_blobVersion = *(from + 13);
    *&self->_has |= 8u;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = *(from + 13);
  v28 = [v27 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v38;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(VCMediaNegotiationBlob *)self addMultiwayVideoStream:*(*(&v37 + 1) + 8 * k)];
      }

      v29 = [v27 countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v29);
  }

  if ((*(from + 140) & 0x10) != 0)
  {
    self->_mediaControlInfoVersion = *(from + 20);
    *&self->_has |= 0x10u;
  }

  faceTimeSettings = self->_faceTimeSettings;
  v33 = *(from + 9);
  if (faceTimeSettings)
  {
    if (v33)
    {
      [(VCMediaNegotiationFaceTimeSettings *)faceTimeSettings mergeFrom:?];
    }
  }

  else if (v33)
  {
    [(VCMediaNegotiationBlob *)self setFaceTimeSettings:?];
  }

  if ((*(from + 140) & 2) != 0)
  {
    self->_accessNetworkType = *(from + 4);
    *&self->_has |= 2u;
  }

  encryptionSettings = self->_encryptionSettings;
  v35 = *(from + 8);
  if (encryptionSettings)
  {
    if (v35)
    {
      [(VCMediaNegotiationBlobMediaEncryptionSettings *)encryptionSettings mergeFrom:?];
    }
  }

  else if (v35)
  {
    [(VCMediaNegotiationBlob *)self setEncryptionSettings:?];
  }
}

- (void)formatBandwidthConfig:(int)config maxBanxwidth:(unsigned int)banxwidth bandwidthString:(id)string
{
  v6 = *&banxwidth;
  if (config <= 1023)
  {
    if (config <= 15)
    {
      if (config <= 1)
      {
        if (!config)
        {
          v7 = @"mode_Invalid";
          goto LABEL_55;
        }

        if (config == 1)
        {
          v7 = @"mode_Default_Wifi";
          goto LABEL_55;
        }
      }

      else
      {
        switch(config)
        {
          case 2:
            v7 = @"mode_Default_LTE";
            goto LABEL_55;
          case 4:
            v7 = @"mode_FaceTime_Wifi";
            goto LABEL_55;
          case 8:
            v7 = @"mode_FaceTime_LTE";
            goto LABEL_55;
        }
      }
    }

    else if (config > 127)
    {
      switch(config)
      {
        case 128:
          v7 = @"mode_Screen_3G";
          goto LABEL_55;
        case 256:
          v7 = @"mode_Default_3G";
          goto LABEL_55;
        case 512:
          v7 = @"mode_FaceTime_2G";
          goto LABEL_55;
      }
    }

    else
    {
      switch(config)
      {
        case 16:
          v7 = @"mode_Screen_Wifi";
          goto LABEL_55;
        case 32:
          v7 = @"mode_Screen_LTE";
          goto LABEL_55;
        case 64:
          v7 = @"mode_FaceTime_3G";
          goto LABEL_55;
      }
    }
  }

  else if (config >= 0x10000)
  {
    if (config >= 0x80000)
    {
      switch(config)
      {
        case 0x80000:
          v7 = @"mode_ImmersiveVideo_WiFi";
          goto LABEL_55;
        case 0x100000:
          v7 = @"mode_ImmersiveVideo_Wired";
          goto LABEL_55;
        case 0x1FFFFF:
          v7 = @"mode_SUPPORTED";
          goto LABEL_55;
      }
    }

    else
    {
      switch(config)
      {
        case 0x10000:
          v7 = @"mode_RemoteCamera_USB";
          goto LABEL_55;
        case 0x20000:
          v7 = @"mode_MultiwayScreen_Wifi";
          goto LABEL_55;
        case 0x40000:
          v7 = @"mode_LowLatencyScreen_Wired";
          goto LABEL_55;
      }
    }
  }

  else if (config >= 0x2000)
  {
    switch(config)
    {
      case 0x2000:
        v7 = @"mode_iPadCompanion_USB";
        goto LABEL_55;
      case 0x4000:
        v7 = @"mode_FaceTime_5G";
        goto LABEL_55;
      case 0x8000:
        v7 = @"mode_RemoteCamera_AWDL";
        goto LABEL_55;
    }
  }

  else
  {
    switch(config)
    {
      case 1024:
        v7 = @"mode_Screen_2G";
        goto LABEL_55;
      case 2048:
        v7 = @"mode_Default_2G";
        goto LABEL_55;
      case 4096:
        v7 = @"mode_iPadCompanion_AWDL";
        goto LABEL_55;
    }
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&config];
LABEL_55:
  v8 = [(__CFString *)v7 componentsSeparatedByString:@"_"];
  if ([v8 count] == 3)
  {
    [string appendFormat:@" %@(%@)=%u, ", objc_msgSend(v8, "objectAtIndex:", 1), objc_msgSend(v8, "objectAtIndex:", 2), v6];
  }
}

- (void)printBandwidthSettingsWithLogFile:(void *)file
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"Bandwidth Settings:"];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  bandwidthSettings = self->_bandwidthSettings;
  v6 = [(NSMutableArray *)bandwidthSettings countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(bandwidthSettings);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        configuration = [v10 configuration];
        if (configuration)
        {
          v12 = configuration;
          v13 = 1;
          do
          {
            if ((v12 & v13) != 0)
            {
              -[VCMediaNegotiationBlob formatBandwidthConfig:maxBanxwidth:bandwidthString:](self, "formatBandwidthConfig:maxBanxwidth:bandwidthString:", [v10 configuration], objc_msgSend(v10, "maxBandwidth"), v4);
            }

            v12 &= ~v13;
            v13 *= 2;
          }

          while (v12);
        }
      }

      v7 = [(NSMutableArray *)bandwidthSettings countByEnumeratingWithState:&v47 objects:v46 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = self->_bandwidthSettings;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v42 + 1) + 8 * j);
        configurationExtension = [v19 configurationExtension];
        if (configurationExtension)
        {
          v21 = configurationExtension;
          v22 = 1;
          do
          {
            if ((v21 & v22) != 0)
            {
              -[VCMediaNegotiationBlob formatBandwidthConfig:maxBanxwidth:bandwidthString:](self, "formatBandwidthConfig:maxBanxwidth:bandwidthString:", [v19 configurationExtension], objc_msgSend(v19, "maxBandwidth"), v4);
            }

            v21 &= ~v22;
            v22 *= 2;
          }

          while (v21);
        }
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v16);
  }

  v23 = [objc_msgSend(v4 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @", ")), "UTF8String"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v34 = v30;
      v35 = 2080;
      v36 = "[VCMediaNegotiationBlob(Utils) printBandwidthSettingsWithLogFile:]";
      v37 = 1024;
      v38 = 65;
      v39 = 2080;
      v40 = v23;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob - %s", buf, 0x26u);
    }
  }

  VRLogfilePrintWithTimestamp(file, "Media Blob - %s\n", v24, v25, v26, v27, v28, v29, v23);
}

- (void)printCaptionsSettingsWithLogFile:(void *)file
{
  v36 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      canDisplayCaptions = [(VCMediaNegotiationBlobCaptionsSettings *)self->_captionsSettings canDisplayCaptions];
      *buf = 136315906;
      v29 = v5;
      v30 = 2080;
      v31 = "[VCMediaNegotiationBlob(Utils) printCaptionsSettingsWithLogFile:]";
      v32 = 1024;
      v33 = 70;
      v34 = 1024;
      LODWORD(v35) = canDisplayCaptions;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob - Captions Settings: canDisplayCaptions=%d", buf, 0x22u);
    }
  }

  canDisplayCaptions2 = [(VCMediaNegotiationBlobCaptionsSettings *)self->_captionsSettings canDisplayCaptions];
  VRLogfilePrintWithTimestamp(file, "Media Blob - Captions Settings: canDisplayCaptions=%d\n", v9, v10, v11, v12, v13, v14, canDisplayCaptions2);
  if ([(VCMediaNegotiationBlobCaptionsSettings *)self->_captionsSettings hasSenderLanguages])
  {
    v15 = [MEMORY[0x1E696AD60] stringWithFormat:@"Sender languages:"];
    v16 = 1;
    do
    {
      v17 = v16;
      if (([(VCMediaNegotiationBlobCaptionsSettings *)self->_captionsSettings senderLanguages]& v16) != 0)
      {
        if ((v17 - 1) >= 3)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
        }

        else
        {
          v18 = off_1E85F9458[(v17 - 1)];
        }

        [v15 appendFormat:@" %@, ", v18];
      }

      v16 = (2 * v17);
    }

    while ((v17 & 1) != 0);
    v19 = [objc_msgSend(v15 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @", ")), "UTF8String"}];
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = v26;
        v30 = 2080;
        v31 = "[VCMediaNegotiationBlob(Utils) printCaptionsSettingsWithLogFile:]";
        v32 = 1024;
        v33 = 82;
        v34 = 2080;
        v35 = v19;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s", buf, 0x26u);
      }
    }

    VRLogfilePrintWithTimestamp(file, "Media Blob -     %s\n", v20, v21, v22, v23, v24, v25, v19);
  }
}

- (void)printMomentsSettingsWithLogFile:(void *)file
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"Moments Settings:"];
  v5 = 1;
  do
  {
    if (([(VCMediaNegotiationBlobMomentsSettings *)self->_momentsSettings capabilities]& v5) == 0)
    {
      goto LABEL_14;
    }

    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v6 = @"history_video";
        goto LABEL_13;
      }

      if (v5 != 119)
      {
        goto LABEL_10;
      }

      v6 = @"supported";
    }

    else
    {
      if (v5 == 1)
      {
        v6 = @"no_history";
        goto LABEL_13;
      }

      if (v5 != 2)
      {
LABEL_10:
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v5];
        goto LABEL_13;
      }

      v6 = @"history_image";
    }

LABEL_13:
    [v4 appendFormat:@" %@, ", v6];
LABEL_14:
    v7 = (v5 & 0x3B) == 0;
    v5 = (2 * v5);
  }

  while (!v7);
  v8 = 1;
  do
  {
    v9 = v8;
    if (([(VCMediaNegotiationBlobMomentsSettings *)self->_momentsSettings supportedVideoCodecs]& v8) != 0)
    {
      if ((v9 - 1) >= 3)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v9];
      }

      else
      {
        v10 = off_1E85F9470[(v9 - 1)];
      }

      [v4 appendFormat:@" %@, ", v10];
    }

    v8 = (2 * v9);
  }

  while ((v9 & 1) != 0);
  v11 = 1;
  do
  {
    v12 = v11;
    if (([(VCMediaNegotiationBlobMomentsSettings *)self->_momentsSettings supportedImageTypes]& v11) != 0)
    {
      if ((v12 - 1) >= 3)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
      }

      else
      {
        v13 = off_1E85F9488[(v12 - 1)];
      }

      [v4 appendFormat:@" %@, ", v13];
    }

    v11 = (2 * v12);
  }

  while ((v12 & 1) != 0);
  v14 = [objc_msgSend(v4 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @", ")), "UTF8String"}];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v25 = v21;
      v26 = 2080;
      v27 = "[VCMediaNegotiationBlob(Utils) printMomentsSettingsWithLogFile:]";
      v28 = 1024;
      v29 = 106;
      v30 = 2080;
      v31 = v14;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s", buf, 0x26u);
    }
  }

  VRLogfilePrintWithTimestamp(file, "Media Blob -     %s\n", v15, v16, v17, v18, v19, v20, v14);
}

- (void)printMultiwayAudioStreamsWithLogFile:(void *)file
{
  v33 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSMutableArray *)self->_multiwayAudioStreams count];
      *buf = 136315906;
      v26 = v5;
      v27 = 2080;
      v28 = "[VCMediaNegotiationBlob(Utils) printMultiwayAudioStreamsWithLogFile:]";
      v29 = 1024;
      v30 = 111;
      v31 = 1024;
      v32 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob - Multiway Audio: count=%d", buf, 0x22u);
    }
  }

  v8 = [(NSMutableArray *)self->_multiwayAudioStreams count];
  VRLogfilePrintWithTimestamp(file, "Media Blob - Multiway Audio: count=%d\n", v9, v10, v11, v12, v13, v14, v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  multiwayAudioStreams = self->_multiwayAudioStreams;
  v16 = [(NSMutableArray *)multiwayAudioStreams countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(multiwayAudioStreams);
        }

        [*(*(&v21 + 1) + 8 * v19++) printWithLogFile:file];
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)multiwayAudioStreams countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v17);
  }
}

- (void)printMultiwayVideoStreamsWithLogFile:(void *)file
{
  v33 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSMutableArray *)self->_multiwayVideoStreams count];
      *buf = 136315906;
      v26 = v5;
      v27 = 2080;
      v28 = "[VCMediaNegotiationBlob(Utils) printMultiwayVideoStreamsWithLogFile:]";
      v29 = 1024;
      v30 = 119;
      v31 = 1024;
      v32 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob - Multiway Video: count=%d", buf, 0x22u);
    }
  }

  v8 = [(NSMutableArray *)self->_multiwayVideoStreams count];
  VRLogfilePrintWithTimestamp(file, "Media Blob - Multiway Video: count=%d\n", v9, v10, v11, v12, v13, v14, v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  multiwayVideoStreams = self->_multiwayVideoStreams;
  v16 = [(NSMutableArray *)multiwayVideoStreams countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(multiwayVideoStreams);
        }

        [*(*(&v21 + 1) + 8 * v19++) printWithLogFile:file];
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)multiwayVideoStreams countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v17);
  }
}

- (void)printWithTitle:(id)title blobSize:(unsigned int)size logFile:(void *)file
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ (size=%u): UserAgent=%s", title, *&size, -[NSString UTF8String](self->_userAgent, "UTF8String")];
  if ([(VCMediaNegotiationBlob *)self hasBasebandCodec])
  {
    [v7 appendFormat:@", basebandCodec=%@, basebandCodecSampleRate=%u", self->_basebandCodec, self->_basebandCodecSampleRate];
  }

  if ([(VCMediaNegotiationBlob *)self hasAllowDynamicMaxBitrate])
  {
    [v7 appendFormat:@", allowDynamicMaxBitrate=%d", self->_allowDynamicMaxBitrate];
  }

  if ([(VCMediaNegotiationBlob *)self hasAllowsContentsChangeWithAspectPreservation])
  {
    [v7 appendFormat:@", allowsContentsChangeWithAspectPreservation=%d", self->_allowsContentsChangeWithAspectPreservation];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = v8;
      v19 = 2080;
      v20 = "[VCMediaNegotiationBlob(Utils) printWithTitle:blobSize:logFile:]";
      v21 = 1024;
      v22 = 137;
      v23 = 2080;
      uTF8String = [v7 UTF8String];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob - %s", buf, 0x26u);
    }
  }

  uTF8String2 = [v7 UTF8String];
  VRLogfilePrintWithTimestamp(file, "Media Blob - %s\n", v11, v12, v13, v14, v15, v16, uTF8String2);
  if ([(VCMediaNegotiationBlob *)self hasAudioSettings])
  {
    [(VCMediaNegotiationBlobAudioSettings *)self->_audioSettings printWithLogFile:file];
  }

  if ([(VCMediaNegotiationBlob *)self hasVideoSettings])
  {
    [(VCMediaNegotiationBlobVideoSettings *)self->_videoSettings printVideoWithLogFile:file];
  }

  if ([(VCMediaNegotiationBlob *)self hasScreenSettings])
  {
    [(VCMediaNegotiationBlobVideoSettings *)self->_screenSettings printScreenWithLogFile:file];
  }

  if ([(NSMutableArray *)self->_bandwidthSettings count])
  {
    [(VCMediaNegotiationBlob *)self printBandwidthSettingsWithLogFile:file];
  }

  if ([(VCMediaNegotiationBlob *)self hasCaptionsSettings])
  {
    [(VCMediaNegotiationBlob *)self printCaptionsSettingsWithLogFile:file];
  }

  if ([(VCMediaNegotiationBlob *)self hasMomentsSettings])
  {
    [(VCMediaNegotiationBlob *)self printMomentsSettingsWithLogFile:file];
  }

  if ([(NSMutableArray *)self->_multiwayAudioStreams count])
  {
    [(VCMediaNegotiationBlob *)self printMultiwayAudioStreamsWithLogFile:file];
  }

  if ([(NSMutableArray *)self->_multiwayVideoStreams count])
  {
    [(VCMediaNegotiationBlob *)self printMultiwayVideoStreamsWithLogFile:file];
  }
}

@end