@interface VehicleDisambiguator
+ (BOOL)isAccessory:(id)a3 alreadyPairedWithVehicleInGarage:(id)a4;
+ (id)findPossibleMatchesForAccessory:(id)a3 inVehicles:(id)a4;
+ (void)pairAccessory:(id)a3 withVehicle:(id)a4;
@end

@implementation VehicleDisambiguator

+ (void)pairAccessory:(id)a3 withVehicle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100798E54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    v9 = [v5 bluetoothIdentifier];
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will pair accessory with identifier: %@, bluetoothIdentifier: %@ to vehicle: %@", &v13, 0x20u);
  }

  v10 = [v5 identifier];
  v11 = [v5 bluetoothIdentifier];
  [v6 pairToIapIdentifier:v10 bluetoothIdentifier:v11];

  v12 = +[VGVirtualGarageService sharedService];
  [v12 virtualGarageSaveVehicle:v6];
}

+ (id)findPossibleMatchesForAccessory:(id)a3 inVehicles:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 count])
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
  v7 = v5;
  v82 = v7;
  v8 = sub_1000282CC(v6, v81);
  if (![v8 count])
  {
    v71 = v8;
    v73 = v5;
    v76 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v72 = v6;
    v14 = v6;
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
        v20 = [v19 iapIdentifier];
        v21 = [v20 length];

        if (!v21)
        {
          v22 = [v19 siriIntentsIdentifier];
          v23 = [v22 length];

          if (v23)
          {
            v24 = [v19 headUnitIdentifier];
            v25 = [v7 identifier];
            if ([v24 isEqualToString:v25])
            {

LABEL_46:
              [v76 setObject:&off_1016EE888 forKeyedSubscript:v19];
              v14 = v75;
              goto LABEL_47;
            }

            v26 = [v19 headUnitBluetoothIdentifier];
            v27 = [v7 bluetoothIdentifier];
            v28 = [v26 isEqualToString:v27];

            if (v28)
            {
              goto LABEL_46;
            }

            v29 = [v19 model];
            v30 = 1.0;
            if (v29 && (v31 = v29, [v7 model], v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v32))
            {
              v33 = [v19 model];
              v34 = [v7 model];
              v35 = [v33 lowercaseString];
              v36 = +[NSCharacterSet whitespaceCharacterSet];
              v37 = [v35 stringByTrimmingCharactersInSet:v36];

              v38 = [v34 lowercaseString];
              v39 = +[NSCharacterSet whitespaceCharacterSet];
              v40 = [v38 stringByTrimmingCharactersInSet:v39];

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

            v45 = [v19 manufacturer];
            if (v45)
            {
              v46 = v45;
              v47 = [v7 manufacturer];

              if (v47)
              {
                v48 = [v19 manufacturer];
                v49 = [v7 manufacturer];
                v50 = [v48 lowercaseString];
                v51 = +[NSCharacterSet whitespaceCharacterSet];
                v52 = [v50 stringByTrimmingCharactersInSet:v51];

                v53 = [v49 lowercaseString];
                v54 = +[NSCharacterSet whitespaceCharacterSet];
                v55 = [v53 stringByTrimmingCharactersInSet:v54];

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

            v60 = [v19 year];
            if (v60)
            {
              v61 = v60;
              v62 = [v7 year];

              if (v62)
              {
                v63 = [v19 year];
                v64 = [v7 year];
                v65 = [v64 stringValue];
                v66 = [v63 isEqualToString:v65];

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
        v6 = v72;
        v5 = v73;
        v8 = v71;
        goto LABEL_48;
      }
    }
  }

  v9 = sub_100798E54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    v11 = [v8 firstObject];
    *buf = 138412546;
    v85 = v10;
    v86 = 2112;
    v87 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is already a vehicle in the garage that matches this accessory: %@, vehicle: %@", buf, 0x16u);
  }

  v12 = &__NSDictionary0__struct;
LABEL_48:

  v13 = v82;
LABEL_49:

  return v12;
}

+ (BOOL)isAccessory:(id)a3 alreadyPairedWithVehicleInGarage:(id)a4
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 vehicles];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) iapIdentifier];
        v11 = [v5 identifier];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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