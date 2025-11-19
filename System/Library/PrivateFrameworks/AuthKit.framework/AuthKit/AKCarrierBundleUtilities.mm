@interface AKCarrierBundleUtilities
+ (AKCarrierBundleUtilities)sharedInstance;
- (AKCarrierBundleUtilities)init;
- (id)_formattedValueForPhoneNumber:(id)a3 countryCode:(id)a4;
- (id)phoneBundleInfoWithAdditionalInfo:(id)a3 error:(id *)a4;
@end

@implementation AKCarrierBundleUtilities

- (AKCarrierBundleUtilities)init
{
  v13 = a2;
  v14 = 0;
  v12.receiver = self;
  v12.super_class = AKCarrierBundleUtilities;
  v11 = [(AKCarrierBundleUtilities *)&v12 init];
  v14 = v11;
  objc_storeStrong(&v14, v11);
  if (v11)
  {
    label = off_100370CB8;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create(label, v10);
    carrierUtilitiesQueue = v14->_carrierUtilitiesQueue;
    v14->_carrierUtilitiesQueue = v2;
    _objc_release(carrierUtilitiesQueue);
    _objc_release(v10);
    v4 = [CoreTelephonyClient alloc];
    v5 = [v4 initWithQueue:v14->_carrierUtilitiesQueue];
    telephonyClient = v14->_telephonyClient;
    v14->_telephonyClient = v5;
    _objc_release(telephonyClient);
    [(CoreTelephonyClient *)v14->_telephonyClient setDelegate:v14];
  }

  v8 = _objc_retain(v14);
  objc_storeStrong(&v14, 0);
  return v8;
}

+ (AKCarrierBundleUtilities)sharedInstance
{
  v5 = &unk_100374730;
  location = 0;
  objc_storeStrong(&location, &stru_1003215D0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374728;

  return v2;
}

- (id)phoneBundleInfoWithAdditionalInfo:(id)a3 error:(id *)a4
{
  v81 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v79 = a4;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  telephonyClient = v81->_telephonyClient;
  v74 = 0;
  v46 = [(CoreTelephonyClient *)telephonyClient getSubscriptionInfoWithError:&v74];
  objc_storeStrong(&v77, v74);
  v75 = v46;
  if (v46)
  {
    v5 = +[NSMutableArray array];
    v6 = v76;
    v76 = v5;
    _objc_release(v6);
    v73 = [(CoreTelephonyClient *)v81->_telephonyClient getCurrentDataSubscriptionContextSync:?];
    v72 = [(CoreTelephonyClient *)v81->_telephonyClient getUserDefaultVoiceSubscriptionContext:0];
    v71 = [v75 subscriptionsInUse];
    memset(__b, 0, sizeof(__b));
    obj = [v75 subscriptions];
    v44 = [obj countByEnumeratingWithState:__b objects:v87 count:16];
    if (v44)
    {
      v40 = *__b[2];
      v41 = 0;
      v42 = v44;
      while (1)
      {
        v39 = v41;
        if (*__b[2] != v40)
        {
          objc_enumerationMutation(obj);
        }

        v70 = *(__b[1] + 8 * v41);
        v28 = [v73 uuid];
        v7 = [v70 uuid];
        v29 = v28 == v7;
        _objc_release(v7);
        _objc_release(v28);
        v68 = v29;
        v30 = [v72 uuid];
        v8 = [v70 uuid];
        v31 = v30 == v8;
        _objc_release(v8);
        _objc_release(v30);
        v67 = v31;
        v32 = v71;
        v60 = _NSConcreteStackBlock;
        v61 = -1073741824;
        v62 = 0;
        v63 = sub_100089974;
        v64 = &unk_1003215F8;
        v65 = _objc_retain(v70);
        v66 = [v32 indexOfObjectPassingTest:&v60];
        v85[0] = @"slotID";
        v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v70 slotID]);
        v86[0] = v37;
        v85[1] = @"dataPreferred";
        v36 = [NSNumber numberWithBool:v68];
        v86[1] = v36;
        v85[2] = @"defaultVoice";
        v35 = [NSNumber numberWithBool:v67];
        v86[2] = v35;
        v85[3] = @"inUse";
        v34 = [NSNumber numberWithInt:v66 != 0x7FFFFFFFFFFFFFFFLL];
        v86[3] = v34;
        v33 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:4];
        v59 = [(NSDictionary *)v33 mutableCopy];
        _objc_release(v33);
        _objc_release(v34);
        _objc_release(v35);
        _objc_release(v36);
        _objc_release(v37);
        v58 = 0;
        v9 = v81->_telephonyClient;
        v56 = 0;
        v38 = [(CoreTelephonyClient *)v9 getSimHardwareInfo:v70 error:&v56];
        objc_storeStrong(&v58, v56);
        v57 = v38;
        if (v58)
        {
          oslog = _AKLogSystem();
          type = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            log = oslog;
            v27 = type;
            sub_1000194D4(v84, v58);
            _os_log_error_impl(&_mh_execute_header, log, v27, "Error fetching SIM hardware info: %@", v84, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
        }

        v53 = [v57 hardwareType];
        v25 = [NSNumber numberWithInteger:v53];
        [v59 setObject:? forKeyedSubscript:?];
        _objc_release(v25);
        if (v53)
        {
          v24 = [NSNumber numberWithInt:v53 == 1];
          [v59 setObject:? forKeyedSubscript:?];
          _objc_release(v24);
        }

        v21 = [(CoreTelephonyClient *)v81->_telephonyClient getMobileSubscriberHomeCountryList:v70 error:0];
        v52 = [v21 firstObject];
        _objc_release(v21);
        v22 = v81;
        v23 = [v70 phoneNumber];
        v51 = [AKCarrierBundleUtilities _formattedValueForPhoneNumber:v22 countryCode:"_formattedValueForPhoneNumber:countryCode:"];
        _objc_release(v23);
        if (v51)
        {
          [v59 setObject:v51 forKeyedSubscript:@"number"];
        }

        v20 = [v70 label];
        _objc_release(v20);
        if (v20)
        {
          v19 = [v70 label];
          [v59 setObject:? forKeyedSubscript:?];
          _objc_release(v19);
        }

        if (location[0])
        {
          v50 = [location[0] objectForKeyedSubscript:@"PhoneCertificate"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v50 slotID];
            if (v18 == [v70 slotID])
            {
              v17 = [v50 phoneCertificate];
              [v59 setObject:? forKeyedSubscript:?];
              _objc_release(v17);
            }
          }

          objc_storeStrong(&v50, 0);
        }

        v49 = _AKLogSystem();
        v48 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v16 = v49;
          sub_1000194D4(v83, v59);
          _os_log_debug_impl(&_mh_execute_header, v16, v48, "Populating results with bundle info: %@", v83, 0xCu);
        }

        objc_storeStrong(&v49, 0);
        v14 = v76;
        v15 = [v59 copy];
        [v14 addObject:?];
        _objc_release(v15);
        objc_storeStrong(&v51, 0);
        objc_storeStrong(&v52, 0);
        objc_storeStrong(&v57, 0);
        objc_storeStrong(&v58, 0);
        objc_storeStrong(&v59, 0);
        objc_storeStrong(&v65, 0);
        ++v41;
        if (v39 + 1 >= v42)
        {
          v41 = 0;
          v42 = [obj countByEnumeratingWithState:__b objects:v87 count:16];
          if (!v42)
          {
            break;
          }
        }
      }
    }

    _objc_release(obj);
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v73, 0);
  }

  else
  {
    v47 = _AKLogSystem();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v82, v77);
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to fetch subscription info with error: %@", v82, 0xCu);
    }

    objc_storeStrong(&v47, 0);
    if (v79)
    {
      v13 = v77;
      v10 = v77;
      *v79 = v13;
    }
  }

  objc_storeStrong(&v78, v76);
  v12 = _objc_retain(v78);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)_formattedValueForPhoneNumber:(id)a3 countryCode:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  cStr = PNCopyBestGuessNormalizedNumberForCountry();
  if (cStr)
  {
    v10 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    if (v10)
    {
      cf = CFPhoneNumberCreate();
      if (cf)
      {
        String = CFPhoneNumberCreateString();
        v5 = v12;
        v12 = String;
        _objc_release(v5);
        CFRelease(cf);
      }

      CFRelease(v10);
    }

    free(cStr);
  }

  v7 = _objc_retain(v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end