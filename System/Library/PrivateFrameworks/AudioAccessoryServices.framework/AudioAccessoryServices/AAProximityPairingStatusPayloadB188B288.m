@interface AAProximityPairingStatusPayloadB188B288
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadB188B288

- (id)describeProperties
{
  v24.receiver = self;
  v24.super_class = AAProximityPairingStatusPayloadB188B288;
  v23 = [(AAProximityPairingStatusPayloadUntethered *)&v24 describeProperties];
  v18 = [(AAProximityPairingStatusPayloadB188B288 *)self lidOpenCount];
  NSAppendPrintF_safe();
  v3 = v23;

  v4 = [(AAProximityPairingStatusPayloadB188B288 *)self lidClosed];
  v5 = "no";
  if (v4)
  {
    v5 = "yes";
  }

  v19 = v5;
  NSAppendPrintF_safe();
  v6 = v3;

  v7 = [(AAProximityPairingStatusPayloadB188B288 *)self caseVersion];
  v8 = "B435";
  if (v7 != 1)
  {
    v8 = "?";
  }

  if (!v7)
  {
    v8 = "B235";
  }

  v20 = v8;
  NSAppendPrintF_safe();
  v9 = v6;

  v10 = [(AAProximityPairingStatusPayloadB188B288 *)self caseLedColor];
  v11 = "?";
  if (v10 <= 3)
  {
    v11 = off_278CDE1F0[v10];
  }

  v21 = v11;
  NSAppendPrintF_safe();
  v12 = v9;

  v13 = [(AAProximityPairingStatusPayloadB188B288 *)self caseLedStatus];
  v14 = "Blinking";
  if (v13 != 1)
  {
    v14 = "?";
  }

  if (!v13)
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