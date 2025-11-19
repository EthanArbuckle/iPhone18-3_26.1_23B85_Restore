@interface VCMediaNegotiationBlobV2CameraSettingsU1
+ (int)deviceOrientationFromNegotiationDeviceOrientation:(int)a3;
+ (int)negotiationDeviceOrientationFromDeviceOrientation:(int)a3;
- (BOOL)addVideoRules:(id)a3 encodingType:(unsigned __int8)a4 payload:(int)a5 videoRuleCollections:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)setupVideoRuleCollection:(id)a3 featureListStrings:(id)a4;
- (CGSize)orientationMismatchDisplayRatio;
- (VCMediaNegotiationBlobV2CameraSettingsU1)initWithSSRC:(unsigned int)a3 videoRuleCollections:(id)a4 screenSize:(CGSize)a5 aspectRatioPortrait:(CGSize)a6 aspectRatioLandscape:(CGSize)a7 orientationMismatchAspectRatioLandscape:(CGSize)a8 featureListStrings:(id)a9 u1AuthTagEnabled:(BOOL)a10 videoFrameMetadataSupportedVersion:(int)a11;
- (VCVideoRuleCollections)videoRuleCollections;
- (id)cipherSuitesAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)deviceOrientationAsString:(int)a3;
- (id)dictionaryRepresentation;
- (id)rulesForEncodeType:(unsigned __int8)a3 paylaod:(int)a4 videoRuleCollection:(id)a5;
- (int)StringAsCipherSuites:(id)a3;
- (int)StringAsDeviceOrientation:(id)a3;
- (int)cipherSuites;
- (int)deviceOrientation;
- (unint64_t)hash;
- (void)addPayloads:(id)a3;
- (void)appendFullScreenFeatureString:(id)a3 screenSize:(CGSize)a4;
- (void)aspectRatioPortrait:(CGSize *)a3 aspectRatioLandscape:(CGSize *)a4 mismatchFullScreenAspectRatios:(tagVCAspectRatios *)a5 screenSize:(CGSize)a6;
- (void)aspectRatioPortrait:(CGSize *)a3 aspectRatioLandscape:(CGSize *)a4 orientationMismatchAspectRatioLandscape:(CGSize *)a5 orientationMismatchAspectRatioPortrait:(CGSize *)a6 screenSize:(CGSize)a7;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)printWithLogFile:(void *)a3 prefix:(id)a4 screenSize:(CGSize)a5;
- (void)setHasCipherSuites:(BOOL)a3;
- (void)setHasDeviceOrientation:(BOOL)a3;
- (void)setHasFrontCameraFullScreenCaptureSupported:(BOOL)a3;
- (void)setHasLandscapeAspectRatioX:(BOOL)a3;
- (void)setHasLandscapeAspectRatioY:(BOOL)a3;
- (void)setHasMismatchedDisplayAspectRatioX:(BOOL)a3;
- (void)setHasMismatchedDisplayAspectRatioY:(BOOL)a3;
- (void)setHasMismatchedFullScreenDisplayAspectRatioX:(BOOL)a3;
- (void)setHasMismatchedFullScreenDisplayAspectRatioY:(BOOL)a3;
- (void)setHasPortraitAspectRatioX:(BOOL)a3;
- (void)setHasPortraitAspectRatioY:(BOOL)a3;
- (void)setHasRtpSSRC:(BOOL)a3;
- (void)setHasVideoFrameMetadataSupportedVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobV2CameraSettingsU1

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self setPayloads:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2CameraSettingsU1;
  [(VCMediaNegotiationBlobV2CameraSettingsU1 *)&v3 dealloc];
}

- (void)setHasRtpSSRC:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)addPayloads:(id)a3
{
  payloads = self->_payloads;
  if (!payloads)
  {
    payloads = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_payloads = payloads;
  }

  [(NSMutableArray *)payloads addObject:a3];
}

- (void)setHasLandscapeAspectRatioX:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLandscapeAspectRatioY:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPortraitAspectRatioX:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasPortraitAspectRatioY:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasMismatchedDisplayAspectRatioX:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMismatchedDisplayAspectRatioY:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)cipherSuites
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_cipherSuites;
  }

  else
  {
    return 1;
  }
}

- (void)setHasCipherSuites:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)cipherSuitesAsString:(int)a3
{
  if (a3 > 7)
  {
    if (a3 == 8)
    {
      return @"CipherAES256AuthSHA280RCCM2Deferred";
    }

    if (a3 != 16)
    {
      if (a3 == 31)
      {
        return @"SupportedMask";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }

    return @"CipherAES256AuthSHA232RCCM2Deferred";
  }

  else
  {
    if (a3 == 1)
    {
      return @"CipherAES128AuthNoneRCCM3";
    }

    if (a3 != 2)
    {
      if (a3 == 4)
      {
        return @"CipherAES128AuthSHA232RCCM2Deferred";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }

    return @"CipherAES128AuthSHA280RCCM2Deferred";
  }
}

- (int)StringAsCipherSuites:(id)a3
{
  if ([a3 isEqualToString:@"CipherAES128AuthNoneRCCM3"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"CipherAES128AuthSHA280RCCM2Deferred"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"CipherAES128AuthSHA232RCCM2Deferred"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"CipherAES256AuthSHA280RCCM2Deferred"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"CipherAES256AuthSHA232RCCM2Deferred"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"SupportedMask"])
  {
    return 31;
  }

  return 1;
}

- (void)setHasMismatchedFullScreenDisplayAspectRatioX:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMismatchedFullScreenDisplayAspectRatioY:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasFrontCameraFullScreenCaptureSupported:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)deviceOrientation
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_deviceOrientation;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeviceOrientation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)deviceOrientationAsString:(int)a3
{
  if (a3 >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return off_1E85F84E0[a3];
  }
}

- (int)StringAsDeviceOrientation:(id)a3
{
  if ([a3 isEqualToString:@"VideoAttributeOrientationPortrait"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"VideoAttributeOrientationPortraitUpsideDown"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"VideoAttributeOrientationLandscapeLeft"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"VideoAttributeOrientationLandscapeRight"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasVideoFrameMetadataSupportedVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2CameraSettingsU1;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2CameraSettingsU1 description](&v3, sel_description), -[VCMediaNegotiationBlobV2CameraSettingsU1 dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x1000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpSSRC), @"rtpSSRC"}];
  }

  if ([(NSMutableArray *)self->_payloads count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_payloads, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    payloads = self->_payloads;
    v6 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(payloads);
          }

          [v4 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"payloads"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_landscapeAspectRatioX), @"landscapeAspectRatioX"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_14:
      if ((has & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_14;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_landscapeAspectRatioY), @"landscapeAspectRatioY"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_15:
    if ((has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_portraitAspectRatioX), @"portraitAspectRatioX"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_16:
    if ((has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_portraitAspectRatioY), @"portraitAspectRatioY"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_17:
    if ((has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mismatchedDisplayAspectRatioX), @"mismatchedDisplayAspectRatioX"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mismatchedDisplayAspectRatioY), @"mismatchedDisplayAspectRatioY"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_33:
  cipherSuites = self->_cipherSuites;
  if (cipherSuites > 7)
  {
    if (cipherSuites == 8)
    {
      v13 = @"CipherAES256AuthSHA280RCCM2Deferred";
      goto LABEL_47;
    }

    if (cipherSuites != 16)
    {
      if (cipherSuites == 31)
      {
        v13 = @"SupportedMask";
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v13 = @"CipherAES256AuthSHA232RCCM2Deferred";
  }

  else
  {
    if (cipherSuites == 1)
    {
      v13 = @"CipherAES128AuthNoneRCCM3";
      goto LABEL_47;
    }

    if (cipherSuites != 2)
    {
      if (cipherSuites == 4)
      {
        v13 = @"CipherAES128AuthSHA232RCCM2Deferred";
        goto LABEL_47;
      }

LABEL_44:
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_cipherSuites];
      goto LABEL_47;
    }

    v13 = @"CipherAES128AuthSHA280RCCM2Deferred";
  }

LABEL_47:
  [v3 setObject:v13 forKey:@"cipherSuites"];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_20:
    if ((has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mismatchedFullScreenDisplayAspectRatioX), @"mismatchedFullScreenDisplayAspectRatioX"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_21:
    if ((has & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mismatchedFullScreenDisplayAspectRatioY), @"mismatchedFullScreenDisplayAspectRatioY"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_22:
    if ((has & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_frontCameraFullScreenCaptureSupported), @"frontCameraFullScreenCaptureSupported"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_23:
    if ((has & 4) == 0)
    {
      goto LABEL_24;
    }

LABEL_52:
    deviceOrientation = self->_deviceOrientation;
    if (deviceOrientation >= 4)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deviceOrientation];
    }

    else
    {
      v15 = off_1E85F84E0[deviceOrientation];
    }

    [v3 setObject:v15 forKey:@"deviceOrientation"];
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_25;
    }

    return v3;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_backCameraFullScreenCaptureSupported), @"backCameraFullScreenCaptureSupported"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  if ((has & 0x2000) != 0)
  {
LABEL_25:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_videoFrameMetadataSupportedVersion), @"videoFrameMetadataSupportedVersion"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*&self->_has & 0x1000) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  payloads = self->_payloads;
  v5 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(payloads);
        }

        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_12:
      if ((has & 0x400) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_12;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_14:
    if ((has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_17:
    if ((has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_18:
    if ((has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_19:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_20:
    if ((has & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_21:
    if ((has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_22:
    if ((has & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_36:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x2000) == 0)
  {
    return;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x1000) != 0)
  {
    *(a3 + 16) = self->_rtpSSRC;
    *(a3 + 36) |= 0x1000u;
  }

  if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self payloadsCount])
  {
    [a3 clearPayloads];
    v5 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self payloadsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addPayloads:{-[VCMediaNegotiationBlobV2CameraSettingsU1 payloadsAtIndex:](self, "payloadsAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 6) = self->_landscapeAspectRatioX;
    *(a3 + 36) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_9:
      if ((has & 0x400) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_9;
  }

  *(a3 + 7) = self->_landscapeAspectRatioY;
  *(a3 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 14) = self->_portraitAspectRatioX;
  *(a3 + 36) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 15) = self->_portraitAspectRatioY;
  *(a3 + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 8) = self->_mismatchedDisplayAspectRatioX;
  *(a3 + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 9) = self->_mismatchedDisplayAspectRatioY;
  *(a3 + 36) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 3) = self->_cipherSuites;
  *(a3 + 36) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a3 + 10) = self->_mismatchedFullScreenDisplayAspectRatioX;
  *(a3 + 36) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a3 + 11) = self->_mismatchedFullScreenDisplayAspectRatioY;
  *(a3 + 36) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_17:
    if ((has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a3 + 5) = self->_frontCameraFullScreenCaptureSupported;
  *(a3 + 36) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_18:
    if ((has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a3 + 2) = self->_backCameraFullScreenCaptureSupported;
  *(a3 + 36) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_19:
    if ((has & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_33:
  *(a3 + 4) = self->_deviceOrientation;
  *(a3 + 36) |= 4u;
  if ((*&self->_has & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  *(a3 + 17) = self->_videoFrameMetadataSupportedVersion;
  *(a3 + 36) |= 0x2000u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x1000) != 0)
  {
    *(v5 + 64) = self->_rtpSSRC;
    *(v5 + 72) |= 0x1000u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  payloads = self->_payloads;
  v8 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(payloads);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addPayloads:v12];
      }

      v9 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 24) = self->_landscapeAspectRatioX;
    *(v6 + 72) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_12:
      if ((has & 0x400) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 28) = self->_landscapeAspectRatioY;
  *(v6 + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 56) = self->_portraitAspectRatioX;
  *(v6 + 72) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_14:
    if ((has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 60) = self->_portraitAspectRatioY;
  *(v6 + 72) |= 0x800u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 32) = self->_mismatchedDisplayAspectRatioX;
  *(v6 + 72) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 36) = self->_mismatchedDisplayAspectRatioY;
  *(v6 + 72) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_17:
    if ((has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v6 + 12) = self->_cipherSuites;
  *(v6 + 72) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_18:
    if ((has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v6 + 40) = self->_mismatchedFullScreenDisplayAspectRatioX;
  *(v6 + 72) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_19:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 44) = self->_mismatchedFullScreenDisplayAspectRatioY;
  *(v6 + 72) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_20:
    if ((has & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 20) = self->_frontCameraFullScreenCaptureSupported;
  *(v6 + 72) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_21:
    if ((has & 4) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    *(v6 + 16) = self->_deviceOrientation;
    *(v6 + 72) |= 4u;
    if ((*&self->_has & 0x2000) == 0)
    {
      return v6;
    }

    goto LABEL_23;
  }

LABEL_35:
  *(v6 + 8) = self->_backCameraFullScreenCaptureSupported;
  *(v6 + 72) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((has & 0x2000) != 0)
  {
LABEL_23:
    *(v6 + 68) = self->_videoFrameMetadataSupportedVersion;
    *(v6 + 72) |= 0x2000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    if ((has & 0x1000) != 0)
    {
      if ((*(a3 + 36) & 0x1000) == 0 || self->_rtpSSRC != *(a3 + 16))
      {
        goto LABEL_74;
      }
    }

    else if ((*(a3 + 36) & 0x1000) != 0)
    {
LABEL_74:
      LOBYTE(v5) = 0;
      return v5;
    }

    payloads = self->_payloads;
    if (payloads | *(a3 + 6))
    {
      v5 = [(NSMutableArray *)payloads isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v8 = *(a3 + 36);
    if ((has & 0x10) != 0)
    {
      if ((v8 & 0x10) == 0 || self->_landscapeAspectRatioX != *(a3 + 6))
      {
        goto LABEL_74;
      }
    }

    else if ((v8 & 0x10) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x20) != 0)
    {
      if ((v8 & 0x20) == 0 || self->_landscapeAspectRatioY != *(a3 + 7))
      {
        goto LABEL_74;
      }
    }

    else if ((v8 & 0x20) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x400) != 0)
    {
      if ((*(a3 + 36) & 0x400) == 0 || self->_portraitAspectRatioX != *(a3 + 14))
      {
        goto LABEL_74;
      }
    }

    else if ((*(a3 + 36) & 0x400) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x800) != 0)
    {
      if ((*(a3 + 36) & 0x800) == 0 || self->_portraitAspectRatioY != *(a3 + 15))
      {
        goto LABEL_74;
      }
    }

    else if ((*(a3 + 36) & 0x800) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x40) != 0)
    {
      if ((v8 & 0x40) == 0 || self->_mismatchedDisplayAspectRatioX != *(a3 + 8))
      {
        goto LABEL_74;
      }
    }

    else if ((v8 & 0x40) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x80) != 0)
    {
      if ((v8 & 0x80) == 0 || self->_mismatchedDisplayAspectRatioY != *(a3 + 9))
      {
        goto LABEL_74;
      }
    }

    else if ((v8 & 0x80) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 2) != 0)
    {
      if ((v8 & 2) == 0 || self->_cipherSuites != *(a3 + 3))
      {
        goto LABEL_74;
      }
    }

    else if ((v8 & 2) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x100) != 0)
    {
      if ((*(a3 + 36) & 0x100) == 0 || self->_mismatchedFullScreenDisplayAspectRatioX != *(a3 + 10))
      {
        goto LABEL_74;
      }
    }

    else if ((*(a3 + 36) & 0x100) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(a3 + 36) & 0x200) == 0 || self->_mismatchedFullScreenDisplayAspectRatioY != *(a3 + 11))
      {
        goto LABEL_74;
      }
    }

    else if ((*(a3 + 36) & 0x200) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 8) != 0)
    {
      if ((v8 & 8) == 0 || self->_frontCameraFullScreenCaptureSupported != *(a3 + 5))
      {
        goto LABEL_74;
      }
    }

    else if ((v8 & 8) != 0)
    {
      goto LABEL_74;
    }

    if (has)
    {
      if ((v8 & 1) == 0 || self->_backCameraFullScreenCaptureSupported != *(a3 + 2))
      {
        goto LABEL_74;
      }
    }

    else if (v8)
    {
      goto LABEL_74;
    }

    if ((has & 4) != 0)
    {
      if ((v8 & 4) == 0 || self->_deviceOrientation != *(a3 + 4))
      {
        goto LABEL_74;
      }
    }

    else if ((v8 & 4) != 0)
    {
      goto LABEL_74;
    }

    LOBYTE(v5) = (v8 & 0x2000) == 0;
    if ((has & 0x2000) != 0)
    {
      if ((*(a3 + 36) & 0x2000) == 0 || self->_videoFrameMetadataSupportedVersion != *(a3 + 17))
      {
        goto LABEL_74;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x1000) != 0)
  {
    v3 = 2654435761 * self->_rtpSSRC;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_payloads hash];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_landscapeAspectRatioX;
    if ((has & 0x20) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_landscapeAspectRatioY;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_portraitAspectRatioX;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_portraitAspectRatioY;
    if ((has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_mismatchedDisplayAspectRatioX;
    if ((has & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_mismatchedDisplayAspectRatioY;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((has & 2) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_cipherSuites;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_mismatchedFullScreenDisplayAspectRatioX;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_mismatchedFullScreenDisplayAspectRatioY;
    if ((has & 8) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = 0;
  if ((has & 8) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_frontCameraFullScreenCaptureSupported;
    if (has)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
  if (has)
  {
LABEL_15:
    v16 = 2654435761 * self->_backCameraFullScreenCaptureSupported;
    if ((has & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_29:
    v17 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_17;
    }

LABEL_30:
    v18 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_28:
  v16 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  v17 = 2654435761 * self->_deviceOrientation;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = 2654435761 * self->_videoFrameMetadataSupportedVersion;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 36) & 0x1000) != 0)
  {
    self->_rtpSSRC = *(a3 + 16);
    *&self->_has |= 0x1000u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a3 + 6);
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

        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self addPayloads:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  v10 = *(a3 + 36);
  if ((v10 & 0x10) != 0)
  {
    self->_landscapeAspectRatioX = *(a3 + 6);
    *&self->_has |= 0x10u;
    v10 = *(a3 + 36);
    if ((v10 & 0x20) == 0)
    {
LABEL_12:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((v10 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  self->_landscapeAspectRatioY = *(a3 + 7);
  *&self->_has |= 0x20u;
  v10 = *(a3 + 36);
  if ((v10 & 0x400) == 0)
  {
LABEL_13:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_portraitAspectRatioX = *(a3 + 14);
  *&self->_has |= 0x400u;
  v10 = *(a3 + 36);
  if ((v10 & 0x800) == 0)
  {
LABEL_14:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_portraitAspectRatioY = *(a3 + 15);
  *&self->_has |= 0x800u;
  v10 = *(a3 + 36);
  if ((v10 & 0x40) == 0)
  {
LABEL_15:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_mismatchedDisplayAspectRatioX = *(a3 + 8);
  *&self->_has |= 0x40u;
  v10 = *(a3 + 36);
  if ((v10 & 0x80) == 0)
  {
LABEL_16:
    if ((v10 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_mismatchedDisplayAspectRatioY = *(a3 + 9);
  *&self->_has |= 0x80u;
  v10 = *(a3 + 36);
  if ((v10 & 2) == 0)
  {
LABEL_17:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_cipherSuites = *(a3 + 3);
  *&self->_has |= 2u;
  v10 = *(a3 + 36);
  if ((v10 & 0x100) == 0)
  {
LABEL_18:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_mismatchedFullScreenDisplayAspectRatioX = *(a3 + 10);
  *&self->_has |= 0x100u;
  v10 = *(a3 + 36);
  if ((v10 & 0x200) == 0)
  {
LABEL_19:
    if ((v10 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_mismatchedFullScreenDisplayAspectRatioY = *(a3 + 11);
  *&self->_has |= 0x200u;
  v10 = *(a3 + 36);
  if ((v10 & 8) == 0)
  {
LABEL_20:
    if ((v10 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_frontCameraFullScreenCaptureSupported = *(a3 + 5);
  *&self->_has |= 8u;
  v10 = *(a3 + 36);
  if ((v10 & 1) == 0)
  {
LABEL_21:
    if ((v10 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_backCameraFullScreenCaptureSupported = *(a3 + 2);
  *&self->_has |= 1u;
  v10 = *(a3 + 36);
  if ((v10 & 4) == 0)
  {
LABEL_22:
    if ((v10 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_36:
  self->_deviceOrientation = *(a3 + 4);
  *&self->_has |= 4u;
  if ((*(a3 + 36) & 0x2000) == 0)
  {
    return;
  }

LABEL_23:
  self->_videoFrameMetadataSupportedVersion = *(a3 + 17);
  *&self->_has |= 0x2000u;
}

- (VCMediaNegotiationBlobV2CameraSettingsU1)initWithSSRC:(unsigned int)a3 videoRuleCollections:(id)a4 screenSize:(CGSize)a5 aspectRatioPortrait:(CGSize)a6 aspectRatioLandscape:(CGSize)a7 orientationMismatchAspectRatioLandscape:(CGSize)a8 featureListStrings:(id)a9 u1AuthTagEnabled:(BOOL)a10 videoFrameMetadataSupportedVersion:(int)a11
{
  v11 = *&a11;
  v12 = a10;
  height = a8.height;
  width = a8.width;
  v17 = a7.height;
  v18 = a7.width;
  v19 = a6.height;
  v20 = a6.width;
  v21 = *&a3;
  v29 = *MEMORY[0x1E69E9840];
  v28 = a5;
  v22 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self init];
  v23 = v22;
  if (v22)
  {
    [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v22 setRtpSSRC:v21];
    if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setupVideoRuleCollection:a4 featureListStrings:a9])
    {
      SimplifyFixedPointRatio(&v28.width);
      if (v28.height != v20)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setPortraitAspectRatioX:v20, v28.height];
      }

      v24 = v28.width;
      if (v28.width != v19)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setPortraitAspectRatioY:v19, v28.width];
        v24 = v28.width;
      }

      if (v24 != v18)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setLandscapeAspectRatioX:v18];
      }

      v25 = v28.height;
      if (v28.height != v17)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setLandscapeAspectRatioY:v17, v28.height];
      }

      if (v18 != width)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setMismatchedDisplayAspectRatioX:width, v25];
      }

      if (v17 != height)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setMismatchedDisplayAspectRatioY:height];
      }

      if (v11)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setVideoFrameMetadataSupportedVersion:v11];
      }

      v26 = [VCMediaNegotiationBlobV2 pruneDisabledCipherSuites:[VCMediaNegotiationBlobV2SettingsU1 negotiationCipherSuitesFromMediaStreamCipherSuites:[VCEncryptionRules supportedCipherSuitesForStreamGroupID:1667329381 isOneToOne:1]] u1AuthTagEnabled:v12];
      if (v26 != [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 cipherSuites])
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setCipherSuites:v26];
      }
    }

    else
    {
      [VCMediaNegotiationBlobV2CameraSettingsU1(Utils) initWithSSRC:v23 videoRuleCollections:? screenSize:? aspectRatioPortrait:? aspectRatioLandscape:? orientationMismatchAspectRatioLandscape:? featureListStrings:? u1AuthTagEnabled:? videoFrameMetadataSupportedVersion:?];
      return 0;
    }
  }

  return v23;
}

- (void)aspectRatioPortrait:(CGSize *)a3 aspectRatioLandscape:(CGSize *)a4 orientationMismatchAspectRatioLandscape:(CGSize *)a5 orientationMismatchAspectRatioPortrait:(CGSize *)a6 screenSize:(CGSize)a7
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = a7;
  v12 = SimplifyFixedPointRatio(&v18.width);
  has = self->_has;
  if ((has & 0x10) == 0)
  {
    width = v18.width;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    height = v18.height;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  width = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self landscapeAspectRatioX];
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  height = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self landscapeAspectRatioY];
  if (a4)
  {
LABEL_7:
    a4->width = width;
    a4->height = height;
  }

LABEL_8:
  if ((*&self->_has & 0x400) == 0)
  {
    v16 = v18.height;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v17 = v18.width;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v16 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self portraitAspectRatioX];
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v17 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self portraitAspectRatioY];
  if (a3)
  {
LABEL_14:
    a3->width = v16;
    a3->height = v17;
  }

LABEL_15:
  if (a5)
  {
    if ((*&self->_has & 0x40) != 0)
    {
      width = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioX];
    }

    a5->width = width;
    if ((*&self->_has & 0x80) != 0)
    {
      height = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioY];
    }

    a5->height = height;
  }

  if (a6)
  {
    if ((*&self->_has & 0x80) != 0)
    {
      v16 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioY];
    }

    a6->width = v16;
    if ((*&self->_has & 0x40) != 0)
    {
      v17 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioX];
    }

    a6->height = v17;
  }
}

- (void)aspectRatioPortrait:(CGSize *)a3 aspectRatioLandscape:(CGSize *)a4 mismatchFullScreenAspectRatios:(tagVCAspectRatios *)a5 screenSize:(CGSize)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = a6;
  v10 = SimplifyFixedPointRatio(&v20.width);
  has = self->_has;
  if ((has & 0x10) == 0)
  {
    width = v20.width;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    height = v20.height;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  width = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self landscapeAspectRatioX];
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  height = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self landscapeAspectRatioY];
  if (a4)
  {
LABEL_7:
    a4->width = width;
    a4->height = height;
  }

LABEL_8:
  if ((*&self->_has & 0x400) == 0)
  {
    v14 = v20.height;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v15 = v20.width;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self portraitAspectRatioX];
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v15 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self portraitAspectRatioY];
  if (a3)
  {
LABEL_14:
    a3->width = v14;
    a3->height = v15;
  }

LABEL_15:
  if (a5)
  {
    v16 = 0.0;
    v17 = 0.0;
    if ((*&self->_has & 0x100) != 0)
    {
      v17 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioX];
    }

    a5->landscape.width = v17;
    if ((*&self->_has & 0x200) != 0)
    {
      v16 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioY];
    }

    a5->landscape.height = v16;
    v18 = 0.0;
    v19 = 0.0;
    if ((*&self->_has & 0x200) != 0)
    {
      v19 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioY];
    }

    a5->portrait.width = v19;
    if ((*&self->_has & 0x100) != 0)
    {
      v18 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioX];
    }

    a5->portrait.height = v18;
  }
}

- (CGSize)orientationMismatchDisplayRatio
{
  v3 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioX];
  v4 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioY];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (VCVideoRuleCollections)videoRuleCollections
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(VCVideoRuleCollections);
  if (!v3)
  {
    [VCMediaNegotiationBlobV2CameraSettingsU1(Utils) videoRuleCollections];
LABEL_15:

    v3 = 0;
    return v3;
  }

  if (![MEMORY[0x1E695DFA8] set])
  {
    [VCMediaNegotiationBlobV2CameraSettingsU1(Utils) videoRuleCollections];
    goto LABEL_15;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self payloads];
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 payload];
        if (!-[VCMediaNegotiationBlobV2CameraSettingsU1 addVideoRules:encodingType:payload:videoRuleCollections:](self, "addVideoRules:encodingType:payload:videoRuleCollections:", [v9 encodeVideoRules], 1, v10, v3))
        {
          [VCMediaNegotiationBlobV2CameraSettingsU1(Utils) videoRuleCollections];
          goto LABEL_15;
        }

        if (!-[VCMediaNegotiationBlobV2CameraSettingsU1 addVideoRules:encodingType:payload:videoRuleCollections:](self, "addVideoRules:encodingType:payload:videoRuleCollections:", [v9 decodeVideoRules], 2, v10, v3))
        {
          [VCMediaNegotiationBlobV2CameraSettingsU1(Utils) videoRuleCollections];
          goto LABEL_15;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)appendFullScreenFeatureString:(id)a3 screenSize:(CGSize)a4
{
  v11 = *MEMORY[0x1E69E9840];
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v9 = v6;
  v10 = v6;
  v7 = v6;
  v8 = v6;
  [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self aspectRatioPortrait:&v9 aspectRatioLandscape:&v10 mismatchFullScreenAspectRatios:&v7 screenSize:a4.width, a4.height];
  if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioX])
  {
    [a3 appendFormat:@"%s=%fx%f, %fx%f ", "XRF", v8, v7];
  }

  if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self frontCameraFullScreenCaptureSupported]|| [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self backCameraFullScreenCaptureSupported])
  {
    [a3 appendFormat:@"%s:", "XRFS"];
    if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self frontCameraFullScreenCaptureSupported])
    {
      [a3 appendFormat:@"%c", 70];
    }

    if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self backCameraFullScreenCaptureSupported])
    {
      [a3 appendFormat:@"%c", 66];
    }

    [a3 appendFormat:@" "];
  }
}

- (void)printWithLogFile:(void *)a3 prefix:(id)a4 screenSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v47 = *MEMORY[0x1E69E9840];
  v32 = -1;
  v33 = -1;
  v30 = -1;
  v31 = -1;
  v28 = -1;
  v29 = -1;
  v26 = -1;
  v27 = -1;
  [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self aspectRatioPortrait:&v32 aspectRatioLandscape:&v30 orientationMismatchAspectRatioLandscape:&v28 orientationMismatchAspectRatioPortrait:&v26 screenSize:?];
  v10 = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2CameraSettingsU1 data](self, "data"), "length"), a4];
  v11 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self rtpSSRC];
  [v10 appendFormat:@"Camera settings (U+1): src=%08x AR=%fx%f, %fx%f XR=%fx%f, %fx%f ", v11, v30, v31, v32, v33, v28, v29, v26, v27];
  [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self appendFullScreenFeatureString:v10 screenSize:width, height];
  if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self hasVideoFrameMetadataSupportedVersion])
  {
    [v10 appendFormat:@"frameMetadataV=%d, ", -[VCMediaNegotiationBlobV2CameraSettingsU1 videoFrameMetadataSupportedVersion](self, "videoFrameMetadataSupportedVersion")];
  }

  [VCMediaNegotiationBlobV2SettingsU1 appendCipherSuiteFlags:[(VCMediaNegotiationBlobV2CameraSettingsU1 *)self cipherSuites] toDescription:v10];
  v12 = [v10 UTF8String];
  VRLogfilePrintWithTimestamp(a3, "%s\n", v13, v14, v15, v16, v17, v18, v12);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v40 = v19;
      v41 = 2080;
      v42 = "[VCMediaNegotiationBlobV2CameraSettingsU1(Utils) printWithLogFile:prefix:screenSize:]";
      v43 = 1024;
      v44 = 229;
      v45 = 2112;
      v46 = v10;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self payloads];
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      v25 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v35 + 1) + 8 * v25++) printWithLogFile:a3 prefix:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@  ", a4)}];
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v23);
  }
}

- (id)rulesForEncodeType:(unsigned __int8)a3 paylaod:(int)a4 videoRuleCollection:(id)a5
{
  v6 = *&a4;
  v7 = a3;
  v8 = [a5 getVideoRulesForTransport:1 payload:*&a4 encodingType:a3];
  v9 = [a5 getVideoRulesForTransport:2 payload:v6 encodingType:v7];
  v10 = [MEMORY[0x1E695DFA8] setWithArray:v8];
  [v10 addObjectsFromArray:v9];

  return [v10 allObjects];
}

- (BOOL)setupVideoRuleCollection:(id)a3 featureListStrings:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a3 supportedPayloads];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v7)
  {
LABEL_11:
    LOBYTE(v14) = 1;
    return v14;
  }

  v8 = v7;
  v9 = *v20;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v20 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = [*(*(&v19 + 1) + 8 * v10) unsignedIntValue];
    if (v11 == 126)
    {
      goto LABEL_9;
    }

    v12 = [[VCMediaNegotiationBlobV2VideoPayload alloc] initWithPayload:v11 encodeVideoRules:[(VCMediaNegotiationBlobV2CameraSettingsU1 *)self rulesForEncodeType:1 paylaod:v11 videoRuleCollection:a3] decodeVideoRules:[(VCMediaNegotiationBlobV2CameraSettingsU1 *)self rulesForEncodeType:2 paylaod:v11 videoRuleCollection:a3] videoParameterSupport:VCVideoParamaterSets_DefaultSupportedSets(v11) featureListStrings:a4];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self addPayloads:v12];

LABEL_9:
    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v14)
    {
      return v14;
    }

    [VCMediaNegotiationBlobV2CameraSettingsU1(Utils) setupVideoRuleCollection:v15 featureListStrings:?];
  }

  LOBYTE(v14) = 0;
  return v14;
}

+ (int)deviceOrientationFromNegotiationDeviceOrientation:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)negotiationDeviceOrientationFromDeviceOrientation:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (BOOL)addVideoRules:(id)a3 encodingType:(unsigned __int8)a4 payload:(int)a5 videoRuleCollections:(id)a6
{
  v7 = *&a5;
  v8 = a4;
  if ([a3 count])
  {
    v10 = [a3 mutableCopy];
    if (v10)
    {
      v11 = v10;
      v12 = [a6 supportedPayloads];
      if (([v12 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)}] & 1) == 0)
      {
        [a6 addSupportedPayload:v7];
      }

      v13 = 1;
      [a6 addVideoRules:v11 transportType:1 payload:v7 encodingType:v8];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_34())
        {
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_17(&dword_1DB56E000, v15, v16, " [%s] %s:%d Failed to allocate the video rules", v17, v18, v19, v20, v21);
        }
      }

      v11 = 0;
      v13 = 0;
    }
  }

  else
  {
    v11 = 0;
    v13 = 1;
  }

  return v13;
}

@end