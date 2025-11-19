@interface AAManufacturerDataAdvertisement
+ (id)manufacturerDataWithData:(id)a3;
- (AAManufacturerDataAdvertisement)initWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAdvertisement:(id)a3;
- (id)_parsePayloads;
- (unint64_t)hash;
@end

@implementation AAManufacturerDataAdvertisement

- (id)_parsePayloads
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(AAManufacturerDataAdvertisement *)self manufacturerData];
  v5 = [(AAManufacturerDataAdvertisement *)self manufacturerData];
  v6 = [v4 subdataWithRange:{2, objc_msgSend(v5, "length") - 2}];

  if ([v6 length])
  {
    while (1)
    {
      v7 = [AAAdvertisementPayload advertisementPayloadWithData:v6];
      if (!v7)
      {
        break;
      }

      [v3 addObject:v7];
      v8 = [v7 payloadData];
      v9 = [v8 length];

      v10 = [v6 length];
      v11 = v10 - v9;
      if (v10 == v9)
      {
        break;
      }

      v12 = [v7 payloadData];
      v13 = [v6 subdataWithRange:{objc_msgSend(v12, "length"), v11}];

      v6 = v13;
      if (![v13 length])
      {
        goto LABEL_8;
      }
    }
  }

  v13 = v6;
LABEL_8:

  return v3;
}

+ (id)manufacturerDataWithData:(id)a3
{
  v3 = a3;
  v4 = [[AAManufacturerDataAdvertisement alloc] initWithData:v3];

  return v4;
}

- (AAManufacturerDataAdvertisement)initWithData:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AAManufacturerDataAdvertisement;
  v6 = [(AAManufacturerDataAdvertisement *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manufacturerData, a3);
    if ([(NSData *)v7->_manufacturerData length]<= 1)
    {
      [AAManufacturerDataAdvertisement initWithData:?];
      v11 = v14;
    }

    else
    {
      v8 = *[(NSData *)v7->_manufacturerData bytes];
      v7->_companyID = v8;
      if (v8 == 76)
      {
        v9 = [(AAManufacturerDataAdvertisement *)v7 _parsePayloads];
        payloads = v7->_payloads;
        v7->_payloads = v9;
      }

      v11 = v7;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToAdvertisement:(id)a3
{
  v4 = a3;
  v5 = [(AAManufacturerDataAdvertisement *)self manufacturerData];
  v6 = [v4 manufacturerData];

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
    v6 = [(AAManufacturerDataAdvertisement *)self isEqualToAdvertisement:v5];
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
  v2 = [(AAManufacturerDataAdvertisement *)self manufacturerData];
  v3 = [v2 hash];

  return v3;
}

- (uint64_t)initWithData:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (gLogCategory_AAManufacturerDataAdvertisement <= 90)
  {
    if (gLogCategory_AAManufacturerDataAdvertisement != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

@end