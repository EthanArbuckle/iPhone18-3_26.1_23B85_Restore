@interface ATXPBContactModeEntityMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumUniqueOutgoingInteractionRecipients:(BOOL)recipients;
- (void)writeTo:(id)to;
@end

@implementation ATXPBContactModeEntityMetrics

- (void)setHasNumUniqueOutgoingInteractionRecipients:(BOOL)recipients
{
  if (recipients)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBContactModeEntityMetrics;
  v4 = [(ATXPBContactModeEntityMetrics *)&v8 description];
  dictionaryRepresentation = [(ATXPBContactModeEntityMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numUniqueOutgoingInteractionRecipients];
    [v4 setObject:v7 forKey:@"numUniqueOutgoingInteractionRecipients"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numUniqueIncomingInteractionSenders];
    [v4 setObject:v8 forKey:@"numUniqueIncomingInteractionSenders"];
  }

  activityState = self->_activityState;
  if (activityState)
  {
    [v4 setObject:activityState forKey:@"activityState"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    numUniqueOutgoingInteractionRecipients = self->_numUniqueOutgoingInteractionRecipients;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    numUniqueIncomingInteractionSenders = self->_numUniqueIncomingInteractionSenders;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_activityState)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 7) = self->_numUniqueOutgoingInteractionRecipients;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 6) = self->_numUniqueIncomingInteractionSenders;
    *(toCopy + 32) |= 1u;
  }

  if (self->_activityState)
  {
    [v6 setActivityState:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 28) = self->_numUniqueOutgoingInteractionRecipients;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_numUniqueIncomingInteractionSenders;
    *(v5 + 32) |= 1u;
  }

  v9 = [(NSString *)self->_activityState copyWithZone:zone];
  v10 = *(v5 + 8);
  *(v5 + 8) = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_numUniqueOutgoingInteractionRecipients != *(equalCopy + 7))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_numUniqueIncomingInteractionSenders != *(equalCopy + 6))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_16;
  }

  activityState = self->_activityState;
  if (activityState | *(equalCopy + 1))
  {
    v8 = [(NSString *)activityState isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_numUniqueOutgoingInteractionRecipients;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_activityState hash];
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_numUniqueIncomingInteractionSenders;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_activityState hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ATXPBContactModeEntityMetrics *)self setBundleId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_numUniqueOutgoingInteractionRecipients = fromCopy[7];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_numUniqueIncomingInteractionSenders = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(ATXPBContactModeEntityMetrics *)self setActivityState:?];
    fromCopy = v6;
  }
}

@end