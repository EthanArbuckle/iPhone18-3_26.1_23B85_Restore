@interface VCCaptionsSegmentBlob
- (BOOL)isEqual:(id)a3;
- (VCCaptionsSegmentBlob)initWithSFTranscriptionSegment:(id)a3 isLast:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasHasSpaceAfter:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCCaptionsSegmentBlob

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCCaptionsSegmentBlob *)self setText:0];
  v3.receiver = self;
  v3.super_class = VCCaptionsSegmentBlob;
  [(VCCaptionsSegmentBlob *)&v3 dealloc];
}

- (void)setHasHasSpaceAfter:(BOOL)a3
{
  if (a3)
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
  v3.super_class = VCCaptionsSegmentBlob;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCCaptionsSegmentBlob description](&v3, sel_description), -[VCCaptionsSegmentBlob dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_confidence), @"confidence"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_hasSpaceAfter), @"hasSpaceAfter"}];
  }

  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_text)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 2) = self->_confidence;
    *(a3 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 24) = self->_hasSpaceAfter;
    *(a3 + 28) |= 2u;
  }

  text = self->_text;
  if (text)
  {
    [a3 setText:text];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_confidence;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_hasSpaceAfter;
    *(v5 + 28) |= 2u;
  }

  v6[2] = [(NSString *)self->_text copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (*&self->_has)
  {
    if ((*(a3 + 28) & 1) == 0 || self->_confidence != *(a3 + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(a3 + 28))
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 28) & 2) != 0)
    {
      if (self->_hasSpaceAfter)
      {
        if ((*(a3 + 24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(a3 + 24))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_12:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  text = self->_text;
  if (text | *(a3 + 2))
  {

    LOBYTE(v5) = [(NSString *)text isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_confidence;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_text hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_hasSpaceAfter;
  return v7 ^ v6 ^ [(NSString *)self->_text hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 28);
  if (v3)
  {
    self->_confidence = *(a3 + 2);
    *&self->_has |= 1u;
    v3 = *(a3 + 28);
  }

  if ((v3 & 2) != 0)
  {
    self->_hasSpaceAfter = *(a3 + 24);
    *&self->_has |= 2u;
  }

  if (*(a3 + 2))
  {
    [(VCCaptionsSegmentBlob *)self setText:?];
  }
}

- (VCCaptionsSegmentBlob)initWithSFTranscriptionSegment:(id)a3 isLast:(BOOL)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCCaptionsSegmentBlob;
  v6 = [(VCCaptionsSegmentBlob *)&v9 init];
  if (v6)
  {
    v6->_text = [objc_msgSend(a3 "substring")];
    [a3 confidence];
    v6->_confidence = (v7 * 100.0);
    *&v6->_has |= 1u;
    v6->_hasSpaceAfter = !a4;
    *&v6->_has |= 2u;
  }

  return v6;
}

@end