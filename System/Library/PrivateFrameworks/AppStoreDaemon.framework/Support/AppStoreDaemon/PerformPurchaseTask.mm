@interface PerformPurchaseTask
- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)handleDialogRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation PerformPurchaseTask

- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = *(&self->_presenters + 2);
  v13 = [v10 uniqueIdentifier];
  v14 = [v12 objectForKeyedSubscript:v13];

  if ((+[AMSDevice deviceIsAppleWatch](AMSDevice, "deviceIsAppleWatch") & 1) != 0 || ([v14 useLocalAuthAndSystemDialogs] & 1) != 0 || objc_msgSend(v14, "useLocalAuthAndInteractiveDialogs"))
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 logUUID];
      *buf = 138543362;
      v38 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending authentication request", buf, 0xCu);
    }

    v17 = [AMSAuthenticateTask alloc];
    v18 = [v14 bag];
    v19 = [v18 amsBag];
    v20 = [v17 initWithRequest:v9 bag:v19];

    [v20 setDelegate:self];
    v21 = [v20 performAuthentication];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1002E353C;
    v34[3] = &unk_10051E040;
    v35 = v10;
    v36 = v11;
    [v21 resultWithCompletion:v34];

    v22 = v35;
  }

  else
  {
    v23 = sub_1002820B4(*(&self->super._finished + 1));
    v24 = [v23 notificationClient];

    v25 = ASDLogHandleForCategory();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v26)
      {
        v27 = [v14 logKey];
        *buf = 138412546;
        v38 = v27;
        v39 = 2114;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] Sending authentication request to client %{public}@", buf, 0x16u);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1002E3650;
      v29[3] = &unk_100521EC8;
      v30 = v10;
      v31 = v14;
      v20 = v24;
      v32 = v20;
      v33 = v11;
      [v20 deliverAuthenticateRequest:v9 withResultHandler:v29];

      v22 = v30;
    }

    else
    {
      if (v26)
      {
        v28 = [v14 logKey];
        *buf = 138412290;
        v38 = v28;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] No client available to handle authentication request", buf, 0xCu);
      }

      v22 = ASDErrorWithDescription();
      (*(v11 + 2))(v11, 0, v22);
      v20 = 0;
    }
  }
}

- (void)handleDialogRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = *(&self->_presenters + 2);
  v13 = [v10 uniqueIdentifier];
  v14 = [v12 objectForKeyedSubscript:v13];

  v15 = [v14 useLocalAuthAndSystemDialogs];
  if (+[AMSDevice deviceIsMac])
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v30 = [v14 logKey];
      *buf = 138412290;
      v42 = v30;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] System Dialogs are not supports on macOS. Using remote dialog requests", buf, 0xCu);
    }

    v15 = 0;
  }

  if ((+[AMSDevice deviceIsAppleWatch]& 1) != 0 || v15)
  {
    v23 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v14 logKey];
      *buf = 138412290;
      v42 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Sending dialog request", buf, 0xCu);
    }

    v19 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v9];
    v25 = [v19 present];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1002E3E08;
    v38[3] = &unk_10051E068;
    v39 = v14;
    v40 = v11;
    [v25 resultWithCompletion:v38];

    v22 = v39;
  }

  else
  {
    v18 = sub_1002820B4(*(&self->super._finished + 1));
    v19 = [v18 notificationClient];

    if ([v14 useLocalAuthAndInteractiveDialogs])
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v14 logKey];
        *buf = 138412290;
        v42 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] Sending interactive dialog request", buf, 0xCu);
      }

      v22 = sub_1002E2F9C(self, v10);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1002E3F1C;
      v35[3] = &unk_10051E068;
      v36 = v10;
      v37 = v11;
      [v22 presentDialogRequest:v9 resultHandler:v35];
    }

    else
    {
      v26 = ASDLogHandleForCategory();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v27)
        {
          v28 = [v14 logKey];
          *buf = 138412546;
          v42 = v28;
          v43 = 2114;
          v44 = v19;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] Sending dialog request to client %{public}@", buf, 0x16u);
        }

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1002E4030;
        v31[3] = &unk_100521EF0;
        v32 = v14;
        v19 = v19;
        v33 = v19;
        v34 = v11;
        [v19 deliverDialogRequest:v9 withResultHandler:v31];

        v22 = v32;
      }

      else
      {
        if (v27)
        {
          v29 = [v14 logKey];
          *buf = 138412290;
          v42 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] No client available to handle dialog request", buf, 0xCu);
        }

        v22 = ASDErrorWithDescription();
        (*(v11 + 2))(v11, 0, v22);
        v19 = 0;
      }
    }
  }
}

- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = *(&self->_presenters + 2);
  v13 = [v10 uniqueIdentifier];
  v14 = [v12 objectForKeyedSubscript:v13];

  v15 = sub_1002820B4(*(&self->super._finished + 1));
  v16 = [v15 notificationClient];

  if ([v14 useLocalAuthAndInteractiveDialogs])
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v14 logKey];
      *buf = 138412290;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Sending interactive engagement request", buf, 0xCu);
    }

    v19 = sub_1002E2F9C(self, v10);
    v20 = [v14 clientInfo];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1002E44F4;
    v29[3] = &unk_10051F1C8;
    v30 = v10;
    v31 = v11;
    [v19 presentEngagementRequest:v9 withClientInfo:v20 resultHandler:v29];
  }

  else
  {
    v21 = ASDLogHandleForCategory();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v22)
      {
        v23 = [v10 logUUID];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending engagement request to client %{public}@", buf, 0x16u);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1002E4608;
      v25[3] = &unk_100521F18;
      v26 = v10;
      v27 = v16;
      v28 = v11;
      [v27 deliverEngagementRequest:v9 withResultHandler:v25];

      v19 = v26;
    }

    else
    {
      if (v22)
      {
        v24 = [v10 logUUID];
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] No client available to handle engagement request", buf, 0xCu);
      }

      v19 = ASDErrorWithDescription();
      (*(v11 + 2))(v11, 0, v19);
    }
  }
}

- (void)mainWithCompletionHandler:(id)a3
{
  v120 = a3;
  v123 = +[NSMutableArray array];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = sub_100282080(*(&self->super._finished + 1));
  v127 = [obj countByEnumeratingWithState:&v136 objects:v145 count:16];
  if (v127)
  {
    v3 = 0;
    v126 = *v137;
    v121 = AMSBuyParamPropertyPricingParameters;
    while (1)
    {
      v4 = 0;
      do
      {
        if (*v137 != v126)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v136 + 1) + 8 * v4);
        v6 = [v5 itemResponse];
        v8 = v6;
        if (v6)
        {
          Property = objc_getProperty(v6, v7, 56, 1);
        }

        else
        {
          Property = 0;
        }

        v10 = Property;
        v11 = v10 == 0;

        if (v11)
        {
          v20 = [v5 account];
          v12 = [v20 ams_DSID];

          v21 = [v5 account];
          v22 = [v21 username];

          if (v3)
          {
            goto LABEL_14;
          }

          v27 = [v5 appCapabilities];
          v28 = v27 == 0;

          if (!v28)
          {
            v29 = [v5 updateType] != 0;
            v30 = +[_TtC9appstored22AppCapabilitiesService defaultService];
            v31 = [v5 bundleID];
            v32 = [v5 appCapabilities];
            v33 = [v5 logKey];
            v135 = 0;
            v34 = [v30 validateAction:v29 bundleID:v31 capabilities:v32 logKey:v33 error:&v135];
            v35 = v135;

            if (v34)
            {

              goto LABEL_24;
            }

            v3 = v35;
            if ([v5 isUserInitiated] && (objc_msgSend(v5, "suppressDialogs") & 1) == 0)
            {
              v36 = +[_TtC9appstored22AppCapabilitiesService defaultService];
              [v36 showIneligibleAlert];
            }

            if (v3)
            {
LABEL_14:
              v23 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v45 = [v5 logKey];
                *buf = 138412546;
                *&buf[4] = v45;
                *&buf[12] = 2114;
                *&buf[14] = v3;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] Failing purchase due to batch error: %{public}@", buf, 0x16u);
              }

              v24 = [v5 account];
              v25 = [v24 ams_DSID];
              v26 = sub_1003BF384(StoreItemResponse, v3, v25);
              [v5 setItemResponse:v26];

              goto LABEL_54;
            }
          }

LABEL_24:
          v37 = v5;
          if ([v37 purchaseType] == 4 || objc_msgSend(v37, "purchaseType") == 1)
          {
            v38 = [v37 bag];
            v39 = [v38 stringForKey:@"updateProductContentType"];

            if (v39)
            {
              v40 = [v39 lowercaseString];
              v41 = [v40 isEqualToString:@"application/x-apple-plist"];

              if ((v41 & 1) == 0)
              {
                v42 = [v39 lowercaseString];
                v43 = [v42 isEqualToString:@"application/json"];

                if (v43)
                {
                  v44 = 1;
                  goto LABEL_35;
                }

                v46 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = [v37 logKey];
                  *buf = 138412290;
                  *&buf[4] = v47;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%@] Encountered unrecognized content type for updateProduct call from bag", buf, 0xCu);
                }
              }
            }

            v44 = 0;
LABEL_35:
          }

          else
          {
            v44 = 0;
          }

          [v37 setUseJSONContentType:v44];
          if ([v37 purchaseType] == 2)
          {
            v48 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = v49;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%@] No account required for AMSPurchaseTypeDownloadProduct", buf, 0xCu);
            }

            goto LABEL_51;
          }

          if ([v37 isMachineBased])
          {
            v48 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v50 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = v50;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%@] No account required for machine based purchase", buf, 0xCu);
            }

            goto LABEL_51;
          }

          if (v12)
          {
            v51 = +[ACAccountStore ams_sharedAccountStore];
            v48 = [v51 ams_iTunesAccountWithDSID:v12];

            if (v48)
            {
              [v37 setAccount:v48];
              goto LABEL_51;
            }

            v63 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = v64;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%@] Account provided but we couldn't find it on this device", buf, 0xCu);
            }

            if (![v37 isDiscretionary])
            {
              if (![v22 length])
              {
                v65 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  v107 = [v37 logKey];
                  *buf = 138412290;
                  *&buf[4] = v107;
                  _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "[%@] Purchase has a dsID but no username to authenticate", buf, 0xCu);
                }

                goto LABEL_63;
              }

LABEL_70:
              v69 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                v70 = [v37 logKey];
                *buf = 138412290;
                *&buf[4] = v70;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%@] Prompting for account", buf, 0xCu);
              }

              v71 = [PromptForAccountTask alloc];
              v72 = [v37 logKey];
              v24 = sub_1002C0310(v71, v22, v72);

              v73 = [v37 buyParams];
              v25 = [v73 parameterForKey:v121];

              if (v25)
              {
                v74 = [v25 isEqualToString:@"GAMEPRE"];
                v75 = v24 ? v74 : 0;
                if (v75 == 1)
                {
                  v24[50] = 1;
                }
              }

              v77 = [v37 requestToken];
              if (v24)
              {
                objc_setProperty_atomic(v24, v76, v77, 74);
              }

              v78 = sub_100284B90();
              v144 = v24;
              v79 = [NSArray arrayWithObjects:&v144 count:1];
              if (v78)
              {
                [v78[1] addOperations:v79 waitUntilFinished:1];
              }

              if (v24)
              {
                v81 = objc_getProperty(v24, v80, 58, 1);
              }

              else
              {
                v81 = 0;
              }

              v82 = v81;
              v83 = [v82 account];

              if (v83)
              {
                if (v24)
                {
                  v85 = objc_getProperty(v24, v84, 58, 1);
                }

                else
                {
                  v85 = 0;
                }

                v86 = v85;
                v87 = [v86 account];
                [v37 setAccount:v87];

                v88 = [v37 buyParams];
                [v88 setParameter:&__kCFBooleanTrue forKey:@"hasBeenAuthedForBuy"];

                v122 = sub_1003C5100(AMSPurchase, v37);
                v89 = *(&self->_presenters + 2);
                v90 = [v122 uniqueIdentifier];
                [v89 setObject:v37 forKeyedSubscript:v90];

                [v123 addObject:v122];
                v91 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                {
                  v92 = [v37 logKey];
                  v93 = [v37 buyParams];
                  v94 = [v93 stringValue];
                  *buf = 138412546;
                  *&buf[4] = v92;
                  *&buf[12] = 2114;
                  *&buf[14] = v94;
                  _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "[%@] Purchasing with parameters: %{public}@", buf, 0x16u);
                }

                v3 = 0;
              }

              else
              {
                v95 = *(&self->super._finished + 1);
                if (v95 && *(v95 + 24) == 1)
                {
                  if (v24)
                  {
                    v96 = objc_getProperty(v24, v84, 32, 1);
                  }

                  else
                  {
                    v96 = 0;
                  }

                  v3 = v96;
                }

                else
                {
                  v3 = 0;
                }

                v97 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                {
                  v104 = [v37 logKey];
                  if (v24)
                  {
                    v105 = objc_getProperty(v24, v103, 32, 1);
                  }

                  else
                  {
                    v105 = 0;
                  }

                  v106 = v105;
                  *buf = 138412546;
                  *&buf[4] = v104;
                  *&buf[12] = 2114;
                  *&buf[14] = v106;
                  _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "[%@] No account for purchase: %{public}@", buf, 0x16u);
                }

                if (v24)
                {
                  v99 = objc_getProperty(v24, v98, 32, 1);
                }

                else
                {
                  v99 = 0;
                }

                v122 = v99;
                v91 = [v37 account];
                v100 = [v91 ams_DSID];
                v101 = sub_1003BF384(StoreItemResponse, v122, v100);
                [v37 setItemResponse:v101];
              }

LABEL_54:
              goto LABEL_55;
            }

LABEL_67:
            v65 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v102 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = v102;
              _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "[%@] No account for discretionary purchase", buf, 0xCu);
            }

LABEL_63:

            v24 = ASDErrorWithDescription();
            v25 = [v37 account];
            v66 = [v25 ams_DSID];
            v67 = sub_1003BF384(StoreItemResponse, v24, v66);
            [v37 setItemResponse:v67];
          }

          else
          {
            v52 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = v53;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%@] No account provided", buf, 0xCu);
            }

            v54 = +[ACAccountStore ams_sharedAccountStore];
            v48 = [v54 ams_activeiTunesAccount];

            v55 = ASDLogHandleForCategory();
            v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
            if (!v48)
            {
              if (v56)
              {
                v68 = [v37 logKey];
                *buf = 138412290;
                *&buf[4] = v68;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] No active iTunes account found", buf, 0xCu);
              }

              if (([v37 isDiscretionary] & 1) == 0)
              {
                goto LABEL_70;
              }

              goto LABEL_67;
            }

            if (v56)
            {
              v57 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = v57;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] Active iTunes account found, using that", buf, 0xCu);
            }

            [v37 setAccount:v48];
LABEL_51:

            v24 = sub_1003C5100(AMSPurchase, v37);
            v58 = *(&self->_presenters + 2);
            v59 = [v24 uniqueIdentifier];
            [v58 setObject:v37 forKeyedSubscript:v59];

            [v123 addObject:v24];
            v25 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v60 = [v37 logKey];
              v61 = [v37 buyParams];
              v62 = [v61 stringValue];
              *buf = 138412546;
              *&buf[4] = v60;
              *&buf[12] = 2114;
              *&buf[14] = v62;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] Purchasing with parameters: %{public}@", buf, 0x16u);
            }
          }

          v3 = 0;
          goto LABEL_54;
        }

        v12 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [v5 logKey];
          v14 = [v5 bundleID];
          v15 = [v5 itemResponse];
          v17 = v15;
          if (v15)
          {
            v18 = objc_getProperty(v15, v16, 56, 1);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
          *buf = 138412802;
          *&buf[4] = v13;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          *&buf[22] = 2114;
          v141 = v19;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%@] Failing purchase %{public}@ due to error: %{public}@.", buf, 0x20u);
        }

LABEL_55:

        v4 = v4 + 1;
      }

      while (v127 != v4);
      v108 = [obj countByEnumeratingWithState:&v136 objects:v145 count:16];
      v127 = v108;
      if (!v108)
      {
        goto LABEL_114;
      }
    }
  }

  v3 = 0;
LABEL_114:

  if ([v123 count])
  {
    v109 = [AMSPurchaseQueueConfiguration alloc];
    v110 = sub_100282080(*(&self->super._finished + 1));
    v111 = [v110 nextObject];
    v112 = [v111 bag];
    v113 = [v112 amsBag];
    v114 = [v109 initWithBag:v113];

    [v114 setDelegate:self];
    v115 = [[AMSPurchaseQueue alloc] initWithConfiguration:v114];
    v116 = *(&self->_purchaseBatch + 2);
    *(&self->_purchaseBatch + 2) = v115;

    v117 = [*(&self->_purchaseBatch + 2) enquePurchases:v123];
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_1002E5A20;
    v133[3] = &unk_10051B5C0;
    v118 = v114;
    v134 = v118;
    [v117 addErrorBlock:v133];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v141 = sub_1002E5B18;
    v142 = sub_1002E5B28;
    v143 = 0;
    v130[0] = _NSConcreteStackBlock;
    v130[1] = 3221225472;
    v130[2] = sub_1002E5B30;
    v130[3] = &unk_100521F40;
    v130[4] = self;
    v132 = buf;
    v119 = v118;
    v131 = v119;
    [v117 addSuccessBlock:v130];
    v128[0] = _NSConcreteStackBlock;
    v128[1] = 3221225472;
    v128[2] = sub_1002E65C8;
    v128[3] = &unk_100521F68;
    v129 = v120;
    [v117 addFinishBlock:v128];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    (*(v120 + 2))(v120, 0);
  }
}

- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v8];
  v11 = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002E6788;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v11 addFinishBlock:v13];
}

@end