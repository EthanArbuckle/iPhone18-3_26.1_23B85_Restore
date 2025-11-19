@interface ADSiriAnalyticsExperimentIdentifiersProvider
+ (id)_experimentInfoFromExperiment:(id)a3;
+ (id)createExperimentContextEventWithBucketId:(unsigned int)a3;
+ (void)_appendExperimentsFromEnvironment:(int)a3 toExperimentInfos:(id)a4;
@end

@implementation ADSiriAnalyticsExperimentIdentifiersProvider

+ (id)_experimentInfoFromExperiment:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(DIMSchemaDIMExperimentInfo);
  v5 = [v3 deploymentId];
  v6 = [v5 integerValue];

  [v4 setDeploymentId:v6];
  v7 = [v3 experimentId];
  [v4 setExperimentId:v7];
  v8 = [SISchemaUUID alloc];
  v9 = [NSUUID alloc];
  v10 = [v3 treatmentId];

  v11 = [v9 initWithUUIDString:v10];
  v12 = [v8 initWithNSUUID:v11];

  [v4 setTreatmentId:v12];
  v13 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [NSNumber numberWithInteger:v6];
    v17 = 136315906;
    v18 = "+[ADSiriAnalyticsExperimentIdentifiersProvider _experimentInfoFromExperiment:]";
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Created experimentInfo with deploymentId:%@ experimentId:%@ treatmentId%@", &v17, 0x2Au);
  }

  return v4;
}

+ (void)_appendExperimentsFromEnvironment:(int)a3 toExperimentInfos:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v17 = v7;
    v18 = TRIDeploymentEnvironment_EnumDescriptor();
    v19 = [v18 textFormatNameForValue:v4];
    *buf = 136315394;
    v26 = "+[ADSiriAnalyticsExperimentIdentifiersProvider _appendExperimentsFromEnvironment:toExperimentInfos:]";
    v27 = 2112;
    v28 = v19;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Fetching experiments for environment %@", buf, 0x16u);
  }

  v8 = +[TRIAllocationStatus defaultProvider];
  v9 = [ADExperimentManager getActiveABExperimentsFromProvider:v8 environment:v4 retries:1];

  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [a1 _experimentInfoFromExperiment:{*(*(&v20 + 1) + 8 * v14), v20}];
          [v6 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v16 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "+[ADSiriAnalyticsExperimentIdentifiersProvider _appendExperimentsFromEnvironment:toExperimentInfos:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Error retrieving experiment information.", buf, 0xCu);
    }
  }
}

+ (id)createExperimentContextEventWithBucketId:(unsigned int)a3
{
  v3 = *&a3;
  v5 = objc_alloc_init(NSMutableArray);
  [a1 _appendExperimentsFromEnvironment:0 toExperimentInfos:v5];
  [a1 _appendExperimentsFromEnvironment:3 toExperimentInfos:v5];
  v6 = objc_alloc_init(DIMSchemaDIMExperimentContext);
  [v6 setExperimentInfos:v5];
  [v6 setExperimentalBucketId:v3];
  v7 = objc_alloc_init(DIMSchemaDIMClientEvent);
  [v7 setExperimentContext:v6];

  return v7;
}

@end