@interface VCCCMessageWrapper
- (BOOL)isEqual:(id)a3;
- (id)contentAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContent:(id)a3;
- (int)content;
- (unint64_t)hash;
- (void)clearOneofValuesForContent;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setAcknowledgement:(id)a3;
- (void)setMessage:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCCCMessageWrapper

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCCCMessageWrapper *)self setMessage:0];
  [(VCCCMessageWrapper *)self setAcknowledgement:0];
  v3.receiver = self;
  v3.super_class = VCCCMessageWrapper;
  [(VCCCMessageWrapper *)&v3 dealloc];
}

- (void)setMessage:(id)a3
{
  [(VCCCMessageWrapper *)self clearOneofValuesForContent];
  *&self->_has |= 1u;
  self->_content = 1;
  v5 = a3;

  self->_message = a3;
}

- (void)setAcknowledgement:(id)a3
{
  [(VCCCMessageWrapper *)self clearOneofValuesForContent];
  *&self->_has |= 1u;
  self->_content = 2;
  v5 = a3;

  self->_acknowledgement = a3;
}

- (int)content
{
  if (*&self->_has)
  {
    return self->_content;
  }

  else
  {
    return 0;
  }
}

- (id)contentAsString:(int)a3
{
  if (a3 >= 3)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return off_1E85F9320[a3];
  }
}

- (int)StringAsContent:(id)a3
{
  if ([a3 isEqualToString:@"PBUNSET"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"message"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"acknowledgement"])
  {
    return 2;
  }

  return 0;
}

- (void)clearOneofValuesForContent
{
  *&self->_has &= ~1u;
  self->_content = 0;

  self->_message = 0;
  self->_acknowledgement = 0;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCCCMessageWrapper;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCCCMessageWrapper description](&v3, sel_description), -[VCCCMessageWrapper dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  message = self->_message;
  if (message)
  {
    [v3 setObject:-[VCCCMessage dictionaryRepresentation](message forKey:{"dictionaryRepresentation"), @"message"}];
  }

  acknowledgement = self->_acknowledgement;
  if (acknowledgement)
  {
    [v3 setObject:-[VCCCMessageAcknowledgment dictionaryRepresentation](acknowledgement forKey:{"dictionaryRepresentation"), @"acknowledgement"}];
  }

  if (*&self->_has)
  {
    content = self->_content;
    if (content >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_content];
    }

    else
    {
      v7 = off_1E85F9320[content];
    }

    [v3 setObject:v7 forKey:@"content"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_message)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_acknowledgement)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 4) = self->_content;
    *(a3 + 32) |= 1u;
  }

  if (self->_message)
  {
    [a3 setMessage:?];
  }

  if (self->_acknowledgement)
  {

    [a3 setAcknowledgement:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_content;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 24) = [(VCCCMessage *)self->_message copyWithZone:a3];
  *(v6 + 8) = [(VCCCMessageAcknowledgment *)self->_acknowledgement copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_content != *(a3 + 4))
      {
        goto LABEL_11;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    message = self->_message;
    if (!(message | *(a3 + 3)) || (v5 = [(VCCCMessage *)message isEqual:?]) != 0)
    {
      acknowledgement = self->_acknowledgement;
      if (acknowledgement | *(a3 + 1))
      {

        LOBYTE(v5) = [(VCCCMessageAcknowledgment *)acknowledgement isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_content;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(VCCCMessage *)self->_message hash]^ v3;
  return v4 ^ [(VCCCMessageAcknowledgment *)self->_acknowledgement hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_content = *(a3 + 4);
    *&self->_has |= 1u;
  }

  message = self->_message;
  v6 = *(a3 + 3);
  if (message)
  {
    if (v6)
    {
      [(VCCCMessage *)message mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCCCMessageWrapper *)self setMessage:?];
  }

  acknowledgement = self->_acknowledgement;
  v8 = *(a3 + 1);
  if (acknowledgement)
  {
    if (v8)
    {

      [(VCCCMessageAcknowledgment *)acknowledgement mergeFrom:?];
    }
  }

  else if (v8)
  {

    [(VCCCMessageWrapper *)self setAcknowledgement:?];
  }
}

@end