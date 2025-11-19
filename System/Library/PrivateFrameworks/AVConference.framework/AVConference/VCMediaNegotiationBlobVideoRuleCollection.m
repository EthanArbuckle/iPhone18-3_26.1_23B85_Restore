@interface VCMediaNegotiationBlobVideoRuleCollection
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)operationAsString:(int)a3;
- (id)transportAsString:(int)a3;
- (int)StringAsOperation:(id)a3;
- (int)StringAsTransport:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPreferredFormat:(BOOL)a3;
- (void)setHasPreferredFormatExt1:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobVideoRuleCollection

- (id)transportAsString:(int)a3
{
  if (a3 == 1)
  {
    return @"NEGOTIATION_TRANSPORT_TYPE_WIFI";
  }

  if (a3 == 2)
  {
    return @"NEGOTIATION_TRANSPORT_TYPE_CELLULAR";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
}

- (int)StringAsTransport:(id)a3
{
  v4 = 1;
  if (([a3 isEqualToString:@"NEGOTIATION_TRANSPORT_TYPE_WIFI"] & 1) == 0)
  {
    if ([a3 isEqualToString:@"NEGOTIATION_TRANSPORT_TYPE_CELLULAR"])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

- (id)operationAsString:(int)a3
{
  if (a3 == 1)
  {
    return @"NEGOTIATION_OPERATION_TYPE_ENCODE";
  }

  if (a3 == 2)
  {
    return @"NEGOTIATION_OPERATION_TYPE_DECODE";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
}

- (int)StringAsOperation:(id)a3
{
  v4 = 1;
  if (([a3 isEqualToString:@"NEGOTIATION_OPERATION_TYPE_ENCODE"] & 1) == 0)
  {
    if ([a3 isEqualToString:@"NEGOTIATION_OPERATION_TYPE_DECODE"])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

- (void)setHasPreferredFormat:(BOOL)a3
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

- (void)setHasPreferredFormatExt1:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobVideoRuleCollection;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobVideoRuleCollection description](&v3, sel_description), -[VCMediaNegotiationBlobVideoRuleCollection dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  transport = self->_transport;
  if (transport == 1)
  {
    v5 = @"NEGOTIATION_TRANSPORT_TYPE_WIFI";
  }

  else if (transport == 2)
  {
    v5 = @"NEGOTIATION_TRANSPORT_TYPE_CELLULAR";
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transport];
  }

  [v3 setObject:v5 forKey:@"transport"];
  operation = self->_operation;
  if (operation == 1)
  {
    v7 = @"NEGOTIATION_OPERATION_TYPE_ENCODE";
  }

  else if (operation == 2)
  {
    v7 = @"NEGOTIATION_OPERATION_TYPE_DECODE";
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_operation];
  }

  [v3 setObject:v7 forKey:@"operation"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_formats), @"formats"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_formatsExt1), @"formatsExt1"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_14;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_preferredFormat), @"preferredFormat"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((has & 4) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_preferredFormatExt1), @"preferredFormatExt1"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_7:

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  *(a3 + 7) = self->_transport;
  *(a3 + 4) = self->_operation;
  *(a3 + 2) = self->_formats;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 5) = self->_preferredFormat;
    *(a3 + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 6) = self->_preferredFormatExt1;
      *(a3 + 32) |= 4u;
      return;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 3) = self->_formatsExt1;
  *(a3 + 32) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 7) = self->_transport;
  *(result + 4) = self->_operation;
  *(result + 2) = self->_formats;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 5) = self->_preferredFormat;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_formatsExt1;
  *(result + 32) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 6) = self->_preferredFormatExt1;
  *(result + 32) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_transport != *(a3 + 7) || self->_operation != *(a3 + 4) || self->_formats != *(a3 + 2))
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_preferredFormat != *(a3 + 5))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_formatsExt1 != *(a3 + 3))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 32))
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(a3 + 32) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_preferredFormatExt1 != *(a3 + 6))
      {
        goto LABEL_19;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_preferredFormat;
  }

  else
  {
    v2 = 0;
  }

  if (*&self->_has)
  {
    v3 = 2654435761 * self->_formatsExt1;
  }

  else
  {
    v3 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_preferredFormatExt1;
  }

  else
  {
    v4 = 0;
  }

  return (2654435761 * self->_operation) ^ (2654435761 * self->_transport) ^ (2654435761 * self->_formats) ^ v2 ^ v3 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  self->_transport = *(a3 + 7);
  self->_operation = *(a3 + 4);
  self->_formats = *(a3 + 2);
  v3 = *(a3 + 32);
  if ((v3 & 2) != 0)
  {
    self->_preferredFormat = *(a3 + 5);
    *&self->_has |= 2u;
    v3 = *(a3 + 32);
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

LABEL_7:
      self->_preferredFormatExt1 = *(a3 + 6);
      *&self->_has |= 4u;
      return;
    }
  }

  else if ((*(a3 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_formatsExt1 = *(a3 + 3);
  *&self->_has |= 1u;
  if ((*(a3 + 32) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end