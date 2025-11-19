@interface AAAdvertisementPayload
+ (id)advertisementPayloadWithData:(id)a3;
- (AAAdvertisementPayload)initWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPayload:(id)a3;
- (id)describeProperties;
- (id)description;
- (unint64_t)hash;
- (void)initLogParseError:(char *)a3;
@end

@implementation AAAdvertisementPayload

+ (id)advertisementPayloadWithData:(id)a3
{
  v3 = a3;
  v4 = [[AAAdvertisementPayload alloc] initWithData:v3];
  if ([(AAAdvertisementPayload *)v4 type]== 7)
  {
    v5 = [AAProximityPairingPayload proximityPairingPayloadWithData:v3];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (AAAdvertisementPayload)initWithData:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AAAdvertisementPayload;
  v5 = [(AAAdvertisementPayload *)&v12 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (![v4 length])
  {
    v10 = "missing data from Payload Type byte.";
LABEL_8:
    [(AAAdvertisementPayload *)v5 initLogParseError:v10];
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v5->_type = *[v4 bytes];
  if ([v4 length] <= 1)
  {
    v10 = "missing data from Payload Length byte.";
    goto LABEL_8;
  }

  v6 = *([v4 bytes] + 1) + 2;
  if ([v4 length] < v6)
  {
    [(AAAdvertisementPayload *)v5 initWithData:v4, v6, &v13];
    v9 = v13;
  }

  else
  {
    v7 = [v4 subdataWithRange:{0, v6}];
    payloadData = v5->_payloadData;
    v5->_payloadData = v7;

    v9 = v5;
  }

LABEL_10:

  return v9;
}

- (id)description
{
  v9 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v3 = 0;

  v10 = [(AAAdvertisementPayload *)self describeProperties];
  NSAppendPrintF_safe();
  v4 = v3;

  v5 = [(AAAdvertisementPayload *)self payloadData];
  v6 = [(AAAdvertisementPayload *)self payloadData];
  [v6 length];
  v11 = CUPrintNSDataHex();
  NSAppendPrintF_safe();
  v7 = v4;

  return v4;
}

- (id)describeProperties
{
  if ([(AAAdvertisementPayload *)self type])
  {
    NSAppendPrintF_safe();
    v2 = 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)initLogParseError:(char *)a3
{
  if (gLogCategory_AAManufacturerDataAdvertisement <= 90 && (gLogCategory_AAManufacturerDataAdvertisement != -1 || _LogCategory_Initialize()))
  {
    [AAAdvertisementPayload initLogParseError:];
  }
}

- (BOOL)isEqualToPayload:(id)a3
{
  v4 = a3;
  v5 = [(AAAdvertisementPayload *)self payloadData];
  v6 = [v4 payloadData];

  LOBYTE(v4) = [v5 isEqualToData:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(AAAdvertisementPayload *)self isEqualToPayload:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v2 = [(AAAdvertisementPayload *)self payloadData];
  v3 = [v2 hash];

  return v3;
}

- (void)initWithData:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (gLogCategory_AAManufacturerDataAdvertisement <= 90 && (gLogCategory_AAManufacturerDataAdvertisement != -1 || _LogCategory_Initialize()))
  {
    objc_opt_class();
    [a2 length];
    LogPrintF();
  }

  *a4 = 0;
}

@end