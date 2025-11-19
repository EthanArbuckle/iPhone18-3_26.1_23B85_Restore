@interface FMDExtBluetoothManager
+ (id)classicPairedAppleAccessories;
+ (id)pairedAccessoryWithID:(id)a3;
@end

@implementation FMDExtBluetoothManager

+ (id)classicPairedAppleAccessories
{
  v28 = 0;
  v2 = [CBDiscovery devicesWithDiscoveryFlags:10485760 error:&v28];
  v3 = v28;
  v4 = [v2 count];
  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      v6 = [v2 count];
      *buf = 134217984;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CBDiscovery returned %lu devices.\n", buf, 0xCu);
    }

    if ([v2 count])
    {
      v7 = 0;
      do
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v2 objectAtIndexedSubscript:v7];
          v9 = [v8 name];
          *buf = 138412290;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found %@.\n", buf, 0xCu);
        }

        ++v7;
      }

      while (v7 < [v2 count]);
    }
  }

  else if (v5)
  {
    *buf = 138412290;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CBDiscovery returned 0 devices. Potential error: %@\n", buf, 0xCu);
  }

  v23 = v3;
  v10 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 deviceFlags];
        v18 = [v16 deviceFlags];
        if ([v16 vendorID] != 76 || (v17 & 0x2000000) != 0 || (v18 & 0x4000) == 0)
        {
          if ((v18 & 0x4000) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v16 name];
            *buf = 138412290;
            v31 = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ignore %@ because it is LE paired.\n", buf, 0xCu);
          }
        }

        else
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)pairedAccessoryWithID:(id)a3
{
  v3 = a3;
  +[FMDExtBluetoothManager classicPairedAppleAccessories];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 btAddressData];
        v10 = [v9 fm_MACAddressString];
        v11 = [FMDExtHelper deviceIDFromAddress:v10];

        if ([v11 isEqualToString:v3])
        {
          v5 = v8;

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

@end