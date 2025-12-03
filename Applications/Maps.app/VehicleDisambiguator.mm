@interface VehicleDisambiguator
+ (BOOL)isAccessory:(id)accessory alreadyPairedWithVehicleInGarage:(id)garage;
+ (id)findPossibleMatchesForAccessory:(id)accessory inVehicles:(id)vehicles;
+ (void)pairAccessory:(id)accessory withVehicle:(id)vehicle;
@end

@implementation VehicleDisambiguator

+ (void)pairAccessory:(id)accessory withVehicle:(id)vehicle
{
  accessoryCopy = accessory;
  vehicleCopy = vehicle;
  v7 = sub_100798E54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [accessoryCopy identifier];
    bluetoothIdentifier = [accessoryCopy bluetoothIdentifier];
    v13 = 138412802;
    v14 = identifier;
    v15 = 2112;
    v16 = bluetoothIdentifier;
    v17 = 2112;
    v18 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will pair accessory with identifier: %@, bluetoothIdentifier: %@ to vehicle: %@", &v13, 0x20u);
  }

  identifier2 = [accessoryCopy identifier];
  bluetoothIdentifier2 = [accessoryCopy bluetoothIdentifier];
  [vehicleCopy pairToIapIdentifier:identifier2 bluetoothIdentifier:bluetoothIdentifier2];

  v12 = +[VGVirtualGarageService sharedService];
  [v12 virtualGarageSaveVehicle:vehicleCopy];
}

+ (id)findPossibleMatchesForAccessory:(id)accessory inVehicles:(id)vehicles
{
  accessoryCopy = accessory;
  vehiclesCopy = vehicles;
  if (![vehiclesCopy count])
  {
    v13 = sub_100798E54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "There are no vehicles to pair the current accessory against.", buf, 2u);
    }

    v12 = &__NSDictionary0__struct;
    goto LABEL_49;
  }

  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_100ECEE88;
  v81[3] = &unk_1016588C0;
  v7 = accessoryCopy;
  v82 = v7;
  v8 = sub_1000282CC(vehiclesCopy, v81);
  if (![v8 count])
  {
    v71 = v8;
    v73 = accessoryCopy;
    v76 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [vehiclesCopy count]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v72 = vehiclesCopy;
    v14 = vehiclesCopy;
    v15 = [v14 countByEnumeratingWithState:&v77 objects:v83 count:16];
    if (!v15)
    {
      goto LABEL_47;
    }

    v16 = v15;
    v17 = *v78;
    v74 = *v78;
    v75 = v14;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v78 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v77 + 1) + 8 * v18);
        iapIdentifier = [v19 iapIdentifier];
        v21 = [iapIdentifier length];

        if (!v21)
        {
          siriIntentsIdentifier = [v19 siriIntentsIdentifier];
          v23 = [siriIntentsIdentifier length];

          if (v23)
          {
            headUnitIdentifier = [v19 headUnitIdentifier];
            identifier = [v7 identifier];
            if ([headUnitIdentifier isEqualToString:identifier])
            {

LABEL_46:
              [v76 setObject:&off_1016EE888 forKeyedSubscript:v19];
              v14 = v75;
              goto LABEL_47;
            }

            headUnitBluetoothIdentifier = [v19 headUnitBluetoothIdentifier];
            bluetoothIdentifier = [v7 bluetoothIdentifier];
            v28 = [headUnitBluetoothIdentifier isEqualToString:bluetoothIdentifier];

            if (v28)
            {
              goto LABEL_46;
            }

            model = [v19 model];
            v30 = 1.0;
            if (model && (v31 = model, [v7 model], v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v32))
            {
              model2 = [v19 model];
              model3 = [v7 model];
              lowercaseString = [model2 lowercaseString];
              v36 = +[NSCharacterSet whitespaceCharacterSet];
              v37 = [lowercaseString stringByTrimmingCharactersInSet:v36];

              lowercaseString2 = [model3 lowercaseString];
              v39 = +[NSCharacterSet whitespaceCharacterSet];
              v40 = [lowercaseString2 stringByTrimmingCharactersInSet:v39];

              v41 = [v37 _navigation_distanceLevenshtein:v40];
              v42 = [v37 length];
              if (v42 <= [v40 length])
              {
                v43 = v40;
              }

              else
              {
                v43 = v37;
              }

              v30 = 1.0 - (v41 / [v43 length]);

              v44 = 1;
            }

            else
            {
              v44 = 0;
            }

            manufacturer = [v19 manufacturer];
            if (manufacturer)
            {
              v46 = manufacturer;
              manufacturer2 = [v7 manufacturer];

              if (manufacturer2)
              {
                manufacturer3 = [v19 manufacturer];
                manufacturer4 = [v7 manufacturer];
                lowercaseString3 = [manufacturer3 lowercaseString];
                v51 = +[NSCharacterSet whitespaceCharacterSet];
                v52 = [lowercaseString3 stringByTrimmingCharactersInSet:v51];

                lowercaseString4 = [manufacturer4 lowercaseString];
                v54 = +[NSCharacterSet whitespaceCharacterSet];
                v55 = [lowercaseString4 stringByTrimmingCharactersInSet:v54];

                v56 = [v52 _navigation_distanceLevenshtein:v55];
                v57 = [v52 length];
                if (v57 <= [v55 length])
                {
                  v58 = v55;
                }

                else
                {
                  v58 = v52;
                }

                v59 = v56 / [v58 length];

                v30 = v30 - (v59 * v30);
                v44 = 1;
              }
            }

            year = [v19 year];
            if (year)
            {
              v61 = year;
              year2 = [v7 year];

              if (year2)
              {
                year3 = [v19 year];
                year4 = [v7 year];
                stringValue = [year4 stringValue];
                v66 = [year3 isEqualToString:stringValue];

                if (!v66)
                {
                  v30 = 0.0;
                }

LABEL_37:
                *&v67 = v30;
              }

              else
              {
                v67 = 0.0;
                if (v44)
                {
                  goto LABEL_37;
                }
              }
            }

            else
            {
              v67 = 0.0;
              if (v44)
              {
                goto LABEL_37;
              }
            }

            v68 = [NSNumber numberWithFloat:v67];
            [v76 setObject:v68 forKeyedSubscript:v19];

            v17 = v74;
            v14 = v75;
          }
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v69 = [v14 countByEnumeratingWithState:&v77 objects:v83 count:16];
      v16 = v69;
      if (!v69)
      {
LABEL_47:

        v9 = v76;
        v12 = [v76 copy];
        vehiclesCopy = v72;
        accessoryCopy = v73;
        v8 = v71;
        goto LABEL_48;
      }
    }
  }

  v9 = sub_100798E54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [v7 identifier];
    firstObject = [v8 firstObject];
    *buf = 138412546;
    v85 = identifier2;
    v86 = 2112;
    v87 = firstObject;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is already a vehicle in the garage that matches this accessory: %@, vehicle: %@", buf, 0x16u);
  }

  v12 = &__NSDictionary0__struct;
LABEL_48:

  v13 = v82;
LABEL_49:

  return v12;
}

+ (BOOL)isAccessory:(id)accessory alreadyPairedWithVehicleInGarage:(id)garage
{
  accessoryCopy = accessory;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  vehicles = [garage vehicles];
  v7 = [vehicles countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(vehicles);
        }

        iapIdentifier = [*(*(&v14 + 1) + 8 * i) iapIdentifier];
        identifier = [accessoryCopy identifier];
        v12 = [iapIdentifier isEqualToString:identifier];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [vehicles countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end