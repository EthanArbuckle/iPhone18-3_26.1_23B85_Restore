@interface Slot
- (BOOL)engine:(id)a3 powerDownWithEject:(BOOL)a4;
- (BOOL)engineSimulateCardReinsertion:(id)a3;
- (Device)device;
- (Slot)initWithDevice:(id)a3 slotName:(id)a4 slotNumber:(unsigned __int8)a5;
- (id)engine:(id)a3 transmit:(id)a4;
- (id)engineResetCard:(id)a3;
- (unint64_t)engine:(id)a3 setProtocol:(unint64_t)a4;
- (void)dealloc;
- (void)physicalCardNotify:(BOOL)a3;
- (void)terminate;
@end

@implementation Slot

- (Slot)initWithDevice:(id)a3 slotName:(id)a4 slotNumber:(unsigned __int8)a5
{
  v8 = a3;
  v9 = a4;
  v39.receiver = self;
  v39.super_class = Slot;
  v10 = [(Slot *)&v39 init];
  if (!v10)
  {
LABEL_23:
    v37 = v10;
    goto LABEL_27;
  }

  v11 = [v8 CCIDDescriptor];
  v12 = [v11 levelOfExchange];

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
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

  else if (v12)
  {
    if (v12 == 1)
    {
      v13 = [v8 CCIDDescriptor];
      v14 = [v13 dwMaxCCIDMessageLength];
      v15 = v14 - +[CCIDMessageView length];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_11;
  }

  v15 = 261;
LABEL_11:
  v16 = [v8 CCIDDescriptor];
  v17 = [v16 dwMaxCCIDMessageLength];
  v18 = v17 - +[CCIDMessageView length];

  if (v15 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  v20 = [[TKSlotParameters alloc] initWithMaxBlockSize:v19];
  v21 = [v8 productId];
  [v20 setProductID:v21];

  v22 = [v8 vendorId];
  [v20 setVendorID:v22];

  [v20 setFirmwareVersion:&stru_100025468];
  v23 = [v8 CCIDDescriptor];
  [v20 setSecurePINVerificationSupported:{objc_msgSend(v23, "bPINSupport") & 1}];

  v24 = [v8 CCIDDescriptor];
  [v20 setSecurePINChangeSupported:{(objc_msgSend(v24, "bPINSupport") >> 1) & 1}];

  if (([v20 securePINVerificationSupported] & 1) != 0 || objc_msgSend(v20, "securePINChangeSupported"))
  {
    v25 = [v8 CCIDDescriptor];
    v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 wLcdLayout]);
    [v20 setDisplayMaxCharacters:v26];

    v27 = [v8 CCIDDescriptor];
    v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 wLcdLayout] >> 8);
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

  objc_storeWeak(&v10->_device, v8);
  v10->_slotNumber = a5;
  v10->_cardPresent = 0;
  objc_storeStrong(&v10->_slotName, a4);
  v33 = sub_10000D560();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_100016E2C(&v10->_engine);
  }

  v34 = [(TKSmartCardSlotEngine *)v10->_engine setupWithName:v9 delegate:v10];
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
    sub_100016EF8(a5, v36);
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
  v3 = [(Slot *)self synchronize];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D698;
  v4[3] = &unk_1000244F0;
  v4[4] = self;
  [v3 sync:v4];
}

- (void)physicalCardNotify:(BOOL)a3
{
  p_cardPresent = &self->_cardPresent;
  if (self->_cardPresent != a3)
  {
    *p_cardPresent = a3;
    v5 = sub_10000D560();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10001707C(self, p_cardPresent, v5);
    }

    [(TKSmartCardSlotEngine *)self->_engine cardPresent:self->_cardPresent];
  }
}

- (BOOL)engine:(id)a3 powerDownWithEject:(BOOL)a4
{
  v4 = sub_10000D560();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_10001710C();
  }

  return 0;
}

- (unint64_t)engine:(id)a3 setProtocol:(unint64_t)a4
{
  v4 = sub_10000D560();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_10001710C();
  }

  return 0;
}

- (id)engine:(id)a3 transmit:(id)a4
{
  v4 = sub_10000D560();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_10001710C();
  }

  return 0;
}

- (id)engineResetCard:(id)a3
{
  v3 = sub_10000D560();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_10001710C();
  }

  return 0;
}

- (BOOL)engineSimulateCardReinsertion:(id)a3
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