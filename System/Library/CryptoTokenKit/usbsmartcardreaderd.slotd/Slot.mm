@interface Slot
- (BOOL)engine:(id)engine powerDownWithEject:(BOOL)eject;
- (BOOL)engineSimulateCardReinsertion:(id)reinsertion;
- (Device)device;
- (Slot)initWithDevice:(id)device slotName:(id)name slotNumber:(unsigned __int8)number;
- (id)engine:(id)engine transmit:(id)transmit;
- (id)engineResetCard:(id)card;
- (unint64_t)engine:(id)engine setProtocol:(unint64_t)protocol;
- (void)dealloc;
- (void)physicalCardNotify:(BOOL)notify;
- (void)terminate;
@end

@implementation Slot

- (Slot)initWithDevice:(id)device slotName:(id)name slotNumber:(unsigned __int8)number
{
  deviceCopy = device;
  nameCopy = name;
  v39.receiver = self;
  v39.super_class = Slot;
  v10 = [(Slot *)&v39 init];
  if (!v10)
  {
LABEL_23:
    v37 = v10;
    goto LABEL_27;
  }

  cCIDDescriptor = [deviceCopy CCIDDescriptor];
  levelOfExchange = [cCIDDescriptor levelOfExchange];

  if (levelOfExchange > 1)
  {
    if (levelOfExchange != 2)
    {
      if (levelOfExchange == 3)
      {
        v15 = 65544;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_11;
    }
  }

  else if (levelOfExchange)
  {
    if (levelOfExchange == 1)
    {
      cCIDDescriptor2 = [deviceCopy CCIDDescriptor];
      dwMaxCCIDMessageLength = [cCIDDescriptor2 dwMaxCCIDMessageLength];
      v15 = dwMaxCCIDMessageLength - +[CCIDMessageView length];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_11;
  }

  v15 = 261;
LABEL_11:
  cCIDDescriptor3 = [deviceCopy CCIDDescriptor];
  dwMaxCCIDMessageLength2 = [cCIDDescriptor3 dwMaxCCIDMessageLength];
  v18 = dwMaxCCIDMessageLength2 - +[CCIDMessageView length];

  if (v15 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  v20 = [[TKSlotParameters alloc] initWithMaxBlockSize:v19];
  productId = [deviceCopy productId];
  [v20 setProductID:productId];

  vendorId = [deviceCopy vendorId];
  [v20 setVendorID:vendorId];

  [v20 setFirmwareVersion:&stru_100025468];
  cCIDDescriptor4 = [deviceCopy CCIDDescriptor];
  [v20 setSecurePINVerificationSupported:{objc_msgSend(cCIDDescriptor4, "bPINSupport") & 1}];

  cCIDDescriptor5 = [deviceCopy CCIDDescriptor];
  [v20 setSecurePINChangeSupported:{(objc_msgSend(cCIDDescriptor5, "bPINSupport") >> 1) & 1}];

  if (([v20 securePINVerificationSupported] & 1) != 0 || objc_msgSend(v20, "securePINChangeSupported"))
  {
    cCIDDescriptor6 = [deviceCopy CCIDDescriptor];
    v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cCIDDescriptor6 wLcdLayout]);
    [v20 setDisplayMaxCharacters:v26];

    cCIDDescriptor7 = [deviceCopy CCIDDescriptor];
    v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cCIDDescriptor7 wLcdLayout] >> 8);
    [v20 setDisplayMaxLines:v28];

    [v20 setPinValidationCondition:&off_100026F58];
    [v20 setInteractionTimeout:0.0];
  }

  v29 = [[TKSmartCardSlotEngine alloc] initWithSlotParameters:v20];
  engine = v10->_engine;
  v10->_engine = v29;

  v31 = [[Synchronize alloc] initWithQueueName:@"com.apple.ccid.slot"];
  synchronize = v10->_synchronize;
  v10->_synchronize = v31;

  objc_storeWeak(&v10->_device, deviceCopy);
  v10->_slotNumber = number;
  v10->_cardPresent = 0;
  objc_storeStrong(&v10->_slotName, name);
  v33 = sub_10000D560();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_100016E2C(&v10->_engine);
  }

  v34 = [(TKSmartCardSlotEngine *)v10->_engine setupWithName:nameCopy delegate:v10];
  v35 = sub_10000D560();
  v36 = v35;
  if (v34)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_100016F74();
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
  {
    sub_100016EF8(number, v36);
  }

  v37 = 0;
LABEL_27:

  return v37;
}

- (void)dealloc
{
  [(Slot *)self terminate];
  v3.receiver = self;
  v3.super_class = Slot;
  [(Slot *)&v3 dealloc];
}

- (void)terminate
{
  synchronize = [(Slot *)self synchronize];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D698;
  v4[3] = &unk_1000244F0;
  v4[4] = self;
  [synchronize sync:v4];
}

- (void)physicalCardNotify:(BOOL)notify
{
  p_cardPresent = &self->_cardPresent;
  if (self->_cardPresent != notify)
  {
    *p_cardPresent = notify;
    v5 = sub_10000D560();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10001707C(self, p_cardPresent, v5);
    }

    [(TKSmartCardSlotEngine *)self->_engine cardPresent:self->_cardPresent];
  }
}

- (BOOL)engine:(id)engine powerDownWithEject:(BOOL)eject
{
  v4 = sub_10000D560();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_10001710C();
  }

  return 0;
}

- (unint64_t)engine:(id)engine setProtocol:(unint64_t)protocol
{
  v4 = sub_10000D560();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_10001710C();
  }

  return 0;
}

- (id)engine:(id)engine transmit:(id)transmit
{
  v4 = sub_10000D560();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_10001710C();
  }

  return 0;
}

- (id)engineResetCard:(id)card
{
  v3 = sub_10000D560();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_10001710C();
  }

  return 0;
}

- (BOOL)engineSimulateCardReinsertion:(id)reinsertion
{
  v3 = sub_10000D560();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_100017140();
  }

  return 0;
}

- (Device)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end