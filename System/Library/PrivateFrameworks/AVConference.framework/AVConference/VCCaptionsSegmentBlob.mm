@interface VCCaptionsSegmentBlob
- (BOOL)isEqual:(id)equal;
- (VCCaptionsSegmentBlob)initWithSFTranscriptionSegment:(id)segment isLast:(BOOL)last;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasHasSpaceAfter:(BOOL)after;
- (void)writeTo:(id)to;
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

- (void)setHasHasSpaceAfter:(BOOL)after
{
  if (after)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_confidence), @"confidence"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_hasSpaceAfter), @"hasSpaceAfter"}];
  }

  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 2) = self->_confidence;
    *(to + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 24) = self->_hasSpaceAfter;
    *(to + 28) |= 2u;
  }

  text = self->_text;
  if (text)
  {
    [to setText:text];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v6[2] = [(NSString *)self->_text copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (*&self->_has)
  {
    if ((*(equal + 28) & 1) == 0 || self->_confidence != *(equal + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(equal + 28))
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 28) & 2) != 0)
    {
      if (self->_hasSpaceAfter)
      {
        if ((*(equal + 24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equal + 24))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_12:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  text = self->_text;
  if (text | *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if (v3)
  {
    self->_confidence = *(from + 2);
    *&self->_has |= 1u;
    v3 = *(from + 28);
  }

  if ((v3 & 2) != 0)
  {
    self->_hasSpaceAfter = *(from + 24);
    *&self->_has |= 2u;
  }

  if (*(from + 2))
  {
    [(VCCaptionsSegmentBlob *)self setText:?];
  }
}

- (VCCaptionsSegmentBlob)initWithSFTranscriptionSegment:(id)segment isLast:(BOOL)last
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCCaptionsSegmentBlob;
  v6 = [(VCCaptionsSegmentBlob *)&v9 init];
  if (v6)
  {
    v6->_text = [objc_msgSend(segment "substring")];
    [segment confidence];
    v6->_confidence = (v7 * 100.0);
    *&v6->_has |= 1u;
    v6->_hasSpaceAfter = !last;
    *&v6->_has |= 2u;
  }

  return v6;
}

@end