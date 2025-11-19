@interface AAProximityPairingStatusPayloadB444
- (id)describeProperties;
- (unsigned)colorBest;
@end

@implementation AAProximityPairingStatusPayloadB444

- (id)describeProperties
{
  v10.receiver = self;
  v10.super_class = AAProximityPairingStatusPayloadB444;
  v9 = [(AAProximityPairingStatusPayloadBeatsUntethered *)&v10 describeProperties];
  v7 = [(AAProximityPairingStatusPayloadB444 *)self leftColor];
  NSAppendPrintF_safe();
  v3 = v9;

  v8 = [(AAProximityPairingStatusPayloadB444 *)self rightColor];
  NSAppendPrintF_safe();
  v4 = v3;

  [(AAProximityPairingStatusPayloadB444 *)self caseColor];
  NSAppendPrintF_safe();
  v5 = v4;

  return v4;
}

- (unsigned)colorBest
{
  if ([(AAProximityPairingPayload *)self pid]== 8209)
  {
    return 1;
  }

  if ([(AAProximityPairingStatusPayloadB444 *)self leftColor]== 15)
  {
    if ([(AAProximityPairingStatusPayloadB444 *)self rightColor]== 15)
    {
      return 1;
    }

    return [(AAProximityPairingStatusPayloadB444 *)self rightColor];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadB444 *)self leftColor];
  }
}

@end