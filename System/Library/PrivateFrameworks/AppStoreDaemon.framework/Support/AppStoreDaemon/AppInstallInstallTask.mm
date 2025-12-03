@interface AppInstallInstallTask
- (void)main;
@end

@implementation AppInstallInstallTask

- (void)main
{
  if (sub_10023E604(self->_package, @"archive_type") > 1)
  {
    v3 = ASDErrorWithDescription();
LABEL_14:
    v13 = sub_1003E8DD0(AppInstallInstallResponse, [(SQLiteMemoryEntity *)self->_install databaseID], v3);
    goto LABEL_105;
  }

  if (self->_coordinator)
  {
    v3 = 0;
    goto LABEL_4;
  }

  v19 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    *buf = 138412290;
    v95 = logKey;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Looking for existing coordinator to resynchronize installation", buf, 0xCu);
  }

  v21 = sub_10023E0F8(self->_install, @"coordinator_id");
  if (!v21)
  {
    v34 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v49 = self->_logKey;
      *buf = 138412290;
      v95 = v49;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[%@] No coordinator identifier was set", buf, 0xCu);
    }

    v3 = ASDErrorWithDescription();
    sub_1003E8D50(self);
    goto LABEL_14;
  }

  v22 = v21;
  v92 = 0;
  v23 = sub_100248934(IXAppInstallCoordinator, v21, &v92);
  v3 = v92;
  coordinator = self->_coordinator;
  self->_coordinator = v23;

  if (!self->_coordinator)
  {
    v25 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_logKey;
      *buf = 138412290;
      v95 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] Coordinator is missing - checking if application is installed", buf, 0xCu);
    }

    v8 = sub_10023E0F8(self->_install, @"bundle_id");
    if (v8)
    {
      v27 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
      if (v27)
      {
        v28 = sub_10023E51C(self->_install, @"evid");
        unsignedLongLongValue = [v28 unsignedLongLongValue];
        if (unsignedLongLongValue)
        {
          iTunesMetadata = [v27 iTunesMetadata];
          versionIdentifier = [iTunesMetadata versionIdentifier];

          if (unsignedLongLongValue == versionIdentifier)
          {
            v32 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = self->_logKey;
              *buf = 138412546;
              v95 = v33;
              v96 = 2114;
              v97 = v28;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] Expected application appears to be installed with evid: %{public}@, proceeding to postamble", buf, 0x16u);
            }

            v13 = sub_1003E8E44(AppInstallInstallResponse, [(SQLiteMemoryEntity *)self->_install databaseID]);

            goto LABEL_104;
          }
        }

        v45 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v86 = self->_logKey;
          iTunesMetadata2 = [v27 iTunesMetadata];
          versionIdentifier2 = [iTunesMetadata2 versionIdentifier];
          *buf = 138412802;
          v95 = v86;
          v96 = 2048;
          v97 = unsignedLongLongValue;
          v98 = 2048;
          v99 = versionIdentifier2;
          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[%@] Expected application with evid: %llu not installed. Installed version is: %llu", buf, 0x20u);
        }
      }
    }

    v46 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v83 = self->_logKey;
      *buf = 138412546;
      v95 = v83;
      v96 = 2114;
      v97 = v8;
    }

    v47 = ASDErrorWithUnderlyingErrorAndDescription();

    sub_1003E8D50(self);
    v13 = sub_1003E8DD0(AppInstallInstallResponse, [(SQLiteMemoryEntity *)self->_install databaseID], v47);
    v3 = v47;
    goto LABEL_104;
  }

LABEL_4:
  if (+[AMSDevice deviceIsAppleTV])
  {
    if (self->_coordinator)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(IXAppInstallCoordinator *)self->_coordinator conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithUserDataPromise])
        {
          v4 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v5 = self->_logKey;
            *buf = 138412290;
            v95 = v5;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Completing screen sync data promise", buf, 0xCu);
          }

          v6 = self->_coordinator;
          v91 = v3;
          sub_1002499D4(v6, &v91);
          v7 = v91;

          v3 = v7;
        }
      }
    }
  }

  v8 = objc_alloc_init(MIInstallOptions);
  [v8 setInstallTargetType:1];
  v9 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
  [v8 setAutoInstallOverride:{sub_10023E604(self->_install, @"auto_install_override"}];
  v10 = sub_10023E0F8(self->_install, @"source_type");
  integerValue = [v10 integerValue];

  if (integerValue != 1)
  {
    install = self->_install;
    v93 = 0;
    v15 = sub_10040969C(install, &v93);
    v12 = v93;
    if ((integerValue | 2) == 2)
    {
      if (!v15)
      {
        v44 = 0;
        goto LABEL_82;
      }

      v16 = sub_10023E0F8(self->_package, @"sinf");
      v17 = v16;
      if (v16 && [v16 length])
      {
        [v8 setSinfData:v17];
        v18 = sub_10023E604(self->_install, @"client_type") == 1;
        sub_1003E3A60(v15, v17, v18);
      }

      else
      {
        v40 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          v82 = self->_logKey;
          *buf = 138412290;
          v95 = v82;
          _os_log_fault_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "[%@] Refusing to install without required SINF", buf, 0xCu);
        }

        v41 = ASDErrorWithDescription();

        v8 = 0;
        v12 = v41;
      }

      v37 = sub_10023E644(self->_install, @"alternate_icon_name");
      if ([v37 length])
      {
        v42 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = self->_logKey;
          *buf = 138412546;
          v95 = v43;
          v96 = 2114;
          v97 = v37;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@] Setting alternate icon: %{public}@", buf, 0x16u);
        }

        [v8 setAlternateIconName:v37];
      }
    }

    else
    {
      v35 = sub_1003BBF50();
      isHRNMode = [v35 isHRNMode];

      if (!isHRNMode)
      {
LABEL_67:
        v44 = v8;
        if (!v8)
        {
          v9 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
LABEL_83:

          v8 = v44;
          goto LABEL_84;
        }

        v51 = sub_10023E644(self->_package, @"variant_id");
        [v15 setVariantID:v51];

        v9 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
        if (!v15)
        {
          v52 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            v84 = self->_logKey;
            *buf = 138412546;
            v95 = v84;
            v96 = 2114;
            v97 = 0;
            _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "[%@] Failed to process store metadata: %{public}@", buf, 0x16u);
          }
        }

        [v44 setITunesMetadata:v15];
        if (integerValue == 2)
        {
          v53 = sub_10023E0F8(self->_package, @"provisioning_profiles");
          v54 = [v53 count];
          v55 = ASDLogHandleForCategory();
          v56 = v55;
          if (v54)
          {
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v57 = self->_logKey;
              v58 = [v53 count];
              *buf = 138412546;
              v95 = v57;
              v96 = 2048;
              v97 = v58;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[%@] Provided %lu provisioning profiles", buf, 0x16u);
            }

            v56 = sub_10036FDEC(v53, &stru_100528060);
            [v44 setProvisioningProfiles:v56];
          }

          else if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v85 = self->_logKey;
            *buf = 138412290;
            v95 = v85;
            _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%@] No provisioning profiles were provided", buf, 0xCu);
          }

          v9 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
        }

        v8 = 0;
LABEL_82:

        goto LABEL_83;
      }

      v37 = sub_10023E644(self->_install, @"client_id");
      if (sub_10023E604(self->_install, @"source_type") == 3 && (([@"dmd" isEqualToString:v37] & 1) != 0 || os_variant_has_internal_content() && objc_msgSend(@"asclient", "isEqualToString:", v37)))
      {
        v38 = sub_10023E0F8(self->_package, @"sinf");
        v39 = v38;
        if (v38)
        {
          v90 = [v38 length]!= 0;
        }

        else
        {
          v90 = 0;
        }

        log = ASDLogHandleForCategory();
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v50 = self->_logKey;
          *buf = 138412802;
          v95 = v50;
          v96 = 2114;
          v97 = v37;
          v98 = 1024;
          LODWORD(v99) = v90;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%@] Configuring VPP manifest install for clientID: %{public}@ hasSINF: %{BOOL}d", buf, 0x1Cu);
        }

        if (v90)
        {
          [v8 setSinfData:v39];
          sub_1003E3A60(v15, v39, 1);
        }
      }

      else
      {
        v39 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v48 = self->_logKey;
          *buf = 138412546;
          v95 = v48;
          v96 = 2114;
          v97 = v37;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%@] SKippping configuration of non-VPP install for clientID: %{public}@", buf, 0x16u);
        }
      }
    }

    goto LABEL_67;
  }

  [v8 setSystemAppInstall:1];
  v12 = 0;
LABEL_84:
  v59 = v3;
  if (!v8)
  {
    v60 = v12;
    v59 = v12;
  }

  v61 = v59;
  if (v8)
  {
    v62 = self->_coordinator;
    v93 = v61;
    v63 = sub_10024A028(v62, v8, &v93);
    v3 = v93;

    if (v63)
    {
      v64 = sub_10024A248(self->_coordinator, 0);
      v65 = v64;
      if (v64 && [v64 count])
      {
        v66 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = self->_logKey;
          *buf = 138412290;
          v95 = v67;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "[%@] Found essential asset promises on the coordinator, presuming this is a restored coordinator that was previously paused during post-processing", buf, 0xCu);
        }

        v68 = *(&self->super.super.super.isa + v9[456]);
        if (v68)
        {
          v69 = sub_10023E604(v68, @"source_type") == 2;
          v68 = *(&self->super.super.super.isa + v9[456]);
        }

        else
        {
          v69 = 0;
        }

        v70 = sub_10040908C(v68);
        v71 = sub_1004090FC(*(&self->super.super.super.isa + v9[456]));
        v72 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v70 appBundleURL:v71 event:21 client:v69];

        [v72 setUserInitiated:sub_100408E18(*(&self->super.super.super.isa + v9[456])) ^ 1];
        v73 = *(&self->super.super.super.isa + v9[456]);
        if (v73)
        {
          v74 = sub_10023E604(v73, @"automatic_type") != 0;
        }

        else
        {
          v74 = 0;
        }

        [v72 setAutomaticInstall:v74];
        v75 = sub_10025E74C();
        sub_10025F2C4(v75, v72, self->_logKey);

        databaseID = [(SQLiteMemoryEntity *)self->_install databaseID];
        objc_opt_self();
        v13 = sub_1003E8F78([AppInstallInstallResponse alloc], databaseID, 4, 0);
      }

      else
      {
        v77 = sub_100249D80(self->_coordinator, 0);
        databaseID2 = [(SQLiteMemoryEntity *)self->_install databaseID];
        objc_opt_self();
        v79 = [AppInstallInstallResponse alloc];
        if (v77 == 4)
        {
          v80 = 6;
        }

        else
        {
          v80 = 1;
        }

        v13 = sub_1003E8F78(&v79->super.isa, databaseID2, v80, 0);
      }
    }

    else
    {
      sub_1003E8D50(self);
      v13 = sub_1003E8DD0(AppInstallInstallResponse, [*(&self->super.super.super.isa + v9[456]) databaseID], v3);
    }
  }

  else
  {
    sub_1003E8D50(self);
    v13 = sub_1003E8DD0(AppInstallInstallResponse, [*(&self->super.super.super.isa + v9[456]) databaseID], v61);
    v3 = v61;
  }

LABEL_104:

LABEL_105:
  installResponse = self->_installResponse;
  self->_installResponse = v13;
}

@end