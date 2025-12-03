@interface VCMediaNegotiationBlobV2VideoPayload
+ (int)payloadWithRTPPayload:(int)payload;
+ (int)rtpPayloadWithPayload:(int)payload;
- (BOOL)isEqual:(id)equal;
- (BOOL)setupEncode:(BOOL)encode videoRules:(id)rules;
- (NSArray)decodeVideoRules;
- (NSArray)encodeVideoRules;
- (VCMediaNegotiationBlobV2VideoPayload)initWithPayload:(int)payload encodeVideoRules:(id)rules decodeVideoRules:(id)videoRules videoParameterSupport:(unsigned int)support featureListStrings:(id)strings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)videoRulesWithBitmap:(unsigned int)bitmap preferredBitmap:(unsigned int)preferredBitmap;
- (int)payload;
- (unint64_t)hash;
- (unsigned)videoPayload;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file prefix:(id)prefix;
- (void)setHasEncodeFormats:(BOOL)formats;
- (void)setHasParameterSet:(BOOL)set;
- (void)setHasPreferredDecodeFormat:(BOOL)format;
- (void)setHasVideoPayload:(BOOL)payload;
- (void)setupVideoParameterSupport:(unsigned int)support;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2VideoPayload

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2VideoPayload *)self setEncodeDecodeFeatures:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2VideoPayload;
  [(VCMediaNegotiationBlobV2VideoPayload *)&v3 dealloc];
}

- (unsigned)videoPayload
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_videoPayload;
  }

  else
  {
    return 1;
  }
}

- (void)setHasVideoPayload:(BOOL)payload
{
  if (payload)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasParameterSet:(BOOL)set
{
  if (set)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEncodeFormats:(BOOL)formats
{
  if (formats)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPreferredDecodeFormat:(BOOL)format
{
  if (format)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2VideoPayload;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2VideoPayload description](&v3, sel_description), -[VCMediaNegotiationBlobV2VideoPayload dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_videoPayload), @"videoPayload"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_parameterSet), @"parameterSet"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_encodeFormats), @"encodeFormats"}];
  if (*&self->_has)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_decodeFormats), @"decodeFormats"}];
  }

LABEL_6:
  encodeDecodeFeatures = self->_encodeDecodeFeatures;
  if (encodeDecodeFeatures)
  {
    [dictionary setObject:encodeDecodeFeatures forKey:@"encodeDecodeFeatures"];
  }

  if ((*&self->_has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_preferredDecodeFormat), @"preferredDecodeFormat"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_5:
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  if (self->_encodeDecodeFeatures)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 8) != 0)
  {

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 9) = self->_videoPayload;
    *(to + 40) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 7) = self->_parameterSet;
  *(to + 40) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(to + 6) = self->_encodeFormats;
  *(to + 40) |= 2u;
  if (*&self->_has)
  {
LABEL_5:
    *(to + 2) = self->_decodeFormats;
    *(to + 40) |= 1u;
  }

LABEL_6:
  if (self->_encodeDecodeFeatures)
  {
    [to setEncodeDecodeFeatures:?];
  }

  if ((*&self->_has & 8) != 0)
  {
    *(to + 8) = self->_preferredDecodeFormat;
    *(to + 40) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 36) = self->_videoPayload;
    *(v5 + 40) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_parameterSet;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v5 + 24) = self->_encodeFormats;
  *(v5 + 40) |= 2u;
  if (*&self->_has)
  {
LABEL_5:
    *(v5 + 8) = self->_decodeFormats;
    *(v5 + 40) |= 1u;
  }

LABEL_6:

  *(v6 + 16) = [(NSData *)self->_encodeDecodeFeatures copyWithZone:zone];
  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 32) = self->_preferredDecodeFormat;
    *(v6 + 40) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    if ((has & 0x10) != 0)
    {
      if ((*(equal + 40) & 0x10) == 0 || self->_videoPayload != *(equal + 9))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 40) & 0x10) != 0)
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_parameterSet != *(equal + 7))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
      goto LABEL_29;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_encodeFormats != *(equal + 6))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
      goto LABEL_29;
    }

    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_decodeFormats != *(equal + 2))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 40))
    {
      goto LABEL_29;
    }

    encodeDecodeFeatures = self->_encodeDecodeFeatures;
    if (encodeDecodeFeatures | *(equal + 2))
    {
      v5 = [(NSData *)encodeDecodeFeatures isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 40) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(equal + 40) & 8) == 0 || self->_preferredDecodeFormat != *(equal + 8))
      {
        goto LABEL_29;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_videoPayload;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_parameterSet;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_encodeFormats;
  if (*&self->_has)
  {
LABEL_5:
    v6 = 2654435761 * self->_decodeFormats;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSData *)self->_encodeDecodeFeatures hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_preferredDecodeFormat;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 40);
  if ((v5 & 0x10) != 0)
  {
    self->_videoPayload = *(from + 9);
    *&self->_has |= 0x10u;
    v5 = *(from + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(from + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_parameterSet = *(from + 7);
  *&self->_has |= 4u;
  v5 = *(from + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  self->_encodeFormats = *(from + 6);
  *&self->_has |= 2u;
  if (*(from + 40))
  {
LABEL_5:
    self->_decodeFormats = *(from + 2);
    *&self->_has |= 1u;
  }

LABEL_6:
  if (*(from + 2))
  {
    [(VCMediaNegotiationBlobV2VideoPayload *)self setEncodeDecodeFeatures:?];
  }

  if ((*(from + 40) & 8) != 0)
  {
    self->_preferredDecodeFormat = *(from + 8);
    *&self->_has |= 8u;
  }
}

- (VCMediaNegotiationBlobV2VideoPayload)initWithPayload:(int)payload encodeVideoRules:(id)rules decodeVideoRules:(id)videoRules videoParameterSupport:(unsigned int)support featureListStrings:(id)strings
{
  v8 = *&support;
  v11 = *&payload;
  v31 = *MEMORY[0x1E69E9840];
  v12 = [(VCMediaNegotiationBlobV2VideoPayload *)self init];
  if (v12)
  {
    v13 = [VCMediaNegotiationBlobV2VideoPayload payloadWithRTPPayload:v11];
    if (v13)
    {
      v14 = v13;
      if ([(VCMediaNegotiationBlobV2VideoPayload *)v12 videoPayload]!= v13)
      {
        [(VCMediaNegotiationBlobV2VideoPayload *)v12 setVideoPayload:v14];
      }

      v15 = _os_feature_enabled_impl();
      if (strings)
      {
        if (v15)
        {
          v16 = [strings objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
          if (v16)
          {
            v17 = v16;
            [(VCMediaNegotiationBlobV2VideoPayload *)v12 setEncodeDecodeFeatures:VCPCreateCompressedFLS()];
            if (![(VCMediaNegotiationBlobV2VideoPayload *)v12 encodeDecodeFeatures]&& VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v21 = 136316162;
                v22 = v18;
                v23 = 2080;
                v24 = "[VCMediaNegotiationBlobV2VideoPayload(Utils) initWithPayload:encodeVideoRules:decodeVideoRules:videoParameterSupport:featureListStrings:]";
                v25 = 1024;
                v26 = 41;
                v27 = 2112;
                v28 = v17;
                v29 = 1024;
                v30 = v11;
                _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCPCreateCompressedFLS return nil for featureString=%@, payload=%u)", &v21, 0x2Cu);
              }
            }
          }
        }
      }

      [(VCMediaNegotiationBlobV2VideoPayload *)v12 setupVideoParameterSupport:v8];
      if ([(VCMediaNegotiationBlobV2VideoPayload *)v12 setupEncode:1 videoRules:rules])
      {
        if ([(VCMediaNegotiationBlobV2VideoPayload *)v12 setupEncode:0 videoRules:videoRules])
        {
          return v12;
        }

        [VCMediaNegotiationBlobV2VideoPayload(Utils) initWithPayload:encodeVideoRules:decodeVideoRules:videoParameterSupport:featureListStrings:];
      }

      else
      {
        [VCMediaNegotiationBlobV2VideoPayload(Utils) initWithPayload:encodeVideoRules:decodeVideoRules:videoParameterSupport:featureListStrings:];
      }
    }

    else
    {
      [VCMediaNegotiationBlobV2VideoPayload(Utils) initWithPayload:encodeVideoRules:decodeVideoRules:videoParameterSupport:featureListStrings:];
    }

    return 0;
  }

  return v12;
}

- (int)payload
{
  videoPayload = [(VCMediaNegotiationBlobV2VideoPayload *)self videoPayload];

  return [VCMediaNegotiationBlobV2VideoPayload rtpPayloadWithPayload:videoPayload];
}

- (NSArray)encodeVideoRules
{
  encodeFormats = [(VCMediaNegotiationBlobV2VideoPayload *)self encodeFormats];

  return [(VCMediaNegotiationBlobV2VideoPayload *)self videoRulesWithBitmap:encodeFormats preferredBitmap:0];
}

- (NSArray)decodeVideoRules
{
  decodeFormats = [(VCMediaNegotiationBlobV2VideoPayload *)self decodeFormats];
  if ([(VCMediaNegotiationBlobV2VideoPayload *)self hasPreferredDecodeFormat])
  {
    preferredDecodeFormat = [(VCMediaNegotiationBlobV2VideoPayload *)self preferredDecodeFormat];
  }

  else
  {
    preferredDecodeFormat = 0;
  }

  return [(VCMediaNegotiationBlobV2VideoPayload *)self videoRulesWithBitmap:decodeFormats preferredBitmap:preferredDecodeFormat];
}

- (id)videoRulesWithBitmap:(unsigned int)bitmap preferredBitmap:(unsigned int)preferredBitmap
{
  v168 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v7)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
LABEL_183:

    v7 = 0;
    goto LABEL_148;
  }

  v8 = [VCMediaNegotiationBlobV2VideoPayload rtpPayloadWithPayload:[(VCMediaNegotiationBlobV2VideoPayload *)self videoPayload]];
  if (v8 == 128)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:? preferredBitmap:?];
    goto LABEL_183;
  }

  v9 = v8;
  if ((bitmap & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = [VCVideoRule alloc];
  LODWORD(v11) = 15.0;
  v12 = [(VCVideoRule *)v10 initWithFrameWidth:192 frameHeight:112 frameRate:v9 payload:v11];
  if (!v12)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v14 = v12;
  if (preferredBitmap)
  {
    LODWORD(v13) = 1.0;
    [(VCVideoRule *)v12 setFPref:v13];
  }

  [v7 addObject:v14];

LABEL_8:
  if ((bitmap & 2) == 0)
  {
    goto LABEL_13;
  }

  v15 = [VCVideoRule alloc];
  LODWORD(v16) = 15.0;
  v17 = [(VCVideoRule *)v15 initWithFrameWidth:320 frameHeight:240 frameRate:v9 payload:v16];
  if (!v17)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v19 = v17;
  if ((preferredBitmap & 2) != 0)
  {
    LODWORD(v18) = 1.0;
    [(VCVideoRule *)v17 setFPref:v18];
  }

  [v7 addObject:v19];

LABEL_13:
  if ((bitmap & 4) == 0)
  {
    goto LABEL_18;
  }

  v20 = [VCVideoRule alloc];
  LODWORD(v21) = 30.0;
  v22 = [(VCVideoRule *)v20 initWithFrameWidth:320 frameHeight:240 frameRate:v9 payload:v21];
  if (!v22)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v24 = v22;
  if ((preferredBitmap & 4) != 0)
  {
    LODWORD(v23) = 1.0;
    [(VCVideoRule *)v22 setFPref:v23];
  }

  [v7 addObject:v24];

LABEL_18:
  if ((bitmap & 8) == 0)
  {
    goto LABEL_23;
  }

  v25 = [VCVideoRule alloc];
  LODWORD(v26) = 15.0;
  v27 = [(VCVideoRule *)v25 initWithFrameWidth:480 frameHeight:272 frameRate:v9 payload:v26];
  if (!v27)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v29 = v27;
  if ((preferredBitmap & 8) != 0)
  {
    LODWORD(v28) = 1.0;
    [(VCVideoRule *)v27 setFPref:v28];
  }

  [v7 addObject:v29];

LABEL_23:
  if ((bitmap & 0x10) == 0)
  {
    goto LABEL_28;
  }

  v30 = [VCVideoRule alloc];
  LODWORD(v31) = 30.0;
  v32 = [(VCVideoRule *)v30 initWithFrameWidth:480 frameHeight:272 frameRate:v9 payload:v31];
  if (!v32)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v34 = v32;
  if ((preferredBitmap & 0x10) != 0)
  {
    LODWORD(v33) = 1.0;
    [(VCVideoRule *)v32 setFPref:v33];
  }

  [v7 addObject:v34];

LABEL_28:
  if ((bitmap & 0x20) == 0)
  {
    goto LABEL_33;
  }

  v35 = [VCVideoRule alloc];
  LODWORD(v36) = 15.0;
  v37 = [(VCVideoRule *)v35 initWithFrameWidth:480 frameHeight:368 frameRate:v9 payload:v36];
  if (!v37)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v39 = v37;
  if ((preferredBitmap & 0x20) != 0)
  {
    LODWORD(v38) = 1.0;
    [(VCVideoRule *)v37 setFPref:v38];
  }

  [v7 addObject:v39];

LABEL_33:
  if ((bitmap & 0x40) == 0)
  {
    goto LABEL_38;
  }

  v40 = [VCVideoRule alloc];
  LODWORD(v41) = 30.0;
  v42 = [(VCVideoRule *)v40 initWithFrameWidth:480 frameHeight:368 frameRate:v9 payload:v41];
  if (!v42)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v44 = v42;
  if ((preferredBitmap & 0x40) != 0)
  {
    LODWORD(v43) = 1.0;
    [(VCVideoRule *)v42 setFPref:v43];
  }

  [v7 addObject:v44];

LABEL_38:
  if ((bitmap & 0x80) == 0)
  {
    goto LABEL_43;
  }

  v45 = [VCVideoRule alloc];
  LODWORD(v46) = 15.0;
  v47 = [(VCVideoRule *)v45 initWithFrameWidth:640 frameHeight:480 frameRate:v9 payload:v46];
  if (!v47)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v49 = v47;
  if ((preferredBitmap & 0x80) != 0)
  {
    LODWORD(v48) = 1.0;
    [(VCVideoRule *)v47 setFPref:v48];
  }

  [v7 addObject:v49];

LABEL_43:
  if ((bitmap & 0x100) == 0)
  {
    goto LABEL_48;
  }

  v50 = [VCVideoRule alloc];
  LODWORD(v51) = 30.0;
  v52 = [(VCVideoRule *)v50 initWithFrameWidth:640 frameHeight:480 frameRate:v9 payload:v51];
  if (!v52)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v54 = v52;
  if ((preferredBitmap & 0x100) != 0)
  {
    LODWORD(v53) = 1.0;
    [(VCVideoRule *)v52 setFPref:v53];
  }

  [v7 addObject:v54];

LABEL_48:
  if ((bitmap & 0x200) == 0)
  {
    goto LABEL_53;
  }

  v55 = [VCVideoRule alloc];
  LODWORD(v56) = 15.0;
  v57 = [(VCVideoRule *)v55 initWithFrameWidth:848 frameHeight:480 frameRate:v9 payload:v56];
  if (!v57)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v59 = v57;
  if ((preferredBitmap & 0x200) != 0)
  {
    LODWORD(v58) = 1.0;
    [(VCVideoRule *)v57 setFPref:v58];
  }

  [v7 addObject:v59];

LABEL_53:
  if ((bitmap & 0x400) == 0)
  {
    goto LABEL_58;
  }

  v60 = [VCVideoRule alloc];
  LODWORD(v61) = 30.0;
  v62 = [(VCVideoRule *)v60 initWithFrameWidth:848 frameHeight:480 frameRate:v9 payload:v61];
  if (!v62)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v64 = v62;
  if ((preferredBitmap & 0x400) != 0)
  {
    LODWORD(v63) = 1.0;
    [(VCVideoRule *)v62 setFPref:v63];
  }

  [v7 addObject:v64];

LABEL_58:
  if ((bitmap & 0x800) == 0)
  {
    goto LABEL_63;
  }

  v65 = [VCVideoRule alloc];
  LODWORD(v66) = 15.0;
  v67 = [(VCVideoRule *)v65 initWithFrameWidth:896 frameHeight:672 frameRate:v9 payload:v66];
  if (!v67)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v69 = v67;
  if ((preferredBitmap & 0x800) != 0)
  {
    LODWORD(v68) = 1.0;
    [(VCVideoRule *)v67 setFPref:v68];
  }

  [v7 addObject:v69];

LABEL_63:
  if ((bitmap & 0x1000) == 0)
  {
    goto LABEL_68;
  }

  v70 = [VCVideoRule alloc];
  LODWORD(v71) = 30.0;
  v72 = [(VCVideoRule *)v70 initWithFrameWidth:896 frameHeight:672 frameRate:v9 payload:v71];
  if (!v72)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v74 = v72;
  if ((preferredBitmap & 0x1000) != 0)
  {
    LODWORD(v73) = 1.0;
    [(VCVideoRule *)v72 setFPref:v73];
  }

  [v7 addObject:v74];

LABEL_68:
  if ((bitmap & 0x2000) == 0)
  {
    goto LABEL_73;
  }

  v75 = [VCVideoRule alloc];
  LODWORD(v76) = 1114636288;
  v77 = [(VCVideoRule *)v75 initWithFrameWidth:896 frameHeight:672 frameRate:v9 payload:v76];
  if (!v77)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v79 = v77;
  if ((preferredBitmap & 0x2000) != 0)
  {
    LODWORD(v78) = 1.0;
    [(VCVideoRule *)v77 setFPref:v78];
  }

  [v7 addObject:v79];

LABEL_73:
  if ((bitmap & 0x4000) == 0)
  {
    goto LABEL_78;
  }

  v80 = [VCVideoRule alloc];
  LODWORD(v81) = 15.0;
  v82 = [(VCVideoRule *)v80 initWithFrameWidth:1024 frameHeight:576 frameRate:v9 payload:v81];
  if (!v82)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v84 = v82;
  if ((preferredBitmap & 0x4000) != 0)
  {
    LODWORD(v83) = 1.0;
    [(VCVideoRule *)v82 setFPref:v83];
  }

  [v7 addObject:v84];

LABEL_78:
  if ((bitmap & 0x8000) == 0)
  {
    goto LABEL_83;
  }

  v85 = [VCVideoRule alloc];
  LODWORD(v86) = 15.0;
  v87 = [(VCVideoRule *)v85 initWithFrameWidth:1024 frameHeight:768 frameRate:v9 payload:v86];
  if (!v87)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v89 = v87;
  if ((preferredBitmap & 0x8000) != 0)
  {
    LODWORD(v88) = 1.0;
    [(VCVideoRule *)v87 setFPref:v88];
  }

  [v7 addObject:v89];

LABEL_83:
  if ((bitmap & 0x10000) == 0)
  {
    goto LABEL_88;
  }

  v90 = [VCVideoRule alloc];
  LODWORD(v91) = 30.0;
  v92 = [(VCVideoRule *)v90 initWithFrameWidth:1024 frameHeight:768 frameRate:v9 payload:v91];
  if (!v92)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v94 = v92;
  if ((preferredBitmap & 0x10000) != 0)
  {
    LODWORD(v93) = 1.0;
    [(VCVideoRule *)v92 setFPref:v93];
  }

  [v7 addObject:v94];

LABEL_88:
  if ((bitmap & 0x20000) == 0)
  {
    goto LABEL_93;
  }

  v95 = [VCVideoRule alloc];
  LODWORD(v96) = 1114636288;
  v97 = [(VCVideoRule *)v95 initWithFrameWidth:1024 frameHeight:768 frameRate:v9 payload:v96];
  if (!v97)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v99 = v97;
  if ((preferredBitmap & 0x20000) != 0)
  {
    LODWORD(v98) = 1.0;
    [(VCVideoRule *)v97 setFPref:v98];
  }

  [v7 addObject:v99];

LABEL_93:
  if ((bitmap & 0x40000) == 0)
  {
    goto LABEL_98;
  }

  v100 = [VCVideoRule alloc];
  LODWORD(v101) = 15.0;
  v102 = [(VCVideoRule *)v100 initWithFrameWidth:1280 frameHeight:720 frameRate:v9 payload:v101];
  if (!v102)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v104 = v102;
  if ((preferredBitmap & 0x40000) != 0)
  {
    LODWORD(v103) = 1.0;
    [(VCVideoRule *)v102 setFPref:v103];
  }

  [v7 addObject:v104];

LABEL_98:
  if ((bitmap & 0x80000) == 0)
  {
    goto LABEL_103;
  }

  v105 = [VCVideoRule alloc];
  LODWORD(v106) = 30.0;
  v107 = [(VCVideoRule *)v105 initWithFrameWidth:1024 frameHeight:576 frameRate:v9 payload:v106];
  if (!v107)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v109 = v107;
  if ((preferredBitmap & 0x80000) != 0)
  {
    LODWORD(v108) = 1.0;
    [(VCVideoRule *)v107 setFPref:v108];
  }

  [v7 addObject:v109];

LABEL_103:
  if ((bitmap & 0x100000) == 0)
  {
    goto LABEL_108;
  }

  v110 = [VCVideoRule alloc];
  LODWORD(v111) = 30.0;
  v112 = [(VCVideoRule *)v110 initWithFrameWidth:1280 frameHeight:720 frameRate:v9 payload:v111];
  if (!v112)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v114 = v112;
  if ((preferredBitmap & 0x100000) != 0)
  {
    LODWORD(v113) = 1.0;
    [(VCVideoRule *)v112 setFPref:v113];
  }

  [v7 addObject:v114];

LABEL_108:
  if ((bitmap & 0x200000) == 0)
  {
    goto LABEL_113;
  }

  v115 = [VCVideoRule alloc];
  LODWORD(v116) = 1114636288;
  v117 = [(VCVideoRule *)v115 initWithFrameWidth:1280 frameHeight:720 frameRate:v9 payload:v116];
  if (!v117)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v119 = v117;
  if ((preferredBitmap & 0x200000) != 0)
  {
    LODWORD(v118) = 1.0;
    [(VCVideoRule *)v117 setFPref:v118];
  }

  [v7 addObject:v119];

LABEL_113:
  if ((bitmap & 0x400000) == 0)
  {
    goto LABEL_118;
  }

  v120 = [VCVideoRule alloc];
  LODWORD(v121) = 30.0;
  v122 = [(VCVideoRule *)v120 initWithFrameWidth:1440 frameHeight:1080 frameRate:v9 payload:v121];
  if (!v122)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v124 = v122;
  if ((preferredBitmap & 0x400000) != 0)
  {
    LODWORD(v123) = 1.0;
    [(VCVideoRule *)v122 setFPref:v123];
  }

  [v7 addObject:v124];

LABEL_118:
  if ((bitmap & 0x800000) == 0)
  {
    goto LABEL_123;
  }

  v125 = [VCVideoRule alloc];
  LODWORD(v126) = 30.0;
  v127 = [(VCVideoRule *)v125 initWithFrameWidth:1664 frameHeight:1248 frameRate:v9 payload:v126];
  if (!v127)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v129 = v127;
  if ((preferredBitmap & 0x800000) != 0)
  {
    LODWORD(v128) = 1.0;
    [(VCVideoRule *)v127 setFPref:v128];
  }

  [v7 addObject:v129];

LABEL_123:
  if ((bitmap & 0x1000000) == 0)
  {
    goto LABEL_128;
  }

  v130 = [VCVideoRule alloc];
  LODWORD(v131) = 1114636288;
  v132 = [(VCVideoRule *)v130 initWithFrameWidth:1664 frameHeight:1248 frameRate:v9 payload:v131];
  if (!v132)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v134 = v132;
  if ((preferredBitmap & 0x1000000) != 0)
  {
    LODWORD(v133) = 1.0;
    [(VCVideoRule *)v132 setFPref:v133];
  }

  [v7 addObject:v134];

LABEL_128:
  if ((bitmap & 0x2000000) == 0)
  {
    goto LABEL_133;
  }

  v135 = [VCVideoRule alloc];
  LODWORD(v136) = 30.0;
  v137 = [(VCVideoRule *)v135 initWithFrameWidth:1920 frameHeight:1080 frameRate:v9 payload:v136];
  if (!v137)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v139 = v137;
  if ((preferredBitmap & 0x2000000) != 0)
  {
    LODWORD(v138) = 1.0;
    [(VCVideoRule *)v137 setFPref:v138];
  }

  [v7 addObject:v139];

LABEL_133:
  if ((bitmap & 0x4000000) == 0)
  {
    goto LABEL_138;
  }

  v140 = [VCVideoRule alloc];
  LODWORD(v141) = 1114636288;
  v142 = [(VCVideoRule *)v140 initWithFrameWidth:1920 frameHeight:1080 frameRate:v9 payload:v141];
  if (!v142)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v144 = v142;
  if ((preferredBitmap & 0x4000000) != 0)
  {
    LODWORD(v143) = 1.0;
    [(VCVideoRule *)v142 setFPref:v143];
  }

  [v7 addObject:v144];

LABEL_138:
  if ((bitmap & 0x10000000) == 0)
  {
    goto LABEL_143;
  }

  v145 = [VCVideoRule alloc];
  LODWORD(v146) = 30.0;
  v147 = [(VCVideoRule *)v145 initWithFrameWidth:1088 frameHeight:1088 frameRate:v9 payload:v146];
  if (!v147)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v149 = v147;
  if ((preferredBitmap & 0x10000000) != 0)
  {
    LODWORD(v148) = 1.0;
    [(VCVideoRule *)v147 setFPref:v148];
  }

  [v7 addObject:v149];

LABEL_143:
  if ((bitmap & 0x8000000) == 0)
  {
    goto LABEL_148;
  }

  v150 = [VCVideoRule alloc];
  LODWORD(v151) = 1114636288;
  v152 = [(VCVideoRule *)v150 initWithFrameWidth:1088 frameHeight:1088 frameRate:v9 payload:v151];
  if (!v152)
  {
    [VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:];
    goto LABEL_183;
  }

  v154 = v152;
  if ((preferredBitmap & 0x8000000) != 0)
  {
    LODWORD(v153) = 1.0;
    [(VCVideoRule *)v152 setFPref:v153];
  }

  [v7 addObject:v154];

LABEL_148:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v155 = VRTraceErrorLogLevelToCSTR();
    v156 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v158 = 136316162;
      v159 = v155;
      v160 = 2080;
      v161 = "[VCMediaNegotiationBlobV2VideoPayload(Utils) videoRulesWithBitmap:preferredBitmap:]";
      v162 = 1024;
      v163 = 131;
      v164 = 1024;
      preferredBitmapCopy = preferredBitmap;
      v166 = 2112;
      v167 = v7;
      _os_log_impl(&dword_1DB56E000, v156, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d preferredBitmap=0x%x, videoRules=%@", &v158, 0x2Cu);
    }
  }

  return v7;
}

- (void)printWithLogFile:(void *)file prefix:(id)prefix
{
  v69 = *MEMORY[0x1E69E9840];
  prefix = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2VideoPayload data](self, "data"), "length"), prefix];
  videoPayload = [(VCMediaNegotiationBlobV2VideoPayload *)self videoPayload];
  if ((videoPayload - 1) >= 3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", videoPayload];
  }

  else
  {
    v7 = off_1E85F78D0[(videoPayload - 1)];
  }

  [prefix appendFormat:@"Payload=%@", v7];
  if ([(VCMediaNegotiationBlobV2VideoPayload *)self hasEncodeDecodeFeatures])
  {
    [prefix appendFormat:@" encodeDecodeFeatures=%@", -[VCMediaNegotiationBlobV2VideoPayload encodeDecodeFeatures](self, "encodeDecodeFeatures")];
  }

  v8 = prefix;
  [prefix appendFormat:@" Encode=["];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  obj = [(VCMediaNegotiationBlobV2VideoPayload *)self encodeVideoRules];
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v65 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = &stru_1F570E008;
    v12 = *v66;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v66 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v65 + 1) + 8 * i);
        iWidth = [v14 iWidth];
        iHeight = [v14 iHeight];
        [v14 fRate];
        v18 = v17;
        [v14 fPref];
        v19 = "";
        if (v20 == 1.0)
        {
          v19 = "(Pref)";
        }

        [v8 appendFormat:@"%@%dx%d@%.0f%s", v11, iWidth, iHeight, *&v18, v19];
        v11 = @", ";
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v65 objects:v64 count:16];
      v11 = @", ";
    }

    while (v10);
  }

  [v8 appendFormat:@"] Decode=["];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obja = [(VCMediaNegotiationBlobV2VideoPayload *)selfCopy decodeVideoRules];
  v21 = [(NSArray *)obja countByEnumeratingWithState:&v60 objects:v59 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = &stru_1F570E008;
    v24 = *v61;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v61 != v24)
        {
          objc_enumerationMutation(obja);
        }

        v26 = *(*(&v60 + 1) + 8 * j);
        iWidth2 = [v26 iWidth];
        iHeight2 = [v26 iHeight];
        [v26 fRate];
        v30 = v29;
        [v26 fPref];
        v31 = "";
        if (v32 == 1.0)
        {
          v31 = "(Pref)";
        }

        [v8 appendFormat:@"%@%dx%d@%.0f%s", v23, iWidth2, iHeight2, *&v30, v31];
        v23 = @", ";
      }

      v22 = [(NSArray *)obja countByEnumeratingWithState:&v60 objects:v59 count:16];
      v23 = @", ";
    }

    while (v22);
  }

  v33 = v8;
  [v8 appendFormat:@"]"];
  parameterSet = [(VCMediaNegotiationBlobV2VideoPayload *)selfCopy parameterSet];
  [v8 appendFormat:@" paramSet=["];
  if ((parameterSet & 0xF) != 0)
  {
    v35 = 1;
    v36 = &stru_1F570E008;
    while ((parameterSet & v35) == 0)
    {
LABEL_39:
      parameterSet &= ~v35;
      v35 = (2 * v35);
      if ((parameterSet & 0xF) == 0)
      {
        goto LABEL_40;
      }
    }

    if (v35 <= 3)
    {
      v37 = @"ImageDescription";
      if (v35 == 1)
      {
        goto LABEL_38;
      }

      if (v35 == 2)
      {
        v37 = @"SPS";
        goto LABEL_38;
      }
    }

    else
    {
      switch(v35)
      {
        case 4:
          v37 = @"PPS";
          goto LABEL_38;
        case 8:
          v37 = @"VPS";
          goto LABEL_38;
        case 0xF:
          v37 = @"SupportedMask";
LABEL_38:
          [v33 appendFormat:@"%@%@", v36, v37];
          v36 = @", ";
          goto LABEL_39;
      }
    }

    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v35];
    goto LABEL_38;
  }

LABEL_40:
  [v33 appendString:@"]"];
  uTF8String = [v33 UTF8String];
  VRLogfilePrintWithTimestamp(file, "%s\n", v39, v40, v41, v42, v43, v44, uTF8String);
  if (VRTraceGetErrorLogLevelForModule() > 5)
  {
    v45 = VRTraceErrorLogLevelToCSTR();
    v46 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v52 = v45;
      v53 = 2080;
      v54 = "[VCMediaNegotiationBlobV2VideoPayload(Utils) printWithLogFile:prefix:]";
      v55 = 1024;
      v56 = 187;
      v57 = 2112;
      v58 = v33;
      _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

+ (int)payloadWithRTPPayload:(int)payload
{
  v15 = *MEMORY[0x1E69E9840];
  if (payload == 123)
  {
    return 1;
  }

  if (payload == 100)
  {
    return 2;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 136315906;
    v8 = v5;
    v9 = 2080;
    v10 = "+[VCMediaNegotiationBlobV2VideoPayload(Utils) payloadWithRTPPayload:]";
    v11 = 1024;
    v12 = 199;
    v13 = 1024;
    payloadCopy = payload;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown video payload (payload=%d)", &v7, 0x22u);
  }

  return 0;
}

+ (int)rtpPayloadWithPayload:(int)payload
{
  v15 = *MEMORY[0x1E69E9840];
  if (payload == 2)
  {
    return 100;
  }

  if (payload == 1)
  {
    return 123;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "+[VCMediaNegotiationBlobV2VideoPayload(Utils) rtpPayloadWithPayload:]";
      v11 = 1024;
      v12 = 211;
      v13 = 1024;
      payloadCopy = payload;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown video payload (%d)", &v7, 0x22u);
    }
  }

  return 128;
}

- (BOOL)setupEncode:(BOOL)encode videoRules:(id)rules
{
  encodeCopy = encode;
  v80 = *MEMORY[0x1E69E9840];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v7 = [rules countByEnumeratingWithState:&v76 objects:v75 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = *v77;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v77 != v11)
      {
        objc_enumerationMutation(rules);
      }

      v13 = *(*(&v76 + 1) + 8 * v12);
      if ([v13 iWidth] == 192 && objc_msgSend(v13, "iHeight") == 112 && (objc_msgSend(v13, "fRate"), v14 == 15.0))
      {
        v10 = v10 | 1;
        [v13 fPref];
        if (v15 == 1.0)
        {
          v9 = v9 | 1;
        }
      }

      else if ([v13 iWidth] == 320 && objc_msgSend(v13, "iHeight") == 240 && (objc_msgSend(v13, "fRate"), v16 == 15.0))
      {
        v10 = v10 | 2;
        [v13 fPref];
        if (v17 == 1.0)
        {
          v9 = v9 | 2;
        }
      }

      else if ([v13 iWidth] == 320 && objc_msgSend(v13, "iHeight") == 240 && (objc_msgSend(v13, "fRate"), v18 == 30.0))
      {
        v10 = v10 | 4;
        [v13 fPref];
        if (v19 == 1.0)
        {
          v9 = v9 | 4;
        }
      }

      else if ([v13 iWidth] == 480 && objc_msgSend(v13, "iHeight") == 272 && (objc_msgSend(v13, "fRate"), v20 == 15.0))
      {
        v10 = v10 | 8;
        [v13 fPref];
        if (v21 == 1.0)
        {
          v9 = v9 | 8;
        }
      }

      else if ([v13 iWidth] == 480 && objc_msgSend(v13, "iHeight") == 272 && (objc_msgSend(v13, "fRate"), v22 == 30.0))
      {
        v10 = v10 | 0x10;
        [v13 fPref];
        if (v23 == 1.0)
        {
          v9 = v9 | 0x10;
        }
      }

      else if ([v13 iWidth] == 480 && objc_msgSend(v13, "iHeight") == 368 && (objc_msgSend(v13, "fRate"), v24 == 15.0))
      {
        v10 = v10 | 0x20;
        [v13 fPref];
        if (v25 == 1.0)
        {
          v9 = v9 | 0x20;
        }
      }

      else if ([v13 iWidth] == 480 && objc_msgSend(v13, "iHeight") == 368 && (objc_msgSend(v13, "fRate"), v26 == 30.0))
      {
        v10 = v10 | 0x40;
        [v13 fPref];
        if (v27 == 1.0)
        {
          v9 = v9 | 0x40;
        }
      }

      else if ([v13 iWidth] == 640 && objc_msgSend(v13, "iHeight") == 480 && (objc_msgSend(v13, "fRate"), v28 == 15.0))
      {
        v10 = v10 | 0x80;
        [v13 fPref];
        if (v29 == 1.0)
        {
          v9 = v9 | 0x80;
        }
      }

      else if ([v13 iWidth] == 640 && objc_msgSend(v13, "iHeight") == 480 && (objc_msgSend(v13, "fRate"), v30 == 30.0))
      {
        v10 = v10 | 0x100;
        [v13 fPref];
        if (v31 == 1.0)
        {
          v9 = v9 | 0x100;
        }
      }

      else if ([v13 iWidth] == 848 && objc_msgSend(v13, "iHeight") == 480 && (objc_msgSend(v13, "fRate"), v32 == 15.0))
      {
        v10 = v10 | 0x200;
        [v13 fPref];
        if (v33 == 1.0)
        {
          v9 = v9 | 0x200;
        }
      }

      else if ([v13 iWidth] == 848 && objc_msgSend(v13, "iHeight") == 480 && (objc_msgSend(v13, "fRate"), v34 == 30.0))
      {
        v10 = v10 | 0x400;
        [v13 fPref];
        if (v35 == 1.0)
        {
          v9 = v9 | 0x400;
        }
      }

      else if ([v13 iWidth] == 896 && objc_msgSend(v13, "iHeight") == 672 && (objc_msgSend(v13, "fRate"), v36 == 15.0))
      {
        v10 = v10 | 0x800;
        [v13 fPref];
        if (v37 == 1.0)
        {
          v9 = v9 | 0x800;
        }
      }

      else if ([v13 iWidth] == 896 && objc_msgSend(v13, "iHeight") == 672 && (objc_msgSend(v13, "fRate"), v38 == 30.0))
      {
        v10 = v10 | 0x1000;
        [v13 fPref];
        if (v39 == 1.0)
        {
          v9 = v9 | 0x1000;
        }
      }

      else if ([v13 iWidth] == 896 && objc_msgSend(v13, "iHeight") == 672 && (objc_msgSend(v13, "fRate"), v40 == 60.0))
      {
        v10 = v10 | 0x2000;
        [v13 fPref];
        if (v41 == 1.0)
        {
          v9 = v9 | 0x2000;
        }
      }

      else if ([v13 iWidth] == 1024 && objc_msgSend(v13, "iHeight") == 576 && (objc_msgSend(v13, "fRate"), v42 == 15.0))
      {
        v10 = v10 | 0x4000;
        [v13 fPref];
        if (v43 == 1.0)
        {
          v9 = v9 | 0x4000;
        }
      }

      else if ([v13 iWidth] == 1024 && objc_msgSend(v13, "iHeight") == 768 && (objc_msgSend(v13, "fRate"), v44 == 15.0))
      {
        v10 = v10 | 0x8000;
        [v13 fPref];
        if (v45 == 1.0)
        {
          v9 = v9 | 0x8000;
        }
      }

      else if ([v13 iWidth] == 1024 && objc_msgSend(v13, "iHeight") == 768 && (objc_msgSend(v13, "fRate"), v46 == 30.0))
      {
        v10 = v10 | 0x10000;
        [v13 fPref];
        if (v47 == 1.0)
        {
          v9 = v9 | 0x10000;
        }
      }

      else if ([v13 iWidth] == 1024 && objc_msgSend(v13, "iHeight") == 768 && (objc_msgSend(v13, "fRate"), v48 == 60.0))
      {
        v10 = v10 | 0x20000;
        [v13 fPref];
        if (v49 == 1.0)
        {
          v9 = v9 | 0x20000;
        }
      }

      else if ([v13 iWidth] == 1280 && objc_msgSend(v13, "iHeight") == 720 && (objc_msgSend(v13, "fRate"), v50 == 15.0))
      {
        v10 = v10 | 0x40000;
        [v13 fPref];
        if (v51 == 1.0)
        {
          v9 = v9 | 0x40000;
        }
      }

      else if ([v13 iWidth] == 1024 && objc_msgSend(v13, "iHeight") == 576 && (objc_msgSend(v13, "fRate"), v52 == 30.0))
      {
        v10 = v10 | 0x80000;
        [v13 fPref];
        if (v53 == 1.0)
        {
          v9 = v9 | 0x80000;
        }
      }

      else if ([v13 iWidth] == 1280 && objc_msgSend(v13, "iHeight") == 720 && (objc_msgSend(v13, "fRate"), v54 == 30.0))
      {
        v10 = v10 | 0x100000;
        [v13 fPref];
        if (v55 == 1.0)
        {
          v9 = v9 | 0x100000;
        }
      }

      else if ([v13 iWidth] == 1280 && objc_msgSend(v13, "iHeight") == 720 && (objc_msgSend(v13, "fRate"), v56 == 60.0))
      {
        v10 = v10 | 0x200000;
        [v13 fPref];
        if (v57 == 1.0)
        {
          v9 = v9 | 0x200000;
        }
      }

      else if ([v13 iWidth] == 1440 && objc_msgSend(v13, "iHeight") == 1080 && (objc_msgSend(v13, "fRate"), v58 == 30.0))
      {
        v10 = v10 | 0x400000;
        [v13 fPref];
        if (v59 == 1.0)
        {
          v9 = v9 | 0x400000;
        }
      }

      else if ([v13 iWidth] == 1664 && objc_msgSend(v13, "iHeight") == 1248 && (objc_msgSend(v13, "fRate"), v60 == 30.0))
      {
        v10 = v10 | 0x800000;
        [v13 fPref];
        if (v61 == 1.0)
        {
          v9 = v9 | 0x800000;
        }
      }

      else if ([v13 iWidth] == 1664 && objc_msgSend(v13, "iHeight") == 1248 && (objc_msgSend(v13, "fRate"), v62 == 60.0))
      {
        v10 = v10 | 0x1000000;
        [v13 fPref];
        if (v63 == 1.0)
        {
          v9 = v9 | 0x1000000;
        }
      }

      else if ([v13 iWidth] == 1920 && objc_msgSend(v13, "iHeight") == 1080 && (objc_msgSend(v13, "fRate"), v64 == 30.0))
      {
        v10 = v10 | 0x2000000;
        [v13 fPref];
        if (v65 == 1.0)
        {
          v9 = v9 | 0x2000000;
        }
      }

      else if ([v13 iWidth] == 1920 && objc_msgSend(v13, "iHeight") == 1080 && (objc_msgSend(v13, "fRate"), v66 == 60.0))
      {
        v10 = v10 | 0x4000000;
        [v13 fPref];
        if (v67 == 1.0)
        {
          v9 = v9 | 0x4000000;
        }
      }

      else if ([v13 iWidth] == 1088 && objc_msgSend(v13, "iHeight") == 1088 && (objc_msgSend(v13, "fRate"), v68 == 30.0))
      {
        v10 = v10 | 0x10000000;
        [v13 fPref];
        if (v69 == 1.0)
        {
          v9 = v9 | 0x10000000;
        }
      }

      else
      {
        if ([v13 iWidth] != 1088 || objc_msgSend(v13, "iHeight") != 1088 || (objc_msgSend(v13, "fRate"), v70 != 60.0))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v73 = VRTraceErrorLogLevelToCSTR();
            v72 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v72)
            {
              return v72;
            }

            [VCMediaNegotiationBlobV2VideoPayload(Utils) setupEncode:v73 videoRules:v13];
          }

          LOBYTE(v72) = 0;
          return v72;
        }

        v10 = v10 | 0x8000000;
        [v13 fPref];
        if (v71 == 1.0)
        {
          v9 = v9 | 0x8000000;
        }
      }

      if (v8 == ++v12)
      {
        v8 = [rules countByEnumeratingWithState:&v76 objects:v75 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_155;
      }
    }
  }

  v9 = 0;
  v10 = 0;
LABEL_155:
  if (encodeCopy)
  {
    if ([(VCMediaNegotiationBlobV2VideoPayload *)self encodeFormats]!= v10)
    {
      [(VCMediaNegotiationBlobV2VideoPayload *)self setEncodeFormats:v10];
    }
  }

  else
  {
    if ([(VCMediaNegotiationBlobV2VideoPayload *)self decodeFormats]!= v10)
    {
      [(VCMediaNegotiationBlobV2VideoPayload *)self setDecodeFormats:v10];
    }

    [(VCMediaNegotiationBlobV2VideoPayload *)self setPreferredDecodeFormat:v9];
  }

  LOBYTE(v72) = 1;
  return v72;
}

- (void)setupVideoParameterSupport:(unsigned int)support
{
  v4 = support & 0xF;
  if (v4 != [(VCMediaNegotiationBlobV2VideoPayload *)self parameterSet])
  {

    [(VCMediaNegotiationBlobV2VideoPayload *)self setParameterSet:v4];
  }
}

@end