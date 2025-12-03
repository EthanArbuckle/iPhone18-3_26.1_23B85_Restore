@interface BLSHCriticalAssertDidFailDetails
- (BLSHCriticalAssertDidFailDetails)initWithCriticalAssertDidFailDictionary:(id)dictionary;
@end

@implementation BLSHCriticalAssertDidFailDetails

- (BLSHCriticalAssertDidFailDetails)initWithCriticalAssertDidFailDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = BLSHCriticalAssertDidFailDetails;
  v5 = [(BLSHCriticalAssertDidFailDetails *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy bs_safeObjectForKey:@"BLSHCriticalAssertDidFailDate" ofType:objc_opt_class()];
    v7 = [dictionaryCopy bs_safeStringForKey:@"BLSHCriticalAssertDidFailBuildVersion"];
    v8 = [dictionaryCopy bs_safeStringForKey:@"BLSHCriticalAssertDidFailDescription"];
    v9 = [dictionaryCopy bs_safeStringForKey:@"BLSHCriticalAssertDidFailProcess"];
    v10 = MGCopyAnswer();
    v11 = [v10 copy];

    if ([v11 hasSuffix:@"AP"])
    {
      v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - objc_msgSend(@"AP", "length")}];

      v11 = v12;
    }

    v13 = [v6 copy];
    date = v5->_date;
    v5->_date = v13;

    v15 = [v7 copy];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v15;

    v17 = [v8 copy];
    explanation = v5->_explanation;
    v5->_explanation = v17;

    v19 = [v9 copy];
    processName = v5->_processName;
    v5->_processName = v19;

    device = v5->_device;
    v5->_device = v11;

    v22 = bls_backlight_log();
    v5->_debugLogsEnabled = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

    v23 = [dictionaryCopy bs_safeNumberForKey:@"BLSHCriticalAssertDidFailUserInitiated"];
    v5->_radarIsUserInitiated = [v23 BOOLValue];

    v24 = [dictionaryCopy bs_safeNumberForKey:@"BLSHCriticalAssertDidFailSource"];
    v5->_failureSource = [v24 unsignedIntegerValue];
  }

  return v5;
}

@end