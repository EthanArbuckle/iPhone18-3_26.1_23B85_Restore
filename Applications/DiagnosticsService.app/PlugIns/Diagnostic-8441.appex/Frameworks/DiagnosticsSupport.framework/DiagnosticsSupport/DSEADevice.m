@interface DSEADevice
+ (id)deviceWithModelNumber:(id)a3;
+ (id)deviceWithSerialNumber:(id)a3;
+ (id)devicesWithModelNumbers:(id)a3;
- (DSEADevice)initWithAccessory:(id)a3;
- (DSEADevice)initWithModelNumber:(id)a3;
- (DSEADevice)initWithSerialNumber:(id)a3;
- (id)information;
@end

@implementation DSEADevice

+ (id)deviceWithSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSerialNumber:v4];

  return v5;
}

- (DSEADevice)initWithSerialNumber:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v21 init];
  if (v5)
  {
    v6 = +[EAAccessoryManager sharedAccessoryManager];
    v7 = [v6 connectedAccessories];

    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v7;
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
            v14 = [v13 serialNumber];
            v15 = [v14 isEqualToString:v4];

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

+ (id)deviceWithModelNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithModelNumber:v4];

  return v5;
}

- (DSEADevice)initWithModelNumber:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v21 init];
  if (v5)
  {
    v6 = +[EAAccessoryManager sharedAccessoryManager];
    v7 = [v6 connectedAccessories];

    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v7;
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
            v14 = [v13 modelNumber];
            v15 = [v14 isEqualToString:v4];

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

+ (id)devicesWithModelNumbers:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[EAAccessoryManager sharedAccessoryManager];
  v6 = [v5 connectedAccessories];

  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v6;
    v7 = v6;
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
          v13 = [v12 modelNumber];
          v14 = [v3 containsObject:v13];

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

    v6 = v18;
  }

  v16 = [v4 copy];

  return v16;
}

- (DSEADevice)initWithAccessory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DSEADevice;
  v6 = [(DSEADevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_device, a3);
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
  v31 = [(DSEADevice *)self device];
  v30 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v31 accessoryCapabilities]);
  v33[0] = v30;
  v32[1] = @"firmwareRevision";
  v29 = [(DSEADevice *)self device];
  v3 = [v29 firmwareRevision];
  v28 = v3;
  if (!v3)
  {
    v3 = +[NSNull null];
  }

  v22 = v3;
  v33[1] = v3;
  v32[2] = @"hardwareRevision";
  v27 = [(DSEADevice *)self device];
  v4 = [v27 hardwareRevision];
  v5 = v4;
  if (!v4)
  {
    v4 = +[NSNull null];
  }

  v21 = v4;
  v33[2] = v4;
  v32[3] = @"MACAddress";
  v25 = [(DSEADevice *)self device];
  v6 = [v25 macAddress];
  v7 = v6;
  if (!v6)
  {
    v6 = +[NSNull null];
  }

  v26 = v5;
  v20 = v6;
  v33[3] = v6;
  v32[4] = @"modelNumber";
  v24 = [(DSEADevice *)self device];
  v8 = [v24 modelNumber];
  v9 = v8;
  if (!v8)
  {
    v8 = +[NSNull null];
  }

  v19 = v8;
  v33[4] = v8;
  v32[5] = @"name";
  v10 = [(DSEADevice *)self device];
  v11 = [v10 name];
  v12 = v11;
  if (!v11)
  {
    v12 = +[NSNull null];
  }

  v33[5] = v12;
  v32[6] = @"serialNumber";
  v13 = [(DSEADevice *)self device];
  v14 = [v13 serialNumber];
  v15 = v14;
  if (!v14)
  {
    v15 = +[NSNull null];
  }

  v33[6] = v15;
  v32[7] = @"connectionID";
  v16 = [(DSEADevice *)self device];
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 connectionID]);
  v33[7] = v17;
  v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:8];

  if (!v14)
  {
  }

  if (!v11)
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