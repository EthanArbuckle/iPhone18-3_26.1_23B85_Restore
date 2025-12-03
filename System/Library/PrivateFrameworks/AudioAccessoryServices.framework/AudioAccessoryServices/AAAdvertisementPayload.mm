@interface AAAdvertisementPayload
+ (id)advertisementPayloadWithData:(id)data;
- (AAAdvertisementPayload)initWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPayload:(id)payload;
- (id)describeProperties;
- (id)description;
- (unint64_t)hash;
- (void)initLogParseError:(char *)error;
@end

@implementation AAAdvertisementPayload

+ (id)advertisementPayloadWithData:(id)data
{
  dataCopy = data;
  v4 = [[AAAdvertisementPayload alloc] initWithData:dataCopy];
  if ([(AAAdvertisementPayload *)v4 type]== 7)
  {
    v5 = [AAProximityPairingPayload proximityPairingPayloadWithData:dataCopy];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (AAAdvertisementPayload)initWithData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = AAAdvertisementPayload;
  v5 = [(AAAdvertisementPayload *)&v12 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (![dataCopy length])
  {
    v10 = "missing data from Payload Type byte.";
LABEL_8:
    [(AAAdvertisementPayload *)v5 initLogParseError:v10];
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v5->_type = *[dataCopy bytes];
  if ([dataCopy length] <= 1)
  {
    v10 = "missing data from Payload Length byte.";
    goto LABEL_8;
  }

  v6 = *([dataCopy bytes] + 1) + 2;
  if ([dataCopy length] < v6)
  {
    [(AAAdvertisementPayload *)v5 initWithData:dataCopy, v6, &v13];
    v9 = v13;
  }

  else
  {
    v7 = [dataCopy subdataWithRange:{0, v6}];
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

  describeProperties = [(AAAdvertisementPayload *)self describeProperties];
  NSAppendPrintF_safe();
  v4 = v3;

  payloadData = [(AAAdvertisementPayload *)self payloadData];
  payloadData2 = [(AAAdvertisementPayload *)self payloadData];
  [payloadData2 length];
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

- (void)initLogParseError:(char *)error
{
  if (gLogCategory_AAManufacturerDataAdvertisement <= 90 && (gLogCategory_AAManufacturerDataAdvertisement != -1 || _LogCategory_Initialize()))
  {
    [AAAdvertisementPayload initLogParseError:];
  }
}

- (BOOL)isEqualToPayload:(id)payload
{
  payloadCopy = payload;
  payloadData = [(AAAdvertisementPayload *)self payloadData];
  payloadData2 = [payloadCopy payloadData];

  LOBYTE(payloadCopy) = [payloadData isEqualToData:payloadData2];
  return payloadCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
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
  payloadData = [(AAAdvertisementPayload *)self payloadData];
  v3 = [payloadData hash];

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