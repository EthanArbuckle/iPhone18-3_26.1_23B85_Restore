@interface VCMediaNegotiationBlobVideoSettings
+ (unsigned)hdrModesBitmapWithSupportedModes:(id)modes;
+ (unsigned)storePixelFormatsInBitMap:(id)map;
- (BOOL)isEqual:(id)equal;
- (BOOL)setVideoRuleCollections:(id)collections featureStrings:(id)strings isScreen:(BOOL)screen isCellular16x9Capable:(BOOL)capable;
- (VCMediaNegotiationBlobVideoSettings)initWithSSRC:(unsigned int)c allowRTCPFB:(BOOL)b videoRuleCollections:(id)collections featureStrings:(id)strings isCellular16x9Capable:(BOOL)capable tilesPerFrame:(unsigned int)frame ltrpEnabled:(BOOL)enabled pixelFormats:(id)self0 hdrModesSupported:(id)self1 customVideoWidth:(unsigned int)self2 customVideoHeight:(unsigned int)self3 enableInterleavedEncoding:(BOOL)self4;
- (VCMediaNegotiationBlobVideoSettings)initWithScreenSSRC:(unsigned int)c allowRTCPFB:(BOOL)b videoRuleCollections:(id)collections featureStrings:(id)strings isCellular16x9Capable:(BOOL)capable customVideoWidth:(unsigned int)width customVideoHeight:(unsigned int)height tilesPerFrame:(unsigned int)self0 ltrpEnabled:(BOOL)self1 pixelFormats:(id)self2 hdrModesSupported:(id)self3 fecEnabled:(BOOL)self4 rtxEnabled:(BOOL)self5 blackFrameOnClearScreenEnabled:(BOOL)self6 foveationSupported:(BOOL)self7;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)getPayloadSettingsForPayload:(int)payload;
- (id)newCameraConfiguration;
- (id)newFeatureStrings;
- (id)newScreenConfigurationWithCameraConfiguration:(id)configuration;
- (id)newVideoRuleCollectionsForScreen:(BOOL)screen isCellular16x9Capable:(BOOL)capable isLocalConfig:(BOOL)config;
- (id)parameterSetStringFromPayloadSettings:(id)settings;
- (unint64_t)hash;
- (unsigned)customVideoHeight;
- (unsigned)customVideoWidth;
- (unsigned)tilesPerFrame;
- (void)addVideoPayloadCollections:(id)collections;
- (void)checkAndInsertRuleWithWidth:(unsigned int)width height:(unsigned int)height framerate:(int)framerate payload:(int)payload priority:(double)priority negotiationBitfield:(unsigned int *)bitfield negotiationBit:(unsigned int)bit rules:(id)self0 isCellular16x9Capable:(BOOL)self1;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)prepareFormatString:(id)string format:(id)format formatIndex:(unsigned int)index preferredFormat:(unsigned int)preferredFormat;
- (void)printScreenWithLogFile:(void *)file;
- (void)printVideoWithLogFile:(void *)file;
- (void)setHasBlackFrameOnClearScreenEnabled:(BOOL)enabled;
- (void)setHasCustomVideoWidth:(BOOL)width;
- (void)setHasEnableInterleavedEncoding:(BOOL)encoding;
- (void)setHasFecEnabled:(BOOL)enabled;
- (void)setHasFoveationSupported:(BOOL)supported;
- (void)setHasHdrModesSupported:(BOOL)supported;
- (void)setHasLtrpEnabled:(BOOL)enabled;
- (void)setHasPixelFormats:(BOOL)formats;
- (void)setHasRtxEnabled:(BOOL)enabled;
- (void)setHasTilesPerFrame:(BOOL)frame;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobVideoSettings

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobVideoSettings *)self setVideoPayloadCollections:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobVideoSettings;
  [(VCMediaNegotiationBlobVideoSettings *)&v3 dealloc];
}

- (void)addVideoPayloadCollections:(id)collections
{
  videoPayloadCollections = self->_videoPayloadCollections;
  if (!videoPayloadCollections)
  {
    videoPayloadCollections = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_videoPayloadCollections = videoPayloadCollections;
  }

  [(NSMutableArray *)videoPayloadCollections addObject:collections];
}

- (unsigned)customVideoWidth
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_customVideoWidth;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCustomVideoWidth:(BOOL)width
{
  if (width)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (unsigned)customVideoHeight
{
  if (*&self->_has)
  {
    return self->_customVideoHeight;
  }

  else
  {
    return 0;
  }
}

- (unsigned)tilesPerFrame
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_tilesPerFrame;
  }

  else
  {
    return 1;
  }
}

- (void)setHasTilesPerFrame:(BOOL)frame
{
  if (frame)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLtrpEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasPixelFormats:(BOOL)formats
{
  if (formats)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasHdrModesSupported:(BOOL)supported
{
  if (supported)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasFecEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRtxEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasBlackFrameOnClearScreenEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasFoveationSupported:(BOOL)supported
{
  if (supported)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEnableInterleavedEncoding:(BOOL)encoding
{
  if (encoding)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobVideoSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobVideoSettings description](&v3, sel_description), -[VCMediaNegotiationBlobVideoSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpSSRC), @"rtpSSRC"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_allowRTCPFB), @"allowRTCPFB"}];
  if ([(NSMutableArray *)self->_videoPayloadCollections count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_videoPayloadCollections, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    videoPayloadCollections = self->_videoPayloadCollections;
    v6 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(videoPayloadCollections);
          }

          [v4 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"videoPayloadCollections"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_customVideoWidth), @"customVideoWidth"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_12:
      if ((has & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_12;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_customVideoHeight), @"customVideoHeight"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_tilesPerFrame), @"tilesPerFrame"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_ltrpEnabled), @"ltrpEnabled"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_pixelFormats), @"pixelFormats"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_hdrModesSupported), @"hdrModesSupported"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_17:
    if ((has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_fecEnabled), @"fecEnabled"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_18:
    if ((has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_rtxEnabled), @"rtxEnabled"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_19:
    if ((has & 0x100) == 0)
    {
      goto LABEL_20;
    }

LABEL_32:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_foveationSupported), @"foveationSupported"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return dictionary;
    }

    goto LABEL_21;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_blackFrameOnClearScreenEnabled), @"blackFrameOnClearScreenEnabled"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  if ((has & 0x40) != 0)
  {
LABEL_21:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_enableInterleavedEncoding), @"enableInterleavedEncoding"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteBOOLField();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  videoPayloadCollections = self->_videoPayloadCollections;
  v5 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(videoPayloadCollections);
        }

        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_10:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_10;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_18:
    if ((has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_30:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_19:
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  *(to + 6) = self->_rtpSSRC;
  *(to + 40) = self->_allowRTCPFB;
  if ([(VCMediaNegotiationBlobVideoSettings *)self videoPayloadCollectionsCount])
  {
    [to clearVideoPayloadCollections];
    videoPayloadCollectionsCount = [(VCMediaNegotiationBlobVideoSettings *)self videoPayloadCollectionsCount];
    if (videoPayloadCollectionsCount)
    {
      v6 = videoPayloadCollectionsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addVideoPayloadCollections:{-[VCMediaNegotiationBlobVideoSettings videoPayloadCollectionsAtIndex:](self, "videoPayloadCollectionsAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 3) = self->_customVideoWidth;
    *(to + 24) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(to + 2) = self->_customVideoHeight;
  *(to + 24) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 7) = self->_tilesPerFrame;
  *(to + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 45) = self->_ltrpEnabled;
  *(to + 24) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 5) = self->_pixelFormats;
  *(to + 24) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 4) = self->_hdrModesSupported;
  *(to + 24) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 43) = self->_fecEnabled;
  *(to + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 46) = self->_rtxEnabled;
  *(to + 24) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 41) = self->_blackFrameOnClearScreenEnabled;
  *(to + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_27:
  *(to + 44) = self->_foveationSupported;
  *(to + 24) |= 0x100u;
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_16:
  *(to + 42) = self->_enableInterleavedEncoding;
  *(to + 24) |= 0x40u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_rtpSSRC;
  *(v5 + 40) = self->_allowRTCPFB;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  videoPayloadCollections = self->_videoPayloadCollections;
  v7 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(videoPayloadCollections);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) copyWithZone:zone];
        [v5 addVideoPayloadCollections:v11];
      }

      v8 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_customVideoWidth;
    *(v5 + 48) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_10:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 8) = self->_customVideoHeight;
  *(v5 + 48) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 28) = self->_tilesPerFrame;
  *(v5 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 45) = self->_ltrpEnabled;
  *(v5 + 48) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 20) = self->_pixelFormats;
  *(v5 + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 16) = self->_hdrModesSupported;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 43) = self->_fecEnabled;
  *(v5 + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 46) = self->_rtxEnabled;
  *(v5 + 48) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x100) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    *(v5 + 44) = self->_foveationSupported;
    *(v5 + 48) |= 0x100u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v5;
    }

    goto LABEL_19;
  }

LABEL_29:
  *(v5 + 41) = self->_blackFrameOnClearScreenEnabled;
  *(v5 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if ((has & 0x40) != 0)
  {
LABEL_19:
    *(v5 + 42) = self->_enableInterleavedEncoding;
    *(v5 + 48) |= 0x40u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_rtpSSRC != *(equal + 6))
    {
      goto LABEL_80;
    }

    if (self->_allowRTCPFB)
    {
      if ((*(equal + 40) & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else if (*(equal + 40))
    {
      goto LABEL_80;
    }

    videoPayloadCollections = self->_videoPayloadCollections;
    if (!(videoPayloadCollections | *(equal + 4)) || (v5 = [(NSMutableArray *)videoPayloadCollections isEqual:?]) != 0)
    {
      has = self->_has;
      v8 = *(equal + 24);
      if ((has & 2) != 0)
      {
        if ((v8 & 2) == 0 || self->_customVideoWidth != *(equal + 3))
        {
          goto LABEL_80;
        }
      }

      else if ((v8 & 2) != 0)
      {
        goto LABEL_80;
      }

      if (has)
      {
        if ((v8 & 1) == 0 || self->_customVideoHeight != *(equal + 2))
        {
          goto LABEL_80;
        }
      }

      else if (v8)
      {
        goto LABEL_80;
      }

      if ((has & 0x10) != 0)
      {
        if ((v8 & 0x10) == 0 || self->_tilesPerFrame != *(equal + 7))
        {
          goto LABEL_80;
        }
      }

      else if ((v8 & 0x10) != 0)
      {
        goto LABEL_80;
      }

      if ((*&self->_has & 0x200) != 0)
      {
        if ((*(equal + 24) & 0x200) == 0)
        {
          goto LABEL_80;
        }

        if (self->_ltrpEnabled)
        {
          if ((*(equal + 45) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else if (*(equal + 45))
        {
          goto LABEL_80;
        }
      }

      else if ((*(equal + 24) & 0x200) != 0)
      {
        goto LABEL_80;
      }

      if ((has & 8) != 0)
      {
        if ((v8 & 8) == 0 || self->_pixelFormats != *(equal + 5))
        {
          goto LABEL_80;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_80;
      }

      if ((has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_hdrModesSupported != *(equal + 4))
        {
          goto LABEL_80;
        }
      }

      else if ((v8 & 4) != 0)
      {
        goto LABEL_80;
      }

      if ((has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_80;
        }

        if (self->_fecEnabled)
        {
          if ((*(equal + 43) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else if (*(equal + 43))
        {
          goto LABEL_80;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        goto LABEL_80;
      }

      if ((*&self->_has & 0x400) != 0)
      {
        if ((*(equal + 24) & 0x400) == 0)
        {
          goto LABEL_80;
        }

        if (self->_rtxEnabled)
        {
          if ((*(equal + 46) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else if (*(equal + 46))
        {
          goto LABEL_80;
        }
      }

      else if ((*(equal + 24) & 0x400) != 0)
      {
        goto LABEL_80;
      }

      if ((has & 0x20) != 0)
      {
        if ((v8 & 0x20) == 0)
        {
          goto LABEL_80;
        }

        if (self->_blackFrameOnClearScreenEnabled)
        {
          if ((*(equal + 41) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else if (*(equal + 41))
        {
          goto LABEL_80;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        goto LABEL_80;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(equal + 24) & 0x100) == 0)
        {
          goto LABEL_80;
        }

        if (self->_foveationSupported)
        {
          if ((*(equal + 44) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else if (*(equal + 44))
        {
          goto LABEL_80;
        }
      }

      else if ((*(equal + 24) & 0x100) != 0)
      {
        goto LABEL_80;
      }

      LOBYTE(v5) = (v8 & 0x40) == 0;
      if ((has & 0x40) == 0)
      {
        return v5;
      }

      if ((v8 & 0x40) != 0)
      {
        if (self->_enableInterleavedEncoding)
        {
          if (*(equal + 42))
          {
            goto LABEL_82;
          }
        }

        else if (!*(equal + 42))
        {
LABEL_82:
          LOBYTE(v5) = 1;
          return v5;
        }
      }

LABEL_80:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  rtpSSRC = self->_rtpSSRC;
  allowRTCPFB = self->_allowRTCPFB;
  v5 = [(NSMutableArray *)self->_videoPayloadCollections hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = 2654435761 * self->_customVideoWidth;
    if (has)
    {
LABEL_3:
      v8 = 2654435761 * self->_customVideoHeight;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if (has)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_tilesPerFrame;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v10 = 2654435761 * self->_ltrpEnabled;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v11 = 2654435761 * self->_pixelFormats;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v12 = 2654435761 * self->_hdrModesSupported;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v13 = 2654435761 * self->_fecEnabled;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v14 = 2654435761 * self->_rtxEnabled;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_10:
    v15 = 2654435761 * self->_blackFrameOnClearScreenEnabled;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v16 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v17 = 0;
    return (2654435761 * allowRTCPFB) ^ (2654435761 * rtpSSRC) ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_21:
  v15 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v16 = 2654435761 * self->_foveationSupported;
  if ((has & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v17 = 2654435761 * self->_enableInterleavedEncoding;
  return (2654435761 * allowRTCPFB) ^ (2654435761 * rtpSSRC) ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  self->_rtpSSRC = *(from + 6);
  self->_allowRTCPFB = *(from + 40);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(from + 4);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(VCMediaNegotiationBlobVideoSettings *)self addVideoPayloadCollections:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  v10 = *(from + 24);
  if ((v10 & 2) != 0)
  {
    self->_customVideoWidth = *(from + 3);
    *&self->_has |= 2u;
    v10 = *(from + 24);
    if ((v10 & 1) == 0)
    {
LABEL_10:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  self->_customVideoHeight = *(from + 2);
  *&self->_has |= 1u;
  v10 = *(from + 24);
  if ((v10 & 0x10) == 0)
  {
LABEL_11:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_tilesPerFrame = *(from + 7);
  *&self->_has |= 0x10u;
  v10 = *(from + 24);
  if ((v10 & 0x200) == 0)
  {
LABEL_12:
    if ((v10 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_ltrpEnabled = *(from + 45);
  *&self->_has |= 0x200u;
  v10 = *(from + 24);
  if ((v10 & 8) == 0)
  {
LABEL_13:
    if ((v10 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_pixelFormats = *(from + 5);
  *&self->_has |= 8u;
  v10 = *(from + 24);
  if ((v10 & 4) == 0)
  {
LABEL_14:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_hdrModesSupported = *(from + 4);
  *&self->_has |= 4u;
  v10 = *(from + 24);
  if ((v10 & 0x80) == 0)
  {
LABEL_15:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_fecEnabled = *(from + 43);
  *&self->_has |= 0x80u;
  v10 = *(from + 24);
  if ((v10 & 0x400) == 0)
  {
LABEL_16:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_rtxEnabled = *(from + 46);
  *&self->_has |= 0x400u;
  v10 = *(from + 24);
  if ((v10 & 0x20) == 0)
  {
LABEL_17:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_blackFrameOnClearScreenEnabled = *(from + 41);
  *&self->_has |= 0x20u;
  v10 = *(from + 24);
  if ((v10 & 0x100) == 0)
  {
LABEL_18:
    if ((v10 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_30:
  self->_foveationSupported = *(from + 44);
  *&self->_has |= 0x100u;
  if ((*(from + 24) & 0x40) == 0)
  {
    return;
  }

LABEL_19:
  self->_enableInterleavedEncoding = *(from + 42);
  *&self->_has |= 0x40u;
}

- (VCMediaNegotiationBlobVideoSettings)initWithSSRC:(unsigned int)c allowRTCPFB:(BOOL)b videoRuleCollections:(id)collections featureStrings:(id)strings isCellular16x9Capable:(BOOL)capable tilesPerFrame:(unsigned int)frame ltrpEnabled:(BOOL)enabled pixelFormats:(id)self0 hdrModesSupported:(id)self1 customVideoWidth:(unsigned int)self2 customVideoHeight:(unsigned int)self3 enableInterleavedEncoding:(BOOL)self4
{
  capableCopy = capable;
  v36 = *MEMORY[0x1E69E9840];
  v20 = [(VCMediaNegotiationBlobVideoSettings *)self init];
  v21 = v20;
  if (v20)
  {
    v20->_rtpSSRC = c;
    v20->_allowRTCPFB = b;
    if (frame >= 2)
    {
      *&v20->_has |= 0x10u;
      v20->_tilesPerFrame = frame;
    }

    if (enabled)
    {
      *&v20->_has |= 0x200u;
      v20->_ltrpEnabled = enabled;
    }

    if ([(VCMediaNegotiationBlobVideoSettings *)v20 setVideoRuleCollections:collections featureStrings:strings isScreen:0 isCellular16x9Capable:capableCopy])
    {
      if (formats)
      {
        v22 = [VCMediaNegotiationBlobVideoSettings storePixelFormatsInBitMap:?];
        v21->_pixelFormats = v22;
        if (v22)
        {
          *&v21->_has |= 8u;
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v30 = 136315650;
            v31 = v24;
            v32 = 2080;
            v33 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) initWithSSRC:allowRTCPFB:videoRuleCollections:featureStrings:isCellular16x9Capable:tilesPerFrame:ltrpEnabled:pixelFormats:hdrModesSupported:customVideoWidth:customVideoHeight:enableInterleavedEncoding:]";
            v34 = 1024;
            v35 = 205;
            _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No pixel format set to negotiate", &v30, 0x1Cu);
          }
        }
      }

      if (supported)
      {
        v26 = [VCMediaNegotiationBlobVideoSettings hdrModesBitmapWithSupportedModes:supported];
        v21->_hdrModesSupported = v26;
        if (v26)
        {
          *&v21->_has |= 4u;
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v30 = 136315650;
            v31 = v27;
            v32 = 2080;
            v33 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) initWithSSRC:allowRTCPFB:videoRuleCollections:featureStrings:isCellular16x9Capable:tilesPerFrame:ltrpEnabled:pixelFormats:hdrModesSupported:customVideoWidth:customVideoHeight:enableInterleavedEncoding:]";
            v34 = 1024;
            v35 = 213;
            _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No HDR modes to negotiate", &v30, 0x1Cu);
          }
        }
      }

      if (width)
      {
        *&v21->_has |= 2u;
        v21->_customVideoWidth = width;
      }

      if (height)
      {
        *&v21->_has |= 1u;
        v21->_customVideoHeight = height;
      }

      if (encoding)
      {
        *&v21->_has |= 0x40u;
        v21->_enableInterleavedEncoding = encoding;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiationBlobVideoSettings(VideoRules) initWithSSRC:v23 allowRTCPFB:? videoRuleCollections:? featureStrings:? isCellular16x9Capable:? tilesPerFrame:? ltrpEnabled:? pixelFormats:? hdrModesSupported:? customVideoWidth:? customVideoHeight:? enableInterleavedEncoding:?];
        }
      }

      return 0;
    }
  }

  return v21;
}

- (VCMediaNegotiationBlobVideoSettings)initWithScreenSSRC:(unsigned int)c allowRTCPFB:(BOOL)b videoRuleCollections:(id)collections featureStrings:(id)strings isCellular16x9Capable:(BOOL)capable customVideoWidth:(unsigned int)width customVideoHeight:(unsigned int)height tilesPerFrame:(unsigned int)self0 ltrpEnabled:(BOOL)self1 pixelFormats:(id)self2 hdrModesSupported:(id)self3 fecEnabled:(BOOL)self4 rtxEnabled:(BOOL)self5 blackFrameOnClearScreenEnabled:(BOOL)self6 foveationSupported:(BOOL)self7
{
  capableCopy = capable;
  v39 = *MEMORY[0x1E69E9840];
  v23 = [(VCMediaNegotiationBlobVideoSettings *)self init];
  v24 = v23;
  if (!v23)
  {
    return v24;
  }

  v23->_rtpSSRC = c;
  v23->_allowRTCPFB = b;
  [(VCMediaNegotiationBlobVideoSettings *)v23 setBlackFrameOnClearScreenEnabled:screenEnabled];
  if (width)
  {
    *&v24->_has |= 2u;
    v24->_customVideoWidth = width;
  }

  if (height)
  {
    *&v24->_has |= 1u;
    v24->_customVideoHeight = height;
  }

  if (frame >= 2)
  {
    *&v24->_has |= 0x10u;
    v24->_tilesPerFrame = frame;
  }

  if (enabled)
  {
    *&v24->_has |= 0x200u;
    v24->_ltrpEnabled = enabled;
  }

  if (fecEnabled)
  {
    *&v24->_has |= 0x80u;
    v24->_fecEnabled = fecEnabled;
    if (!rtxEnabled)
    {
LABEL_12:
      if (!foveationSupported)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (!rtxEnabled)
  {
    goto LABEL_12;
  }

  *&v24->_has |= 0x400u;
  v24->_rtxEnabled = rtxEnabled;
  if (foveationSupported)
  {
LABEL_13:
    *&v24->_has |= 0x100u;
    v24->_foveationSupported = foveationSupported;
  }

LABEL_14:
  if ([(VCMediaNegotiationBlobVideoSettings *)v24 setVideoRuleCollections:collections featureStrings:strings isScreen:1 isCellular16x9Capable:capableCopy])
  {
    if (formats)
    {
      v25 = [VCMediaNegotiationBlobVideoSettings storePixelFormatsInBitMap:?];
      v24->_pixelFormats = v25;
      if (v25)
      {
        *&v24->_has |= 8u;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v33 = 136315650;
          v34 = v27;
          v35 = 2080;
          v36 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) initWithScreenSSRC:allowRTCPFB:videoRuleCollections:featureStrings:isCellular16x9Capable:customVideoWidth:customVideoHeight:tilesPerFrame:ltrpEnabled:pixelFormats:hdrModesSupported:fecEnabled:rtxEnabled:blackFrameOnClearScreenEnabled:foveationSupported:]";
          v37 = 1024;
          v38 = 286;
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No pixel format set to negotiate", &v33, 0x1Cu);
        }
      }
    }

    if (supported)
    {
      v29 = [VCMediaNegotiationBlobVideoSettings hdrModesBitmapWithSupportedModes:supported];
      v24->_hdrModesSupported = v29;
      if (v29)
      {
        *&v24->_has |= 4u;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v33 = 136315650;
          v34 = v30;
          v35 = 2080;
          v36 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) initWithScreenSSRC:allowRTCPFB:videoRuleCollections:featureStrings:isCellular16x9Capable:customVideoWidth:customVideoHeight:tilesPerFrame:ltrpEnabled:pixelFormats:hdrModesSupported:fecEnabled:rtxEnabled:blackFrameOnClearScreenEnabled:foveationSupported:]";
          v37 = 1024;
          v38 = 294;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No HDR modes to negotiate", &v33, 0x1Cu);
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiationBlobVideoSettings(VideoRules) initWithScreenSSRC:v26 allowRTCPFB:? videoRuleCollections:? featureStrings:? isCellular16x9Capable:? customVideoWidth:? customVideoHeight:? tilesPerFrame:? ltrpEnabled:? pixelFormats:? hdrModesSupported:? fecEnabled:? rtxEnabled:? blackFrameOnClearScreenEnabled:? foveationSupported:?];
      }
    }

    return 0;
  }

  return v24;
}

+ (unsigned)storePixelFormatsInBitMap:(id)map
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [map countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(map);
      }

      intValue = [*(*(&v12 + 1) + 8 * i) intValue];
      if (intValue > 875836533)
      {
        switch(intValue)
        {
          case 875836534:
            v6 |= 0x10u;
            break;
          case 2016686640:
            v6 |= 4u;
            break;
          case 2019963956:
            v6 |= 0x20u;
            break;
        }
      }

      else
      {
        switch(intValue)
        {
          case 875704422:
            v6 |= 1u;
            break;
          case 875704438:
            v6 |= 2u;
            break;
          case 875836518:
            v6 |= 8u;
            break;
        }
      }
    }

    v5 = [map countByEnumeratingWithState:&v12 objects:v11 count:16];
  }

  while (v5);
  return v6;
}

+ (unsigned)hdrModesBitmapWithSupportedModes:(id)modes
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [modes countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(modes);
      }

      intValue = [*(*(&v12 + 1) + 8 * i) intValue];
      if (intValue > 1)
      {
        if (intValue == 2)
        {
          v6 |= 4u;
        }

        else if (intValue == 3)
        {
          v6 |= 8u;
        }
      }

      else if (intValue)
      {
        if (intValue == 1)
        {
          v6 |= 2u;
        }
      }

      else
      {
        v6 |= 1u;
      }
    }

    v5 = [modes countByEnumeratingWithState:&v12 objects:v11 count:16];
  }

  while (v5);
  return v6;
}

- (id)getPayloadSettingsForPayload:(int)payload
{
  v3 = *&payload;
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  videoPayloadCollections = self->_videoPayloadCollections;
  v6 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(videoPayloadCollections);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 payload] == v3)
        {
          v11 = v10;
          return v11;
        }
      }

      v7 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = objc_opt_new();
  [v11 setPayload:v3];
  [(VCMediaNegotiationBlobVideoSettings *)self addVideoPayloadCollections:v11];
  return v11;
}

- (BOOL)setVideoRuleCollections:(id)collections featureStrings:(id)strings isScreen:(BOOL)screen isCellular16x9Capable:(BOOL)capable
{
  capableCopy = capable;
  screenCopy = screen;
  v177 = *MEMORY[0x1E69E9840];
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  supportedPayloads = [collections supportedPayloads];
  v11 = [supportedPayloads countByEnumeratingWithState:&v173 objects:v172 count:16];
  if (!v11)
  {
    LOBYTE(v150) = 1;
    return v150;
  }

  v12 = v11;
  v13 = *v174;
  selfCopy = self;
  v157 = *v174;
LABEL_3:
  v156 = v12;
  v14 = 0;
LABEL_4:
  if (*v174 != v13)
  {
    objc_enumerationMutation(supportedPayloads);
  }

  v158 = v14;
  v15 = *(*(&v173 + 1) + 8 * v14);
  v16 = -[VCMediaNegotiationBlobVideoSettings getPayloadSettingsForPayload:](self, "getPayloadSettingsForPayload:", [v15 unsignedIntValue]);
  [v16 setFeatureString:{objc_msgSend(strings, "objectForKey:", v15)}];
  v17 = VCVideoParamaterSets_DefaultSupportedSets([v15 unsignedIntValue]);
  v18 = v17;
  if (v17)
  {
    [v16 setParameterSet:{objc_msgSend(v16, "parameterSet") | 1}];
    if ((v18 & 2) == 0)
    {
LABEL_8:
      if ((v18 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_286;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_8;
  }

  [v16 setParameterSet:{objc_msgSend(v16, "parameterSet") | 2}];
  if ((v18 & 4) == 0)
  {
LABEL_9:
    if ((v18 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_286:
  [v16 setParameterSet:{objc_msgSend(v16, "parameterSet") | 4}];
  if ((v18 & 8) != 0)
  {
LABEL_10:
    [v16 setParameterSet:{objc_msgSend(v16, "parameterSet") | 8}];
  }

LABEL_11:
  if ([v16 parameterSet])
  {
    stringsCopy = strings;
    v19 = 1;
    v160 = v16;
    v161 = v15;
    while (1)
    {
      v159 = v19;
      v20 = v19;
      if (v19 == 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      v164 = v21;
      v22 = 1;
      v162 = v19;
      do
      {
        v23 = v22;
        v24 = [collections getVideoRulesForTransport:v20 payload:objc_msgSend(v15 encodingType:{"unsignedIntValue", stringsCopy), v22}];
        if (!v24)
        {
          goto LABEL_280;
        }

        v25 = v24;
        v166 = v22;
        v26 = objc_opt_new();
        [v26 setTransport:v164];
        v165 = v22;
        if (v22 == 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        [v26 setOperation:v27];
        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        v28 = [v25 countByEnumeratingWithState:&v168 objects:v167 count:16];
        if (!v28)
        {
          goto LABEL_279;
        }

        v29 = v28;
        v30 = *v169;
        while (2)
        {
          v31 = 0;
          do
          {
            if (*v169 != v30)
            {
              objc_enumerationMutation(v25);
            }

            v32 = *(*(&v168 + 1) + 8 * v31);
            iWidth = [v32 iWidth];
            if (screenCopy)
            {
              if (iWidth == 1024 && [v32 iHeight] == 768 && (objc_msgSend(v32, "fRate"), v34 == 30.0))
              {
LABEL_64:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | (v48 == 1.0)];
                v46 = [v26 formats] | 1;
              }

              else if ([v32 iWidth] == 1024 && objc_msgSend(v32, "iHeight") == 768 && (objc_msgSend(v32, "fRate"), v35 == 60.0))
              {
LABEL_68:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | (2 * (v50 == 1.0))];
                v46 = [v26 formats] | 2;
              }

              else if ([v32 iWidth] == 1136 && objc_msgSend(v32, "iHeight") == 640 && (objc_msgSend(v32, "fRate"), v36 == 30.0))
              {
LABEL_72:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | (4 * (v52 == 1.0))];
                v46 = [v26 formats] | 4;
              }

              else if ([v32 iWidth] == 1136 && objc_msgSend(v32, "iHeight") == 640 && (objc_msgSend(v32, "fRate"), v37 == 60.0))
              {
LABEL_76:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | (8 * (v54 == 1.0))];
                v46 = [v26 formats] | 8;
              }

              else if ([v32 iWidth] == 1334 && objc_msgSend(v32, "iHeight") == 750 && (objc_msgSend(v32, "fRate"), v38 == 30.0))
              {
LABEL_80:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | (16 * (v56 == 1.0))];
                v46 = [v26 formats] | 0x10;
              }

              else if ([v32 iWidth] == 1334 && objc_msgSend(v32, "iHeight") == 750 && (objc_msgSend(v32, "fRate"), v39 == 60.0))
              {
LABEL_84:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | (32 * (v58 == 1.0))];
                v46 = [v26 formats] | 0x20;
              }

              else if ([v32 iWidth] == 1664 && objc_msgSend(v32, "iHeight") == 1248 && (objc_msgSend(v32, "fRate"), v40 == 30.0))
              {
LABEL_88:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v60 == 1.0) << 6)];
                v46 = [v26 formats] | 0x40;
              }

              else if ([v32 iWidth] == 1664 && objc_msgSend(v32, "iHeight") == 1248 && (objc_msgSend(v32, "fRate"), v41 == 60.0))
              {
LABEL_92:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v62 == 1.0) << 7)];
                v46 = [v26 formats] | 0x80;
              }

              else if ([v32 iWidth] == 1920 && objc_msgSend(v32, "iHeight") == 1080 && (objc_msgSend(v32, "fRate"), v42 == 30.0))
              {
LABEL_96:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v64 == 1.0) << 8)];
                v46 = [v26 formats] | 0x100;
              }

              else if ([v32 iWidth] == 1920 && objc_msgSend(v32, "iHeight") == 1080 && (objc_msgSend(v32, "fRate"), v43 == 60.0))
              {
LABEL_100:
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v66 == 1.0) << 9)];
                v46 = [v26 formats] | 0x200;
              }

              else if ([v32 iWidth] == 2208 && objc_msgSend(v32, "iHeight") == 1242 && (objc_msgSend(v32, "fRate"), v44 == 30.0))
              {
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v45 == 1.0) << 10)];
                v46 = [v26 formats] | 0x400;
              }

              else
              {
                if ([v32 iWidth] == 2208 && objc_msgSend(v32, "iHeight") == 1242)
                {
                  [v32 fRate];
                  if (v75 == 60.0)
                  {
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v76 == 1.0) << 11)];
                    v46 = [v26 formats] | 0x800;
                    goto LABEL_203;
                  }
                }

                if ([v32 iWidth] == 2048 && objc_msgSend(v32, "iHeight") == 1536)
                {
                  [v32 fRate];
                  if (v77 == 30.0)
                  {
LABEL_130:
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v78 == 1.0) << 12)];
                    v46 = [v26 formats] | 0x1000;
                    goto LABEL_203;
                  }
                }

                if ([v32 iWidth] == 2048 && objc_msgSend(v32, "iHeight") == 1536)
                {
                  [v32 fRate];
                  if (v79 == 60.0)
                  {
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v80 == 1.0) << 13)];
                    v46 = [v26 formats] | 0x2000;
                    goto LABEL_203;
                  }
                }

                if ([v32 iWidth] == 1280 && objc_msgSend(v32, "iHeight") == 720)
                {
                  [v32 fRate];
                  if (v81 == 30.0)
                  {
                    goto LABEL_138;
                  }
                }

                if ([v32 iWidth] == 1280 && objc_msgSend(v32, "iHeight") == 720)
                {
                  [v32 fRate];
                  if (v83 == 60.0)
                  {
LABEL_142:
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v84 == 1.0) << 15)];
                    v46 = [v26 formats] | 0x8000;
                    goto LABEL_203;
                  }
                }

                if ([v32 iWidth] == 1920 && objc_msgSend(v32, "iHeight") == 896)
                {
                  [v32 fRate];
                  if (v85 == 30.0)
                  {
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v86 == 1.0) << 16)];
                    v46 = [v26 formats] | 0x10000;
                    goto LABEL_203;
                  }
                }

                if ([v32 iWidth] == 1920 && objc_msgSend(v32, "iHeight") == 896)
                {
                  [v32 fRate];
                  if (v89 == 60.0)
                  {
                    goto LABEL_154;
                  }
                }

                if ([v32 iWidth] == 2732 && objc_msgSend(v32, "iHeight") == 2048)
                {
                  [v32 fRate];
                  if (v93 == 60.0)
                  {
                    goto LABEL_162;
                  }
                }

                if ([v32 iWidth] == 2388 && objc_msgSend(v32, "iHeight") == 1668 && (objc_msgSend(v32, "fRate"), v97 == 60.0))
                {
LABEL_170:
                  [v32 fPref];
                  [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v98 == 1.0) << 19)];
                  v46 = [v26 formats] | 0x80000;
                }

                else if ([v32 iWidth] == 2224 && objc_msgSend(v32, "iHeight") == 1668 && (objc_msgSend(v32, "fRate"), v101 == 60.0))
                {
LABEL_178:
                  [v32 fPref];
                  [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v102 == 1.0) << 20)];
                  v46 = [v26 formats] | 0x100000;
                }

                else if ([v32 iWidth] == 3072 && objc_msgSend(v32, "iHeight") == 1728 && (objc_msgSend(v32, "fRate"), v105 == 60.0))
                {
LABEL_186:
                  [v32 fPref];
                  [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v106 == 1.0) << 21)];
                  v46 = [v26 formats] | 0x200000;
                }

                else if ([v32 iWidth] == 3840 && objc_msgSend(v32, "iHeight") == 2160 && (objc_msgSend(v32, "fRate"), v109 == 60.0))
                {
LABEL_194:
                  [v32 fPref];
                  [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v110 == 1.0) << 22)];
                  v46 = [v26 formats] | 0x400000;
                }

                else
                {
                  if ([v32 iWidth] != 3584)
                  {
                    goto LABEL_290;
                  }

                  if ([v32 iHeight] != 1792)
                  {
                    goto LABEL_290;
                  }

                  [v32 fRate];
                  if (v114 != 90.0)
                  {
                    goto LABEL_290;
                  }

LABEL_202:
                  [v32 fPref];
                  [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v115 == 1.0) << 23)];
                  v46 = [v26 formats] | 0x800000;
                }
              }

LABEL_203:
              [v26 setFormats:v46];
              goto LABEL_204;
            }

            if (iWidth == 320 && [v32 iHeight] == 240)
            {
              [v32 fRate];
              if (v47 == 15.0)
              {
                goto LABEL_64;
              }
            }

            if ([v32 iWidth] == 320 && objc_msgSend(v32, "iHeight") == 240)
            {
              [v32 fRate];
              if (v49 == 30.0)
              {
                goto LABEL_68;
              }
            }

            if ([v32 iWidth] == 480 && objc_msgSend(v32, "iHeight") == 368)
            {
              [v32 fRate];
              if (v51 == 15.0)
              {
                goto LABEL_72;
              }
            }

            if ([v32 iWidth] == 480 && objc_msgSend(v32, "iHeight") == 368)
            {
              [v32 fRate];
              if (v53 == 30.0)
              {
                goto LABEL_76;
              }
            }

            if ([v32 iWidth] == 640 && objc_msgSend(v32, "iHeight") == 480)
            {
              [v32 fRate];
              if (v55 == 15.0)
              {
                goto LABEL_80;
              }
            }

            if ([v32 iWidth] == 640 && objc_msgSend(v32, "iHeight") == 480)
            {
              [v32 fRate];
              if (v57 == 30.0)
              {
                goto LABEL_84;
              }
            }

            if ([v32 iWidth] == 848 && objc_msgSend(v32, "iHeight") == 480)
            {
              [v32 fRate];
              if (v59 == 15.0)
              {
                goto LABEL_88;
              }
            }

            if ([v32 iWidth] == 848 && objc_msgSend(v32, "iHeight") == 480)
            {
              [v32 fRate];
              if (v61 == 30.0)
              {
                goto LABEL_92;
              }
            }

            if ([v32 iWidth] == 1024 && objc_msgSend(v32, "iHeight") == 768)
            {
              [v32 fRate];
              if (v63 == 15.0)
              {
                goto LABEL_96;
              }
            }

            if ([v32 iWidth] == 1024 && objc_msgSend(v32, "iHeight") == 768)
            {
              [v32 fRate];
              if (v65 == 30.0)
              {
                goto LABEL_100;
              }
            }

            if ([v32 iWidth] == 1024 && objc_msgSend(v32, "iHeight") == 768)
            {
              [v32 fRate];
              if (v67 == 60.0)
              {
                goto LABEL_130;
              }
            }

            if ([v32 iWidth] == 192 && objc_msgSend(v32, "iHeight") == 112)
            {
              [v32 fRate];
              if (v68 == 15.0)
              {
                goto LABEL_170;
              }
            }

            if ([v32 iWidth] == 192 && objc_msgSend(v32, "iHeight") == 192)
            {
              [v32 fRate];
              if (v69 == 15.0)
              {
                goto LABEL_178;
              }
            }

            if ([v32 iWidth] == 240 && objc_msgSend(v32, "iHeight") == 240)
            {
              [v32 fRate];
              if (v70 == 15.0)
              {
                goto LABEL_186;
              }
            }

            if ([v32 iWidth] == 320 && objc_msgSend(v32, "iHeight") == 320)
            {
              [v32 fRate];
              if (v71 == 30.0)
              {
                goto LABEL_194;
              }
            }

            if ([v32 iWidth] == 480 && objc_msgSend(v32, "iHeight") == 480)
            {
              [v32 fRate];
              if (v72 == 30.0)
              {
                goto LABEL_202;
              }
            }

            if ([v32 iWidth] == 640 && objc_msgSend(v32, "iHeight") == 640)
            {
              [v32 fRate];
              if (v73 == 30.0)
              {
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v74 == 1.0) << 24)];
                v46 = [v26 formats] | 0x1000000;
                goto LABEL_203;
              }
            }

            if ([v32 iWidth] == 720 && objc_msgSend(v32, "iHeight") == 720)
            {
              [v32 fRate];
              if (v87 == 30.0)
              {
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v88 == 1.0) << 25)];
                v46 = [v26 formats] | 0x2000000;
                goto LABEL_203;
              }
            }

            if ([v32 iWidth] == 1024 && objc_msgSend(v32, "iHeight") == 576)
            {
              [v32 fRate];
              if (v91 == 30.0)
              {
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v92 == 1.0) << 26)];
                v46 = [v26 formats] | 0x4000000;
                goto LABEL_203;
              }
            }

            if ([v32 iWidth] == 1920 && objc_msgSend(v32, "iHeight") == 1080)
            {
              [v32 fRate];
              if (v95 == 30.0)
              {
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v96 == 1.0) << 27)];
                v46 = [v26 formats] | 0x8000000;
                goto LABEL_203;
              }
            }

            if ([v32 iWidth] == 1440 && objc_msgSend(v32, "iHeight") == 1080)
            {
              [v32 fRate];
              if (v99 == 30.0)
              {
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v100 == 1.0) << 28)];
                v46 = [v26 formats] | 0x10000000;
                goto LABEL_203;
              }
            }

            if ([v32 iWidth] == 896 && objc_msgSend(v32, "iHeight") == 672)
            {
              [v32 fRate];
              if (v103 == 30.0)
              {
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v104 == 1.0) << 29)];
                v46 = [v26 formats] | 0x20000000;
                goto LABEL_203;
              }
            }

            if ([v32 iWidth] == 1920 && objc_msgSend(v32, "iHeight") == 1080)
            {
              [v32 fRate];
              if (v107 == 60.0)
              {
                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v108 == 1.0) << 30)];
                v46 = [v26 formats] | 0x40000000;
                goto LABEL_203;
              }
            }

            if ([v32 iWidth] == 896 && objc_msgSend(v32, "iHeight") == 672)
            {
              [v32 fRate];
              if (v111 == 60.0)
              {
                [v32 fPref];
                [v26 setPreferredFormatExt1:{objc_msgSend(v26, "preferredFormatExt1") | (v112 == 1.0)}];
                v113 = [v26 formatsExt1] | 1;
LABEL_234:
                [v26 setFormatsExt1:v113];
                goto LABEL_204;
              }
            }

            if ([v32 iWidth] == 1664 && objc_msgSend(v32, "iHeight") == 1248)
            {
              [v32 fRate];
              if (v116 == 30.0)
              {
                [v32 fPref];
                [v26 setPreferredFormatExt1:{objc_msgSend(v26, "preferredFormatExt1") | (2 * (v117 == 1.0))}];
                v113 = [v26 formatsExt1] | 2;
                goto LABEL_234;
              }
            }

            if ([v32 iWidth] == 1664 && objc_msgSend(v32, "iHeight") == 1248)
            {
              [v32 fRate];
              if (v118 == 60.0)
              {
                [v32 fPref];
                [v26 setPreferredFormatExt1:{objc_msgSend(v26, "preferredFormatExt1") | (4 * (v119 == 1.0))}];
                v113 = [v26 formatsExt1] | 4;
                goto LABEL_234;
              }
            }

            if ([v32 iWidth] == 1024 && objc_msgSend(v32, "iHeight") == 576)
            {
              [v32 fRate];
              if (v120 == 15.0)
              {
                [v32 fPref];
                [v26 setPreferredFormatExt1:{objc_msgSend(v26, "preferredFormatExt1") | (8 * (v121 == 1.0))}];
                v113 = [v26 formatsExt1] | 8;
                goto LABEL_234;
              }
            }

            if ([v32 iWidth] == 896 && objc_msgSend(v32, "iHeight") == 672)
            {
              [v32 fRate];
              if (v122 == 15.0)
              {
                [v32 fPref];
                [v26 setPreferredFormatExt1:{objc_msgSend(v26, "preferredFormatExt1") | (16 * (v123 == 1.0))}];
                v113 = [v26 formatsExt1] | 0x10;
                goto LABEL_234;
              }
            }

            if ([v32 iWidth] == 1920 && objc_msgSend(v32, "iHeight") == 1440)
            {
              [v32 fRate];
              if (v124 == 60.0)
              {
                [v32 fPref];
                [v26 setPreferredFormatExt1:{objc_msgSend(v26, "preferredFormatExt1") | (32 * (v125 == 1.0))}];
                v113 = [v26 formatsExt1] | 0x20;
                goto LABEL_234;
              }
            }

            if ([v32 iWidth] == 4320 && objc_msgSend(v32, "iHeight") == 4320)
            {
              [v32 fRate];
              if (v126 == 90.0)
              {
                [v32 fPref];
                [v26 setPreferredFormatExt1:{objc_msgSend(v26, "preferredFormatExt1") | ((v127 == 1.0) << 6)}];
                v113 = [v26 formatsExt1] | 0x40;
                goto LABEL_234;
              }
            }

            if ([v32 iWidth] == 3240 && objc_msgSend(v32, "iHeight") == 3240)
            {
              [v32 fRate];
              if (v128 == 30.0)
              {
                [v32 fPref];
                [v26 setPreferredFormatExt1:{objc_msgSend(v26, "preferredFormatExt1") | ((v129 == 1.0) << 7)}];
                v113 = [v26 formatsExt1] | 0x80;
                goto LABEL_234;
              }
            }

            if ([v32 iWidth] != 1088 || objc_msgSend(v32, "iHeight") != 1088 || (objc_msgSend(v32, "fRate"), v130 != 15.0) && (objc_msgSend(v32, "fRate"), v131 != 30.0) && (objc_msgSend(v32, "fRate"), v132 != 60.0))
            {
              iWidth2 = [v32 iWidth];
              if (v166 == 1)
              {
                if (iWidth2 == 1280 && [v32 iHeight] == 720)
                {
                  [v32 fRate];
                  if (v134 == 15.0)
                  {
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v135 == 1.0) << 10)];
                    [v26 setFormats:{objc_msgSend(v26, "formats") | 0x400}];
                  }
                }

                if ([v32 iWidth] == 1280 && objc_msgSend(v32, "iHeight") == 720)
                {
                  [v32 fRate];
                  if (v136 == 30.0)
                  {
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v137 == 1.0) << 11)];
                    [v26 setFormats:{objc_msgSend(v26, "formats") | 0x800}];
                  }
                }

                if ([v32 iWidth] == 1280 && objc_msgSend(v32, "iHeight") == 720)
                {
                  [v32 fRate];
                  if (v138 == 60.0)
                  {
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v139 == 1.0) << 13)];
                    [v26 setFormats:{objc_msgSend(v26, "formats") | 0x2000}];
                  }
                }

                iWidth2 = [v32 iWidth];
              }

              if (capableCopy)
              {
                if (iWidth2 != 1280 || [v32 iHeight] != 720 || (objc_msgSend(v32, "fRate"), v140 != 15.0))
                {
                  if ([v32 iWidth] != 1280 || objc_msgSend(v32, "iHeight") != 720 || (objc_msgSend(v32, "fRate"), v145 != 30.0))
                  {
                    if ([v32 iWidth] != 1280 || objc_msgSend(v32, "iHeight") != 720 || (objc_msgSend(v32, "fRate"), v146 != 60.0))
                    {
LABEL_271:
                      if ([v32 iWidth] != 480 || objc_msgSend(v32, "iHeight") != 272 || (objc_msgSend(v32, "fRate"), v147 != 15.0))
                      {
                        if ([v32 iWidth] != 480 || objc_msgSend(v32, "iHeight") != 272 || (objc_msgSend(v32, "fRate"), v148 != 30.0))
                        {
LABEL_290:
                          if (VRTraceGetErrorLogLevelForModule() >= 3)
                          {
                            v151 = VRTraceErrorLogLevelToCSTR();
                            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                            {
                              [VCMediaNegotiationBlobVideoSettings(VideoRules) setVideoRuleCollections:v151 featureStrings:v32 isScreen:? isCellular16x9Capable:?];
                            }
                          }

                          goto LABEL_294;
                        }

                        goto LABEL_142;
                      }

LABEL_138:
                      [v32 fPref];
                      [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v82 == 1.0) << 14)];
                      v46 = [v26 formats] | 0x4000;
                      goto LABEL_203;
                    }

LABEL_162:
                    [v32 fPref];
                    [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v94 == 1.0) << 18)];
                    v46 = [v26 formats] | 0x40000;
                    goto LABEL_203;
                  }

LABEL_154:
                  [v32 fPref];
                  [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v90 == 1.0) << 17)];
                  v46 = [v26 formats] | 0x20000;
                  goto LABEL_203;
                }

                [v32 fPref];
                [v26 setPreferredFormat:objc_msgSend(v26, "preferredFormat") | ((v141 == 1.0) << 16)];
                [v26 setFormats:{objc_msgSend(v26, "formats") | 0x10000}];
              }

              else
              {
                if (iWidth2 != 1280)
                {
                  goto LABEL_271;
                }

                if ([v32 iHeight] != 720)
                {
                  goto LABEL_271;
                }

                [v32 fRate];
                if (v142 != 15.0)
                {
                  [v32 fRate];
                  if (v143 != 30.0)
                  {
                    [v32 fRate];
                    if (v144 != 60.0)
                    {
                      goto LABEL_271;
                    }
                  }
                }
              }
            }

LABEL_204:
            ++v31;
          }

          while (v29 != v31);
          v149 = [v25 countByEnumeratingWithState:&v168 objects:v167 count:16];
          v29 = v149;
          if (v149)
          {
            continue;
          }

          break;
        }

LABEL_279:
        [v160 addVideoRuleCollections:v26];

        v15 = v161;
        v20 = v162;
        v23 = v165;
        v22 = v166;
LABEL_280:
        ++v22;
      }

      while (v23 < 2);
      v19 = v159 + 1;
      if (v159 >= 2u)
      {
        v13 = v157;
        v14 = v158 + 1;
        self = selfCopy;
        strings = stringsCopy;
        if (v158 + 1 == v156)
        {
          v150 = [supportedPayloads countByEnumeratingWithState:&v173 objects:v172 count:16];
          v13 = v157;
          v12 = v150;
          LOBYTE(v150) = 1;
          if (!v12)
          {
            return v150;
          }

          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v152 = VRTraceErrorLogLevelToCSTR();
    LODWORD(v150) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v150)
    {
      return v150;
    }

    [VCMediaNegotiationBlobVideoSettings(VideoRules) setVideoRuleCollections:v152 featureStrings:v15 isScreen:? isCellular16x9Capable:?];
  }

LABEL_294:
  LOBYTE(v150) = 0;
  return v150;
}

- (void)checkAndInsertRuleWithWidth:(unsigned int)width height:(unsigned int)height framerate:(int)framerate payload:(int)payload priority:(double)priority negotiationBitfield:(unsigned int *)bitfield negotiationBit:(unsigned int)bit rules:(id)self0 isCellular16x9Capable:(BOOL)self1
{
  v58 = *MEMORY[0x1E69E9840];
  if ((*bitfield & bit) != 0)
  {
    v14 = *&payload;
    v16 = *&height;
    v17 = *&width;
    v18 = [VCVideoRule alloc];
    v35 = __PAIR64__(framerate, v16);
    *&v19 = framerate;
    *&v20 = priority;
    v36 = v14;
    v21 = [(VCVideoRule *)v18 initWithFrameWidth:v17 frameHeight:v16 frameRate:v14 payload:v19 priority:v20];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v22 = [rules countByEnumeratingWithState:&v54 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v55;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(rules);
          }

          v26 = *(*(&v54 + 1) + 8 * i);
          iWidth = [v26 iWidth];
          if (iWidth == [(VCVideoRule *)v21 iWidth])
          {
            iHeight = [v26 iHeight];
            if (iHeight == [(VCVideoRule *)v21 iHeight])
            {
              [v26 fRate];
              v30 = v29;
              [(VCVideoRule *)v21 fRate];
              if (v30 == v31)
              {
                iPayload = [v26 iPayload];
                if (iPayload == [(VCVideoRule *)v21 iPayload])
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 5)
                  {
                    v33 = VRTraceErrorLogLevelToCSTR();
                    v34 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136316930;
                      v38 = v33;
                      v39 = 2080;
                      v40 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) checkAndInsertRuleWithWidth:height:framerate:payload:priority:negotiationBitfield:negotiationBit:rules:isCellular16x9Capable:]";
                      v41 = 1024;
                      v42 = 566;
                      v43 = 1024;
                      v44 = v17;
                      v45 = 1024;
                      v46 = v35;
                      v47 = 1024;
                      v48 = HIDWORD(v35);
                      v49 = 1024;
                      v50 = v36;
                      v51 = 1024;
                      bitCopy = bit;
                      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found duplicated rule for %dx%d (%d) payload=%d 0x%x", buf, 0x3Au);
                    }
                  }

                  goto LABEL_17;
                }
              }
            }
          }
        }

        v23 = [rules countByEnumeratingWithState:&v54 objects:v53 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    [rules addObject:v21];
LABEL_17:

    *bitfield &= ~bit;
  }
}

- (id)newVideoRuleCollectionsForScreen:(BOOL)screen isCellular16x9Capable:(BOOL)capable isLocalConfig:(BOOL)config
{
  capableCopy = capable;
  screenCopy = screen;
  v181 = *MEMORY[0x1E69E9840];
  v155 = objc_alloc_init(VCVideoRuleCollections);
  if (v155)
  {
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    obj = self->_videoPayloadCollections;
    v148 = [(NSMutableArray *)obj countByEnumeratingWithState:&v177 objects:v176 count:16];
    if (v148)
    {
      v149 = *v178;
      do
      {
        v7 = 0;
        do
        {
          if (*v178 != v149)
          {
            objc_enumerationMutation(obj);
          }

          v150 = v7;
          v8 = *(*(&v177 + 1) + 8 * v7);
          payload = [v8 payload];
          [(VCVideoRuleCollections *)v155 addSupportedPayload:payload];
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          v154 = v8;
          videoRuleCollections = [v8 videoRuleCollections];
          v10 = [videoRuleCollections countByEnumeratingWithState:&v172 objects:v171 count:16];
          if (!v10)
          {
            goto LABEL_219;
          }

          v11 = v10;
          v153 = *v173;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v173 != v153)
              {
                objc_enumerationMutation(videoRuleCollections);
              }

              v13 = *(*(&v172 + 1) + 8 * i);
              formats = [v13 formats];
              formatsExt1 = [v13 formatsExt1];
              v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (!v14)
              {
                [VCMediaNegotiationBlobVideoSettings(VideoRules) newVideoRuleCollectionsForScreen:isCellular16x9Capable:isLocalConfig:];
                goto LABEL_223;
              }

              v15 = v14;
              if ([v13 preferredFormat])
              {
                v16 = 1.0;
              }

              else
              {
                v16 = 0.5;
              }

              if (screenCopy)
              {
                LOBYTE(v87) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1024 height:768 framerate:30 payload:payload priority:&formats negotiationBitfield:1 negotiationBit:v16 rules:v15 isCellular16x9Capable:v87];
                formats &= ~1u;
                if (([v13 preferredFormat] & 2) != 0)
                {
                  v17 = 1.0;
                }

                else
                {
                  v17 = 0.5;
                }

                LOBYTE(v88) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1024 height:768 framerate:60 payload:payload priority:&formats negotiationBitfield:2 negotiationBit:v17 rules:v15 isCellular16x9Capable:v88];
                formats &= ~2u;
                if (([v13 preferredFormat] & 4) != 0)
                {
                  v18 = 1.0;
                }

                else
                {
                  v18 = 0.5;
                }

                LOBYTE(v89) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1136 height:640 framerate:30 payload:payload priority:&formats negotiationBitfield:4 negotiationBit:v18 rules:v15 isCellular16x9Capable:v89];
                formats &= ~4u;
                if (([v13 preferredFormat] & 8) != 0)
                {
                  v19 = 1.0;
                }

                else
                {
                  v19 = 0.5;
                }

                LOBYTE(v90) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1136 height:640 framerate:60 payload:payload priority:&formats negotiationBitfield:8 negotiationBit:v19 rules:v15 isCellular16x9Capable:v90];
                formats &= ~8u;
                if (([v13 preferredFormat] & 0x4000) != 0)
                {
                  v20 = 1.0;
                }

                else
                {
                  v20 = 0.5;
                }

                LOBYTE(v91) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1280 height:720 framerate:30 payload:payload priority:&formats negotiationBitfield:0x4000 negotiationBit:v20 rules:v15 isCellular16x9Capable:v91];
                formats &= ~0x4000u;
                if (([v13 preferredFormat] & 0x8000) != 0)
                {
                  v21 = 1.0;
                }

                else
                {
                  v21 = 0.5;
                }

                LOBYTE(v92) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1280 height:720 framerate:60 payload:payload priority:&formats negotiationBitfield:0x8000 negotiationBit:v21 rules:v15 isCellular16x9Capable:v92];
                formats &= ~0x8000u;
                if (([v13 preferredFormat] & 0x10) != 0)
                {
                  v22 = 1.0;
                }

                else
                {
                  v22 = 0.5;
                }

                LOBYTE(v93) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1334 height:750 framerate:30 payload:payload priority:&formats negotiationBitfield:16 negotiationBit:v22 rules:v15 isCellular16x9Capable:v93];
                formats &= ~0x10u;
                if (([v13 preferredFormat] & 0x20) != 0)
                {
                  v23 = 1.0;
                }

                else
                {
                  v23 = 0.5;
                }

                LOBYTE(v94) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1334 height:750 framerate:60 payload:payload priority:&formats negotiationBitfield:32 negotiationBit:v23 rules:v15 isCellular16x9Capable:v94];
                formats &= ~0x20u;
                if (([v13 preferredFormat] & 0x40) != 0)
                {
                  v24 = 1.0;
                }

                else
                {
                  v24 = 0.5;
                }

                LOBYTE(v95) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1664 height:1248 framerate:30 payload:payload priority:&formats negotiationBitfield:64 negotiationBit:v24 rules:v15 isCellular16x9Capable:v95];
                formats &= ~0x40u;
                if (([v13 preferredFormat] & 0x80) != 0)
                {
                  v25 = 1.0;
                }

                else
                {
                  v25 = 0.5;
                }

                LOBYTE(v96) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1664 height:1248 framerate:60 payload:payload priority:&formats negotiationBitfield:128 negotiationBit:v25 rules:v15 isCellular16x9Capable:v96];
                formats &= ~0x80u;
                if (([v13 preferredFormat] & 0x100) != 0)
                {
                  v26 = 1.0;
                }

                else
                {
                  v26 = 0.5;
                }

                LOBYTE(v97) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1920 height:1080 framerate:30 payload:payload priority:&formats negotiationBitfield:256 negotiationBit:v26 rules:v15 isCellular16x9Capable:v97];
                formats &= ~0x100u;
                if (([v13 preferredFormat] & 0x200) != 0)
                {
                  v27 = 1.0;
                }

                else
                {
                  v27 = 0.5;
                }

                LOBYTE(v98) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1920 height:1080 framerate:60 payload:payload priority:&formats negotiationBitfield:512 negotiationBit:v27 rules:v15 isCellular16x9Capable:v98];
                formats &= ~0x200u;
                if (([v13 preferredFormat] & 0x400) != 0)
                {
                  v28 = 1.0;
                }

                else
                {
                  v28 = 0.5;
                }

                LOBYTE(v99) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:2208 height:1242 framerate:30 payload:payload priority:&formats negotiationBitfield:1024 negotiationBit:v28 rules:v15 isCellular16x9Capable:v99];
                formats &= ~0x400u;
                if (([v13 preferredFormat] & 0x800) != 0)
                {
                  v29 = 1.0;
                }

                else
                {
                  v29 = 0.5;
                }

                LOBYTE(v100) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:2208 height:1242 framerate:60 payload:payload priority:&formats negotiationBitfield:2048 negotiationBit:v29 rules:v15 isCellular16x9Capable:v100];
                formats &= ~0x800u;
                if (([v13 preferredFormat] & 0x1000) != 0)
                {
                  v30 = 1.0;
                }

                else
                {
                  v30 = 0.5;
                }

                LOBYTE(v101) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:2048 height:1536 framerate:30 payload:payload priority:&formats negotiationBitfield:4096 negotiationBit:v30 rules:v15 isCellular16x9Capable:v101];
                formats &= ~0x1000u;
                if (([v13 preferredFormat] & 0x2000) != 0)
                {
                  v31 = 1.0;
                }

                else
                {
                  v31 = 0.5;
                }

                LOBYTE(v102) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:2048 height:1536 framerate:60 payload:payload priority:&formats negotiationBitfield:0x2000 negotiationBit:v31 rules:v15 isCellular16x9Capable:v102];
                formats &= ~0x2000u;
                if (([v13 preferredFormat] & 0x10000) != 0)
                {
                  v32 = 1.0;
                }

                else
                {
                  v32 = 0.5;
                }

                LOBYTE(v103) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1920 height:896 framerate:30 payload:payload priority:&formats negotiationBitfield:0x10000 negotiationBit:v32 rules:v15 isCellular16x9Capable:v103];
                formats &= ~0x10000u;
                if (([v13 preferredFormat] & 0x20000) != 0)
                {
                  v33 = 1.0;
                }

                else
                {
                  v33 = 0.5;
                }

                LOBYTE(v104) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1920 height:896 framerate:60 payload:payload priority:&formats negotiationBitfield:0x20000 negotiationBit:v33 rules:v15 isCellular16x9Capable:v104];
                formats &= ~0x20000u;
                if (([v13 preferredFormat] & 0x40000) != 0)
                {
                  v34 = 1.0;
                }

                else
                {
                  v34 = 0.5;
                }

                LOBYTE(v105) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:2732 height:2048 framerate:60 payload:payload priority:&formats negotiationBitfield:0x40000 negotiationBit:v34 rules:v15 isCellular16x9Capable:v105];
                formats &= ~0x40000u;
                if (([v13 preferredFormat] & 0x80000) != 0)
                {
                  v35 = 1.0;
                }

                else
                {
                  v35 = 0.5;
                }

                LOBYTE(v106) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:2388 height:1668 framerate:60 payload:payload priority:&formats negotiationBitfield:0x80000 negotiationBit:v35 rules:v15 isCellular16x9Capable:v106];
                formats &= ~0x80000u;
                if (([v13 preferredFormat] & 0x100000) != 0)
                {
                  v36 = 1.0;
                }

                else
                {
                  v36 = 0.5;
                }

                LOBYTE(v107) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:2224 height:1668 framerate:60 payload:payload priority:&formats negotiationBitfield:0x100000 negotiationBit:v36 rules:v15 isCellular16x9Capable:v107];
                formats &= ~0x100000u;
                if (([v13 preferredFormat] & 0x200000) != 0)
                {
                  v37 = 1.0;
                }

                else
                {
                  v37 = 0.5;
                }

                LOBYTE(v108) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:3072 height:1728 framerate:60 payload:payload priority:&formats negotiationBitfield:0x200000 negotiationBit:v37 rules:v15 isCellular16x9Capable:v108];
                formats &= ~0x200000u;
                if (([v13 preferredFormat] & 0x400000) != 0)
                {
                  v38 = 1.0;
                }

                else
                {
                  v38 = 0.5;
                }

                LOBYTE(v109) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:3840 height:2160 framerate:60 payload:payload priority:&formats negotiationBitfield:0x400000 negotiationBit:v38 rules:v15 isCellular16x9Capable:v109];
                formats &= ~0x400000u;
                if (([v13 preferredFormat] & 0x800000) != 0)
                {
                  v39 = 1.0;
                }

                else
                {
                  v39 = 0.5;
                }

                LOBYTE(v110) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:3584 height:1792 framerate:90 payload:payload priority:&formats negotiationBitfield:0x800000 negotiationBit:v39 rules:v15 isCellular16x9Capable:v110];
                v40 = formats & 0xFF7FFFFF;
LABEL_206:
                formats = v40;
                goto LABEL_207;
              }

              LOBYTE(v87) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:320 height:240 framerate:15 payload:payload priority:&formats negotiationBitfield:1 negotiationBit:v16 rules:v15 isCellular16x9Capable:v87];
              formats &= ~1u;
              if (([v13 preferredFormat] & 2) != 0)
              {
                v41 = 1.0;
              }

              else
              {
                v41 = 0.5;
              }

              LOBYTE(v111) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:320 height:240 framerate:30 payload:payload priority:&formats negotiationBitfield:2 negotiationBit:v41 rules:v15 isCellular16x9Capable:v111];
              formats &= ~2u;
              if (([v13 preferredFormat] & 4) != 0)
              {
                v42 = 1.0;
              }

              else
              {
                v42 = 0.5;
              }

              LOBYTE(v112) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:480 height:368 framerate:15 payload:payload priority:&formats negotiationBitfield:4 negotiationBit:v42 rules:v15 isCellular16x9Capable:v112];
              formats &= ~4u;
              if (([v13 preferredFormat] & 8) != 0)
              {
                v43 = 1.0;
              }

              else
              {
                v43 = 0.5;
              }

              LOBYTE(v113) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:480 height:368 framerate:30 payload:payload priority:&formats negotiationBitfield:8 negotiationBit:v43 rules:v15 isCellular16x9Capable:v113];
              formats &= ~8u;
              if (([v13 preferredFormat] & 0x10) != 0)
              {
                v44 = 1.0;
              }

              else
              {
                v44 = 0.5;
              }

              LOBYTE(v114) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:640 height:480 framerate:15 payload:payload priority:&formats negotiationBitfield:16 negotiationBit:v44 rules:v15 isCellular16x9Capable:v114];
              formats &= ~0x10u;
              if (([v13 preferredFormat] & 0x20) != 0)
              {
                v45 = 1.0;
              }

              else
              {
                v45 = 0.5;
              }

              LOBYTE(v115) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:640 height:480 framerate:30 payload:payload priority:&formats negotiationBitfield:32 negotiationBit:v45 rules:v15 isCellular16x9Capable:v115];
              formats &= ~0x20u;
              if (([v13 preferredFormat] & 0x40) != 0)
              {
                v46 = 1.0;
              }

              else
              {
                v46 = 0.5;
              }

              LOBYTE(v116) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:848 height:480 framerate:15 payload:payload priority:&formats negotiationBitfield:64 negotiationBit:v46 rules:v15 isCellular16x9Capable:v116];
              formats &= ~0x40u;
              if (([v13 preferredFormat] & 0x80) != 0)
              {
                v47 = 1.0;
              }

              else
              {
                v47 = 0.5;
              }

              LOBYTE(v117) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:848 height:480 framerate:30 payload:payload priority:&formats negotiationBitfield:128 negotiationBit:v47 rules:v15 isCellular16x9Capable:v117];
              formats &= ~0x80u;
              if (([v13 preferredFormat] & 0x100) != 0)
              {
                v48 = 1.0;
              }

              else
              {
                v48 = 0.5;
              }

              LOBYTE(v118) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1024 height:768 framerate:15 payload:payload priority:&formats negotiationBitfield:256 negotiationBit:v48 rules:v15 isCellular16x9Capable:v118];
              formats &= ~0x100u;
              if (([v13 preferredFormat] & 0x200) != 0)
              {
                v49 = 1.0;
              }

              else
              {
                v49 = 0.5;
              }

              LOBYTE(v119) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1024 height:768 framerate:30 payload:payload priority:&formats negotiationBitfield:512 negotiationBit:v49 rules:v15 isCellular16x9Capable:v119];
              formats &= ~0x200u;
              if (([v13 preferredFormat] & 0x1000) != 0)
              {
                v50 = 1.0;
              }

              else
              {
                v50 = 0.5;
              }

              LOBYTE(v120) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1024 height:768 framerate:60 payload:payload priority:&formats negotiationBitfield:4096 negotiationBit:v50 rules:v15 isCellular16x9Capable:v120];
              formats &= ~0x1000u;
              if (([v13 preferredFormat] & 0x80000) != 0)
              {
                v51 = 1.0;
              }

              else
              {
                v51 = 0.5;
              }

              LOBYTE(v121) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:192 height:112 framerate:15 payload:payload priority:&formats negotiationBitfield:0x80000 negotiationBit:v51 rules:v15 isCellular16x9Capable:v121];
              formats &= ~0x80000u;
              if (([v13 preferredFormat] & 0x100000) != 0)
              {
                v52 = 1.0;
              }

              else
              {
                v52 = 0.5;
              }

              LOBYTE(v122) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:192 height:192 framerate:15 payload:payload priority:&formats negotiationBitfield:0x100000 negotiationBit:v52 rules:v15 isCellular16x9Capable:v122];
              formats &= ~0x100000u;
              if (([v13 preferredFormat] & 0x200000) != 0)
              {
                v53 = 1.0;
              }

              else
              {
                v53 = 0.5;
              }

              LOBYTE(v123) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:240 height:240 framerate:15 payload:payload priority:&formats negotiationBitfield:0x200000 negotiationBit:v53 rules:v15 isCellular16x9Capable:v123];
              formats &= ~0x200000u;
              if (([v13 preferredFormat] & 0x400000) != 0)
              {
                v54 = 1.0;
              }

              else
              {
                v54 = 0.5;
              }

              LOBYTE(v124) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:320 height:320 framerate:30 payload:payload priority:&formats negotiationBitfield:0x400000 negotiationBit:v54 rules:v15 isCellular16x9Capable:v124];
              formats &= ~0x400000u;
              if (([v13 preferredFormat] & 0x800000) != 0)
              {
                v55 = 1.0;
              }

              else
              {
                v55 = 0.5;
              }

              LOBYTE(v125) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:480 height:480 framerate:30 payload:payload priority:&formats negotiationBitfield:0x800000 negotiationBit:v55 rules:v15 isCellular16x9Capable:v125];
              formats &= ~0x800000u;
              if (([v13 preferredFormat] & 0x1000000) != 0)
              {
                v56 = 1.0;
              }

              else
              {
                v56 = 0.5;
              }

              LOBYTE(v126) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:640 height:640 framerate:30 payload:payload priority:&formats negotiationBitfield:0x1000000 negotiationBit:v56 rules:v15 isCellular16x9Capable:v126];
              formats &= ~0x1000000u;
              if (([v13 preferredFormat] & 0x2000000) != 0)
              {
                v57 = 1.0;
              }

              else
              {
                v57 = 0.5;
              }

              LOBYTE(v127) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:720 height:720 framerate:30 payload:payload priority:&formats negotiationBitfield:0x2000000 negotiationBit:v57 rules:v15 isCellular16x9Capable:v127];
              formats &= ~0x2000000u;
              if (([v13 preferredFormat] & 0x4000000) != 0)
              {
                v58 = 1.0;
              }

              else
              {
                v58 = 0.5;
              }

              LOBYTE(v128) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1024 height:576 framerate:30 payload:payload priority:&formats negotiationBitfield:0x4000000 negotiationBit:v58 rules:v15 isCellular16x9Capable:v128];
              formats &= ~0x4000000u;
              if (([v13 preferredFormat] & 0x8000000) != 0)
              {
                v59 = 1.0;
              }

              else
              {
                v59 = 0.5;
              }

              LOBYTE(v129) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1920 height:1080 framerate:30 payload:payload priority:&formats negotiationBitfield:0x8000000 negotiationBit:v59 rules:v15 isCellular16x9Capable:v129];
              formats &= ~0x8000000u;
              if (([v13 preferredFormat] & 0x10000000) != 0)
              {
                v60 = 1.0;
              }

              else
              {
                v60 = 0.5;
              }

              LOBYTE(v130) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1440 height:1080 framerate:30 payload:payload priority:&formats negotiationBitfield:0x10000000 negotiationBit:v60 rules:v15 isCellular16x9Capable:v130];
              formats &= ~0x10000000u;
              if (([v13 preferredFormat] & 0x20000000) != 0)
              {
                v61 = 1.0;
              }

              else
              {
                v61 = 0.5;
              }

              LOBYTE(v131) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:896 height:672 framerate:30 payload:payload priority:&formats negotiationBitfield:0x20000000 negotiationBit:v61 rules:v15 isCellular16x9Capable:v131];
              formats &= ~0x20000000u;
              if (([v13 preferredFormat] & 0x40000000) != 0)
              {
                v62 = 1.0;
              }

              else
              {
                v62 = 0.5;
              }

              LOBYTE(v132) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1920 height:1080 framerate:60 payload:payload priority:&formats negotiationBitfield:0x40000000 negotiationBit:v62 rules:v15 isCellular16x9Capable:v132];
              formats &= ~0x40000000u;
              if ([v13 preferredFormatExt1])
              {
                v63 = 1.0;
              }

              else
              {
                v63 = 0.5;
              }

              LOBYTE(v133) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:896 height:672 framerate:60 payload:payload priority:&formatsExt1 negotiationBitfield:1 negotiationBit:v63 rules:v15 isCellular16x9Capable:v133];
              formatsExt1 &= ~1u;
              if (([v13 preferredFormatExt1] & 2) != 0)
              {
                v64 = 1.0;
              }

              else
              {
                v64 = 0.5;
              }

              LOBYTE(v134) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1664 height:1248 framerate:30 payload:payload priority:&formatsExt1 negotiationBitfield:2 negotiationBit:v64 rules:v15 isCellular16x9Capable:v134];
              formatsExt1 &= ~2u;
              if (([v13 preferredFormatExt1] & 4) != 0)
              {
                v65 = 1.0;
              }

              else
              {
                v65 = 0.5;
              }

              LOBYTE(v135) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1664 height:1248 framerate:60 payload:payload priority:&formatsExt1 negotiationBitfield:4 negotiationBit:v65 rules:v15 isCellular16x9Capable:v135];
              formatsExt1 &= ~4u;
              if (([v13 preferredFormatExt1] & 8) != 0)
              {
                v66 = 1.0;
              }

              else
              {
                v66 = 0.5;
              }

              LOBYTE(v136) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1024 height:576 framerate:15 payload:payload priority:&formatsExt1 negotiationBitfield:8 negotiationBit:v66 rules:v15 isCellular16x9Capable:v136];
              formatsExt1 &= ~8u;
              if (([v13 preferredFormatExt1] & 0x10) != 0)
              {
                v67 = 1.0;
              }

              else
              {
                v67 = 0.5;
              }

              LOBYTE(v137) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:896 height:672 framerate:15 payload:payload priority:&formatsExt1 negotiationBitfield:16 negotiationBit:v67 rules:v15 isCellular16x9Capable:v137];
              formatsExt1 &= ~0x10u;
              if (([v13 preferredFormatExt1] & 0x20) != 0)
              {
                v68 = 1.0;
              }

              else
              {
                v68 = 0.5;
              }

              LOBYTE(v138) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1920 height:1440 framerate:60 payload:payload priority:&formatsExt1 negotiationBitfield:32 negotiationBit:v68 rules:v15 isCellular16x9Capable:v138];
              formatsExt1 &= ~0x20u;
              if (([v13 preferredFormatExt1] & 0x40) != 0)
              {
                v69 = 1.0;
              }

              else
              {
                v69 = 0.5;
              }

              LOBYTE(v139) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:4320 height:4320 framerate:90 payload:payload priority:&formatsExt1 negotiationBitfield:64 negotiationBit:v69 rules:v15 isCellular16x9Capable:v139];
              formatsExt1 &= ~0x40u;
              if (([v13 preferredFormatExt1] & 0x80) != 0)
              {
                v70 = 1.0;
              }

              else
              {
                v70 = 0.5;
              }

              LOBYTE(v140) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:3240 height:3240 framerate:30 payload:payload priority:&formatsExt1 negotiationBitfield:128 negotiationBit:v70 rules:v15 isCellular16x9Capable:v140];
              formatsExt1 &= ~0x80u;
              if (config || [v13 operation] == 2)
              {
                if (([v13 preferredFormat] & 0x400) != 0)
                {
                  v71 = 1.0;
                }

                else
                {
                  v71 = 0.5;
                }

                LOBYTE(v141) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1280 height:720 framerate:15 payload:payload priority:&formats negotiationBitfield:1024 negotiationBit:v71 rules:v15 isCellular16x9Capable:v141];
                formats &= ~0x400u;
                if (([v13 preferredFormat] & 0x800) != 0)
                {
                  v72 = 1.0;
                }

                else
                {
                  v72 = 0.5;
                }

                LOBYTE(v142) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1280 height:720 framerate:30 payload:payload priority:&formats negotiationBitfield:2048 negotiationBit:v72 rules:v15 isCellular16x9Capable:v142];
                formats &= ~0x800u;
                if (([v13 preferredFormat] & 0x2000) != 0)
                {
                  v73 = 1.0;
                }

                else
                {
                  v73 = 0.5;
                }

                LOBYTE(v143) = capableCopy;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1280 height:720 framerate:60 payload:payload priority:&formats negotiationBitfield:0x2000 negotiationBit:v73 rules:v15 isCellular16x9Capable:v143];
                formats &= ~0x2000u;
              }

              if (([v13 preferredFormat] & 0x4000) != 0)
              {
                v74 = 1.0;
              }

              else
              {
                v74 = 0.5;
              }

              LOBYTE(v141) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:480 height:272 framerate:15 payload:payload priority:&formats negotiationBitfield:0x4000 negotiationBit:v74 rules:v15 isCellular16x9Capable:v141];
              formats &= ~0x4000u;
              if (([v13 preferredFormat] & 0x8000) != 0)
              {
                v75 = 1.0;
              }

              else
              {
                v75 = 0.5;
              }

              LOBYTE(v144) = capableCopy;
              [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:480 height:272 framerate:30 payload:payload priority:&formats negotiationBitfield:0x8000 negotiationBit:v75 rules:v15 isCellular16x9Capable:v144];
              v40 = formats & 0xFFFF7FFF;
              formats &= ~0x8000u;
              if (capableCopy)
              {
                if (([v13 preferredFormat] & 0x10000) != 0)
                {
                  v76 = 1.0;
                }

                else
                {
                  v76 = 0.5;
                }

                LOBYTE(v87) = 1;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1280 height:720 framerate:15 payload:payload priority:&formats negotiationBitfield:0x10000 negotiationBit:v76 rules:v15 isCellular16x9Capable:v87];
                formats &= ~0x10000u;
                if (([v13 preferredFormat] & 0x20000) != 0)
                {
                  v77 = 1.0;
                }

                else
                {
                  v77 = 0.5;
                }

                LOBYTE(v145) = 1;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1280 height:720 framerate:30 payload:payload priority:&formats negotiationBitfield:0x20000 negotiationBit:v77 rules:v15 isCellular16x9Capable:v145];
                formats &= ~0x20000u;
                if (([v13 preferredFormat] & 0x40000) != 0)
                {
                  v78 = 1.0;
                }

                else
                {
                  v78 = 0.5;
                }

                LOBYTE(v146) = 1;
                [(VCMediaNegotiationBlobVideoSettings *)self checkAndInsertRuleWithWidth:1280 height:720 framerate:60 payload:payload priority:&formats negotiationBitfield:0x40000 negotiationBit:v78 rules:v15 isCellular16x9Capable:v146];
                v40 = formats & 0xFFFBFFFF;
                goto LABEL_206;
              }

LABEL_207:
              if (v40 | formatsExt1)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v79 = VRTraceErrorLogLevelToCSTR();
                  v80 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136316418;
                    v160 = v79;
                    v161 = 2080;
                    v162 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) newVideoRuleCollectionsForScreen:isCellular16x9Capable:isLocalConfig:]";
                    v163 = 1024;
                    v164 = 681;
                    v165 = 1024;
                    v166 = formats;
                    v167 = 1024;
                    v168 = formatsExt1;
                    v169 = 1024;
                    v170 = screenCopy;
                    _os_log_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Detected an unknown formats (bitfield=0x%08x, bitfieldExt1=0x%08x - screen=%d). Ignoring ...", buf, 0x2Eu);
                  }
                }
              }

              [v15 sortUsingSelector:sel_compare_];
              transport = [v13 transport];
              payload2 = [v154 payload];
              operation = [v13 operation];
              if (transport == 1)
              {
                v84 = 1;
              }

              else
              {
                v84 = 2;
              }

              if (operation == 1)
              {
                v85 = 1;
              }

              else
              {
                v85 = 2;
              }

              [(VCVideoRuleCollections *)v155 addVideoRules:v15 transportType:v84 payload:payload2 encodingType:v85];
            }

            v11 = [videoRuleCollections countByEnumeratingWithState:&v172 objects:v171 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }

LABEL_219:
          v7 = v150 + 1;
        }

        while (v150 + 1 != v148);
        v148 = [(NSMutableArray *)obj countByEnumeratingWithState:&v177 objects:v176 count:16];
      }

      while (v148);
    }
  }

  else
  {
    [VCMediaNegotiationBlobVideoSettings(VideoRules) newVideoRuleCollectionsForScreen:isCellular16x9Capable:isLocalConfig:];
LABEL_223:

    return 0;
  }

  return v155;
}

- (id)newCameraConfiguration
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(VCMediaNegotiatorVideoConfiguration);
  v4 = v3;
  if (!v3)
  {
    [(VCMediaNegotiationBlobVideoSettings(VideoRules) *)v10 newCameraConfiguration];
LABEL_9:

    return 0;
  }

  [(VCMediaNegotiatorCommonConfiguration *)v3 setSsrc:self->_rtpSSRC];
  v5 = [(VCMediaNegotiationBlobVideoSettings *)self newVideoRuleCollectionsForScreen:0 isCellular16x9Capable:1 isLocalConfig:1];
  if (!v5)
  {
    [(VCMediaNegotiationBlobVideoSettings(VideoRules) *)v10 newCameraConfiguration];
    goto LABEL_9;
  }

  v6 = v5;
  [(VCMediaNegotiatorVideoConfiguration *)v4 setVideoRuleCollections:v5];
  newFeatureStrings = [(VCMediaNegotiationBlobVideoSettings *)self newFeatureStrings];
  if (!newFeatureStrings)
  {
    [(VCMediaNegotiationBlobVideoSettings(VideoRules) *)v6 newCameraConfiguration];
    goto LABEL_9;
  }

  v8 = newFeatureStrings;
  [(VCMediaNegotiatorVideoConfiguration *)v4 setVideoFeatureStrings:newFeatureStrings];

  return v4;
}

- (id)newScreenConfigurationWithCameraConfiguration:(id)configuration
{
  if (configuration)
  {
    v4 = [configuration copy];
  }

  else
  {
    v4 = objc_alloc_init(VCMediaNegotiatorVideoConfiguration);
  }

  v5 = v4;
  if (v4)
  {
    [(VCMediaNegotiatorCommonConfiguration *)v4 setSsrc:self->_rtpSSRC];
    v6 = [(VCMediaNegotiationBlobVideoSettings *)self newVideoRuleCollectionsForScreen:1 isCellular16x9Capable:1 isLocalConfig:1];
    [(VCMediaNegotiatorVideoConfiguration *)v5 setVideoRuleCollections:v6];
  }

  else
  {
    [VCMediaNegotiationBlobVideoSettings(VideoRules) newScreenConfigurationWithCameraConfiguration:];
  }

  return v5;
}

- (id)newFeatureStrings
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableArray count](self->_videoPayloadCollections, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  videoPayloadCollections = self->_videoPayloadCollections;
  v5 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(videoPayloadCollections);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        payload = [v9 payload];
        featureString = [v9 featureString];
        [v3 setObject:featureString forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", payload)}];
      }

      v6 = [(NSMutableArray *)videoPayloadCollections countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)parameterSetStringFromPayloadSettings:(id)settings
{
  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
  v5 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F570E008];
  parameterSet = [settings parameterSet];
  v7 = 1;
  do
  {
    if ((v7 & parameterSet) != 0)
    {
      if (v7 < 9 && ((0x117u >> v7) & 1) != 0)
      {
        v8 = off_1E85F94A0[v7];
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
      }

      [v5 appendFormat:@", %@", v8];
    }

    v9 = v7 >= 8;
    v7 = (2 * v7);
  }

  while (!v9);

  return [v5 stringByTrimmingCharactersInSet:v4];
}

- (void)prepareFormatString:(id)string format:(id)format formatIndex:(unsigned int)index preferredFormat:(unsigned int)preferredFormat
{
  v9 = [format componentsSeparatedByString:@"_"];
  if ([v9 count] == 4)
  {
    v10 = [objc_msgSend(v9 objectAtIndexedSubscript:{3), "isEqualToString:", @"dec"}];
  }

  else
  {
    v10 = 0;
  }

  if ([v9 count] == 3 || v10 != 0)
  {
    v12 = [v9 objectAtIndex:1];
    v13 = [v9 objectAtIndex:2];
    v14 = "";
    if (v10)
    {
      v14 = "*";
    }

    [string appendFormat:@" %@@%@fps%s", v12, v13, v14];
    if ((preferredFormat & index) != 0)
    {
      [string appendString:@" (preferred)"];
    }

    [string appendString:{@", "}];
  }
}

- (void)printVideoWithLogFile:(void *)file
{
  v92 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v11 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule > 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v11;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      rtpSSRC = self->_rtpSSRC;
      allowRTCPFB = self->_allowRTCPFB;
      *buf = 136316162;
      v80 = v12;
      v81 = 2080;
      v82 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) printVideoWithLogFile:]";
      v83 = 1024;
      v84 = 788;
      v85 = 1024;
      *v86 = rtpSSRC;
      *&v86[4] = 1024;
      *&v86[6] = allowRTCPFB;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob - Video Settings: SSRC=%x allowRTCPFB=%u", buf, 0x28u);
    }
  }

  VRLogfilePrintWithTimestamp(file, "Media Blob - Video Settings: SSRC=%x allowRTCPFB=%u\n", v5, v6, v7, v8, v9, v10, self->_rtpSSRC);
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = self->_videoPayloadCollections;
  v68 = [(NSMutableArray *)obj countByEnumeratingWithState:&v88 objects:v87 count:16];
  if (v68)
  {
    v67 = *v89;
    do
    {
      v16 = 0;
      do
      {
        if (*v89 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v69 = v16;
        v17 = *(*(&v88 + 1) + 8 * v16);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            payload = [v17 payload];
            v21 = [objc_msgSend(v17 "featureString")];
            *buf = 136316162;
            v80 = v18;
            v81 = 2080;
            v82 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) printVideoWithLogFile:]";
            v83 = 1024;
            v84 = 792;
            v85 = 1024;
            *v86 = payload;
            *&v86[4] = 2080;
            *&v86[6] = v21;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     Payload=%u Format string=%s", buf, 0x2Cu);
          }
        }

        payload2 = [v17 payload];
        [objc_msgSend(v17 "featureString")];
        VRLogfilePrintWithTimestamp(file, "Media Blob -     Payload=%u Format string=%s\n", v23, v24, v25, v26, v27, v28, payload2);
        v29 = [(VCMediaNegotiationBlobVideoSettings *)self parameterSetStringFromPayloadSettings:v17];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            payload3 = [v17 payload];
            uTF8String = [v29 UTF8String];
            *buf = 136316162;
            v80 = v30;
            v81 = 2080;
            v82 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) printVideoWithLogFile:]";
            v83 = 1024;
            v84 = 796;
            v85 = 1024;
            *v86 = payload3;
            *&v86[4] = 2080;
            *&v86[6] = uTF8String;
            _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     Payload=%u Parameter set: %s", buf, 0x2Cu);
          }
        }

        payload4 = [v17 payload];
        [v29 UTF8String];
        VRLogfilePrintWithTimestamp(file, "Media Blob -     Payload=%u Parameter set: %s\n", v35, v36, v37, v38, v39, v40, payload4);
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        videoRuleCollections = [v17 videoRuleCollections];
        v73 = [videoRuleCollections countByEnumeratingWithState:&v75 objects:v74 count:16];
        if (v73)
        {
          v71 = *v76;
          do
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v76 != v71)
              {
                objc_enumerationMutation(videoRuleCollections);
              }

              v42 = *(*(&v75 + 1) + 8 * i);
              v43 = MEMORY[0x1E696AD60];
              v44 = v17;
              payload5 = [v17 payload];
              if ([v42 operation] == 1)
              {
                v46 = "encode";
              }

              else
              {
                v46 = "decode";
              }

              transport = [v42 transport];
              v48 = "Cellular";
              if (transport == 1)
              {
                v48 = "WiFi";
              }

              v49 = [v43 stringWithFormat:@"Payload=%u %s %s", payload5, v46, v48];
              if ([v42 hasPreferredFormat])
              {
                preferredFormat = [v42 preferredFormat];
              }

              else
              {
                preferredFormat = 0;
              }

              v51 = 1;
              do
              {
                if (([v42 formats] & v51) == 0)
                {
                  goto LABEL_110;
                }

                if (v51 >= 0x10000)
                {
                  if (v51 > 0xFFFFFF)
                  {
                    if (v51 > 0xFFFFFFF)
                    {
                      if (v51 > 0x3FFFFFFF)
                      {
                        if (v51 == 0x40000000)
                        {
                          v52 = @"video_1920x1080_60";
                        }

                        else
                        {
                          if (v51 != 0x7FFFFFFF)
                          {
LABEL_108:
                            v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v52, v51];
                            goto LABEL_109;
                          }

                          v52 = @"video_SUPPORTED";
                        }
                      }

                      else if (v51 == 0x10000000)
                      {
                        v52 = @"video_1440x1080_30";
                      }

                      else
                      {
                        if (v51 != 0x20000000)
                        {
                          goto LABEL_108;
                        }

                        v52 = @"video_896_672_30";
                      }
                    }

                    else if (v51 > 0x3FFFFFF)
                    {
                      if (v51 == 0x4000000)
                      {
                        v52 = @"video_1024x576_30";
                      }

                      else
                      {
                        if (v51 != 0x8000000)
                        {
                          goto LABEL_108;
                        }

                        v52 = @"video_1920x1080_30";
                      }
                    }

                    else if (v51 == 0x1000000)
                    {
                      v52 = @"video_640x640_30";
                    }

                    else
                    {
                      if (v51 != 0x2000000)
                      {
                        goto LABEL_108;
                      }

                      v52 = @"video_720x720_30";
                    }
                  }

                  else if (v51 >= 0x100000)
                  {
                    if (v51 >= 0x400000)
                    {
                      if (v51 == 0x400000)
                      {
                        v52 = @"video_320x320_30";
                      }

                      else
                      {
                        if (v51 != 0x800000)
                        {
                          goto LABEL_108;
                        }

                        v52 = @"video_480x480_30";
                      }
                    }

                    else if (v51 == 0x100000)
                    {
                      v52 = @"video_192x192_15";
                    }

                    else
                    {
                      if (v51 != 0x200000)
                      {
                        goto LABEL_108;
                      }

                      v52 = @"video_240x240_15";
                    }
                  }

                  else if (v51 >= 0x40000)
                  {
                    if (v51 == 0x40000)
                    {
                      v52 = @"video_1280x720_60_dec";
                    }

                    else
                    {
                      if (v51 != 0x80000)
                      {
                        goto LABEL_108;
                      }

                      v52 = @"video_192x112_15";
                    }
                  }

                  else if (v51 == 0x10000)
                  {
                    v52 = @"video_1280x720_15_dec";
                  }

                  else
                  {
                    if (v51 != 0x20000)
                    {
                      goto LABEL_108;
                    }

                    v52 = @"video_1280x720_30_dec";
                  }
                }

                else if (v51 > 255)
                {
                  if (v51 > 4095)
                  {
                    if (v51 >= 0x4000)
                    {
                      if (v51 == 0x4000)
                      {
                        v52 = @"video_480x272_15";
                      }

                      else
                      {
                        if (v51 != 0x8000)
                        {
                          goto LABEL_108;
                        }

                        v52 = @"video_480x272_30";
                      }
                    }

                    else if (v51 == 4096)
                    {
                      v52 = @"video_1024x768_60";
                    }

                    else
                    {
                      if (v51 != 0x2000)
                      {
                        goto LABEL_108;
                      }

                      v52 = @"video_1280x720_60";
                    }
                  }

                  else if (v51 > 1023)
                  {
                    if (v51 == 1024)
                    {
                      v52 = @"video_1280x720_15";
                    }

                    else
                    {
                      if (v51 != 2048)
                      {
                        goto LABEL_108;
                      }

                      v52 = @"video_1280x720_30";
                    }
                  }

                  else if (v51 == 256)
                  {
                    v52 = @"video_1024x768_15";
                  }

                  else
                  {
                    if (v51 != 512)
                    {
                      goto LABEL_108;
                    }

                    v52 = @"video_1024x768_30";
                  }
                }

                else if (v51 > 15)
                {
                  if (v51 > 63)
                  {
                    if (v51 == 64)
                    {
                      v52 = @"video_848x480_15";
                    }

                    else
                    {
                      if (v51 != 128)
                      {
                        goto LABEL_108;
                      }

                      v52 = @"video_848x480_30";
                    }
                  }

                  else if (v51 == 16)
                  {
                    v52 = @"video_640x480_15";
                  }

                  else
                  {
                    if (v51 != 32)
                    {
                      goto LABEL_108;
                    }

                    v52 = @"video_640x480_30";
                  }
                }

                else if (v51 > 3)
                {
                  if (v51 == 4)
                  {
                    v52 = @"video_480x368_15";
                  }

                  else
                  {
                    if (v51 != 8)
                    {
                      goto LABEL_108;
                    }

                    v52 = @"video_480x368_30";
                  }
                }

                else
                {
                  v52 = @"video_320x240_15";
                  if (v51 != 1)
                  {
                    if (v51 != 2)
                    {
                      goto LABEL_108;
                    }

                    v52 = @"video_320x240_30";
                  }
                }

LABEL_109:
                [(VCMediaNegotiationBlobVideoSettings *)self prepareFormatString:v49 format:v52 formatIndex:v51 preferredFormat:preferredFormat];
LABEL_110:
                v53 = (v51 & 0x3FFFFFFF) == 0;
                v51 = (2 * v51);
              }

              while (!v53);
              if ([v42 hasPreferredFormatExt1])
              {
                preferredFormatExt1 = [v42 preferredFormatExt1];
              }

              else
              {
                preferredFormatExt1 = 0;
              }

              v55 = 1;
              while (2)
              {
                if (([v42 formatsExt1] & v55) != 0)
                {
                  if (v55 <= 15)
                  {
                    if (v55 > 3)
                    {
                      if (v55 == 4)
                      {
                        v56 = @"video_1664x1248_60";
                      }

                      else
                      {
                        if (v55 != 8)
                        {
                          goto LABEL_137;
                        }

                        v56 = @"video_1024x576_15";
                      }
                    }

                    else
                    {
                      v56 = @"video_896x672_60";
                      if (v55 != 1)
                      {
                        if (v55 != 2)
                        {
                          goto LABEL_137;
                        }

                        v56 = @"video_1664x1248_30";
                      }
                    }
                  }

                  else if (v55 <= 63)
                  {
                    if (v55 == 16)
                    {
                      v56 = @"video_896x672_15";
                    }

                    else
                    {
                      if (v55 != 32)
                      {
                        goto LABEL_137;
                      }

                      v56 = @"video_1920x1440_60";
                    }
                  }

                  else
                  {
                    switch(v55)
                    {
                      case 0x40:
                        v56 = @"video_2x4320x4320_90";
                        break;
                      case 0x80:
                        v56 = @"video_2x3240x3240_30";
                        break;
                      case 0xFF:
                        v56 = @"video_SUPPORTED";
                        break;
                      default:
LABEL_137:
                        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v55];
                        break;
                    }
                  }

                  [(VCMediaNegotiationBlobVideoSettings *)self prepareFormatString:v49 format:v56 formatIndex:v55 preferredFormat:preferredFormatExt1];
                }

                v53 = (v55 & 0x7F) == 0;
                v55 = (2 * v55);
                if (!v53)
                {
                  continue;
                }

                break;
              }

              v57 = [objc_msgSend(v49 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @", ")), "UTF8String"}];
              if (VRTraceGetErrorLogLevelForModule() > 6)
              {
                v64 = VRTraceErrorLogLevelToCSTR();
                v65 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v80 = v64;
                  v81 = 2080;
                  v82 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) printVideoWithLogFile:]";
                  v83 = 1024;
                  v84 = 823;
                  v85 = 2080;
                  *v86 = v57;
                  _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s", buf, 0x26u);
                }
              }

              VRLogfilePrintWithTimestamp(file, "Media Blob -     %s\n", v58, v59, v60, v61, v62, v63, v57);
              v17 = v44;
            }

            v73 = [videoRuleCollections countByEnumeratingWithState:&v75 objects:v74 count:16];
          }

          while (v73);
        }

        v16 = v69 + 1;
      }

      while (v69 + 1 != v68);
      v68 = [(NSMutableArray *)obj countByEnumeratingWithState:&v88 objects:v87 count:16];
    }

    while (v68);
  }
}

- (void)printScreenWithLogFile:(void *)file
{
  v89 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule > 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      rtpSSRC = self->_rtpSSRC;
      allowRTCPFB = self->_allowRTCPFB;
      *buf = 136316162;
      v77 = v11;
      v78 = 2080;
      v79 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) printScreenWithLogFile:]";
      v80 = 1024;
      v81 = 830;
      v82 = 1024;
      *v83 = rtpSSRC;
      *&v83[4] = 1024;
      *&v83[6] = allowRTCPFB;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob - Screen Settings: SSRC=%x allowRTCPFB=%u", buf, 0x28u);
    }
  }

  VRLogfilePrintWithTimestamp(file, "Media Blob - Screen Settings: SSRC=%x allowRTCPFB=%u\n", v4, v5, v6, v7, v8, v9, self->_rtpSSRC);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = self->_videoPayloadCollections;
  v64 = [(NSMutableArray *)obj countByEnumeratingWithState:&v85 objects:v84 count:16];
  if (v64)
  {
    v62 = *v86;
    do
    {
      v15 = 0;
      do
      {
        if (*v86 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v85 + 1) + 8 * v15);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = [objc_msgSend(v16 "featureString")];
            *buf = 136315906;
            v77 = v17;
            v78 = 2080;
            v79 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) printScreenWithLogFile:]";
            v80 = 1024;
            v81 = 834;
            v82 = 2080;
            *v83 = v19;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     Format string=%s", buf, 0x26u);
          }
        }

        v65 = v15;
        v20 = [objc_msgSend(v16 "featureString")];
        VRLogfilePrintWithTimestamp(file, "Media Blob -     Format string=%s\n", v21, v22, v23, v24, v25, v26, v20);
        v27 = [(VCMediaNegotiationBlobVideoSettings *)self parameterSetStringFromPayloadSettings:v16];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            payload = [v16 payload];
            uTF8String = [v27 UTF8String];
            *buf = 136316162;
            v77 = v28;
            v78 = 2080;
            v79 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) printScreenWithLogFile:]";
            v80 = 1024;
            v81 = 838;
            v82 = 1024;
            *v83 = payload;
            *&v83[4] = 2080;
            *&v83[6] = uTF8String;
            _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     Payload=%u parameter set: %s", buf, 0x2Cu);
          }
        }

        payload2 = [v16 payload];
        [v27 UTF8String];
        VRLogfilePrintWithTimestamp(file, "Media Blob -     Payload=%u parameter set: %s\n", v33, v34, v35, v36, v37, v38, payload2);
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        videoRuleCollections = [v16 videoRuleCollections];
        v70 = [videoRuleCollections countByEnumeratingWithState:&v72 objects:v71 count:16];
        if (v70)
        {
          v67 = *v73;
          v68 = v16;
          do
          {
            for (i = 0; i != v70; ++i)
            {
              if (*v73 != v67)
              {
                objc_enumerationMutation(videoRuleCollections);
              }

              v40 = *(*(&v72 + 1) + 8 * i);
              v41 = MEMORY[0x1E696AD60];
              payload3 = [v16 payload];
              if ([v40 operation] == 1)
              {
                v43 = "encode";
              }

              else
              {
                v43 = "decode";
              }

              transport = [v40 transport];
              v45 = "Cellular";
              if (transport == 1)
              {
                v45 = "WiFi";
              }

              v46 = [v41 stringWithFormat:@"Payload=%u %s %s", payload3, v43, v45];
              if ([v40 hasPreferredFormat])
              {
                preferredFormat = [v40 preferredFormat];
              }

              else
              {
                preferredFormat = 0;
              }

              v48 = 1;
              do
              {
                if (([v40 formats] & v48) == 0)
                {
                  goto LABEL_93;
                }

                if (v48 <= 4095)
                {
                  if (v48 > 63)
                  {
                    if (v48 > 511)
                    {
                      switch(v48)
                      {
                        case 0x200:
                          v49 = @"screen_1920x1080_60";
                          goto LABEL_89;
                        case 0x400:
                          v49 = @"screen_2208x1242_30";
                          goto LABEL_89;
                        case 0x800:
                          v49 = @"screen_2208x1242_60";
                          goto LABEL_89;
                      }
                    }

                    else
                    {
                      switch(v48)
                      {
                        case 0x40:
                          v49 = @"screen_1664x1248_30";
                          goto LABEL_89;
                        case 0x80:
                          v49 = @"screen_1664x1248_60";
                          goto LABEL_89;
                        case 0x100:
                          v49 = @"screen_1920x1080_30";
                          goto LABEL_89;
                      }
                    }
                  }

                  else if (v48 > 7)
                  {
                    switch(v48)
                    {
                      case 8:
                        v49 = @"screen_1136x640_60";
                        goto LABEL_89;
                      case 0x10:
                        v49 = @"screen_1334x750_30";
                        goto LABEL_89;
                      case 0x20:
                        v49 = @"screen_1334x750_60";
                        goto LABEL_89;
                    }
                  }

                  else
                  {
                    switch(v48)
                    {
                      case 1:
                        v49 = @"screen_1024x768_30";
                        goto LABEL_89;
                      case 2:
                        v49 = @"screen_1024x768_60";
                        goto LABEL_89;
                      case 4:
                        v49 = @"screen_1136x640_30";
                        goto LABEL_89;
                    }
                  }
                }

                else if (v48 < 0x40000)
                {
                  if (v48 >= 0x8000)
                  {
                    switch(v48)
                    {
                      case 0x8000:
                        v49 = @"screen_1280x720_60";
                        goto LABEL_89;
                      case 0x10000:
                        v49 = @"screen_1920x896_30";
                        goto LABEL_89;
                      case 0x20000:
                        v49 = @"screen_1920x896_60";
                        goto LABEL_89;
                    }
                  }

                  else
                  {
                    switch(v48)
                    {
                      case 0x1000:
                        v49 = @"screen_2048x1536_30";
                        goto LABEL_89;
                      case 0x2000:
                        v49 = @"screen_2048x1536_60";
                        goto LABEL_89;
                      case 0x4000:
                        v49 = @"screen_1280x720_30";
                        goto LABEL_89;
                    }
                  }
                }

                else if (v48 < 0x200000)
                {
                  switch(v48)
                  {
                    case 0x40000:
                      v49 = @"screen_2732x2048_60";
                      goto LABEL_89;
                    case 0x80000:
                      v49 = @"screen_2388x1668_60";
                      goto LABEL_89;
                    case 0x100000:
                      v49 = @"screen_2224x1668_60";
                      goto LABEL_89;
                  }
                }

                else if (v48 >= 0x800000)
                {
                  if (v48 == 0x800000)
                  {
                    v49 = @"screen_3584x1792_90";
                    goto LABEL_89;
                  }

                  if (v48 == 0xFFFFFF)
                  {
                    v49 = @"screen_SUPPORTED";
                    goto LABEL_89;
                  }
                }

                else
                {
                  if (v48 == 0x200000)
                  {
                    v49 = @"screen_3072x1728_60";
                    goto LABEL_89;
                  }

                  if (v48 == 0x400000)
                  {
                    v49 = @"screen_3840x2160_60";
                    goto LABEL_89;
                  }
                }

                v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v48];
LABEL_89:
                v50 = [(__CFString *)v49 componentsSeparatedByString:@"_"];
                if ([v50 count] == 3)
                {
                  [v46 appendFormat:@" %@@%@fps", objc_msgSend(v50, "objectAtIndex:", 1), objc_msgSend(v50, "objectAtIndex:", 2)];
                  if (preferredFormat == v48)
                  {
                    [v46 appendString:@" (preferred)"];
                  }

                  [v46 appendString:{@", "}];
                }

LABEL_93:
                v51 = (v48 & 0x7FFFFF) == 0;
                v48 = (2 * v48);
              }

              while (!v51);
              v52 = [objc_msgSend(v46 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @", ")), "UTF8String"}];
              if (VRTraceGetErrorLogLevelForModule() > 6)
              {
                v59 = VRTraceErrorLogLevelToCSTR();
                v60 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v77 = v59;
                  v78 = 2080;
                  v79 = "[VCMediaNegotiationBlobVideoSettings(VideoRules) printScreenWithLogFile:]";
                  v80 = 1024;
                  v81 = 863;
                  v82 = 2080;
                  *v83 = v52;
                  _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s", buf, 0x26u);
                }
              }

              VRLogfilePrintWithTimestamp(file, "Media Blob -     %s\n", v53, v54, v55, v56, v57, v58, v52);
              v16 = v68;
            }

            v70 = [videoRuleCollections countByEnumeratingWithState:&v72 objects:v71 count:16];
          }

          while (v70);
        }

        v15 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = [(NSMutableArray *)obj countByEnumeratingWithState:&v85 objects:v84 count:16];
    }

    while (v64);
  }
}

@end