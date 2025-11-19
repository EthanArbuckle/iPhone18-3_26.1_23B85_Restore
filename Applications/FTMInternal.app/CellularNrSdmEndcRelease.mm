@interface CellularNrSdmEndcRelease
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTriggerCause:(id)a3;
- (int)triggerCause;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTriggerCause:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularNrSdmEndcRelease

- (int)triggerCause
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_triggerCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTriggerCause:(BOOL)a3
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

- (int)StringAsTriggerCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_AP_SLEEP"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_CELLULAR_DATA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_WIFI_POOR"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_VOIP_CALL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_COREMEDIA_STALL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SCREEN_STATUS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SYMPTOMS_RECOMM"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_UI_SWITCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_RLGS"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_PHS"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_MAX"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)a3
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
  v7.super_class = CellularNrSdmEndcRelease;
  v3 = [(CellularNrSdmEndcRelease *)&v7 description];
  v4 = [(CellularNrSdmEndcRelease *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

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

  triggerCause = self->_triggerCause;
  if (triggerCause >= 0xC)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_triggerCause];
  }

  else
  {
    v9 = *(&off_1003188E8 + triggerCause);
  }

  [v3 setObject:v9 forKey:@"trigger_cause"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v5 forKey:@"subs_id"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
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

  triggerCause = self->_triggerCause;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
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
    v4[1] = self->_timestamp;
    *(v4 + 24) |= 1u;
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

  *(v4 + 5) = self->_triggerCause;
  *(v4 + 24) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v4 + 4) = self->_subsId;
    *(v4 + 24) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
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

  *(result + 5) = self->_triggerCause;
  *(result + 24) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_subsId;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_triggerCause != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_subsId != *(v4 + 4))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

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

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_triggerCause;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
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

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_triggerCause = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 24) & 2) != 0)
  {
LABEL_4:
    self->_subsId = *(v4 + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end