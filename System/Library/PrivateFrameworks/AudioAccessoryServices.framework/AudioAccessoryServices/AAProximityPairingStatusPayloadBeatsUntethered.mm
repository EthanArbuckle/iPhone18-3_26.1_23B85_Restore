@interface AAProximityPairingStatusPayloadBeatsUntethered
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadBeatsUntethered

- (id)describeProperties
{
  v22.receiver = self;
  v22.super_class = AAProximityPairingStatusPayloadBeatsUntethered;
  describeProperties = [(AAProximityPairingStatusPayloadUntethered *)&v22 describeProperties];
  lidOpenCount = [(AAProximityPairingStatusPayloadBeatsUntethered *)self lidOpenCount];
  NSAppendPrintF_safe();
  v3 = describeProperties;

  lidClosed = [(AAProximityPairingStatusPayloadBeatsUntethered *)self lidClosed];
  v5 = "no";
  if (lidClosed)
  {
    v5 = "yes";
  }

  v18 = v5;
  NSAppendPrintF_safe();
  v6 = v3;

  caseVersion = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseVersion];
  v8 = "?";
  v9 = "B435";
  if (caseVersion != 1)
  {
    v9 = "?";
  }

  if (!caseVersion)
  {
    v9 = "B235";
  }

  v19 = v9;
  NSAppendPrintF_safe();
  v10 = v6;

  caseLedColor = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseLedColor];
  if (caseLedColor <= 3)
  {
    v8 = off_278CDE1B0[caseLedColor];
  }

  v20 = v8;
  NSAppendPrintF_safe();
  v12 = v10;

  caseLedStatus = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseLedStatus];
  if (caseLedStatus <= 3)
  {
    v14 = off_278CDE1D0[caseLedStatus];
  }

  NSAppendPrintF_safe();
  v15 = v12;

  return v12;
}

@end