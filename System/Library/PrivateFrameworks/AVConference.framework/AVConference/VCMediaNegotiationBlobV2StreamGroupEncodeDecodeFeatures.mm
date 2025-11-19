@interface VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures)initWithPayload:(id)a3 encodeDecodeFeatures:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures

- (VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures)initWithPayload:(id)a3 encodeDecodeFeatures:(id)a4
{
  v6 = [(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures *)self init];
  v7 = v6;
  if (!v6)
  {
    [VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures(Utils) initWithPayload:encodeDecodeFeatures:];
LABEL_9:

    return 0;
  }

  if (!a3)
  {
    [VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures(Utils) initWithPayload:encodeDecodeFeatures:];
    goto LABEL_9;
  }

  if (!a4)
  {
    [VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures(Utils) initWithPayload:encodeDecodeFeatures:];
    goto LABEL_9;
  }

  [(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures *)v6 setEncodeDecodeFeatures:a4];
  -[VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures setRtpPayload:](v7, "setRtpPayload:", [a3 intValue]);
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpPayload), @"rtpPayload"}];
  }

  encodeDecodeFeatures = self->_encodeDecodeFeatures;
  if (encodeDecodeFeatures)
  {
    [v3 setObject:encodeDecodeFeatures forKey:@"encodeDecodeFeatures"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 4) = self->_rtpPayload;
    *(a3 + 20) |= 1u;
  }

  encodeDecodeFeatures = self->_encodeDecodeFeatures;
  if (encodeDecodeFeatures)
  {
    [a3 setEncodeDecodeFeatures:encodeDecodeFeatures];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_rtpPayload;
    *(v5 + 20) |= 1u;
  }

  v6[1] = [(NSData *)self->_encodeDecodeFeatures copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 20) & 1) == 0 || self->_rtpPayload != *(a3 + 4))
      {
        goto LABEL_9;
      }
    }

    else if (*(a3 + 20))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    encodeDecodeFeatures = self->_encodeDecodeFeatures;
    if (encodeDecodeFeatures | *(a3 + 1))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 20))
  {
    self->_rtpPayload = *(a3 + 4);
    *&self->_has |= 1u;
  }

  if (*(a3 + 1))
  {
    [(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures *)self setEncodeDecodeFeatures:?];
  }
}

@end