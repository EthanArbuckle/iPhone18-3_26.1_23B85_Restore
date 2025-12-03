@interface AAProximityPairingStatusPayloadGeneral
- (AAProximityPairingStatusPayloadGeneral)initWithData:(id)data;
- (BOOL)chargingDEOC;
- (id)describeProperties;
- (unsigned)caseBatteryLevel;
- (unsigned)myBatteryLevel;
- (unsigned)otherBatteryLevel;
@end

@implementation AAProximityPairingStatusPayloadGeneral

- (id)describeProperties
{
  v67.receiver = self;
  v67.super_class = AAProximityPairingStatusPayloadGeneral;
  describeProperties = [(AAProximityPairingPayload *)&v67 describeProperties];
  v66 = describeProperties;
  if ([(AAProximityPairingStatusPayloadGeneral *)self supportWirelessSplitter])
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v41 = v4;
  NSAppendPrintF_safe();
  v5 = v66;

  v65 = v5;
  audioState = [(AAProximityPairingStatusPayloadGeneral *)self audioState];
  if (audioState > 3)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_278CDE0F0[audioState];
  }

  v42 = v7;
  NSAppendPrintF_safe();
  v8 = v65;

  v64 = v8;
  connectedSourceCount = [(AAProximityPairingStatusPayloadGeneral *)self connectedSourceCount];
  NSAppendPrintF_safe();
  v9 = v8;

  v63 = v9;
  if ([(AAProximityPairingStatusPayloadGeneral *)self chargingDEOC])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v44 = v10;
  NSAppendPrintF_safe();
  v11 = v63;

  v62 = v11;
  if ([(AAProximityPairingStatusPayloadGeneral *)self chargingOBC])
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  v45 = v12;
  NSAppendPrintF_safe();
  v13 = v62;

  v61 = v13;
  if ([(AAProximityPairingStatusPayloadGeneral *)self smartRoutingConnected])
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  v46 = v14;
  NSAppendPrintF_safe();
  v15 = v61;

  if ([(AAProximityPairingStatusPayloadGeneral *)self myBatteryValid])
  {
    if ([(AAProximityPairingStatusPayloadGeneral *)self myBatteryCharging])
    {
      v16 = "+";
    }

    else
    {
      v16 = "-";
    }

    v60 = v15;
    v47 = v16;
    myBatteryLevel = [(AAProximityPairingStatusPayloadGeneral *)self myBatteryLevel];
    v17 = &v60;
  }

  else
  {
    v59 = v15;
    v17 = &v59;
  }

  NSAppendPrintF_safe();
  v18 = *v17;

  if ([(AAProximityPairingStatusPayloadGeneral *)self otherBatteryValid])
  {
    if ([(AAProximityPairingStatusPayloadGeneral *)self otherBatteryCharging])
    {
      v19 = "+";
    }

    else
    {
      v19 = "-";
    }

    v58 = v18;
    v20 = [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryLevel:v47];
    v47 = v19;
    myBatteryLevel = v20;
    v21 = &v58;
  }

  else
  {
    v57 = v18;
    v21 = &v57;
  }

  NSAppendPrintF_safe();
  v22 = *v21;

  if ([(AAProximityPairingStatusPayloadGeneral *)self caseBatteryValid])
  {
    [(AAProximityPairingStatusPayloadGeneral *)self caseBatteryCharging];
    v56 = v22;
    [(AAProximityPairingStatusPayloadGeneral *)self caseBatteryLevel:v47];
    v23 = &v56;
  }

  else
  {
    v55 = v22;
    v23 = &v55;
  }

  NSAppendPrintF_safe();
  v24 = *v23;

  lastConnectedHost = [(AAProximityPairingStatusPayloadGeneral *)self lastConnectedHost];
  NSAppendPrintF_safe();
  v25 = v24;

  lastBudInCaseWithCurrentBud = [(AAProximityPairingStatusPayloadGeneral *)self lastBudInCaseWithCurrentBud];
  NSAppendPrintF_safe();
  v26 = v25;

  smartRoutingScoreSource1 = [(AAProximityPairingStatusPayloadGeneral *)self smartRoutingScoreSource1];
  if (smartRoutingScoreSource1 > 0xF)
  {
    v28 = "?";
  }

  else
  {
    v28 = off_278CDE110[smartRoutingScoreSource1];
  }

  v50 = v28;
  NSAppendPrintF_safe();
  v29 = v26;

  smartRoutingScoreSource2 = [(AAProximityPairingStatusPayloadGeneral *)self smartRoutingScoreSource2];
  if (smartRoutingScoreSource2 > 0xF)
  {
    v31 = "?";
  }

  else
  {
    v31 = off_278CDE110[smartRoutingScoreSource2];
  }

  v51 = v31;
  NSAppendPrintF_safe();
  v32 = v29;

  idleTime = [(AAProximityPairingStatusPayloadGeneral *)self idleTime];
  if (idleTime > 3)
  {
    v34 = "?";
  }

  else
  {
    v34 = off_278CDE190[idleTime];
  }

  v52 = v34;
  NSAppendPrintF_safe();
  v35 = v32;

  outOfCaseTime = [(AAProximityPairingStatusPayloadGeneral *)self outOfCaseTime];
  if (outOfCaseTime > 3)
  {
    v37 = "?";
  }

  else
  {
    v37 = off_278CDE190[outOfCaseTime];
  }

  v53 = v37;
  NSAppendPrintF_safe();
  v38 = v35;

  [(AAProximityPairingStatusPayloadGeneral *)self lastConnectedHostSignedInToICloud];
  NSAppendPrintF_safe();
  v39 = v38;

  return v38;
}

- (AAProximityPairingStatusPayloadGeneral)initWithData:(id)data
{
  v56.receiver = self;
  v56.super_class = AAProximityPairingStatusPayloadGeneral;
  v3 = [(AAProximityPairingPayload *)&v56 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_32;
  }

  payloadData = [(AAAdvertisementPayload *)v3 payloadData];
  v6 = [payloadData length];

  if (v6 <= 5)
  {
    v54 = "missing data from status1 bit.";
LABEL_31:
    [(AAAdvertisementPayload *)v4 initLogParseError:v54];
LABEL_32:
    v53 = 0;
    goto LABEL_33;
  }

  payloadData2 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 2) = *([payloadData2 bytes] + 5);

  payloadData3 = [(AAAdvertisementPayload *)v4 payloadData];
  v9 = [payloadData3 length];

  if (v9 <= 6)
  {
    v54 = "missing data from battery1 bit.";
    goto LABEL_31;
  }

  payloadData4 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 3) = *([payloadData4 bytes] + 6);

  payloadData5 = [(AAAdvertisementPayload *)v4 payloadData];
  v12 = [payloadData5 length];

  if (v12 <= 7)
  {
    v54 = "missing data from battery2 bit.";
    goto LABEL_31;
  }

  payloadData6 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 4) = *([payloadData6 bytes] + 7);

  payloadData7 = [(AAAdvertisementPayload *)v4 payloadData];
  v15 = [payloadData7 length];

  if (v15 <= 8)
  {
    v54 = "missing data from status3 bit.";
    goto LABEL_31;
  }

  payloadData8 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 5) = *([payloadData8 bytes] + 8);

  payloadData9 = [(AAAdvertisementPayload *)v4 payloadData];
  v18 = [payloadData9 length];

  if (v18 <= 9)
  {
    v54 = "missing data from color bit.";
    goto LABEL_31;
  }

  payloadData10 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status1 = *([payloadData10 bytes] + 9);

  payloadData11 = [(AAAdvertisementPayload *)v4 payloadData];
  v21 = [payloadData11 length];

  if (v21 <= 0xA)
  {
    v54 = "missing data from misc1 bit.";
    goto LABEL_31;
  }

  payloadData12 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery1 = *([payloadData12 bytes] + 10);

  payloadData13 = [(AAAdvertisementPayload *)v4 payloadData];
  v24 = [payloadData13 length];

  if (v24 <= 0xB)
  {
    v54 = "missing data from status2 bit.";
    goto LABEL_31;
  }

  payloadData14 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery2 = *([payloadData14 bytes] + 11);

  payloadData15 = [(AAAdvertisementPayload *)v4 payloadData];
  v27 = [payloadData15 length];

  if (v27 <= 0xC)
  {
    v54 = "missing data from battery3 bit.";
    goto LABEL_31;
  }

  payloadData16 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status3 = *([payloadData16 bytes] + 12);

  payloadData17 = [(AAAdvertisementPayload *)v4 payloadData];
  v30 = [payloadData17 length];

  if (v30 <= 0xD)
  {
    v54 = "missing data from battery4 bit.";
    goto LABEL_31;
  }

  payloadData18 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_colorRaw = *([payloadData18 bytes] + 13);

  payloadData19 = [(AAAdvertisementPayload *)v4 payloadData];
  v33 = [payloadData19 length];

  if (v33 <= 0xE)
  {
    v54 = "missing data from battery5 bit.";
    goto LABEL_31;
  }

  payloadData20 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_misc1 = *([payloadData20 bytes] + 14);

  payloadData21 = [(AAAdvertisementPayload *)v4 payloadData];
  v36 = [payloadData21 length];

  if (v36 <= 0x11)
  {
    v54 = "missing data from lastConnectedHost bits.";
    goto LABEL_31;
  }

  payloadData22 = [(AAAdvertisementPayload *)v4 payloadData];
  bytes = [payloadData22 bytes];

  v39 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 15 length:3];
  v40 = *&v4->_battery4;
  *&v4->_battery4 = v39;

  payloadData23 = [(AAAdvertisementPayload *)v4 payloadData];
  v42 = [payloadData23 length];

  if (v42 <= 0x14)
  {
    v54 = "missing data from lastBudInCaseWithCurrentBud bits.";
    goto LABEL_31;
  }

  payloadData24 = [(AAAdvertisementPayload *)v4 payloadData];
  bytes2 = [payloadData24 bytes];

  v45 = [MEMORY[0x277CBEA90] dataWithBytes:bytes2 + 18 length:3];
  lastConnectedHost = v4->_lastConnectedHost;
  v4->_lastConnectedHost = v45;

  payloadData25 = [(AAAdvertisementPayload *)v4 payloadData];
  v48 = [payloadData25 length];

  if (v48 <= 0x15)
  {
    v54 = "missing data from status4 bit.";
    goto LABEL_31;
  }

  payloadData26 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status2 = *([payloadData26 bytes] + 21);

  payloadData27 = [(AAAdvertisementPayload *)v4 payloadData];
  v51 = [payloadData27 length];

  if (v51 <= 0x16)
  {
    v54 = "missing data from status5 bit.";
    goto LABEL_31;
  }

  payloadData28 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery3 = *([payloadData28 bytes] + 22);

  v53 = v4;
LABEL_33:

  return v53;
}

- (unsigned)myBatteryLevel
{
  if (([(AAProximityPairingStatusPayloadGeneral *)self battery3]& 0x7F) <= 0x64)
  {
    [(AAProximityPairingStatusPayloadGeneral *)self battery3];
  }

  if (([(AAProximityPairingStatusPayloadGeneral *)self battery3]& 0x7F) <= 0x64)
  {
    return [(AAProximityPairingStatusPayloadGeneral *)self battery3]& 0x7F;
  }

  else
  {
    return 100;
  }
}

- (unsigned)otherBatteryLevel
{
  if (([(AAProximityPairingStatusPayloadGeneral *)self battery4]& 0x7F) <= 0x64)
  {
    [(AAProximityPairingStatusPayloadGeneral *)self battery4];
  }

  if (([(AAProximityPairingStatusPayloadGeneral *)self battery4]& 0x7F) <= 0x64)
  {
    return [(AAProximityPairingStatusPayloadGeneral *)self battery4]& 0x7F;
  }

  else
  {
    return 100;
  }
}

- (unsigned)caseBatteryLevel
{
  if (([(AAProximityPairingStatusPayloadGeneral *)self battery5]& 0x7F) <= 0x64)
  {
    [(AAProximityPairingStatusPayloadGeneral *)self battery5];
  }

  if (([(AAProximityPairingStatusPayloadGeneral *)self battery5]& 0x7F) <= 0x64)
  {
    return [(AAProximityPairingStatusPayloadGeneral *)self battery5]& 0x7F;
  }

  else
  {
    return 100;
  }
}

- (BOOL)chargingDEOC
{
  chargingDEOCSupported = [(AAProximityPairingStatusPayloadGeneral *)self chargingDEOCSupported];
  if (chargingDEOCSupported)
  {
    return ([(AAProximityPairingStatusPayloadGeneral *)self status2]>> 4) & 1;
  }

  return chargingDEOCSupported;
}

@end