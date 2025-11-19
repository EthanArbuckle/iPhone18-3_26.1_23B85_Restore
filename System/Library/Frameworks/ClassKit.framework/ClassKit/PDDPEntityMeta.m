@interface PDDPEntityMeta
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSource:(id)a3;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsAdhocOriginated:(BOOL)a3;
- (void)setHasIsEditable:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEntityMeta

- (int)source
{
  if (*&self->_has)
  {
    return self->_source;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_SOURCE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SIS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SFTP"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MANUAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCIM"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsEditable:(BOOL)a3
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

- (void)setHasIsAdhocOriginated:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = PDDPEntityMeta;
  v3 = [(PDDPEntityMeta *)&v7 description];
  v4 = [(PDDPEntityMeta *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    source = self->_source;
    if (source >= 5)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_source];
    }

    else
    {
      v6 = *(&off_100204490 + source);
    }

    [v3 setObject:v6 forKey:@"source"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_isEditable];
    [v3 setObject:v7 forKey:@"is_editable"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_isAdhocOriginated];
    [v3 setObject:v8 forKey:@"is_adhoc_originated"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  isEditable = self->_isEditable;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    isAdhocOriginated = self->_isAdhocOriginated;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_source;
    *(v4 + 16) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 13) = self->_isEditable;
  *(v4 + 16) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v4 + 12) = self->_isAdhocOriginated;
    *(v4 + 16) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_source;
    *(result + 16) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 13) = self->_isEditable;
  *(result + 16) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 12) = self->_isAdhocOriginated;
  *(result + 16) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_source != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 16) & 4) == 0)
    {
      goto LABEL_15;
    }

    v7 = *(v4 + 13);
    if (self->_isEditable)
    {
      if ((*(v4 + 13) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(v4 + 13))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 16) & 4) != 0)
  {
    goto LABEL_15;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) != 0)
    {
      if (self->_isAdhocOriginated)
      {
        if (*(v4 + 12))
        {
          goto LABEL_23;
        }
      }

      else if (!*(v4 + 12))
      {
LABEL_23:
        v5 = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v5 = 0;
  }

LABEL_16:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_source;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isEditable;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_isAdhocOriginated;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_source = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 16) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_isEditable = *(v4 + 13);
  *&self->_has |= 4u;
  if ((*(v4 + 16) & 2) != 0)
  {
LABEL_4:
    self->_isAdhocOriginated = *(v4 + 12);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end