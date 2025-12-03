@interface BYSIMRegionService
- (BYSIMRegionService)init;
- (id)cellularNetworkInformation;
- (id)isoCodeForMCC:(int64_t)c;
- (id)subregionISOCodesForMCC:(int64_t)c MNC:(int64_t)nC;
- (void)logTelephonyError:(id)error;
@end

@implementation BYSIMRegionService

- (BYSIMRegionService)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BYSIMRegionService;
  location = [(BYSIMRegionService *)&v5 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = [[CoreTelephonyClient alloc] initWithQueue:0];
    [location setTelephonyClient:v2];
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (id)cellularNetworkInformation
{
  selfCopy = self;
  v46[1] = a2;
  v46[0] = objc_alloc_init(NSMutableArray);
  location = 0;
  telephonyClient = [(BYSIMRegionService *)selfCopy telephonyClient];
  v43 = 0;
  v3 = [(CoreTelephonyClient *)telephonyClient getActiveContexts:&v43];
  objc_storeStrong(&location, v43);
  v44 = v3;

  if (location)
  {
    v42 = _BYLoggingFacility();
    v41 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, location);
      _os_log_error_impl(&_mh_execute_header, v42, v41, "Unable to get active telephony contexts { error: %@ }", buf, 0xCu);
    }

    objc_storeStrong(&v42, 0);
  }

  memset(__b, 0, sizeof(__b));
  subscriptions = [v44 subscriptions];
  v5 = [subscriptions countByEnumeratingWithState:__b objects:v49 count:16];
  if (v5)
  {
    v6 = *__b[2];
    do
    {
      for (i = 0; i < v5; ++i)
      {
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(subscriptions);
        }

        v40 = *(__b[1] + 8 * i);
        v38 = objc_alloc_init(BYCellularNetworkInformation);
        v8 = [CTXPCServiceSubscriptionContext alloc];
        v37 = [v8 initWithSlot:{objc_msgSend(v40, "slotID")}];
        if (v37)
        {
          objc_storeStrong(&location, 0);
          telephonyClient2 = [(BYSIMRegionService *)selfCopy telephonyClient];
          obj = location;
          v10 = [(CoreTelephonyClient *)telephonyClient2 copyMobileSubscriberCountryCode:v37 error:&obj];
          objc_storeStrong(&location, obj);
          integerValue = [v10 integerValue];
          [v38 setHomeMCC:integerValue];

          [(BYSIMRegionService *)selfCopy logTelephonyError:location];
          objc_storeStrong(&location, 0);
          telephonyClient3 = [(BYSIMRegionService *)selfCopy telephonyClient];
          v35 = location;
          v13 = [(CoreTelephonyClient *)telephonyClient3 copyMobileSubscriberNetworkCode:v37 error:&v35];
          objc_storeStrong(&location, v35);
          integerValue2 = [v13 integerValue];
          [v38 setHomeMNC:integerValue2];

          [(BYSIMRegionService *)selfCopy logTelephonyError:location];
          objc_storeStrong(&location, 0);
          telephonyClient4 = [(BYSIMRegionService *)selfCopy telephonyClient];
          v34 = location;
          v16 = [(CoreTelephonyClient *)telephonyClient4 copyMobileCountryCode:v37 error:&v34];
          objc_storeStrong(&location, v34);
          integerValue3 = [v16 integerValue];
          [v38 setNetworkMCC:integerValue3];

          [(BYSIMRegionService *)selfCopy logTelephonyError:location];
          objc_storeStrong(&location, 0);
          telephonyClient5 = [(BYSIMRegionService *)selfCopy telephonyClient];
          v33 = location;
          v19 = [(CoreTelephonyClient *)telephonyClient5 copyMobileNetworkCode:v37 error:&v33];
          objc_storeStrong(&location, v33);
          integerValue4 = [v19 integerValue];
          [v38 setNetworkMNC:integerValue4];

          [(BYSIMRegionService *)selfCopy logTelephonyError:location];
          v21 = -[BYSIMRegionService isoCodeForMCC:](selfCopy, "isoCodeForMCC:", [v38 homeMCC]);
          [v38 setHomeCountryISOCode:v21];

          v22 = selfCopy;
          homeMCC = [v38 homeMCC];
          v24 = -[BYSIMRegionService subregionISOCodesForMCC:MNC:](v22, "subregionISOCodesForMCC:MNC:", homeMCC, [v38 homeMNC]);
          [v38 setHomeSubregionISOCodes:v24];

          v25 = -[BYSIMRegionService isoCodeForMCC:](selfCopy, "isoCodeForMCC:", [v38 networkMCC]);
          [v38 setNetworkCountryISOCode:v25];

          v26 = selfCopy;
          networkMCC = [v38 networkMCC];
          v28 = -[BYSIMRegionService subregionISOCodesForMCC:MNC:](v26, "subregionISOCodesForMCC:MNC:", networkMCC, [v38 networkMNC]);
          [v38 setNetworkSubregionISOCodes:v28];

          [v46[0] addObject:v38];
        }

        else
        {
          oslog = _BYLoggingFacility();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v29 = oslog;
            sub_100077E48(v48, [v40 slotID]);
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unable to find selected context to load telephony network information { slot: %ld }", v48, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
        }

        objc_storeStrong(&v37, 0);
        objc_storeStrong(&v38, 0);
      }

      v5 = [subscriptions countByEnumeratingWithState:__b objects:v49 count:16];
    }

    while (v5);
  }

  v30 = v46[0];
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v46, 0);
  return v30;
}

- (void)logTelephonyError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (location[0])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error reading telephony network information { error: %@ }", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)isoCodeForMCC:(int64_t)c
{
  selfCopy = self;
  location[2] = a2;
  location[1] = c;
  location[0] = 0;
  v3 = [NSNumber numberWithInteger:c];
  stringValue = [(NSNumber *)v3 stringValue];

  telephonyClient = [(BYSIMRegionService *)selfCopy telephonyClient];
  obj = 0;
  v5 = [(CoreTelephonyClient *)telephonyClient copyMobileSubscriberIsoCountryCode:stringValue error:&obj];
  objc_storeStrong(location, obj);
  uppercaseString = [v5 uppercaseString];

  if (location[0])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100078180(buf, stringValue, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error getting ISO code from MCC: %@, error: %@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v6 = uppercaseString;
  objc_storeStrong(&uppercaseString, 0);
  objc_storeStrong(&stringValue, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)subregionISOCodesForMCC:(int64_t)c MNC:(int64_t)nC
{
  selfCopy = self;
  v18 = a2;
  cCopy = c;
  nCCopy = nC;
  location = 0;
  v4 = [NSNumber numberWithInteger:c];
  stringValue = [(NSNumber *)v4 stringValue];

  v5 = [NSNumber numberWithInteger:nCCopy];
  stringValue2 = [(NSNumber *)v5 stringValue];

  telephonyClient = [(BYSIMRegionService *)selfCopy telephonyClient];
  obj = 0;
  v7 = [(CoreTelephonyClient *)telephonyClient copyMobileSubscriberIsoSubregionCode:stringValue MNC:stringValue2 error:&obj];
  objc_storeStrong(&location, obj);
  v12 = v7;

  if (location)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10009E5BC(buf, stringValue, stringValue2, location);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error getting subregion ISO code from MCC: %@, MNC: %@, error: %@", buf, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&stringValue2, 0);
  objc_storeStrong(&stringValue, 0);
  objc_storeStrong(&location, 0);
  return v8;
}

@end