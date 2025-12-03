@interface WISTrialExperimentsManager
+ (id)getSharedInstance;
- (WISTrialExperimentsManager)init;
- (void)notifyRegisteredClientsForExperimentEnd;
- (void)notifyRegisteredClientsForExperimentStart:(id)start;
- (void)readParametersFromPlist:(id)plist;
- (void)subscribeToTrial;
- (void)updateTreatment;
@end

@implementation WISTrialExperimentsManager

+ (id)getSharedInstance
{
  if (qword_1002D8308 != -1)
  {
    sub_1001FF294();
  }

  v3 = qword_1002D8300;

  return v3;
}

- (WISTrialExperimentsManager)init
{
  v9.receiver = self;
  v9.super_class = WISTrialExperimentsManager;
  v2 = [(WISTrialExperimentsManager *)&v9 init];
  if (v2)
  {
    v3 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1001FF2A8(v3);
    }

    [(WISTrialExperimentsManager *)v2 setCellularProdExpQueue:dispatch_queue_create("com.apple.WirelessInsights.CellularProductExperimentsManager", 0)];
    v4 = [TRIClient clientWithIdentifier:259];
    trialClient = v2->trialClient;
    v2->trialClient = v4;

    v6 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1001FF32C(v6);
    }

    if (v2->trialClient)
    {
      [(WISTrialExperimentsManager *)v2 subscribeToTrial];
    }

    v7 = v2;
  }

  return v2;
}

- (void)readParametersFromPlist:(id)plist
{
  plistCopy = plist;
  if (plistCopy)
  {
    v14 = 0;
    v4 = [[NSDictionary alloc] initWithContentsOfURL:plistCopy error:&v14];
    v5 = v14;
    if ([v4 count])
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v10 = [v4 objectForKeyedSubscript:@"com.apple.wirelessinsightsd"];
      v11 = *(qword_1002DBE98 + 48);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v12)
        {
          *buf = 138412546;
          v16 = off_1002D4F80;
          v17 = 2080;
          v18 = "[WISTrialExperimentsManager readParametersFromPlist:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#I %@: Bundle ID com.apple.wirelessinsightsd found in the plist, %s", buf, 0x16u);
          v11 = *(qword_1002DBE98 + 48);
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v16 = v10;
          v17 = 2112;
          v18 = off_1002D4F80;
          v19 = 2080;
          v20 = "[WISTrialExperimentsManager readParametersFromPlist:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#I %@: WirelessInsightsd parameters for product experimentation are %@, %s", buf, 0x20u);
        }

        v13 = +[FederatedMobility getSharedInstance];
        [v13 initializeWithConfig:v10];
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 138412546;
        v16 = off_1002D4F80;
        v17 = 2080;
        v18 = "[WISTrialExperimentsManager readParametersFromPlist:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#I %@: readParametersFromPlist: No Bundle ID com.apple.wirelessinsightsd in the plist, %s", buf, 0x16u);
      }
    }

    else
    {
      v7 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v16 = v5;
        v17 = 2112;
        v18 = off_1002D4F80;
        v19 = 2080;
        v20 = "[WISTrialExperimentsManager readParametersFromPlist:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#I %@: readParametersFromPlist: Error reading from plist file: %@, %s", buf, 0x20u);
      }
    }

    v13 = +[FederatedMobility getSharedInstance];
    [v13 initializeWithConfig:&__NSDictionary0__struct];
    v10 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v8 = +[FederatedMobility getSharedInstance];
  [v8 initializeWithConfig:&__NSDictionary0__struct];

  v9 = *(qword_1002DBE98 + 48);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = off_1002D4F80;
    v17 = 2080;
    v18 = "[WISTrialExperimentsManager readParametersFromPlist:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#I %@: No active Experiment: Initialize FederatedMobility object with empty config %s", buf, 0x16u);
  }

LABEL_21:
}

- (void)notifyRegisteredClientsForExperimentStart:(id)start
{
  startCopy = start;
  v5 = *(qword_1002DBE98 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412802;
    v7 = off_1002D4F80;
    v8 = 2112;
    v9 = startCopy;
    v10 = 2080;
    v11 = "[WISTrialExperimentsManager notifyRegisteredClientsForExperimentStart:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#I %@: Experiment Start: set parameters from plist at %@, %s", &v6, 0x20u);
  }

  [(WISTrialExperimentsManager *)self readParametersFromPlist:startCopy];
}

- (void)notifyRegisteredClientsForExperimentEnd
{
  v3 = *(qword_1002DBE98 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412546;
    v5 = off_1002D4F80;
    v6 = 2080;
    v7 = "[WISTrialExperimentsManager notifyRegisteredClientsForExperimentEnd]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#I %@: Experiment End: restore to default parameters %s", &v4, 0x16u);
  }

  [(WISTrialExperimentsManager *)self readParametersFromPlist:0];
}

- (void)updateTreatment
{
  [(TRIClient *)self->trialClient refresh];
  v3 = [(TRIClient *)self->trialClient experimentIdentifiersWithNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL"];
  v4 = *(qword_1002DBE98 + 48);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = off_1002D4F80;
      experimentId = [v3 experimentId];
      deploymentId = [v3 deploymentId];
      treatmentId = [v3 treatmentId];
      v27 = 138413314;
      v28 = v6;
      v29 = 2112;
      v30 = experimentId;
      v31 = 1024;
      *v32 = deploymentId;
      *&v32[4] = 2112;
      *&v32[6] = treatmentId;
      v33 = 2080;
      v34 = "[WISTrialExperimentsManager updateTreatment]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#I %@: experimentIdentifiers are: experimentId: %@, deploymentId: %d, treatmentId: %@, %s", &v27, 0x30u);
    }

    v10 = [(TRIClient *)self->trialClient levelForFactor:off_1002D4F88 withNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL"];
    v11 = v10;
    if (!v10)
    {
      v25 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = 138412546;
        v28 = off_1002D4F80;
        v29 = 2080;
        v30 = "[WISTrialExperimentsManager updateTreatment]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "#I %@: activateTreatment: Invalid Trial level, %s", &v27, 0x16u);
      }

      goto LABEL_23;
    }

    fileValue = [v10 fileValue];
    path = [fileValue path];
    if (path)
    {
      fileValue2 = [v11 fileValue];
      path2 = [fileValue2 path];
      v16 = [path2 length] == 0;

      if (!v16)
      {
        fileValue3 = [v11 fileValue];
        path3 = [fileValue3 path];
        v19 = [NSURL fileURLWithPath:path3];

        v20 = *(qword_1002DBE98 + 48);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v19)
        {
          if (v21)
          {
            v22 = off_1002D4F80;
            fileValue4 = [v11 fileValue];
            path4 = [fileValue4 path];
            v27 = 138412802;
            v28 = v22;
            v29 = 2112;
            v30 = path4;
            v31 = 2080;
            *v32 = "[WISTrialExperimentsManager updateTreatment]";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "#I %@: activateTreatment: Trial Asset path: %@, %s", &v27, 0x20u);
          }

          [(WISTrialExperimentsManager *)self notifyRegisteredClientsForExperimentStart:v19];
        }

        else if (v21)
        {
          v27 = 138412546;
          v28 = off_1002D4F80;
          v29 = 2080;
          v30 = "[WISTrialExperimentsManager updateTreatment]";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "#I %@: activateTreatment: Invalid asset path in trial, %s", &v27, 0x16u);
        }

LABEL_23:
        goto LABEL_24;
      }
    }

    else
    {
    }

    v26 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = 138412546;
      v28 = off_1002D4F80;
      v29 = 2080;
      v30 = "[WISTrialExperimentsManager updateTreatment]";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "#I %@: activateTreatment: Invalid Asset Path. Treatment ended. Clear trial plist, %s", &v27, 0x16u);
    }

    [(WISTrialExperimentsManager *)self notifyRegisteredClientsForExperimentEnd];
    goto LABEL_23;
  }

  if (v5)
  {
    v27 = 138412546;
    v28 = off_1002D4F80;
    v29 = 2080;
    v30 = "[WISTrialExperimentsManager updateTreatment]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#I %@: experimentIdentifiers nil. Experiment ended, %s", &v27, 0x16u);
  }

  [(WISTrialExperimentsManager *)self notifyRegisteredClientsForExperimentEnd];
LABEL_24:
}

- (void)subscribeToTrial
{
  trialClient = self->trialClient;
  v4 = *(qword_1002DBE98 + 48);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (trialClient)
  {
    if (v5)
    {
      *buf = 138412546;
      *&buf[4] = off_1002D4F80;
      *&buf[12] = 2080;
      *&buf[14] = "[WISTrialExperimentsManager subscribeToTrial]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#I %@: checkTreatmentUpdate: Subscribing to Trial, %s", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v6 = objc_autoreleasePoolPush();
    objc_initWeak(&location, self);
    v7 = self->trialClient;
    cellularProdExpQueue = [(WISTrialExperimentsManager *)self cellularProdExpQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005955C;
    v11[3] = &unk_1002AC2B8;
    objc_copyWeak(&v12, &location);
    v11[4] = buf;
    v9 = [(TRIClient *)v7 addUpdateHandlerForNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" queue:cellularProdExpQueue usingBlock:v11];
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v10 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v14 = 138412546;
        v15 = off_1002D4F80;
        v16 = 2080;
        v17 = "[WISTrialExperimentsManager subscribeToTrial]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#I %@: checkTreatmentUpdate: trialCallbackReceived : NO, %s", v14, 0x16u);
      }

      [(WISTrialExperimentsManager *)self updateTreatment];
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v6);
    _Block_object_dispose(buf, 8);
  }

  else if (v5)
  {
    *buf = 138412546;
    *&buf[4] = off_1002D4F80;
    *&buf[12] = 2080;
    *&buf[14] = "[WISTrialExperimentsManager subscribeToTrial]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#I %@: checkTreatmentUpdate: Invalid Trial client, %s", buf, 0x16u);
  }
}

@end