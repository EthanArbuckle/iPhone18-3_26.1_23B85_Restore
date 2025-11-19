@interface AWDBarcodeSupportCodeDetectedEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAppLinkPreferredOpenStrategy:(id)a3;
- (int)StringAsBarcodeDataType:(id)a3;
- (int)StringAsBarcodeSourceType:(id)a3;
- (int)StringAsBarcodeURLType:(id)a3;
- (int)StringAsClientType:(id)a3;
- (int)StringAsInvalidBarcodeDataType:(id)a3;
- (int)appLinkPreferredOpenStrategy;
- (int)barcodeDataType;
- (int)barcodeSourceType;
- (int)barcodeURLType;
- (int)clientType;
- (int)invalidBarcodeDataType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAppLinkPreferredOpenStrategy:(BOOL)a3;
- (void)setHasBarcodeDataType:(BOOL)a3;
- (void)setHasBarcodeSourceType:(BOOL)a3;
- (void)setHasBarcodeURLType:(BOOL)a3;
- (void)setHasClientType:(BOOL)a3;
- (void)setHasInvalidBarcodeDataType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDBarcodeSupportCodeDetectedEvent

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasClientType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)StringAsClientType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BARCODECLIENTTYPE_OTHER"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BARCODECLIENTTYPE_NOTIFICATION_SERVICE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"BARCODECLIENTTYPE_SAFARI"])
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

- (void)setHasBarcodeDataType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsBarcodeDataType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BARCODEDATATYPE_INVALID"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_URL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_CONTACT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_EMAIL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_TELEPHONE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_MESSAGE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_LOCATION"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_EVENT"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_WIFI"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_HOMEKIT_URL"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_STRING"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BARCODEDATATYPE_OTHER"])
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

- (void)setHasInvalidBarcodeDataType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)StringAsInvalidBarcodeDataType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_OTHER"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_URL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_CONTACT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_EMAIL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_TELEPHONE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_MESSAGE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_LOCATION"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_EVENT"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_WIFI"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"INVALIDBARCODEDATATYPE_HOMEKIT_URL"])
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

- (void)setHasBarcodeURLType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsBarcodeURLType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BARCODEURLTYPE_NON_APPLINK"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BARCODEURLTYPE_SINGLE_APPLINK"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"BARCODEURLTYPE_MULTIPLE_APPLINKS"])
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

- (void)setHasAppLinkPreferredOpenStrategy:(BOOL)a3
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

- (int)StringAsAppLinkPreferredOpenStrategy:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BARCODEAPPLINKOPENSTRATEGY_OPEN_IN_SAFARI"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BARCODEAPPLINKOPENSTRATEGY_OPEN_IN_APP"];
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

- (void)setHasBarcodeSourceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsBarcodeSourceType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"BARCODESOURCETYPE_QR"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"BARCODESOURCETYPE_OTHER"])
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
  v5 = [(AWDBarcodeSupportCodeDetectedEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

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

  [v3 setObject:v7 forKey:@"clientType"];

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

  [v3 setObject:v9 forKey:@"barcodeDataType"];

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
  [v3 setObject:v10 forKey:@"detection_time_ms"];

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

  [v3 setObject:v12 forKey:@"invalidBarcodeDataType"];

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

    [v3 setObject:v16 forKey:@"appLinkPreferredOpenStrategy"];

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

  [v3 setObject:v14 forKey:@"barcodeURLType"];

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

    [v3 setObject:v18 forKey:@"barcodeSourceType"];
  }

LABEL_40:

  return v3;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 48) |= 2u;
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

  *(v4 + 10) = self->_clientType;
  *(v4 + 48) |= 0x40u;
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
  *(v4 + 7) = self->_barcodeDataType;
  *(v4 + 48) |= 8u;
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
  v4[1] = self->_detectionTimeMs;
  *(v4 + 48) |= 1u;
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
  *(v4 + 11) = self->_invalidBarcodeDataType;
  *(v4 + 48) |= 0x80u;
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
  *(v4 + 9) = self->_barcodeURLType;
  *(v4 + 48) |= 0x20u;
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
  *(v4 + 6) = self->_appLinkPreferredOpenStrategy;
  *(v4 + 48) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    *(v4 + 8) = self->_barcodeSourceType;
    *(v4 + 48) |= 0x10u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 48) & 0x40) == 0 || self->_clientType != *(v4 + 10))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 48) & 0x40) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_barcodeDataType != *(v4 + 7))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_detectionTimeMs != *(v4 + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(v4 + 48) & 0x80) == 0 || self->_invalidBarcodeDataType != *(v4 + 11))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 48) & 0x80) != 0)
  {
LABEL_41:
    v5 = 0;
    goto LABEL_42;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 48) & 0x20) == 0 || self->_barcodeURLType != *(v4 + 9))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 48) & 0x20) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_appLinkPreferredOpenStrategy != *(v4 + 6))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_41;
  }

  v5 = (*(v4 + 48) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_barcodeSourceType != *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 48);
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

  else if ((*(v4 + 48) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_clientType = *(v4 + 10);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 48);
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
  self->_barcodeDataType = *(v4 + 7);
  *&self->_has |= 8u;
  v5 = *(v4 + 48);
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
  self->_detectionTimeMs = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 48);
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
  self->_invalidBarcodeDataType = *(v4 + 11);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 48);
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
  self->_barcodeURLType = *(v4 + 9);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 48);
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
  self->_appLinkPreferredOpenStrategy = *(v4 + 6);
  *&self->_has |= 4u;
  if ((*(v4 + 48) & 0x10) != 0)
  {
LABEL_9:
    self->_barcodeSourceType = *(v4 + 8);
    *&self->_has |= 0x10u;
  }

LABEL_10:
}

@end