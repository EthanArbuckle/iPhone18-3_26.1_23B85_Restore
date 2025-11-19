@interface BLSHWatchdogDidFireDetails
- (BLSHWatchdogDidFireDetails)initWithWatchdogDidFireDictionary:(id)a3;
@end

@implementation BLSHWatchdogDidFireDetails

- (BLSHWatchdogDidFireDetails)initWithWatchdogDidFireDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BLSHWatchdogDidFireDetails;
  v5 = [(BLSHWatchdogDidFireDetails *)&v24 init];
  if (v5)
  {
    v6 = [v4 bs_safeObjectForKey:@"BLSHWatchdogDidFireDate" ofType:objc_opt_class()];
    v7 = [v4 objectForKeyedSubscript:@"BLSHWatchdogDidFireBuildVersion"];
    v8 = [v4 bs_safeStringForKey:@"BLSHWatchdogDidFireExplanation"];
    v9 = [v4 bs_safeStringForKey:@"BLSHWatchdogDidFireAbortReason"];
    v10 = [v4 bs_safeStringForKey:@"BLSHWatchdogDidFireDeviceType"];
    if ([v10 hasSuffix:@"AP"])
    {
      v11 = [v10 substringToIndex:{objc_msgSend(v10, "length") - objc_msgSend(@"AP", "length")}];

      v10 = v11;
    }

    date = v5->_date;
    v5->_date = v6;
    v13 = v6;

    v14 = [v7 copy];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v14;

    v16 = [v8 copy];
    explanation = v5->_explanation;
    v5->_explanation = v16;

    v18 = [v9 copy];
    abortReasonString = v5->_abortReasonString;
    v5->_abortReasonString = v18;

    v20 = [v10 copy];
    device = v5->_device;
    v5->_device = v20;

    v22 = bls_backlight_log();
    v5->_debugLogsEnabled = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
  }

  return v5;
}

@end