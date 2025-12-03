@interface CBWPDaemonAdvertisingData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
@end

@implementation CBWPDaemonAdvertisingData

- (id)descriptionWithLevel:(int)level
{
  advInstanceType = self->_advInstanceType;
  v5 = CUPrintFlags32();
  NSAppendPrintF_safe();
  v6 = 0;

  advInterval = self->_advInterval;
  NSAppendPrintF_safe();
  v8 = v6;

  mfgData = self->_mfgData;
  if (mfgData)
  {
    v10 = mfgData;
    v25 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v11 = v8;

    v8 = v11;
  }

  advDataPerType = self->_advDataPerType;
  if (advDataPerType)
  {
    v13 = advDataPerType;
    v26 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v14 = v8;

    v8 = v14;
  }

  listOfClients = self->_listOfClients;
  if (listOfClients)
  {
    v16 = listOfClients;
    v27 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v17 = v8;

    v8 = v17;
  }

  if (self->_enableAdvertisingWithPowerAssertion)
  {
    NSAppendPrintF_safe();
    v21 = v8;

    v8 = v21;
    if (!self->_enableEPAForAdvertisement)
    {
LABEL_9:
      if (!self->_enableObjectLocatorResponseOnAdvertisingInstance)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if (!self->_enableEPAForAdvertisement)
  {
    goto LABEL_9;
  }

  NSAppendPrintF_safe();
  v22 = v8;

  v8 = v22;
  if (!self->_enableObjectLocatorResponseOnAdvertisingInstance)
  {
LABEL_10:
    if (!self->_stopOnAdvertisingAddressChange)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  NSAppendPrintF_safe();
  v23 = v8;

  v8 = v23;
  if (!self->_stopOnAdvertisingAddressChange)
  {
LABEL_11:
    wiProxUpdateTimestamp = self->_wiProxUpdateTimestamp;
    if (!wiProxUpdateTimestamp)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  NSAppendPrintF_safe();
  v24 = v8;

  v8 = v24;
  wiProxUpdateTimestamp = self->_wiProxUpdateTimestamp;
  if (wiProxUpdateTimestamp)
  {
LABEL_12:
    v28 = wiProxUpdateTimestamp;
    NSAppendPrintF_safe();
    v19 = v8;

    v8 = v19;
  }

LABEL_13:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_13;
  }

  if (equalCopy == self)
  {
    v21 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    advInstanceType = [(CBWPDaemonAdvertisingData *)self advInstanceType];
    if (advInstanceType != [(CBWPDaemonAdvertisingData *)v6 advInstanceType])
    {
      goto LABEL_15;
    }

    advInterval = [(CBWPDaemonAdvertisingData *)self advInterval];
    if (advInterval != [(CBWPDaemonAdvertisingData *)v6 advInterval])
    {
      goto LABEL_15;
    }

    advDataPerType = [(CBWPDaemonAdvertisingData *)self advDataPerType];
    advDataPerType2 = [(CBWPDaemonAdvertisingData *)v6 advDataPerType];
    v11 = [advDataPerType isEqualToDictionary:advDataPerType2];

    if (!v11)
    {
      goto LABEL_15;
    }

    enableObjectLocatorResponseOnAdvertisingInstance = [(CBWPDaemonAdvertisingData *)self enableObjectLocatorResponseOnAdvertisingInstance];
    if (enableObjectLocatorResponseOnAdvertisingInstance != [(CBWPDaemonAdvertisingData *)v6 enableObjectLocatorResponseOnAdvertisingInstance])
    {
      goto LABEL_15;
    }

    stopOnAdvertisingAddressChange = [(CBWPDaemonAdvertisingData *)self stopOnAdvertisingAddressChange];
    if (stopOnAdvertisingAddressChange != [(CBWPDaemonAdvertisingData *)v6 stopOnAdvertisingAddressChange])
    {
      goto LABEL_15;
    }

    enableAdvertisingWithPowerAssertion = [(CBWPDaemonAdvertisingData *)self enableAdvertisingWithPowerAssertion];
    if (enableAdvertisingWithPowerAssertion != [(CBWPDaemonAdvertisingData *)v6 enableAdvertisingWithPowerAssertion])
    {
      goto LABEL_15;
    }

    enableEPAForAdvertisement = [(CBWPDaemonAdvertisingData *)self enableEPAForAdvertisement];
    if (enableEPAForAdvertisement != [(CBWPDaemonAdvertisingData *)v6 enableEPAForAdvertisement])
    {
      goto LABEL_15;
    }

    listOfClients = [(CBWPDaemonAdvertisingData *)self listOfClients];
    listOfClients2 = [(CBWPDaemonAdvertisingData *)v6 listOfClients];
    v18 = [listOfClients isEqualToArray:listOfClients2];

    if (v18)
    {
      mfgData = [(CBWPDaemonAdvertisingData *)self mfgData];
      mfgData2 = [(CBWPDaemonAdvertisingData *)v6 mfgData];
      v21 = [mfgData isEqualToData:mfgData2];
    }

    else
    {
LABEL_15:
      v21 = 0;
    }
  }

  else
  {
LABEL_13:
    v21 = 0;
  }

LABEL_17:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    [v5 setAdvInstanceType:{-[CBWPDaemonAdvertisingData advInstanceType](self, "advInstanceType")}];
    [v5 setAdvInterval:{-[CBWPDaemonAdvertisingData advInterval](self, "advInterval")}];
    advDataPerType = [(CBWPDaemonAdvertisingData *)self advDataPerType];
    v7 = [advDataPerType copyWithZone:zone];
    [v5 setAdvDataPerType:v7];

    [v5 setEnableObjectLocatorResponseOnAdvertisingInstance:{-[CBWPDaemonAdvertisingData enableObjectLocatorResponseOnAdvertisingInstance](self, "enableObjectLocatorResponseOnAdvertisingInstance")}];
    [v5 setStopOnAdvertisingAddressChange:{-[CBWPDaemonAdvertisingData stopOnAdvertisingAddressChange](self, "stopOnAdvertisingAddressChange")}];
    [v5 setEnableAdvertisingWithPowerAssertion:{-[CBWPDaemonAdvertisingData enableAdvertisingWithPowerAssertion](self, "enableAdvertisingWithPowerAssertion")}];
    [v5 setEnableEPAForAdvertisement:{-[CBWPDaemonAdvertisingData enableEPAForAdvertisement](self, "enableEPAForAdvertisement")}];
    wiProxUpdateTimestamp = [(CBWPDaemonAdvertisingData *)self wiProxUpdateTimestamp];
    v9 = [wiProxUpdateTimestamp copyWithZone:zone];
    [v5 setWiProxUpdateTimestamp:v9];

    mfgData = [(CBWPDaemonAdvertisingData *)self mfgData];
    v11 = [mfgData copyWithZone:zone];
    [v5 setMfgData:v11];

    listOfClients = [(CBWPDaemonAdvertisingData *)self listOfClients];
    v13 = [listOfClients copyWithZone:zone];
    [v5 setListOfClients:v13];
  }

  return v5;
}

@end