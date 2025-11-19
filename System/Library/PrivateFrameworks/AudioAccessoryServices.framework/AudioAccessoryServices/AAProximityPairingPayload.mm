@interface AAProximityPairingPayload
+ (id)proximityPairingPayloadWithData:(id)a3;
- (AAProximityPairingPayload)initWithData:(id)a3;
- (id)describeProperties;
@end

@implementation AAProximityPairingPayload

- (AAProximityPairingPayload)initWithData:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AAProximityPairingPayload;
  v5 = [(AAAdvertisementPayload *)&v16 initWithData:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = [(AAAdvertisementPayload *)v5 payloadData];
  v8 = [v7 length];

  if (v8 <= 4)
  {
    v14 = "missing data from Product Id bytes.";
LABEL_7:
    [(AAAdvertisementPayload *)v6 initLogParseError:v14];
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v9 = [(AAAdvertisementPayload *)v6 payloadData];
  v6->_pid = *([v9 bytes] + 3);

  v10 = [(AAAdvertisementPayload *)v6 payloadData];
  v11 = [v10 length];

  if (v11 <= 2)
  {
    v14 = "missing data from Sub-type byte.";
    goto LABEL_7;
  }

  v12 = [(AAAdvertisementPayload *)v6 payloadData];
  v6->_subType = *([v12 bytes] + 2);

  v13 = v6;
LABEL_9:

  return v13;
}

- (id)describeProperties
{
  v9.receiver = self;
  v9.super_class = AAProximityPairingPayload;
  v3 = [(AAAdvertisementPayload *)&v9 describeProperties];
  v4 = [(AAProximityPairingPayload *)self pid];
  if (v4)
  {
    v8 = v4;
    NSAppendPrintF_safe();
    v5 = v3;

    v3 = v5;
  }

  if ([(AAProximityPairingPayload *)self subType])
  {
    NSAppendPrintF_safe();
    v6 = v3;

    v3 = v6;
  }

  return v3;
}

+ (id)proximityPairingPayloadWithData:(id)a3
{
  v3 = a3;
  v4 = [[AAProximityPairingPayload alloc] initWithData:v3];
  v5 = [(AAProximityPairingPayload *)v4 subType];
  if (v5 == 6)
  {
    v6 = [[AAProximityPairingAccessoryStatusPayload alloc] initWithData:v3];
  }

  else if (v5 == 1)
  {
    v6 = [AAProximityPairingStatusPayloadGeneral proximityPairingStatusPayloadWithData:v3 pid:[(AAProximityPairingPayload *)v4 pid]];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

@end