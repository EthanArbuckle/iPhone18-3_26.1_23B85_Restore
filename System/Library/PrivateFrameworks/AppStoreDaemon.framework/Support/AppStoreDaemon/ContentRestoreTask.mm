@interface ContentRestoreTask
- (void)main;
@end

@implementation ContentRestoreTask

- (void)main
{
  if ([(NSArray *)self->_restoreInstalls count])
  {
    v109 = [(Bag *)self->_bag URLForKey:@"p2-content-restore/url"];
    v3 = [ContentRestoreURLRequestEncoder alloc];
    amsBag = [(Bag *)self->_bag amsBag];
    v5 = [(ContentRestoreURLRequestEncoder *)v3 initWithBag:amsBag];

    [(ContentRestoreURLRequestEncoder *)v5 setAccount:self->_account];
    v6 = [_TtC9appstored20AppInstallationEvent additionalMetricsWithRestoreInstalls:self->_restoreInstalls];
    v112 = v5;
    [(ContentRestoreURLRequestEncoder *)v5 setAdditionalMetrics:v6];

    ams_DSID = [(ACAccount *)self->_account ams_DSID];
    v8 = objc_opt_new();
    if (os_variant_has_internal_content())
    {
      [v8 setObject:@"internal" forKeyedSubscript:@"OSBuildType"];
    }

    v9 = sub_1003D64DC();
    v10 = v9;
    if (v9 && (([v9 isEqualToNumber:&off_100547368] & 1) != 0 || objc_msgSend(v10, "isEqualToNumber:", &off_100547380)))
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v139) = [v10 intValue];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Content restore setting ForceAppDRMMode: %d", buf, 8u);
      }

      stringValue = [v10 stringValue];
      [v8 setObject:stringValue forKeyedSubscript:@"ForceAppDRMMode"];
    }

    v13 = +[AMSDevice deviceGUID];
    if (v13)
    {
      [v8 setObject:v13 forKeyedSubscript:@"guid"];
    }

    v102 = v13;
    v14 = +[AMSKeybag sharedInstance];
    v130 = 0;
    v15 = [v14 keybagSyncDataWithAccountID:ams_DSID transactionType:1 error:&v130];
    v16 = v130;

    v111 = v8;
    v106 = ams_DSID;
    v104 = v10;
    v98 = v15;
    v100 = v16;
    if (v15)
    {
      [v8 setObject:v15 forKeyedSubscript:@"kbsync"];
    }

    else
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v139 = ams_DSID;
        v140 = 2114;
        v141 = v16;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "KBSync unavailable for account: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }

    v20 = objc_opt_new();
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    selfCopy = self;
    obj = self->_restoreInstalls;
    v21 = [(NSArray *)obj countByEnumeratingWithState:&v126 objects:buf count:16];
    v116 = v20;
    if (v21)
    {
      v22 = v21;
      v23 = *v127;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v127 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v126 + 1) + 8 * i);
          v26 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:v25];
          v27 = sub_10040916C(v25);

          v28 = ASDLogHandleForCategory();
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          if (v27)
          {
            if (v29)
            {
              *v134 = 138412546;
              v135 = v26;
              v136 = 2114;
              v137 = v25;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] ContentRestore lookup: %{public}@", v134, 0x16u);
            }

            v30 = [NSMutableDictionary alloc];
            v132[0] = @"item-id";
            v31 = sub_10040916C(v25);
            v132[1] = @"kind";
            v133[0] = v31;
            v133[1] = @"software";
            v32 = [NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:2];
            v28 = [v30 initWithDictionary:v32];

            v33 = sub_10039882C(v25);

            if (v33)
            {
              v34 = sub_10039882C(v25);
              [v28 setObject:v34 forKeyedSubscript:@"store-front-id"];
            }

            v35 = sub_1003987D0(v25);

            if (v35)
            {
              v36 = sub_1003987D0(v25);
              [v28 setObject:v36 forKeyedSubscript:@"software-external-version-identifier"];
            }

            v37 = sub_100398864(v25);

            if (v37)
            {
              v38 = sub_100398864(v25);
              uUIDString = [v38 UUIDString];
              [v28 setObject:uUIDString forKeyedSubscript:@"vid"];
            }

            v40 = sub_100398764(v25);
            if (v40)
            {
              v41 = v40;
              v42 = sub_100398764(v25);
              v43 = sub_10039872C(v25);
              v44 = [v42 isEqualToNumber:v43];

              v20 = v116;
              if ((v44 & 1) == 0)
              {
                v45 = sub_10039872C(v25);
                [v28 setObject:v45 forKeyedSubscript:@"ownerDsid"];

                v20 = v116;
              }
            }

            [v20 addObject:{v28, v98, v100}];
          }

          else if (v29)
          {
            *v134 = 138412546;
            v135 = v26;
            v136 = 2114;
            v137 = v25;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] item: %{public}@ due to lack of required metadata", v134, 0x16u);
          }
        }

        v22 = [(NSArray *)obj countByEnumeratingWithState:&v126 objects:buf count:16];
      }

      while (v22);
    }

    if ([v20 count])
    {
      [v111 setObject:v20 forKeyedSubscript:@"items"];
    }

    v46 = [AMSDevice serialNumber:v98];
    v48 = v109;
    v47 = selfCopy;
    if (v46)
    {
      [v111 setObject:v46 forKeyedSubscript:@"serial-number"];
    }

    v49 = [(ContentRestoreURLRequestEncoder *)v112 requestWithMethod:4 URL:v109 parameters:v111];
    v125 = 0;
    v50 = [v49 resultWithError:&v125];
    v51 = v125;

    v52 = &selRef_deviceManagementPolicyDidChange_;
    if (v51)
    {
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v55 = sub_10000474C();
      v56 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [v55 bundleIdentifier];
        *buf = 138543362;
        v139 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Content restore attributing network to: %{public}@", buf, 0xCu);
      }

      v54 = sub_10024A984(AMSURLSession, 0, v55, selfCopy->_bag);
      v58 = [v54 dataTaskPromiseWithRequest:v50];
      v124 = 0;
      v53 = [v58 resultWithError:&v124];
      v51 = v124;

      if (!v51)
      {
        object = [v53 object];
        v113 = v53;
        response = [v53 response];
        objc_opt_class();
        v60 = response;
        if (objc_opt_isKindOfClass())
        {
          v61 = v60;
        }

        else
        {
          v61 = 0;
        }

        v62 = object;
        v63 = sub_1003BE8FC(StoreItemResponse, object, v61, 0, selfCopy->_bag);

        v64 = v63;
        if (v63)
        {
          Property = objc_getProperty(v63, v65, 64, 1);
        }

        else
        {
          Property = 0;
        }

        v67 = Property;
        v68 = [object objectForKeyedSubscript:@"failed-items"];
        v103 = v68;
        v105 = v67;
        v108 = v64;
        if (v68)
        {
          v99 = v54;
          v101 = v50;
          v117 = objc_opt_new();
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          obja = v68;
          v69 = [obja countByEnumeratingWithState:&v120 objects:v131 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v121;
            do
            {
              for (j = 0; j != v70; j = j + 1)
              {
                if (*v121 != v71)
                {
                  objc_enumerationMutation(obja);
                }

                v73 = *(*(&v120 + 1) + 8 * j);
                v74 = [v73 objectForKeyedSubscript:{@"customerMessage", v99, v101, v103}];
                v75 = [v73 objectForKeyedSubscript:@"item-id"];
                v76 = [v73 objectForKeyedSubscript:@"failureType"];
                integerValue = [v76 integerValue];

                if (integerValue)
                {
                  v78 = [v73 objectForKeyedSubscript:@"failureType"];
                  [v78 integerValue];
                }

                v79 = ASDErrorWithTitleAndMessage();
                if (v75)
                {
                  [v117 setObject:v79 forKeyedSubscript:v75];
                }
              }

              v70 = [obja countByEnumeratingWithState:&v120 objects:v131 count:16];
            }

            while (v70);
          }

          v48 = v109;
          v47 = selfCopy;
          v54 = v99;
          v50 = v101;
          v52 = &selRef_deviceManagementPolicyDidChange_;
          v53 = v113;
          v62 = object;
          v64 = v108;
          v68 = v117;
        }

        v80 = [v67 copy];
        v81 = *(v52 + 700);
        v82 = *(&v47->super.super.super.isa + v81);
        *(&v47->super.super.super.isa + v81) = v80;

        v118 = v68;
        if (v68)
        {
          v84 = [v68 copy];
          failedItems = v47->_failedItems;
          v47->_failedItems = v84;
        }

        if (v64)
        {
          v86 = objc_getProperty(v64, v83, 72, 1);
        }

        else
        {
          v86 = 0;
        }

        v87 = v86;

        if (v87)
        {
          v89 = +[AMSKeybag sharedInstance];
          if (v64)
          {
            v90 = objc_getProperty(v64, v88, 72, 1);
          }

          else
          {
            v90 = 0;
          }

          v91 = v90;
          v119 = 0;
          [v89 importKeybagWithData:v91 error:&v119];
          v92 = v119;

          if (v92)
          {
            v93 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v139 = v92;
              _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "Content restore keybag resulted in error: %{public}@", buf, 0xCu);
            }
          }

          v64 = v108;
          v67 = v105;
        }

        v94 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          v95 = [v67 count];
          *buf = 134217984;
          v139 = v95;
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "Successfully completed content restore call with %ld appinstall(s)", buf, 0xCu);
        }

        v51 = 0;
      }
    }

    v96 = ASDErrorWithSafeUserInfo();
    objc_setProperty_atomic_copy(v47, v97, v96, 32);

    v47->super._success = [*(&v47->super.super.super.isa + *(v52 + 700)) count] != 0;
  }

  else
  {
    v17 = ASDErrorWithTitleAndMessage();
    objc_setProperty_atomic_copy(self, v18, v17, 32);

    self->super._success = 0;
  }
}

@end