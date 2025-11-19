@interface CreatePlaceholdersRequestTask
- (id)initForClient:(id)a3 withOptions:(id)a4;
- (void)main;
@end

@implementation CreatePlaceholdersRequestTask

- (id)initForClient:(id)a3 withOptions:(id)a4
{
  v8.receiver = self;
  v8.super_class = CreatePlaceholdersRequestTask;
  v4 = [(RequestTask *)&v8 initForClient:a3 withOptions:a4];
  if (v4)
  {
    v5 = objc_alloc_init(_TtC9appstored6LogKey);
    v6 = v4[8];
    v4[8] = v5;
  }

  return v4;
}

- (void)main
{
  v2 = self;
  if (self)
  {
    options = self->super._options;
  }

  else
  {
    options = 0;
  }

  v4 = options;
  v5 = [(ASDRequestOptions *)v4 items];
  v6 = [v5 mutableCopy];

  v97 = [v6 count];
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      logKey = v2->_logKey;
    }

    else
    {
      logKey = 0;
    }

    *buf = 138412546;
    v126 = logKey;
    v127 = 2048;
    v128 = v97;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Creating placeholders for %lu app(s)", buf, 0x16u);
  }

  if ([v6 count])
  {
    v9 = 0;
    v98 = v6;
    do
    {
      if ([v6 count] < 0x15)
      {
        v10 = [v6 copy];
        [v6 removeAllObjects];
      }

      else
      {
        v10 = [v6 subarrayWithRange:{0, 20}];
        [v6 removeObjectsInRange:{0, 20}];
      }

      v11 = objc_autoreleasePoolPush();
      v12 = v10;
      v13 = v12;
      if (v2)
      {
        v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v12 count]);
        v15 = sub_100227468();
        v16 = [v15 isConnected];

        if (v16)
        {
          v17 = sub_10036FDEC(v13, &stru_100523988);
          v18 = [AMSMediaTask alloc];
          v19 = +[BagService appstoredService];
          v20 = [v19 amsBag];
          v21 = [v18 initWithType:0 clientIdentifier:@"appstore" clientVersion:@"1" bag:v20];

          [v21 setItemIdentifiers:v17];
          v22 = sub_10000479C();
          [v21 setClientInfo:v22];

          v23 = [(LogKey *)v2->_logKey description];
          [v21 setLogKey:v23];

          v24 = +[ACAccountStore ams_sharedAccountStore];
          v25 = [v24 ams_activeiTunesAccount];
          [v21 setAccount:v25];

          [v21 setAdditionalQueryParams:&off_100549868];
          v26 = dispatch_semaphore_create(0);
          v27 = [v21 perform];
          v116[0] = _NSConcreteStackBlock;
          v116[1] = 3221225472;
          v116[2] = sub_100335CEC;
          v116[3] = &unk_1005239B0;
          v117 = v14;
          v118 = v2;
          v28 = v26;
          v119 = v28;
          [v27 addFinishBlock:v116];
          v29 = dispatch_time(0, 10000000000);
          if (dispatch_semaphore_wait(v28, v29))
          {
            v30 = v14;
            v31 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v96 = v2->_logKey;
              *buf = 138412290;
              v126 = v96;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%@] Placeholder artwork will be missing, media task timed out", buf, 0xCu);
            }

            v14 = v30;
          }
        }

        else
        {
          v17 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v2->_logKey;
            *buf = 138412290;
            v126 = v32;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Placeholder artwork will be missing, no network available", buf, 0xCu);
          }
        }

        v101 = v9;
        v99 = v11;
        v102 = v14;
        if (os_variant_has_internal_content())
        {
          v33 = v2->super._options;
          v106 = [(ASDRequestOptions *)v33 createAsMobileBackup];
        }

        else
        {
          v106 = 0;
        }

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v100 = v13;
        obj = v13;
        v105 = [obj countByEnumeratingWithState:&v112 objects:buf count:16];
        if (v105)
        {
          v104 = *v113;
          do
          {
            v34 = 0;
            do
            {
              if (*v113 != v104)
              {
                objc_enumerationMutation(obj);
              }

              v107 = v34;
              v35 = *(*(&v112 + 1) + 8 * v34);
              v36 = [_TtC9appstored6LogKey alloc];
              v37 = v2;
              v38 = v2->_logKey;
              v39 = [(LogKey *)v38 description];
              v40 = [v35 bundleID];
              v41 = v40;
              if (v40)
              {
                v42 = v40;
              }

              else
              {
                v42 = &stru_100529300;
              }

              v124[0] = v42;
              v43 = [v35 itemID];
              v44 = [v43 stringValue];
              v45 = v44;
              if (v44)
              {
                v46 = v44;
              }

              else
              {
                v46 = &stru_100529300;
              }

              v124[1] = v46;
              v47 = [NSArray arrayWithObjects:v124 count:2];
              v48 = [(LogKey *)v36 initWithBase:v39 IDs:v47];

              v49 = objc_alloc_init(CoordinatorBuilder);
              v50 = [v35 bundleID];
              v52 = v50;
              if (v49)
              {
                objc_setProperty_atomic(v49, v51, v50, 8);

                v49->_intent = 3;
                objc_setProperty_atomic(v49, v53, v48, 48);
                if (v106)
                {
                  v49->_clientID = 2;
                }
              }

              else
              {
              }

              v111 = 0;
              v54 = sub_1003A040C(v49, &v111);
              v55 = v111;
              v56 = v55;
              v2 = v37;
              if (!v54)
              {
                v61 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  *v120 = 138412546;
                  v121 = v48;
                  v122 = 2114;
                  v123 = v56;
                  _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "[%@] Could not create coordinator: %{public}@", v120, 0x16u);
                }

                goto LABEL_76;
              }

              if (v106)
              {
                v57 = v37->super._options;
                v58 = [(ASDRequestOptions *)v57 completeDataPromise];

                if (v58)
                {
                  v59 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    *v120 = 138412546;
                    v121 = v48;
                    v122 = 2114;
                    v123 = v56;
                    _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "[%@] Could not complete user data promise: %{public}@", v120, 0x16u);
                  }

                  sub_1002499D4(v54, 0);
                }

                v110 = v56;
                if ([v54 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise])
                {
                  v60 = [v54 setAppAssetPromiseResponsibleClient:1 error:&v110];
                }

                else
                {
                  v60 = 0;
                }

                v62 = v110;

                if ((v60 & 1) == 0)
                {
                  v63 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    *v120 = 138412546;
                    v121 = v48;
                    v122 = 2114;
                    v123 = v62;
                    _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "[%@] Could not set App Store as app asset DRI: %{public}@", v120, 0x16u);
                  }
                }
              }

              else
              {
                v62 = v55;
              }

              if (sub_100248F9C(v54))
              {
                v56 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  *v120 = 138412290;
                  v121 = v48;
                  _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%@] Coordinator already has a configured placeholder", v120, 0xCu);
                }
              }

              else
              {
                v49 = objc_alloc_init(PlaceholderBuilder);
                v64 = [v35 itemID];
                v66 = [v102 objectForKeyedSubscript:v64];
                if (v49)
                {
                  objc_setProperty_atomic(v49, v65, v66, 32);
                }

                v68 = [v35 itemName];
                if (v49)
                {
                  objc_setProperty_atomic(v49, v67, v68, 48);
                }

                v69 = [v35 bundleID];
                v71 = v69;
                if (v49)
                {
                  objc_setProperty_atomic(v49, v70, v69, 40);

                  v49[1]._bundleID = 2;
                  v72 = v48;
                  objc_setProperty_atomic(v49, v73, v48, 96);
                  v49[1]._logKey = 0;
                }

                else
                {
                  v72 = v48;
                }

                v74 = objc_alloc_init(MIStoreMetadata);
                v75 = [v35 vendorName];
                [v74 setArtistName:v75];

                v76 = [v35 bundleID];
                [v74 setSoftwareVersionBundleID:v76];

                v77 = [v35 itemName];
                [v74 setItemName:v77];

                v78 = [v35 itemID];
                [v74 setItemID:v78];

                v79 = [v35 externalVersionIdentifier];
                [v74 setSoftwareVersionExternalIdentifier:v79];

                v80 = [v35 storeFront];
                [v74 setStorefront:v80];

                v81 = [v35 accountName];
                [v74 setAppleID:v81];

                v82 = [v35 accountID];
                [v74 setDSPersonID:v82];

                v83 = [v35 downloaderID];
                [v74 setDownloaderID:v83];

                v84 = [v35 familyID];
                [v74 setFamilyID:v84];

                v85 = [v35 purchaserDSID];
                [v74 setPurchaserID:v85];

                v86 = [v35 altDSID];
                [v74 setAltDSID:v86];

                [v74 setDeviceBasedVPP:{objc_msgSend(v35, "deviceBasedVPP")}];
                [v74 setSourceApp:@"com.apple.AppStore"];
                if (v49)
                {
                  objc_setProperty_atomic(v49, v87, v74, 128);
                }

                v109 = 0;
                v88 = sub_1002FE870(v49, &v109);
                v89 = v109;
                v56 = v89;
                if (!v88)
                {
                  v92 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                  {
                    *v120 = 138412546;
                    v48 = v72;
                    v121 = v72;
                    v122 = 2114;
                    v123 = v56;
                    _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "[%@] Could not build placeholder for coordinator: %{public}@", v120, 0x16u);
                    goto LABEL_75;
                  }

LABEL_74:
                  v48 = v72;
                  goto LABEL_75;
                }

                v108 = v89;
                v90 = sub_10024A138(v54, v88, &v108);
                v91 = v108;

                if ((v90 & 1) == 0)
                {
                  v92 = ASDLogHandleForCategory();
                  if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                  {
                    v56 = v91;
                    goto LABEL_74;
                  }

                  *v120 = 138412546;
                  v48 = v72;
                  v121 = v72;
                  v122 = 2114;
                  v123 = v91;
                  _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "[%@] Could not set placeholder for coordinator: %{public}@", v120, 0x16u);
                  v56 = v91;
LABEL_75:

                  [v54 cancelForReason:v56 client:1 error:0];
LABEL_76:

                  goto LABEL_77;
                }

                v56 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  *v120 = 138412290;
                  v48 = v72;
                  v121 = v72;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[%@] Placeholder created successfully", v120, 0xCu);
                }

                else
                {
                  v48 = v72;
                }
              }

LABEL_77:

              v34 = v107 + 1;
            }

            while (v105 != (v107 + 1));
            v93 = [obj countByEnumeratingWithState:&v112 objects:buf count:16];
            v105 = v93;
          }

          while (v93);
        }

        v6 = v98;
        v11 = v99;
        v13 = v100;
        v9 = v101;
      }

      objc_autoreleasePoolPop(v11);
      v9 = &v9[[v13 count]];
      v94 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        if (v2)
        {
          v95 = v2->_logKey;
        }

        else
        {
          v95 = 0;
        }

        *buf = 138412802;
        v126 = v95;
        v127 = 2048;
        v128 = v9;
        v129 = 2048;
        v130 = v97;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "[%@] Created %lu/%lu placeholders", buf, 0x20u);
      }
    }

    while ([v6 count]);
  }
}

@end