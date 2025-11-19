@interface AMDDeviceStorage
+ (id)performStorageUpdateWithPayload:(id)a3;
+ (id)queryDeviceStorageWithError:(id *)a3;
@end

@implementation AMDDeviceStorage

+ (id)queryDeviceStorageWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  GetDeviceSpace(&v17, &v16, &v15);
  if (v15)
  {
    v14 = MEMORY[0x277D82BE0](@"Device storage query failed");
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v24, v14);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "%@", v24, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v8 = [AMDError allocError:29 withMessage:v14];
    v3 = v8;
    *v18 = v8;
    v21 = 0;
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v17 / 1000000000.0];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v16 / 1000000000.0];
    v6 = MEMORY[0x277CCABB0];
    v7 = +[AMDMiscHelpers getCurrentEpochSeconds];
    v9 = [v6 numberWithLongLong:{1000 * objc_msgSend(v7, "longLongValue")}];
    MEMORY[0x277D82BD8](v7);
    v22[0] = @"time";
    v23[0] = v9;
    v22[1] = @"totalDeviceCapacityGB";
    v23[1] = v11;
    v22[2] = @"availableDeviceCapacityGB";
    v23[2] = v10;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  *MEMORY[0x277D85DE8];
  v4 = v21;

  return v4;
}

+ (id)performStorageUpdateWithPayload:(id)a3
{
  v53[2] = *MEMORY[0x277D85DE8];
  v49 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = MEMORY[0x277D82BE0](location[0]);
      v44 = [v45 objectForKey:@"isEnabled"];
      if (v44 && ([v44 BOOLValue] & 1) != 0)
      {
        v43 = [v45 objectForKey:@"storageUpdateCadence"];
        if (v43)
        {
          v42 = 0;
          v40 = 0;
          v21 = [AMDKVStore fetchValueForKey:@"device_storage_query_time_dict" error:&v40];
          objc_storeStrong(&v42, v40);
          v41 = v21;
          v39 = [v21 objectForKey:@"queryTimeMs"];
          if (v42)
          {
            v19 = v47;
            v20 = [v42 localizedDescription];
            [v19 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v20);
            v50 = MEMORY[0x277D82BE0](v47);
            v46 = 1;
          }

          else
          {
            if (!v39)
            {
              objc_storeStrong(&v39, &unk_2852BA7E8);
            }

            v17 = +[AMDMiscHelpers getCurrentEpochSeconds];
            v16 = [v17 longLongValue];
            v18 = 1000 * (v16 - (86400 * [v43 intValue]));
            MEMORY[0x277D82BD8](v17);
            v38[1] = v18;
            if ([v39 longLongValue] > v18)
            {
              [v47 setObject:@"Storage data is current" forKey:@"storageUpdateStatus"];
              v50 = MEMORY[0x277D82BE0](v47);
              v46 = 1;
            }

            else
            {
              v38[0] = 0;
              v36 = 0;
              v15 = [v49 queryDeviceStorageWithError:&v36];
              objc_storeStrong(v38, v36);
              v37 = v15;
              if (v38[0])
              {
                v13 = v47;
                v14 = [v38[0] localizedDescription];
                [v13 setObject:? forKey:?];
                MEMORY[0x277D82BD8](v14);
                v50 = MEMORY[0x277D82BE0](v47);
                v46 = 1;
              }

              else
              {
                v35 = 0;
                v33 = 0;
                v12 = [AMDDataSync fetchDeviceID:&v33];
                objc_storeStrong(&v35, v33);
                v34 = v12;
                if (v35 || !v34)
                {
                  v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  v31 = 16;
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    log = v32;
                    type = v31;
                    __os_log_helper_16_0_0(v30);
                    _os_log_error_impl(&dword_240CB9000, log, type, "DeviceId could not be retrieved", v30, 2u);
                  }

                  objc_storeStrong(&v32, 0);
                  objc_storeStrong(&v34, @"undefined");
                }

                v29 = [v37 mutableCopy];
                [v29 setObject:v34 forKey:0x2852ACD28];
                v28 = [v45 objectForKey:@"deviceStorageDataStreamName"];
                if (v28)
                {
                  v52[0] = 0x2852A9148;
                  v53[0] = v28;
                  v52[1] = 0x2852A9128;
                  v51 = v29;
                  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
                  v53[1] = v8;
                  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
                  MEMORY[0x277D82BD8](v8);
                  v26 = 0;
                  obj = 0;
                  v9 = [AMDSQLite saveEvents:v27 error:&obj];
                  objc_storeStrong(&v26, obj);
                  v25 = v9;
                  if (v26)
                  {
                    v6 = v47;
                    v7 = [v26 localizedDescription];
                    [v6 setObject:? forKey:?];
                    MEMORY[0x277D82BD8](v7);
                    v50 = MEMORY[0x277D82BE0](v47);
                    v46 = 1;
                  }

                  else
                  {
                    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
                    v5 = [v29 objectForKey:@"time"];
                    [v23 setObject:? forKey:?];
                    MEMORY[0x277D82BD8](v5);
                    v22 = v42;
                    [AMDKVStore setValue:v23 forKey:@"device_storage_query_time_dict" error:&v22];
                    objc_storeStrong(&v42, v22);
                    if (v42)
                    {
                      [v47 setObject:@"Storage query time not updated" forKey:@"deviceStorageUpdateError"];
                    }

                    [v47 setObject:v25 forKey:@"storageUpdateStatus"];
                    v50 = MEMORY[0x277D82BE0](v47);
                    v46 = 1;
                    objc_storeStrong(&v23, 0);
                  }

                  objc_storeStrong(&v25, 0);
                  objc_storeStrong(&v26, 0);
                  objc_storeStrong(&v27, 0);
                }

                else
                {
                  [v47 setObject:@"Device Storage stream name missing" forKey:@"deviceStorageUpdateError"];
                  v50 = MEMORY[0x277D82BE0](v47);
                  v46 = 1;
                }

                objc_storeStrong(&v28, 0);
                objc_storeStrong(&v29, 0);
                objc_storeStrong(&v34, 0);
                objc_storeStrong(&v35, 0);
              }

              objc_storeStrong(&v37, 0);
              objc_storeStrong(v38, 0);
            }
          }

          objc_storeStrong(&v39, 0);
          objc_storeStrong(&v41, 0);
          objc_storeStrong(&v42, 0);
        }

        else
        {
          [v47 setObject:@"Storage update cadence is missing" forKey:@"deviceStorageUpdateError"];
          v50 = MEMORY[0x277D82BE0](v47);
          v46 = 1;
        }

        objc_storeStrong(&v43, 0);
      }

      else
      {
        [v47 setObject:@"Storage update is disabled" forKey:@"deviceStorageUpdateError"];
        v50 = MEMORY[0x277D82BE0](v47);
        v46 = 1;
      }

      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v45, 0);
    }

    else
    {
      [v47 setObject:@"Storage update payload is not a dictionary" forKey:@"deviceStorageUpdateError"];
      v50 = MEMORY[0x277D82BE0](v47);
      v46 = 1;
    }
  }

  else
  {
    [v47 setObject:@"Storage update payload is nil" forKey:@"deviceStorageUpdateError"];
    v50 = MEMORY[0x277D82BE0](v47);
    v46 = 1;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v50;

  return v3;
}

@end