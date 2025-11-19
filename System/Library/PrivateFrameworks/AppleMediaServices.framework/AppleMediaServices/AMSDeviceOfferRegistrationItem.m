@interface AMSDeviceOfferRegistrationItem
- (AMSDeviceOfferRegistrationItem)initWithDatabaseEntry:(id)a3;
- (AMSDeviceOfferRegistrationItem)initWithSerialNumber:(id)a3 model:(id)a4 validationData:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRegistrationItem:(id)a3;
- (NSString)description;
- (id)serializeToDictionary;
- (unint64_t)hash;
@end

@implementation AMSDeviceOfferRegistrationItem

- (AMSDeviceOfferRegistrationItem)initWithDatabaseEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"serialNumber"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"model"];
    v7 = [v4 objectForKeyedSubscript:@"validationData"];
    self = [(AMSDeviceOfferRegistrationItem *)self initWithSerialNumber:v5 model:v6 validationData:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (AMSDeviceOfferRegistrationItem)initWithSerialNumber:(id)a3 model:(id)a4 validationData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMSDeviceOfferRegistrationItem;
  v12 = [(AMSDeviceOfferRegistrationItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serialNumber, a3);
    objc_storeStrong(&v13->_model, a4);
    objc_storeStrong(&v13->_validationData, a5);
  }

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AMSDeviceOfferRegistrationItem *)self serialNumber];
  v5 = [(AMSDeviceOfferRegistrationItem *)self model];
  v6 = [(AMSDeviceOfferRegistrationItem *)self validationData];
  v7 = [v3 stringWithFormat:@"{serial: %@ model: %@ validationData:%@}", v4, v5, v6];

  return v7;
}

- (id)serializeToDictionary
{
  v3 = objc_opt_new();
  v4 = [(AMSDeviceOfferRegistrationItem *)self model];
  [v3 setObject:v4 forKeyedSubscript:@"model"];

  v5 = [(AMSDeviceOfferRegistrationItem *)self serialNumber];
  [v3 setObject:v5 forKeyedSubscript:@"serialNumber"];

  v6 = [(AMSDeviceOfferRegistrationItem *)self validationData];
  [v3 setObject:v6 forKeyedSubscript:@"validationData"];

  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(AMSDeviceOfferRegistrationItem *)self model];
  v4 = [v3 hash];
  v5 = [(AMSDeviceOfferRegistrationItem *)self serialNumber];
  v6 = [v5 hash] ^ v4;
  v7 = [(AMSDeviceOfferRegistrationItem *)self validationData];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(AMSDeviceOfferRegistrationItem *)self isEqualToRegistrationItem:v4];
  }

  return v6;
}

- (BOOL)isEqualToRegistrationItem:(id)a3
{
  v7 = a3;
  v8 = [(AMSDeviceOfferRegistrationItem *)self model];
  if (v8 || ([v7 model], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(AMSDeviceOfferRegistrationItem *)self model];
    v5 = [v7 model];
    if (![v4 isEqualToString:v5])
    {
      v10 = 0;
      goto LABEL_14;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = [(AMSDeviceOfferRegistrationItem *)self serialNumber];
  v12 = [v7 serialNumber];
  if (![v11 isEqualToString:v12])
  {

    v10 = 0;
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = [(AMSDeviceOfferRegistrationItem *)self validationData];
  if (v13 || ([v7 validationData], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v9;
    v20 = v3;
    v14 = [(AMSDeviceOfferRegistrationItem *)self validationData];
    v15 = [v7 validationData];
    v10 = [v14 isEqualToData:v15];

    if (v13)
    {

      v3 = v20;
      if ((v19 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_14:

      goto LABEL_15;
    }

    v3 = v20;
    LOBYTE(v9) = v19;
    v17 = v18;
  }

  else
  {
    v17 = 0;
    v10 = 1;
  }

  if (v9)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (!v8)
  {
  }

  return v10;
}

@end