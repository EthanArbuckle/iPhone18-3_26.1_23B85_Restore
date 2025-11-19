@interface CBWPDaemonAdvertisingData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation CBWPDaemonAdvertisingData

- (id)descriptionWithLevel:(int)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4 == self)
  {
    v21 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(CBWPDaemonAdvertisingData *)self advInstanceType];
    if (v7 != [(CBWPDaemonAdvertisingData *)v6 advInstanceType])
    {
      goto LABEL_15;
    }

    v8 = [(CBWPDaemonAdvertisingData *)self advInterval];
    if (v8 != [(CBWPDaemonAdvertisingData *)v6 advInterval])
    {
      goto LABEL_15;
    }

    v9 = [(CBWPDaemonAdvertisingData *)self advDataPerType];
    v10 = [(CBWPDaemonAdvertisingData *)v6 advDataPerType];
    v11 = [v9 isEqualToDictionary:v10];

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = [(CBWPDaemonAdvertisingData *)self enableObjectLocatorResponseOnAdvertisingInstance];
    if (v12 != [(CBWPDaemonAdvertisingData *)v6 enableObjectLocatorResponseOnAdvertisingInstance])
    {
      goto LABEL_15;
    }

    v13 = [(CBWPDaemonAdvertisingData *)self stopOnAdvertisingAddressChange];
    if (v13 != [(CBWPDaemonAdvertisingData *)v6 stopOnAdvertisingAddressChange])
    {
      goto LABEL_15;
    }

    v14 = [(CBWPDaemonAdvertisingData *)self enableAdvertisingWithPowerAssertion];
    if (v14 != [(CBWPDaemonAdvertisingData *)v6 enableAdvertisingWithPowerAssertion])
    {
      goto LABEL_15;
    }

    v15 = [(CBWPDaemonAdvertisingData *)self enableEPAForAdvertisement];
    if (v15 != [(CBWPDaemonAdvertisingData *)v6 enableEPAForAdvertisement])
    {
      goto LABEL_15;
    }

    v16 = [(CBWPDaemonAdvertisingData *)self listOfClients];
    v17 = [(CBWPDaemonAdvertisingData *)v6 listOfClients];
    v18 = [v16 isEqualToArray:v17];

    if (v18)
    {
      v19 = [(CBWPDaemonAdvertisingData *)self mfgData];
      v20 = [(CBWPDaemonAdvertisingData *)v6 mfgData];
      v21 = [v19 isEqualToData:v20];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    [v5 setAdvInstanceType:{-[CBWPDaemonAdvertisingData advInstanceType](self, "advInstanceType")}];
    [v5 setAdvInterval:{-[CBWPDaemonAdvertisingData advInterval](self, "advInterval")}];
    v6 = [(CBWPDaemonAdvertisingData *)self advDataPerType];
    v7 = [v6 copyWithZone:a3];
    [v5 setAdvDataPerType:v7];

    [v5 setEnableObjectLocatorResponseOnAdvertisingInstance:{-[CBWPDaemonAdvertisingData enableObjectLocatorResponseOnAdvertisingInstance](self, "enableObjectLocatorResponseOnAdvertisingInstance")}];
    [v5 setStopOnAdvertisingAddressChange:{-[CBWPDaemonAdvertisingData stopOnAdvertisingAddressChange](self, "stopOnAdvertisingAddressChange")}];
    [v5 setEnableAdvertisingWithPowerAssertion:{-[CBWPDaemonAdvertisingData enableAdvertisingWithPowerAssertion](self, "enableAdvertisingWithPowerAssertion")}];
    [v5 setEnableEPAForAdvertisement:{-[CBWPDaemonAdvertisingData enableEPAForAdvertisement](self, "enableEPAForAdvertisement")}];
    v8 = [(CBWPDaemonAdvertisingData *)self wiProxUpdateTimestamp];
    v9 = [v8 copyWithZone:a3];
    [v5 setWiProxUpdateTimestamp:v9];

    v10 = [(CBWPDaemonAdvertisingData *)self mfgData];
    v11 = [v10 copyWithZone:a3];
    [v5 setMfgData:v11];

    v12 = [(CBWPDaemonAdvertisingData *)self listOfClients];
    v13 = [v12 copyWithZone:a3];
    [v5 setListOfClients:v13];
  }

  return v5;
}

@end