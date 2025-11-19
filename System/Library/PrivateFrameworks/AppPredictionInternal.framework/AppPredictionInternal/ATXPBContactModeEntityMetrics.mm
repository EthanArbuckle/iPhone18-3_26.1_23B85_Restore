@interface ATXPBContactModeEntityMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumUniqueOutgoingInteractionRecipients:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBContactModeEntityMetrics

- (void)setHasNumUniqueOutgoingInteractionRecipients:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBContactModeEntityMetrics;
  v4 = [(ATXPBContactModeEntityMetrics *)&v8 description];
  v5 = [(ATXPBContactModeEntityMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    numUniqueOutgoingInteractionRecipients = self->_numUniqueOutgoingInteractionRecipients;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    numUniqueIncomingInteractionSenders = self->_numUniqueIncomingInteractionSenders;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_activityState)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 7) = self->_numUniqueOutgoingInteractionRecipients;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 6) = self->_numUniqueIncomingInteractionSenders;
    *(v4 + 32) |= 1u;
  }

  if (self->_activityState)
  {
    [v6 setActivityState:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
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

  v9 = [(NSString *)self->_activityState copyWithZone:a3];
  v10 = *(v5 + 8);
  *(v5 + 8) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_numUniqueOutgoingInteractionRecipients != *(v4 + 7))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_numUniqueIncomingInteractionSenders != *(v4 + 6))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_16;
  }

  activityState = self->_activityState;
  if (activityState | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(ATXPBContactModeEntityMetrics *)self setBundleId:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_numUniqueOutgoingInteractionRecipients = v4[7];
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_numUniqueIncomingInteractionSenders = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(ATXPBContactModeEntityMetrics *)self setActivityState:?];
    v4 = v6;
  }
}

@end