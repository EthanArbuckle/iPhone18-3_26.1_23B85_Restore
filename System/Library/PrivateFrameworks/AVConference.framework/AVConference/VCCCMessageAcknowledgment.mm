@interface VCCCMessageAcknowledgment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_transactionID), @"transactionID"}];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_status), @"status"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 1) = self->_transactionID;
  if (*&self->_has)
  {
    *(a3 + 4) = self->_status;
    *(a3 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_transactionID;
  if (*&self->_has)
  {
    *(result + 4) = self->_status;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_transactionID != *(a3 + 1))
    {
      goto LABEL_7;
    }

    LOBYTE(v5) = (*(a3 + 20) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 20) & 1) != 0 && self->_status == *(a3 + 4))
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

- (void)mergeFrom:(id)a3
{
  self->_transactionID = *(a3 + 1);
  if (*(a3 + 20))
  {
    self->_status = *(a3 + 4);
    *&self->_has |= 1u;
  }
}

@end