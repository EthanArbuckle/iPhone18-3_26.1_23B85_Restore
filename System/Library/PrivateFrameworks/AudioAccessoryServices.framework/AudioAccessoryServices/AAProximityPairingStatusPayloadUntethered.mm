@interface AAProximityPairingStatusPayloadUntethered
- (BOOL)leftBatteryCharging;
- (BOOL)leftBatteryValid;
- (BOOL)rightBatteryCharging;
- (BOOL)rightBatteryValid;
- (id)describeProperties;
- (unsigned)leftBatteryLevel;
- (unsigned)rightBatteryLevel;
@end

@implementation AAProximityPairingStatusPayloadUntethered

- (id)describeProperties
{
  v39.receiver = self;
  v39.super_class = AAProximityPairingStatusPayloadUntethered;
  describeProperties = [(AAProximityPairingStatusPayloadGeneral *)&v39 describeProperties];
  v38 = describeProperties;
  if ([(AAProximityPairingStatusPayloadUntethered *)self utpConnected])
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v24 = v4;
  NSAppendPrintF_safe();
  v5 = v38;

  v37 = v5;
  budRole = [(AAProximityPairingStatusPayloadUntethered *)self budRole];
  [(AAProximityPairingStatusPayloadUntethered *)self budSide];
  primaryLocation = [(AAProximityPairingStatusPayloadUntethered *)self primaryLocation];
  secondaryLocation = [(AAProximityPairingStatusPayloadUntethered *)self secondaryLocation];
  if (budRole)
  {
    v9 = secondaryLocation;
  }

  else
  {
    v9 = primaryLocation;
  }

  if (budRole)
  {
    v10 = primaryLocation;
  }

  else
  {
    v10 = secondaryLocation;
  }

  v40 = 0;
  if (v9 > 3)
  {
    v11 = "?";
  }

  else
  {
    v11 = off_278CDE210[v9];
  }

  v12 = "?";
  if (v10 <= 3)
  {
    v12 = off_278CDE210[v10];
  }

  v13 = "Secondary";
  if (budRole != 1)
  {
    v13 = "?";
  }

  if (!budRole)
  {
    v13 = "Primary";
  }

  v30 = v11;
  v31 = v12;
  v28 = v13;
  NSAppendPrintF_safe();
  v25 = v40;
  NSAppendPrintF_safe();
  v14 = v37;

  v36 = v14;
  if ([(AAProximityPairingStatusPayloadUntethered *)self outOfBoxMode:v25])
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  v26 = v15;
  NSAppendPrintF_safe();
  v16 = v36;

  if ([(AAProximityPairingStatusPayloadUntethered *)self leftBatteryValid])
  {
    if ([(AAProximityPairingStatusPayloadUntethered *)self leftBatteryCharging])
    {
      v17 = "+";
    }

    else
    {
      v17 = "-";
    }

    v35 = v16;
    v27 = v17;
    leftBatteryLevel = [(AAProximityPairingStatusPayloadUntethered *)self leftBatteryLevel];
    v18 = &v35;
  }

  else
  {
    v34 = v16;
    v18 = &v34;
  }

  NSAppendPrintF_safe();
  v19 = *v18;

  if ([(AAProximityPairingStatusPayloadUntethered *)self rightBatteryValid])
  {
    [(AAProximityPairingStatusPayloadUntethered *)self rightBatteryCharging];
    v33 = v19;
    [(AAProximityPairingStatusPayloadUntethered *)self rightBatteryLevel:v27];
    v20 = &v33;
  }

  else
  {
    v32 = v19;
    v20 = &v32;
  }

  NSAppendPrintF_safe();
  v21 = *v20;
  v22 = v21;

  return v21;
}

- (BOOL)leftBatteryValid
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide]== 1)
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryValid];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryValid];
  }
}

- (unsigned)leftBatteryLevel
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide]== 1)
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryLevel];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryLevel];
  }
}

- (BOOL)leftBatteryCharging
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide]== 1)
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryCharging];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryCharging];
  }
}

- (BOOL)rightBatteryValid
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide])
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryValid];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryValid];
  }
}

- (unsigned)rightBatteryLevel
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide])
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryLevel];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryLevel];
  }
}

- (BOOL)rightBatteryCharging
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide])
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryCharging];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryCharging];
  }
}

@end