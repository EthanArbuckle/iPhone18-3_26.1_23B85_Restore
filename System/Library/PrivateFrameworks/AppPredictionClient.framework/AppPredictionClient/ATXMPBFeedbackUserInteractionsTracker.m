@interface ATXMPBFeedbackUserInteractionsTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)engagementTypeAsString:(int)a3;
- (int)StringAsEngagementType:(id)a3;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)engagementTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"Rejection";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Engagement";
  }

  return v4;
}

- (int)StringAsEngagementType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Engagement"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Rejection"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXMPBFeedbackUserInteractionsTracker;
  v4 = [(ATXMPBFeedbackUserInteractionsTracker *)&v8 description];
  v5 = [(ATXMPBFeedbackUserInteractionsTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"engagementType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_engagementType;
    *(v4 + 20) |= 1u;
  }

  if (self->_consumerSubType)
  {
    v5 = v4;
    [v4 setConsumerSubType:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_engagementType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_engagementType != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_engagementType = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(ATXMPBFeedbackUserInteractionsTracker *)self setConsumerSubType:?];
    v4 = v5;
  }
}

@end