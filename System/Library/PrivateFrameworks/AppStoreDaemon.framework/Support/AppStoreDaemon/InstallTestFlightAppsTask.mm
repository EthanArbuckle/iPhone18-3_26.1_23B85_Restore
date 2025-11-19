@interface InstallTestFlightAppsTask
- (void)main;
@end

@implementation InstallTestFlightAppsTask

- (void)main
{
  v3 = objc_alloc_init(NSMutableArray);
  v90 = objc_alloc_init(NSMutableArray);
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = self->_installs;
  v88 = v3;
  v95 = [(NSArray *)obj countByEnumeratingWithState:&v102 objects:v113 count:16];
  if (v95)
  {
    v93 = *v103;
    v89 = BAInitialRestrictionsEssentialDownloadAllowance;
    do
    {
      v4 = 0;
      do
      {
        if (*v103 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v102 + 1) + 8 * v4);
        v6 = sub_1002E7504([AppInstallImportAndPolicyTask alloc], v5);
        v7 = sub_10023E604(v5, @"automatic_type");
        if (v6)
        {
          v6[52] = v7 == 0;
          v6[51] = v7 != 0;
          objc_setProperty_atomic_copy(v6, v8, &stru_100521C00, 82);
        }

        if (v5)
        {
          v9 = v5[7];
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (!v10)
        {
          v21 = 0;
          goto LABEL_42;
        }

        if (v5)
        {
          Property = objc_getProperty(v5, v11, 48, 1);
        }

        else
        {
          Property = 0;
        }

        v13 = Property;
        v14 = [v13 count];

        if (!v14)
        {
LABEL_30:
          v20 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v56 = sub_100408EB0(v5);
            *buf = 138543362;
            v110 = v56;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to determine size of TestFlight package, not creating progressPortions", buf, 0xCu);
          }

          v21 = 0;
          goto LABEL_41;
        }

        if (v5)
        {
          v16 = objc_getProperty(v5, v15, 48, 1);
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        v18 = [v17 objectAtIndexedSubscript:0];

        v19 = sub_10023E0F8(v18, @"bytes_total");
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v22 = sub_10023E0F8(v18, @"package_url");
          v23 = [DetermineSizeForURLTask alloc];
          v24 = sub_100408EB0(v5);
          v25 = sub_1002E6CB8(v23, v22, v24);

          if ([(Task *)self runSubTask:v25 returningError:0])
          {
            if (v25)
            {
              v27 = objc_getProperty(v25, v26, 66, 1);
            }

            else
            {
              v27 = 0;
            }

            v20 = v27;
          }

          else
          {
            v28 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v87 = sub_100408EB0(v5);
              if (v25)
              {
                v58 = objc_getProperty(v25, v57, 32, 1);
              }

              else
              {
                v58 = 0;
              }

              v59 = v58;
              *buf = 138543618;
              v110 = v87;
              v111 = 2114;
              v112 = v59;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get package size using packageURL with error: %{public}@", buf, 0x16u);
            }

            v20 = 0;
          }

          if (!v20)
          {
            goto LABEL_30;
          }
        }

        if (sub_1003D3E2C(AppDefaultsManager, @"BackgroundAssetDownloadsEnabled", 1))
        {
          if (v5)
          {
            v29 = v5[7];
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;
          v31 = sub_10023790C(v30, v89);
        }

        else
        {
          v30 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = sub_100408EB0(v5);
            *buf = 138412290;
            v110 = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] Not configuring TestFlight progress for post-processing because the BA feature is disabled", buf, 0xCu);
          }

          v31 = &off_100547C80;
        }

        sub_10030B6D4([ProgressPortions alloc], -[NSObject longLongValue](v20, "longLongValue"), [v31 unsignedLongLongValue]);
        v21 = v33;
        v34 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = sub_100408EB0(v5);
          *buf = 138412546;
          v110 = v35;
          v111 = 2114;
          v112 = v21;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%@] ProgressPortions have been created: %{public}@", buf, 0x16u);
        }

        if (v6)
        {
          objc_setProperty_atomic(v6, v36, v21, 98);
        }

LABEL_41:
LABEL_42:
        v101 = 0;
        v37 = [(Task *)self runSubTask:v6 returningError:&v101];
        v38 = v101;
        v39 = ASDLogHandleForCategory();
        v40 = v39;
        if (v37)
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v41 = sub_100408EB0(v5);
            *buf = 138412290;
            v110 = v41;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%@] TestFlight import succeeded", buf, 0xCu);
          }

          if (v6)
          {
            v43 = objc_getProperty(v6, v42, 106, 1);
            v45 = v43;
            if (v43)
            {
              v43 = objc_getProperty(v43, v44, 24, 1);
            }
          }

          else
          {
            v45 = 0;
            v43 = 0;
          }

          v46 = v43;

          if (v46)
          {
            [v3 addObject:v46];
          }

          if (!self->_reportRemoteProgress)
          {
            v47 = sub_10023E644(v5, @"bundle_id");
            if (v47)
            {
              v48 = [ProgressInfo alloc];
              v49 = sub_100408EB0(v5);
              v50 = sub_100403C3C(&v48->super.isa, v47, v21, v49);

              v51 = sub_10023E51C(v5, @"item_id");
              v53 = v51;
              if (v50)
              {
                objc_setProperty_atomic(v50, v52, v51, 152);

                v50[18] = 129;
              }

              else
              {
              }

              v54 = sub_1003649C8();
              sub_100364E78(v54, v50, @"TestFlight");

              v3 = v88;
            }
          }
        }

        else
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v55 = sub_100408EB0(v5);
            *buf = 138412546;
            v110 = v55;
            v111 = 2114;
            v112 = v38;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "[%@] TestFlight import failed: %{public}@", buf, 0x16u);
          }

          if (v38)
          {
            [v90 addObject:v38];
          }
        }

        v4 = v4 + 1;
      }

      while (v95 != v4);
      v60 = [(NSArray *)obj countByEnumeratingWithState:&v102 objects:v113 count:16];
      v95 = v60;
    }

    while (v60);
  }

  v61 = v90;
  if (self->_reportRemoteProgress)
  {
    v62 = sub_1002B0154();
    v63 = sub_1002B0280(v62);

    v96 = v63;
    if (v63)
    {
      v92 = objc_alloc_init(XDCRegisterAppMessage);
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v94 = self->_installs;
      v64 = [(NSArray *)v94 countByEnumeratingWithState:&v97 objects:v108 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v98;
        do
        {
          v67 = 0;
          do
          {
            if (*v98 != v66)
            {
              objc_enumerationMutation(v94);
            }

            v68 = *(*(&v97 + 1) + 8 * v67);
            v69 = sub_10023E644(v68, @"bundle_id");
            if (v69)
            {
              if (v96[18])
              {
                v70 = sub_10027BEA4(v68);
                sub_1003B4154(v92, v70);
              }

              v71 = [ProgressInfo alloc];
              v72 = sub_100408EB0(v68);
              v73 = sub_100403C3C(&v71->super.isa, v69, 0, v72);

              if (v73)
              {
                *(v73 + 64) = 1;
                v74 = sub_10023E51C(v68, @"item_id");
                objc_setProperty_atomic(v73, v75, v74, 152);

                v73[18] = 129;
              }

              else
              {
                sub_10023E51C(v68, @"item_id");
              }

              v76 = sub_1003649C8();
              sub_100364E78(v76, v73, @"TestFlight");
            }

            v67 = v67 + 1;
          }

          while (v65 != v67);
          v77 = [(NSArray *)v94 countByEnumeratingWithState:&v97 objects:v108 count:16];
          v65 = v77;
        }

        while (v77);
      }

      if (v96[18])
      {
        v78 = sub_1002EB36C();
        sub_1002EB928(v78, v92, 5, v96);
      }

      v3 = v88;
      v61 = v90;
    }
  }

  v79 = sub_1002C0D84();
  sub_1002C13BC(v79, 64);

  [(Task *)self lock];
  v80 = [v3 copy];
  processedExternalIDs = self->_processedExternalIDs;
  self->_processedExternalIDs = v80;

  [(Task *)self unlock];
  if ([v61 count])
  {
    if ([v61 count] == 1)
    {
      v82 = [v61 objectAtIndexedSubscript:0];
    }

    else
    {
      v83 = ASDErrorDomain;
      v106 = NSMultipleUnderlyingErrorsKey;
      v84 = [v61 copy];
      v107 = v84;
      v85 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v82 = [NSError errorWithDomain:v83 code:537 userInfo:v85];

      v61 = v90;
    }

    v86 = ASDErrorWithSafeUserInfo();
    [(Task *)self completeWithError:v86];
  }
}

@end