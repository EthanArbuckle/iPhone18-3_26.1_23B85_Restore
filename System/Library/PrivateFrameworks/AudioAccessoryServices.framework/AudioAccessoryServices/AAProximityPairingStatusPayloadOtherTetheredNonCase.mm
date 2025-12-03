@interface AAProximityPairingStatusPayloadOtherTetheredNonCase
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadOtherTetheredNonCase

- (id)describeProperties
{
  v28.receiver = self;
  v28.super_class = AAProximityPairingStatusPayloadOtherTetheredNonCase;
  describeProperties = [(AAProximityPairingStatusPayloadGeneral *)&v28 describeProperties];
  v27 = describeProperties;
  primaryLocation = [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self primaryLocation];
  if (primaryLocation > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278CDE210[primaryLocation];
  }

  v17 = v5;
  NSAppendPrintF_safe();
  v6 = v27;

  v26 = v6;
  if ([(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self outOfBoxMode])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  v18 = v7;
  NSAppendPrintF_safe();
  v8 = v26;

  v25 = v8;
  lidOpenCount = [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self lidOpenCount];
  NSAppendPrintF_safe();
  v9 = v8;

  v24 = v9;
  if ([(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self showProxStatus])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v20 = v10;
  NSAppendPrintF_safe();
  v11 = v24;

  v23[1] = v11;
  color = [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self color];
  NSAppendPrintF_safe();
  v12 = v11;

  if ([(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self mainBatteryValid])
  {
    [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self mainBatteryCharging];
    v23[0] = v12;
    [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self mainBatteryLevel];
    v13 = v23;
  }

  else
  {
    v22 = v12;
    v13 = &v22;
  }

  NSAppendPrintF_safe();
  v14 = *v13;
  v15 = v14;

  return v14;
}

@end