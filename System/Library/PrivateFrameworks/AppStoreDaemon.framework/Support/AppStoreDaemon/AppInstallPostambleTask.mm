@interface AppInstallPostambleTask
- (void)main;
@end

@implementation AppInstallPostambleTask

- (void)main
{
  if (sub_10023E604(self->_install, @"coordinator_intent") == 6)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_100408EB0(&self->_install->super.super.isa);
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Skipping postamble - installation is occurring on another device", buf, 0xCu);
    }

    return;
  }

  v5 = sub_10023E51C(self->_install, @"previous_galette_mode");
  v6 = v5;
  if (v5 && ![v5 integerValue])
  {
    v7 = [LSApplicationRecord alloc];
    v8 = sub_10040908C(self->_install);
    v134 = 0;
    v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v134];
    v10 = v134;

    if (v9)
    {
      if ([v9 asd_galetteMode])
      {
        v11 = +[GaletteStore shared];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1003EB2A0;
        v131 = &unk_100524748;
        selfCopy2 = self;
        [v11 modifyUsingTransaction:buf];
      }
    }

    else
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v45 = sub_100408EB0(&self->_install->super.super.isa);
        v46 = sub_10040908C(self->_install);
        *buf = 138412802;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        *&buf[22] = 2114;
        v131 = v10;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%@] Error looking up record %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v13 = sub_1003BBF50();
  isHRNMode = [v13 isHRNMode];

  if (isHRNMode)
  {
    v15 = sub_10023E644(self->_install, @"client_id");
    install = self->_install;
    if (install)
    {
      v17 = sub_10023E604(install, @"source_type");
      if (v17 != 3 && v17 != 0)
      {
        goto LABEL_25;
      }
    }

    if ([@"dmd" isEqualToString:v15])
    {
      LOBYTE(isHRNMode) = 1;
    }

    else
    {
      if (!os_variant_has_internal_content())
      {
LABEL_25:
        LOBYTE(isHRNMode) = 0;
        goto LABEL_26;
      }

      LOBYTE(isHRNMode) = [@"asclient" isEqualToString:v15];
    }

LABEL_26:
  }

  v19 = sub_10023E604(self->_package, @"archive_type");
  v20 = self->_install;
  if ((!v20 || (sub_10023E604(v20, @"source_type") == 0) | isHRNMode & 1) && v19 <= 1)
  {
    v21 = [ASDBundle alloc];
    v22 = sub_10040908C(self->_install);
    v23 = [v21 initWithIdentifier:v22];

    if (!v23 || (v24 = [[ApplicationProxy alloc] initWithBundle:v23]) == 0)
    {
      v29 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v79 = sub_100408EB0(&self->_install->super.super.isa);
        *buf = 138412290;
        *&buf[4] = v79;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%@] Failed to write receipt - application was not found!", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v25 = v24;

    v26 = sub_10023E0F8(self->_install, @"receipt");
    v27 = sub_100408EB0(&self->_install->super.super.isa);
    v134 = 0;
    v28 = sub_1003B6F84(WriteReceipt, v26, v25, v27, &v134);
    v29 = v134;

    if (v28)
    {
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = sub_100408EB0(&self->_install->super.super.isa);
        v32 = [v26 length];
        *buf = 138412546;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] Sucessfully wrote receipt (%{bytes}lu)", buf, 0x16u);
      }
    }

    else
    {
      v33 = sub_1003BBF50();
      isHRNMode2 = [v33 isHRNMode];

      if (isHRNMode2)
      {
LABEL_50:

LABEL_54:
        goto LABEL_55;
      }

      v35 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v47 = sub_100408EB0(&self->_install->super.super.isa);
        *buf = 138412290;
        *&buf[4] = v47;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[%@] Receipt was missing or invalid, attempting to request new receipt", buf, 0xCu);
      }

      v30 = sub_1001F1F30([AppReceiptTask alloc], v25);
      v36 = +[ACAccountStore ams_sharedAccountStore];
      ams_activeiTunesAccount = [v36 ams_activeiTunesAccount];
      v39 = ams_activeiTunesAccount;
      if (v30)
      {
        objc_setProperty_nonatomic_copy(v30, v38, ams_activeiTunesAccount, 58);

        *(v30 + 50) = 1;
      }

      else
      {
      }

      v41 = sub_100408EB0(&self->_install->super.super.isa);
      if (v30)
      {
        objc_setProperty_nonatomic_copy(v30, v40, v41, 66);
      }

      if (((v30 != 0) & [v25[15] applicationHasMIDBasedSINF]) == 1)
      {
        *(v30 + 74) = 8;
      }

      v129 = v29;
      v42 = [(Task *)self runSubTask:v30 returningError:&v129];
      v43 = v129;

      if ((v42 & 1) == 0)
      {
        v44 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v48 = sub_100408EB0(&self->_install->super.super.isa);
          *buf = 138412546;
          *&buf[4] = v48;
          *&buf[12] = 2114;
          *&buf[14] = v43;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "[%@] Failed fetching receipt with error: %{public}@", buf, 0x16u);
        }
      }

      v29 = v43;
    }

    goto LABEL_50;
  }

LABEL_55:
  v49 = sub_10040916C(self->_install);
  if (v49)
  {
    v50 = objc_alloc_init(ASDPurchaseHistoryQuery);
    v51 = sub_10023E51C(self->_install, @"account_id");
    [v50 setAccountID:{objc_msgSend(v51, "longLongValue")}];

    v134 = v49;
    v52 = [NSArray arrayWithObjects:&v134 count:1];
    [v50 setStoreIDs:v52];

    [v50 setIncludeArcade:1];
    [v50 setProperties:4];
    v129 = 0;
    v53 = sub_10021CA38();
    v54 = sub_10021CDA0(v53, v50, &v129);

    if (v54)
    {
      firstObject = [v54 firstObject];
      isEligibleForGamesApp = [firstObject isEligibleForGamesApp];

      if (isEligibleForGamesApp)
      {
        v57 = sub_100408EB0(&self->_install->super.super.isa);
        v58 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v57;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying Game Center of app install", buf, 0xCu);
        }

        v134 = 0;
        v135 = &v134;
        v136 = 0x2050000000;
        v59 = qword_1005AB010;
        v137 = qword_1005AB010;
        if (!qword_1005AB010)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1003EB9AC;
          v131 = &unk_10051E318;
          selfCopy2 = &v134;
          sub_1003EB9AC(buf);
          v59 = *(v135 + 24);
        }

        v60 = v59;
        _Block_object_dispose(&v134, 8);
        v61 = sub_10023E644(self->_install, @"bundle_id");
        v134 = _NSConcreteStackBlock;
        v135 = 3221225472;
        v136 = sub_1003EB308;
        v137 = &unk_10051B5C0;
        v138 = v57;
        v62 = v57;
        [v59 gameCenterEnabledGameInstalled:v61 withCompletionHandler:&v134];
      }
    }

    else
    {
      v64 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v78 = sub_100408EB0(&self->_install->super.super.isa);
        *buf = 138412546;
        *&buf[4] = v78;
        *&buf[12] = 2114;
        *&buf[14] = v129;
        _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%@] Unable to fetch purchase history: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v63 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v77 = sub_100408EB0(&self->_install->super.super.isa);
      *buf = 138412290;
      *&buf[4] = v77;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "[%@] No item ID", buf, 0xCu);
    }
  }

  if (!sub_10023E4DC(self->_install, @"has_background_assets_extension"))
  {
    goto LABEL_103;
  }

  v65 = objc_alloc_init(BAAppStoreClient);
  if ((sub_10023E604(self->_install, @"post_processing_state") & 2) == 0)
  {
    v66 = sub_10023E604(self->_install, @"restore_type");
    v67 = self->_install;
    if (v67)
    {
      v68 = sub_10023E604(v67, @"source_type") == 2;
      if (v66)
      {
LABEL_73:
        v69 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 = sub_100408EB0(&self->_install->super.super.isa);
          v71 = sub_1004090FC(self->_install);
          *buf = 138412546;
          *&buf[4] = v70;
          *&buf[12] = 2114;
          *&buf[14] = v71;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%@] About to tell Background Assets that a restore is ready for processing (Postamble): %{public}@", buf, 0x16u);
        }

        v72 = sub_10040908C(self->_install);
        v73 = sub_1004090FC(self->_install);
        v74 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v72 appBundleURL:v73 event:12 client:v68];

        [v74 setUserInitiated:sub_100408E18(self->_install) ^ 1];
        v75 = self->_install;
        if (v75)
        {
LABEL_89:
          v92 = sub_10023E604(v75, @"automatic_type") != 0;
          goto LABEL_90;
        }

        v92 = 0;
LABEL_90:
        [v74 setAutomaticInstall:v92];
        v129 = 0;
        v93 = [v65 performEventWithDescriptor:v74 error:&v129];
        v76 = v129;

        if ((v93 & 1) == 0)
        {
          v94 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            v125 = sub_100408EB0(&self->_install->super.super.isa);
            *buf = 138412546;
            *&buf[4] = v125;
            *&buf[12] = 2114;
            *&buf[14] = v76;
            _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "[%@] Failed to tell Background Assets that an install/update/restore was ready for processing (Postamble): %{public}@", buf, 0x16u);
          }
        }

        goto LABEL_94;
      }
    }

    else
    {
      v68 = 0;
      if (v66)
      {
        goto LABEL_73;
      }
    }

    v80 = self->_install;
    if (v80)
    {
      v81 = sub_10023E604(v80, @"update_type") != 0;
    }

    else
    {
      v81 = 0;
    }

    v82 = ASDLogHandleForCategory();
    v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
    if (v81)
    {
      if (v83)
      {
        v84 = sub_100408EB0(&self->_install->super.super.isa);
        v85 = sub_1004090FC(self->_install);
        *buf = 138412546;
        *&buf[4] = v84;
        *&buf[12] = 2114;
        *&buf[14] = v85;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%@] About to tell Background Assets that an update is ready for processing (Postamble): %{public}@", buf, 0x16u);
      }

      v86 = sub_10040908C(self->_install);
      v87 = sub_1004090FC(self->_install);
      v74 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v86 appBundleURL:v87 event:11 client:v68];

      [v74 setUserInitiated:sub_100408E18(self->_install) ^ 1];
      v75 = self->_install;
      if (v75)
      {
        goto LABEL_89;
      }

      v92 = 0;
    }

    else
    {
      if (v83)
      {
        v88 = sub_100408EB0(&self->_install->super.super.isa);
        v89 = sub_1004090FC(self->_install);
        *buf = 138412546;
        *&buf[4] = v88;
        *&buf[12] = 2114;
        *&buf[14] = v89;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%@] About to tell Background Assets that an install is ready for processing (Postamble): %{public}@", buf, 0x16u);
      }

      v90 = sub_10040908C(self->_install);
      v91 = sub_1004090FC(self->_install);
      v74 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v90 appBundleURL:v91 event:10 client:v68];

      [v74 setUserInitiated:sub_100408E18(self->_install) ^ 1];
      v75 = self->_install;
      if (v75)
      {
        goto LABEL_89;
      }

      v92 = 0;
    }

    goto LABEL_90;
  }

  v76 = 0;
LABEL_94:
  v95 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    v96 = sub_100408EB0(&self->_install->super.super.isa);
    v97 = sub_1004090FC(self->_install);
    *buf = 138412546;
    *&buf[4] = v96;
    *&buf[12] = 2114;
    *&buf[14] = v97;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "[%@] About to tell Background Assets that our install job is complete: %{public}@", buf, 0x16u);
  }

  v98 = sub_10040908C(self->_install);
  v99 = sub_1004090FC(self->_install);
  v100 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v98 appBundleURL:v99 event:30 client:0];

  [v100 setUserInitiated:sub_100408E18(self->_install) ^ 1];
  v101 = self->_install;
  if (v101)
  {
    v102 = sub_10023E604(v101, @"automatic_type") != 0;
  }

  else
  {
    v102 = 0;
  }

  [v100 setAutomaticInstall:v102];
  v128 = v76;
  v103 = [v65 performEventWithDescriptor:v100 error:&v128];
  v104 = v128;

  if ((v103 & 1) == 0)
  {
    v105 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      v123 = sub_100408EB0(&self->_install->super.super.isa);
      *buf = 138412546;
      *&buf[4] = v123;
      *&buf[12] = 2114;
      *&buf[14] = v104;
      _os_log_error_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "[%@] Failed to tell Background Assets that our install job was complete: %{public}@", buf, 0x16u);
    }
  }

LABEL_103:
  if (sub_10023E4DC(self->_install, @"default_browser"))
  {
    v127 = 0;
    v106 = [LSApplicationRecord alloc];
    v107 = sub_10040908C(self->_install);
    v108 = [v106 initForInstallMachineryWithBundleIdentifier:v107 placeholder:0 error:&v127];

    v109 = ASDLogHandleForCategory();
    v110 = v109;
    if (v108)
    {
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v111 = sub_100408EB0(&self->_install->super.super.isa);
        *buf = 138412290;
        *&buf[4] = v111;
        _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "[%@] Configuring as default web browser", buf, 0xCu);
      }

      v112 = +[LSApplicationWorkspace defaultWorkspace];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003EB3D8;
      v131 = &unk_1005216F0;
      selfCopy2 = self;
      v133 = v108;
      [v112 setDefaultWebBrowserToApplicationRecord:v133 completionHandler:buf];
    }

    else
    {
      if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
      {
        v124 = sub_100408EB0(&self->_install->super.super.isa);
        *buf = 138412290;
        *&buf[4] = v124;
        _os_log_fault_impl(&_mh_execute_header, v110, OS_LOG_TYPE_FAULT, "[%@] Failed to retrieve app record for default browser just installed!", buf, 0xCu);
      }
    }
  }

  v113 = sub_10023E51C(self->_install, @"metrics_install_type");
  unsignedCharValue = [v113 unsignedCharValue];

  v115 = sub_10023E0F8(self->_install, @"bundle_id");
  if (v115)
  {
    v116 = sub_1002B5560();
    *buf = v115;
    v117 = [NSArray arrayWithObjects:buf count:1];
    sub_1002B8950(v116, v117, unsignedCharValue, 1);
  }

  v118 = self->_install;
  if (v118 && sub_10023E604(v118, @"source_type") == 1)
  {
    v119 = objc_alloc_init(AMSUniversalLinks);
    updateUniversalLinks = [v119 updateUniversalLinks];
    [updateUniversalLinks addFinishBlock:&stru_1005280F0];
  }

  v121 = sub_10040908C(self->_install);
  v122 = [v121 isEqualToString:@"com.apple.AppStore"];

  if (v122)
  {
    v126 = sub_1002856D4();
    sub_100289F24(v126);
  }
}

@end