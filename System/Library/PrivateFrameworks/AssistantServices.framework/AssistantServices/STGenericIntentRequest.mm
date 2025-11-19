@interface STGenericIntentRequest
- (id)_ad_finalMetricsContextWithResponse:(id)a3 error:(id)a4;
@end

@implementation STGenericIntentRequest

- (id)_ad_finalMetricsContextWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STGenericIntentRequest *)self _af_analyticsContextDescription];
  if (v7)
  {
    v9 = [v7 domain];
    [v8 setObject:v9 forKeyedSubscript:@"errorDomain"];

    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
    [v8 setObject:v10 forKeyedSubscript:@"errorCode"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 responseCode];
LABEL_6:
    v11 = STStringFromGenericIntentResponseCode();
    [v8 setObject:v11 forKeyedSubscript:AFAnalyticsContextKey[2]];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  if (v6)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[STGenericIntentRequest(Metrics) _ad_finalMetricsContextWithResponse:error:]";
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s unknown response %@", &v14, 0x16u);
    }
  }

LABEL_7:

  return v8;
}

@end