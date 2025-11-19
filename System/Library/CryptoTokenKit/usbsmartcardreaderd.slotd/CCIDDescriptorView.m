@interface CCIDDescriptorView
- (CCIDDescriptorView)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (id)description;
- (id)levelExchangeToString:(int64_t)a3;
- (id)supportedProtocols;
- (id)trueOrFalse:(BOOL)a3;
- (id)voltageSupport;
- (int64_t)levelOfExchange;
- (unsigned)bClassEnvelope;
- (unsigned)bClassGetResponse;
- (unsigned)bDescriptorType;
- (unsigned)bLength;
- (unsigned)bMaxCCIDBusySlots;
- (unsigned)bMaxSlotIndex;
- (unsigned)bNumClockSupported;
- (unsigned)bNumDataRatesSupported;
- (unsigned)bPINSupport;
- (unsigned)bVoltageSupport;
- (unsigned)bcdCCID;
- (unsigned)dwDataRate;
- (unsigned)dwDefaultClock;
- (unsigned)dwFeatures;
- (unsigned)dwMaxCCIDMessageLength;
- (unsigned)dwMaxDataRate;
- (unsigned)dwMaxIFSD;
- (unsigned)dwMaximumClock;
- (unsigned)dwMechanical;
- (unsigned)dwProtocols;
- (unsigned)dwSynchProtocols;
- (unsigned)wLcdLayout;
@end

@implementation CCIDDescriptorView

- (CCIDDescriptorView)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  if (+[CCIDDescriptorView length]!= a4)
  {
    [NSException raise:NSInvalidArgumentException format:@"Invalid length: %lu", a4];
  }

  v7 = [NSData dataWithBytes:a3 length:a4];
  v10.receiver = self;
  v10.super_class = CCIDDescriptorView;
  v8 = [(TKDataView *)&v10 initWithData:v7];

  return v8;
}

- (id)levelExchangeToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_100024B08 + a3);
  }
}

- (id)trueOrFalse:(BOOL)a3
{
  if (a3)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

- (id)supportedProtocols
{
  v3 = +[NSMutableString string];
  [v3 appendString:@"{"];
  if ([(CCIDDescriptorView *)self isSupported:1])
  {
    [v3 appendString:@" TKSmartCardProtocolT0"];
  }

  if ([(CCIDDescriptorView *)self isSupported:2])
  {
    [v3 appendString:@" TKSmartCardProtocolT1"];
  }

  [v3 appendString:@" }"];

  return v3;
}

- (id)voltageSupport
{
  v3 = +[NSMutableString string];
  [v3 appendString:@"{"];
  if (([(CCIDDescriptorView *)self bVoltageSupport]& 1) != 0)
  {
    [v3 appendString:@" ClassA"];
  }

  if (([(CCIDDescriptorView *)self bVoltageSupport]& 1) != 0)
  {
    [v3 appendString:@" ClassB"];
  }

  if (([(CCIDDescriptorView *)self bVoltageSupport]& 1) != 0)
  {
    [v3 appendString:@" ClassC"];
  }

  [v3 appendString:@" }"];

  return v3;
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendString:@"{\n"];
  [v3 appendFormat:@"    bLength: 0x%.2x\n", -[CCIDDescriptorView bLength](self, "bLength")];
  [v3 appendFormat:@"    bDescriptorType: 0x%.2x\n", -[CCIDDescriptorView bDescriptorType](self, "bDescriptorType")];
  [v3 appendFormat:@"    bcdCCID: 0x%.4x\n", -[CCIDDescriptorView bcdCCID](self, "bcdCCID")];
  [v3 appendFormat:@"    bMaxSlotIndex: %d\n", -[CCIDDescriptorView bMaxSlotIndex](self, "bMaxSlotIndex")];
  v4 = [(CCIDDescriptorView *)self voltageSupport];
  [v3 appendFormat:@"    bVoltageSupport: %@\n", v4];

  v5 = [(CCIDDescriptorView *)self supportedProtocols];
  [v3 appendFormat:@"    dwProtocols: %@\n", v5];

  [v3 appendFormat:@"    bNumClockSupported: %d\n", -[CCIDDescriptorView bNumClockSupported](self, "bNumClockSupported")];
  [v3 appendFormat:@"    defaultClock: %.1f MHz\n", -[CCIDDescriptorView dwDefaultClock](self, "dwDefaultClock") * 0.001];
  [v3 appendFormat:@"    dwMaximumClock: %.1f MHz\n", -[CCIDDescriptorView dwMaximumClock](self, "dwMaximumClock") * 0.001];
  [v3 appendFormat:@"    bNumDataRatesSupported: %d\n", -[CCIDDescriptorView bNumDataRatesSupported](self, "bNumDataRatesSupported")];
  [v3 appendFormat:@"    dwDataRate: %.3f kbps\n", -[CCIDDescriptorView dwDataRate](self, "dwDataRate") * 0.001];
  [v3 appendFormat:@"    dwMaxDataRate: %.3f kbps\n", -[CCIDDescriptorView dwMaxDataRate](self, "dwMaxDataRate") * 0.001];
  [v3 appendFormat:@"    dwMaxIFSD: %d\n", -[CCIDDescriptorView dwMaxIFSD](self, "dwMaxIFSD")];
  [v3 appendFormat:@"    dwSynchProtocols: %d\n", -[CCIDDescriptorView dwSynchProtocols](self, "dwSynchProtocols")];
  [v3 appendFormat:@"    dwMechanical: %d\n\n", -[CCIDDescriptorView dwMechanical](self, "dwMechanical")];
  [v3 appendFormat:@"    dwFeatures 0x%.8x\n", -[CCIDDescriptorView dwFeatures](self, "dwFeatures")];
  v6 = [(CCIDDescriptorView *)self levelExchangeToString:[(CCIDDescriptorView *)self levelOfExchange]];
  [v3 appendFormat:@"        levelOfExchange %@\n", v6];

  v7 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self automaticParameterConfigurationBasedOnATR]];
  [v3 appendFormat:@"        automaticParameterConfigurationBasedOnATR %@\n", v7];

  v8 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self automaticICCActivation]];
  [v3 appendFormat:@"        automaticActivation %@\n", v8];

  v9 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self automaticICCVoltageSelection]];
  [v3 appendFormat:@"        automaticICCVoltageSelection %@\n", v9];

  v10 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self automaticICCClockFrequency]];
  [v3 appendFormat:@"        automaticICCClockFrequency %@\n", v10];

  v11 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self automaticBaudRateChange]];
  [v3 appendFormat:@"        automaticBaudRateChange %@\n", v11];

  v12 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self automaticParametersNegotation]];
  [v3 appendFormat:@"        automaticParametersNegotation %@\n", v12];

  v13 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self automaticPPS]];
  [v3 appendFormat:@"        automaticPPS %@\n", v13];

  v14 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self canSetClockStop]];
  [v3 appendFormat:@"        canSetClockStop %@\n", v14];

  v15 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self acceptedNAD]];
  [v3 appendFormat:@"        acceptedNAD %@\n", v15];

  v16 = [(CCIDDescriptorView *)self trueOrFalse:[(CCIDDescriptorView *)self automaticIFSD]];
  [v3 appendFormat:@"        automaticIFSD %@\n\n", v16];

  [v3 appendFormat:@"    dwMaxCCIDMessageLength: %d\n", -[CCIDDescriptorView dwMaxCCIDMessageLength](self, "dwMaxCCIDMessageLength")];
  [v3 appendFormat:@"    bClassGetResponse: %d\n", -[CCIDDescriptorView bClassGetResponse](self, "bClassGetResponse")];
  [v3 appendFormat:@"    bClassEnvelope: %d\n", -[CCIDDescriptorView bClassEnvelope](self, "bClassEnvelope")];
  [v3 appendFormat:@"    wLcdLayout: %d\n", -[CCIDDescriptorView wLcdLayout](self, "wLcdLayout")];
  [v3 appendFormat:@"    bPINSupport: %d\n", -[CCIDDescriptorView bPINSupport](self, "bPINSupport")];
  [v3 appendFormat:@"    bMaxCCIDBusySlots: %d\n", -[CCIDDescriptorView bMaxCCIDBusySlots](self, "bMaxCCIDBusySlots")];
  [v3 appendString:@"}\n"];

  return v3;
}

- (unsigned)bLength
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{0, 1}];

  return v4;
}

- (unsigned)bDescriptorType
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{1, 1}];

  return v4;
}

- (unsigned)bcdCCID
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{2, 2}];

  return v4;
}

- (unsigned)bMaxSlotIndex
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{4, 1}];

  return v4;
}

- (unsigned)bVoltageSupport
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{5, 1}];

  return v4;
}

- (unsigned)dwProtocols
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{6, 4}];

  return v4;
}

- (unsigned)dwDefaultClock
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{10, 4}];

  return v4;
}

- (unsigned)dwMaximumClock
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{14, 4}];

  return v4;
}

- (unsigned)bNumClockSupported
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{18, 1}];

  return v4;
}

- (unsigned)dwDataRate
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{19, 4}];

  return v4;
}

- (unsigned)dwMaxDataRate
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{23, 4}];

  return v4;
}

- (unsigned)bNumDataRatesSupported
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{27, 1}];

  return v4;
}

- (unsigned)dwMaxIFSD
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{28, 4}];

  return v4;
}

- (unsigned)dwSynchProtocols
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{32, 4}];

  return v4;
}

- (unsigned)dwMechanical
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{36, 4}];

  return v4;
}

- (unsigned)dwFeatures
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{40, 4}];

  return v4;
}

- (unsigned)dwMaxCCIDMessageLength
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{44, 4}];

  return v4;
}

- (unsigned)bClassGetResponse
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{48, 1}];

  return v4;
}

- (unsigned)bClassEnvelope
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{49, 1}];

  return v4;
}

- (unsigned)wLcdLayout
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{50, 2}];

  return v4;
}

- (unsigned)bPINSupport
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{52, 1}];

  return v4;
}

- (unsigned)bMaxCCIDBusySlots
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{53, 1}];

  return v4;
}

- (int64_t)levelOfExchange
{
  if (([(CCIDDescriptorView *)self dwFeatures]& 0x10000) != 0)
  {
    return 1;
  }

  if (([(CCIDDescriptorView *)self dwFeatures]& 0x20000) != 0)
  {
    return 2;
  }

  if (([(CCIDDescriptorView *)self dwFeatures]& 0x40000) != 0)
  {
    return 3;
  }

  return 0;
}

@end