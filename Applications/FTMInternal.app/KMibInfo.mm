@interface KMibInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCellBarred:(BOOL)barred;
- (void)setHasIntraFreqReselectionAllowed:(BOOL)allowed;
- (void)setHasSsbSubCarrierOffset:(BOOL)offset;
- (void)setHasSubCarrierSpacing:(BOOL)spacing;
- (void)writeTo:(id)to;
@end

@implementation KMibInfo

- (void)setHasSubCarrierSpacing:(BOOL)spacing
{
  if (spacing)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSsbSubCarrierOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasCellBarred:(BOOL)barred
{
  if (barred)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIntraFreqReselectionAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KMibInfo;
  v3 = [(KMibInfo *)&v7 description];
  dictionaryRepresentation = [(KMibInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_subCarrierSpacing];
    [v3 setObject:v7 forKey:@"sub_carrier_spacing"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_ssbSubCarrierOffset];
  [v3 setObject:v8 forKey:@"ssb_sub_carrier_offset"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [NSNumber numberWithUnsignedInt:self->_dmrsTypeAPosition];
  [v3 setObject:v9 forKey:@"dmrs_type_a_position"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [NSNumber numberWithBool:self->_cellBarred];
  [v3 setObject:v10 forKey:@"cell_barred"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithBool:self->_intraFreqReselectionAllowed];
    [v3 setObject:v5 forKey:@"intra_freq_reselection_allowed"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    subCarrierSpacing = self->_subCarrierSpacing;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  ssbSubCarrierOffset = self->_ssbSubCarrierOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  dmrsTypeAPosition = self->_dmrsTypeAPosition;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  cellBarred = self->_cellBarred;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    intraFreqReselectionAllowed = self->_intraFreqReselectionAllowed;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[4] = self->_subCarrierSpacing;
    *(toCopy + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_ssbSubCarrierOffset;
  *(toCopy + 24) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  toCopy[2] = self->_dmrsTypeAPosition;
  *(toCopy + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(toCopy + 20) = self->_cellBarred;
  *(toCopy + 24) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(toCopy + 21) = self->_intraFreqReselectionAllowed;
    *(toCopy + 24) |= 0x10u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_subCarrierSpacing;
    *(result + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_ssbSubCarrierOffset;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 2) = self->_dmrsTypeAPosition;
  *(result + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 20) = self->_cellBarred;
  *(result + 24) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 21) = self->_intraFreqReselectionAllowed;
  *(result + 24) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_subCarrierSpacing != *(equalCopy + 4))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_ssbSubCarrierOffset != *(equalCopy + 3))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_dmrsTypeAPosition != *(equalCopy + 2))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0)
    {
      goto LABEL_25;
    }

    v7 = *(equalCopy + 20);
    if (self->_cellBarred)
    {
      if ((*(equalCopy + 20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(equalCopy + 20))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 24) & 8) != 0)
  {
    goto LABEL_25;
  }

  v5 = (*(equalCopy + 24) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 24) & 0x10) != 0)
    {
      if (self->_intraFreqReselectionAllowed)
      {
        if (*(equalCopy + 21))
        {
          goto LABEL_33;
        }
      }

      else if (!*(equalCopy + 21))
      {
LABEL_33:
        v5 = 1;
        goto LABEL_26;
      }
    }

LABEL_25:
    v5 = 0;
  }

LABEL_26:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761 * self->_subCarrierSpacing;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_ssbSubCarrierOffset;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v4 = 2654435761 * self->_dmrsTypeAPosition;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_cellBarred;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_intraFreqReselectionAllowed;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 4) != 0)
  {
    self->_subCarrierSpacing = *(fromCopy + 4);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_ssbSubCarrierOffset = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 24);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_dmrsTypeAPosition = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_cellBarred = *(fromCopy + 20);
  *&self->_has |= 8u;
  if ((*(fromCopy + 24) & 0x10) != 0)
  {
LABEL_6:
    self->_intraFreqReselectionAllowed = *(fromCopy + 21);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

@end