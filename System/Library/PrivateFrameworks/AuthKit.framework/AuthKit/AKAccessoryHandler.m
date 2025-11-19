@interface AKAccessoryHandler
+ (id)createDictionaryPayloadFromDevices:(id)a3;
+ (id)fetchDevicesFromBluetooth;
+ (id)getPairedDevices;
+ (void)syncAccessories;
@end

@implementation AKAccessoryHandler

+ (id)getPairedDevices
{
  v8 = a1;
  v7[1] = a2;
  v7[0] = [a1 fetchDevicesFromBluetooth];
  v6 = _objc_retain(&__NSDictionary0__struct);
  if (v7[0] && [v7[0] count])
  {
    v2 = [v8 createDictionaryPayloadFromDevices:v7[0]];
    v3 = v6;
    v6 = v2;
    _objc_release(v3);
  }

  v5 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

+ (id)fetchDevicesFromBluetooth
{
  location[4] = a1;
  location[3] = a2;
  location[2] = 0x800000;
  location[1] = 0;
  location[0] = [CBDiscovery devicesWithDiscoveryFlags:0x800000 error:0];
  v5 = _objc_retain(location[0]);
  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

+ (void)syncAccessories
{
  v10 = a1;
  v9 = a2;
  v2 = +[AKURLBag sharedBag];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10004BA38;
  v7 = &unk_100320170;
  v8 = v10;
  [v2 configurationValueForKey:@"isEventBasedAccessorySyncEnabled" fromCache:1 completion:?];
  _objc_release(v2);
}

+ (id)createDictionaryPayloadFromDevices:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v74 = +[NSMutableArray array];
  v43 = objc_opt_class();
  v45 = +[AKURLBag sharedBag];
  v44 = [v45 configurationAtKey:@"accessorySyncAllowedProductTypes"];
  v73 = sub_10004CE94(v43, v44);
  _objc_release(v44);
  _objc_release(v45);
  v72 = +[NSMutableSet set];
  if ([v73 length])
  {
    v71 = [v73 componentsSeparatedByString:{@", "}];
    memset(__b, 0, sizeof(__b));
    obj = _objc_retain(v71);
    v42 = [obj countByEnumeratingWithState:__b objects:v83 count:16];
    if (v42)
    {
      v38 = *__b[2];
      v39 = 0;
      v40 = v42;
      while (1)
      {
        v37 = v39;
        if (*__b[2] != v38)
        {
          objc_enumerationMutation(obj);
        }

        v70 = *(__b[1] + 8 * v39);
        v35 = v70;
        v36 = +[NSCharacterSet whitespaceCharacterSet];
        v68 = [v35 stringByTrimmingCharactersInSet:?];
        _objc_release(v36);
        if ([v68 length])
        {
          v33 = v72;
          v34 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v68 intValue]);
          [v33 addObject:?];
          _objc_release(v34);
        }

        objc_storeStrong(&v68, 0);
        ++v39;
        if (v37 + 1 >= v40)
        {
          v39 = 0;
          v40 = [obj countByEnumeratingWithState:__b objects:v83 count:16];
          if (!v40)
          {
            break;
          }
        }
      }
    }

    _objc_release(obj);
    memset(v66, 0, sizeof(v66));
    v31 = _objc_retain(location[0]);
    v32 = [v31 countByEnumeratingWithState:v66 objects:v82 count:16];
    if (v32)
    {
      v28 = *v66[2];
      v29 = 0;
      v30 = v32;
      while (1)
      {
        v27 = v29;
        if (*v66[2] != v28)
        {
          objc_enumerationMutation(v31);
        }

        v67 = *(v66[1] + 8 * v29);
        v3 = [v67 productID];
        v64 = 0;
        v26 = 1;
        if (v3)
        {
          LOBYTE(v25) = 0;
          if ([v72 count])
          {
            v24 = v72;
            v65 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v67 productID]);
            v64 = 1;
            v25 = [v24 containsObject:?] ^ 1;
          }

          v26 = v25;
        }

        if (v64)
        {
          _objc_release(v65);
        }

        if ((v26 & 1) == 0)
        {
          [v67 bleAdvertisementTimestamp];
          v63 = v4 + 978307200.0;
          v62 = ((v4 + 978307200.0) * 1000.0);
          v22 = [v67 btAddressData];
          v61 = CUPrintNSDataAddress();
          _objc_release(v22);
          v80[0] = @"dn";
          v23 = [v67 name];
          v58 = 0;
          if (v23)
          {
            v59 = [v67 name];
            v58 = 1;
            v21 = v59;
          }

          else
          {
            v21 = &stru_100330538;
          }

          v81[0] = v21;
          v80[1] = @"pn";
          v20 = [v67 productName];
          v56 = 0;
          if (v20)
          {
            v57 = [v67 productName];
            v56 = 1;
            v19 = v57;
          }

          else
          {
            v19 = &stru_100330538;
          }

          v81[1] = v19;
          v80[2] = @"cc";
          v17 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v67 colorCodeBest]);
          v81[2] = v17;
          v80[3] = @"fv";
          v18 = [v67 firmwareVersion];
          v54 = 0;
          if (v18)
          {
            v55 = [v67 firmwareVersion];
            v54 = 1;
            v16 = v55;
          }

          else
          {
            v16 = &stru_100330538;
          }

          v81[3] = v16;
          v80[4] = @"pt";
          v52 = 0;
          if ([v67 productID])
          {
            v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v67 productID]);
            v52 = 1;
            v15 = v53;
          }

          else
          {
            v15 = &stru_100330538;
          }

          v81[4] = v15;
          v80[5] = @"sn";
          v78[0] = @"ssn";
          v14 = [v67 serialNumber];
          v50 = 0;
          if (v14)
          {
            v51 = [v67 serialNumber];
            v50 = 1;
            v13 = v51;
          }

          else
          {
            v13 = &stru_100330538;
          }

          v79[0] = v13;
          v78[1] = @"lsn";
          v12 = [v67 serialNumberLeft];
          v48 = 0;
          if (v12)
          {
            v49 = [v67 serialNumberLeft];
            v48 = 1;
            v11 = v49;
          }

          else
          {
            v11 = &stru_100330538;
          }

          v79[1] = v11;
          v78[2] = @"rsn";
          v10 = [v67 serialNumberRight];
          v46 = 0;
          if (v10)
          {
            v47 = [v67 serialNumberRight];
            v46 = 1;
            v9 = v47;
          }

          else
          {
            v9 = &stru_100330538;
          }

          v79[2] = v9;
          v8 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:3];
          v81[5] = v8;
          v80[6] = @"at";
          v7 = [NSNumber numberWithLongLong:v62];
          v81[6] = v7;
          v80[7] = @"udid";
          v81[7] = v61;
          v60 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:8];
          _objc_release(v7);
          _objc_release(v8);
          if (v46)
          {
            _objc_release(v47);
          }

          _objc_release(v10);
          if (v48)
          {
            _objc_release(v49);
          }

          _objc_release(v12);
          if (v50)
          {
            _objc_release(v51);
          }

          _objc_release(v14);
          if (v52)
          {
            _objc_release(v53);
          }

          if (v54)
          {
            _objc_release(v55);
          }

          _objc_release(v18);
          _objc_release(v17);
          if (v56)
          {
            _objc_release(v57);
          }

          _objc_release(v20);
          if (v58)
          {
            _objc_release(v59);
          }

          _objc_release(v23);
          [v74 addObject:v60];
          objc_storeStrong(&v60, 0);
          objc_storeStrong(&v61, 0);
        }

        ++v29;
        if (v27 + 1 >= v30)
        {
          v29 = 0;
          v30 = [v31 countByEnumeratingWithState:v66 objects:v82 count:16];
          if (!v30)
          {
            break;
          }
        }
      }
    }

    _objc_release(v31);
    objc_storeStrong(&v71, 0);
  }

  v76 = @"pd";
  v77 = v74;
  v6 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end