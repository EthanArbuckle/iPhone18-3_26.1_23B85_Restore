@interface AKCarrierBundleUtilities
+ (AKCarrierBundleUtilities)sharedInstance;
- (AKCarrierBundleUtilities)init;
- (id)_formattedValueForPhoneNumber:(id)number countryCode:(id)code;
- (id)phoneBundleInfoWithAdditionalInfo:(id)info error:(id *)error;
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

- (id)phoneBundleInfoWithAdditionalInfo:(id)info error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  errorCopy = error;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  telephonyClient = selfCopy->_telephonyClient;
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
    v73 = [(CoreTelephonyClient *)selfCopy->_telephonyClient getCurrentDataSubscriptionContextSync:?];
    v72 = [(CoreTelephonyClient *)selfCopy->_telephonyClient getUserDefaultVoiceSubscriptionContext:0];
    subscriptionsInUse = [v75 subscriptionsInUse];
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
        uuid = [v73 uuid];
        uuid2 = [v70 uuid];
        v29 = uuid == uuid2;
        _objc_release(uuid2);
        _objc_release(uuid);
        v68 = v29;
        uuid3 = [v72 uuid];
        uuid4 = [v70 uuid];
        v31 = uuid3 == uuid4;
        _objc_release(uuid4);
        _objc_release(uuid3);
        v67 = v31;
        v32 = subscriptionsInUse;
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
        0x7FFFFFFFFFFFFFFFLL = [NSNumber numberWithInt:v66 != 0x7FFFFFFFFFFFFFFFLL];
        v86[3] = 0x7FFFFFFFFFFFFFFFLL;
        v33 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:4];
        v59 = [(NSDictionary *)v33 mutableCopy];
        _objc_release(v33);
        _objc_release(0x7FFFFFFFFFFFFFFFLL);
        _objc_release(v35);
        _objc_release(v36);
        _objc_release(v37);
        v58 = 0;
        v9 = selfCopy->_telephonyClient;
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

        hardwareType = [v57 hardwareType];
        v25 = [NSNumber numberWithInteger:hardwareType];
        [v59 setObject:? forKeyedSubscript:?];
        _objc_release(v25);
        if (hardwareType)
        {
          v24 = [NSNumber numberWithInt:hardwareType == 1];
          [v59 setObject:? forKeyedSubscript:?];
          _objc_release(v24);
        }

        v21 = [(CoreTelephonyClient *)selfCopy->_telephonyClient getMobileSubscriberHomeCountryList:v70 error:0];
        firstObject = [v21 firstObject];
        _objc_release(v21);
        v22 = selfCopy;
        phoneNumber = [v70 phoneNumber];
        v51 = [AKCarrierBundleUtilities _formattedValueForPhoneNumber:v22 countryCode:"_formattedValueForPhoneNumber:countryCode:"];
        _objc_release(phoneNumber);
        if (v51)
        {
          [v59 setObject:v51 forKeyedSubscript:@"number"];
        }

        label = [v70 label];
        _objc_release(label);
        if (label)
        {
          label2 = [v70 label];
          [v59 setObject:? forKeyedSubscript:?];
          _objc_release(label2);
        }

        if (location[0])
        {
          v50 = [location[0] objectForKeyedSubscript:@"PhoneCertificate"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            slotID = [v50 slotID];
            if (slotID == [v70 slotID])
            {
              phoneCertificate = [v50 phoneCertificate];
              [v59 setObject:? forKeyedSubscript:?];
              _objc_release(phoneCertificate);
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
        objc_storeStrong(&firstObject, 0);
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
    objc_storeStrong(&subscriptionsInUse, 0);
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
    if (errorCopy)
    {
      v13 = v77;
      v10 = v77;
      *errorCopy = v13;
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

- (id)_formattedValueForPhoneNumber:(id)number countryCode:(id)code
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v13 = 0;
  objc_storeStrong(&v13, code);
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