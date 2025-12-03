@interface VCCCMessageAcknowledgment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCCCMessageAcknowledgment

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCCCMessageAcknowledgment;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCCCMessageAcknowledgment description](&v3, sel_description), -[VCCCMessageAcknowledgment dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_transactionID), @"transactionID"}];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_status), @"status"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  *(to + 1) = self->_transactionID;
  if (*&self->_has)
  {
    *(to + 4) = self->_status;
    *(to + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_transactionID;
  if (*&self->_has)
  {
    *(result + 4) = self->_status;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_transactionID != *(equal + 1))
    {
      goto LABEL_7;
    }

    LOBYTE(v5) = (*(equal + 20) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 20) & 1) != 0 && self->_status == *(equal + 4))
      {
        LOBYTE(v5) = 1;
        return v5;
      }

LABEL_7:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_status;
  }

  else
  {
    v2 = 0;
  }

  return v2 ^ (2654435761u * self->_transactionID);
}

- (void)mergeFrom:(id)from
{
  self->_transactionID = *(from + 1);
  if (*(from + 20))
  {
    self->_status = *(from + 4);
    *&self->_has |= 1u;
  }
}

@end