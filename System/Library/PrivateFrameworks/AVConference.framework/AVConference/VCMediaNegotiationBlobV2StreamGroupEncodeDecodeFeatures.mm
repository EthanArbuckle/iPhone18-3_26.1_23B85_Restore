@interface VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures
- (BOOL)isEqual:(id)equal;
- (VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures)initWithPayload:(id)payload encodeDecodeFeatures:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures

- (VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures)initWithPayload:(id)payload encodeDecodeFeatures:(id)features
{
  v6 = [(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures *)self init];
  v7 = v6;
  if (!v6)
  {
    [VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures(Utils) initWithPayload:encodeDecodeFeatures:];
LABEL_9:

    return 0;
  }

  if (!payload)
  {
    [VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures(Utils) initWithPayload:encodeDecodeFeatures:];
    goto LABEL_9;
  }

  if (!features)
  {
    [VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures(Utils) initWithPayload:encodeDecodeFeatures:];
    goto LABEL_9;
  }

  [(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures *)v6 setEncodeDecodeFeatures:features];
  -[VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures setRtpPayload:](v7, "setRtpPayload:", [payload intValue]);
  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures *)self setEncodeDecodeFeatures:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures;
  [(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures description](&v3, sel_description), -[VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpPayload), @"rtpPayload"}];
  }

  encodeDecodeFeatures = self->_encodeDecodeFeatures;
  if (encodeDecodeFeatures)
  {
    [dictionary setObject:encodeDecodeFeatures forKey:@"encodeDecodeFeatures"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_encodeDecodeFeatures)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 4) = self->_rtpPayload;
    *(to + 20) |= 1u;
  }

  encodeDecodeFeatures = self->_encodeDecodeFeatures;
  if (encodeDecodeFeatures)
  {
    [to setEncodeDecodeFeatures:encodeDecodeFeatures];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_rtpPayload;
    *(v5 + 20) |= 1u;
  }

  v6[1] = [(NSData *)self->_encodeDecodeFeatures copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 20) & 1) == 0 || self->_rtpPayload != *(equal + 4))
      {
        goto LABEL_9;
      }
    }

    else if (*(equal + 20))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    encodeDecodeFeatures = self->_encodeDecodeFeatures;
    if (encodeDecodeFeatures | *(equal + 1))
    {

      LOBYTE(v5) = [(NSData *)encodeDecodeFeatures isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_rtpPayload;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_encodeDecodeFeatures hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 20))
  {
    self->_rtpPayload = *(from + 4);
    *&self->_has |= 1u;
  }

  if (*(from + 1))
  {
    [(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures *)self setEncodeDecodeFeatures:?];
  }
}

@end