@interface PDDPServerAlert
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOtherButtonInfos:(id)infos;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDisplayType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PDDPServerAlert

- (void)setHasDisplayType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addOtherButtonInfos:(id)infos
{
  infosCopy = infos;
  otherButtonInfos = self->_otherButtonInfos;
  v8 = infosCopy;
  if (!otherButtonInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_otherButtonInfos;
    self->_otherButtonInfos = v6;

    infosCopy = v8;
    otherButtonInfos = self->_otherButtonInfos;
  }

  [(NSMutableArray *)otherButtonInfos addObject:infosCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPServerAlert;
  v3 = [(PDDPServerAlert *)&v7 description];
  dictionaryRepresentation = [(PDDPServerAlert *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  alertId = self->_alertId;
  if (alertId)
  {
    [v3 setObject:alertId forKey:@"alert_id"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_displayType];
    [v4 setObject:v7 forKey:@"display_type"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithInt:self->_displayRoles];
    [v4 setObject:v8 forKey:@"display_roles"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  dateExpires = self->_dateExpires;
  if (dateExpires)
  {
    dictionaryRepresentation3 = [(PDDPDate *)dateExpires dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"date_expires"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  message = self->_message;
  if (message)
  {
    [v4 setObject:message forKey:@"message"];
  }

  defaultButtonInfo = self->_defaultButtonInfo;
  if (defaultButtonInfo)
  {
    dictionaryRepresentation4 = [(PDDPButtonInfo *)defaultButtonInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"default_button_info"];
  }

  if ([(NSMutableArray *)self->_otherButtonInfos count])
  {
    v19 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_otherButtonInfos, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = self->_otherButtonInfos;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation5 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation5];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v22);
    }

    [v4 setObject:v19 forKey:@"other_button_infos"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_alertId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    displayType = self->_displayType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    displayRoles = self->_displayRoles;
    PBDataWriterWriteInt32Field();
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateExpires)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_message)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_defaultButtonInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_otherButtonInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_alertId)
  {
    [toCopy setAlertId:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 13) = self->_displayType;
    *(toCopy + 80) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 12) = self->_displayRoles;
    *(toCopy + 80) |= 1u;
  }

  if (self->_dateCreated)
  {
    [v10 setDateCreated:?];
  }

  if (self->_dateLastModified)
  {
    [v10 setDateLastModified:?];
  }

  if (self->_dateExpires)
  {
    [v10 setDateExpires:?];
  }

  if (self->_title)
  {
    [v10 setTitle:?];
  }

  if (self->_message)
  {
    [v10 setMessage:?];
  }

  if (self->_defaultButtonInfo)
  {
    [v10 setDefaultButtonInfo:?];
  }

  if ([(PDDPServerAlert *)self otherButtonInfosCount])
  {
    [v10 clearOtherButtonInfos];
    otherButtonInfosCount = [(PDDPServerAlert *)self otherButtonInfosCount];
    if (otherButtonInfosCount)
    {
      v7 = otherButtonInfosCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPServerAlert *)self otherButtonInfosAtIndex:i];
        [v10 addOtherButtonInfos:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_alertId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 13) = self->_displayType;
    *(v5 + 80) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 12) = self->_displayRoles;
    *(v5 + 80) |= 1u;
  }

  v9 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v10 = v5[2];
  v5[2] = v9;

  v11 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v12 = v5[4];
  v5[4] = v11;

  v13 = [(PDDPDate *)self->_dateExpires copyWithZone:zone];
  v14 = v5[3];
  v5[3] = v13;

  v15 = [(NSString *)self->_title copyWithZone:zone];
  v16 = v5[9];
  v5[9] = v15;

  v17 = [(NSString *)self->_message copyWithZone:zone];
  v18 = v5[7];
  v5[7] = v17;

  v19 = [(PDDPButtonInfo *)self->_defaultButtonInfo copyWithZone:zone];
  v20 = v5[5];
  v5[5] = v19;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self->_otherButtonInfos;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v28 + 1) + 8 * i) copyWithZone:{zone, v28}];
        [v5 addOtherButtonInfos:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v23);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  alertId = self->_alertId;
  if (alertId | *(equalCopy + 1))
  {
    if (![(NSString *)alertId isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v6 = *(equalCopy + 80);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_displayType != *(equalCopy + 13))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_displayRoles != *(equalCopy + 12))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_28;
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 2) && ![(PDDPDate *)dateCreated isEqual:?])
  {
    goto LABEL_28;
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 4))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_28;
    }
  }

  dateExpires = self->_dateExpires;
  if (dateExpires | *(equalCopy + 3))
  {
    if (![(PDDPDate *)dateExpires isEqual:?])
    {
      goto LABEL_28;
    }
  }

  title = self->_title;
  if (title | *(equalCopy + 9))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_28;
    }
  }

  message = self->_message;
  if (message | *(equalCopy + 7))
  {
    if (![(NSString *)message isEqual:?])
    {
      goto LABEL_28;
    }
  }

  defaultButtonInfo = self->_defaultButtonInfo;
  if (defaultButtonInfo | *(equalCopy + 5))
  {
    if (![(PDDPButtonInfo *)defaultButtonInfo isEqual:?])
    {
      goto LABEL_28;
    }
  }

  otherButtonInfos = self->_otherButtonInfos;
  if (otherButtonInfos | *(equalCopy + 8))
  {
    v14 = [(NSMutableArray *)otherButtonInfos isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_29:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_alertId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_displayType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_displayRoles;
LABEL_6:
  v6 = v4 ^ v3 ^ v5 ^ [(PDDPDate *)self->_dateCreated hash];
  v7 = [(PDDPDate *)self->_dateLastModified hash];
  v8 = v7 ^ [(PDDPDate *)self->_dateExpires hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_title hash];
  v10 = [(NSString *)self->_message hash];
  v11 = v10 ^ [(PDDPButtonInfo *)self->_defaultButtonInfo hash];
  return v9 ^ v11 ^ [(NSMutableArray *)self->_otherButtonInfos hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(PDDPServerAlert *)self setAlertId:?];
  }

  v5 = *(fromCopy + 80);
  if ((v5 & 2) != 0)
  {
    self->_displayType = *(fromCopy + 13);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 80);
  }

  if (v5)
  {
    self->_displayRoles = *(fromCopy + 12);
    *&self->_has |= 1u;
  }

  dateCreated = self->_dateCreated;
  v7 = *(fromCopy + 2);
  if (dateCreated)
  {
    if (v7)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPServerAlert *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v9 = *(fromCopy + 4);
  if (dateLastModified)
  {
    if (v9)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPServerAlert *)self setDateLastModified:?];
  }

  dateExpires = self->_dateExpires;
  v11 = *(fromCopy + 3);
  if (dateExpires)
  {
    if (v11)
    {
      [(PDDPDate *)dateExpires mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PDDPServerAlert *)self setDateExpires:?];
  }

  if (*(fromCopy + 9))
  {
    [(PDDPServerAlert *)self setTitle:?];
  }

  if (*(fromCopy + 7))
  {
    [(PDDPServerAlert *)self setMessage:?];
  }

  defaultButtonInfo = self->_defaultButtonInfo;
  v13 = *(fromCopy + 5);
  if (defaultButtonInfo)
  {
    if (v13)
    {
      [(PDDPButtonInfo *)defaultButtonInfo mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(PDDPServerAlert *)self setDefaultButtonInfo:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = *(fromCopy + 8);
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(PDDPServerAlert *)self addOtherButtonInfos:*(*(&v19 + 1) + 8 * i), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

@end