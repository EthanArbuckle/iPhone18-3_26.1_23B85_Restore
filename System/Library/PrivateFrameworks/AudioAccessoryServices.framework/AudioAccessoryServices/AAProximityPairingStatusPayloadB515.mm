@interface AAProximityPairingStatusPayloadB515
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadB515

- (id)describeProperties
{
  v37.receiver = self;
  v37.super_class = AAProximityPairingStatusPayloadB515;
  v3 = [(AAProximityPairingStatusPayloadGeneral *)&v37 describeProperties];
  v36 = v3;
  v4 = [(AAProximityPairingStatusPayloadB515 *)self primaryLocation];
  if (v4 > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278CDE210[v4];
  }

  v22 = v5;
  NSAppendPrintF_safe();
  v6 = v36;

  v35 = v6;
  if ([(AAProximityPairingStatusPayloadB515 *)self outOfBoxMode])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  v23 = v7;
  NSAppendPrintF_safe();
  v8 = v35;

  v34 = v8;
  v24 = [(AAProximityPairingStatusPayloadB515 *)self lidOpenCount];
  NSAppendPrintF_safe();
  v9 = v8;

  v33 = v9;
  if ([(AAProximityPairingStatusPayloadB515 *)self unsupportedAccessoryConnected])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v25 = v10;
  NSAppendPrintF_safe();
  v11 = v33;

  v32 = v11;
  v12 = [(AAProximityPairingStatusPayloadB515 *)self caseLedColor];
  if (v12 > 3)
  {
    v13 = "?";
  }

  else
  {
    v13 = off_278CDE1F0[v12];
  }

  v26 = v13;
  NSAppendPrintF_safe();
  v14 = v32;

  v31 = v14;
  if ([(AAProximityPairingStatusPayloadB515 *)self showProxStatus])
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  v27 = v15;
  NSAppendPrintF_safe();
  v16 = v31;

  v30[1] = v16;
  v28 = [(AAProximityPairingStatusPayloadB515 *)self cupColor];
  NSAppendPrintF_safe();
  v17 = v16;

  if ([(AAProximityPairingStatusPayloadB515 *)self mainBatteryValid])
  {
    [(AAProximityPairingStatusPayloadB515 *)self mainBatteryCharging];
    v30[0] = v17;
    [(AAProximityPairingStatusPayloadB515 *)self mainBatteryLevel];
    v18 = v30;
  }

  else
  {
    v29 = v17;
    v18 = &v29;
  }

  NSAppendPrintF_safe();
  v19 = *v18;
  v20 = v19;

  return v19;
}

@end