@interface AMSDeviceOfferRegistrationItem
- (AMSDeviceOfferRegistrationItem)initWithDatabaseEntry:(id)entry;
- (AMSDeviceOfferRegistrationItem)initWithSerialNumber:(id)number model:(id)model validationData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRegistrationItem:(id)item;
- (NSString)description;
- (id)serializeToDictionary;
- (unint64_t)hash;
@end

@implementation AMSDeviceOfferRegistrationItem

- (AMSDeviceOfferRegistrationItem)initWithDatabaseEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy objectForKeyedSubscript:@"serialNumber"];
  if (v5)
  {
    v6 = [entryCopy objectForKeyedSubscript:@"model"];
    v7 = [entryCopy objectForKeyedSubscript:@"validationData"];
    self = [(AMSDeviceOfferRegistrationItem *)self initWithSerialNumber:v5 model:v6 validationData:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (AMSDeviceOfferRegistrationItem)initWithSerialNumber:(id)number model:(id)model validationData:(id)data
{
  numberCopy = number;
  modelCopy = model;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = AMSDeviceOfferRegistrationItem;
  v12 = [(AMSDeviceOfferRegistrationItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serialNumber, number);
    objc_storeStrong(&v13->_model, model);
    objc_storeStrong(&v13->_validationData, data);
  }

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  serialNumber = [(AMSDeviceOfferRegistrationItem *)self serialNumber];
  model = [(AMSDeviceOfferRegistrationItem *)self model];
  validationData = [(AMSDeviceOfferRegistrationItem *)self validationData];
  v7 = [v3 stringWithFormat:@"{serial: %@ model: %@ validationData:%@}", serialNumber, model, validationData];

  return v7;
}

- (id)serializeToDictionary
{
  v3 = objc_opt_new();
  model = [(AMSDeviceOfferRegistrationItem *)self model];
  [v3 setObject:model forKeyedSubscript:@"model"];

  serialNumber = [(AMSDeviceOfferRegistrationItem *)self serialNumber];
  [v3 setObject:serialNumber forKeyedSubscript:@"serialNumber"];

  validationData = [(AMSDeviceOfferRegistrationItem *)self validationData];
  [v3 setObject:validationData forKeyedSubscript:@"validationData"];

  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  model = [(AMSDeviceOfferRegistrationItem *)self model];
  v4 = [model hash];
  serialNumber = [(AMSDeviceOfferRegistrationItem *)self serialNumber];
  v6 = [serialNumber hash] ^ v4;
  validationData = [(AMSDeviceOfferRegistrationItem *)self validationData];
  v8 = [validationData hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(AMSDeviceOfferRegistrationItem *)self isEqualToRegistrationItem:equalCopy];
  }

  return v6;
}

- (BOOL)isEqualToRegistrationItem:(id)item
{
  itemCopy = item;
  model = [(AMSDeviceOfferRegistrationItem *)self model];
  if (model || ([itemCopy model], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    model2 = [(AMSDeviceOfferRegistrationItem *)self model];
    model3 = [itemCopy model];
    if (![model2 isEqualToString:model3])
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

  serialNumber = [(AMSDeviceOfferRegistrationItem *)self serialNumber];
  serialNumber2 = [itemCopy serialNumber];
  if (![serialNumber isEqualToString:serialNumber2])
  {

    v10 = 0;
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  validationData = [(AMSDeviceOfferRegistrationItem *)self validationData];
  if (validationData || ([itemCopy validationData], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v9;
    v20 = v3;
    validationData2 = [(AMSDeviceOfferRegistrationItem *)self validationData];
    validationData3 = [itemCopy validationData];
    v10 = [validationData2 isEqualToData:validationData3];

    if (validationData)
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
  if (!model)
  {
  }

  return v10;
}

@end