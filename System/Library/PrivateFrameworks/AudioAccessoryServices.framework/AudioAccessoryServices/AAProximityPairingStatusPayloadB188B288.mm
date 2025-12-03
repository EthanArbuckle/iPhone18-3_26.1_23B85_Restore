@interface AAProximityPairingStatusPayloadB188B288
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadB188B288

- (id)describeProperties
{
  v24.receiver = self;
  v24.super_class = AAProximityPairingStatusPayloadB188B288;
  describeProperties = [(AAProximityPairingStatusPayloadUntethered *)&v24 describeProperties];
  lidOpenCount = [(AAProximityPairingStatusPayloadB188B288 *)self lidOpenCount];
  NSAppendPrintF_safe();
  v3 = describeProperties;

  lidClosed = [(AAProximityPairingStatusPayloadB188B288 *)self lidClosed];
  v5 = "no";
  if (lidClosed)
  {
    v5 = "yes";
  }

  v19 = v5;
  NSAppendPrintF_safe();
  v6 = v3;

  caseVersion = [(AAProximityPairingStatusPayloadB188B288 *)self caseVersion];
  v8 = "B435";
  if (caseVersion != 1)
  {
    v8 = "?";
  }

  if (!caseVersion)
  {
    v8 = "B235";
  }

  v20 = v8;
  NSAppendPrintF_safe();
  v9 = v6;

  caseLedColor = [(AAProximityPairingStatusPayloadB188B288 *)self caseLedColor];
  v11 = "?";
  if (caseLedColor <= 3)
  {
    v11 = off_278CDE1F0[caseLedColor];
  }

  v21 = v11;
  NSAppendPrintF_safe();
  v12 = v9;

  caseLedStatus = [(AAProximityPairingStatusPayloadB188B288 *)self caseLedStatus];
  v14 = "Blinking";
  if (caseLedStatus != 1)
  {
    v14 = "?";
  }

  if (!caseLedStatus)
  {
    v14 = "Solid";
  }

  v22 = v14;
  NSAppendPrintF_safe();
  v15 = v12;

  [(AAProximityPairingStatusPayloadB188B288 *)self color];
  NSAppendPrintF_safe();
  v16 = v15;

  return v15;
}

@end