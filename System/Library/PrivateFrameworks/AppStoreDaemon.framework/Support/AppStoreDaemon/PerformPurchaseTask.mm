@interface PerformPurchaseTask
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)handleAuthenticateRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
- (void)handleDialogRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
- (void)handleEngagementRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation PerformPurchaseTask

- (void)handleAuthenticateRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  purchaseCopy = purchase;
  completionCopy = completion;
  v12 = *(&self->_presenters + 2);
  uniqueIdentifier = [purchaseCopy uniqueIdentifier];
  v14 = [v12 objectForKeyedSubscript:uniqueIdentifier];

  if ((+[AMSDevice deviceIsAppleWatch](AMSDevice, "deviceIsAppleWatch") & 1) != 0 || ([v14 useLocalAuthAndSystemDialogs] & 1) != 0 || objc_msgSend(v14, "useLocalAuthAndInteractiveDialogs"))
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      logUUID = [purchaseCopy logUUID];
      *buf = 138543362;
      v38 = logUUID;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending authentication request", buf, 0xCu);
    }

    v17 = [AMSAuthenticateTask alloc];
    v18 = [v14 bag];
    amsBag = [v18 amsBag];
    v20 = [v17 initWithRequest:requestCopy bag:amsBag];

    [v20 setDelegate:self];
    performAuthentication = [v20 performAuthentication];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1002E353C;
    v34[3] = &unk_10051E040;
    v35 = purchaseCopy;
    v36 = completionCopy;
    [performAuthentication resultWithCompletion:v34];

    v22 = v35;
  }

  else
  {
    v23 = sub_1002820B4(*(&self->super._finished + 1));
    notificationClient = [v23 notificationClient];

    v25 = ASDLogHandleForCategory();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (notificationClient)
    {
      if (v26)
      {
        logKey = [v14 logKey];
        *buf = 138412546;
        v38 = logKey;
        v39 = 2114;
        v40 = notificationClient;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] Sending authentication request to client %{public}@", buf, 0x16u);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1002E3650;
      v29[3] = &unk_100521EC8;
      v30 = purchaseCopy;
      v31 = v14;
      v20 = notificationClient;
      v32 = v20;
      v33 = completionCopy;
      [v20 deliverAuthenticateRequest:requestCopy withResultHandler:v29];

      v22 = v30;
    }

    else
    {
      if (v26)
      {
        logKey2 = [v14 logKey];
        *buf = 138412290;
        v38 = logKey2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] No client available to handle authentication request", buf, 0xCu);
      }

      v22 = ASDErrorWithDescription();
      (*(completionCopy + 2))(completionCopy, 0, v22);
      v20 = 0;
    }
  }
}

- (void)handleDialogRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  purchaseCopy = purchase;
  completionCopy = completion;
  v12 = *(&self->_presenters + 2);
  uniqueIdentifier = [purchaseCopy uniqueIdentifier];
  v14 = [v12 objectForKeyedSubscript:uniqueIdentifier];

  useLocalAuthAndSystemDialogs = [v14 useLocalAuthAndSystemDialogs];
  if (+[AMSDevice deviceIsMac])
  {
    v16 = useLocalAuthAndSystemDialogs == 0;
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
      logKey = [v14 logKey];
      *buf = 138412290;
      v42 = logKey;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] System Dialogs are not supports on macOS. Using remote dialog requests", buf, 0xCu);
    }

    useLocalAuthAndSystemDialogs = 0;
  }

  if ((+[AMSDevice deviceIsAppleWatch]& 1) != 0 || useLocalAuthAndSystemDialogs)
  {
    v23 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      logKey2 = [v14 logKey];
      *buf = 138412290;
      v42 = logKey2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Sending dialog request", buf, 0xCu);
    }

    notificationClient = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
    present = [notificationClient present];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1002E3E08;
    v38[3] = &unk_10051E068;
    v39 = v14;
    v40 = completionCopy;
    [present resultWithCompletion:v38];

    v22 = v39;
  }

  else
  {
    v18 = sub_1002820B4(*(&self->super._finished + 1));
    notificationClient = [v18 notificationClient];

    if ([v14 useLocalAuthAndInteractiveDialogs])
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        logKey3 = [v14 logKey];
        *buf = 138412290;
        v42 = logKey3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] Sending interactive dialog request", buf, 0xCu);
      }

      v22 = sub_1002E2F9C(self, purchaseCopy);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1002E3F1C;
      v35[3] = &unk_10051E068;
      v36 = purchaseCopy;
      v37 = completionCopy;
      [v22 presentDialogRequest:requestCopy resultHandler:v35];
    }

    else
    {
      v26 = ASDLogHandleForCategory();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (notificationClient)
      {
        if (v27)
        {
          logKey4 = [v14 logKey];
          *buf = 138412546;
          v42 = logKey4;
          v43 = 2114;
          v44 = notificationClient;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] Sending dialog request to client %{public}@", buf, 0x16u);
        }

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1002E4030;
        v31[3] = &unk_100521EF0;
        v32 = v14;
        notificationClient = notificationClient;
        v33 = notificationClient;
        v34 = completionCopy;
        [notificationClient deliverDialogRequest:requestCopy withResultHandler:v31];

        v22 = v32;
      }

      else
      {
        if (v27)
        {
          logKey5 = [v14 logKey];
          *buf = 138412290;
          v42 = logKey5;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] No client available to handle dialog request", buf, 0xCu);
        }

        v22 = ASDErrorWithDescription();
        (*(completionCopy + 2))(completionCopy, 0, v22);
        notificationClient = 0;
      }
    }
  }
}

- (void)handleEngagementRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  purchaseCopy = purchase;
  completionCopy = completion;
  v12 = *(&self->_presenters + 2);
  uniqueIdentifier = [purchaseCopy uniqueIdentifier];
  v14 = [v12 objectForKeyedSubscript:uniqueIdentifier];

  v15 = sub_1002820B4(*(&self->super._finished + 1));
  notificationClient = [v15 notificationClient];

  if ([v14 useLocalAuthAndInteractiveDialogs])
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      logKey = [v14 logKey];
      *buf = 138412290;
      v33 = logKey;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Sending interactive engagement request", buf, 0xCu);
    }

    v19 = sub_1002E2F9C(self, purchaseCopy);
    clientInfo = [v14 clientInfo];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1002E44F4;
    v29[3] = &unk_10051F1C8;
    v30 = purchaseCopy;
    v31 = completionCopy;
    [v19 presentEngagementRequest:requestCopy withClientInfo:clientInfo resultHandler:v29];
  }

  else
  {
    v21 = ASDLogHandleForCategory();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (notificationClient)
    {
      if (v22)
      {
        logUUID = [purchaseCopy logUUID];
        *buf = 138543618;
        v33 = logUUID;
        v34 = 2114;
        v35 = notificationClient;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending engagement request to client %{public}@", buf, 0x16u);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1002E4608;
      v25[3] = &unk_100521F18;
      v26 = purchaseCopy;
      v27 = notificationClient;
      v28 = completionCopy;
      [v27 deliverEngagementRequest:requestCopy withResultHandler:v25];

      v19 = v26;
    }

    else
    {
      if (v22)
      {
        logUUID2 = [purchaseCopy logUUID];
        *buf = 138543362;
        v33 = logUUID2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] No client available to handle engagement request", buf, 0xCu);
      }

      v19 = ASDErrorWithDescription();
      (*(completionCopy + 2))(completionCopy, 0, v19);
    }
  }
}

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
        itemResponse = [v5 itemResponse];
        v8 = itemResponse;
        if (itemResponse)
        {
          Property = objc_getProperty(itemResponse, v7, 56, 1);
        }

        else
        {
          Property = 0;
        }

        v10 = Property;
        v11 = v10 == 0;

        if (v11)
        {
          account = [v5 account];
          ams_DSID = [account ams_DSID];

          account2 = [v5 account];
          username = [account2 username];

          if (v3)
          {
            goto LABEL_14;
          }

          appCapabilities = [v5 appCapabilities];
          v28 = appCapabilities == 0;

          if (!v28)
          {
            v29 = [v5 updateType] != 0;
            v30 = +[_TtC9appstored22AppCapabilitiesService defaultService];
            bundleID = [v5 bundleID];
            appCapabilities2 = [v5 appCapabilities];
            logKey = [v5 logKey];
            v135 = 0;
            v34 = [v30 validateAction:v29 bundleID:bundleID capabilities:appCapabilities2 logKey:logKey error:&v135];
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
                logKey2 = [v5 logKey];
                *buf = 138412546;
                *&buf[4] = logKey2;
                *&buf[12] = 2114;
                *&buf[14] = v3;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] Failing purchase due to batch error: %{public}@", buf, 0x16u);
              }

              account3 = [v5 account];
              ams_DSID2 = [account3 ams_DSID];
              v26 = sub_1003BF384(StoreItemResponse, v3, ams_DSID2);
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
              lowercaseString = [v39 lowercaseString];
              v41 = [lowercaseString isEqualToString:@"application/x-apple-plist"];

              if ((v41 & 1) == 0)
              {
                lowercaseString2 = [v39 lowercaseString];
                v43 = [lowercaseString2 isEqualToString:@"application/json"];

                if (v43)
                {
                  v44 = 1;
                  goto LABEL_35;
                }

                v46 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  logKey3 = [v37 logKey];
                  *buf = 138412290;
                  *&buf[4] = logKey3;
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
            ams_activeiTunesAccount = ASDLogHandleForCategory();
            if (os_log_type_enabled(ams_activeiTunesAccount, OS_LOG_TYPE_DEFAULT))
            {
              logKey4 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = logKey4;
              _os_log_impl(&_mh_execute_header, ams_activeiTunesAccount, OS_LOG_TYPE_DEFAULT, "[%@] No account required for AMSPurchaseTypeDownloadProduct", buf, 0xCu);
            }

            goto LABEL_51;
          }

          if ([v37 isMachineBased])
          {
            ams_activeiTunesAccount = ASDLogHandleForCategory();
            if (os_log_type_enabled(ams_activeiTunesAccount, OS_LOG_TYPE_DEFAULT))
            {
              logKey5 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = logKey5;
              _os_log_impl(&_mh_execute_header, ams_activeiTunesAccount, OS_LOG_TYPE_DEFAULT, "[%@] No account required for machine based purchase", buf, 0xCu);
            }

            goto LABEL_51;
          }

          if (ams_DSID)
          {
            v51 = +[ACAccountStore ams_sharedAccountStore];
            ams_activeiTunesAccount = [v51 ams_iTunesAccountWithDSID:ams_DSID];

            if (ams_activeiTunesAccount)
            {
              [v37 setAccount:ams_activeiTunesAccount];
              goto LABEL_51;
            }

            v63 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              logKey6 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = logKey6;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%@] Account provided but we couldn't find it on this device", buf, 0xCu);
            }

            if (![v37 isDiscretionary])
            {
              if (![username length])
              {
                v65 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  logKey7 = [v37 logKey];
                  *buf = 138412290;
                  *&buf[4] = logKey7;
                  _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "[%@] Purchase has a dsID but no username to authenticate", buf, 0xCu);
                }

                goto LABEL_63;
              }

LABEL_70:
              v69 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                logKey8 = [v37 logKey];
                *buf = 138412290;
                *&buf[4] = logKey8;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%@] Prompting for account", buf, 0xCu);
              }

              v71 = [PromptForAccountTask alloc];
              logKey9 = [v37 logKey];
              account3 = sub_1002C0310(v71, username, logKey9);

              buyParams = [v37 buyParams];
              ams_DSID2 = [buyParams parameterForKey:v121];

              if (ams_DSID2)
              {
                v74 = [ams_DSID2 isEqualToString:@"GAMEPRE"];
                v75 = account3 ? v74 : 0;
                if (v75 == 1)
                {
                  account3[50] = 1;
                }
              }

              requestToken = [v37 requestToken];
              if (account3)
              {
                objc_setProperty_atomic(account3, v76, requestToken, 74);
              }

              v78 = sub_100284B90();
              v144 = account3;
              v79 = [NSArray arrayWithObjects:&v144 count:1];
              if (v78)
              {
                [v78[1] addOperations:v79 waitUntilFinished:1];
              }

              if (account3)
              {
                v81 = objc_getProperty(account3, v80, 58, 1);
              }

              else
              {
                v81 = 0;
              }

              v82 = v81;
              account4 = [v82 account];

              if (account4)
              {
                if (account3)
                {
                  v85 = objc_getProperty(account3, v84, 58, 1);
                }

                else
                {
                  v85 = 0;
                }

                v86 = v85;
                account5 = [v86 account];
                [v37 setAccount:account5];

                buyParams2 = [v37 buyParams];
                [buyParams2 setParameter:&__kCFBooleanTrue forKey:@"hasBeenAuthedForBuy"];

                v122 = sub_1003C5100(AMSPurchase, v37);
                v89 = *(&self->_presenters + 2);
                uniqueIdentifier = [v122 uniqueIdentifier];
                [v89 setObject:v37 forKeyedSubscript:uniqueIdentifier];

                [v123 addObject:v122];
                account6 = ASDLogHandleForCategory();
                if (os_log_type_enabled(account6, OS_LOG_TYPE_DEFAULT))
                {
                  logKey10 = [v37 logKey];
                  buyParams3 = [v37 buyParams];
                  stringValue = [buyParams3 stringValue];
                  *buf = 138412546;
                  *&buf[4] = logKey10;
                  *&buf[12] = 2114;
                  *&buf[14] = stringValue;
                  _os_log_impl(&_mh_execute_header, account6, OS_LOG_TYPE_DEFAULT, "[%@] Purchasing with parameters: %{public}@", buf, 0x16u);
                }

                v3 = 0;
              }

              else
              {
                v95 = *(&self->super._finished + 1);
                if (v95 && *(v95 + 24) == 1)
                {
                  if (account3)
                  {
                    v96 = objc_getProperty(account3, v84, 32, 1);
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
                  logKey11 = [v37 logKey];
                  if (account3)
                  {
                    v105 = objc_getProperty(account3, v103, 32, 1);
                  }

                  else
                  {
                    v105 = 0;
                  }

                  v106 = v105;
                  *buf = 138412546;
                  *&buf[4] = logKey11;
                  *&buf[12] = 2114;
                  *&buf[14] = v106;
                  _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "[%@] No account for purchase: %{public}@", buf, 0x16u);
                }

                if (account3)
                {
                  v99 = objc_getProperty(account3, v98, 32, 1);
                }

                else
                {
                  v99 = 0;
                }

                v122 = v99;
                account6 = [v37 account];
                ams_DSID3 = [account6 ams_DSID];
                v101 = sub_1003BF384(StoreItemResponse, v122, ams_DSID3);
                [v37 setItemResponse:v101];
              }

LABEL_54:
              goto LABEL_55;
            }

LABEL_67:
            v65 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              logKey12 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = logKey12;
              _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "[%@] No account for discretionary purchase", buf, 0xCu);
            }

LABEL_63:

            account3 = ASDErrorWithDescription();
            ams_DSID2 = [v37 account];
            v25Ams_DSID = [ams_DSID2 ams_DSID];
            v67 = sub_1003BF384(StoreItemResponse, account3, v25Ams_DSID);
            [v37 setItemResponse:v67];
          }

          else
          {
            v52 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              logKey13 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = logKey13;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%@] No account provided", buf, 0xCu);
            }

            v54 = +[ACAccountStore ams_sharedAccountStore];
            ams_activeiTunesAccount = [v54 ams_activeiTunesAccount];

            v55 = ASDLogHandleForCategory();
            v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
            if (!ams_activeiTunesAccount)
            {
              if (v56)
              {
                logKey14 = [v37 logKey];
                *buf = 138412290;
                *&buf[4] = logKey14;
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
              logKey15 = [v37 logKey];
              *buf = 138412290;
              *&buf[4] = logKey15;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] Active iTunes account found, using that", buf, 0xCu);
            }

            [v37 setAccount:ams_activeiTunesAccount];
LABEL_51:

            account3 = sub_1003C5100(AMSPurchase, v37);
            v58 = *(&self->_presenters + 2);
            uniqueIdentifier2 = [account3 uniqueIdentifier];
            [v58 setObject:v37 forKeyedSubscript:uniqueIdentifier2];

            [v123 addObject:account3];
            ams_DSID2 = ASDLogHandleForCategory();
            if (os_log_type_enabled(ams_DSID2, OS_LOG_TYPE_DEFAULT))
            {
              logKey16 = [v37 logKey];
              buyParams4 = [v37 buyParams];
              stringValue2 = [buyParams4 stringValue];
              *buf = 138412546;
              *&buf[4] = logKey16;
              *&buf[12] = 2114;
              *&buf[14] = stringValue2;
              _os_log_impl(&_mh_execute_header, ams_DSID2, OS_LOG_TYPE_DEFAULT, "[%@] Purchasing with parameters: %{public}@", buf, 0x16u);
            }
          }

          v3 = 0;
          goto LABEL_54;
        }

        ams_DSID = ASDLogHandleForCategory();
        if (os_log_type_enabled(ams_DSID, OS_LOG_TYPE_ERROR))
        {
          logKey17 = [v5 logKey];
          bundleID2 = [v5 bundleID];
          itemResponse2 = [v5 itemResponse];
          v17 = itemResponse2;
          if (itemResponse2)
          {
            v18 = objc_getProperty(itemResponse2, v16, 56, 1);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
          *buf = 138412802;
          *&buf[4] = logKey17;
          *&buf[12] = 2114;
          *&buf[14] = bundleID2;
          *&buf[22] = 2114;
          v141 = v19;
          _os_log_error_impl(&_mh_execute_header, ams_DSID, OS_LOG_TYPE_ERROR, "[%@] Failing purchase %{public}@ due to error: %{public}@.", buf, 0x20u);
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
    nextObject = [v110 nextObject];
    v112 = [nextObject bag];
    amsBag = [v112 amsBag];
    v114 = [v109 initWithBag:amsBag];

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
    v129 = handlerCopy;
    [v117 addFinishBlock:v128];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
  present = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002E6788;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [present addFinishBlock:v13];
}

@end