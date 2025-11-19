@interface ISMMigrator
+ (BOOL)_copyAccountPropertiesIfNeededFromAccount:(id)a3 toAccount:(id)a4;
+ (id)_firstActiveAccountInAccounts:(id)a3;
+ (id)_logConfig;
+ (void)_cleanupBrokenAccounts:(BOOL)a3 emptyAccounts:(BOOL)a4;
+ (void)_cleanupDuplicateAccounts;
+ (void)_cleanupMultipleActiveAccountsWithPreferredActiveAccount:(id)a3;
+ (void)_mergeDuplicateAccounts:(id)a3 inStore:(id)a4;
+ (void)_repairAccounts;
+ (void)_repairAccountsWithStringDSID;
+ (void)_repairBrokenAccounts;
- (BOOL)_isMajorVersionUpdate;
- (BOOL)_migrateAccountsToAccountsFramework;
- (BOOL)performMigration;
- (void)_cleanupAutomaticDownloadKindsOfActiveAccount:(id)a3;
- (void)_cleanupFollowUps;
- (void)_encryptAccountFlags;
- (void)_migrateAutomaticDownloadKindsDefaultToActiveAccount:(id)a3 store:(id)a4;
- (void)_migrateSandboxAccounts;
- (void)_migrateServerPromptDefaultsToActiveAccount:(id)a3 store:(id)a4;
- (void)_postPushToken;
- (void)_removePasswordEquivalentTokensFromAccounts;
@end

@implementation ISMMigrator

- (BOOL)performMigration
{
  v3 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = [(ISMMigrator *)self didMigrateBackupFromDifferentDevice];
    v10 = [(ISMMigrator *)self didRestoreFromBackup];
    v11 = [(ISMMigrator *)self didRestoreFromCloudBackup];
    v12 = [(ISMMigrator *)self didUpgrade];
    *buf = 138544386;
    v191 = v8;
    v192 = 1024;
    *v193 = v9;
    *&v193[4] = 1024;
    *&v193[6] = v10;
    LOWORD(v194) = 1024;
    *(&v194 + 2) = v11;
    HIWORD(v194) = 1024;
    v195 = v12;
    LODWORD(v181) = 36;
    v170 = buf;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_13;
    }

    v6 = [NSString stringWithCString:v13 encoding:4, buf, v181];
    free(v13);
    v170 = v6;
    SSFileLog();
  }

LABEL_13:
  CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
  v14 = kITunesStoreDaemonDefaultsID;
  CFPreferencesAppSynchronize(kITunesStoreDaemonDefaultsID);
  if (![(ISMMigrator *)self didUpgrade])
  {
    v69 = [objc_opt_class() _logConfig];
    if (!v69)
    {
      v69 = +[SSLogConfig sharedConfig];
    }

    v70 = [v69 shouldLog];
    if ([v69 shouldLogToDisk])
    {
      v70 |= 2u;
    }

    v71 = [v69 OSLogObject];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = v70;
    }

    else
    {
      v72 = v70 & 2;
    }

    if (v72)
    {
      v73 = objc_opt_class();
      *buf = 138543362;
      v191 = v73;
      LODWORD(v181) = 12;
      v175 = buf;
      v74 = _os_log_send_and_compose_impl();

      if (!v74)
      {
        goto LABEL_105;
      }

      v71 = [NSString stringWithCString:v74 encoding:4, buf, v181];
      free(v74);
      v175 = v71;
      SSFileLog();
    }

LABEL_105:
    CFPreferencesSetAppValue(@"AMSDeviceBiometricsState", &off_10AA8, @"com.apple.AppleMediaServices");
    CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
    v75 = [objc_opt_class() _logConfig];
    if (!v75)
    {
      v75 = +[SSLogConfig sharedConfig];
    }

    v76 = [v75 shouldLog];
    if ([v75 shouldLogToDisk])
    {
      v76 |= 2u;
    }

    v77 = [v75 OSLogObject];
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = v76;
    }

    else
    {
      v78 = v76 & 2;
    }

    if (v78)
    {
      v79 = objc_opt_class();
      *buf = 138543362;
      v191 = v79;
      LODWORD(v181) = 12;
      v176 = buf;
      v80 = _os_log_send_and_compose_impl();

      if (!v80)
      {
        goto LABEL_116;
      }

      v77 = [NSString stringWithCString:v80 encoding:4, buf, v181];
      free(v80);
      v176 = v77;
      SSFileLog();
    }

LABEL_116:
    CFPreferencesSetAppValue(@"BiometricState", &off_10AC0, v14);
    v81 = [objc_opt_class() _logConfig];
    if (!v81)
    {
      v81 = +[SSLogConfig sharedConfig];
    }

    v82 = [v81 shouldLog];
    if ([v81 shouldLogToDisk])
    {
      v82 |= 2u;
    }

    v83 = [v81 OSLogObject];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v84 = v82;
    }

    else
    {
      v84 = v82 & 2;
    }

    if (v84)
    {
      v85 = objc_opt_class();
      *buf = 138543362;
      v191 = v85;
      LODWORD(v181) = 12;
      v174 = buf;
      v86 = _os_log_send_and_compose_impl();

      if (!v86)
      {
LABEL_127:

        v87 = @"BiometricStateEnabled";
        v88 = &off_10AC0;
LABEL_128:
        CFPreferencesSetAppValue(v87, v88, v14);
        v68 = v14;
        goto LABEL_129;
      }

      v83 = [NSString stringWithCString:v86 encoding:4, buf, v181];
      free(v86);
      v174 = v83;
      SSFileLog();
    }

    goto LABEL_127;
  }

  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AMSDeviceBiometricsState", @"com.apple.AppleMediaServices", 0);
  v16 = [objc_opt_class() _logConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (v20)
  {
    v21 = objc_opt_class();
    v22 = [NSNumber numberWithLong:AppIntegerValue];
    *buf = 138543618;
    v191 = v21;
    v192 = 2112;
    *v193 = v22;
    LODWORD(v181) = 22;
    v171 = buf;
    v23 = _os_log_send_and_compose_impl();

    if (!v23)
    {
      goto LABEL_26;
    }

    v19 = [NSString stringWithCString:v23 encoding:4, buf, v181];
    free(v23);
    v171 = v19;
    SSFileLog();
  }

LABEL_26:
  v24 = CFPreferencesGetAppIntegerValue(@"BiometricState", v14, 0);
  v25 = [objc_opt_class() _logConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  v26 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v25 OSLogObject];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v27;
  }

  else
  {
    v29 = v27 & 2;
  }

  if (v29)
  {
    v30 = objc_opt_class();
    v31 = [NSNumber numberWithLong:v24];
    *buf = 138543618;
    v191 = v30;
    v192 = 2112;
    *v193 = v31;
    LODWORD(v181) = 22;
    v172 = buf;
    v32 = _os_log_send_and_compose_impl();

    if (!v32)
    {
      goto LABEL_38;
    }

    v28 = [NSString stringWithCString:v32 encoding:4, buf, v181];
    free(v32);
    v172 = v28;
    SSFileLog();
  }

LABEL_38:
  v33 = CFPreferencesGetAppIntegerValue(@"BiometricStateDidMigrate", v14, 0);
  v34 = [objc_opt_class() _logConfig];
  if (!v34)
  {
    v34 = +[SSLogConfig sharedConfig];
  }

  v35 = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    v36 = v35 | 2;
  }

  else
  {
    v36 = v35;
  }

  v37 = [v34 OSLogObject];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 & 2;
  }

  if (v38)
  {
    v39 = objc_opt_class();
    v40 = [NSNumber numberWithBool:v33 != 0];
    *buf = 138543618;
    v191 = v39;
    v192 = 2112;
    *v193 = v40;
    LODWORD(v181) = 22;
    v173 = buf;
    v41 = _os_log_send_and_compose_impl();

    if (!v41)
    {
      goto LABEL_50;
    }

    v37 = [NSString stringWithCString:v41 encoding:4, buf, v181];
    free(v41);
    v173 = v37;
    SSFileLog();
  }

LABEL_50:
  v42 = [(ISMMigrator *)self _isMajorVersionUpdate];
  v43 = [objc_opt_class() _logConfig];
  if (!v43)
  {
    v43 = +[SSLogConfig sharedConfig];
  }

  v44 = [v43 shouldLog];
  if ([v43 shouldLogToDisk])
  {
    v44 |= 2u;
  }

  v45 = [v43 OSLogObject];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v44;
  }

  else
  {
    v46 = v44 & 2;
  }

  if (v46)
  {
    v47 = objc_opt_class();
    [NSNumber numberWithBool:v42];
    v182 = self;
    v48 = v14;
    v49 = v42;
    v42 = v33;
    v50 = v24;
    v52 = v51 = AppIntegerValue;
    *buf = 138543618;
    v191 = v47;
    v192 = 2114;
    *v193 = v52;
    LODWORD(v181) = 22;
    v174 = buf;
    v53 = _os_log_send_and_compose_impl();

    AppIntegerValue = v51;
    v24 = v50;
    v33 = v42;
    LODWORD(v42) = v49;
    v14 = v48;
    self = v182;

    if (!v53)
    {
      goto LABEL_61;
    }

    v45 = [NSString stringWithCString:v53 encoding:4, buf, v181];
    free(v53);
    v174 = v45;
    SSFileLog();
  }

LABEL_61:
  if (v24 == 1 && v42)
  {
    v55 = [objc_opt_class() _logConfig];
    if (!v55)
    {
      v55 = +[SSLogConfig sharedConfig];
    }

    v56 = [v55 shouldLog];
    if ([v55 shouldLogToDisk])
    {
      v56 |= 2u;
    }

    v57 = [v55 OSLogObject];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v56;
    }

    else
    {
      v58 = v56 & 2;
    }

    if (v58)
    {
      v59 = objc_opt_class();
      *buf = 138543362;
      v191 = v59;
      LODWORD(v181) = 12;
      v174 = buf;
      v60 = _os_log_send_and_compose_impl();

      if (!v60)
      {
LABEL_76:

        CFPreferencesSetAppValue(@"BiometricState", 0, v14);
        goto LABEL_77;
      }

      v57 = [NSString stringWithCString:v60 encoding:4, buf, v181];
      free(v60);
      v174 = v57;
      SSFileLog();
    }

    goto LABEL_76;
  }

LABEL_77:
  if (v33)
  {
    v61 = v42;
  }

  else
  {
    v61 = 0;
  }

  if (v61 && AppIntegerValue == 2)
  {
    v62 = [objc_opt_class() _logConfig];
    if (!v62)
    {
      v62 = +[SSLogConfig sharedConfig];
    }

    v63 = [v62 shouldLog];
    if ([v62 shouldLogToDisk])
    {
      v63 |= 2u;
    }

    v64 = [v62 OSLogObject];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v63;
    }

    else
    {
      v65 = v63 & 2;
    }

    if (v65)
    {
      v66 = objc_opt_class();
      *buf = 138543362;
      v191 = v66;
      LODWORD(v181) = 12;
      v174 = buf;
      v67 = _os_log_send_and_compose_impl();

      if (!v67)
      {
LABEL_93:

        CFPreferencesSetAppValue(@"AMSDeviceBiometricsState", 0, @"com.apple.AppleMediaServices");
        v68 = @"com.apple.AppleMediaServices";
LABEL_129:
        CFPreferencesAppSynchronize(v68);
        goto LABEL_130;
      }

      v64 = [NSString stringWithCString:v67 encoding:4, buf, v181];
      free(v67);
      v174 = v64;
      SSFileLog();
    }

    goto LABEL_93;
  }

  if (!(AppIntegerValue | v33))
  {
    if (v24 == 2)
    {
      v93 = 1;
      goto LABEL_251;
    }

    if (!v42 && v24 == 1)
    {
      v93 = 2;
LABEL_251:
      v183 = v93;
      v162 = [objc_opt_class() _logConfig];
      if (!v162)
      {
        v162 = +[SSLogConfig sharedConfig];
      }

      v163 = [v162 shouldLog];
      if ([v162 shouldLogToDisk])
      {
        v163 |= 2u;
      }

      v164 = [v162 OSLogObject];
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        v165 = v163;
      }

      else
      {
        v165 = v163 & 2;
      }

      if (v165)
      {
        v166 = objc_opt_class();
        v167 = [NSNumber numberWithLong:v24];
        v168 = [NSNumber numberWithLong:v183];
        *buf = 138543874;
        v191 = v166;
        v192 = 2114;
        *v193 = v167;
        *&v193[8] = 2114;
        v194 = v168;
        LODWORD(v181) = 32;
        v174 = buf;
        v169 = _os_log_send_and_compose_impl();

        if (!v169)
        {
LABEL_262:

          CFPreferencesSetAppValue(@"AMSDeviceBiometricsState", [NSNumber numberWithLong:v183], @"com.apple.AppleMediaServices");
          CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
          v87 = @"BiometricStateDidMigrate";
          v88 = &off_10A90;
          goto LABEL_128;
        }

        v164 = [NSString stringWithCString:v169 encoding:4, buf, v181];
        free(v169);
        v174 = v164;
        SSFileLog();
      }

      goto LABEL_262;
    }
  }

LABEL_130:
  if ([(ISMMigrator *)self didRestoreFromBackup])
  {
    CFPreferencesSetAppValue(@"DidShowHardRestoreFailureDialog", 0, v14);
    CFPreferencesSetAppValue(@"RestoreAccountIDs", 0, v14);
    CFPreferencesSetAppValue(@"RestoreFailRetryCount", 0, v14);
    CFPreferencesSetAppValue(@"RestoreItemKinds", 0, v14);
    CFPreferencesSetAppValue(@"RestoreSoftFailRetryCount", 0, v14);
    CFPreferencesSetAppValue(@"RestoreStoreFrontIDs", 0, v14);
    CFPreferencesSetAppValue(@"RestoreSuppressTermsAndConditions", 0, v14);
  }

  if ([(ISMMigrator *)self didUpgrade])
  {
    [ISFileProtectionClassMigrator setMigrationNeededIfNotSet:1];
  }

  else
  {
    v89 = [(ISMMigrator *)self didRestoreFromBackup];
    [ISFileProtectionClassMigrator setMigrationNeededIfNotSet:v89];
    if (!v89)
    {
      v92 = 1;
      goto LABEL_142;
    }
  }

  CFPreferencesSetAppValue(@"UnsignedBags", 0, v14);
  CFPreferencesAppSynchronize(v14);
  v90 = kSSUserDefaultsIdentifier;
  v91 = CFPreferencesCopyAppValue(@"InitiateSessionURL", kSSUserDefaultsIdentifier);
  if ([v91 isEqualToString:@"https://init.itunes.apple.com/bag.xml?ix=6&custombag=true"])
  {
    CFPreferencesSetAppValue(@"InitiateSessionURL", 0, v90);
  }

  CFPreferencesAppSynchronize(v90);

  v92 = 0;
LABEL_142:
  CFPreferencesAppSynchronize(@"com.apple.mobileipod");
  if (!CFPreferencesGetAppBooleanValue(@"HasMigratedMusicAllowsCellularData", @"com.apple.mobileipod", 0))
  {
    CFPreferencesSetAppValue(@"HasMigratedMusicAllowsCellularData", &__kCFBooleanTrue, @"com.apple.mobileipod");
    v94 = [NSNumber numberWithUnsignedChar:CFPreferencesGetAppBooleanValue(@"AllowAutoDownloadOnCellular", kSSUserDefaultsIdentifier, 0)];
    CFPreferencesSetAppValue(@"MusicAllowsCellularData", v94, @"com.apple.mobileipod");
    CFPreferencesAppSynchronize(@"com.apple.mobileipod");
  }

  ShouldUseAppstored = SSDebugShouldUseAppstored();
  if ([(ISMMigrator *)self didUpgrade])
  {
    v96 = 3;
  }

  else
  {
    v96 = 1;
  }

  if ([(ISMMigrator *)self didRestoreFromCloudBackup])
  {
    v96 |= 4uLL;
  }

  if ([(ISMMigrator *)self didMigrateBackupFromDifferentDevice])
  {
    v96 |= 8uLL;
  }

  v97 = [objc_opt_class() _logConfig];
  v98 = v97;
  if (ShouldUseAppstored)
  {
    if (!v97)
    {
      v98 = +[SSLogConfig sharedConfig];
    }

    v99 = [v98 shouldLog];
    if ([v98 shouldLogToDisk])
    {
      v99 |= 2u;
    }

    v100 = [v98 OSLogObject];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      v101 = v99;
    }

    else
    {
      v101 = v99 & 2;
    }

    if (v101)
    {
      v102 = objc_opt_class();
      *buf = 138543362;
      v191 = v102;
      LODWORD(v181) = 12;
      v177 = buf;
      v103 = _os_log_send_and_compose_impl();

      if (!v103)
      {
LABEL_163:

        v104 = [objc_alloc(ISWeakLinkedClassForString()) initWithMigrationType:v96];
        v105 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v104];
        v189[0] = _NSConcreteStackBlock;
        v189[1] = 3221225472;
        v189[2] = sub_2C5C;
        v189[3] = &unk_10330;
        v189[4] = self;
        [v105 startWithCompletionBlock:v189];

        goto LABEL_176;
      }

      v100 = [NSString stringWithCString:v103 encoding:4, buf, v181];
      free(v103);
      v177 = v100;
      SSFileLog();
    }

    goto LABEL_163;
  }

  if (!v97)
  {
    v98 = +[SSLogConfig sharedConfig];
  }

  v106 = [v98 shouldLog];
  if ([v98 shouldLogToDisk])
  {
    v106 |= 2u;
  }

  v107 = [v98 OSLogObject];
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    v108 = v106;
  }

  else
  {
    v108 = v106 & 2;
  }

  if (!v108)
  {
    goto LABEL_174;
  }

  v109 = objc_opt_class();
  *buf = 138543362;
  v191 = v109;
  LODWORD(v181) = 12;
  v177 = buf;
  v110 = _os_log_send_and_compose_impl();

  if (v110)
  {
    v107 = [NSString stringWithCString:v110 encoding:4, buf, v181];
    free(v110);
    v177 = v107;
    SSFileLog();
LABEL_174:
  }

  v104 = objc_alloc_init(SSMigrator);
  v188[0] = _NSConcreteStackBlock;
  v188[1] = 3221225472;
  v188[2] = sub_2DF8;
  v188[3] = &unk_10358;
  v188[4] = self;
  [v104 performMigration:v96 completionBlock:v188];
LABEL_176:

  if (v92)
  {
    goto LABEL_214;
  }

  v111 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v111)
  {
    v111 = +[SSLogConfig sharedConfig];
  }

  v112 = [v111 shouldLog];
  if ([v111 shouldLogToDisk])
  {
    v112 |= 2u;
  }

  v113 = [v111 OSLogObject];
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    v114 = v112;
  }

  else
  {
    v114 = v112 & 2;
  }

  if (v114)
  {
    v115 = objc_opt_class();
    *buf = 138543362;
    v191 = v115;
    LODWORD(v181) = 12;
    v178 = buf;
    v116 = _os_log_send_and_compose_impl();

    if (!v116)
    {
      goto LABEL_188;
    }

    v113 = [NSString stringWithCString:v116 encoding:4, buf, v181];
    free(v116);
    v178 = v113;
    SSFileLog();
  }

LABEL_188:
  [objc_opt_class() _repairAccounts];
  v117 = [(ISMMigrator *)self _migrateAccountsToAccountsFramework];
  v118 = +[SSLogConfig sharedAccountsMigrationConfig];
  v119 = v118;
  if (!v117)
  {
    if (!v118)
    {
      v119 = +[SSLogConfig sharedConfig];
    }

    v125 = [v119 shouldLog];
    if ([v119 shouldLogToDisk])
    {
      v125 |= 2u;
    }

    v126 = [v119 OSLogObject];
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      v127 = v125;
    }

    else
    {
      v127 = v125 & 2;
    }

    if (v127)
    {
      v128 = objc_opt_class();
      *buf = 138543362;
      v191 = v128;
      LODWORD(v181) = 12;
      v179 = buf;
      v129 = _os_log_send_and_compose_impl();

      if (!v129)
      {
LABEL_212:

        goto LABEL_213;
      }

      v126 = [NSString stringWithCString:v129 encoding:4, buf, v181];
      free(v129);
      v179 = v126;
      SSFileLog();
    }

    goto LABEL_212;
  }

  if (!v118)
  {
    v119 = +[SSLogConfig sharedConfig];
  }

  v120 = [v119 shouldLog];
  if ([v119 shouldLogToDisk])
  {
    v120 |= 2u;
  }

  v121 = [v119 OSLogObject];
  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
  {
    v122 = v120;
  }

  else
  {
    v122 = v120 & 2;
  }

  if (!v122)
  {
    goto LABEL_199;
  }

  v123 = objc_opt_class();
  *buf = 138543362;
  v191 = v123;
  LODWORD(v181) = 12;
  v179 = buf;
  v124 = _os_log_send_and_compose_impl();

  if (v124)
  {
    v121 = [NSString stringWithCString:v124 encoding:4, buf, v181];
    free(v124);
    v179 = v121;
    SSFileLog();
LABEL_199:
  }

  [objc_opt_class() _repairAccounts];
LABEL_213:
  [(ISMMigrator *)self _migrateSandboxAccounts];
LABEL_214:
  v130 = [objc_opt_class() _logConfig];
  if (!v130)
  {
    v130 = +[SSLogConfig sharedConfig];
  }

  v131 = [v130 shouldLog];
  if ([v130 shouldLogToDisk])
  {
    v131 |= 2u;
  }

  v132 = [v130 OSLogObject];
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
  {
    v133 = v131;
  }

  else
  {
    v133 = v131 & 2;
  }

  if (v133)
  {
    v134 = objc_opt_class();
    *buf = 138543362;
    v191 = v134;
    LODWORD(v181) = 12;
    v180 = buf;
    v135 = _os_log_send_and_compose_impl();

    if (!v135)
    {
      goto LABEL_225;
    }

    v132 = [NSString stringWithCString:v135 encoding:4, buf, v181];
    free(v135);
    v180 = v132;
    SSFileLog();
  }

LABEL_225:
  +[SSFeatureEnablerMigrator migrate];
  if ((v92 & 1) == 0)
  {
    v136 = +[SSAccountStore defaultStore];
    v137 = [v136 activeAccount];
    [(ISMMigrator *)self _migrateAutomaticDownloadKindsDefaultToActiveAccount:v137 store:v136];
    [(ISMMigrator *)self _migrateServerPromptDefaultsToActiveAccount:v137 store:v136];
    [(ISMMigrator *)self _cleanupAutomaticDownloadKindsOfActiveAccount:v137];
    [(ISMMigrator *)self _encryptAccountFlags];

    [(ISMMigrator *)self _postPushToken];
    [(ISMMigrator *)self _cleanupFollowUps];
  }

  if ([(ISMMigrator *)self didUpgrade])
  {
    if (+[AMSDefaults migratedDeviceOffers])
    {
      v138 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!v138)
      {
        v138 = +[AMSLogConfig sharedConfig];
      }

      v139 = [v138 OSLogObject];
      if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
      {
        v140 = objc_opt_class();
        v141 = AMSLogKey();
        v142 = NSStringFromSelector(a2);
        *buf = 138543874;
        v191 = v140;
        v192 = 2114;
        *v193 = v141;
        *&v193[8] = 2114;
        v194 = v142;
        _os_log_impl(&dword_0, v139, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. We already migrated.", buf, 0x20u);
      }
    }

    else
    {
      v143 = +[ACAccountStore ams_sharedAccountStore];
      v138 = [v143 ams_activeiTunesAccount];

      if (v138)
      {
        v144 = +[NSDate date];
        v145 = +[AMSLogConfig sharedDataMigrationConfig];
        if (!v145)
        {
          v145 = +[AMSLogConfig sharedConfig];
        }

        v146 = [v145 OSLogObject];
        if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
        {
          v147 = objc_opt_class();
          v148 = AMSLogKey();
          v149 = NSStringFromSelector(a2);
          *buf = 138543874;
          v191 = v147;
          v192 = 2114;
          *v193 = v148;
          *&v193[8] = 2114;
          v194 = v149;
          _os_log_impl(&dword_0, v146, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ started.", buf, 0x20u);
        }

        v150 = +[AMSDeviceOfferRegistrationTask bagKeySet];
        v151 = +[AMSDeviceOfferRegistrationTask bagSubProfile];
        v152 = +[AMSDeviceOfferRegistrationTask bagSubProfileVersion];
        [AMSBagKeySet registerBagKeySet:v150 forProfile:v151 profileVersion:v152];

        v153 = +[AMSDeviceOfferRegistrationTask bagSubProfile];
        v154 = +[AMSDeviceOfferRegistrationTask bagSubProfileVersion];
        v155 = [AMSBag bagForProfile:v153 profileVersion:v154];

        v156 = [[AMSDeviceOfferRegistrationTask alloc] initWithAccount:v138 bag:v155];
        [v156 setLightweightCheckOnly:1];
        v157 = [v156 perform];
        v185[0] = _NSConcreteStackBlock;
        v185[1] = 3221225472;
        v185[2] = sub_2F7C;
        v185[3] = &unk_10380;
        v185[4] = self;
        v187 = a2;
        v139 = v144;
        v186 = v139;
        [v157 addFinishBlock:v185];
      }

      else
      {
        v139 = +[AMSLogConfig sharedDataMigrationConfig];
        if (!v139)
        {
          v139 = +[AMSLogConfig sharedConfig];
        }

        v155 = [v139 OSLogObject];
        if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
        {
          v158 = objc_opt_class();
          v159 = AMSLogKey();
          v160 = NSStringFromSelector(a2);
          *buf = 138543874;
          v191 = v158;
          v192 = 2114;
          *v193 = v159;
          *&v193[8] = 2114;
          v194 = v160;
          _os_log_impl(&dword_0, v155, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. No account is signed in during upgrade.", buf, 0x20u);
        }
      }
    }
  }

  if (+[ISFileProtectionClassMigrator isMigrationNeeded])
  {
    +[ISFileProtectionClassMigrator migrate];
  }

  return 1;
}

+ (id)_logConfig
{
  if (qword_14540 != -1)
  {
    sub_941C();
  }

  v3 = qword_14538;

  return v3;
}

- (void)_cleanupFollowUps
{
  v2 = [objc_opt_class() _logConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v27 = 138543362;
    v28 = objc_opt_class();
    v6 = v28;
    LODWORD(v21) = 12;
    v20 = &v27;
    v7 = _os_log_send_and_compose_impl();

    if (!v7)
    {
      goto LABEL_12;
    }

    v5 = [NSString stringWithCString:v7 encoding:4, &v27, v21];
    free(v7);
    v20 = v5;
    SSFileLog();
  }

LABEL_12:
  v8 = objc_alloc_init(AMSFollowUp);
  v9 = [v8 pendingFollowUps];
  v10 = [v9 resultWithError:0];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 identifier];
        v18 = [v17 hasSuffix:@"(null)"];

        if (v18)
        {
          v19 = [v8 clearFollowUpItem:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }
}

- (void)_cleanupAutomaticDownloadKindsOfActiveAccount:(id)a3
{
  v4 = a3;
  v5 = [(ISMMigrator *)self didMigrateBackupFromDifferentDevice];
  v6 = [objc_opt_class() _logConfig];
  v7 = v6;
  if (!v5)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v14 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v7 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      LODWORD(v48) = 138543362;
      *(&v48 + 4) = objc_opt_class();
      v17 = *(&v48 + 4);
      LODWORD(v47) = 12;
      v46 = &v48;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
        goto LABEL_25;
      }

      v16 = [NSString stringWithCString:v18 encoding:4, &v48, v47, v48];
      free(v18);
      v46 = v16;
      SSFileLog();
    }

LABEL_25:
    if (!v4)
    {
      v13 = +[SSLogConfig sharedAccountsMigrationConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v29 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v30 = v29 | 2;
      }

      else
      {
        v30 = v29;
      }

      v25 = [v13 OSLogObject];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v30 &= 2u;
      }

      if (v30)
      {
        v31 = objc_opt_class();
        LODWORD(v48) = 138543362;
        *(&v48 + 4) = v31;
        v32 = v31;
        LODWORD(v47) = 12;
        v33 = _os_log_send_and_compose_impl();

        if (!v33)
        {
          goto LABEL_72;
        }

        v25 = [NSString stringWithCString:v33 encoding:4, &v48, v47];
        free(v33);
        SSFileLog();
      }

      goto LABEL_71;
    }

    v19 = [v4 accountPropertyForKey:SSAccountPropertyAutomaticDownloadKinds];
    v20 = [v19 copy];
    objc_opt_class();
    v13 = SSSafeCast();

    v21 = [v13 containsObject:SSDownloadKindEBook];
    v22 = SSDownloadKindAudiobook;
    if (!v21 || ([v13 containsObject:SSDownloadKindAudiobook] & 1) != 0)
    {
      v23 = [v13 containsObject:{v22, v46}];
      v24 = [objc_opt_class() _logConfig];
      v25 = v24;
      if (v23)
      {
        if (!v24)
        {
          v25 = +[SSLogConfig sharedConfig];
        }

        v26 = [v25 shouldLog];
        if ([v25 shouldLogToDisk])
        {
          v27 = v26 | 2;
        }

        else
        {
          v27 = v26;
        }

        v28 = [v25 OSLogObject];
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v27 &= 2u;
        }

        if (!v27)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (!v24)
        {
          v25 = +[SSLogConfig sharedConfig];
        }

        v34 = [v25 shouldLog];
        if ([v25 shouldLogToDisk])
        {
          v35 = v34 | 2;
        }

        else
        {
          v35 = v34;
        }

        v28 = [v25 OSLogObject];
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v35 &= 2u;
        }

        if (!v35)
        {
          goto LABEL_70;
        }
      }

      v36 = objc_opt_class();
      LODWORD(v48) = 138543362;
      *(&v48 + 4) = v36;
      v37 = v36;
      LODWORD(v47) = 12;
      v38 = _os_log_send_and_compose_impl();

      if (v38)
      {
        v28 = [NSString stringWithCString:v38 encoding:4, &v48, v47];
        free(v38);
        SSFileLog();
LABEL_70:
      }

LABEL_71:

      goto LABEL_72;
    }

    v39 = [objc_opt_class() _logConfig];
    if (!v39)
    {
      v39 = +[SSLogConfig sharedConfig];
    }

    v40 = [v39 shouldLog];
    if ([v39 shouldLogToDisk])
    {
      v41 = v40 | 2;
    }

    else
    {
      v41 = v40;
    }

    v42 = [v39 OSLogObject];
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v41 &= 2u;
    }

    if (v41)
    {
      v43 = objc_opt_class();
      LODWORD(v48) = 138543362;
      *(&v48 + 4) = v43;
      v44 = v43;
      LODWORD(v47) = 12;
      v45 = _os_log_send_and_compose_impl();

      if (!v45)
      {
LABEL_69:

        v25 = [[NSSet alloc] initWithObjects:{v22, 0}];
        v28 = +[SSDevice currentDevice];
        [v28 unionAutomaticDownloadKinds:v25 withCompletionBlock:0];
        goto LABEL_70;
      }

      v42 = [NSString stringWithCString:v45 encoding:4, &v48, v47];
      free(v45);
      SSFileLog();
    }

    goto LABEL_69;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  LODWORD(v48) = 138543362;
  *(&v48 + 4) = objc_opt_class();
  v11 = *(&v48 + 4);
  LODWORD(v47) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [NSString stringWithCString:v12 encoding:4, &v48, v47, v48];
    free(v12);
    SSFileLog();
LABEL_12:
  }

  v13 = +[SSDevice currentDevice];
  [v13 setAutomaticDownloadKinds:0 withCompletionBlock:0];
LABEL_72:
}

- (void)_encryptAccountFlags
{
  v2 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 2;
  }

  if (v6)
  {
    v62 = 138543362;
    v63 = objc_opt_class();
    v7 = v63;
    LODWORD(v53) = 12;
    v51 = &v62;
    v8 = _os_log_send_and_compose_impl();

    if (!v8)
    {
      goto LABEL_13;
    }

    v5 = [NSString stringWithCString:v8 encoding:4, &v62, v53];
    free(v8);
    v51 = v5;
    SSFileLog();
  }

LABEL_13:
  v54 = +[ACAccountStore ams_sharedAccountStore];
  v9 = [v54 ams_iTunesAccounts];
  if ([v9 count])
  {
    v10 = [v9 ams_mapWithTransform:&stru_10400];
    v11 = [objc_opt_class() _logConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (!v13)
    {
      goto LABEL_24;
    }

    v15 = objc_opt_class();
    v62 = 138543618;
    v63 = v15;
    v64 = 2114;
    v65 = v10;
    v16 = v15;
    LODWORD(v53) = 22;
    v52 = &v62;
    v17 = _os_log_send_and_compose_impl();

    if (v17)
    {
      v14 = [NSString stringWithCString:v17 encoding:4, &v62, v53];
      free(v17);
      v52 = v14;
      SSFileLog();
LABEL_24:
    }
  }

  else
  {
    v10 = [objc_opt_class() _logConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v18 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v11 = [v10 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v20 = objc_opt_class();
      v62 = 138543362;
      v63 = v20;
      v21 = v20;
      LODWORD(v53) = 12;
      v52 = &v62;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
        goto LABEL_36;
      }

      v11 = [NSString stringWithCString:v22 encoding:4, &v62, v53];
      free(v22);
      v52 = v11;
      SSFileLog();
    }
  }

LABEL_36:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v9;
  v23 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v23)
  {
    v24 = v23;
    v56 = *v58;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v58 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v57 + 1) + 8 * i);
        if ([v26 ams_isLocalAccount])
        {
          v27 = [objc_opt_class() _logConfig];
          if (!v27)
          {
            v27 = +[SSLogConfig sharedConfig];
          }

          v28 = [v27 shouldLog];
          if ([v27 shouldLogToDisk])
          {
            v29 = v28 | 2;
          }

          else
          {
            v29 = v28;
          }

          v30 = [v27 OSLogObject];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v29;
          }

          else
          {
            v31 = v29 & 2;
          }

          if (!v31)
          {
            goto LABEL_76;
          }

          v32 = objc_opt_class();
          v33 = v32;
          v34 = AMSHashIfNeeded();
          v62 = 138543618;
          v63 = v32;
          v64 = 2114;
          v65 = v34;
          LODWORD(v53) = 22;
          v52 = &v62;
          v35 = _os_log_send_and_compose_impl();
        }

        else
        {
          v36 = [v26 ams_encryptAccountFlags];
          v37 = [objc_opt_class() _logConfig];
          v27 = v37;
          if (v36)
          {
            if (!v37)
            {
              v27 = +[SSLogConfig sharedConfig];
            }

            v38 = [v27 shouldLog];
            if ([v27 shouldLogToDisk])
            {
              v38 |= 2u;
            }

            v39 = [v27 OSLogObject];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = v38;
            }

            else
            {
              v40 = v38 & 2;
            }

            if (v40)
            {
              v41 = objc_opt_class();
              v42 = v41;
              v43 = AMSHashIfNeeded();
              v62 = 138543618;
              v63 = v41;
              v64 = 2114;
              v65 = v43;
              LODWORD(v53) = 22;
              v52 = &v62;
              v44 = _os_log_send_and_compose_impl();

              if (v44)
              {
                v39 = [NSString stringWithCString:v44 encoding:4, &v62, v53];
                free(v44);
                v52 = v39;
                SSFileLog();
                goto LABEL_63;
              }
            }

            else
            {
LABEL_63:
            }

            v27 = +[ACAccountStore ams_sharedAccountStore];
            v45 = [v27 ams_saveAccount:v26 verifyCredentials:0];
            goto LABEL_77;
          }

          if (!v37)
          {
            v27 = +[SSLogConfig sharedConfig];
          }

          v46 = [v27 shouldLog];
          if ([v27 shouldLogToDisk])
          {
            v46 |= 2u;
          }

          v30 = [v27 OSLogObject];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v46;
          }

          else
          {
            v47 = v46 & 2;
          }

          if (!v47)
          {
            goto LABEL_76;
          }

          v48 = objc_opt_class();
          v49 = v48;
          v50 = AMSHashIfNeeded();
          v62 = 138543618;
          v63 = v48;
          v64 = 2114;
          v65 = v50;
          LODWORD(v53) = 22;
          v52 = &v62;
          v35 = _os_log_send_and_compose_impl();
        }

        if (!v35)
        {
          goto LABEL_77;
        }

        v30 = [NSString stringWithCString:v35 encoding:4];
        free(v35);
        v52 = v30;
        SSFileLog();
LABEL_76:

LABEL_77:
      }

      v24 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v24);
  }
}

- (BOOL)_isMajorVersionUpdate
{
  v60 = 0;
  v2 = [NSRegularExpression regularExpressionWithPattern:@"\\d+" options:0 error:&v60];
  v3 = v60;
  if (v3)
  {
    v4 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v61 = 138543618;
      v62 = v8;
      v63 = 2114;
      v64 = v3;
      v9 = v8;
      LODWORD(v54) = 22;
      v51 = &v61;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [NSString stringWithCString:v10 encoding:4, &v61, v54];
      free(v10);
      v51 = v7;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 objectForKey:@"SSDeviceType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKey:@"buildVersion"];
    v14 = v13;
    if (v13)
    {
      v15 = [v2 matchesInString:v13 options:0 range:{0, objc_msgSend(v13, "length")}];
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
LABEL_19:
  if ([v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v16 range];
    v59 = [v14 substringWithRange:{v17, v18}];
  }

  else
  {
    v59 = 0;
  }

  v57 = v12;
  v19 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = v20 | 2;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 OSLogObject];
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v21 &= 2u;
  }

  v56 = v14;
  if (v21)
  {
    v23 = objc_opt_class();
    v61 = 138543874;
    v62 = v23;
    v63 = 2114;
    v64 = v14;
    v65 = 2114;
    v66 = v59;
    v24 = v23;
    LODWORD(v54) = 32;
    v52 = &v61;
    v25 = _os_log_send_and_compose_impl();

    if (!v25)
    {
      goto LABEL_33;
    }

    v22 = [NSString stringWithCString:v25 encoding:4, &v61, v54];
    free(v25);
    v52 = v22;
    SSFileLog();
  }

LABEL_33:
  v26 = MGCopyAnswer();
  v27 = v26;
  if (v26)
  {
    v28 = [v2 matchesInString:v26 options:0 range:{0, objc_msgSend(v26, "length")}];

    v15 = v28;
  }

  if ([v15 count])
  {
    v29 = [v15 objectAtIndexedSubscript:0];
    v30 = [v29 range];
    v58 = [v27 substringWithRange:{v30, v31}];
  }

  else
  {
    v58 = 0;
  }

  v32 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v32)
  {
    v32 = +[SSLogConfig sharedConfig];
  }

  v55 = v15;
  v33 = [v32 shouldLog];
  if ([v32 shouldLogToDisk])
  {
    v34 = v33 | 2;
  }

  else
  {
    v34 = v33;
  }

  v35 = [v32 OSLogObject];
  if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v34 &= 2u;
  }

  if (!v34)
  {
    goto LABEL_48;
  }

  v36 = objc_opt_class();
  v61 = 138543874;
  v62 = v36;
  v63 = 2114;
  v64 = v27;
  v65 = 2114;
  v66 = v58;
  v37 = v36;
  LODWORD(v54) = 32;
  v53 = &v61;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v35 = [NSString stringWithCString:v38 encoding:4, &v61, v54];
    free(v38);
    v53 = v35;
    SSFileLog();
LABEL_48:
  }

  v39 = 0;
  if (v59 && v58)
  {
    v39 = [v59 isEqualToString:v58] ^ 1;
  }

  v40 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v40)
  {
    v40 = +[SSLogConfig sharedConfig];
  }

  v41 = [v40 shouldLog];
  if ([v40 shouldLogToDisk])
  {
    v42 = v41 | 2;
  }

  else
  {
    v42 = v41;
  }

  v43 = [v40 OSLogObject];
  if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v42 &= 2u;
  }

  if (!v42)
  {
    goto LABEL_62;
  }

  v44 = objc_opt_class();
  v45 = v3;
  v46 = v2;
  v47 = v44;
  v48 = [NSNumber numberWithBool:v39];
  v61 = 138543618;
  v62 = v44;
  v63 = 2114;
  v64 = v48;
  LODWORD(v54) = 22;
  v49 = _os_log_send_and_compose_impl();

  v2 = v46;
  v3 = v45;

  if (v49)
  {
    v43 = [NSString stringWithCString:v49 encoding:4, &v61, v54];
    free(v49);
    SSFileLog();
LABEL_62:
  }

  return v39;
}

- (BOOL)_migrateAccountsToAccountsFramework
{
  v2 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = objc_opt_class();
  v6 = *(&v10 + 4);
  LODWORD(v9) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [NSString stringWithCString:v7 encoding:4, &v10, v9, v10];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  return +[SSAccountStore migrateToAccountsFramework];
}

- (void)_migrateAutomaticDownloadKindsDefaultToActiveAccount:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v9 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v17 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v11 = [v9 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v29 = 138543362;
      v30 = objc_opt_class();
      v19 = v30;
      LODWORD(v26) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_37;
      }

      v11 = [NSString stringWithCString:v20 encoding:4, &v29, v26];
      free(v20);
      SSFileLog();
    }

    goto LABEL_36;
  }

  v8 = kSSUserDefaultsIdentifier;
  v9 = CFPreferencesCopyAppValue(@"AutomaticDownloadKinds", kSSUserDefaultsIdentifier);
  v10 = +[SSLogConfig sharedAccountsMigrationConfig];
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v21 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v11 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v22 &= 2u;
    }

    if (!v22)
    {
      goto LABEL_35;
    }

    v29 = 138543362;
    v30 = objc_opt_class();
    v24 = v30;
    LODWORD(v26) = 12;
    v25 = _os_log_send_and_compose_impl();

    if (v25)
    {
      v23 = [NSString stringWithCString:v25 encoding:4, &v29, v26];
      free(v25);
      SSFileLog();
LABEL_35:
    }

LABEL_36:

    goto LABEL_37;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v29 = 138543362;
  v30 = objc_opt_class();
  v15 = v30;
  LODWORD(v26) = 12;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v14 = [NSString stringWithCString:v16 encoding:4, &v29, v26];
    free(v16);
    SSFileLog();
LABEL_13:
  }

  CFPreferencesSetAppValue(@"AutomaticDownloadKinds", 0, v8);
  CFPreferencesAppSynchronize(v8);
  [v6 setAutomaticDownloadKinds:v9];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_52F4;
  v27[3] = &unk_10428;
  v27[4] = self;
  v28 = v6;
  [v7 saveAccount:v28 verifyCredentials:0 completion:v27];

LABEL_37:
}

- (void)_migrateSandboxAccounts
{
  v2 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v3 |= 2u;
  }

  v4 = [v2 OSLogObject];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v3 &= 2u;
  }

  if (v3)
  {
    *location = 138543362;
    *&location[4] = objc_opt_class();
    v5 = *&location[4];
    LODWORD(v45) = 12;
    v44 = location;
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      v7 = [NSString stringWithCString:v6 encoding:4, location, v45];
      free(v6);
      v44 = v7;
      SSFileLog();
    }
  }

  else
  {
  }

  v50 = objc_alloc_init(ACAccountStore);
  v46 = [v50 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];
  v47 = [v50 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifieriTunesStoreSandbox];
  [v50 accountsWithAccountType:v46 options:1 error:0];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v8 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v8)
  {
    v9 = *v55;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"scope", v44}];
        v13 = [v12 unsignedIntegerValue];

        if (v13 == &dword_0 + 1)
        {
          v14 = +[SSLogConfig sharedAccountsMigrationConfig];
          if (!v14)
          {
            v14 = +[SSLogConfig sharedConfig];
          }

          v15 = [v14 shouldLog];
          if ([v14 shouldLogToDisk])
          {
            v15 |= 2u;
          }

          v16 = [v14 OSLogObject];
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v15 &= 2u;
          }

          if (v15)
          {
            v17 = objc_opt_class();
            v18 = v17;
            v19 = [v11 hashedDescription];
            *location = 138543618;
            *&location[4] = v17;
            v59 = 2114;
            v60 = v19;
            LODWORD(v45) = 22;
            v44 = location;
            v20 = _os_log_send_and_compose_impl();

            if (v20)
            {
              v16 = [NSString stringWithCString:v20 encoding:4, location, v45];
              free(v20);
              v44 = v16;
              SSFileLog();
              goto LABEL_26;
            }
          }

          else
          {
LABEL_26:
          }

          [v11 setAccountType:v47];
          v53 = 0;
          v21 = [v50 saveVerifiedAccount:v11 error:&v53];
          v22 = v53;
          v23 = v22;
          if (v21)
          {
            goto LABEL_53;
          }

          v24 = [v22 domain];
          if ([v24 isEqualToString:ACErrorDomain])
          {
            v25 = [v23 code] == &dword_4 + 1;

            if (v25)
            {
              v26 = +[SSLogConfig sharedAccountsMigrationConfig];
              if (!v26)
              {
                v26 = +[SSLogConfig sharedConfig];
              }

              v27 = [v26 shouldLog];
              if ([v26 shouldLogToDisk])
              {
                v27 |= 2u;
              }

              v28 = [v26 OSLogObject];
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v27 &= 2u;
              }

              if (v27)
              {
                v29 = objc_opt_class();
                *location = 138543362;
                *&location[4] = v29;
                v30 = v29;
                LODWORD(v45) = 12;
                v44 = location;
                v31 = _os_log_send_and_compose_impl();

                if (v31)
                {
                  v28 = [NSString stringWithCString:v31 encoding:4, location, v45];
                  free(v31);
                  v44 = v28;
                  SSFileLog();
                  goto LABEL_39;
                }
              }

              else
              {
LABEL_39:
              }

              objc_initWeak(location, self);
              v51[0] = _NSConcreteStackBlock;
              v51[1] = 3221225472;
              v51[2] = sub_5E50;
              v51[3] = &unk_10450;
              objc_copyWeak(&v52, location);
              [v50 removeAccount:v11 withCompletionHandler:v51];
              objc_destroyWeak(&v52);
              objc_destroyWeak(location);
LABEL_53:

              continue;
            }
          }

          else
          {
          }

          v32 = +[SSLogConfig sharedAccountsMigrationConfig];
          if (!v32)
          {
            v32 = +[SSLogConfig sharedConfig];
          }

          v33 = [v32 shouldLog];
          if ([v32 shouldLogToDisk])
          {
            v33 |= 2u;
          }

          v34 = [v32 OSLogObject];
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v33 &= 2u;
          }

          if (v33)
          {
            v35 = objc_opt_class();
            *location = 138543618;
            *&location[4] = v35;
            v59 = 2114;
            v60 = v23;
            v36 = v35;
            LODWORD(v45) = 22;
            v44 = location;
            v37 = _os_log_send_and_compose_impl();

            if (v37)
            {
              v34 = [NSString stringWithCString:v37 encoding:4, location, v45];
              free(v37);
              v44 = v34;
              SSFileLog();
              goto LABEL_51;
            }
          }

          else
          {
LABEL_51:
          }

          goto LABEL_53;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v8);
  }

  v38 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v38)
  {
    v38 = +[SSLogConfig sharedConfig];
  }

  v39 = [v38 shouldLog];
  if ([v38 shouldLogToDisk])
  {
    v39 |= 2u;
  }

  v40 = [v38 OSLogObject];
  if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v39 &= 2u;
  }

  if (!v39)
  {
    goto LABEL_65;
  }

  v41 = objc_opt_class();
  *location = 138543362;
  *&location[4] = v41;
  v42 = v41;
  LODWORD(v45) = 12;
  v43 = _os_log_send_and_compose_impl();

  if (v43)
  {
    v40 = [NSString stringWithCString:v43 encoding:4, location, v45];
    free(v43);
    SSFileLog();
LABEL_65:
  }
}

- (void)_migrateServerPromptDefaultsToActiveAccount:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v40 = self;
    v8 = SSServerPromptIdentifierAutomaticDownloadsAvailable;
    v9 = [NSString stringWithFormat:@"ServerPrompt-%@", SSServerPromptIdentifierAutomaticDownloadsAvailable];
    keyExistsAndHasValidFormat = 0;
    v10 = kSSUserDefaultsIdentifier;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v9, kSSUserDefaultsIdentifier, &keyExistsAndHasValidFormat);
    v12 = keyExistsAndHasValidFormat;
    if (!keyExistsAndHasValidFormat)
    {
      goto LABEL_16;
    }

    v13 = AppBooleanValue;
    v39 = v7;
    v14 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v43 = 138543618;
      v44 = v19;
      v45 = 2112;
      v46 = v9;
      v20 = v19;
      LODWORD(v38) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_15:

        [v6 setDisplayedServerPrompt:v13 != 0 withIdentifier:v8];
        CFPreferencesSetAppValue(v9, 0, v10);
        v7 = v39;
LABEL_16:
        v22 = [NSString stringWithFormat:@"ServerPromptDate-%@", v8];

        v23 = CFPreferencesCopyAppValue(v22, v10);
        if (!v23)
        {
          if (!v12)
          {
LABEL_43:

            goto LABEL_44;
          }

LABEL_42:
          CFPreferencesAppSynchronize(v10);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_6564;
          v41[3] = &unk_10358;
          v41[4] = v40;
          [v7 saveAccount:v6 verifyCredentials:0 completion:v41];
          goto LABEL_43;
        }

        v24 = v7;
        v25 = +[SSLogConfig sharedAccountsMigrationConfig];
        if (!v25)
        {
          v25 = +[SSLogConfig sharedConfig];
        }

        v26 = [v25 shouldLog];
        if ([v25 shouldLogToDisk])
        {
          v26 |= 2u;
        }

        v27 = [v25 OSLogObject];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v26;
        }

        else
        {
          v28 = v26 & 2;
        }

        if (v28)
        {
          v29 = objc_opt_class();
          v43 = 138543618;
          v44 = v29;
          v45 = 2112;
          v46 = v22;
          v30 = v29;
          LODWORD(v38) = 22;
          v31 = _os_log_send_and_compose_impl();

          if (!v31)
          {
LABEL_28:

            [v6 setLastAttemptDate:v23 forServerPromptWithIdentifier:v8];
            CFPreferencesSetAppValue(v22, 0, v10);
            v7 = v24;
            goto LABEL_42;
          }

          v27 = [NSString stringWithCString:v31 encoding:4, &v43, v38];
          free(v31);
          SSFileLog();
        }

        goto LABEL_28;
      }

      v17 = [NSString stringWithCString:v21 encoding:4, &v43, v38];
      free(v21);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v22 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v22)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  v32 = [(__CFString *)v22 shouldLog];
  if ([(__CFString *)v22 shouldLogToDisk])
  {
    v33 = v32 | 2;
  }

  else
  {
    v33 = v32;
  }

  v34 = [(__CFString *)v22 OSLogObject];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = v33;
  }

  else
  {
    v35 = v33 & 2;
  }

  if (!v35)
  {
    goto LABEL_40;
  }

  v43 = 138543362;
  v44 = objc_opt_class();
  v36 = v44;
  LODWORD(v38) = 12;
  v37 = _os_log_send_and_compose_impl();

  if (v37)
  {
    v34 = [NSString stringWithCString:v37 encoding:4, &v43, v38];
    free(v37);
    SSFileLog();
LABEL_40:
  }

LABEL_44:
}

- (void)_postPushToken
{
  v2 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = objc_opt_class();
  v6 = *(&v10 + 4);
  LODWORD(v9) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [NSString stringWithCString:v7 encoding:4, &v10, v9, v10];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  v8 = objc_alloc_init(SSPushNotificationTokenRequest);
  [v8 startWithCompletion:0];
}

- (void)_removePasswordEquivalentTokensFromAccounts
{
  v3 = +[SSAccountStore defaultStore];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 accounts];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 passwordEquivalentToken];

        if (v10)
        {
          [v9 setPasswordEquivalentToken:0];
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_6B04;
          v11[3] = &unk_10428;
          v11[4] = self;
          v11[5] = v9;
          [v3 saveAccount:v9 verifyCredentials:0 completion:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

+ (void)_cleanupBrokenAccounts:(BOOL)a3 emptyAccounts:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  +[SSAccountStore defaultStore];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = v50 = 0u;
  v6 = [v40 accounts];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    v41 = v5;
    v42 = v4;
    v43 = v6;
    v44 = *v48;
    do
    {
      v10 = 0;
      v45 = v8;
      do
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * v10);
        if (([v11 isLocalAccount] & 1) == 0)
        {
          v12 = [v11 backingAccount];
          v13 = [v11 uniqueIdentifier];
          if (v13)
          {
            v14 = [v11 uniqueIdentifier];
            v15 = [v14 isEqualToNumber:&off_10AD8];
          }

          else
          {
            v15 = 1;
          }

          v16 = [v12 accountProperties];
          v17 = [v16 count];

          if (v17)
          {
            v18 = [v12 accountProperties];
            if ([v18 count] == &dword_0 + 1)
            {
              v19 = [v12 accountProperties];
              v20 = [v19 objectForKeyedSubscript:@"originalUsername"];
              v21 = v20 != 0;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 1;
          }

          if ((v15 & v5 & 1) != 0 || v21 && v4)
          {
            v22 = +[SSAccountStore defaultStore];
            v46 = 0;
            v23 = [v22 removeAccount:v11 error:&v46];
            v24 = v46;

            v25 = +[SSLogConfig sharedAccountsMigrationConfig];
            v26 = v25;
            if (v23)
            {
              if (!v25)
              {
                v26 = +[SSLogConfig sharedConfig];
              }

              v27 = [v26 shouldLog];
              if ([v26 shouldLogToDisk])
              {
                v28 = v27 | 2;
              }

              else
              {
                v28 = v27;
              }

              v29 = [v26 OSLogObject];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = v28;
              }

              else
              {
                v30 = v28 & 2;
              }

              if (v30)
              {
                v31 = objc_opt_class();
                v32 = v31;
                v33 = [v11 hashedDescription];
                v51 = 138543618;
                v52 = v31;
                v53 = 2114;
                v54 = v33;
                LODWORD(v39) = 22;
                v38 = &v51;
                goto LABEL_38;
              }

LABEL_40:
              v6 = v43;
LABEL_41:
            }

            else
            {
              if (!v25)
              {
                v26 = +[SSLogConfig sharedConfig];
              }

              v34 = [v26 shouldLog];
              if ([v26 shouldLogToDisk])
              {
                v34 |= 2u;
              }

              v29 = [v26 OSLogObject];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v35 = v34;
              }

              else
              {
                v35 = v34 & 2;
              }

              if (!v35)
              {
                goto LABEL_40;
              }

              v36 = objc_opt_class();
              v32 = v36;
              v33 = [v11 hashedDescription];
              v51 = 138543874;
              v52 = v36;
              v53 = 2114;
              v54 = v33;
              v55 = 2114;
              v56 = v24;
              LODWORD(v39) = 32;
              v38 = &v51;
LABEL_38:
              v37 = _os_log_send_and_compose_impl();

              if (v37)
              {
                v5 = v41;
                v4 = v42;
                v6 = v43;
                v29 = [NSString stringWithCString:v37 encoding:4];
                free(v37);
                v38 = v29;
                SSFileLog();
                goto LABEL_41;
              }

              v5 = v41;
              v4 = v42;
              v6 = v43;
            }
          }

          v9 = v44;
          v8 = v45;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v8);
  }
}

+ (void)_cleanupDuplicateAccounts
{
  v2 = +[SSAccountStore defaultStore];
  v24 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = v2;
  obj = [v2 accounts];
  v3 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v34;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v8 = v24;
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v29 + 1) + 8 * v12);
            v14 = [v13 firstObject];
            if ([v7 isDuplicate:v14])
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v15 = v13;

          if (v15)
          {
            goto LABEL_17;
          }
        }

        else
        {
LABEL_14:
        }

        v15 = objc_alloc_init(NSMutableArray);
        [v8 addObject:v15];
LABEL_17:
        [v15 addObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v4);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v24;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [a1 _mergeDuplicateAccounts:*(*(&v25 + 1) + 8 * j) inStore:v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v18);
  }
}

+ (void)_cleanupMultipleActiveAccountsWithPreferredActiveAccount:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [v4 hashedDescription];
    v52 = 138543618;
    v53 = v10;
    v54 = 2114;
    v55 = v12;
    LODWORD(v42) = 22;
    v41 = &v52;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_13;
    }

    v8 = [NSString stringWithCString:v13 encoding:4, &v52, v42];
    free(v13);
    v41 = v8;
    SSFileLog();
  }

LABEL_13:
  v14 = +[SSAccountStore defaultStore];
  v15 = [v14 accounts];
  v16 = v15;
  v17 = objc_msgSend_hashedDescription;
  if (!v4)
  {
    v18 = [v15 _ss_arrayByRemovingObjectsPassingTest:&stru_10490];

    if (![v18 count])
    {
      goto LABEL_30;
    }

    v19 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
      v24 = objc_opt_class();
      v52 = 138543362;
      v53 = v24;
      v25 = v24;
      LODWORD(v42) = 12;
      v41 = &v52;
      v26 = _os_log_send_and_compose_impl();

      v17 = objc_msgSend_hashedDescription;
      if (!v26)
      {
        goto LABEL_29;
      }

      v22 = [NSString stringWithCString:v26 encoding:4, &v52, v42];
      free(v26);
      v41 = v22;
      SSFileLog();
    }

    else
    {
      v17 = objc_msgSend_hashedDescription;
    }

    goto LABEL_29;
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_7A34;
  v49[3] = &unk_104B8;
  v50 = v4;
  v18 = [v16 _ss_arrayByRemovingObjectsPassingTest:v49];

  v19 = v50;
LABEL_29:

LABEL_30:
  if (![v18 count])
  {
    v27 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v34 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v35 = v34 | 2;
    }

    else
    {
      v35 = v34;
    }

    v36 = [v27 OSLogObject];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 2;
    }

    if (v37)
    {
      v38 = objc_opt_class();
      v52 = 138543362;
      v53 = v38;
      v39 = v38;
      LODWORD(v42) = 12;
      v40 = _os_log_send_and_compose_impl();

      if (!v40)
      {
        goto LABEL_51;
      }

      v36 = [NSString stringWithCString:v40 encoding:4, &v52, v42];
      free(v40);
      SSFileLog();
    }

    goto LABEL_51;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = v18;
  v28 = [v27 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v43 = v18;
    v30 = *v46;
    v31 = *(v17 + 327);
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v45 + 1) + 8 * i);
        [v33 setActive:0];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = v31;
        v44[2] = sub_7ADC;
        v44[3] = &unk_104E0;
        v44[4] = v33;
        v44[5] = a1;
        [v14 saveAccount:v33 verifyCredentials:0 completion:v44];
      }

      v29 = [v27 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v29);
    v18 = v43;
  }

LABEL_51:
}

+ (BOOL)_copyAccountPropertiesIfNeededFromAccount:(id)a3 toAccount:(id)a4
{
  v5 = a3;
  v6 = [a4 backingAccount];
  v32 = v5;
  [v5 backingAccount];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = v41 = 0u;
  v7 = [v37 accountProperties];
  v8 = [v7 allKeys];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v9)
  {
    v33 = 0;
    goto LABEL_30;
  }

  v10 = v9;
  v33 = 0;
  v36 = *v39;
  v11 = SSAccountPropertyAltDSIDKey;
  v35 = SSAccountPropertyDSIDKey;
  do
  {
    v12 = 0;
    do
    {
      if (*v39 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v38 + 1) + 8 * v12);
      v14 = [v37 objectForKeyedSubscript:v13];
      v15 = [v6 objectForKeyedSubscript:v13];
      if ([v13 isEqualToString:v11] && ((objc_msgSend(v14, "isEqual:", &stru_10A60) & 1) != 0 || objc_msgSend(v15, "isEqual:", &stru_10A60)))
      {
        v16 = [v14 isEqual:&stru_10A60];
        v17 = v14;
        if (!v16)
        {
          goto LABEL_17;
        }

        v18 = [v15 isEqual:&stru_10A60];
      }

      else
      {
        if (![v13 isEqualToString:v35] || (objc_msgSend(v14, "isEqual:", &off_10AD8) & 1) == 0 && !objc_msgSend(v15, "isEqual:", &off_10AD8))
        {
          goto LABEL_18;
        }

        v19 = [v14 isEqualToNumber:&off_10AD8];
        v17 = v14;
        if (!v19)
        {
          goto LABEL_17;
        }

        v18 = [v15 isEqualToNumber:&off_10AD8];
      }

      v17 = v15;
      if ((v18 & 1) == 0)
      {
LABEL_17:
        v20 = v17;
        if (v20)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      v21 = v15;
      if (v14 && (v21 = v14, v15) && (v22 = [v14 isEqual:v15], v21 = v15, !v22))
      {
        v20 = 0;
      }

      else
      {
        v20 = v21;
      }

LABEL_22:
      v23 = [v6 objectForKeyedSubscript:v13];
      v24 = [v23 isEqual:v20];

      if ((v24 & 1) == 0)
      {
        [v6 setObject:v20 forKeyedSubscript:v13];
        v33 = 1;
      }

      v12 = v12 + 1;
    }

    while (v10 != v12);
    v25 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    v10 = v25;
  }

  while (v25);
LABEL_30:

  v26 = [v37 objectForKeyedSubscript:@"originalUsername"];
  if ([v26 length])
  {
    v27 = [v6 username];
    v28 = [v27 isEqualToString:v26];

    v29 = v33;
    if (v28)
    {
      v30 = [v37 username];
      [v6 setUsername:v30];

      v29 = 1;
    }
  }

  else
  {
    v29 = v33;
  }

  return v29 & 1;
}

+ (id)_firstActiveAccountInAccounts:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&stru_10520];
  v4 = [v3 _ss_firstObjectPassingTest:&stru_10540];

  return v4;
}

+ (void)_mergeDuplicateAccounts:(id)a3 inStore:(id)a4
{
  v6 = a3;
  v38 = a4;
  if ([v6 count] < 2)
  {
    goto LABEL_42;
  }

  v7 = [v6 sortedArrayUsingComparator:&stru_10560];

  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 allObjects];

  v10 = [v9 _ss_firstObjectPassingTest:&stru_10580];
  if (!v10)
  {
    v10 = [v9 firstObject];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v9;
  v11 = [v6 countByEnumeratingWithState:&v47 objects:v59 count:16];
  v12 = v6;
  v40 = v11;
  if (!v11)
  {
LABEL_40:

    goto LABEL_41;
  }

  v13 = 0;
  v39 = *v48;
  v36 = v6;
  v37 = a1;
  v35 = v10;
  do
  {
    v14 = 0;
    do
    {
      if (*v48 != v39)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v47 + 1) + 8 * v14);
      if (v15 != v10)
      {
        v41 = [a1 _copyAccountPropertiesIfNeededFromAccount:*(*(&v47 + 1) + 8 * v14) toAccount:v10];
        v46 = 0;
        v16 = [v38 removeAccount:v15 error:&v46];
        v17 = v46;
        v18 = +[SSLogConfig sharedAccountsMigrationConfig];
        v19 = v18;
        v42 = v13;
        if (v16)
        {
          if (!v18)
          {
            v19 = +[SSLogConfig sharedConfig];
          }

          v20 = [v19 shouldLog];
          if ([v19 shouldLogToDisk])
          {
            v21 = v20 | 2;
          }

          else
          {
            v21 = v20;
          }

          v22 = [v19 OSLogObject];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v21;
          }

          else
          {
            v23 = v21 & 2;
          }

          if (v23)
          {
            v24 = objc_opt_class();
            v25 = v24;
            v26 = [v10 hashedDescription];
            v27 = [v15 hashedDescription];
            v51 = 138543874;
            v52 = v24;
            v53 = 2114;
            v54 = v26;
            v55 = 2114;
            v56 = v27;
            LODWORD(v34) = 32;
            v33 = &v51;
            goto LABEL_30;
          }

LABEL_32:
          v32 = v42;
LABEL_33:
        }

        else
        {
          if (!v18)
          {
            v19 = +[SSLogConfig sharedConfig];
          }

          v28 = [v19 shouldLog];
          if ([v19 shouldLogToDisk])
          {
            v28 |= 2u;
          }

          v22 = [v19 OSLogObject];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 2;
          }

          if (!v29)
          {
            goto LABEL_32;
          }

          v30 = objc_opt_class();
          v25 = v30;
          v26 = [v10 hashedDescription];
          v27 = [v15 hashedDescription];
          v51 = 138544130;
          v52 = v30;
          v53 = 2114;
          v54 = v26;
          v55 = 2114;
          v56 = v27;
          v57 = 2112;
          v58 = v17;
          LODWORD(v34) = 42;
          v33 = &v51;
LABEL_30:
          v31 = _os_log_send_and_compose_impl();

          if (v31)
          {
            v6 = v36;
            v32 = v42;
            v22 = [NSString stringWithCString:v31 encoding:4];
            free(v31);
            v33 = v22;
            SSFileLog();
            a1 = v37;
            v10 = v35;
            goto LABEL_33;
          }

          v6 = v36;
          a1 = v37;
          v10 = v35;
          v32 = v42;
        }

        v13 = v32 | v41;
      }

      v14 = v14 + 1;
    }

    while (v40 != v14);
    v40 = [v6 countByEnumeratingWithState:&v47 objects:v59 count:16];
  }

  while (v40);

  if (v13)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_87D8;
    v43[3] = &unk_104E0;
    v45 = a1;
    v44 = v10;
    [v38 saveAccount:v44 verifyCredentials:0 completion:v43];
    v12 = v44;
    goto LABEL_40;
  }

LABEL_41:

LABEL_42:
}

+ (void)_repairAccounts
{
  v3 = +[SSAccountStore defaultStore];
  v4 = [v3 accounts];
  v5 = [v4 _ss_map:&stru_105C0];

  v6 = +[SSLogConfig sharedAccountsMigrationConfigOversize];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v15 = 138543618;
  *&v15[4] = objc_opt_class();
  *&v15[12] = 2114;
  *&v15[14] = v5;
  v10 = *&v15[4];
  LODWORD(v14) = 22;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, v15, v14, *v15, *&v15[16]];
    free(v11);
    SSFileLog();
LABEL_11:
  }

  [a1 _cleanupDuplicateAccounts];
  v12 = [v3 accounts];
  v13 = [a1 _firstActiveAccountInAccounts:v12];

  [a1 _repairBrokenAccounts];
  [a1 _cleanupBrokenAccounts:1 emptyAccounts:1];
  [a1 _cleanupMultipleActiveAccountsWithPreferredActiveAccount:v13];
  [a1 _repairAccountsWithStringDSID];
}

+ (void)_repairAccountsWithStringDSID
{
  +[SSAccountStore defaultStore];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v30 = v40 = 0u;
  obj = [v30 accounts];
  v2 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v38;
    v5 = SSAccountPropertyDSIDKey;
    v29 = v36;
    v31 = SSAccountPropertyDSIDKey;
    v32 = *v38;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v8 = [v7 accountPropertyForKey:{v5, v27, v28, v29}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = +[SSLogConfig sharedAccountsMigrationConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          v10 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v11 = v10 | 2;
          }

          else
          {
            v11 = v10;
          }

          v12 = [v9 OSLogObject];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v11;
          }

          else
          {
            v13 = v11 & 2;
          }

          if (v13)
          {
            v14 = objc_opt_class();
            v15 = v14;
            v16 = [v7 hashedDescription];
            v41 = 138543618;
            v42 = v14;
            v4 = v32;
            v43 = 2114;
            v44 = v16;
            LODWORD(v28) = 22;
            v27 = &v41;
            v17 = _os_log_send_and_compose_impl();

            v5 = v31;
            if (v17)
            {
              v12 = [NSString stringWithCString:v17 encoding:4, &v41, v28];
              free(v17);
              v27 = v12;
              SSFileLog();
              goto LABEL_18;
            }
          }

          else
          {
LABEL_18:
          }

          v18 = SSAccountGetUniqueIdentifierFromValue();
          if (v18)
          {
            [v7 setUniqueIdentifier:v18];
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v36[0] = sub_9150;
            v36[1] = &unk_105E0;
            v36[2] = a1;
            [v30 saveAccount:v7 verifyCredentials:0 completion:v35];
LABEL_33:

            goto LABEL_34;
          }

          v19 = +[SSLogConfig sharedAccountsMigrationConfig];
          if (!v19)
          {
            v19 = +[SSLogConfig sharedConfig];
          }

          v20 = [v19 shouldLog];
          if ([v19 shouldLogToDisk])
          {
            v20 |= 2u;
          }

          v21 = [v19 OSLogObject];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = v20;
          }

          else
          {
            v22 = v20 & 2;
          }

          if (v22)
          {
            v23 = objc_opt_class();
            v24 = v23;
            v25 = SSHashIfNeeded();
            v41 = 138543618;
            v42 = v23;
            v43 = 2114;
            v44 = v25;
            LODWORD(v28) = 22;
            v27 = &v41;
            v26 = _os_log_send_and_compose_impl();

            v5 = v31;
            v4 = v32;

            if (v26)
            {
              v21 = [NSString stringWithCString:v26 encoding:4, &v41, v28];
              free(v26);
              v27 = v21;
              SSFileLog();
              goto LABEL_31;
            }
          }

          else
          {
LABEL_31:
          }

          goto LABEL_33;
        }

LABEL_34:
      }

      v3 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v3);
  }
}

+ (void)_repairBrokenAccounts
{
  v2 = +[SSAccountStore defaultStore];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 accounts];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 isLocalAccount] & 1) == 0 && objc_msgSend(v8, "hasBrokenDSID"))
        {
          [v2 repairAccountWithBrokenDSID:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end