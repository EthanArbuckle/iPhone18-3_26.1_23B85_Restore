@interface CheckStoreQueueTask
- (void)completeWithError:(id)error;
- (void)main;
@end

@implementation CheckStoreQueueTask

- (void)completeWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    sub_1001D8C40(self, errorCopy, 0, 0, 0, 0);
  }

  v5.receiver = self;
  v5.super_class = CheckStoreQueueTask;
  [(Task *)&v5 completeWithError:errorCopy];
}

- (void)main
{
  v3 = sub_100006B78();
  v4 = sub_10023D17C(v3);

  if ((v4 & 1) == 0)
  {
    queueType = self->_queueType;
    if (queueType)
    {
      if (queueType != 1)
      {
LABEL_96:
        v102 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          logKey = self->_logKey;
          *buf = 138412290;
          v142 = logKey;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[%@] Skipping queue check as device has been locked", buf, 0xCu);
        }

        v104 = ASDErrorWithDescription();
        goto LABEL_99;
      }

      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    [_TtC9appstored15DayLockActivity scheduleActivityForReason:v14];
    goto LABEL_96;
  }

  account = [(PurchaseInfo *)self->_purchaseInfo account];
  if (!account)
  {
    v5 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v5 ams_activeiTunesAccount];

    account = ams_activeiTunesAccount;
    if (!ams_activeiTunesAccount)
    {
      v105 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v116 = self->_logKey;
        *buf = 138412290;
        v142 = v116;
        _os_log_error_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "[%@] Failed to check queue: No account available", buf, 0xCu);
      }

      v104 = [NSError errorWithDomain:ASDErrorDomain code:509 userInfo:0];
LABEL_99:
      v19 = v104;
      [(CheckStoreQueueTask *)self completeWithError:v104];
      goto LABEL_121;
    }
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_logKey;
    ams_DSID = [account ams_DSID];
    *buf = 138412546;
    v142 = v8;
    v143 = 2114;
    v144 = ams_DSID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Loading queue for account: %{public}@", buf, 0x16u);
  }

  requestPresenter = [(PurchaseInfo *)self->_purchaseInfo requestPresenter];
  if (requestPresenter && (reason = self->_reason, requestPresenter, reason == 3))
  {
    requestPresenter2 = [(PurchaseInfo *)self->_purchaseInfo requestPresenter];
  }

  else
  {
    requestPresenter2 = objc_opt_new();
  }

  v15 = requestPresenter2;
  v16 = sub_1003EBCD8([LoadStoreQueueTask alloc], self->_queueType, account, self->_preorderPushUUID, requestPresenter2, self->_bag, self->_logKey);
  v138 = 0;
  v17 = [(Task *)self runSubTask:v16 returningError:&v138];
  v19 = v138;
  if (!v17)
  {
    v99 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      v115 = self->_logKey;
      *buf = 138412546;
      v142 = v115;
      v143 = 2114;
      v144 = v19;
      _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "[%@] Failed to check queue: %{public}@", buf, 0x16u);
    }

    purchaseBatch = self->_purchaseBatch;
    if (purchaseBatch)
    {
      purchaseInfo = self->_purchaseInfo;
      if (purchaseInfo)
      {
        sub_100282DC4(purchaseBatch, v19, purchaseInfo);
      }
    }

    [(CheckStoreQueueTask *)self completeWithError:v19];
    goto LABEL_120;
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  if (v16)
  {
    Property = objc_getProperty(v16, v18, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v21 = Property;
  v22 = [v21 countByEnumeratingWithState:&v134 objects:v140 count:16];
  if (!v22)
  {

    v127 = 0;
    v126 = 0;
    goto LABEL_105;
  }

  v132 = v19;
  v118 = v16;
  v119 = v15;
  v126 = 0;
  v125 = 0;
  v127 = 0;
  v24 = *v135;
  selfCopy = self;
  v129 = *v135;
  v130 = v21;
  v25 = v22;
  do
  {
    v26 = 0;
    v131 = v25;
    do
    {
      if (*v135 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v134 + 1) + 8 * v26);
      if (v27)
      {
        v28 = objc_getProperty(*(*(&v134 + 1) + 8 * v26), v23, 232, 1);
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      v30 = [v29 isEqualToString:@"software"];

      if (v30)
      {
        if (v27 && (v27[16] & 1) != 0)
        {
          v31 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = self->_logKey;
            v34 = objc_getProperty(v27, v32, 216, 1);
            unsignedLongLongValue = [v34 unsignedLongLongValue];
            *buf = 138412546;
            v142 = v33;
            v143 = 2048;
            v144 = unsignedLongLongValue;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%@] Queue contains preorder fulfillment info for %llu", buf, 0x16u);
          }

          v126 = 1;
        }

        v36 = [(PurchaseInfo *)self->_purchaseInfo itemID:v118];
        if (v36)
        {
          v38 = v36;
          v39 = v27 ? objc_getProperty(v27, v37, 216, 1) : 0;
          v40 = v39;
          itemID = [(PurchaseInfo *)self->_purchaseInfo itemID];
          v42 = [v40 isEqualToNumber:itemID];

          if (v42)
          {
            v43 = self->_purchaseInfo;
            v44 = 1;
            v125 = 1;
LABEL_65:
            v25 = v131;
            v24 = v129;
            if (v43)
            {
              v87 = [PurchaseImportTask alloc];
              v139 = v27;
              v88 = [NSArray arrayWithObjects:&v139 count:1];
              v89 = sub_100223AA0(&v87->super.super.super.isa, v88, v43, self->_purchaseBatch);

              if (v44)
              {
                v90 = ![(PurchaseInfo *)v43 isDiscretionary];
              }

              else
              {
                v90 = 0;
              }

              sub_100223C1C(v89, v90);
              v133 = v132;
              v91 = [(Task *)self runSubTask:v89 returningError:&v133];
              v92 = v133;

              if (v91)
              {
                ++v127;
              }

              else
              {
                v93 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                {
                  logKey = [(PurchaseInfo *)v43 logKey];
                  *buf = 138412546;
                  v142 = logKey;
                  v143 = 2114;
                  v144 = v92;
                  _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "[%@] Importing queued purchase failed: %{public}@", buf, 0x16u);
                }
              }

              v132 = v92;
            }

            v21 = v130;
            goto LABEL_76;
          }
        }

        v49 = v27;
        objc_opt_self();
        if (v27)
        {
          v51 = objc_getProperty(v49, v50, 96, 1);
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;

        v53 = [ApplicationProxy proxyForBundleID:v52];

        v54 = v49;
        v55 = v53;
        v56 = account;
        v57 = [[PurchaseInfo alloc] initWithBag:self->_bag];
        v43 = v57;
        if (v27)
        {
          v59 = objc_getProperty(v54, v58, 96, 1);
          [(PurchaseInfo *)v43 setBundleID:v59];

          v60 = +[NSUUID UUID];
          [(PurchaseInfo *)v43 setExternalID:v60];

          v62 = objc_getProperty(v54, v61, 216, 1);
        }

        else
        {
          [(PurchaseInfo *)v57 setBundleID:0];
          v95 = +[NSUUID UUID];
          [(PurchaseInfo *)v43 setExternalID:v95];

          v62 = 0;
        }

        v63 = v62;
        [(PurchaseInfo *)v43 setItemID:v63];

        [(PurchaseInfo *)v43 setAccount:v56];
        if (!v27)
        {
          goto LABEL_48;
        }

        if (v54[17])
        {
          v64 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v66 = self->_logKey;
            v67 = objc_getProperty(v54, v65, 96, 1);
            *buf = 138412546;
            v142 = v66;
            v143 = 2114;
            v144 = v67;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[%@] Queue check contains a redownload with bundleID: %{public}@", buf, 0x16u);
          }

          v68 = &off_100546E28;
          v69 = @"QRD";
          goto LABEL_49;
        }

        v68 = &off_100546E40;
        v69 = @"QDA";
        if ((v54[8] & 1) == 0)
        {
LABEL_48:
          v68 = &off_100546E58;
          v69 = @"BYQ";
        }

LABEL_49:
        [(PurchaseInfo *)v43 setMetricsType:v68];
        [(PurchaseInfo *)v43 setLogCode:v69];
        v70 = [NSNumber numberWithInteger:self->_reason];
        [(PurchaseInfo *)v43 setCheckStoreQueueReason:v70];

        if (v27)
        {
          v71 = v54[16];
        }

        else
        {
          v71 = 0;
        }

        [(PurchaseInfo *)v43 setPreorderFulfillment:v71 & 1];
        v72 = self->_reason;
        if (v72 == 1)
        {
          [(PurchaseInfo *)v43 setDiscretionary:1];
          [(PurchaseInfo *)v43 setSuppressDialogs:1];
          v73 = 1;
        }

        else
        {
          v73 = 2;
        }

        [(PurchaseInfo *)v43 setCoordinatorImportance:v73];
        [(PurchaseInfo *)v43 setCoordinatorIntent:1];
        if (v55 && ([v55[15] isPlaceholder] & 1) == 0)
        {
          v74 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v124 = self->_logKey;
            if (v27)
            {
              v76 = objc_getProperty(v54, v75, 96, 1);
              v78 = objc_getProperty(v54, v77, 112, 1);
              v122 = v76;
              v123 = v76;
            }

            else
            {
              v122 = 0;
              v123 = 0;
              v78 = 0;
            }

            v121 = v78;
            exactBundleVersion = [v55[15] exactBundleVersion];
            iTunesMetadata = [v55[15] iTunesMetadata];
            versionIdentifier = [iTunesMetadata versionIdentifier];

            *buf = 138413314;
            v142 = v124;
            v143 = 2114;
            v144 = v122;
            v145 = 2114;
            v146 = v121;
            v147 = 2114;
            v148 = exactBundleVersion;
            v149 = 2048;
            v150 = versionIdentifier;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[%@] Queue check found update for %{public}@ to %{public}@. Installed version = %{public}@ (%lld)", buf, 0x34u);

            self = selfCopy;
          }

          iTunesMetadata2 = [v55[15] iTunesMetadata];
          versionIdentifier2 = [iTunesMetadata2 versionIdentifier];

          v84 = [NSNumber numberWithLongLong:versionIdentifier2];
          [(PurchaseInfo *)v43 setInstalledExternalVersionID:v84];

          v85 = sub_1003D30CC(v55);
          [(PurchaseInfo *)v43 setInstalledVariantID:v85];

          if (v72 == 1)
          {
            v86 = 1;
          }

          else
          {
            v86 = 2;
          }

          [(PurchaseInfo *)v43 setUpdateType:v86];
          [(PurchaseInfo *)v43 setCoordinatorIntent:2];
        }

        [(PurchaseInfo *)v43 updateGeneratedProperties];

        v44 = 0;
        goto LABEL_65;
      }

      v43 = ASDLogHandleForCategory();
      if (os_log_type_enabled(&v43->super.super, OS_LOG_TYPE_DEBUG))
      {
        v46 = self->_logKey;
        if (v27)
        {
          v47 = objc_getProperty(v27, v45, 232, 1);
        }

        else
        {
          v47 = 0;
        }

        v48 = v47;
        *buf = 138412546;
        v142 = v46;
        v143 = 2114;
        v144 = v48;
        _os_log_debug_impl(&_mh_execute_header, &v43->super.super, OS_LOG_TYPE_DEBUG, "[%@] Skipping over unsupported '%{public}@' for other clients to collect", buf, 0x16u);
      }

LABEL_76:

      v26 = v26 + 1;
    }

    while (v25 != v26);
    v96 = [v21 countByEnumeratingWithState:&v134 objects:v140 count:16];
    v25 = v96;
  }

  while (v96);

  if (v125)
  {
    v98 = 1;
    v16 = v118;
    v15 = v119;
    v19 = v132;
    goto LABEL_111;
  }

  v16 = v118;
  v15 = v119;
  v19 = v132;
LABEL_105:
  if (self->_purchaseBatch && self->_purchaseInfo)
  {
    v106 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      logKey2 = [(PurchaseInfo *)self->_purchaseInfo logKey];
      *buf = 138412290;
      v142 = logKey2;
      _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "[%@] Server sent us to the queue to complete the purchase but the item was not there", buf, 0xCu);
    }

    v107 = ASDErrorWithDescription();
    sub_100282DC4(self->_purchaseBatch, v107, self->_purchaseInfo);
  }

  v98 = 0;
LABEL_111:
  if (v16)
  {
    v108 = objc_getProperty(v16, v97, 96, 1);
  }

  else
  {
    v108 = 0;
  }

  v109 = v108;
  v110 = [v109 count];

  v111 = ASDLogHandleForCategory();
  v112 = 16 * (v127 == 0);
  if (os_log_type_enabled(v111, v112))
  {
    v113 = self->_logKey;
    *buf = 138412802;
    v142 = v113;
    v143 = 2048;
    v144 = v127;
    v145 = 2048;
    v146 = v110;
    _os_log_impl(&_mh_execute_header, v111, v112, "[%@] Completed queue check with %lu/%lu download(s) imported", buf, 0x20u);
  }

  if (v98)
  {
    if (self)
    {
      sub_1001D8C40(self, 0, v110, v127, 0, v126 & 1);
    }
  }

  else
  {
    itemID2 = [(PurchaseInfo *)self->_purchaseInfo itemID];
    sub_1001D8C40(self, 0, v110, v127, itemID2 != 0, v126 & 1);
  }

  [(Task *)self completeWithSuccess:v118];
LABEL_120:

LABEL_121:
}

@end