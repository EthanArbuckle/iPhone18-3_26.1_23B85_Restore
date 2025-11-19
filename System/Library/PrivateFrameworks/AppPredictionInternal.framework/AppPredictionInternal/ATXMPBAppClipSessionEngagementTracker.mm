@interface ATXMPBAppClipSessionEngagementTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInteractionType:(id)a3;
- (int)interactionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBAppClipSessionEngagementTracker

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

- (int)StringAsInteractionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Shown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Engaged"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Rejected"])
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
  v8.super_class = ATXMPBAppClipSessionEngagementTracker;
  v4 = [(ATXMPBAppClipSessionEngagementTracker *)&v8 description];
  v5 = [(ATXMPBAppClipSessionEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    interactionType = self->_interactionType;
    if (interactionType >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_interactionType];
    }

    else
    {
      v5 = off_27859F798[interactionType];
    }

    [v3 setObject:v5 forKey:@"interactionType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  urlHash = self->_urlHash;
  if (urlHash)
  {
    [v3 setObject:urlHash forKey:@"urlHash"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    interactionType = self->_interactionType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_urlHash)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_interactionType;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_consumerSubType)
  {
    [v4 setConsumerSubType:?];
    v4 = v5;
  }

  if (self->_bundleId)
  {
    [v5 setBundleId:?];
    v4 = v5;
  }

  if (self->_urlHash)
  {
    [v5 setUrlHash:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_interactionType;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_bundleId copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_urlHash copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_interactionType != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 2) && ![(NSString *)consumerSubType isEqual:?])
  {
    goto LABEL_13;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 1))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  urlHash = self->_urlHash;
  if (urlHash | *(v4 + 4))
  {
    v9 = [(NSString *)urlHash isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
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

  v4 = [(NSString *)self->_consumerSubType hash]^ v3;
  v5 = [(NSString *)self->_bundleId hash];
  return v4 ^ v5 ^ [(NSString *)self->_urlHash hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[10])
  {
    self->_interactionType = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(ATXMPBAppClipSessionEngagementTracker *)self setConsumerSubType:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBAppClipSessionEngagementTracker *)self setBundleId:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(ATXMPBAppClipSessionEngagementTracker *)self setUrlHash:?];
    v4 = v5;
  }
}

@end