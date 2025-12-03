@interface VCMediaNegotiationBlobV2CameraSettingsU1
+ (int)deviceOrientationFromNegotiationDeviceOrientation:(int)orientation;
+ (int)negotiationDeviceOrientationFromDeviceOrientation:(int)orientation;
- (BOOL)addVideoRules:(id)rules encodingType:(unsigned __int8)type payload:(int)payload videoRuleCollections:(id)collections;
- (BOOL)isEqual:(id)equal;
- (BOOL)setupVideoRuleCollection:(id)collection featureListStrings:(id)strings;
- (CGSize)orientationMismatchDisplayRatio;
- (VCMediaNegotiationBlobV2CameraSettingsU1)initWithSSRC:(unsigned int)c videoRuleCollections:(id)collections screenSize:(CGSize)size aspectRatioPortrait:(CGSize)portrait aspectRatioLandscape:(CGSize)landscape orientationMismatchAspectRatioLandscape:(CGSize)ratioLandscape featureListStrings:(id)strings u1AuthTagEnabled:(BOOL)self0 videoFrameMetadataSupportedVersion:(int)self1;
- (VCVideoRuleCollections)videoRuleCollections;
- (id)cipherSuitesAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)deviceOrientationAsString:(int)string;
- (id)dictionaryRepresentation;
- (id)rulesForEncodeType:(unsigned __int8)type paylaod:(int)paylaod videoRuleCollection:(id)collection;
- (int)StringAsCipherSuites:(id)suites;
- (int)StringAsDeviceOrientation:(id)orientation;
- (int)cipherSuites;
- (int)deviceOrientation;
- (unint64_t)hash;
- (void)addPayloads:(id)payloads;
- (void)appendFullScreenFeatureString:(id)string screenSize:(CGSize)size;
- (void)aspectRatioPortrait:(CGSize *)portrait aspectRatioLandscape:(CGSize *)landscape mismatchFullScreenAspectRatios:(tagVCAspectRatios *)ratios screenSize:(CGSize)size;
- (void)aspectRatioPortrait:(CGSize *)portrait aspectRatioLandscape:(CGSize *)landscape orientationMismatchAspectRatioLandscape:(CGSize *)ratioLandscape orientationMismatchAspectRatioPortrait:(CGSize *)ratioPortrait screenSize:(CGSize)size;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file prefix:(id)prefix screenSize:(CGSize)size;
- (void)setHasCipherSuites:(BOOL)suites;
- (void)setHasDeviceOrientation:(BOOL)orientation;
- (void)setHasFrontCameraFullScreenCaptureSupported:(BOOL)supported;
- (void)setHasLandscapeAspectRatioX:(BOOL)x;
- (void)setHasLandscapeAspectRatioY:(BOOL)y;
- (void)setHasMismatchedDisplayAspectRatioX:(BOOL)x;
- (void)setHasMismatchedDisplayAspectRatioY:(BOOL)y;
- (void)setHasMismatchedFullScreenDisplayAspectRatioX:(BOOL)x;
- (void)setHasMismatchedFullScreenDisplayAspectRatioY:(BOOL)y;
- (void)setHasPortraitAspectRatioX:(BOOL)x;
- (void)setHasPortraitAspectRatioY:(BOOL)y;
- (void)setHasRtpSSRC:(BOOL)c;
- (void)setHasVideoFrameMetadataSupportedVersion:(BOOL)version;
- (void)writeTo:(id)to;
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

- (void)setHasRtpSSRC:(BOOL)c
{
  if (c)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)addPayloads:(id)payloads
{
  payloads = self->_payloads;
  if (!payloads)
  {
    payloads = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_payloads = payloads;
  }

  [(NSMutableArray *)payloads addObject:payloads];
}

- (void)setHasLandscapeAspectRatioX:(BOOL)x
{
  if (x)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLandscapeAspectRatioY:(BOOL)y
{
  if (y)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPortraitAspectRatioX:(BOOL)x
{
  if (x)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasPortraitAspectRatioY:(BOOL)y
{
  if (y)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasMismatchedDisplayAspectRatioX:(BOOL)x
{
  if (x)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMismatchedDisplayAspectRatioY:(BOOL)y
{
  if (y)
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

- (void)setHasCipherSuites:(BOOL)suites
{
  if (suites)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)cipherSuitesAsString:(int)string
{
  if (string > 7)
  {
    if (string == 8)
    {
      return @"CipherAES256AuthSHA280RCCM2Deferred";
    }

    if (string != 16)
    {
      if (string == 31)
      {
        return @"SupportedMask";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }

    return @"CipherAES256AuthSHA232RCCM2Deferred";
  }

  else
  {
    if (string == 1)
    {
      return @"CipherAES128AuthNoneRCCM3";
    }

    if (string != 2)
    {
      if (string == 4)
      {
        return @"CipherAES128AuthSHA232RCCM2Deferred";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }

    return @"CipherAES128AuthSHA280RCCM2Deferred";
  }
}

- (int)StringAsCipherSuites:(id)suites
{
  if ([suites isEqualToString:@"CipherAES128AuthNoneRCCM3"])
  {
    return 1;
  }

  if ([suites isEqualToString:@"CipherAES128AuthSHA280RCCM2Deferred"])
  {
    return 2;
  }

  if ([suites isEqualToString:@"CipherAES128AuthSHA232RCCM2Deferred"])
  {
    return 4;
  }

  if ([suites isEqualToString:@"CipherAES256AuthSHA280RCCM2Deferred"])
  {
    return 8;
  }

  if ([suites isEqualToString:@"CipherAES256AuthSHA232RCCM2Deferred"])
  {
    return 16;
  }

  if ([suites isEqualToString:@"SupportedMask"])
  {
    return 31;
  }

  return 1;
}

- (void)setHasMismatchedFullScreenDisplayAspectRatioX:(BOOL)x
{
  if (x)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMismatchedFullScreenDisplayAspectRatioY:(BOOL)y
{
  if (y)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasFrontCameraFullScreenCaptureSupported:(BOOL)supported
{
  if (supported)
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

- (void)setHasDeviceOrientation:(BOOL)orientation
{
  if (orientation)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)deviceOrientationAsString:(int)string
{
  if (string >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return off_1E85F84E0[string];
  }
}

- (int)StringAsDeviceOrientation:(id)orientation
{
  if ([orientation isEqualToString:@"VideoAttributeOrientationPortrait"])
  {
    return 0;
  }

  if ([orientation isEqualToString:@"VideoAttributeOrientationPortraitUpsideDown"])
  {
    return 1;
  }

  if ([orientation isEqualToString:@"VideoAttributeOrientationLandscapeLeft"])
  {
    return 2;
  }

  if ([orientation isEqualToString:@"VideoAttributeOrientationLandscapeRight"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasVideoFrameMetadataSupportedVersion:(BOOL)version
{
  if (version)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x1000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpSSRC), @"rtpSSRC"}];
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

    [dictionary setObject:v4 forKey:@"payloads"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_landscapeAspectRatioX), @"landscapeAspectRatioX"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_landscapeAspectRatioY), @"landscapeAspectRatioY"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_portraitAspectRatioX), @"portraitAspectRatioX"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_portraitAspectRatioY), @"portraitAspectRatioY"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mismatchedDisplayAspectRatioX), @"mismatchedDisplayAspectRatioX"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mismatchedDisplayAspectRatioY), @"mismatchedDisplayAspectRatioY"}];
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
  [dictionary setObject:v13 forKey:@"cipherSuites"];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mismatchedFullScreenDisplayAspectRatioX), @"mismatchedFullScreenDisplayAspectRatioX"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mismatchedFullScreenDisplayAspectRatioY), @"mismatchedFullScreenDisplayAspectRatioY"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_frontCameraFullScreenCaptureSupported), @"frontCameraFullScreenCaptureSupported"}];
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

    [dictionary setObject:v15 forKey:@"deviceOrientation"];
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_25;
    }

    return dictionary;
  }

LABEL_51:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_backCameraFullScreenCaptureSupported), @"backCameraFullScreenCaptureSupported"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  if ((has & 0x2000) != 0)
  {
LABEL_25:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_videoFrameMetadataSupportedVersion), @"videoFrameMetadataSupportedVersion"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if ((*&self->_has & 0x1000) != 0)
  {
    *(to + 16) = self->_rtpSSRC;
    *(to + 36) |= 0x1000u;
  }

  if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self payloadsCount])
  {
    [to clearPayloads];
    payloadsCount = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self payloadsCount];
    if (payloadsCount)
    {
      v6 = payloadsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addPayloads:{-[VCMediaNegotiationBlobV2CameraSettingsU1 payloadsAtIndex:](self, "payloadsAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 6) = self->_landscapeAspectRatioX;
    *(to + 36) |= 0x10u;
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

  *(to + 7) = self->_landscapeAspectRatioY;
  *(to + 36) |= 0x20u;
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
  *(to + 14) = self->_portraitAspectRatioX;
  *(to + 36) |= 0x400u;
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
  *(to + 15) = self->_portraitAspectRatioY;
  *(to + 36) |= 0x800u;
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
  *(to + 8) = self->_mismatchedDisplayAspectRatioX;
  *(to + 36) |= 0x40u;
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
  *(to + 9) = self->_mismatchedDisplayAspectRatioY;
  *(to + 36) |= 0x80u;
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
  *(to + 3) = self->_cipherSuites;
  *(to + 36) |= 2u;
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
  *(to + 10) = self->_mismatchedFullScreenDisplayAspectRatioX;
  *(to + 36) |= 0x100u;
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
  *(to + 11) = self->_mismatchedFullScreenDisplayAspectRatioY;
  *(to + 36) |= 0x200u;
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
  *(to + 5) = self->_frontCameraFullScreenCaptureSupported;
  *(to + 36) |= 8u;
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
  *(to + 2) = self->_backCameraFullScreenCaptureSupported;
  *(to + 36) |= 1u;
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
  *(to + 4) = self->_deviceOrientation;
  *(to + 36) |= 4u;
  if ((*&self->_has & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  *(to + 17) = self->_videoFrameMetadataSupportedVersion;
  *(to + 36) |= 0x2000u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v12 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    if ((has & 0x1000) != 0)
    {
      if ((*(equal + 36) & 0x1000) == 0 || self->_rtpSSRC != *(equal + 16))
      {
        goto LABEL_74;
      }
    }

    else if ((*(equal + 36) & 0x1000) != 0)
    {
LABEL_74:
      LOBYTE(v5) = 0;
      return v5;
    }

    payloads = self->_payloads;
    if (payloads | *(equal + 6))
    {
      v5 = [(NSMutableArray *)payloads isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v8 = *(equal + 36);
    if ((has & 0x10) != 0)
    {
      if ((v8 & 0x10) == 0 || self->_landscapeAspectRatioX != *(equal + 6))
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
      if ((v8 & 0x20) == 0 || self->_landscapeAspectRatioY != *(equal + 7))
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
      if ((*(equal + 36) & 0x400) == 0 || self->_portraitAspectRatioX != *(equal + 14))
      {
        goto LABEL_74;
      }
    }

    else if ((*(equal + 36) & 0x400) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x800) != 0)
    {
      if ((*(equal + 36) & 0x800) == 0 || self->_portraitAspectRatioY != *(equal + 15))
      {
        goto LABEL_74;
      }
    }

    else if ((*(equal + 36) & 0x800) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x40) != 0)
    {
      if ((v8 & 0x40) == 0 || self->_mismatchedDisplayAspectRatioX != *(equal + 8))
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
      if ((v8 & 0x80) == 0 || self->_mismatchedDisplayAspectRatioY != *(equal + 9))
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
      if ((v8 & 2) == 0 || self->_cipherSuites != *(equal + 3))
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
      if ((*(equal + 36) & 0x100) == 0 || self->_mismatchedFullScreenDisplayAspectRatioX != *(equal + 10))
      {
        goto LABEL_74;
      }
    }

    else if ((*(equal + 36) & 0x100) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(equal + 36) & 0x200) == 0 || self->_mismatchedFullScreenDisplayAspectRatioY != *(equal + 11))
      {
        goto LABEL_74;
      }
    }

    else if ((*(equal + 36) & 0x200) != 0)
    {
      goto LABEL_74;
    }

    if ((has & 8) != 0)
    {
      if ((v8 & 8) == 0 || self->_frontCameraFullScreenCaptureSupported != *(equal + 5))
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
      if ((v8 & 1) == 0 || self->_backCameraFullScreenCaptureSupported != *(equal + 2))
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
      if ((v8 & 4) == 0 || self->_deviceOrientation != *(equal + 4))
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
      if ((*(equal + 36) & 0x2000) == 0 || self->_videoFrameMetadataSupportedVersion != *(equal + 17))
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

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(from + 36) & 0x1000) != 0)
  {
    self->_rtpSSRC = *(from + 16);
    *&self->_has |= 0x1000u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(from + 6);
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

  v10 = *(from + 36);
  if ((v10 & 0x10) != 0)
  {
    self->_landscapeAspectRatioX = *(from + 6);
    *&self->_has |= 0x10u;
    v10 = *(from + 36);
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

  self->_landscapeAspectRatioY = *(from + 7);
  *&self->_has |= 0x20u;
  v10 = *(from + 36);
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
  self->_portraitAspectRatioX = *(from + 14);
  *&self->_has |= 0x400u;
  v10 = *(from + 36);
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
  self->_portraitAspectRatioY = *(from + 15);
  *&self->_has |= 0x800u;
  v10 = *(from + 36);
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
  self->_mismatchedDisplayAspectRatioX = *(from + 8);
  *&self->_has |= 0x40u;
  v10 = *(from + 36);
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
  self->_mismatchedDisplayAspectRatioY = *(from + 9);
  *&self->_has |= 0x80u;
  v10 = *(from + 36);
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
  self->_cipherSuites = *(from + 3);
  *&self->_has |= 2u;
  v10 = *(from + 36);
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
  self->_mismatchedFullScreenDisplayAspectRatioX = *(from + 10);
  *&self->_has |= 0x100u;
  v10 = *(from + 36);
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
  self->_mismatchedFullScreenDisplayAspectRatioY = *(from + 11);
  *&self->_has |= 0x200u;
  v10 = *(from + 36);
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
  self->_frontCameraFullScreenCaptureSupported = *(from + 5);
  *&self->_has |= 8u;
  v10 = *(from + 36);
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
  self->_backCameraFullScreenCaptureSupported = *(from + 2);
  *&self->_has |= 1u;
  v10 = *(from + 36);
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
  self->_deviceOrientation = *(from + 4);
  *&self->_has |= 4u;
  if ((*(from + 36) & 0x2000) == 0)
  {
    return;
  }

LABEL_23:
  self->_videoFrameMetadataSupportedVersion = *(from + 17);
  *&self->_has |= 0x2000u;
}

- (VCMediaNegotiationBlobV2CameraSettingsU1)initWithSSRC:(unsigned int)c videoRuleCollections:(id)collections screenSize:(CGSize)size aspectRatioPortrait:(CGSize)portrait aspectRatioLandscape:(CGSize)landscape orientationMismatchAspectRatioLandscape:(CGSize)ratioLandscape featureListStrings:(id)strings u1AuthTagEnabled:(BOOL)self0 videoFrameMetadataSupportedVersion:(int)self1
{
  v11 = *&version;
  enabledCopy = enabled;
  height = ratioLandscape.height;
  width = ratioLandscape.width;
  v17 = landscape.height;
  v18 = landscape.width;
  v19 = portrait.height;
  v20 = portrait.width;
  v21 = *&c;
  v29 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  v22 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self init];
  v23 = v22;
  if (v22)
  {
    [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v22 setRtpSSRC:v21];
    if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setupVideoRuleCollection:collections featureListStrings:strings])
    {
      SimplifyFixedPointRatio(&sizeCopy.width);
      if (sizeCopy.height != v20)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setPortraitAspectRatioX:v20, sizeCopy.height];
      }

      v24 = sizeCopy.width;
      if (sizeCopy.width != v19)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setPortraitAspectRatioY:v19, sizeCopy.width];
        v24 = sizeCopy.width;
      }

      if (v24 != v18)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setLandscapeAspectRatioX:v18];
      }

      v25 = sizeCopy.height;
      if (sizeCopy.height != v17)
      {
        [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v23 setLandscapeAspectRatioY:v17, sizeCopy.height];
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

      v26 = [VCMediaNegotiationBlobV2 pruneDisabledCipherSuites:[VCMediaNegotiationBlobV2SettingsU1 negotiationCipherSuitesFromMediaStreamCipherSuites:[VCEncryptionRules supportedCipherSuitesForStreamGroupID:1667329381 isOneToOne:1]] u1AuthTagEnabled:enabledCopy];
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

- (void)aspectRatioPortrait:(CGSize *)portrait aspectRatioLandscape:(CGSize *)landscape orientationMismatchAspectRatioLandscape:(CGSize *)ratioLandscape orientationMismatchAspectRatioPortrait:(CGSize *)ratioPortrait screenSize:(CGSize)size
{
  v19 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  v12 = SimplifyFixedPointRatio(&sizeCopy.width);
  has = self->_has;
  if ((has & 0x10) == 0)
  {
    width = sizeCopy.width;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    height = sizeCopy.height;
    if (!landscape)
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
  if (landscape)
  {
LABEL_7:
    landscape->width = width;
    landscape->height = height;
  }

LABEL_8:
  if ((*&self->_has & 0x400) == 0)
  {
    portraitAspectRatioX = sizeCopy.height;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    portraitAspectRatioY = sizeCopy.width;
    if (!portrait)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  portraitAspectRatioX = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self portraitAspectRatioX];
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  portraitAspectRatioY = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self portraitAspectRatioY];
  if (portrait)
  {
LABEL_14:
    portrait->width = portraitAspectRatioX;
    portrait->height = portraitAspectRatioY;
  }

LABEL_15:
  if (ratioLandscape)
  {
    if ((*&self->_has & 0x40) != 0)
    {
      width = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioX];
    }

    ratioLandscape->width = width;
    if ((*&self->_has & 0x80) != 0)
    {
      height = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioY];
    }

    ratioLandscape->height = height;
  }

  if (ratioPortrait)
  {
    if ((*&self->_has & 0x80) != 0)
    {
      portraitAspectRatioX = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioY];
    }

    ratioPortrait->width = portraitAspectRatioX;
    if ((*&self->_has & 0x40) != 0)
    {
      portraitAspectRatioY = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioX];
    }

    ratioPortrait->height = portraitAspectRatioY;
  }
}

- (void)aspectRatioPortrait:(CGSize *)portrait aspectRatioLandscape:(CGSize *)landscape mismatchFullScreenAspectRatios:(tagVCAspectRatios *)ratios screenSize:(CGSize)size
{
  v21 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  v10 = SimplifyFixedPointRatio(&sizeCopy.width);
  has = self->_has;
  if ((has & 0x10) == 0)
  {
    width = sizeCopy.width;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    height = sizeCopy.height;
    if (!landscape)
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
  if (landscape)
  {
LABEL_7:
    landscape->width = width;
    landscape->height = height;
  }

LABEL_8:
  if ((*&self->_has & 0x400) == 0)
  {
    portraitAspectRatioX = sizeCopy.height;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    portraitAspectRatioY = sizeCopy.width;
    if (!portrait)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  portraitAspectRatioX = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self portraitAspectRatioX];
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  portraitAspectRatioY = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self portraitAspectRatioY];
  if (portrait)
  {
LABEL_14:
    portrait->width = portraitAspectRatioX;
    portrait->height = portraitAspectRatioY;
  }

LABEL_15:
  if (ratios)
  {
    mismatchedFullScreenDisplayAspectRatioY = 0.0;
    mismatchedFullScreenDisplayAspectRatioX = 0.0;
    if ((*&self->_has & 0x100) != 0)
    {
      mismatchedFullScreenDisplayAspectRatioX = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioX];
    }

    ratios->landscape.width = mismatchedFullScreenDisplayAspectRatioX;
    if ((*&self->_has & 0x200) != 0)
    {
      mismatchedFullScreenDisplayAspectRatioY = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioY];
    }

    ratios->landscape.height = mismatchedFullScreenDisplayAspectRatioY;
    mismatchedFullScreenDisplayAspectRatioX2 = 0.0;
    mismatchedFullScreenDisplayAspectRatioY2 = 0.0;
    if ((*&self->_has & 0x200) != 0)
    {
      mismatchedFullScreenDisplayAspectRatioY2 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioY];
    }

    ratios->portrait.width = mismatchedFullScreenDisplayAspectRatioY2;
    if ((*&self->_has & 0x100) != 0)
    {
      mismatchedFullScreenDisplayAspectRatioX2 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioX];
    }

    ratios->portrait.height = mismatchedFullScreenDisplayAspectRatioX2;
  }
}

- (CGSize)orientationMismatchDisplayRatio
{
  mismatchedDisplayAspectRatioX = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioX];
  mismatchedDisplayAspectRatioY = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedDisplayAspectRatioY];
  v5 = mismatchedDisplayAspectRatioX;
  result.height = mismatchedDisplayAspectRatioY;
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
  payloads = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self payloads];
  v5 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v13 objects:v12 count:16];
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
          objc_enumerationMutation(payloads);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        payload = [v9 payload];
        if (!-[VCMediaNegotiationBlobV2CameraSettingsU1 addVideoRules:encodingType:payload:videoRuleCollections:](self, "addVideoRules:encodingType:payload:videoRuleCollections:", [v9 encodeVideoRules], 1, payload, v3))
        {
          [VCMediaNegotiationBlobV2CameraSettingsU1(Utils) videoRuleCollections];
          goto LABEL_15;
        }

        if (!-[VCMediaNegotiationBlobV2CameraSettingsU1 addVideoRules:encodingType:payload:videoRuleCollections:](self, "addVideoRules:encodingType:payload:videoRuleCollections:", [v9 decodeVideoRules], 2, payload, v3))
        {
          [VCMediaNegotiationBlobV2CameraSettingsU1(Utils) videoRuleCollections];
          goto LABEL_15;
        }
      }

      v6 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)appendFullScreenFeatureString:(id)string screenSize:(CGSize)size
{
  v11 = *MEMORY[0x1E69E9840];
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v9 = v6;
  v10 = v6;
  v7 = v6;
  v8 = v6;
  [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self aspectRatioPortrait:&v9 aspectRatioLandscape:&v10 mismatchFullScreenAspectRatios:&v7 screenSize:size.width, size.height];
  if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self mismatchedFullScreenDisplayAspectRatioX])
  {
    [string appendFormat:@"%s=%fx%f, %fx%f ", "XRF", v8, v7];
  }

  if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self frontCameraFullScreenCaptureSupported]|| [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self backCameraFullScreenCaptureSupported])
  {
    [string appendFormat:@"%s:", "XRFS"];
    if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self frontCameraFullScreenCaptureSupported])
    {
      [string appendFormat:@"%c", 70];
    }

    if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self backCameraFullScreenCaptureSupported])
    {
      [string appendFormat:@"%c", 66];
    }

    [string appendFormat:@" "];
  }
}

- (void)printWithLogFile:(void *)file prefix:(id)prefix screenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  prefix = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2CameraSettingsU1 data](self, "data"), "length"), prefix];
  rtpSSRC = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self rtpSSRC];
  [prefix appendFormat:@"Camera settings (U+1): src=%08x AR=%fx%f, %fx%f XR=%fx%f, %fx%f ", rtpSSRC, v30, v31, v32, v33, v28, v29, v26, v27];
  [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self appendFullScreenFeatureString:prefix screenSize:width, height];
  if ([(VCMediaNegotiationBlobV2CameraSettingsU1 *)self hasVideoFrameMetadataSupportedVersion])
  {
    [prefix appendFormat:@"frameMetadataV=%d, ", -[VCMediaNegotiationBlobV2CameraSettingsU1 videoFrameMetadataSupportedVersion](self, "videoFrameMetadataSupportedVersion")];
  }

  [VCMediaNegotiationBlobV2SettingsU1 appendCipherSuiteFlags:[(VCMediaNegotiationBlobV2CameraSettingsU1 *)self cipherSuites] toDescription:prefix];
  uTF8String = [prefix UTF8String];
  VRLogfilePrintWithTimestamp(file, "%s\n", v13, v14, v15, v16, v17, v18, uTF8String);
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
      v46 = prefix;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  payloads = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self payloads];
  v22 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v35 objects:v34 count:16];
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
          objc_enumerationMutation(payloads);
        }

        [*(*(&v35 + 1) + 8 * v25++) printWithLogFile:file prefix:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@  ", prefix)}];
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v23);
  }
}

- (id)rulesForEncodeType:(unsigned __int8)type paylaod:(int)paylaod videoRuleCollection:(id)collection
{
  v6 = *&paylaod;
  typeCopy = type;
  v8 = [collection getVideoRulesForTransport:1 payload:*&paylaod encodingType:type];
  v9 = [collection getVideoRulesForTransport:2 payload:v6 encodingType:typeCopy];
  v10 = [MEMORY[0x1E695DFA8] setWithArray:v8];
  [v10 addObjectsFromArray:v9];

  return [v10 allObjects];
}

- (BOOL)setupVideoRuleCollection:(id)collection featureListStrings:(id)strings
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  supportedPayloads = [collection supportedPayloads];
  v7 = [supportedPayloads countByEnumeratingWithState:&v19 objects:v18 count:16];
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
      objc_enumerationMutation(supportedPayloads);
    }

    unsignedIntValue = [*(*(&v19 + 1) + 8 * v10) unsignedIntValue];
    if (unsignedIntValue == 126)
    {
      goto LABEL_9;
    }

    v12 = [[VCMediaNegotiationBlobV2VideoPayload alloc] initWithPayload:unsignedIntValue encodeVideoRules:[(VCMediaNegotiationBlobV2CameraSettingsU1 *)self rulesForEncodeType:1 paylaod:unsignedIntValue videoRuleCollection:collection] decodeVideoRules:[(VCMediaNegotiationBlobV2CameraSettingsU1 *)self rulesForEncodeType:2 paylaod:unsignedIntValue videoRuleCollection:collection] videoParameterSupport:VCVideoParamaterSets_DefaultSupportedSets(unsignedIntValue) featureListStrings:strings];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self addPayloads:v12];

LABEL_9:
    if (v8 == ++v10)
    {
      v8 = [supportedPayloads countByEnumeratingWithState:&v19 objects:v18 count:16];
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

+ (int)deviceOrientationFromNegotiationDeviceOrientation:(int)orientation
{
  if ((orientation - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return orientation;
  }
}

+ (int)negotiationDeviceOrientationFromDeviceOrientation:(int)orientation
{
  if ((orientation - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return orientation;
  }
}

- (BOOL)addVideoRules:(id)rules encodingType:(unsigned __int8)type payload:(int)payload videoRuleCollections:(id)collections
{
  v7 = *&payload;
  typeCopy = type;
  if ([rules count])
  {
    v10 = [rules mutableCopy];
    if (v10)
    {
      v11 = v10;
      supportedPayloads = [collections supportedPayloads];
      if (([supportedPayloads containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)}] & 1) == 0)
      {
        [collections addSupportedPayload:v7];
      }

      v13 = 1;
      [collections addVideoRules:v11 transportType:1 payload:v7 encodingType:typeCopy];
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