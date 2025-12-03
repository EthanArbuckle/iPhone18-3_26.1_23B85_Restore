@interface AWDBarcodeSupportCodeActivatedEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAppLinkActivationOpenStrategy:(id)strategy;
- (int)StringAsBarcodeDataType:(id)type;
- (int)StringAsBarcodeSourceType:(id)type;
- (int)StringAsBarcodeURLType:(id)type;
- (int)StringAsClientType:(id)type;
- (int)appLinkActivationOpenStrategy;
- (int)barcodeDataType;
- (int)barcodeSourceType;
- (int)barcodeURLType;
- (int)clientType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAppLinkActivationOpenStrategy:(BOOL)strategy;
- (void)setHasBarcodeDataType:(BOOL)type;
- (void)setHasBarcodeSourceType:(BOOL)type;
- (void)setHasBarcodeURLType:(BOOL)type;
- (void)setHasClientType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDBarcodeSupportCodeActivatedEvent

- (int)clientType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_clientType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasClientType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsClientType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"BARCODECLIENTTYPE_OTHER"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BARCODECLIENTTYPE_NOTIFICATION_SERVICE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BARCODECLIENTTYPE_SAFARI"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)barcodeDataType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_barcodeDataType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBarcodeDataType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsBarcodeDataType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"BARCODEDATATYPE_INVALID"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_URL"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_CONTACT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_EMAIL"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_TELEPHONE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_MESSAGE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_LOCATION"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_EVENT"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_WIFI"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_HOMEKIT_URL"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_STRING"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"BARCODEDATATYPE_OTHER"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)barcodeURLType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_barcodeURLType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBarcodeURLType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsBarcodeURLType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"BARCODEURLTYPE_NON_APPLINK"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BARCODEURLTYPE_SINGLE_APPLINK"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BARCODEURLTYPE_MULTIPLE_APPLINKS"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)appLinkActivationOpenStrategy
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_appLinkActivationOpenStrategy;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAppLinkActivationOpenStrategy:(BOOL)strategy
{
  if (strategy)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsAppLinkActivationOpenStrategy:(id)strategy
{
  strategyCopy = strategy;
  if ([strategyCopy isEqualToString:@"BARCODEAPPLINKOPENSTRATEGY_OPEN_IN_SAFARI"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [strategyCopy isEqualToString:@"BARCODEAPPLINKOPENSTRATEGY_OPEN_IN_APP"];
  }

  return v4;
}

- (int)barcodeSourceType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_barcodeSourceType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasBarcodeSourceType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsBarcodeSourceType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"BARCODESOURCETYPE_QR"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"BARCODESOURCETYPE_OTHER"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDBarcodeSupportCodeActivatedEvent;
  v4 = [(AWDBarcodeSupportCodeActivatedEvent *)&v8 description];
  dictionaryRepresentation = [(AWDBarcodeSupportCodeActivatedEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  clientType = self->_clientType;
  if (clientType >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_clientType];
  }

  else
  {
    v7 = off_278CFE558[clientType];
  }

  [dictionary setObject:v7 forKey:@"clientType"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_13:
  barcodeDataType = self->_barcodeDataType;
  if (barcodeDataType >= 0xC)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_barcodeDataType];
  }

  else
  {
    v9 = off_278CFE570[barcodeDataType];
  }

  [dictionary setObject:v9 forKey:@"barcodeDataType"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    appLinkActivationOpenStrategy = self->_appLinkActivationOpenStrategy;
    if (appLinkActivationOpenStrategy)
    {
      if (appLinkActivationOpenStrategy == 1)
      {
        v13 = @"BARCODEAPPLINKOPENSTRATEGY_OPEN_IN_APP";
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_appLinkActivationOpenStrategy];
      }
    }

    else
    {
      v13 = @"BARCODEAPPLINKOPENSTRATEGY_OPEN_IN_SAFARI";
    }

    [dictionary setObject:v13 forKey:@"appLinkActivationOpenStrategy"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

LABEL_17:
  barcodeURLType = self->_barcodeURLType;
  if (barcodeURLType >= 3)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_barcodeURLType];
  }

  else
  {
    v11 = off_278CFE5D0[barcodeURLType];
  }

  [dictionary setObject:v11 forKey:@"barcodeURLType"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_27:
    barcodeSourceType = self->_barcodeSourceType;
    if (barcodeSourceType == 1)
    {
      v15 = @"BARCODESOURCETYPE_QR";
    }

    else if (barcodeSourceType == 2)
    {
      v15 = @"BARCODESOURCETYPE_OTHER";
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_barcodeSourceType];
    }

    [dictionary setObject:v15 forKey:@"barcodeSourceType"];
  }

LABEL_33:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  clientType = self->_clientType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  barcodeDataType = self->_barcodeDataType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  barcodeURLType = self->_barcodeURLType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  appLinkActivationOpenStrategy = self->_appLinkActivationOpenStrategy;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    barcodeSourceType = self->_barcodeSourceType;
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 8) = self->_clientType;
  *(toCopy + 36) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(toCopy + 5) = self->_barcodeDataType;
  *(toCopy + 36) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 7) = self->_barcodeURLType;
  *(toCopy + 36) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(toCopy + 4) = self->_appLinkActivationOpenStrategy;
  *(toCopy + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 6) = self->_barcodeSourceType;
    *(toCopy + 36) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_clientType;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 5) = self->_barcodeDataType;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 7) = self->_barcodeURLType;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 4) = self->_appLinkActivationOpenStrategy;
  *(result + 36) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 6) = self->_barcodeSourceType;
  *(result + 36) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 36) & 0x20) == 0 || self->_clientType != *(equalCopy + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_barcodeDataType != *(equalCopy + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 36) & 0x10) == 0 || self->_barcodeURLType != *(equalCopy + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_appLinkActivationOpenStrategy != *(equalCopy + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(equalCopy + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_barcodeSourceType != *(equalCopy + 6))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_clientType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_barcodeDataType;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_barcodeURLType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_appLinkActivationOpenStrategy;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_barcodeSourceType;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 36) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_clientType = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_barcodeDataType = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_barcodeURLType = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_appLinkActivationOpenStrategy = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_7:
    self->_barcodeSourceType = *(fromCopy + 6);
    *&self->_has |= 8u;
  }

LABEL_8:
}

@end