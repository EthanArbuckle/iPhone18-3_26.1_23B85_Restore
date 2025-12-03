@interface ATXMPBHeroAppEngagementTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInteractionType:(id)type;
- (int)interactionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBHeroAppEngagementTracker

- (int)interactionType
{
  if (*&self->_has)
  {
    return self->_interactionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsInteractionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Shown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Engaged"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Rejected"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBHeroAppEngagementTracker;
  v4 = [(ATXMPBHeroAppEngagementTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBHeroAppEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    interactionType = self->_interactionType;
    if (interactionType >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_interactionType];
    }

    else
    {
      v5 = off_2785A1A28[interactionType];
    }

    [dictionary setObject:v5 forKey:@"interactionType"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
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
  v6 = toCopy;
  if (*&self->_has)
  {
    interactionType = self->_interactionType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_interactionType;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_interactionType;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_bundleId copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_interactionType != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 1) && ![(NSString *)bundleId isEqual:?])
  {
    goto LABEL_11;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 2))
  {
    v8 = [(NSString *)consumerSubType isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_interactionType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleId hash]^ v3;
  return v4 ^ [(NSString *)self->_consumerSubType hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_interactionType = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ATXMPBHeroAppEngagementTracker *)self setBundleId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ATXMPBHeroAppEngagementTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }
}

@end