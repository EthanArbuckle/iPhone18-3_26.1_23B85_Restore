@interface DSIODeviceIdentifier
+ (id)identifierForAccessoryModel:(unint64_t)a3;
+ (id)identifierForIOHIDDevice:(__IOHIDDevice *)a3;
- (DSIODeviceIdentifier)initWithAccessoryModel:(unint64_t)a3 usagePage:(unsigned int)a4 usage:(unsigned int)a5 vendorID:(unsigned int)a6 productID:(unsigned int)a7;
@end

@implementation DSIODeviceIdentifier

- (DSIODeviceIdentifier)initWithAccessoryModel:(unint64_t)a3 usagePage:(unsigned int)a4 usage:(unsigned int)a5 vendorID:(unsigned int)a6 productID:(unsigned int)a7
{
  v13.receiver = self;
  v13.super_class = DSIODeviceIdentifier;
  result = [(DSIODeviceIdentifier *)&v13 init];
  if (result)
  {
    result->_accessoryModel = a3;
    result->_usagePage = a4;
    result->_usage = a5;
    result->_vendorID = a6;
    result->_productID = a7;
  }

  return result;
}

+ (id)identifierForAccessoryModel:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 0;
      v7 = 133;
      v8 = 46;
      v9 = 1452;
      v10 = 5013;
      goto LABEL_25;
    case 1uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 1;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 5016;
      goto LABEL_25;
    case 2uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 2;
      v7 = 133;
      v8 = 46;
      v9 = 1452;
      v10 = 5017;
      goto LABEL_25;
    case 3uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 3;
      v7 = 65280;
      v8 = 11;
      v9 = 76;
      v10 = 546;
      goto LABEL_25;
    case 4uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 4;
      v7 = 65280;
      v8 = 11;
      v9 = 76;
      v10 = 332;
      goto LABEL_25;
    case 5uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 5;
      v7 = 65280;
      v8 = 11;
      v9 = 76;
      v10 = 482;
      goto LABEL_25;
    case 6uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 6;
      v7 = 65280;
      v8 = 11;
      v9 = 76;
      v10 = 1106;
      goto LABEL_25;
    case 7uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 7;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 616;
      goto LABEL_25;
    case 8uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 8;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 618;
      goto LABEL_25;
    case 9uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 9;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 619;
      goto LABEL_25;
    case 0xAuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 10;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 658;
      goto LABEL_25;
    case 0xBuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 11;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 659;
      goto LABEL_25;
    case 0xCuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 12;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 622;
      goto LABEL_25;
    case 0xDuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 13;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 623;
      goto LABEL_25;
    case 0xEuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 14;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 1105;
      goto LABEL_25;
    case 0xFuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 15;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 1104;
      goto LABEL_25;
    case 0x10uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 16;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 1108;
      goto LABEL_25;
    case 0x11uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 17;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 1109;
      goto LABEL_25;
    case 0x12uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 18;
      v7 = 65309;
      v8 = 45;
      v9 = 0;
      v10 = 0;
      goto LABEL_25;
    case 0x13uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 19;
      v7 = 65280;
      v8 = 88;
      v9 = 1452;
      v10 = 30723;
LABEL_25:
      v11 = [(DSIODeviceIdentifier *)v5 initWithAccessoryModel:v6 usagePage:v7 usage:v8 vendorID:v9 productID:v10, v3];

      break;
    default:
      v11 = 0;

      break;
  }

  return v11;
}

+ (id)identifierForIOHIDDevice:(__IOHIDDevice *)a3
{
  v4 = IOHIDDeviceGetProperty(a3, @"DeviceUsagePairs");
  v23 = IOHIDDeviceGetProperty(a3, @"VendorID");
  IOHIDDeviceGetProperty(a3, @"ProductID");
  v22 = v21 = v4;
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v26 = v6;
    v27 = v6;
    v24 = v6;
    v25 = v6;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"DeviceUsagePage"];
          v14 = [v12 objectForKeyedSubscript:@"DeviceUsage"];
          v15 = [DSIODeviceIdentifier identifierForAccessoryModel:v5];
          v16 = [v15 usagePage];
          if (v16 == [v13 unsignedIntValue])
          {
            v17 = [v15 usage];
            if (v17 == [v14 unsignedIntValue])
            {
              v18 = [v15 vendorID];
              if (v18 == [v23 unsignedIntValue])
              {
                v19 = [v15 productID];
                if (v19 == [v22 unsignedIntValue])
                {

                  goto LABEL_16;
                }
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    ++v5;
    v4 = v21;
    v6 = 0uLL;
  }

  while (v5 != 20);
  v15 = 0;
LABEL_16:

  return v15;
}

@end