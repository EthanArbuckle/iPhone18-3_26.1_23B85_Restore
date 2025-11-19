@interface AAProximityPairingStatusPayloadGeneral
- (AAProximityPairingStatusPayloadGeneral)initWithData:(id)a3;
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
  v3 = [(AAProximityPairingPayload *)&v67 describeProperties];
  v66 = v3;
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
  v6 = [(AAProximityPairingStatusPayloadGeneral *)self audioState];
  if (v6 > 3)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_278CDE0F0[v6];
  }

  v42 = v7;
  NSAppendPrintF_safe();
  v8 = v65;

  v64 = v8;
  v43 = [(AAProximityPairingStatusPayloadGeneral *)self connectedSourceCount];
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
    v54 = [(AAProximityPairingStatusPayloadGeneral *)self myBatteryLevel];
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
    v54 = v20;
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

  v48 = [(AAProximityPairingStatusPayloadGeneral *)self lastConnectedHost];
  NSAppendPrintF_safe();
  v25 = v24;

  v49 = [(AAProximityPairingStatusPayloadGeneral *)self lastBudInCaseWithCurrentBud];
  NSAppendPrintF_safe();
  v26 = v25;

  v27 = [(AAProximityPairingStatusPayloadGeneral *)self smartRoutingScoreSource1];
  if (v27 > 0xF)
  {
    v28 = "?";
  }

  else
  {
    v28 = off_278CDE110[v27];
  }

  v50 = v28;
  NSAppendPrintF_safe();
  v29 = v26;

  v30 = [(AAProximityPairingStatusPayloadGeneral *)self smartRoutingScoreSource2];
  if (v30 > 0xF)
  {
    v31 = "?";
  }

  else
  {
    v31 = off_278CDE110[v30];
  }

  v51 = v31;
  NSAppendPrintF_safe();
  v32 = v29;

  v33 = [(AAProximityPairingStatusPayloadGeneral *)self idleTime];
  if (v33 > 3)
  {
    v34 = "?";
  }

  else
  {
    v34 = off_278CDE190[v33];
  }

  v52 = v34;
  NSAppendPrintF_safe();
  v35 = v32;

  v36 = [(AAProximityPairingStatusPayloadGeneral *)self outOfCaseTime];
  if (v36 > 3)
  {
    v37 = "?";
  }

  else
  {
    v37 = off_278CDE190[v36];
  }

  v53 = v37;
  NSAppendPrintF_safe();
  v38 = v35;

  [(AAProximityPairingStatusPayloadGeneral *)self lastConnectedHostSignedInToICloud];
  NSAppendPrintF_safe();
  v39 = v38;

  return v38;
}

- (AAProximityPairingStatusPayloadGeneral)initWithData:(id)a3
{
  v56.receiver = self;
  v56.super_class = AAProximityPairingStatusPayloadGeneral;
  v3 = [(AAProximityPairingPayload *)&v56 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_32;
  }

  v5 = [(AAAdvertisementPayload *)v3 payloadData];
  v6 = [v5 length];

  if (v6 <= 5)
  {
    v54 = "missing data from status1 bit.";
LABEL_31:
    [(AAAdvertisementPayload *)v4 initLogParseError:v54];
LABEL_32:
    v53 = 0;
    goto LABEL_33;
  }

  v7 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 2) = *([v7 bytes] + 5);

  v8 = [(AAAdvertisementPayload *)v4 payloadData];
  v9 = [v8 length];

  if (v9 <= 6)
  {
    v54 = "missing data from battery1 bit.";
    goto LABEL_31;
  }

  v10 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 3) = *([v10 bytes] + 6);

  v11 = [(AAAdvertisementPayload *)v4 payloadData];
  v12 = [v11 length];

  if (v12 <= 7)
  {
    v54 = "missing data from battery2 bit.";
    goto LABEL_31;
  }

  v13 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 4) = *([v13 bytes] + 7);

  v14 = [(AAAdvertisementPayload *)v4 payloadData];
  v15 = [v14 length];

  if (v15 <= 8)
  {
    v54 = "missing data from status3 bit.";
    goto LABEL_31;
  }

  v16 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 5) = *([v16 bytes] + 8);

  v17 = [(AAAdvertisementPayload *)v4 payloadData];
  v18 = [v17 length];

  if (v18 <= 9)
  {
    v54 = "missing data from color bit.";
    goto LABEL_31;
  }

  v19 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status1 = *([v19 bytes] + 9);

  v20 = [(AAAdvertisementPayload *)v4 payloadData];
  v21 = [v20 length];

  if (v21 <= 0xA)
  {
    v54 = "missing data from misc1 bit.";
    goto LABEL_31;
  }

  v22 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery1 = *([v22 bytes] + 10);

  v23 = [(AAAdvertisementPayload *)v4 payloadData];
  v24 = [v23 length];

  if (v24 <= 0xB)
  {
    v54 = "missing data from status2 bit.";
    goto LABEL_31;
  }

  v25 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery2 = *([v25 bytes] + 11);

  v26 = [(AAAdvertisementPayload *)v4 payloadData];
  v27 = [v26 length];

  if (v27 <= 0xC)
  {
    v54 = "missing data from battery3 bit.";
    goto LABEL_31;
  }

  v28 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status3 = *([v28 bytes] + 12);

  v29 = [(AAAdvertisementPayload *)v4 payloadData];
  v30 = [v29 length];

  if (v30 <= 0xD)
  {
    v54 = "missing data from battery4 bit.";
    goto LABEL_31;
  }

  v31 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_colorRaw = *([v31 bytes] + 13);

  v32 = [(AAAdvertisementPayload *)v4 payloadData];
  v33 = [v32 length];

  if (v33 <= 0xE)
  {
    v54 = "missing data from battery5 bit.";
    goto LABEL_31;
  }

  v34 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_misc1 = *([v34 bytes] + 14);

  v35 = [(AAAdvertisementPayload *)v4 payloadData];
  v36 = [v35 length];

  if (v36 <= 0x11)
  {
    v54 = "missing data from lastConnectedHost bits.";
    goto LABEL_31;
  }

  v37 = [(AAAdvertisementPayload *)v4 payloadData];
  v38 = [v37 bytes];

  v39 = [MEMORY[0x277CBEA90] dataWithBytes:v38 + 15 length:3];
  v40 = *&v4->_battery4;
  *&v4->_battery4 = v39;

  v41 = [(AAAdvertisementPayload *)v4 payloadData];
  v42 = [v41 length];

  if (v42 <= 0x14)
  {
    v54 = "missing data from lastBudInCaseWithCurrentBud bits.";
    goto LABEL_31;
  }

  v43 = [(AAAdvertisementPayload *)v4 payloadData];
  v44 = [v43 bytes];

  v45 = [MEMORY[0x277CBEA90] dataWithBytes:v44 + 18 length:3];
  lastConnectedHost = v4->_lastConnectedHost;
  v4->_lastConnectedHost = v45;

  v47 = [(AAAdvertisementPayload *)v4 payloadData];
  v48 = [v47 length];

  if (v48 <= 0x15)
  {
    v54 = "missing data from status4 bit.";
    goto LABEL_31;
  }

  v49 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status2 = *([v49 bytes] + 21);

  v50 = [(AAAdvertisementPayload *)v4 payloadData];
  v51 = [v50 length];

  if (v51 <= 0x16)
  {
    v54 = "missing data from status5 bit.";
    goto LABEL_31;
  }

  v52 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery3 = *([v52 bytes] + 22);

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
  v3 = [(AAProximityPairingStatusPayloadGeneral *)self chargingDEOCSupported];
  if (v3)
  {
    return ([(AAProximityPairingStatusPayloadGeneral *)self status2]>> 4) & 1;
  }

  return v3;
}

@end