@interface ATXMPBFeedbackUserInteractionsTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)engagementTypeAsString:(int)string;
- (int)StringAsEngagementType:(id)type;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBFeedbackUserInteractionsTracker

- (int)engagementType
{
  if (*&self->_has)
  {
    return self->_engagementType;
  }

  else
  {
    return 0;
  }
}

- (id)engagementTypeAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"Rejection";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"Engagement";
  }

  return v4;
}

- (int)StringAsEngagementType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Engagement"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Rejection"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXMPBFeedbackUserInteractionsTracker;
  v4 = [(ATXMPBFeedbackUserInteractionsTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBFeedbackUserInteractionsTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    if (engagementType)
    {
      if (engagementType == 1)
      {
        v5 = @"Rejection";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_engagementType];
      }
    }

    else
    {
      v5 = @"Engagement";
    }

    [dictionary setObject:v5 forKey:@"engagementType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_engagementType;
    *(toCopy + 20) |= 1u;
  }

  if (self->_consumerSubType)
  {
    v5 = toCopy;
    [toCopy setConsumerSubType:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_engagementType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_engagementType != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 1))
  {
    v6 = [(NSString *)consumerSubType isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_engagementType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_consumerSubType hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_engagementType = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(ATXMPBFeedbackUserInteractionsTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }
}

@end