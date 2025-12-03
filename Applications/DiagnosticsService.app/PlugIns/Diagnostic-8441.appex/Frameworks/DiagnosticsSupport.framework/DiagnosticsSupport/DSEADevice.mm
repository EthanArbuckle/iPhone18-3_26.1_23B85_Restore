@interface DSEADevice
+ (id)deviceWithModelNumber:(id)number;
+ (id)deviceWithSerialNumber:(id)number;
+ (id)devicesWithModelNumbers:(id)numbers;
- (DSEADevice)initWithAccessory:(id)accessory;
- (DSEADevice)initWithModelNumber:(id)number;
- (DSEADevice)initWithSerialNumber:(id)number;
- (id)information;
@end

@implementation DSEADevice

+ (id)deviceWithSerialNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithSerialNumber:numberCopy];

  return v5;
}

- (DSEADevice)initWithSerialNumber:(id)number
{
  numberCopy = number;
  v21.receiver = self;
  v21.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v21 init];
  if (v5)
  {
    v6 = +[EAAccessoryManager sharedAccessoryManager];
    connectedAccessories = [v6 connectedAccessories];

    if (connectedAccessories)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = connectedAccessories;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            serialNumber = [v13 serialNumber];
            v15 = [serialNumber isEqualToString:numberCopy];

            if (v15)
            {
              objc_storeStrong(&v5->_device, v13);
              goto LABEL_13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    if (!v5->_device)
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (id)deviceWithModelNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithModelNumber:numberCopy];

  return v5;
}

- (DSEADevice)initWithModelNumber:(id)number
{
  numberCopy = number;
  v21.receiver = self;
  v21.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v21 init];
  if (v5)
  {
    v6 = +[EAAccessoryManager sharedAccessoryManager];
    connectedAccessories = [v6 connectedAccessories];

    if (connectedAccessories)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = connectedAccessories;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            modelNumber = [v13 modelNumber];
            v15 = [modelNumber isEqualToString:numberCopy];

            if (v15)
            {
              objc_storeStrong(&v5->_device, v13);
              goto LABEL_13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    if (!v5->_device)
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (id)devicesWithModelNumbers:(id)numbers
{
  numbersCopy = numbers;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[EAAccessoryManager sharedAccessoryManager];
  connectedAccessories = [v5 connectedAccessories];

  if (connectedAccessories)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = connectedAccessories;
    v7 = connectedAccessories;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          modelNumber = [v12 modelNumber];
          v14 = [numbersCopy containsObject:modelNumber];

          if (v14)
          {
            v15 = [[DSEADevice alloc] initWithAccessory:v12];
            if (v15)
            {
              [v4 addObject:v15];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    connectedAccessories = v18;
  }

  v16 = [v4 copy];

  return v16;
}

- (DSEADevice)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v9.receiver = self;
  v9.super_class = DSEADevice;
  v6 = [(DSEADevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (accessoryCopy)
    {
      objc_storeStrong(&v6->_device, accessory);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)information
{
  v32[0] = @"capabilities";
  device = [(DSEADevice *)self device];
  v30 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [device accessoryCapabilities]);
  v33[0] = v30;
  v32[1] = @"firmwareRevision";
  device2 = [(DSEADevice *)self device];
  firmwareRevision = [device2 firmwareRevision];
  v28 = firmwareRevision;
  if (!firmwareRevision)
  {
    firmwareRevision = +[NSNull null];
  }

  v22 = firmwareRevision;
  v33[1] = firmwareRevision;
  v32[2] = @"hardwareRevision";
  device3 = [(DSEADevice *)self device];
  hardwareRevision = [device3 hardwareRevision];
  v5 = hardwareRevision;
  if (!hardwareRevision)
  {
    hardwareRevision = +[NSNull null];
  }

  v21 = hardwareRevision;
  v33[2] = hardwareRevision;
  v32[3] = @"MACAddress";
  device4 = [(DSEADevice *)self device];
  macAddress = [device4 macAddress];
  v7 = macAddress;
  if (!macAddress)
  {
    macAddress = +[NSNull null];
  }

  v26 = v5;
  v20 = macAddress;
  v33[3] = macAddress;
  v32[4] = @"modelNumber";
  device5 = [(DSEADevice *)self device];
  modelNumber = [device5 modelNumber];
  v9 = modelNumber;
  if (!modelNumber)
  {
    modelNumber = +[NSNull null];
  }

  v19 = modelNumber;
  v33[4] = modelNumber;
  v32[5] = @"name";
  device6 = [(DSEADevice *)self device];
  name = [device6 name];
  v12 = name;
  if (!name)
  {
    v12 = +[NSNull null];
  }

  v33[5] = v12;
  v32[6] = @"serialNumber";
  device7 = [(DSEADevice *)self device];
  serialNumber = [device7 serialNumber];
  v15 = serialNumber;
  if (!serialNumber)
  {
    v15 = +[NSNull null];
  }

  v33[6] = v15;
  v32[7] = @"connectionID";
  device8 = [(DSEADevice *)self device];
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [device8 connectionID]);
  v33[7] = v17;
  v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:8];

  if (!serialNumber)
  {
  }

  if (!name)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v26)
  {
  }

  if (!v28)
  {
  }

  return v23;
}

@end