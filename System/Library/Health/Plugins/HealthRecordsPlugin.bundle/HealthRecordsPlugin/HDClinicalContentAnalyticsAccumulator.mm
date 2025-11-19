@interface HDClinicalContentAnalyticsAccumulator
- (HDClinicalContentAnalyticsAccumulator)initWithProfileExtension:(id)a3;
- (HDHealthRecordsProfileExtension)profileExtension;
- (id)_fetchDeviceContextAnalytics;
- (id)analyticsString;
- (id)debugDescription;
- (void)accumulateMetricsForItem:(id)a3;
- (void)resetMetrics;
- (void)submitMetricsWithCoordinator:(id)a3;
@end

@implementation HDClinicalContentAnalyticsAccumulator

- (HDClinicalContentAnalyticsAccumulator)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDClinicalContentAnalyticsAccumulator;
  v5 = [(HDClinicalContentAnalyticsAccumulator *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, v4);
    v7 = objc_alloc_init(HDClinicalContentAnalyticsUnknownRecordsMetric);
    unknownRecordsMetric = v6->_unknownRecordsMetric;
    v6->_unknownRecordsMetric = v7;

    v6->_batchCount = 1;
  }

  return v6;
}

- (void)accumulateMetricsForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 medicalRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(HDClinicalContentAnalyticsAccumulator *)self unknownRecordsMetric];
    [v7 accumulateMetricForItem:v4];
LABEL_5:

    goto LABEL_6;
  }

  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v8;
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [v4 medicalRecord];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = objc_opt_class();
    v12 = v16;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%@ attempting to accumulate metric for record type %@ which we don't support", &v13, 0x16u);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)submitMetricsWithCoordinator:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_A5914(a2, self);
  }

  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(HDClinicalContentAnalyticsAccumulator *)self debugDescription];
    v9 = HKSensitiveLogItem();
    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ingestion analytics collection %{public}@", buf, 0x16u);
  }

  v10 = [(HDClinicalContentAnalyticsAccumulator *)self unknownRecordsMetric];
  v11 = [v10 count];

  if (v11)
  {
    _HKInitializeLogging();
    v12 = HKLogAnalytics();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

    if (v13)
    {
      v14 = HKLogAnalytics();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_A5990(self, v14);
      }
    }

    v15 = [(HDClinicalContentAnalyticsAccumulator *)self unknownRecordsMetric];
    v16 = [(HDClinicalContentAnalyticsAccumulator *)self _fetchDeviceContextAnalytics];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_699E4;
    v17[3] = &unk_108100;
    v18 = v5;
    [v15 enumerateElementsAsCoreAnalyticsPayloadWithDeviceContext:v16 block:v17];
  }
}

- (id)_fetchDeviceContextAnalytics
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v3 = [WeakRetained profile];
  v4 = [v3 deviceContextManager];
  v5 = [v4 numberOfDeviceContextsPerDeviceType:0];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:&off_110300];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &off_110318;
    }

    v9 = v8;

    v10 = [v5 objectForKeyedSubscript:&off_110330];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &off_110318;
    }

    v13 = v12;

    v14 = [v5 objectForKeyedSubscript:&off_110348];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &off_110318;
    }

    v17 = v16;

    v18 = [v5 objectForKeyedSubscript:&off_110360];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &off_110318;
    }

    v21 = v20;

    v24[0] = HKAnalyticsPropertyNameDeviceContextCountPhone;
    v24[1] = HKAnalyticsPropertyNameDeviceContextCountWatch;
    v25[0] = v9;
    v25[1] = v17;
    v24[2] = HKAnalyticsPropertyNameDeviceContextCountiPad;
    v24[3] = HKAnalyticsPropertyNameDeviceContextCountVisionPro;
    v25[2] = v13;
    v25[3] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
  }

  else
  {
    v26[0] = HKAnalyticsPropertyNameDeviceContextCountPhone;
    v26[1] = HKAnalyticsPropertyNameDeviceContextCountWatch;
    v27[0] = &off_1102E8;
    v27[1] = &off_1102E8;
    v26[2] = HKAnalyticsPropertyNameDeviceContextCountiPad;
    v26[3] = HKAnalyticsPropertyNameDeviceContextCountVisionPro;
    v27[2] = &off_1102E8;
    v27[3] = &off_1102E8;
    v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  }

  return v22;
}

- (void)resetMetrics
{
  v2 = [(HDClinicalContentAnalyticsAccumulator *)self unknownRecordsMetric];
  [v2 resetMetric];
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(HDClinicalContentAnalyticsAccumulator *)self batchCount];
  v5 = [(HDClinicalContentAnalyticsAccumulator *)self unknownRecordsMetric];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p> %lu batches: {%@: %lu}", v3, self, v4, @"unknownRecordsMetric", [v5 count]);

  return v6;
}

- (id)analyticsString
{
  v3 = objc_opt_class();
  v4 = [(HDClinicalContentAnalyticsAccumulator *)self batchCount];
  v5 = [(HDClinicalContentAnalyticsAccumulator *)self unknownRecordsMetric];
  v6 = [v5 analyticsString];
  v7 = [NSString stringWithFormat:@"%@ %lu batches:\n\n %@\n\n", v3, v4, v6];

  return v7;
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

@end