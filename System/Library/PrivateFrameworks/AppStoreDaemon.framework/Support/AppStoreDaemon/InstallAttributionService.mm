@interface InstallAttributionService
- (void)addInstallAttributionParamsWithConfig:(id)config completionHandler:(id)handler;
- (void)endAdImpressionWithConfig:(id)config completionHandler:(id)handler;
- (void)registerPingbackForApp:(id)app completionHandler:(id)handler;
- (void)startAdImpressionWithConfig:(id)config completionHandler:(id)handler;
- (void)startGhostFetchTaskWithCompletionHandler:(id)handler;
- (void)startPingbackTaskWithCompletionHandler:(id)handler;
- (void)updatePostbackConversionValuesForApp:(id)app fineConversionValue:(id)value coarseConversionValue:(id)conversionValue completionHandler:(id)handler;
- (void)updatePostbackConversionValuesForApp:(id)app fineConversionValue:(id)value coarseConversionValue:(id)conversionValue lockWindow:(BOOL)window completionHandler:(id)handler;
- (void)validateImpression:(id)impression withFidelityType:(id)type completionHandler:(id)handler;
- (void)validateWebAdImpressionResponseProperties:(id)properties completionHandler:(id)handler;
@end

@implementation InstallAttributionService

- (void)startAdImpressionWithConfig:(id)config completionHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  sourceAppBundleId = [configCopy sourceAppBundleId];
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138543362;
    v47 = sourceAppBundleId;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start impression called from source app with bundle id:%{public}@", &v46, 0xCu);
  }

  fidelityType = [configCopy fidelityType];
  intValue = [fidelityType intValue];

  if (!intValue)
  {
    v12 = objc_opt_new();
    appAdamId = [configCopy appAdamId];
    sub_100232B60(v12, appAdamId);

    adNetworkId = [configCopy adNetworkId];
    sub_100232B70(v12, adNetworkId);

    impressionId = [configCopy impressionId];
    sub_100232B80(v12, impressionId);

    sourceAppAdamId = [configCopy sourceAppAdamId];
    sub_100232B90(v12, sourceAppAdamId);

    timestamp = [configCopy timestamp];
    sub_100232BA0(v12, timestamp);

    v26 = +[NSDate now];
    [v26 timeIntervalSince1970];
    v28 = [NSNumber numberWithInteger:(v27 * 1000.0)];
    sub_100232BB0(v12, v28);

    attributionSignature = [configCopy attributionSignature];
    sub_100232BC0(v12, attributionSignature);

    version = [configCopy version];
    sub_100232BD0(v12, version);

    sourceAppBundleId2 = [configCopy sourceAppBundleId];
    sub_100232BE0(v12, sourceAppBundleId2);

    fidelityType2 = [configCopy fidelityType];
    integerValue = [fidelityType2 integerValue];
    if (v12)
    {
      *(v12 + 96) = integerValue;

      processName = [configCopy processName];
      v35 = processName;
      if (processName)
      {
        v36 = processName;
      }

      else
      {
        v36 = @"(null)";
      }

      sub_100232BF0(v12, v36);

      v37 = *(v12 + 80);
      if (v37)
      {
        v38 = v37;
        v39 = ASDInstallAttributionVersionCreateFromString();

        if (v39 >= 400)
        {
          sourceIdentifier = [configCopy sourceIdentifier];
          integerValue2 = [sourceIdentifier integerValue];
          v42 = 32;
          goto LABEL_22;
        }
      }
    }

    else
    {

      processName2 = [configCopy processName];
      v44 = processName2;
      if (processName2)
      {
        v45 = processName2;
      }

      else
      {
        v45 = @"(null)";
      }

      sub_100232BF0(0, v45);
    }

    sourceIdentifier = [configCopy campaignId];
    integerValue2 = [sourceIdentifier integerValue];
    if (!v12)
    {
LABEL_23:

      v18 = sub_1003A4EE0();
      sub_1003A57CC(v18, v12, handlerCopy);
      goto LABEL_24;
    }

    v42 = 24;
LABEL_22:
    *(v12 + v42) = integerValue2;
    goto LABEL_23;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v46 = 138543362;
    v47 = sourceAppBundleId;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "high fidelity impressions not allowed:%{public}@", &v46, 0xCu);
  }

  v12 = ASDErrorWithDescription();
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v13 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
  adNetworkId2 = [configCopy adNetworkId];
  v15 = +[_TtC9appstored12SkannerEvent adTypeApp];
  v16 = +[_TtC9appstored12SkannerEvent interactionTypeView];
  version2 = [configCopy version];
  v18 = [_TtC9appstored12SkannerEvent impressionWithResult:v13 adNetworkID:adNetworkId2 adType:v15 interactionType:v16 version:version2 error:v12];

  v19 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
  appAdamId2 = [configCopy appAdamId];
  [v19 logEvent:v18 forAdvertisedAppAdamID:objc_msgSend(appAdamId2 completionHandler:{"longLongValue"), &stru_1005271C0}];

LABEL_24:
}

- (void)endAdImpressionWithConfig:(id)config completionHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sourceAppBundleId = [configCopy sourceAppBundleId];
    v47 = 138543362;
    v48 = sourceAppBundleId;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "End impression called from source app with bundle id:%{public}@", &v47, 0xCu);
  }

  fidelityType = [configCopy fidelityType];
  intValue = [fidelityType intValue];

  if (!intValue)
  {
    v12 = objc_opt_new();
    appAdamId = [configCopy appAdamId];
    sub_100232B60(v12, appAdamId);

    adNetworkId = [configCopy adNetworkId];
    sub_100232B70(v12, adNetworkId);

    impressionId = [configCopy impressionId];
    sub_100232B80(v12, impressionId);

    sourceAppAdamId = [configCopy sourceAppAdamId];
    sub_100232B90(v12, sourceAppAdamId);

    timestamp = [configCopy timestamp];
    sub_100232BA0(v12, timestamp);

    v26 = +[NSDate now];
    [v26 timeIntervalSince1970];
    v28 = [NSNumber numberWithInteger:(v27 * 1000.0)];
    sub_100232BB0(v12, v28);

    attributionSignature = [configCopy attributionSignature];
    sub_100232BC0(v12, attributionSignature);

    version = [configCopy version];
    sub_100232BD0(v12, version);

    sourceAppBundleId2 = [configCopy sourceAppBundleId];
    sub_100232BE0(v12, sourceAppBundleId2);

    fidelityType2 = [configCopy fidelityType];
    integerValue = [fidelityType2 integerValue];
    if (v12)
    {
      *(v12 + 96) = integerValue;

      processName = [configCopy processName];
      v35 = processName;
      if (processName)
      {
        v36 = processName;
      }

      else
      {
        v36 = @"(null)";
      }

      sub_100232BF0(v12, v36);

      v37 = *(v12 + 80);
      if (v37)
      {
        v38 = v37;
        v39 = ASDInstallAttributionVersionCreateFromString();

        if (v39 >= 400)
        {
          sourceIdentifier = [configCopy sourceIdentifier];
          integerValue2 = [sourceIdentifier integerValue];
          v42 = 32;
          goto LABEL_22;
        }
      }
    }

    else
    {

      processName2 = [configCopy processName];
      v45 = processName2;
      if (processName2)
      {
        v46 = processName2;
      }

      else
      {
        v46 = @"(null)";
      }

      sub_100232BF0(0, v46);
    }

    sourceIdentifier = [configCopy campaignId];
    integerValue2 = [sourceIdentifier integerValue];
    if (!v12)
    {
LABEL_23:

      v18 = sub_1003A4EE0();
      sub_1003A6D58(v18, v12, handlerCopy);
      goto LABEL_24;
    }

    v42 = 24;
LABEL_22:
    *(v12 + v42) = integerValue2;
    goto LABEL_23;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sourceAppBundleId3 = [configCopy sourceAppBundleId];
    v47 = 138543362;
    v48 = sourceAppBundleId3;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "high fidelity impressions not allowed:%{public}@", &v47, 0xCu);
  }

  v12 = ASDErrorWithDescription();
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v13 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
  adNetworkId2 = [configCopy adNetworkId];
  v15 = +[_TtC9appstored12SkannerEvent adTypeApp];
  v16 = +[_TtC9appstored12SkannerEvent interactionTypeView];
  version2 = [configCopy version];
  v18 = [_TtC9appstored12SkannerEvent impressionWithResult:v13 adNetworkID:adNetworkId2 adType:v15 interactionType:v16 version:version2 error:v12];

  v19 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
  appAdamId2 = [configCopy appAdamId];
  [v19 logEvent:v18 forAdvertisedAppAdamID:objc_msgSend(appAdamId2 completionHandler:{"longLongValue"), &stru_1005271E0}];

LABEL_24:
}

- (void)startPingbackTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ((sub_1003BD50C(self) & 1) == 0)
  {
    v7 = ASDErrorWithDescription();
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v7);
    }

    goto LABEL_9;
  }

  v4 = sub_1003A4EE0();
  v5 = v4;
  if (v4)
  {
    sub_1003A51DC(v4);
  }

  v6 = handlerCopy;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
LABEL_9:
    v6 = handlerCopy;
  }
}

- (void)startGhostFetchTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (sub_1003BD50C(self))
  {
    sub_1003A4EE0();

    v4 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_8;
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  else
  {
    v5 = ASDErrorWithDescription();
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v5);
    }
  }

  v4 = handlerCopy;
LABEL_8:
}

- (void)registerPingbackForApp:(id)app completionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (appCopy)
  {
    v9 = +[BagService appstoredService];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003BD744;
    v10[3] = &unk_10051C340;
    v10[4] = self;
    v11 = appCopy;
    v12 = v8;
    [v9 bagWithCompletionHandler:v10];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)updatePostbackConversionValuesForApp:(id)app fineConversionValue:(id)value coarseConversionValue:(id)conversionValue completionHandler:(id)handler
{
  appCopy = app;
  valueCopy = value;
  conversionValueCopy = conversionValue;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (appCopy && valueCopy)
  {
    v15 = +[BagService appstoredService];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1003BDA88;
    v16[3] = &unk_100527208;
    v16[4] = self;
    v17 = appCopy;
    v18 = valueCopy;
    v19 = conversionValueCopy;
    v20 = v14;
    [v15 bagWithCompletionHandler:v16];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)updatePostbackConversionValuesForApp:(id)app fineConversionValue:(id)value coarseConversionValue:(id)conversionValue lockWindow:(BOOL)window completionHandler:(id)handler
{
  appCopy = app;
  valueCopy = value;
  conversionValueCopy = conversionValue;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (appCopy && valueCopy)
  {
    v17 = +[BagService appstoredService];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003BDD0C;
    v18[3] = &unk_100527230;
    v18[4] = self;
    v19 = appCopy;
    v20 = valueCopy;
    v21 = conversionValueCopy;
    windowCopy = window;
    v22 = v16;
    [v17 bagWithCompletionHandler:v18];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)addInstallAttributionParamsWithConfig:(id)config completionHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  v8 = sub_1003BE1D8(self, configCopy);
  if (v8)
  {
    adNetworkId = [configCopy adNetworkId];
    version = [configCopy version];
    sub_100232810(InstallAttributionImpression, adNetworkId, 1, version, v8);
  }

  v11 = objc_opt_new();
  appAdamId = [configCopy appAdamId];
  sub_100232B60(v11, appAdamId);

  adNetworkId2 = [configCopy adNetworkId];
  sub_100232B70(v11, adNetworkId2);

  impressionId = [configCopy impressionId];
  sub_100232B80(v11, impressionId);

  sourceAppAdamId = [configCopy sourceAppAdamId];
  sub_100232BA0(v11, sourceAppAdamId);

  timestamp = [configCopy timestamp];
  sub_100232BC0(v11, timestamp);

  v17 = +[NSDate now];
  [v17 timeIntervalSince1970];
  v19 = [NSNumber numberWithInteger:(v18 * 1000.0)];
  sub_1002401FC(v11, v19);

  attributionSignature = [configCopy attributionSignature];
  sub_100232BD0(v11, attributionSignature);

  version2 = [configCopy version];
  sub_100232BE0(v11, version2);

  v22 = [_TtC9appstored21SKANEnvironmentHelper environmentForParams:v11];
  sub_100240114(v11, v22);

  if (v11)
  {
    *(v11 + 104) = 1;
    interactionType = [configCopy interactionType];
    v24 = interactionType;
    if (interactionType)
    {
      v25 = interactionType;
    }

    else
    {
      v25 = ASDInstallAttributionInteractionTypeView;
    }

    sub_100240104(v11, v25);

    v26 = *(v11 + 88);
    if (v26)
    {
      v27 = v26;
      v28 = ASDInstallAttributionVersionCreateFromString();

      if (v28 >= 400)
      {
        sourceIdentifier = [configCopy sourceIdentifier];
        integerValue = [sourceIdentifier integerValue];
        v31 = 32;
LABEL_16:
        *(v11 + v31) = integerValue;
        goto LABEL_17;
      }
    }
  }

  else
  {
    interactionType2 = [configCopy interactionType];
    v33 = interactionType2;
    if (interactionType2)
    {
      v34 = interactionType2;
    }

    else
    {
      v34 = ASDInstallAttributionInteractionTypeView;
    }

    sub_100240104(0, v34);
  }

  sourceIdentifier = [configCopy campaignId];
  integerValue = [sourceIdentifier integerValue];
  if (v11)
  {
    v31 = 24;
    goto LABEL_16;
  }

LABEL_17:

  v35 = +[BagService appstoredService];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1003BE5FC;
  v39[3] = &unk_10051C340;
  v40 = v11;
  v41 = configCopy;
  v42 = handlerCopy;
  v36 = handlerCopy;
  v37 = configCopy;
  v38 = v11;
  [v35 bagWithCompletionHandler:v39];
}

- (void)validateImpression:(id)impression withFidelityType:(id)type completionHandler:(id)handler
{
  impressionCopy = impression;
  handlerCopy = handler;
  v8 = sub_1003BE1D8(self, impressionCopy);
  v9 = v8;
  if (handlerCopy && v8)
  {
    handlerCopy[2](handlerCopy, v8);
  }

  else
  {
    sourceAppBundleId = [impressionCopy sourceAppBundleId];
    sourceAppAdamId = [impressionCopy sourceAppAdamId];
    version = [impressionCopy version];
    adNetworkId = [impressionCopy adNetworkId];
    v14 = sub_100232138(InstallAttributionImpression, sourceAppBundleId, sourceAppAdamId, version, adNetworkId);

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v14);
    }
  }
}

- (void)validateWebAdImpressionResponseProperties:(id)properties completionHandler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = ASDErrorWithDescription();
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = sub_10023FF1C(InstallAttributionParams, propertiesCopy);
  v7 = sub_1003A4EE0();
  v8 = sub_1003A9838(v7, v6);

  if (handlerCopy)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, v8);
  }

LABEL_6:
}

@end