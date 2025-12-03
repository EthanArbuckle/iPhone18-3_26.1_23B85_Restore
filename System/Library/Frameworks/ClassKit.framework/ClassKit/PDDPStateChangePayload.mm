@interface PDDPStateChangePayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDomain:(BOOL)domain;
- (void)setHasDomainVersion:(BOOL)version;
- (void)setHasState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation PDDPStateChangePayload

- (void)setHasDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDomainVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addInfo:(id)info
{
  infoCopy = info;
  infos = self->_infos;
  v8 = infoCopy;
  if (!infos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_infos;
    self->_infos = v6;

    infoCopy = v8;
    infos = self->_infos;
  }

  [(NSMutableArray *)infos addObject:infoCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangePayload;
  v3 = [(PDDPStateChangePayload *)&v7 description];
  dictionaryRepresentation = [(PDDPStateChangePayload *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  participants = self->_participants;
  if (participants)
  {
    dictionaryRepresentation = [(PDDPStateChangeParticipants *)participants dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"participants"];
  }

  meta = self->_meta;
  if (meta)
  {
    dictionaryRepresentation2 = [(PDDPStateChangeMeta *)meta dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"meta"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v21 = [NSNumber numberWithInt:self->_domain];
    [v3 setObject:v21 forKey:@"domain"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v22 = [NSNumber numberWithInt:self->_domainVersion];
  [v3 setObject:v22 forKey:@"domain_version"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_30:
  v23 = [NSNumber numberWithInt:self->_state];
  [v3 setObject:v23 forKey:@"state"];

  if (*&self->_has)
  {
LABEL_9:
    v9 = [NSNumber numberWithUnsignedLongLong:self->_flags];
    [v3 setObject:v9 forKey:@"flags"];
  }

LABEL_10:
  note = self->_note;
  if (note)
  {
    [v3 setObject:note forKey:@"note"];
  }

  assetUrl = self->_assetUrl;
  if (assetUrl)
  {
    [v3 setObject:assetUrl forKey:@"asset_url"];
  }

  if ([(NSMutableArray *)self->_infos count])
  {
    v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_infos, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = self->_infos;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation3];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"info"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_participants)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_meta)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  domainVersion = self->_domainVersion;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_26:
  state = self->_state;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_9:
    flags = self->_flags;
    PBDataWriterWriteUint64Field();
  }

LABEL_10:
  if (self->_note)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetUrl)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_infos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_participants)
  {
    [toCopy setParticipants:?];
    toCopy = v10;
  }

  if (self->_meta)
  {
    [v10 setMeta:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_domain;
    *(toCopy + 76) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 7) = self->_domainVersion;
  *(toCopy + 76) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_25:
  *(toCopy + 18) = self->_state;
  *(toCopy + 76) |= 8u;
  if (*&self->_has)
  {
LABEL_9:
    *(toCopy + 1) = self->_flags;
    *(toCopy + 76) |= 1u;
  }

LABEL_10:
  if (self->_note)
  {
    [v10 setNote:?];
  }

  if (self->_assetUrl)
  {
    [v10 setAssetUrl:?];
  }

  if ([(PDDPStateChangePayload *)self infosCount])
  {
    [v10 clearInfos];
    infosCount = [(PDDPStateChangePayload *)self infosCount];
    if (infosCount)
    {
      v7 = infosCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPStateChangePayload *)self infoAtIndex:i];
        [v10 addInfo:v9];
      }
    }
  }

  if (self->_objectId)
  {
    [v10 setObjectId:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPStateChangeParticipants *)self->_participants copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(PDDPStateChangeMeta *)self->_meta copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 6) = self->_domain;
    *(v5 + 76) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 7) = self->_domainVersion;
  *(v5 + 76) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  *(v5 + 18) = self->_state;
  *(v5 + 76) |= 8u;
  if (*&self->_has)
  {
LABEL_5:
    v5[1] = self->_flags;
    *(v5 + 76) |= 1u;
  }

LABEL_6:
  v11 = [(NSString *)self->_note copyWithZone:zone];
  v12 = v5[6];
  v5[6] = v11;

  v13 = [(NSString *)self->_assetUrl copyWithZone:zone];
  v14 = v5[2];
  v5[2] = v13;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = self->_infos;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) copyWithZone:{zone, v24}];
        [v5 addInfo:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v21 = [(NSString *)self->_objectId copyWithZone:zone];
  v22 = v5[7];
  v5[7] = v21;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  participants = self->_participants;
  if (participants | *(equalCopy + 8))
  {
    if (![(PDDPStateChangeParticipants *)participants isEqual:?])
    {
      goto LABEL_34;
    }
  }

  meta = self->_meta;
  if (meta | *(equalCopy + 5))
  {
    if (![(PDDPStateChangeMeta *)meta isEqual:?])
    {
      goto LABEL_34;
    }
  }

  v7 = *(equalCopy + 76);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_domain != *(equalCopy + 6))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
LABEL_34:
    v12 = 0;
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_domainVersion != *(equalCopy + 7))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 76) & 8) == 0 || self->_state != *(equalCopy + 18))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 76) & 8) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_flags != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_34;
  }

  note = self->_note;
  if (note | *(equalCopy + 6) && ![(NSString *)note isEqual:?])
  {
    goto LABEL_34;
  }

  assetUrl = self->_assetUrl;
  if (assetUrl | *(equalCopy + 2))
  {
    if (![(NSString *)assetUrl isEqual:?])
    {
      goto LABEL_34;
    }
  }

  infos = self->_infos;
  if (infos | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)infos isEqual:?])
    {
      goto LABEL_34;
    }
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 7))
  {
    v12 = [(NSString *)objectId isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_35:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(PDDPStateChangeParticipants *)self->_participants hash];
  v4 = [(PDDPStateChangeMeta *)self->_meta hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_domain;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_domainVersion;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = 2654435761 * self->_state;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = 2654435761u * self->_flags;
LABEL_10:
  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_note hash];
  v10 = [(NSString *)self->_assetUrl hash];
  v11 = v10 ^ [(NSMutableArray *)self->_infos hash];
  return v9 ^ v11 ^ [(NSString *)self->_objectId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  participants = self->_participants;
  v6 = *(fromCopy + 8);
  if (participants)
  {
    if (v6)
    {
      [(PDDPStateChangeParticipants *)participants mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPStateChangePayload *)self setParticipants:?];
  }

  meta = self->_meta;
  v8 = *(fromCopy + 5);
  if (meta)
  {
    if (v8)
    {
      [(PDDPStateChangeMeta *)meta mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPStateChangePayload *)self setMeta:?];
  }

  v9 = *(fromCopy + 76);
  if ((v9 & 2) != 0)
  {
    self->_domain = *(fromCopy + 6);
    *&self->_has |= 2u;
    v9 = *(fromCopy + 76);
    if ((v9 & 4) == 0)
    {
LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }
  }

  else if ((*(fromCopy + 76) & 4) == 0)
  {
    goto LABEL_13;
  }

  self->_domainVersion = *(fromCopy + 7);
  *&self->_has |= 4u;
  v9 = *(fromCopy + 76);
  if ((v9 & 8) == 0)
  {
LABEL_14:
    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_32:
  self->_state = *(fromCopy + 18);
  *&self->_has |= 8u;
  if (*(fromCopy + 76))
  {
LABEL_15:
    self->_flags = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_16:
  if (*(fromCopy + 6))
  {
    [(PDDPStateChangePayload *)self setNote:?];
  }

  if (*(fromCopy + 2))
  {
    [(PDDPStateChangePayload *)self setAssetUrl:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 4);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PDDPStateChangePayload *)self addInfo:*(*(&v15 + 1) + 8 * i), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 7))
  {
    [(PDDPStateChangePayload *)self setObjectId:?];
  }
}

@end