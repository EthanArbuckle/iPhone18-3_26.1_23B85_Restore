@interface AAProximityPairingAccessoryStatusPayload
- (AAProximityPairingAccessoryStatusPayload)initWithData:(id)data;
- (NSString)firmwareVersion;
- (id)describeProperties;
@end

@implementation AAProximityPairingAccessoryStatusPayload

- (AAProximityPairingAccessoryStatusPayload)initWithData:(id)data
{
  v33.receiver = self;
  v33.super_class = AAProximityPairingAccessoryStatusPayload;
  v3 = [(AAProximityPairingPayload *)&v33 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  payloadData = [(AAAdvertisementPayload *)v3 payloadData];
  v6 = [payloadData length];

  if (v6 <= 5)
  {
    v31 = "missing data from status flags 1.";
LABEL_19:
    [(AAAdvertisementPayload *)v4 initLogParseError:v31];
LABEL_20:
    v30 = 0;
    goto LABEL_21;
  }

  payloadData2 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 2) = *([payloadData2 bytes] + 5);

  payloadData3 = [(AAAdvertisementPayload *)v4 payloadData];
  v9 = [payloadData3 length];

  if (v9 <= 6)
  {
    v31 = "missing data from battery 1 byte.";
    goto LABEL_19;
  }

  payloadData4 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 3) = *([payloadData4 bytes] + 6);

  payloadData5 = [(AAAdvertisementPayload *)v4 payloadData];
  v12 = [payloadData5 length];

  if (v12 <= 7)
  {
    v31 = "missing data from battery 2 byte.";
    goto LABEL_19;
  }

  payloadData6 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 4) = *([payloadData6 bytes] + 7);

  payloadData7 = [(AAAdvertisementPayload *)v4 payloadData];
  v15 = [payloadData7 length];

  if (v15 <= 8)
  {
    v31 = "missing data from battery 3 byte.";
    goto LABEL_19;
  }

  payloadData8 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 5) = *([payloadData8 bytes] + 8);

  payloadData9 = [(AAAdvertisementPayload *)v4 payloadData];
  v18 = [payloadData9 length];

  if (v18 <= 0xB)
  {
    v31 = "missing data from Firmware Version bytes.";
    goto LABEL_19;
  }

  payloadData10 = [(AAAdvertisementPayload *)v4 payloadData];
  bytes = [payloadData10 bytes];
  *&v4->_timeUntilCharged = *(bytes + 9) | (*(bytes + 11) << 16);

  payloadData11 = [(AAAdvertisementPayload *)v4 payloadData];
  v22 = [payloadData11 length];

  if (v22 <= 0xC)
  {
    v31 = "missing data from Time Until Charged byte.";
    goto LABEL_19;
  }

  payloadData12 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_statusFlags1 = *([payloadData12 bytes] + 12);

  payloadData13 = [(AAAdvertisementPayload *)v4 payloadData];
  v25 = [payloadData13 length];

  if (v25 <= 0xD)
  {
    v31 = "missing data from status 2 byte.";
    goto LABEL_19;
  }

  payloadData14 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery1 = *([payloadData14 bytes] + 13);

  payloadData15 = [(AAAdvertisementPayload *)v4 payloadData];
  v28 = [payloadData15 length];

  if (v28 <= 0xE)
  {
    v31 = "missing data from reserved byte.";
    goto LABEL_19;
  }

  payloadData16 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery2 = *([payloadData16 bytes] + 14);

  v30 = v4;
LABEL_21:

  return v30;
}

- (id)describeProperties
{
  v52.receiver = self;
  v52.super_class = AAProximityPairingAccessoryStatusPayload;
  describeProperties = [(AAProximityPairingPayload *)&v52 describeProperties];
  lidOpenCount = [(AAProximityPairingAccessoryStatusPayload *)self lidOpenCount];
  NSAppendPrintF_safe();
  v3 = describeProperties;

  v50 = v3;
  if ([(AAProximityPairingAccessoryStatusPayload *)self lidClosed])
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v30 = v4;
  NSAppendPrintF_safe();
  v5 = v50;

  v49 = v5;
  if ([(AAProximityPairingAccessoryStatusPayload *)self needsConnection])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  v31 = v6;
  NSAppendPrintF_safe();
  v7 = v49;

  v48 = v7;
  if ([(AAProximityPairingAccessoryStatusPayload *)self soundEnabled])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v32 = v8;
  NSAppendPrintF_safe();
  v9 = v48;

  v47 = v9;
  if ([(AAProximityPairingAccessoryStatusPayload *)self connected])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v33 = v10;
  NSAppendPrintF_safe();
  v11 = v47;

  v46 = v11;
  if ([(AAProximityPairingAccessoryStatusPayload *)self faultDetected])
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  v34 = v12;
  NSAppendPrintF_safe();
  v13 = v46;

  if ([(AAProximityPairingAccessoryStatusPayload *)self caseBatteryValid])
  {
    if ([(AAProximityPairingAccessoryStatusPayload *)self caseBatteryCharging])
    {
      v14 = "+";
    }

    else
    {
      v14 = "-";
    }

    v45 = v13;
    v35 = v14;
    caseBatteryLevel = [(AAProximityPairingAccessoryStatusPayload *)self caseBatteryLevel];
    v15 = &v45;
  }

  else
  {
    v44 = v13;
    v15 = &v44;
  }

  NSAppendPrintF_safe();
  v16 = *v15;

  if ([(AAProximityPairingAccessoryStatusPayload *)self leftBatteryValid])
  {
    if ([(AAProximityPairingAccessoryStatusPayload *)self leftBatteryCharging])
    {
      v17 = "+";
    }

    else
    {
      v17 = "-";
    }

    v43 = v16;
    v18 = [(AAProximityPairingAccessoryStatusPayload *)self leftBatteryLevel:v35];
    v35 = v17;
    caseBatteryLevel = v18;
    v19 = &v43;
  }

  else
  {
    v42 = v16;
    v19 = &v42;
  }

  NSAppendPrintF_safe();
  v20 = *v19;

  if ([(AAProximityPairingAccessoryStatusPayload *)self rightBatteryValid])
  {
    [(AAProximityPairingAccessoryStatusPayload *)self rightBatteryCharging];
    v41 = v20;
    [(AAProximityPairingAccessoryStatusPayload *)self rightBatteryLevel:v35];
    v21 = &v41;
  }

  else
  {
    v40 = v20;
    v21 = &v40;
  }

  NSAppendPrintF_safe();
  v22 = *v21;

  firmwareVersion = [(AAProximityPairingAccessoryStatusPayload *)self firmwareVersion];
  NSAppendPrintF_safe();
  v23 = v22;

  timeUntilCharged = [(AAProximityPairingAccessoryStatusPayload *)self timeUntilCharged];
  NSAppendPrintF_safe();
  v24 = v23;

  if ([(AAProximityPairingAccessoryStatusPayload *)self chargingOBC])
  {
    v25 = "yes";
  }

  else
  {
    v25 = "no";
  }

  v38 = v25;
  NSAppendPrintF_safe();
  v26 = v24;

  [(AAProximityPairingAccessoryStatusPayload *)self chargingDEOC];
  NSAppendPrintF_safe();
  v27 = v26;

  return v26;
}

- (NSString)firmwareVersion
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u.%u.%u", (-[AAProximityPairingAccessoryStatusPayload firmwareVersionRaw](self, "firmwareVersionRaw") >> 16), (-[AAProximityPairingAccessoryStatusPayload firmwareVersionRaw](self, "firmwareVersionRaw") >> 8), -[AAProximityPairingAccessoryStatusPayload firmwareVersionRaw](self, "firmwareVersionRaw")];

  return v2;
}

@end