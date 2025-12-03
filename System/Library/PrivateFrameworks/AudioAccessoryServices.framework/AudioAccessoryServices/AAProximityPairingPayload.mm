@interface AAProximityPairingPayload
+ (id)proximityPairingPayloadWithData:(id)data;
- (AAProximityPairingPayload)initWithData:(id)data;
- (id)describeProperties;
@end

@implementation AAProximityPairingPayload

- (AAProximityPairingPayload)initWithData:(id)data
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = AAProximityPairingPayload;
  v5 = [(AAAdvertisementPayload *)&v16 initWithData:dataCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  payloadData = [(AAAdvertisementPayload *)v5 payloadData];
  v8 = [payloadData length];

  if (v8 <= 4)
  {
    v14 = "missing data from Product Id bytes.";
LABEL_7:
    [(AAAdvertisementPayload *)v6 initLogParseError:v14];
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  payloadData2 = [(AAAdvertisementPayload *)v6 payloadData];
  v6->_pid = *([payloadData2 bytes] + 3);

  payloadData3 = [(AAAdvertisementPayload *)v6 payloadData];
  v11 = [payloadData3 length];

  if (v11 <= 2)
  {
    v14 = "missing data from Sub-type byte.";
    goto LABEL_7;
  }

  payloadData4 = [(AAAdvertisementPayload *)v6 payloadData];
  v6->_subType = *([payloadData4 bytes] + 2);

  v13 = v6;
LABEL_9:

  return v13;
}

- (id)describeProperties
{
  v9.receiver = self;
  v9.super_class = AAProximityPairingPayload;
  describeProperties = [(AAAdvertisementPayload *)&v9 describeProperties];
  v4 = [(AAProximityPairingPayload *)self pid];
  if (v4)
  {
    v8 = v4;
    NSAppendPrintF_safe();
    v5 = describeProperties;

    describeProperties = v5;
  }

  if ([(AAProximityPairingPayload *)self subType])
  {
    NSAppendPrintF_safe();
    v6 = describeProperties;

    describeProperties = v6;
  }

  return describeProperties;
}

+ (id)proximityPairingPayloadWithData:(id)data
{
  dataCopy = data;
  v4 = [[AAProximityPairingPayload alloc] initWithData:dataCopy];
  subType = [(AAProximityPairingPayload *)v4 subType];
  if (subType == 6)
  {
    v6 = [[AAProximityPairingAccessoryStatusPayload alloc] initWithData:dataCopy];
  }

  else if (subType == 1)
  {
    v6 = [AAProximityPairingStatusPayloadGeneral proximityPairingStatusPayloadWithData:dataCopy pid:[(AAProximityPairingPayload *)v4 pid]];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

@end