@interface ADSegmentUpdateRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAccountStates:(id)states;
- (int)StringAsAccountTypes:(id)types;
- (int)StringAsDeviceModes:(id)modes;
- (int)accountStateAtIndex:(unint64_t)index;
- (int)accountTypeAtIndex:(unint64_t)index;
- (int)deviceModeAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAdvertisingIdentifierMonthResetCount:(BOOL)count;
- (void)setHasIsFirstPartyIdentifier:(BOOL)identifier;
- (void)setHasTimezone:(BOOL)timezone;
- (void)setHasUpdateSentTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation ADSegmentUpdateRequest

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = ADSegmentUpdateRequest;
  [(ADSegmentUpdateRequest *)&v3 dealloc];
}

+ (id)options
{
  if (options_once_6 != -1)
  {
    +[ADSegmentUpdateRequest options];
  }

  v3 = options_sOptions_6;

  return v3;
}

void __33__ADSegmentUpdateRequest_options__block_invoke()
{
  v0 = options_sOptions_6;
  options_sOptions_6 = &unk_285104D30;
}

- (void)setHasIsFirstPartyIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUpdateSentTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTimezone:(BOOL)timezone
{
  if (timezone)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAdvertisingIdentifierMonthResetCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)deviceModeAtIndex:(unint64_t)index
{
  p_deviceModes = &self->_deviceModes;
  count = self->_deviceModes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_deviceModes->list[index];
}

- (int)StringAsDeviceModes:(id)modes
{
  modesCopy = modes;
  if ([modesCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([modesCopy isEqualToString:@"EducationMode"])
  {
    v4 = 1;
  }

  else if ([modesCopy isEqualToString:@"GuestMode"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)accountTypeAtIndex:(unint64_t)index
{
  p_accountTypes = &self->_accountTypes;
  count = self->_accountTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_accountTypes->list[index];
}

- (int)StringAsAccountTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"NoAccount"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"Consumer"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"ManagedAccount"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"U13"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"T13"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"U18"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"Unknown_Age"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"SensitiveContentEligible"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)accountStateAtIndex:(unint64_t)index
{
  p_accountStates = &self->_accountStates;
  count = self->_accountStates.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_accountStates->list[index];
}

- (int)StringAsAccountStates:(id)states
{
  statesCopy = states;
  if ([statesCopy isEqualToString:@"No_iCloud"])
  {
    v4 = 0;
  }

  else if ([statesCopy isEqualToString:@"Same_iCloud"])
  {
    v4 = 1;
  }

  else if ([statesCopy isEqualToString:@"Diff_iCloud"])
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
  v8.super_class = ADSegmentUpdateRequest;
  v4 = [(ADSegmentUpdateRequest *)&v8 description];
  dictionaryRepresentation = [(ADSegmentUpdateRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = dictionary;
  iAdID = self->_iAdID;
  if (iAdID)
  {
    [dictionary setObject:iAdID forKey:@"iAdID"];
  }

  segmentInfo = self->_segmentInfo;
  if (segmentInfo)
  {
    [v5 setObject:segmentInfo forKey:@"segmentInfo"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFirstPartyIdentifier];
    [v5 setObject:v8 forKey:@"isFirstPartyIdentifier"];
  }

  advertisingIdentifier = self->_advertisingIdentifier;
  if (advertisingIdentifier)
  {
    [v5 setObject:advertisingIdentifier forKey:@"advertisingIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:self->_iTunesRefreshTime];
    [v5 setObject:v31 forKey:@"iTunesRefreshTime"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_49;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithDouble:self->_updateSentTime];
  [v5 setObject:v32 forKey:@"updateSentTime"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_49:
  *&v4 = self->_timezone;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v5 setObject:v33 forKey:@"timezone"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_advertisingIdentifierMonthResetCount];
    [v5 setObject:v11 forKey:@"advertisingIdentifierMonthResetCount"];
  }

LABEL_14:
  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild)
  {
    [v5 setObject:osVersionAndBuild forKey:@"osVersionAndBuild"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v5 setObject:localeIdentifier forKey:@"localeIdentifier"];
  }

  dPID = self->_dPID;
  if (dPID)
  {
    [v5 setObject:dPID forKey:@"DPID"];
  }

  p_deviceModes = &self->_deviceModes;
  if (self->_deviceModes.count)
  {
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_deviceModes.count)
    {
      v17 = 0;
      do
      {
        v18 = p_deviceModes->list[v17];
        if (v18 >= 3)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_deviceModes->list[v17]];
        }

        else
        {
          v19 = off_278C552B8[v18];
        }

        [v16 addObject:v19];

        ++v17;
      }

      while (v17 < self->_deviceModes.count);
    }

    [v5 setObject:v16 forKey:@"deviceMode"];
  }

  p_accountTypes = &self->_accountTypes;
  if (self->_accountTypes.count)
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_accountTypes.count)
    {
      v22 = 0;
      do
      {
        v23 = p_accountTypes->list[v22];
        if (v23 >= 8)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_accountTypes->list[v22]];
        }

        else
        {
          v24 = off_278C552D0[v23];
        }

        [v21 addObject:v24];

        ++v22;
      }

      while (v22 < self->_accountTypes.count);
    }

    [v5 setObject:v21 forKey:@"accountType"];
  }

  p_accountStates = &self->_accountStates;
  if (self->_accountStates.count)
  {
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (p_accountStates->count)
    {
      v27 = 0;
      do
      {
        v28 = p_accountStates->list[v27];
        if (v28 >= 3)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_accountStates->list[v27]];
        }

        else
        {
          v29 = off_278C55310[v28];
        }

        [v26 addObject:v29];

        ++v27;
      }

      while (v27 < p_accountStates->count);
    }

    [v5 setObject:v26 forKey:@"accountState"];
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
    toCopy = v18;
  }

  if (self->_segmentInfo)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    isFirstPartyIdentifier = self->_isFirstPartyIdentifier;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
  }

  if (self->_advertisingIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  has = self->_has;
  if (has)
  {
    iTunesRefreshTime = self->_iTunesRefreshTime;
    PBDataWriterWriteDoubleField();
    toCopy = v18;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  updateSentTime = self->_updateSentTime;
  PBDataWriterWriteDoubleField();
  toCopy = v18;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_34:
  timezone = self->_timezone;
  PBDataWriterWriteFloatField();
  toCopy = v18;
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    advertisingIdentifierMonthResetCount = self->_advertisingIdentifierMonthResetCount;
    PBDataWriterWriteInt32Field();
    toCopy = v18;
  }

LABEL_14:
  if (self->_osVersionAndBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
    toCopy = v18;
  }

  if (self->_deviceModes.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_deviceModes.list[v8];
      PBDataWriterWriteInt32Field();
      toCopy = v18;
      ++v8;
    }

    while (v8 < self->_deviceModes.count);
  }

  if (self->_accountTypes.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_accountTypes.list[v10];
      PBDataWriterWriteInt32Field();
      toCopy = v18;
      ++v10;
    }

    while (v10 < self->_accountTypes.count);
  }

  p_accountStates = &self->_accountStates;
  if (p_accountStates->count)
  {
    v13 = 0;
    do
    {
      v14 = p_accountStates->list[v13];
      PBDataWriterWriteInt32Field();
      toCopy = v18;
      ++v13;
    }

    while (v13 < p_accountStates->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v15 = toCopy;
  if (self->_iAdID)
  {
    [toCopy setIAdID:?];
    toCopy = v15;
  }

  if (self->_segmentInfo)
  {
    [v15 setSegmentInfo:?];
    toCopy = v15;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 156) = self->_isFirstPartyIdentifier;
    *(toCopy + 160) |= 0x10u;
  }

  if (self->_advertisingIdentifier)
  {
    [v15 setAdvertisingIdentifier:?];
    toCopy = v15;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 10) = *&self->_iTunesRefreshTime;
    *(toCopy + 160) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 11) = *&self->_updateSentTime;
  *(toCopy + 160) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  *(toCopy + 38) = LODWORD(self->_timezone);
  *(toCopy + 160) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    *(toCopy + 26) = self->_advertisingIdentifierMonthResetCount;
    *(toCopy + 160) |= 4u;
  }

LABEL_14:
  if (self->_osVersionAndBuild)
  {
    [v15 setOsVersionAndBuild:?];
  }

  if (self->_localeIdentifier)
  {
    [v15 setLocaleIdentifier:?];
  }

  if (self->_dPID)
  {
    [v15 setDPID:?];
  }

  if ([(ADSegmentUpdateRequest *)self deviceModesCount])
  {
    [v15 clearDeviceModes];
    deviceModesCount = [(ADSegmentUpdateRequest *)self deviceModesCount];
    if (deviceModesCount)
    {
      v7 = deviceModesCount;
      for (i = 0; i != v7; ++i)
      {
        [v15 addDeviceMode:{-[ADSegmentUpdateRequest deviceModeAtIndex:](self, "deviceModeAtIndex:", i)}];
      }
    }
  }

  if ([(ADSegmentUpdateRequest *)self accountTypesCount])
  {
    [v15 clearAccountTypes];
    accountTypesCount = [(ADSegmentUpdateRequest *)self accountTypesCount];
    if (accountTypesCount)
    {
      v10 = accountTypesCount;
      for (j = 0; j != v10; ++j)
      {
        [v15 addAccountType:{-[ADSegmentUpdateRequest accountTypeAtIndex:](self, "accountTypeAtIndex:", j)}];
      }
    }
  }

  if ([(ADSegmentUpdateRequest *)self accountStatesCount])
  {
    [v15 clearAccountStates];
    accountStatesCount = [(ADSegmentUpdateRequest *)self accountStatesCount];
    if (accountStatesCount)
    {
      v13 = accountStatesCount;
      for (k = 0; k != v13; ++k)
      {
        [v15 addAccountState:{-[ADSegmentUpdateRequest accountStateAtIndex:](self, "accountStateAtIndex:", k)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_iAdID copyWithZone:zone];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(NSString *)self->_segmentInfo copyWithZone:zone];
  v9 = *(v5 + 144);
  *(v5 + 144) = v8;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 156) = self->_isFirstPartyIdentifier;
    *(v5 + 160) |= 0x10u;
  }

  v10 = [(NSString *)self->_advertisingIdentifier copyWithZone:zone];
  v11 = *(v5 + 96);
  *(v5 + 96) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 80) = self->_iTunesRefreshTime;
    *(v5 + 160) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v5 + 152) = self->_timezone;
      *(v5 + 160) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 88) = self->_updateSentTime;
  *(v5 + 160) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(v5 + 104) = self->_advertisingIdentifierMonthResetCount;
    *(v5 + 160) |= 4u;
  }

LABEL_8:
  v13 = [(NSString *)self->_osVersionAndBuild copyWithZone:zone];
  v14 = *(v5 + 136);
  *(v5 + 136) = v13;

  v15 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v16 = *(v5 + 128);
  *(v5 + 128) = v15;

  v17 = [(NSData *)self->_dPID copyWithZone:zone];
  v18 = *(v5 + 112);
  *(v5 + 112) = v17;

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(equalCopy + 15))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_46;
    }
  }

  segmentInfo = self->_segmentInfo;
  if (segmentInfo | *(equalCopy + 18))
  {
    if (![(NSString *)segmentInfo isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 160);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 160) & 0x10) == 0)
    {
      goto LABEL_46;
    }

    v11 = *(equalCopy + 156);
    if (self->_isFirstPartyIdentifier)
    {
      if ((*(equalCopy + 156) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(equalCopy + 156))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 160) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  advertisingIdentifier = self->_advertisingIdentifier;
  if (!(advertisingIdentifier | *(equalCopy + 12)))
  {
    goto LABEL_11;
  }

  if (![(NSString *)advertisingIdentifier isEqual:?])
  {
LABEL_46:
    IsEqual = 0;
    goto LABEL_47;
  }

  has = self->_has;
LABEL_11:
  v10 = *(equalCopy + 160);
  if (has)
  {
    if ((*(equalCopy + 160) & 1) == 0 || self->_iTunesRefreshTime != *(equalCopy + 10))
    {
      goto LABEL_46;
    }
  }

  else if (*(equalCopy + 160))
  {
    goto LABEL_46;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 160) & 2) == 0 || self->_updateSentTime != *(equalCopy + 11))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 160) & 2) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 160) & 8) == 0 || self->_timezone != *(equalCopy + 38))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 160) & 8) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 160) & 4) == 0 || self->_advertisingIdentifierMonthResetCount != *(equalCopy + 26))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 160) & 4) != 0)
  {
    goto LABEL_46;
  }

  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild | *(equalCopy + 17) && ![(NSString *)osVersionAndBuild isEqual:?])
  {
    goto LABEL_46;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 16))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_46;
    }
  }

  dPID = self->_dPID;
  if (dPID | *(equalCopy + 14))
  {
    if (![(NSData *)dPID isEqual:?])
    {
      goto LABEL_46;
    }
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_46;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_47:

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_iAdID hash];
  v4 = [(NSString *)self->_segmentInfo hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_isFirstPartyIdentifier;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_advertisingIdentifier hash];
  if (*&self->_has)
  {
    iTunesRefreshTime = self->_iTunesRefreshTime;
    if (iTunesRefreshTime < 0.0)
    {
      iTunesRefreshTime = -iTunesRefreshTime;
    }

    *v7.i64 = floor(iTunesRefreshTime + 0.5);
    v11 = (iTunesRefreshTime - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v12), v8, v7);
    v9 = 2654435761u * *v7.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    updateSentTime = self->_updateSentTime;
    if (updateSentTime < 0.0)
    {
      updateSentTime = -updateSentTime;
    }

    *v7.i64 = floor(updateSentTime + 0.5);
    v15 = (updateSentTime - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v16), v8, v7);
    v13 = 2654435761u * *v7.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    timezone = self->_timezone;
    if (timezone < 0.0)
    {
      timezone = -timezone;
    }

    *v7.i32 = floorf(timezone + 0.5);
    v19 = (timezone - *v7.i32) * 1.8447e19;
    *v8.i32 = *v7.i32 - (truncf(*v7.i32 * 5.421e-20) * 1.8447e19);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v17 = 2654435761u * *vbslq_s8(v20, v8, v7).i32;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabsf(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v21 = 2654435761 * self->_advertisingIdentifierMonthResetCount;
  }

  else
  {
    v21 = 0;
  }

  v22 = v4 ^ v3 ^ v5 ^ v6;
  v23 = v9 ^ v13 ^ v17 ^ v21 ^ [(NSString *)self->_osVersionAndBuild hash];
  v24 = v22 ^ v23 ^ [(NSString *)self->_localeIdentifier hash];
  v25 = [(NSData *)self->_dPID hash];
  v26 = v25 ^ PBRepeatedInt32Hash();
  v27 = v26 ^ PBRepeatedInt32Hash();
  return v24 ^ v27 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v15 = fromCopy;
  if (*(fromCopy + 15))
  {
    [(ADSegmentUpdateRequest *)self setIAdID:?];
    fromCopy = v15;
  }

  if (*(fromCopy + 18))
  {
    [(ADSegmentUpdateRequest *)self setSegmentInfo:?];
    fromCopy = v15;
  }

  if ((*(fromCopy + 160) & 0x10) != 0)
  {
    self->_isFirstPartyIdentifier = *(fromCopy + 156);
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 12))
  {
    [(ADSegmentUpdateRequest *)self setAdvertisingIdentifier:?];
    fromCopy = v15;
  }

  v5 = *(fromCopy + 160);
  if (v5)
  {
    self->_iTunesRefreshTime = *(fromCopy + 10);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 160);
    if ((v5 & 2) == 0)
    {
LABEL_11:
      if ((v5 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }
  }

  else if ((*(fromCopy + 160) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_updateSentTime = *(fromCopy + 11);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 160);
  if ((v5 & 8) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_34:
  self->_timezone = *(fromCopy + 38);
  *&self->_has |= 8u;
  if ((*(fromCopy + 160) & 4) != 0)
  {
LABEL_13:
    self->_advertisingIdentifierMonthResetCount = *(fromCopy + 26);
    *&self->_has |= 4u;
  }

LABEL_14:
  if (*(fromCopy + 17))
  {
    [(ADSegmentUpdateRequest *)self setOsVersionAndBuild:?];
    fromCopy = v15;
  }

  if (*(fromCopy + 16))
  {
    [(ADSegmentUpdateRequest *)self setLocaleIdentifier:?];
    fromCopy = v15;
  }

  if (*(fromCopy + 14))
  {
    [(ADSegmentUpdateRequest *)self setDPID:?];
    fromCopy = v15;
  }

  deviceModesCount = [fromCopy deviceModesCount];
  if (deviceModesCount)
  {
    v7 = deviceModesCount;
    for (i = 0; i != v7; ++i)
    {
      -[ADSegmentUpdateRequest addDeviceMode:](self, "addDeviceMode:", [v15 deviceModeAtIndex:i]);
    }
  }

  accountTypesCount = [v15 accountTypesCount];
  if (accountTypesCount)
  {
    v10 = accountTypesCount;
    for (j = 0; j != v10; ++j)
    {
      -[ADSegmentUpdateRequest addAccountType:](self, "addAccountType:", [v15 accountTypeAtIndex:j]);
    }
  }

  accountStatesCount = [v15 accountStatesCount];
  if (accountStatesCount)
  {
    v13 = accountStatesCount;
    for (k = 0; k != v13; ++k)
    {
      -[ADSegmentUpdateRequest addAccountState:](self, "addAccountState:", [v15 accountStateAtIndex:k]);
    }
  }
}

@end