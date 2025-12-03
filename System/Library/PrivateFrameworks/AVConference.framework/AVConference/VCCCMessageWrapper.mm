@interface VCCCMessageWrapper
- (BOOL)isEqual:(id)equal;
- (id)contentAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContent:(id)content;
- (int)content;
- (unint64_t)hash;
- (void)clearOneofValuesForContent;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setAcknowledgement:(id)acknowledgement;
- (void)setMessage:(id)message;
- (void)writeTo:(id)to;
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

- (void)setMessage:(id)message
{
  [(VCCCMessageWrapper *)self clearOneofValuesForContent];
  *&self->_has |= 1u;
  self->_content = 1;
  messageCopy = message;

  self->_message = message;
}

- (void)setAcknowledgement:(id)acknowledgement
{
  [(VCCCMessageWrapper *)self clearOneofValuesForContent];
  *&self->_has |= 1u;
  self->_content = 2;
  acknowledgementCopy = acknowledgement;

  self->_acknowledgement = acknowledgement;
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

- (id)contentAsString:(int)string
{
  if (string >= 3)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return off_1E85F9320[string];
  }
}

- (int)StringAsContent:(id)content
{
  if ([content isEqualToString:@"PBUNSET"])
  {
    return 0;
  }

  if ([content isEqualToString:@"message"])
  {
    return 1;
  }

  if ([content isEqualToString:@"acknowledgement"])
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  message = self->_message;
  if (message)
  {
    [dictionary setObject:-[VCCCMessage dictionaryRepresentation](message forKey:{"dictionaryRepresentation"), @"message"}];
  }

  acknowledgement = self->_acknowledgement;
  if (acknowledgement)
  {
    [dictionary setObject:-[VCCCMessageAcknowledgment dictionaryRepresentation](acknowledgement forKey:{"dictionaryRepresentation"), @"acknowledgement"}];
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

    [dictionary setObject:v7 forKey:@"content"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 4) = self->_content;
    *(to + 32) |= 1u;
  }

  if (self->_message)
  {
    [to setMessage:?];
  }

  if (self->_acknowledgement)
  {

    [to setAcknowledgement:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_content;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 24) = [(VCCCMessage *)self->_message copyWithZone:zone];
  *(v6 + 8) = [(VCCCMessageAcknowledgment *)self->_acknowledgement copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_content != *(equal + 4))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    message = self->_message;
    if (!(message | *(equal + 3)) || (v5 = [(VCCCMessage *)message isEqual:?]) != 0)
    {
      acknowledgement = self->_acknowledgement;
      if (acknowledgement | *(equal + 1))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 32))
  {
    self->_content = *(from + 4);
    *&self->_has |= 1u;
  }

  message = self->_message;
  v6 = *(from + 3);
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
  v8 = *(from + 1);
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