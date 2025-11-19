@interface AppInstallImportAndPolicyTask
- (AppInstallImportAndPolicyTask)init;
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation AppInstallImportAndPolicyTask

- (AppInstallImportAndPolicyTask)init
{
  v3.receiver = self;
  v3.super_class = AppInstallImportAndPolicyTask;
  result = [(Task *)&v3 init];
  if (result)
  {
    BYTE4(result->_externalID) = 0;
    BYTE3(result->_externalID) = 1;
  }

  return result;
}

- (void)mainWithCompletionHandler:(id)a3
{
  v116[0] = _NSConcreteStackBlock;
  v116[1] = 3221225472;
  v117 = sub_1002E8368;
  v118 = &unk_100521F90;
  v119 = self;
  v120 = a3;
  v4 = v120;
  v6 = v116;
  if (self)
  {
    Property = *&self->_userInitiated;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 48, 1);
    }

    v8 = Property;
    v9 = [v8 firstObject];
    v10 = sub_10023E604(v9, @"archive_type");

    if (v10 > 1)
    {
      v24 = 0;
    }

    else
    {
      v11 = sub_10023E0F8(*&self->_userInitiated, @"client_type");
      v12 = [v11 integerValue];

      v13 = &OBJC_IVAR___FamilyMember__iCloudUsername;
      if (v12 == 1)
      {
        LOBYTE(v128) = 0;
        v14 = sub_10040908C(*&self->_userInitiated);
        v130 = 0;
        v15 = sub_100248548(IXAppInstallCoordinator, v14, 3, 0, &v128, &v130);
        v16 = v130;

        if (v15)
        {
          v17 = [v15 creatorIdentifier];
          v18 = ASDLogHandleForCategory();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17 == 23)
          {
            if (v19)
            {
              v20 = *(&self->_coordinator + 2);
              *buf = 138412546;
              *&buf[4] = v20;
              *&buf[12] = 2114;
              *&buf[14] = v15;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Taking over vpp coordinator: %{public}@", buf, 0x16u);
            }

            v129 = v16;
            if ([v15 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise])
            {
              [v15 setAppAssetPromiseResponsibleClient:1 error:&v129];
            }

            v21 = v129;

            v22 = ASDLogHandleForCategory();
            v18 = v22;
            if (v21)
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = *(&self->_coordinator + 2);
                *buf = 138412546;
                *&buf[4] = v23;
                *&buf[12] = 2114;
                *&buf[14] = v21;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Unable to take over vpp coordinator due to error: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v26 = *(&self->_coordinator + 2);
                *buf = 138412290;
                *&buf[4] = v26;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Took over coordinator vpp coordinator", buf, 0xCu);
              }

              sub_10023E000(*&self->_userInitiated, &off_100547DB8, @"coordinator_intent");
              v27 = *&self->_userInitiated;
              v28 = [v15 uniqueIdentifier];
              v29 = [v28 UUIDString];
              sub_10023E000(v27, v29, @"coordinator_id");

              v30 = v15;
              v21 = 0;
              v18 = *(&self->_install + 2);
              *(&self->_install + 2) = v30;
              v13 = &OBJC_IVAR___FamilyMember__iCloudUsername;
            }
          }

          else
          {
            if (v19)
            {
              v25 = *(&self->_coordinator + 2);
              *buf = 138412546;
              *&buf[4] = v25;
              *&buf[12] = 2114;
              *&buf[14] = v15;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Not taking over coordinator: %{public}@ ", buf, 0x16u);
            }

            v21 = v16;
          }

          v16 = v21;
        }
      }

      else
      {
        v16 = 0;
      }

      if (!*(&self->super.super.super.super.isa + v13[516]))
      {
        v31 = *&self->_userInitiated;
        v128 = v16;
        v32 = sub_1003A07F4(v31);
        v33 = v128;

        if (v32)
        {
          v127 = v33;
          v34 = sub_1003A040C(v32, &v127);
          v16 = v127;

          v35 = v13[516];
          v36 = *(&self->super.super.super.super.isa + v35);
          *(&self->super.super.super.super.isa + v35) = v34;

          v37 = *(&self->super.super.super.super.isa + v13[516]);
          if (v37)
          {
            v38 = *&self->_userInitiated;
            v39 = [v37 uniqueIdentifier];
            sub_10023E000(v38, v39, @"coordinator_id");
          }
        }

        else
        {
          v16 = v33;
        }
      }

      if (*(&self->_requestToken + 2))
      {
        v115 = objc_alloc_init(IXProgressHint);
        v40 = *(&self->_requestToken + 2);
        v41 = 0.0;
        v42 = 0.0;
        if (v40)
        {
          v42 = *(v40 + 8);
        }

        v43 = v10;
        v44 = [NSNumber numberWithDouble:v42];
        v45 = *(&self->_requestToken + 2);
        if (v45)
        {
          v41 = *(v45 + 16);
        }

        v114 = v6;
        v46 = [NSNumber numberWithDouble:v41];
        v47 = *(&self->_requestToken + 2);
        v48 = v4;
        if (v47)
        {
          v49 = *(v47 + 24);
        }

        else
        {
          v49 = 0.0;
        }

        v50 = [NSNumber numberWithDouble:v49];
        v126 = v16;
        v51 = [v115 setPhaseProportionsForLoadingPhase:v44 installingPhase:v46 postProcessingPhase:v50 error:&v126];
        v52 = v126;

        v10 = v43;
        if ((v51 & 1) == 0)
        {
          v53 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v111 = *(&self->_coordinator + 2);
            *buf = 138412546;
            *&buf[4] = v111;
            *&buf[12] = 2114;
            *&buf[14] = v52;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "[%@]: Failed to create IXProgressHint: %{public}@", buf, 0x16u);
          }
        }

        v54 = *(&self->_install + 2);
        v125 = v52;
        v55 = [v54 setProgressHint:v115 withError:&v125];
        v56 = v125;

        v57 = ASDLogHandleForCategory();
        v58 = v57;
        v4 = v48;
        if (v55)
        {
          v6 = v114;
          v13 = &OBJC_IVAR___FamilyMember__iCloudUsername;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v59 = *(&self->_coordinator + 2);
            v60 = *(&self->_requestToken + 2);
            if (v60)
            {
              v62 = v60[1];
              v61 = v60[2];
              v63 = v60[3];
            }

            else
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
            }

            *buf = 138413058;
            *&buf[4] = v59;
            *&buf[12] = 2048;
            *&buf[14] = v62;
            *&buf[22] = 2048;
            v132 = v61;
            LOWORD(v133) = 2048;
            *(&v133 + 2) = v63;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%@]: Set IXProgressHint on coordinator: %.2f : %.2f : %.2f", buf, 0x2Au);
          }
        }

        else
        {
          v6 = v114;
          v13 = &OBJC_IVAR___FamilyMember__iCloudUsername;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v112 = *(&self->_coordinator + 2);
            *buf = 138412546;
            *&buf[4] = v112;
            *&buf[12] = 2114;
            *&buf[14] = v56;
            _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[%@]: Failed to set IXProgressHint on the coordinator: %{public}@", buf, 0x16u);
          }
        }

        v64 = *(&self->_requestToken + 2);
        if (v64 && *(v64 + 32) >= 1)
        {
          v65 = *(&self->super.super.super.super.isa + v13[516]);
          v124 = v56;
          v66 = sub_10024A3C0(v65, 1, &v124);
          v16 = v124;

          v67 = ASDLogHandleForCategory();
          v68 = v67;
          if (v66)
          {
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v69 = *(&self->_coordinator + 2);
              v70 = *(&self->_requestToken + 2);
              if (v70)
              {
                v70 = *(v70 + 32);
              }

              *buf = 138412546;
              *&buf[4] = v69;
              *&buf[12] = 2048;
              *&buf[14] = v70;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "[%@]: Coordinator has been set to need post processing: (allowance=%lld)", buf, 0x16u);
            }

            v71 = sub_10023E604(*&self->_userInitiated, @"post_processing_state");
            v72 = *&self->_userInitiated;
            v68 = [NSNumber numberWithInteger:v71 | 1];
            sub_10023E000(v72, v68, @"post_processing_state");
          }

          else if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v113 = *(&self->_coordinator + 2);
            *buf = 138412546;
            *&buf[4] = v113;
            *&buf[12] = 2114;
            *&buf[14] = v16;
            _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "[%@]: Failed to set needsPostProcessing on the coordinator: %{public}@", buf, 0x16u);
          }

          v13 = &OBJC_IVAR___FamilyMember__iCloudUsername;
        }

        else
        {
          v16 = v56;
        }
      }

      v73 = *(&self->super.super.super.super.isa + v13[516]);
      if (v73)
      {
        if ([v73 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithPlaceholderPromise])
        {
          v74 = *(&self->super.super.super.super.isa + v13[516]);
          if (v74)
          {
            if ([v74 creatorIdentifier] == 1 && (sub_100248F9C(*(&self->super.super.super.super.isa + v13[516])) & 1) == 0)
            {
              v76 = *&self->_userInitiated;
              v77 = v10;
              if (v76)
              {
                v78 = objc_getProperty(v76, v75, 48, 1);
              }

              else
              {
                v78 = 0;
              }

              v79 = v78;
              v80 = [v79 firstObject];
              v123 = v16;
              v81 = sub_1002FFD28(v76, v80, &v123);
              v82 = v123;

              v122 = v82;
              v83 = sub_1002FE870(v81, &v122);
              v84 = v122;

              v10 = v77;
              if (!v83)
              {
                v85 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  v86 = *(&self->_coordinator + 2);
                  *buf = 138412546;
                  *&buf[4] = v86;
                  *&buf[12] = 2114;
                  *&buf[14] = v84;
                  _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[%@]: Failed to create placeholder: %{public}@", buf, 0x16u);
                }
              }

              v87 = *(&self->_install + 2);
              v121 = v84;
              v88 = sub_10024A138(v87, v83, &v121);
              v16 = v121;

              if ((v88 & 1) == 0)
              {
                v89 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = *(&self->_coordinator + 2);
                  *buf = 138412546;
                  *&buf[4] = v90;
                  *&buf[12] = 2114;
                  *&buf[14] = v16;
                  _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[%@]: Failed to set placeholder: %{public}@", buf, 0x16u);
                }

                [v83 cancelForReason:v16 client:1 error:0];
              }

              v13 = &OBJC_IVAR___FamilyMember__iCloudUsername;
            }
          }
        }
      }

      if (*(&self->super.super.super.super.isa + v13[516]))
      {
        v91 = 0;
        v92 = 1;
      }

      else
      {
        v93 = v16;
        v92 = *(&self->super.super.super.super.isa + v13[516]) != 0;
        v91 = v16;
      }

      buf[0] = v92;

      v94 = buf[0];
      v24 = v91;
      if ((v94 & 1) == 0)
      {
        v110 = sub_1002E8464(AppInstallImportResult, 0, *(&self->super._finished + 1), v24);
        v117(v6, v110);
        goto LABEL_92;
      }
    }

    v95 = sub_10040908C(*&self->_userInitiated);

    if (v95)
    {
      v96 = [LSApplicationRecord alloc];
      v97 = sub_10040908C(*&self->_userInitiated);
      v130 = 0;
      v98 = [v96 initWithBundleIdentifier:v97 allowPlaceholder:0 error:&v130];
      v99 = v130;

      if (v98)
      {
        v100 = *&self->_userInitiated;
        v101 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v98 asd_galetteMode]);
        sub_10023E000(v100, v101, @"previous_galette_mode");
      }
    }

    v102 = *&self->_userInitiated;
    if (v102)
    {
      v103 = *(v102 + 56);
      if (v103)
      {
        v104 = v103;
        v105 = sub_10040908C(*&self->_userInitiated);
        if (v105)
        {
          v106 = v105;
          v107 = sub_10023E604(*&self->_userInitiated, @"client_type");

          if (v107 != 1)
          {
            v108 = v6;
            v109 = +[BagService appstoredService];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1002E8804;
            v132 = &unk_100521FE0;
            v110 = v108;
            *&v133 = self;
            *(&v133 + 1) = v110;
            v134 = v10;
            [v109 recentBagWithCompletionHandler:buf];

LABEL_92:
LABEL_95:

            goto LABEL_96;
          }
        }

        else
        {
        }
      }
    }

    sub_1002E8538(self, v10, v6);
    goto LABEL_95;
  }

LABEL_96:
}

@end