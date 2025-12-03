@interface STGenericIntentRequest
- (id)_ad_finalMetricsContextWithResponse:(id)response error:(id)error;
@end

@implementation STGenericIntentRequest

- (id)_ad_finalMetricsContextWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  _af_analyticsContextDescription = [(STGenericIntentRequest *)self _af_analyticsContextDescription];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    [_af_analyticsContextDescription setObject:domain forKeyedSubscript:@"errorDomain"];

    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [_af_analyticsContextDescription setObject:v10 forKeyedSubscript:@"errorCode"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [responseCopy responseCode];
LABEL_6:
    v11 = STStringFromGenericIntentResponseCode();
    [_af_analyticsContextDescription setObject:v11 forKeyedSubscript:AFAnalyticsContextKey[2]];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  if (responseCopy)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[STGenericIntentRequest(Metrics) _ad_finalMetricsContextWithResponse:error:]";
      v16 = 2112;
      v17 = responseCopy;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s unknown response %@", &v14, 0x16u);
    }
  }

LABEL_7:

  return _af_analyticsContextDescription;
}

@end