@interface ADExperimentManager
+ (BOOL)logAssetSetExperiment:(id)experiment trialData:(id)data experimentsEmitted:(id)emitted;
+ (id)abExperimentFromExperimentAllocationStatus:(id)status;
+ (id)assetSets;
+ (id)configurationForInvocationFeedback;
+ (id)configurationForSiriVOXSounds;
+ (id)configurationForSiriVOXTapToSiriBehavior;
+ (id)expExperimentFromExperimentAllocationStatus:(id)status;
+ (id)expExperimentWithExperimentIdentifiers:(id)identifiers status:(int)status trialNamespace:(id)namespace;
+ (id)experimentIdentifiersTrialProject:(id)project trialNamespace:(id)namespace;
+ (id)filterExperiments:(id)experiments experimentsEmitted:(id)emitted namespaceAssetSet:(id)set;
+ (id)getActiveABExperimentsFromProvider:(id)provider environment:(int)environment retries:(unint64_t)retries;
+ (id)getActiveEXPExperimentsFromProvider:(id)provider environment:(int)environment retries:(unint64_t)retries;
+ (id)getAllEXPExperimentsFromProvider:(id)provider cursor:(id)cursor environment:(int)environment fromDate:(id)date retries:(unint64_t)retries experimentsEmitted:(id)emitted namespaceAssetSet:(id)set;
+ (id)namespaceAssetSet:(id)set;
+ (id)serverConfigurationInfoForVoiceSelectionExperiment;
+ (id)sharedManager;
+ (id)treatmentAllocationStatusToString:(int)string;
+ (int)treatmentAllocationStatusFromAllocationStatusType:(unsigned __int8)type;
+ (void)emitUpdatedExperiments:(id)experiments;
+ (void)tracerAllocationsWithQueue:(id)queue;
- (ADExperimentManager)init;
- (BOOL)_isEndingGroupIdentifier:(id)identifier validForConfiguration:(id)configuration;
- (id)_buildConfigurationsByIdentifier;
- (id)_buildContext;
- (id)_buildServerConfigurationInfosByIdentifier;
- (id)_createExperimentForExperimentConfiguration:(id)configuration experimentIdentifier:(id)identifier;
- (id)_experimentForExperimentConfiguration:(id)configuration;
- (id)_experimentIdentifierForConfigurationIdentifier:(id)identifier;
- (id)_experimentOverrideForExperimentConfiguration:(id)configuration;
- (id)_fallbackConfigurationForEndedExperimentWithIdentifier:(id)identifier experimentState:(id)state;
- (id)_fetchCachedServerConfigurationForConfigurationInfo:(id)info;
- (id)_fetchDictionaryWithFileURL:(id)l;
- (id)_getConfigurationsByIdentifier;
- (id)_getContext;
- (id)_getExperimentStateForServerConfigurationInfo:(id)info;
- (id)_getServerConfigurationInfosByIdentifier;
- (id)_groupOverrideIdentifierForExperimentConfiguration:(id)configuration;
- (id)configurations;
- (id)context;
- (unint64_t)_experimentGroupHashForExperimentConfiguration:(id)configuration experimentIdentifier:(id)identifier;
- (void)_logDidVendExperiment:(id)experiment fetchDetails:(id)details error:(id)error;
- (void)_remoteFetchConfigMetadataWithServerConfigurationInfo:(id)info completion:(id)completion;
- (void)_resolveDataTaskForURLSession:(id)session URL:(id)l completion:(id)completion;
- (void)_serverConfigurationForServerConfigurationInfo:(id)info completion:(id)completion;
- (void)_setExperimentIdentifier:(id)identifier forConfigurationIdentifier:(id)configurationIdentifier;
- (void)_setExperimentState:(id)state forServerConfigurationInfo:(id)info;
- (void)_storeServerConfig:(id)config completion:(id)completion;
- (void)getConfigurationsWithCompletion:(id)completion;
- (void)getContextWithCompletion:(id)completion;
- (void)getExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion;
- (void)resetExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion;
- (void)synchronizeExperimentConfigurationsIfApplicableWithCompletion:(id)completion;
@end

@implementation ADExperimentManager

+ (id)serverConfigurationInfoForVoiceSelectionExperiment
{
  v2 = [AFExperimentServerConfigurationInfo alloc];
  v3 = [NSURL URLWithString:@"https://configuration.apple.com/configurations/internetservices/cloudkit/siri-1.0.plist"];
  v4 = [v2 initWithConfigurationIdentifier:@"08a8a2c8" configurationURL:v3 maxTimeToSync:345600.0];

  return v4;
}

+ (void)emitUpdatedExperiments:(id)experiments
{
  experimentsCopy = experiments;
  v4 = experimentsCopy;
  if (experimentsCopy)
  {
    if ([experimentsCopy count])
    {
      v5 = objc_alloc_init(EXPSiriSchemaEXPAllocationChangelogSnapshot);
      [v5 setAllocations:v4];
      v6 = objc_alloc_init(EXPSiriSchemaEXPSiriClientEvent);
      [v6 setAllocationChangelogSnapshot:v5];
      v7 = +[AssistantSiriAnalytics sharedStream];
      [v7 emitMessage:v6];

      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        v11 = 136315394;
        v12 = "+[ADExperimentManager(Tracer) emitUpdatedExperiments:]";
        v13 = 2048;
        v14 = [v4 count];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Snapshot of all Siri updated experiments emitted. Total: %lu", &v11, 0x16u);
      }
    }

    else
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "+[ADExperimentManager(Tracer) emitUpdatedExperiments:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s No Siri updated experiments to emit", &v11, 0xCu);
      }
    }
  }
}

+ (BOOL)logAssetSetExperiment:(id)experiment trialData:(id)data experimentsEmitted:(id)emitted
{
  experimentCopy = experiment;
  dataCopy = data;
  emittedCopy = emitted;
  v10 = [dataCopy objectForKeyedSubscript:@"TrialProject"];
  if (v10)
  {
    v11 = v10;
    v12 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];

    if (v12)
    {
      v13 = +[UAFAssetSetManager sharedManager];
      v14 = [v13 retrieveAssetSet:experimentCopy usages:0];

      v15 = [dataCopy objectForKeyedSubscript:@"TrialProject"];
      v16 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
      v17 = [ADExperimentManager experimentIdentifiersTrialProject:v15 trialNamespace:v16];

      v18 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
        experimentId = [v14 experimentId];
        experimentId2 = [v17 experimentId];
        treatmentId = [v17 treatmentId];
        *buf = 136316674;
        v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
        v81 = 2112;
        v82 = experimentCopy;
        v83 = 2112;
        v84 = v20;
        v85 = 2112;
        v86 = experimentId;
        v87 = 2112;
        v88 = experimentId2;
        v89 = 2112;
        v90 = treatmentId;
        v91 = 1024;
        deploymentId = [v17 deploymentId];
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s AssetSet %@ (%@), experimentId %@. Trial info: experimentId %@, treatmentId %@, deploymentId %d", buf, 0x44u);
      }

      experimentId3 = [v14 experimentId];
      if (experimentId3 && (v25 = experimentId3, [v14 experimentId], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", &stru_10051F508), v26, v25, !v27))
      {
        v29 = 0;
      }

      else
      {
        experimentId4 = [v17 experimentId];

        if (!experimentId4)
        {
          v55 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            v56 = v55;
            v57 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
            *buf = 136315650;
            v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
            v81 = 2112;
            v82 = experimentCopy;
            v83 = 2112;
            v84 = v57;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s AssetSet %@ (%@), experiment not activated. Trial experiment not activated", buf, 0x20u);
          }

          v34 = 0;
          goto LABEL_40;
        }

        v29 = 1;
      }

      v35 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
      v36 = [emittedCopy objectForKey:v35];

      if (v29 && !v36)
      {
        v37 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v38 = v37;
          v39 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
          experimentId5 = [v17 experimentId];
          *buf = 136315906;
          v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
          v81 = 2112;
          v82 = experimentCopy;
          v83 = 2112;
          v84 = v39;
          v85 = 2112;
          v86 = experimentId5;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s AssetSet %@ (%@), experiment not activated. Trial experiment %@ activated", buf, 0x2Au);

LABEL_37:
        }

LABEL_38:
        v34 = 0;
        goto LABEL_39;
      }

      if (v36)
      {
        v41 = v29;
      }

      else
      {
        v41 = 0;
      }

      if (v41 == 1)
      {
        v42 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v43 = v42;
          v44 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
          experimentId6 = [v17 experimentId];
          *buf = 136315906;
          v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
          v81 = 2112;
          v82 = experimentCopy;
          v83 = 2112;
          v84 = v44;
          v85 = 2112;
          v86 = experimentId6;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s AssetSet %@ (%@), experiment deactivated, Trial experiment %@ activated", buf, 0x2Au);
        }

        v46 = objc_alloc_init(NSMutableArray);
        v47 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
        v48 = [ADExperimentManager expExperimentWithExperimentIdentifiers:v17 status:3 trialNamespace:v47];

        [v46 addObject:v48];
        [ADExperimentManager emitUpdatedExperiments:v46];
        v49 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v50 = v49;
          [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
          v51 = v78 = v36;
          experimentId7 = [v17 experimentId];
          *buf = 136315906;
          v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
          v81 = 2112;
          v82 = experimentCopy;
          v83 = 2112;
          v84 = v51;
          v85 = 2112;
          v86 = experimentId7;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s AssetSet %@ (%@), experiment %@ deactivated, logging emitted", buf, 0x2Au);

          v36 = v78;
        }

        v53 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
        [emittedCopy removeObjectForKey:v53];

        v54 = +[ADPreferences sharedPreferences];
        [v54 setExperimentsUAFEmitted:emittedCopy];

LABEL_26:
        v34 = 1;
LABEL_39:

LABEL_40:
        goto LABEL_41;
      }

      experimentId8 = [v14 experimentId];
      experimentId9 = [v17 experimentId];
      v60 = [experimentId8 isEqualToString:experimentId9];

      if (v60)
      {
        if (!v36)
        {
          v46 = objc_alloc_init(NSMutableArray);
          v68 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
          v69 = [ADExperimentManager expExperimentWithExperimentIdentifiers:"expExperimentWithExperimentIdentifiers:status:trialNamespace:" status:? trialNamespace:?];

          v77 = v69;
          [v46 addObject:v69];
          [ADExperimentManager emitUpdatedExperiments:v46];
          v70 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            v71 = v70;
            v72 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
            experimentId10 = [v14 experimentId];
            *buf = 136315906;
            v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
            v81 = 2112;
            v82 = experimentCopy;
            v83 = 2112;
            v84 = v72;
            v85 = 2112;
            v86 = experimentId10;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%s AssetSet %@ (%@), experiment %@ activated, logging emitted", buf, 0x2Au);

            v36 = 0;
          }

          experimentId11 = [v17 experimentId];
          v75 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
          [emittedCopy setObject:experimentId11 forKey:v75];

          v76 = +[ADPreferences sharedPreferences];
          [v76 setExperimentsUAFEmitted:emittedCopy];

          goto LABEL_26;
        }

        v61 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          goto LABEL_38;
        }

        v38 = v61;
        v62 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
        experimentId12 = [v14 experimentId];
        *buf = 136315906;
        v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
        v81 = 2112;
        v82 = experimentCopy;
        v83 = 2112;
        v84 = v62;
        v85 = 2112;
        v86 = experimentId12;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s AssetSet %@ (%@), experiment %@ activated, logging already emitted", buf, 0x2Au);
      }

      else
      {
        v64 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          goto LABEL_38;
        }

        v38 = v64;
        v65 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
        experimentId12 = [v14 experimentId];
        experimentId13 = [v17 experimentId];
        *buf = 136316162;
        v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
        v81 = 2112;
        v82 = experimentCopy;
        v83 = 2112;
        v84 = v65;
        v85 = 2112;
        v86 = experimentId12;
        v87 = 2112;
        v88 = experimentId13;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s AssetSet %@ (%@), experiment %@ doesn't match Trial experiment %@", buf, 0x34u);
      }

      goto LABEL_37;
    }
  }

  v30 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v31 = v30;
    v32 = [dataCopy objectForKeyedSubscript:@"TrialProject"];
    v33 = [dataCopy objectForKeyedSubscript:@"TrialNamespace"];
    *buf = 136315906;
    v80 = "+[ADExperimentManager(Tracer) logAssetSetExperiment:trialData:experimentsEmitted:]";
    v81 = 2112;
    v82 = experimentCopy;
    v83 = 2112;
    v84 = v32;
    v85 = 2112;
    v86 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s AssetSet %@ not configured to log. Trial Project: %@, Trial Namespace: %@", buf, 0x2Au);
  }

  v34 = 0;
LABEL_41:

  return v34;
}

+ (id)treatmentAllocationStatusToString:(int)string
{
  if ((string - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100515160 + (string - 1));
  }
}

+ (int)treatmentAllocationStatusFromAllocationStatusType:(unsigned __int8)type
{
  if ((type - 1) >= 3)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "+[ADExperimentManager(Tracer) treatmentAllocationStatusFromAllocationStatusType:]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Allocation Status Type Unknown", &v5, 0xCu);
    }

    *&type = 0;
  }

  return type;
}

+ (id)expExperimentWithExperimentIdentifiers:(id)identifiers status:(int)status trialNamespace:(id)namespace
{
  v5 = 0;
  if (identifiers && namespace)
  {
    v6 = *&status;
    namespaceCopy = namespace;
    identifiersCopy = identifiers;
    v5 = objc_alloc_init(EXPSchemaEXPTrialExperiment);
    experimentId = [identifiersCopy experimentId];
    [v5 setExperimentId:experimentId];

    v11 = [NSUUID alloc];
    treatmentId = [identifiersCopy treatmentId];
    v13 = [v11 initWithUUIDString:treatmentId];

    v14 = [[SISchemaUUID alloc] initWithNSUUID:v13];
    [v5 setTreatmentId:v14];

    LODWORD(v14) = [identifiersCopy deploymentId];
    [v5 setDeploymentId:v14];
    [v5 setAllocationStatus:v6];
    [v5 setExperimentNamespace:namespaceCopy];

    v15 = +[NSDate date];
    [v15 timeIntervalSince1970];
    [v5 setLastUpdatedAtInMs:(v16 * 1000.0)];
  }

  return v5;
}

+ (id)expExperimentFromExperimentAllocationStatus:(id)status
{
  statusCopy = status;
  if (statusCopy)
  {
    v5 = objc_alloc_init(EXPSchemaEXPTrialExperiment);
    experimentId = [statusCopy experimentId];
    [v5 setExperimentId:experimentId];

    v7 = [NSUUID alloc];
    treatmentId = [statusCopy treatmentId];
    v9 = [v7 initWithUUIDString:treatmentId];

    v10 = [[SISchemaUUID alloc] initWithNSUUID:v9];
    [v5 setTreatmentId:v10];

    [v5 setDeploymentId:{objc_msgSend(statusCopy, "deploymentId")}];
    [v5 setAllocationStatus:{objc_msgSend(self, "treatmentAllocationStatusFromAllocationStatusType:", objc_msgSend(statusCopy, "type"))}];
    namespaces = [statusCopy namespaces];
    v12 = [namespaces count];

    if (v12)
    {
      namespaces2 = [statusCopy namespaces];
      firstObject = [namespaces2 firstObject];

      name = [firstObject name];
      [v5 setExperimentNamespace:name];

      [v5 setCompatibilityVersion:{objc_msgSend(firstObject, "compatibilityVersion")}];
    }

    date = [statusCopy date];
    [date timeIntervalSince1970];
    [v5 setLastUpdatedAtInMs:(v17 * 1000.0)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)filterExperiments:(id)experiments experimentsEmitted:(id)emitted namespaceAssetSet:(id)set
{
  experimentsCopy = experiments;
  emittedCopy = emitted;
  setCopy = set;
  v54 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = experimentsCopy;
  v10 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v56;
    *&v11 = 136315906;
    v51 = v11;
    v52 = emittedCopy;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        experimentNamespace = [v15 experimentNamespace];
        v17 = [setCopy objectForKeyedSubscript:experimentNamespace];
        if (v17)
        {
          v18 = v17;
          allocationStatus = [v15 allocationStatus];

          if (allocationStatus == 2)
          {
            v20 = +[UAFAssetSetManager sharedManager];
            v21 = [setCopy objectForKeyedSubscript:experimentNamespace];
            v22 = [v20 retrieveAssetSet:v21 usages:0];

            experimentId = [v22 experimentId];
            if (!experimentId || (v24 = experimentId, [v22 experimentId], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", &stru_10051F508), v25, v24, (v26 & 1) != 0))
            {
              v27 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
              {
                v28 = v27;
                experimentNamespace2 = [v15 experimentNamespace];
                experimentId2 = [v15 experimentId];
                *buf = 136315650;
                v60 = "+[ADExperimentManager(Tracer) filterExperiments:experimentsEmitted:namespaceAssetSet:]";
                v61 = 2112;
                v62 = experimentNamespace2;
                v63 = 2112;
                v64 = experimentId2;
                v31 = v28;
                v32 = "%s AssetSet namespace %@ Trial experiment %@ activated. AssetSet experiment not activated.";
                goto LABEL_15;
              }

              goto LABEL_16;
            }

            emittedCopy = v52;
            v33 = [v52 objectForKey:experimentNamespace];

            if (v33)
            {
              v34 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
              {
                v28 = v34;
                experimentNamespace2 = [v15 experimentNamespace];
                experimentId2 = [v15 experimentId];
                *buf = 136315650;
                v60 = "+[ADExperimentManager(Tracer) filterExperiments:experimentsEmitted:namespaceAssetSet:]";
                v61 = 2112;
                v62 = experimentNamespace2;
                v63 = 2112;
                v64 = experimentId2;
                v31 = v28;
                v32 = "%s AssetSet namespace %@ Trial experiment %@ activated. AssetSet experiment activated. Logging already emitted.";
LABEL_15:
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, v32, buf, 0x20u);
              }

LABEL_16:

              emittedCopy = v52;
              goto LABEL_28;
            }

            experimentId3 = [v15 experimentId];
            [v52 setObject:experimentId3 forKey:experimentNamespace];

            v36 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
            {
              v37 = v36;
              experimentNamespace3 = [v15 experimentNamespace];
              experimentId4 = [v15 experimentId];
              *buf = 136315650;
              v60 = "+[ADExperimentManager(Tracer) filterExperiments:experimentsEmitted:namespaceAssetSet:]";
              v61 = 2112;
              v62 = experimentNamespace3;
              v63 = 2112;
              v64 = experimentId4;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s AssetSet namespace %@ Trial experiment %@ activated. AssetSet experiment activated.", buf, 0x20u);

              emittedCopy = v52;
            }
          }
        }

        v40 = [setCopy objectForKeyedSubscript:experimentNamespace];
        if (v40)
        {
          v41 = v40;
          v42 = [emittedCopy objectForKey:experimentNamespace];
          if (v42)
          {
            v43 = v42;
            allocationStatus2 = [v15 allocationStatus];

            if (allocationStatus2 != 2)
            {
              v45 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
              {
                v46 = v45;
                experimentNamespace4 = [v15 experimentNamespace];
                experimentId5 = [v15 experimentId];
                v49 = +[ADExperimentManager treatmentAllocationStatusToString:](ADExperimentManager, "treatmentAllocationStatusToString:", [v15 allocationStatus]);
                *buf = v51;
                v60 = "+[ADExperimentManager(Tracer) filterExperiments:experimentsEmitted:namespaceAssetSet:]";
                v61 = 2112;
                v62 = experimentNamespace4;
                v63 = 2112;
                v64 = experimentId5;
                v65 = 2112;
                v66 = v49;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s AssetSet namespace %@ Trial experiment %@ status update: %@", buf, 0x2Au);

                emittedCopy = v52;
              }

              [emittedCopy removeObjectForKey:experimentNamespace];
            }
          }

          else
          {
          }
        }

        [v54 addObject:v15];
LABEL_28:
      }

      v12 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v12);
  }

  return v54;
}

+ (id)abExperimentFromExperimentAllocationStatus:(id)status
{
  if (status)
  {
    statusCopy = status;
    v4 = objc_alloc_init(SAABTestExperiment);
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [statusCopy deploymentId]);
    [v4 setDeploymentId:v5];

    experimentId = [statusCopy experimentId];
    v7 = [NSString stringWithFormat:@"%@", experimentId];
    [v4 setExperimentId:v7];

    treatmentId = [statusCopy treatmentId];

    v9 = [NSString stringWithFormat:@"%@", treatmentId];
    [v4 setTreatmentId:v9];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getAllEXPExperimentsFromProvider:(id)provider cursor:(id)cursor environment:(int)environment fromDate:(id)date retries:(unint64_t)retries experimentsEmitted:(id)emitted namespaceAssetSet:(id)set
{
  v12 = *&environment;
  providerCopy = provider;
  cursorCopy = cursor;
  dateCopy = date;
  emittedCopy = emitted;
  setCopy = set;
  v18 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v39 = "+[ADExperimentManager(Tracer) getAllEXPExperimentsFromProvider:cursor:environment:fromDate:retries:experimentsEmitted:namespaceAssetSet:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (providerCopy)
  {
    v28 = setCopy;
    v29 = emittedCopy;
    v19 = objc_alloc_init(NSMutableArray);
    v20 = 0;
    v21 = 1;
    do
    {
      [v19 removeAllObjects];

      v37 = 0;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1001BC1C8;
      v32[3] = &unk_100515140;
      selfCopy = self;
      v33 = dateCopy;
      v36 = v12;
      v22 = v19;
      v34 = v22;
      v23 = [providerCopy enumerateExperimentStatusesForEnvironment:v12 startingFromCursor:cursorCopy error:&v37 block:v32];
      v20 = v37;
      if (v20)
      {
        v24 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v39 = "+[ADExperimentManager(Tracer) getAllEXPExperimentsFromProvider:cursor:environment:fromDate:retries:experimentsEmitted:namespaceAssetSet:]";
          v40 = 1024;
          v41 = v12;
          v42 = 2048;
          v43 = v21;
          v44 = 2048;
          v45 = retries + 1;
          v46 = 2112;
          v47 = v20;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Error enumerating updated EXP experiments for environment %d. Execution %lu of %lu tries. Error: %@", buf, 0x30u);
        }
      }

      if (!v20)
      {
        break;
      }
    }

    while (v21++ <= retries);
    if (v20)
    {
      v26 = 0;
      setCopy = v28;
      emittedCopy = v29;
    }

    else
    {
      setCopy = v28;
      emittedCopy = v29;
      v26 = [self filterExperiments:v22 experimentsEmitted:v29 namespaceAssetSet:v28];
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)getActiveEXPExperimentsFromProvider:(id)provider environment:(int)environment retries:(unint64_t)retries
{
  v6 = *&environment;
  providerCopy = provider;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "+[ADExperimentManager(Tracer) getActiveEXPExperimentsFromProvider:environment:retries:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (providerCopy)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = +[ADExperimentManager assetSets];
    v10 = [ADExperimentManager namespaceAssetSet:v9];

    v11 = 0;
    v22 = retries + 1;
    v12 = 1;
    *&v13 = 136316162;
    v21 = v13;
    do
    {
      [v8 removeAllObjects];

      v30 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001BC6C0;
      v25[3] = &unk_100515118;
      selfCopy = self;
      v14 = v10;
      v26 = v14;
      v29 = v6;
      v15 = v8;
      v27 = v15;
      [providerCopy enumerateActiveExperimentsForEnvironment:v6 error:&v30 block:v25];
      v11 = v30;
      if (v11)
      {
        v16 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = v21;
          v32 = "+[ADExperimentManager(Tracer) getActiveEXPExperimentsFromProvider:environment:retries:]";
          v33 = 1024;
          v34 = v6;
          v35 = 2048;
          v36 = v12;
          v37 = 2048;
          v38 = v22;
          v39 = 2112;
          v40 = v11;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Error enumerating EXP active experiments for environment %d. Execution %lu of %lu tries. Error: %@", buf, 0x30u);
        }
      }

      if (!v11)
      {
        break;
      }
    }

    while (v12++ <= retries);
    if (v11)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)getActiveABExperimentsFromProvider:(id)provider environment:(int)environment retries:(unint64_t)retries
{
  v6 = *&environment;
  providerCopy = provider;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "+[ADExperimentManager(Tracer) getActiveABExperimentsFromProvider:environment:retries:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (providerCopy)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = +[ADExperimentManager assetSets];
    v10 = [ADExperimentManager namespaceAssetSet:v9];

    v11 = 0;
    v22 = retries + 1;
    v12 = 1;
    *&v13 = 136316162;
    v21 = v13;
    do
    {
      [v8 removeAllObjects];

      v30 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001BCD94;
      v25[3] = &unk_100515118;
      selfCopy = self;
      v14 = v10;
      v26 = v14;
      v29 = v6;
      v15 = v8;
      v27 = v15;
      [providerCopy enumerateActiveExperimentsForEnvironment:v6 error:&v30 block:v25];
      v11 = v30;
      if (v11)
      {
        v16 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = v21;
          v32 = "+[ADExperimentManager(Tracer) getActiveABExperimentsFromProvider:environment:retries:]";
          v33 = 1024;
          v34 = v6;
          v35 = 2048;
          v36 = v12;
          v37 = 2048;
          v38 = v22;
          v39 = 2112;
          v40 = v11;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Error enumerating active AB experiments for environment %d. Execution %lu of %lu tries. Error: %@", buf, 0x30u);
        }
      }

      if (!v11)
      {
        break;
      }
    }

    while (v12++ <= retries);
    if (v11)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)experimentIdentifiersTrialProject:(id)project trialNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v6 = [TRIProject projectIdFromName:project];
  if (v6 && (v7 = v6, TRIProject_ProjectId_IsValidValue()))
  {
    v8 = [TRIClient clientWithIdentifier:v7];
    v9 = [v8 experimentIdentifiersWithNamespaceName:namespaceCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)tracerAllocationsWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "+[ADExperimentManager(Tracer) tracerAllocationsWithQueue:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = +[ADDaemon sharedDaemon];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BD2DC;
  v8[3] = &unk_10051D770;
  v9 = queueCopy;
  selfCopy = self;
  v7 = queueCopy;
  [v6 scheduleUnlockedWork:v8];
}

+ (id)namespaceAssetSet:(id)set
{
  if (set)
  {
    setCopy = set;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001BE02C;
    v6[3] = &unk_1005150A0;
    v4 = objc_opt_new();
    v7 = v4;
    [setCopy enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)assetSets
{
  if (qword_1005904A8 != -1)
  {
    dispatch_once(&qword_1005904A8, &stru_100515078);
  }

  v2 = [qword_1005904A0 copy];

  return v2;
}

- (void)_setExperimentState:(id)state forServerConfigurationInfo:(id)info
{
  infoCopy = info;
  stateCopy = state;
  v9 = +[ADPreferences sharedPreferences];
  buildDictionaryRepresentation = [stateCopy buildDictionaryRepresentation];

  configurationIdentifier = [infoCopy configurationIdentifier];

  [v9 setExperimentState:buildDictionaryRepresentation forConfigurationIdentifier:configurationIdentifier];
}

- (id)_getExperimentStateForServerConfigurationInfo:(id)info
{
  infoCopy = info;
  v4 = +[ADPreferences sharedPreferences];
  configurationIdentifier = [infoCopy configurationIdentifier];

  v6 = [v4 getExperimentStateForConfigurationIdentifier:configurationIdentifier];

  if (v6)
  {
    v7 = [[AFExperimentState alloc] initWithDictionaryRepresentation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_fetchDictionaryWithFileURL:(id)l
{
  v8 = 0;
  v3 = [NSDictionary dictionaryWithContentsOfURL:l error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[ADExperimentManager _fetchDictionaryWithFileURL:]";
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Could not deserialize configuration file %@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_fetchCachedServerConfigurationForConfigurationInfo:(id)info
{
  configurationIdentifier = [info configurationIdentifier];
  v5 = [configurationIdentifier stringByAppendingString:@".plist"];

  v6 = AFUserSupportDirectoryPath();
  v7 = [v6 stringByAppendingPathComponent:v5];
  v8 = [NSURL fileURLWithPath:v7];

  v9 = [(ADExperimentManager *)self _fetchDictionaryWithFileURL:v8];
  if (v9)
  {
    v10 = [[AFExperimentConfiguration alloc] initWithDictionaryRepresentation:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_storeServerConfig:(id)config completion:(id)completion
{
  configCopy = config;
  completionCopy = completion;
  identifier = [configCopy identifier];
  v8 = [identifier stringByAppendingString:@".plist"];

  v9 = AFUserSupportDirectoryPath();
  v10 = [v9 stringByAppendingPathComponent:v8];
  v11 = [NSURL fileURLWithPath:v10];

  if (!v11)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[ADExperimentManager _storeServerConfig:completion:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Directory is unavailable for writing configuration cache", buf, 0xCu);
    }

    v13 = [AFError errorWithCode:3309];
    completionCopy[2](completionCopy, v13);
  }

  buildDictionaryRepresentation = [configCopy buildDictionaryRepresentation];
  v20 = 0;
  v15 = [buildDictionaryRepresentation writeToURL:v11 error:&v20];
  v16 = v20;

  v17 = 0;
  if ((v15 & 1) == 0)
  {
    v18 = AFSiriLogContextDaemon;
    v19 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
    v17 = v16;
    if (v19)
    {
      *buf = 136315394;
      v22 = "[ADExperimentManager _storeServerConfig:completion:]";
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Not able to write remote configuration to cache. {writeError: %{public}@}", buf, 0x16u);
      v17 = v16;
    }
  }

  completionCopy[2](completionCopy, v17);
}

- (void)_resolveDataTaskForURLSession:(id)session URL:(id)l completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001CB854;
  v9[3] = &unk_100515CA8;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = [session dataTaskWithURL:l completionHandler:v9];
  [v8 resume];
}

- (void)_remoteFetchConfigMetadataWithServerConfigurationInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  session = self->_session;
  if (!session)
  {
    v9 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v9 setTimeoutIntervalForResource:15.0];
    [v9 setAllowsCellularAccess:1];
    v10 = [NSURLSession sessionWithConfiguration:v9];
    v11 = self->_session;
    self->_session = v10;

    session = self->_session;
  }

  configurationURL = [infoCopy configurationURL];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001CB9AC;
  v15[3] = &unk_100515C80;
  v16 = infoCopy;
  v17 = completionCopy;
  v13 = infoCopy;
  v14 = completionCopy;
  [(ADExperimentManager *)self _resolveDataTaskForURLSession:session URL:configurationURL completion:v15];
}

- (id)_fallbackConfigurationForEndedExperimentWithIdentifier:(id)identifier experimentState:(id)state
{
  stateCopy = state;
  identifierCopy = identifier;
  v7 = [AFExperimentGroup alloc];
  endingGroupIdentifier = [stateCopy endingGroupIdentifier];
  v9 = [v7 initWithIdentifier:endingGroupIdentifier allocation:100 properties:0];

  v10 = [AFExperimentConfiguration alloc];
  version = [stateCopy version];

  v12 = [v10 initWithType:2 identifier:identifierCopy version:version controlGroup:v9 experimentGroups:&__NSArray0__struct salt:@"salt"];

  return v12;
}

- (BOOL)_isEndingGroupIdentifier:(id)identifier validForConfiguration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  controlGroup = [configurationCopy controlGroup];
  identifier = [controlGroup identifier];
  v9 = [identifier isEqualToString:identifierCopy];

  if (v9)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    experimentGroups = [configurationCopy experimentGroups];
    v10 = [experimentGroups countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(experimentGroups);
          }

          identifier2 = [*(*(&v17 + 1) + 8 * i) identifier];
          v15 = [identifier2 isEqualToString:identifierCopy];

          if (v15)
          {
            LOBYTE(v10) = 1;
            goto LABEL_13;
          }
        }

        v10 = [experimentGroups countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v10;
}

- (void)_serverConfigurationForServerConfigurationInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = [(ADExperimentManager *)self _getExperimentStateForServerConfigurationInfo:infoCopy];
  if (![v8 didEnd])
  {
    [infoCopy maxTimeToSync];
    v12 = v11;
    lastSyncDate = [v8 lastSyncDate];
    [lastSyncDate timeIntervalSinceNow];
    v15 = v14;

    if (v8 && v12 >= -v15)
    {
      _getConfigurationsByIdentifier = [(ADExperimentManager *)self _getConfigurationsByIdentifier];
      configurationIdentifier = [infoCopy configurationIdentifier];
      configurationIdentifier2 = [_getConfigurationsByIdentifier objectForKey:configurationIdentifier];

      if (configurationIdentifier2)
      {
LABEL_8:
        (*(completionCopy + 2))(completionCopy, configurationIdentifier2, 0, 0);
        goto LABEL_9;
      }

      v18 = [(ADExperimentManager *)self _fetchCachedServerConfigurationForConfigurationInfo:infoCopy];
      if (v18)
      {
        configurationIdentifier2 = v18;
        goto LABEL_8;
      }
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001CC468;
    v19[3] = &unk_1005173D8;
    v19[4] = self;
    v21 = completionCopy;
    v20 = infoCopy;
    [(ADExperimentManager *)self _remoteFetchConfigMetadataWithServerConfigurationInfo:v20 completion:v19];

    goto LABEL_11;
  }

  configurationIdentifier2 = [infoCopy configurationIdentifier];
  v10 = [(ADExperimentManager *)self _fallbackConfigurationForEndedExperimentWithIdentifier:configurationIdentifier2 experimentState:v8];
  (*(completionCopy + 2))(completionCopy, v10, 0, 0);

LABEL_9:
LABEL_11:
}

- (void)_setExperimentIdentifier:(id)identifier forConfigurationIdentifier:(id)configurationIdentifier
{
  configurationIdentifierCopy = configurationIdentifier;
  identifierCopy = identifier;
  v7 = +[ADPreferences sharedPreferences];
  [v7 setExperimentIdentifier:identifierCopy forConfigurationIdentifier:configurationIdentifierCopy];

  [v7 synchronize];
}

- (id)_experimentIdentifierForConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[ADPreferences sharedPreferences];
  v5 = [v4 experimentIdentifierForConfigurationIdentifier:identifierCopy];

  return v5;
}

- (unint64_t)_experimentGroupHashForExperimentConfiguration:(id)configuration experimentIdentifier:(id)identifier
{
  configurationCopy = configuration;
  v6 = [identifier dataUsingEncoding:4];
  salt = [configurationCopy salt];

  v8 = [salt dataUsingEncoding:4];
  v9 = AFSecurityDigestData();
  v10 = [v9 hash];

  return v10;
}

- (id)_createExperimentForExperimentConfiguration:(id)configuration experimentIdentifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v8 = [(ADExperimentManager *)self _experimentOverrideForExperimentConfiguration:configurationCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(ADExperimentManager *)self _experimentGroupHashForExperimentConfiguration:configurationCopy experimentIdentifier:identifierCopy];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    allGroups = [configurationCopy allGroups];
    v13 = [allGroups countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v41;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(allGroups);
          }

          v15 += [*(*(&v40 + 1) + 8 * i) allocation];
        }

        v14 = [allGroups countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v14);

      if (v15)
      {
        v15 = v11 % v15;
      }
    }

    else
    {

      v15 = 0;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allGroups2 = [configurationCopy allGroups];
    v19 = [allGroups2 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v37;
LABEL_15:
      v23 = 0;
      while (1)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(allGroups2);
        }

        v24 = *(*(&v36 + 1) + 8 * v23);
        v21 += [v24 allocation];
        if (v15 < v21)
        {
          break;
        }

        if (v20 == ++v23)
        {
          v20 = [allGroups2 countByEnumeratingWithState:&v36 objects:v46 count:16];
          if (v20)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }

      firstObject = v24;

      if (firstObject)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_21:
    }

    v26 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v45 = "[ADExperimentManager _createExperimentForExperimentConfiguration:experimentIdentifier:]";
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Unable to select deployment group based on allocation.", buf, 0xCu);
    }

    controlGroup = [configurationCopy controlGroup];
    v28 = controlGroup;
    if (controlGroup)
    {
      firstObject = controlGroup;
    }

    else
    {
      experimentGroups = [configurationCopy experimentGroups];
      firstObject = [experimentGroups firstObject];
    }

LABEL_29:
    v30 = [AFExperiment alloc];
    identifier = [configurationCopy identifier];
    version = [configurationCopy version];
    identifier2 = [firstObject identifier];
    properties = [firstObject properties];
    v10 = [v30 initWithConfigurationIdentifier:identifier configurationVersion:version deploymentGroupIdentifier:identifier2 deploymentGroupProperties:properties deploymentReason:1];
  }

  return v10;
}

- (id)_groupOverrideIdentifierForExperimentConfiguration:(id)configuration
{
  [configuration identifier];
  v3 = _AFPreferencesValueForKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_experimentOverrideForExperimentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(ADExperimentManager *)self _groupOverrideIdentifierForExperimentConfiguration:configurationCopy];
  if (v5)
  {
    controlGroup = [configurationCopy controlGroup];
    identifier = [controlGroup identifier];
    v8 = [v5 isEqualToString:identifier];

    if (v8)
    {
      v9 = controlGroup;
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      experimentGroups = [configurationCopy experimentGroups];
      v9 = [experimentGroups countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v11 = *v24;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(experimentGroups);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            identifier2 = [v13 identifier];
            v15 = [v5 isEqualToString:identifier2];

            if (v15)
            {
              v9 = v13;
              goto LABEL_15;
            }
          }

          v9 = [experimentGroups countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    if (v9)
    {
      v16 = [AFExperiment alloc];
      identifier3 = [configurationCopy identifier];
      version = [configurationCopy version];
      identifier4 = [v9 identifier];
      properties = [v9 properties];
      v21 = [v16 initWithConfigurationIdentifier:identifier3 configurationVersion:version deploymentGroupIdentifier:identifier4 deploymentGroupProperties:properties deploymentReason:2];

      goto LABEL_19;
    }
  }

  else
  {
    v9 = 0;
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (void)resetExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CD28C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (id)_experimentForExperimentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifier = [configurationCopy identifier];
  v6 = [(ADExperimentManager *)self _experimentIdentifierForConfigurationIdentifier:identifier];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = SiriCoreUUIDStringCreate();

    identifier2 = [configurationCopy identifier];
    [(ADExperimentManager *)self _setExperimentIdentifier:v7 forConfigurationIdentifier:identifier2];

    v6 = v7;
  }

  v9 = [(ADExperimentManager *)self _createExperimentForExperimentConfiguration:configurationCopy experimentIdentifier:v6];

  return v9;
}

- (id)_buildContext
{
  v3 = objc_alloc_init(NSMutableDictionary);
  _getConfigurationsByIdentifier = [(ADExperimentManager *)self _getConfigurationsByIdentifier];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001CD5F8;
  v12 = &unk_100515C18;
  selfCopy = self;
  v14 = v3;
  v5 = v3;
  [_getConfigurationsByIdentifier enumerateKeysAndObjectsUsingBlock:&v9];

  v6 = [AFExperimentContext alloc];
  v7 = [v6 initWithExperimentsByConfigurationIdentifier:{v5, v9, v10, v11, v12, selfCopy}];

  return v7;
}

- (id)_getContext
{
  currentContext = self->_currentContext;
  if (!currentContext)
  {
    _buildContext = [(ADExperimentManager *)self _buildContext];
    v5 = self->_currentContext;
    self->_currentContext = _buildContext;

    currentContext = self->_currentContext;
  }

  return currentContext;
}

- (id)_buildServerConfigurationInfosByIdentifier
{
  v2 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(&__NSArray0__struct, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [&__NSArray0__struct countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 136315394;
    v12 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(&__NSArray0__struct);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        configurationIdentifier = [v8 configurationIdentifier];
        if (configurationIdentifier)
        {
          [v2 setObject:v8 forKey:configurationIdentifier];
        }

        else
        {
          v10 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = v12;
            v18 = "[ADExperimentManager _buildServerConfigurationInfosByIdentifier]";
            v19 = 2112;
            v20 = v8;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ has no identifier.", buf, 0x16u);
          }
        }
      }

      v5 = [&__NSArray0__struct countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)_buildConfigurationsByIdentifier
{
  v2 = +[ADExperimentManager configurationForSiriVOXSounds];
  v29[0] = v2;
  v3 = +[ADExperimentManager configurationForSiriVOXTapToSiriBehavior];
  v29[1] = v3;
  v4 = +[ADExperimentManager configurationForInvocationFeedback];
  v29[2] = v4;
  v5 = [NSArray arrayWithObjects:v29 count:3];

  v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    *&v9 = 136315394;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        identifier = [v13 identifier];
        if (identifier)
        {
          controlGroup = [v13 controlGroup];
          if (controlGroup)
          {
            [v6 setObject:v13 forKey:identifier];
          }

          else
          {
            v17 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = v19;
              v25 = "[ADExperimentManager _buildConfigurationsByIdentifier]";
              v26 = 2112;
              v27 = v13;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s %@ has no control group.", buf, 0x16u);
            }
          }
        }

        else
        {
          v16 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = "[ADExperimentManager _buildConfigurationsByIdentifier]";
            v26 = 2112;
            v27 = v13;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s %@ has no identifier.", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v10);
  }

  return v6;
}

- (id)_getServerConfigurationInfosByIdentifier
{
  serverConfigurationInfoByIdentifier = self->_serverConfigurationInfoByIdentifier;
  if (!serverConfigurationInfoByIdentifier)
  {
    _buildServerConfigurationInfosByIdentifier = [(ADExperimentManager *)self _buildServerConfigurationInfosByIdentifier];
    v5 = self->_serverConfigurationInfoByIdentifier;
    self->_serverConfigurationInfoByIdentifier = _buildServerConfigurationInfosByIdentifier;

    serverConfigurationInfoByIdentifier = self->_serverConfigurationInfoByIdentifier;
  }

  return serverConfigurationInfoByIdentifier;
}

- (id)_getConfigurationsByIdentifier
{
  configurationsByIdentifier = self->_configurationsByIdentifier;
  if (!configurationsByIdentifier)
  {
    _buildConfigurationsByIdentifier = [(ADExperimentManager *)self _buildConfigurationsByIdentifier];
    v5 = self->_configurationsByIdentifier;
    self->_configurationsByIdentifier = _buildConfigurationsByIdentifier;

    configurationsByIdentifier = self->_configurationsByIdentifier;
  }

  return configurationsByIdentifier;
}

- (void)_logDidVendExperiment:(id)experiment fetchDetails:(id)details error:(id)error
{
  experimentCopy = experiment;
  detailsCopy = details;
  errorCopy = error;
  v13 = experimentCopy;
  v14 = detailsCopy;
  v9 = detailsCopy;
  v10 = experimentCopy;
  v11 = errorCopy;
  AnalyticsSendEventLazy();
}

- (void)getExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    +[NSDate now];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001CE04C;
    v16 = v15[3] = &unk_100515BC8;
    selfCopy = self;
    v18 = completionCopy;
    v8 = v16;
    v9 = objc_retainBlock(v15);
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001CE1A0;
    v12[3] = &unk_10051E088;
    v12[4] = self;
    v13 = identifierCopy;
    v14 = v9;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)synchronizeExperimentConfigurationsIfApplicableWithCompletion:(id)completion
{
  completionCopy = completion;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  _getServerConfigurationInfosByIdentifier = [(ADExperimentManager *)self _getServerConfigurationInfosByIdentifier];
  allValues = [_getServerConfigurationInfosByIdentifier allValues];

  obj = allValues;
  v7 = [allValues countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v24;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      v12 = [(ADExperimentManager *)self _getExperimentStateForServerConfigurationInfo:v11];
      if (!v12)
      {
        v14 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v15 = v14;
          configurationIdentifier = [v11 configurationIdentifier];
          *buf = 136315394;
          v28 = "[ADExperimentManager synchronizeExperimentConfigurationsIfApplicableWithCompletion:]";
          v29 = 2112;
          v30 = configurationIdentifier;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Not Synchronizing experiment %@ since user is not yet a participant.", buf, 0x16u);
        }

        v13 = 0;
        goto LABEL_16;
      }

      v13 = v12;
      if ([v12 didEnd])
      {
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v18 = v17;
          configurationIdentifier2 = [v11 configurationIdentifier];
          *buf = 136315394;
          v28 = "[ADExperimentManager synchronizeExperimentConfigurationsIfApplicableWithCompletion:]";
          v29 = 2112;
          v30 = configurationIdentifier2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Not synchronizing. %@ experiment ended", buf, 0x16u);
        }

LABEL_16:
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_19;
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1001CE774;
      v21[3] = &unk_100515BF0;
      v21[4] = v11;
      v22 = completionCopy;
      [(ADExperimentManager *)self _serverConfigurationForServerConfigurationInfo:v11 completion:v21];
    }

    v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_19:
}

- (void)getContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001CE9D8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (id)context
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001CEB24;
  v10 = sub_1001CEB34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CEB3C;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)getConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001CEC2C;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (id)configurations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001CEB24;
  v10 = sub_1001CEB34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CED88;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (ADExperimentManager)init
{
  v8.receiver = self;
  v8.super_class = ADExperimentManager;
  v2 = [(ADExperimentManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.assistant.experiment-manager", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_1005904D0 != -1)
  {
    dispatch_once(&qword_1005904D0, &stru_100515BA0);
  }

  v3 = qword_1005904D8;

  return v3;
}

+ (id)configurationForInvocationFeedback
{
  v2 = [AFExperimentConfiguration newWithBuilder:&stru_100517490];

  return v2;
}

+ (id)configurationForSiriVOXSounds
{
  v16 = [AFExperimentConfiguration alloc];
  v15 = AFSiriVOXSoundsExperimentConfigurationIdentifier;
  v2 = AFSiriVOXSoundsExperimentGroupPropertyKeyPlaysTwoShotSound;
  v3 = AFSiriVOXSoundsExperimentGroupPropertyKeyPlaysSessionInactiveSound;
  v18 = AFSiriVOXSoundsExperimentGroupPropertyKeyPlaysTwoShotSound;
  v19 = AFSiriVOXSoundsExperimentGroupPropertyKeyPlaysSessionInactiveSound;
  v20 = &__kCFBooleanTrue;
  v21 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v18 count:2];
  v5 = [[AFExperimentGroup alloc] initWithIdentifier:@"control" allocation:0 properties:v4];

  v18 = v2;
  v19 = v3;
  v20 = &__kCFBooleanFalse;
  v21 = &__kCFBooleanFalse;
  v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v18 count:2];
  v7 = [[AFExperimentGroup alloc] initWithIdentifier:@"no_sound" allocation:0 properties:v6];

  v17[0] = v7;
  v18 = v2;
  v19 = v3;
  v20 = &__kCFBooleanTrue;
  v21 = &__kCFBooleanFalse;
  v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v18 count:2];
  v9 = [[AFExperimentGroup alloc] initWithIdentifier:@"two_shot_sound_only" allocation:100 properties:v8];

  v17[1] = v9;
  v18 = v2;
  v19 = v3;
  v20 = &__kCFBooleanFalse;
  v21 = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v18 count:2];
  v11 = [[AFExperimentGroup alloc] initWithIdentifier:@"session_inactive_sound_only" allocation:0 properties:v10];

  v17[2] = v11;
  v12 = [NSArray arrayWithObjects:v17 count:3];
  v13 = [v16 initWithType:1 identifier:v15 version:@"1.0.4" controlGroup:v5 experimentGroups:v12 salt:@"046F15EA-A8D5-4FFB-89F0-07F9861366C7"];

  return v13;
}

+ (id)configurationForSiriVOXTapToSiriBehavior
{
  v2 = [AFExperimentConfiguration alloc];
  v3 = AFSiriVOXTapToSiriBehaviorExperimentConfigurationIdentifier;
  v4 = AFSiriVOXTapToSiriBehaviorExperimentGroupPropertyKeyPlaysSound;
  v13 = AFSiriVOXTapToSiriBehaviorExperimentGroupPropertyKeyPlaysSound;
  v14 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v6 = [[AFExperimentGroup alloc] initWithIdentifier:@"control" allocation:100 properties:v5];

  v13 = v4;
  v14 = &__kCFBooleanFalse;
  v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v8 = [[AFExperimentGroup alloc] initWithIdentifier:@"no_sound" allocation:0 properties:v7];

  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [v2 initWithType:1 identifier:v3 version:@"1.0.0" controlGroup:v6 experimentGroups:v9 salt:@"25EDCBB2-41FF-4FB6-9518-3A60CF1E463F"];

  return v10;
}

@end