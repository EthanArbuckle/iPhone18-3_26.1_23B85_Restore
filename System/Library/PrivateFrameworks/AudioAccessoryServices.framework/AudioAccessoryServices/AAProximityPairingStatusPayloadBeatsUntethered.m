@interface AAProximityPairingStatusPayloadBeatsUntethered
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadBeatsUntethered

- (id)describeProperties
{
  v22.receiver = self;
  v22.super_class = AAProximityPairingStatusPayloadBeatsUntethered;
  v21 = [(AAProximityPairingStatusPayloadUntethered *)&v22 describeProperties];
  v17 = [(AAProximityPairingStatusPayloadBeatsUntethered *)self lidOpenCount];
  NSAppendPrintF_safe();
  v3 = v21;

  v4 = [(AAProximityPairingStatusPayloadBeatsUntethered *)self lidClosed];
  v5 = "no";
  if (v4)
  {
    v5 = "yes";
  }

  v18 = v5;
  NSAppendPrintF_safe();
  v6 = v3;

  v7 = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseVersion];
  v8 = "?";
  v9 = "B435";
  if (v7 != 1)
  {
    v9 = "?";
  }

  if (!v7)
  {
    v9 = "B235";
  }

  v19 = v9;
  NSAppendPrintF_safe();
  v10 = v6;

  v11 = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseLedColor];
  if (v11 <= 3)
  {
    v8 = off_278CDE1B0[v11];
  }

  v20 = v8;
  NSAppendPrintF_safe();
  v12 = v10;

  v13 = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseLedStatus];
  if (v13 <= 3)
  {
    v14 = off_278CDE1D0[v13];
  }

  NSAppendPrintF_safe();
  v15 = v12;

  return v12;
}

@end