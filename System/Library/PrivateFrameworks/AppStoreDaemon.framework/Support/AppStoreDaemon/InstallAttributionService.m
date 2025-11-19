@interface InstallAttributionService
- (void)addInstallAttributionParamsWithConfig:(id)a3 completionHandler:(id)a4;
- (void)endAdImpressionWithConfig:(id)a3 completionHandler:(id)a4;
- (void)registerPingbackForApp:(id)a3 completionHandler:(id)a4;
- (void)startAdImpressionWithConfig:(id)a3 completionHandler:(id)a4;
- (void)startGhostFetchTaskWithCompletionHandler:(id)a3;
- (void)startPingbackTaskWithCompletionHandler:(id)a3;
- (void)updatePostbackConversionValuesForApp:(id)a3 fineConversionValue:(id)a4 coarseConversionValue:(id)a5 completionHandler:(id)a6;
- (void)updatePostbackConversionValuesForApp:(id)a3 fineConversionValue:(id)a4 coarseConversionValue:(id)a5 lockWindow:(BOOL)a6 completionHandler:(id)a7;
- (void)validateImpression:(id)a3 withFidelityType:(id)a4 completionHandler:(id)a5;
- (void)validateWebAdImpressionResponseProperties:(id)a3 completionHandler:(id)a4;
@end

@implementation InstallAttributionService

- (void)startAdImpressionWithConfig:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 sourceAppBundleId];
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138543362;
    v47 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start impression called from source app with bundle id:%{public}@", &v46, 0xCu);
  }

  v9 = [v5 fidelityType];
  v10 = [v9 intValue];

  if (!v10)
  {
    v12 = objc_opt_new();
    v21 = [v5 appAdamId];
    sub_100232B60(v12, v21);

    v22 = [v5 adNetworkId];
    sub_100232B70(v12, v22);

    v23 = [v5 impressionId];
    sub_100232B80(v12, v23);

    v24 = [v5 sourceAppAdamId];
    sub_100232B90(v12, v24);

    v25 = [v5 timestamp];
    sub_100232BA0(v12, v25);

    v26 = +[NSDate now];
    [v26 timeIntervalSince1970];
    v28 = [NSNumber numberWithInteger:(v27 * 1000.0)];
    sub_100232BB0(v12, v28);

    v29 = [v5 attributionSignature];
    sub_100232BC0(v12, v29);

    v30 = [v5 version];
    sub_100232BD0(v12, v30);

    v31 = [v5 sourceAppBundleId];
    sub_100232BE0(v12, v31);

    v32 = [v5 fidelityType];
    v33 = [v32 integerValue];
    if (v12)
    {
      *(v12 + 96) = v33;

      v34 = [v5 processName];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
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
          v40 = [v5 sourceIdentifier];
          v41 = [v40 integerValue];
          v42 = 32;
          goto LABEL_22;
        }
      }
    }

    else
    {

      v43 = [v5 processName];
      v44 = v43;
      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = @"(null)";
      }

      sub_100232BF0(0, v45);
    }

    v40 = [v5 campaignId];
    v41 = [v40 integerValue];
    if (!v12)
    {
LABEL_23:

      v18 = sub_1003A4EE0();
      sub_1003A57CC(v18, v12, v6);
      goto LABEL_24;
    }

    v42 = 24;
LABEL_22:
    *(v12 + v42) = v41;
    goto LABEL_23;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v46 = 138543362;
    v47 = v7;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "high fidelity impressions not allowed:%{public}@", &v46, 0xCu);
  }

  v12 = ASDErrorWithDescription();
  if (v6)
  {
    (*(v6 + 2))(v6, v12);
  }

  v13 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
  v14 = [v5 adNetworkId];
  v15 = +[_TtC9appstored12SkannerEvent adTypeApp];
  v16 = +[_TtC9appstored12SkannerEvent interactionTypeView];
  v17 = [v5 version];
  v18 = [_TtC9appstored12SkannerEvent impressionWithResult:v13 adNetworkID:v14 adType:v15 interactionType:v16 version:v17 error:v12];

  v19 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
  v20 = [v5 appAdamId];
  [v19 logEvent:v18 forAdvertisedAppAdamID:objc_msgSend(v20 completionHandler:{"longLongValue"), &stru_1005271C0}];

LABEL_24:
}

- (void)endAdImpressionWithConfig:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 sourceAppBundleId];
    v47 = 138543362;
    v48 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "End impression called from source app with bundle id:%{public}@", &v47, 0xCu);
  }

  v9 = [v5 fidelityType];
  v10 = [v9 intValue];

  if (!v10)
  {
    v12 = objc_opt_new();
    v21 = [v5 appAdamId];
    sub_100232B60(v12, v21);

    v22 = [v5 adNetworkId];
    sub_100232B70(v12, v22);

    v23 = [v5 impressionId];
    sub_100232B80(v12, v23);

    v24 = [v5 sourceAppAdamId];
    sub_100232B90(v12, v24);

    v25 = [v5 timestamp];
    sub_100232BA0(v12, v25);

    v26 = +[NSDate now];
    [v26 timeIntervalSince1970];
    v28 = [NSNumber numberWithInteger:(v27 * 1000.0)];
    sub_100232BB0(v12, v28);

    v29 = [v5 attributionSignature];
    sub_100232BC0(v12, v29);

    v30 = [v5 version];
    sub_100232BD0(v12, v30);

    v31 = [v5 sourceAppBundleId];
    sub_100232BE0(v12, v31);

    v32 = [v5 fidelityType];
    v33 = [v32 integerValue];
    if (v12)
    {
      *(v12 + 96) = v33;

      v34 = [v5 processName];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
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
          v40 = [v5 sourceIdentifier];
          v41 = [v40 integerValue];
          v42 = 32;
          goto LABEL_22;
        }
      }
    }

    else
    {

      v44 = [v5 processName];
      v45 = v44;
      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = @"(null)";
      }

      sub_100232BF0(0, v46);
    }

    v40 = [v5 campaignId];
    v41 = [v40 integerValue];
    if (!v12)
    {
LABEL_23:

      v18 = sub_1003A4EE0();
      sub_1003A6D58(v18, v12, v6);
      goto LABEL_24;
    }

    v42 = 24;
LABEL_22:
    *(v12 + v42) = v41;
    goto LABEL_23;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v43 = [v5 sourceAppBundleId];
    v47 = 138543362;
    v48 = v43;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "high fidelity impressions not allowed:%{public}@", &v47, 0xCu);
  }

  v12 = ASDErrorWithDescription();
  if (v6)
  {
    (*(v6 + 2))(v6, v12);
  }

  v13 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
  v14 = [v5 adNetworkId];
  v15 = +[_TtC9appstored12SkannerEvent adTypeApp];
  v16 = +[_TtC9appstored12SkannerEvent interactionTypeView];
  v17 = [v5 version];
  v18 = [_TtC9appstored12SkannerEvent impressionWithResult:v13 adNetworkID:v14 adType:v15 interactionType:v16 version:v17 error:v12];

  v19 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
  v20 = [v5 appAdamId];
  [v19 logEvent:v18 forAdvertisedAppAdamID:objc_msgSend(v20 completionHandler:{"longLongValue"), &stru_1005271E0}];

LABEL_24:
}

- (void)startPingbackTaskWithCompletionHandler:(id)a3
{
  v8 = a3;
  if ((sub_1003BD50C(self) & 1) == 0)
  {
    v7 = ASDErrorWithDescription();
    if (v8)
    {
      v8[2](v8, v7);
    }

    goto LABEL_9;
  }

  v4 = sub_1003A4EE0();
  v5 = v4;
  if (v4)
  {
    sub_1003A51DC(v4);
  }

  v6 = v8;
  if (v8)
  {
    v8[2](v8, 0);
LABEL_9:
    v6 = v8;
  }
}

- (void)startGhostFetchTaskWithCompletionHandler:(id)a3
{
  v6 = a3;
  if (sub_1003BD50C(self))
  {
    sub_1003A4EE0();

    v4 = v6;
    if (!v6)
    {
      goto LABEL_8;
    }

    (*(v6 + 2))(v6, 0);
  }

  else
  {
    v5 = ASDErrorWithDescription();
    if (v6)
    {
      (*(v6 + 2))(v6, v5);
    }
  }

  v4 = v6;
LABEL_8:
}

- (void)registerPingbackForApp:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = +[BagService appstoredService];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003BD744;
    v10[3] = &unk_10051C340;
    v10[4] = self;
    v11 = v6;
    v12 = v8;
    [v9 bagWithCompletionHandler:v10];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)updatePostbackConversionValuesForApp:(id)a3 fineConversionValue:(id)a4 coarseConversionValue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10 && v11)
  {
    v15 = +[BagService appstoredService];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1003BDA88;
    v16[3] = &unk_100527208;
    v16[4] = self;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v14;
    [v15 bagWithCompletionHandler:v16];
  }

  else if (v13)
  {
    (*(v13 + 2))(v13, 0);
  }
}

- (void)updatePostbackConversionValuesForApp:(id)a3 fineConversionValue:(id)a4 coarseConversionValue:(id)a5 lockWindow:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v15;
  if (v12 && v13)
  {
    v17 = +[BagService appstoredService];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003BDD0C;
    v18[3] = &unk_100527230;
    v18[4] = self;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v23 = a6;
    v22 = v16;
    [v17 bagWithCompletionHandler:v18];
  }

  else if (v15)
  {
    (*(v15 + 2))(v15, 0);
  }
}

- (void)addInstallAttributionParamsWithConfig:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003BE1D8(self, v6);
  if (v8)
  {
    v9 = [v6 adNetworkId];
    v10 = [v6 version];
    sub_100232810(InstallAttributionImpression, v9, 1, v10, v8);
  }

  v11 = objc_opt_new();
  v12 = [v6 appAdamId];
  sub_100232B60(v11, v12);

  v13 = [v6 adNetworkId];
  sub_100232B70(v11, v13);

  v14 = [v6 impressionId];
  sub_100232B80(v11, v14);

  v15 = [v6 sourceAppAdamId];
  sub_100232BA0(v11, v15);

  v16 = [v6 timestamp];
  sub_100232BC0(v11, v16);

  v17 = +[NSDate now];
  [v17 timeIntervalSince1970];
  v19 = [NSNumber numberWithInteger:(v18 * 1000.0)];
  sub_1002401FC(v11, v19);

  v20 = [v6 attributionSignature];
  sub_100232BD0(v11, v20);

  v21 = [v6 version];
  sub_100232BE0(v11, v21);

  v22 = [_TtC9appstored21SKANEnvironmentHelper environmentForParams:v11];
  sub_100240114(v11, v22);

  if (v11)
  {
    *(v11 + 104) = 1;
    v23 = [v6 interactionType];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
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
        v29 = [v6 sourceIdentifier];
        v30 = [v29 integerValue];
        v31 = 32;
LABEL_16:
        *(v11 + v31) = v30;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v32 = [v6 interactionType];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = ASDInstallAttributionInteractionTypeView;
    }

    sub_100240104(0, v34);
  }

  v29 = [v6 campaignId];
  v30 = [v29 integerValue];
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
  v41 = v6;
  v42 = v7;
  v36 = v7;
  v37 = v6;
  v38 = v11;
  [v35 bagWithCompletionHandler:v39];
}

- (void)validateImpression:(id)a3 withFidelityType:(id)a4 completionHandler:(id)a5
{
  v15 = a3;
  v7 = a5;
  v8 = sub_1003BE1D8(self, v15);
  v9 = v8;
  if (v7 && v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v10 = [v15 sourceAppBundleId];
    v11 = [v15 sourceAppAdamId];
    v12 = [v15 version];
    v13 = [v15 adNetworkId];
    v14 = sub_100232138(InstallAttributionImpression, v10, v11, v12, v13);

    if (v7)
    {
      v7[2](v7, v14);
    }
  }
}

- (void)validateWebAdImpressionResponseProperties:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = ASDErrorWithDescription();
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = sub_10023FF1C(InstallAttributionParams, v9);
  v7 = sub_1003A4EE0();
  v8 = sub_1003A9838(v7, v6);

  if (v5)
  {
LABEL_5:
    v5[2](v5, v8);
  }

LABEL_6:
}

@end