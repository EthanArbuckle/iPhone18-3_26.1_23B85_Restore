@interface AWDBarcodeSupportCodeDetectedEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAppLinkPreferredOpenStrategy:(id)strategy;
- (int)StringAsBarcodeDataType:(id)type;
- (int)StringAsBarcodeSourceType:(id)type;
- (int)StringAsBarcodeURLType:(id)type;
- (int)StringAsClientType:(id)type;
- (int)StringAsInvalidBarcodeDataType:(id)type;
- (int)appLinkPreferredOpenStrategy;
- (int)barcodeDataType;
- (int)barcodeSourceType;
- (int)barcodeURLType;
- (int)clientType;
- (int)invalidBarcodeDataType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAppLinkPreferredOpenStrategy:(BOOL)strategy;
- (void)setHasBarcodeDataType:(BOOL)type;
- (void)setHasBarcodeSourceType:(BOOL)type;
- (void)setHasBarcodeURLType:(BOOL)type;
- (void)setHasClientType:(BOOL)type;
- (void)setHasInvalidBarcodeDataType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDBarcodeSupportCodeDetectedEvent

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)clientType
{
  if ((*&self->_has & 0x40) != 0)
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
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
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
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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

- (int)invalidBarcodeDataType
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    return self->_invalidBarcodeDataType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasInvalidBarcodeDataType:(BOOL)type
{
  if (type)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)StringAsInvalidBarcodeDataType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_OTHER"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_URL"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_CONTACT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_EMAIL"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_TELEPHONE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_MESSAGE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_LOCATION"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_EVENT"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_WIFI"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"INVALIDBARCODEDATATYPE_HOMEKIT_URL"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)barcodeURLType
{
  if ((*&self->_has & 0x20) != 0)
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
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
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

- (int)appLinkPreferredOpenStrategy
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_appLinkPreferredOpenStrategy;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAppLinkPreferredOpenStrategy:(BOOL)strategy
{
  if (strategy)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsAppLinkPreferredOpenStrategy:(id)strategy
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
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
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
  v8.super_class = AWDBarcodeSupportCodeDetectedEvent;
  v4 = [(AWDBarcodeSupportCodeDetectedEvent *)&v8 description];
  dictionaryRepresentation = [(AWDBarcodeSupportCodeDetectedEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
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
    v7 = off_278CFE678[clientType];
  }

  [dictionary setObject:v7 forKey:@"clientType"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  barcodeDataType = self->_barcodeDataType;
  if (barcodeDataType >= 0xC)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_barcodeDataType];
  }

  else
  {
    v9 = off_278CFE690[barcodeDataType];
  }

  [dictionary setObject:v9 forKey:@"barcodeDataType"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_detectionTimeMs];
  [dictionary setObject:v10 forKey:@"detection_time_ms"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_20:
  invalidBarcodeDataType = self->_invalidBarcodeDataType;
  if (invalidBarcodeDataType >= 0xA)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_invalidBarcodeDataType];
  }

  else
  {
    v12 = off_278CFE6F0[invalidBarcodeDataType];
  }

  [dictionary setObject:v12 forKey:@"invalidBarcodeDataType"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_28:
    appLinkPreferredOpenStrategy = self->_appLinkPreferredOpenStrategy;
    if (appLinkPreferredOpenStrategy)
    {
      if (appLinkPreferredOpenStrategy == 1)
      {
        v16 = @"BARCODEAPPLINKOPENSTRATEGY_OPEN_IN_APP";
      }

      else
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_appLinkPreferredOpenStrategy];
      }
    }

    else
    {
      v16 = @"BARCODEAPPLINKOPENSTRATEGY_OPEN_IN_SAFARI";
    }

    [dictionary setObject:v16 forKey:@"appLinkPreferredOpenStrategy"];

    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

LABEL_24:
  barcodeURLType = self->_barcodeURLType;
  if (barcodeURLType >= 3)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_barcodeURLType];
  }

  else
  {
    v14 = off_278CFE740[barcodeURLType];
  }

  [dictionary setObject:v14 forKey:@"barcodeURLType"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_28;
  }

LABEL_8:
  if ((has & 0x10) != 0)
  {
LABEL_34:
    barcodeSourceType = self->_barcodeSourceType;
    if (barcodeSourceType == 1)
    {
      v18 = @"BARCODESOURCETYPE_QR";
    }

    else if (barcodeSourceType == 2)
    {
      v18 = @"BARCODESOURCETYPE_OTHER";
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_barcodeSourceType];
    }

    [dictionary setObject:v18 forKey:@"barcodeSourceType"];
  }

LABEL_40:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  clientType = self->_clientType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  barcodeDataType = self->_barcodeDataType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  detectionTimeMs = self->_detectionTimeMs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  invalidBarcodeDataType = self->_invalidBarcodeDataType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  barcodeURLType = self->_barcodeURLType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  appLinkPreferredOpenStrategy = self->_appLinkPreferredOpenStrategy;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    barcodeSourceType = self->_barcodeSourceType;
    PBDataWriterWriteInt32Field();
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_timestamp;
    *(toCopy + 48) |= 2u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 10) = self->_clientType;
  *(toCopy + 48) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(toCopy + 7) = self->_barcodeDataType;
  *(toCopy + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[1] = self->_detectionTimeMs;
  *(toCopy + 48) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(toCopy + 11) = self->_invalidBarcodeDataType;
  *(toCopy + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 9) = self->_barcodeURLType;
  *(toCopy + 48) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(toCopy + 6) = self->_appLinkPreferredOpenStrategy;
  *(toCopy + 48) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    *(toCopy + 8) = self->_barcodeSourceType;
    *(toCopy + 48) |= 0x10u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 48) |= 2u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_clientType;
  *(result + 48) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 7) = self->_barcodeDataType;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 1) = self->_detectionTimeMs;
  *(result + 48) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 11) = self->_invalidBarcodeDataType;
  *(result + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 9) = self->_barcodeURLType;
  *(result + 48) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 6) = self->_appLinkPreferredOpenStrategy;
  *(result + 48) |= 4u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 8) = self->_barcodeSourceType;
  *(result + 48) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 48) & 0x40) == 0 || self->_clientType != *(equalCopy + 10))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 48) & 0x40) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_barcodeDataType != *(equalCopy + 7))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_detectionTimeMs != *(equalCopy + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equalCopy + 48) & 0x80) == 0 || self->_invalidBarcodeDataType != *(equalCopy + 11))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 48) & 0x80) != 0)
  {
LABEL_41:
    v5 = 0;
    goto LABEL_42;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 48) & 0x20) == 0 || self->_barcodeURLType != *(equalCopy + 9))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 48) & 0x20) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_appLinkPreferredOpenStrategy != *(equalCopy + 6))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_41;
  }

  v5 = (*(equalCopy + 48) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 48) & 0x10) == 0 || self->_barcodeSourceType != *(equalCopy + 8))
    {
      goto LABEL_41;
    }

    v5 = 1;
  }

LABEL_42:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_clientType;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_barcodeDataType;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if (*&self->_has)
  {
LABEL_5:
    v5 = 2654435761u * self->_detectionTimeMs;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_invalidBarcodeDataType;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_barcodeURLType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_appLinkPreferredOpenStrategy;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_barcodeSourceType;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 48);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 48) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_clientType = *(fromCopy + 10);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_barcodeDataType = *(fromCopy + 7);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 48);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_detectionTimeMs = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_invalidBarcodeDataType = *(fromCopy + 11);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_barcodeURLType = *(fromCopy + 9);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  self->_appLinkPreferredOpenStrategy = *(fromCopy + 6);
  *&self->_has |= 4u;
  if ((*(fromCopy + 48) & 0x10) != 0)
  {
LABEL_9:
    self->_barcodeSourceType = *(fromCopy + 8);
    *&self->_has |= 0x10u;
  }

LABEL_10:
}

@end