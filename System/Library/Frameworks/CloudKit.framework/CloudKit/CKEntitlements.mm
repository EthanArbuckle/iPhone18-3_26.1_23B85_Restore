@interface CKEntitlements
- (BOOL)hasInProcessOneTimeLinksEntitlement;
- (BOOL)hasInProcessShareAccessRequestsEntitlement;
- (BOOL)hasInProcessShareOwnerParticipantInfoEntitlement;
- (BOOL)hasSPIEntitlement;
- (BOOL)hasSystemLaunchDaemonEntitlement;
- (BOOL)isBackgroundAssetsExtension;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateEntitlementsWithSDKVersion:(unsigned int)a3 error:(id *)a4;
- (CKEntitlements)initWithCurrentProcess;
- (CKEntitlements)initWithEntitlementsDict:(id)a3;
- (CKEntitlements)initWithSqliteRepresentation:(id)a3;
- (NSArray)extendedShareAccessEntitlement;
- (NSString)applicationBundleID;
- (NSString)apsEnvironmentEntitlement;
- (NSString)associatedApplicationBundleID;
- (NSString)description;
- (NSString)systemLaunchDaemonEntitlement;
- (id)entitlementsByAddingOverlay:(id)a3;
- (id)sqliteRepresentation;
- (id)valueForEntitlement:(id)a3;
- (int64_t)containerEnvironment;
- (unint64_t)hash;
- (void)ck_bindInStatement:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation CKEntitlements

- (CKEntitlements)initWithCurrentProcess
{
  v16 = *MEMORY[0x1E69E9840];
  *task_info_out = 0u;
  v13 = 0u;
  task_info_outCnt = 8;
  v3 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  if (v3)
  {
    v4 = v3;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_1883EA000, v5, OS_LOG_TYPE_ERROR, "Unable to get a self audit token: %d", buf, 8u);
    }

    v6 = 0;
  }

  else
  {
    v7 = getpid();
    *buf = *task_info_out;
    v15 = v13;
    self = objc_msgSend_initWithAuditToken_pid_(self, v8, buf, v7);
    v6 = self;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)containerEnvironment
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.developer.icloud-container-environment");
  v4 = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v5 = 1;
  if (objc_msgSend_compare_options_(v2, v3, @"production", 1))
  {
    objc_msgSend_compare_options_(v4, v6, @"development", 1);
LABEL_4:
    v5 = 2;
  }

  return v5;
}

- (NSString)associatedApplicationBundleID
{
  v3 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.developer.associated-application-identifier");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_firstObject(v3, v4, v5);

    v3 = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      procName = self->_procName;
    }

    else
    {
      procName = 0;
    }

    v8 = CKAppIdentifierFromTeamAppTuple(v3, procName);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)applicationBundleID
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    cachedApplicationBundleID = v2->_cachedApplicationBundleID;
    if (cachedApplicationBundleID)
    {
      v5 = cachedApplicationBundleID;
      goto LABEL_22;
    }
  }

  v6 = sub_1883F4174(v2, v3);
  if (v6)
  {
    if (v2)
    {
      procName = v2->_procName;
    }

    else
    {
      procName = 0;
    }

    v8 = procName;
    v9 = CKAppIdentifierFromTeamAppTuple(v6, v8);
    if (v2)
    {
      objc_storeStrong(&v2->_cachedApplicationBundleID, v9);
    }

    goto LABEL_17;
  }

  if (v2)
  {
    pid = v2->_pid;
  }

  else
  {
    pid = 0;
  }

  buffer[0] = 0;
  if (!proc_pidinfo(pid, 11, 1uLL, buffer, 1024) && buffer[0])
  {
    if (v2)
    {
      v11 = v2->_procName;
    }

    else
    {
      v11 = 0;
    }

    v8 = v11;
    CKWarnForInvalidApplicationIdentifier(0, v8);
LABEL_17:
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1884213EC;
  v15[3] = &unk_1E70BC388;
  v15[4] = v2;
  if (qword_1ED4B6010 != -1)
  {
    dispatch_once(&qword_1ED4B6010, v15);
    if (v2)
    {
      goto LABEL_20;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_21;
  }

  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_20:
  v12 = v2->_cachedApplicationBundleID;
LABEL_21:
  v5 = v12;

LABEL_22:
  objc_sync_exit(v2);

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isBackgroundAssetsExtension
{
  if (byte_1EA90C538 == 1 && (byte_1EA919CC8 & 1) == 0)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CKEntitlements.m", 472, @"This value should only be read in the daemon");
  }

  return sub_1886AF3A4(self, @"com.apple.private.cloudkit.isBackgroundAssetsExtension");
}

- (NSString)apsEnvironmentEntitlement
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"aps-environment");
  v5 = objc_msgSend_lowercaseString(v2, v3, v4);

  return v5;
}

- (BOOL)hasSystemLaunchDaemonEntitlement
{
  if (sub_1886AF3A4(self, @"com.apple.private.cloudkit.systemLaunchDaemonAccess"))
  {
    return 1;
  }

  v6 = objc_msgSend_systemLaunchDaemonEntitlement(self, v3, v4);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"dynamic");

  return isEqualToString;
}

- (NSArray)extendedShareAccessEntitlement
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.developer.icloud-extended-share-access");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (CKEntitlements)initWithEntitlementsDict:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKEntitlements;
  v7 = [(CKEntitlements *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_CKDeepCopy(v4, v5, v6);
    entitlementsDict = v7->_entitlementsDict;
    v7->_entitlementsDict = v8;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p>: entitlements = %@, error = %@", v5, self, self->_entitlementsDict, self->_secEntitlementsError);

  return v7;
}

- (id)entitlementsByAddingOverlay:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
    v10 = objc_msgSend_mutableCopy(Property, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_mutableCopy(0, v4, v5);
  }

  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v6;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v39, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKeyedSubscript_(v14, v17, v21, v35);
        v25 = objc_msgSend_null(MEMORY[0x1E695DFB0], v23, v24);

        if (v22 == v25)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v13, v26, 0, v21);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v13, v26, v22, v21);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v35, v39, 16);
    }

    while (v18);
  }

  v27 = objc_alloc(objc_opt_class());
  v29 = objc_msgSend_initWithEntitlementsDict_(v27, v28, v13);
  v30 = v29;
  if (self)
  {
    pid = self->_pid;
    if (!v29)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  pid = 0;
  if (v29)
  {
LABEL_18:
    *(v29 + 8) = pid;
  }

LABEL_19:
  if (self)
  {
    sub_1886AF328(v29, self->_procName);
    secEntitlementsError = self->_secEntitlementsError;
    if (!v30)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  sub_1886AF328(v29, 0);
  secEntitlementsError = 0;
  if (v30)
  {
LABEL_21:
    objc_storeStrong(v30 + 4, secEntitlementsError);
  }

LABEL_22:

  v33 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)valueForEntitlement:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
    objc_msgSend_objectForKeyedSubscript_(Property, v7, v5);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(0, v4, v5);
  }
  v8 = ;

  return v8;
}

- (NSString)systemLaunchDaemonEntitlement
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.private.cloudkit.systemLaunchDaemonAccess");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasInProcessShareOwnerParticipantInfoEntitlement
{
  v3 = objc_msgSend_extendedShareAccessEntitlement(self, a2, v2);
  v5 = objc_msgSend_containsObject_(v3, v4, @"InProcessShareOwnerParticipantInfo");

  return v5;
}

- (BOOL)hasInProcessOneTimeLinksEntitlement
{
  v3 = objc_msgSend_extendedShareAccessEntitlement(self, a2, v2);
  v5 = objc_msgSend_containsObject_(v3, v4, @"InProcessOneTimeLinks");

  return v5;
}

- (BOOL)hasInProcessShareAccessRequestsEntitlement
{
  v3 = objc_msgSend_extendedShareAccessEntitlement(self, a2, v2);
  v5 = objc_msgSend_containsObject_(v3, v4, @"InProcessShareAccessRequests");

  return v5;
}

- (BOOL)hasSPIEntitlement
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.private.cloudkit.spi");
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)hash
{
  v3 = sub_1883F4174(self, a2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  v9 = objc_msgSend_applicationBundleID(self, v7, v8);
  v12 = objc_msgSend_hash(v9, v10, v11);

  return v12 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v7 = sub_1883F4174(v5, v6);
      v9 = sub_1883F4174(self, v8);
      v11 = v9;
      if (v7 == v9)
      {
      }

      else
      {
        v12 = sub_1883F4174(v5, v10);
        v14 = sub_1883F4174(self, v13);
        isEqual = objc_msgSend_isEqual_(v12, v15, v14);

        if (!isEqual)
        {
          goto LABEL_79;
        }
      }

      v20 = objc_msgSend_applicationBundleID(v5, v17, v18);
      v23 = objc_msgSend_applicationBundleID(self, v21, v22);
      v26 = v23;
      if (v20 == v23)
      {
      }

      else
      {
        v27 = objc_msgSend_applicationBundleID(v5, v24, v25);
        v30 = objc_msgSend_applicationBundleID(self, v28, v29);
        v32 = objc_msgSend_isEqual_(v27, v31, v30);

        if (!v32)
        {
          goto LABEL_79;
        }
      }

      v35 = objc_msgSend_associatedApplicationBundleID(v5, v33, v34);
      v38 = objc_msgSend_associatedApplicationBundleID(self, v36, v37);
      v41 = v38;
      if (v35 == v38)
      {
      }

      else
      {
        v42 = objc_msgSend_associatedApplicationBundleID(v5, v39, v40);
        v45 = objc_msgSend_associatedApplicationBundleID(self, v43, v44);
        v47 = objc_msgSend_isEqual_(v42, v46, v45);

        if (!v47)
        {
          goto LABEL_79;
        }
      }

      v50 = objc_msgSend_apsEnvironmentEntitlement(v5, v48, v49);
      v53 = objc_msgSend_apsEnvironmentEntitlement(self, v51, v52);
      v56 = v53;
      if (v50 == v53)
      {
      }

      else
      {
        v57 = objc_msgSend_apsEnvironmentEntitlement(v5, v54, v55);
        v60 = objc_msgSend_apsEnvironmentEntitlement(self, v58, v59);
        v62 = objc_msgSend_isEqual_(v57, v61, v60);

        if (!v62)
        {
          goto LABEL_79;
        }
      }

      v64 = sub_188401184(v5, v63);
      if (v64 != sub_188401184(self, v65))
      {
        goto LABEL_79;
      }

      hasMasqueradingEntitlement = objc_msgSend_hasMasqueradingEntitlement(v5, v66, v67);
      if (hasMasqueradingEntitlement != objc_msgSend_hasMasqueradingEntitlement(self, v69, v70))
      {
        goto LABEL_79;
      }

      hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v5, v71, v72);
      if (hasProtectionDataEntitlement != objc_msgSend_hasProtectionDataEntitlement(self, v74, v75))
      {
        goto LABEL_79;
      }

      hasZoneProtectionDataEntitlement = objc_msgSend_hasZoneProtectionDataEntitlement(v5, v76, v77);
      if (hasZoneProtectionDataEntitlement != objc_msgSend_hasZoneProtectionDataEntitlement(self, v79, v80))
      {
        goto LABEL_79;
      }

      hasCloudKitSystemServiceEntitlement = objc_msgSend_hasCloudKitSystemServiceEntitlement(v5, v81, v82);
      if (hasCloudKitSystemServiceEntitlement != objc_msgSend_hasCloudKitSystemServiceEntitlement(self, v84, v85))
      {
        goto LABEL_79;
      }

      hasSystemLaunchDaemonEntitlement = objc_msgSend_hasSystemLaunchDaemonEntitlement(v5, v86, v87);
      if (hasSystemLaunchDaemonEntitlement != objc_msgSend_hasSystemLaunchDaemonEntitlement(self, v89, v90))
      {
        goto LABEL_79;
      }

      hasDarkWakeNetworkReachabilityEnabledEntitlement = objc_msgSend_hasDarkWakeNetworkReachabilityEnabledEntitlement(v5, v91, v92);
      if (hasDarkWakeNetworkReachabilityEnabledEntitlement != objc_msgSend_hasDarkWakeNetworkReachabilityEnabledEntitlement(self, v94, v95))
      {
        goto LABEL_79;
      }

      hasAllowAccessDuringBuddyEntitlement = objc_msgSend_hasAllowAccessDuringBuddyEntitlement(v5, v96, v97);
      if (hasAllowAccessDuringBuddyEntitlement != objc_msgSend_hasAllowAccessDuringBuddyEntitlement(self, v99, v100))
      {
        goto LABEL_79;
      }

      hasLightweightPCSEntitlement = objc_msgSend_hasLightweightPCSEntitlement(v5, v101, v102);
      if (hasLightweightPCSEntitlement != objc_msgSend_hasLightweightPCSEntitlement(self, v104, v105))
      {
        goto LABEL_79;
      }

      hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v5, v106, v107);
      if (hasOutOfProcessUIEntitlement != objc_msgSend_hasOutOfProcessUIEntitlement(self, v109, v110))
      {
        goto LABEL_79;
      }

      hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v5, v111, v112);
      if (hasParticipantPIIEntitlement != objc_msgSend_hasParticipantPIIEntitlement(self, v114, v115))
      {
        goto LABEL_79;
      }

      hasDisplaysSystemAcceptPromptEntitlement = objc_msgSend_hasDisplaysSystemAcceptPromptEntitlement(v5, v116, v117);
      if (hasDisplaysSystemAcceptPromptEntitlement != objc_msgSend_hasDisplaysSystemAcceptPromptEntitlement(self, v119, v120))
      {
        goto LABEL_79;
      }

      v123 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(v5, v121, v122);
      v126 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(self, v124, v125);
      v129 = v126;
      if (v123 == v126)
      {
      }

      else
      {
        v130 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(v5, v127, v128);
        v133 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(self, v131, v132);
        v135 = objc_msgSend_isEqual_(v130, v134, v133);

        if (!v135)
        {
          goto LABEL_79;
        }
      }

      hasNonLegacyShareURLEntitlement = objc_msgSend_hasNonLegacyShareURLEntitlement(v5, v136, v137);
      if (hasNonLegacyShareURLEntitlement != objc_msgSend_hasNonLegacyShareURLEntitlement(self, v139, v140))
      {
        goto LABEL_79;
      }

      hasAllowUnverifiedAccountEntitlement = objc_msgSend_hasAllowUnverifiedAccountEntitlement(v5, v141, v142);
      if (hasAllowUnverifiedAccountEntitlement != objc_msgSend_hasAllowUnverifiedAccountEntitlement(self, v144, v145))
      {
        goto LABEL_79;
      }

      hasNotifyOnAccountWarmupEntitlement = objc_msgSend_hasNotifyOnAccountWarmupEntitlement(v5, v146, v147);
      if (hasNotifyOnAccountWarmupEntitlement != objc_msgSend_hasNotifyOnAccountWarmupEntitlement(self, v149, v150))
      {
        goto LABEL_79;
      }

      hasAllowRealTimeOperationsEntitlement = objc_msgSend_hasAllowRealTimeOperationsEntitlement(v5, v151, v152);
      if (hasAllowRealTimeOperationsEntitlement != objc_msgSend_hasAllowRealTimeOperationsEntitlement(self, v154, v155))
      {
        goto LABEL_79;
      }

      hasExplicitCodeOperationURLEntitlement = objc_msgSend_hasExplicitCodeOperationURLEntitlement(v5, v156, v157);
      if (hasExplicitCodeOperationURLEntitlement != objc_msgSend_hasExplicitCodeOperationURLEntitlement(self, v159, v160))
      {
        goto LABEL_79;
      }

      v163 = objc_msgSend_codeServiceURLEntitlement(v5, v161, v162);
      v166 = objc_msgSend_codeServiceURLEntitlement(self, v164, v165);
      v169 = v166;
      if (v163 == v166)
      {
      }

      else
      {
        v170 = objc_msgSend_codeServiceURLEntitlement(v5, v167, v168);
        v173 = objc_msgSend_codeServiceURLEntitlement(self, v171, v172);
        v175 = objc_msgSend_isEqual_(v170, v174, v173);

        if (!v175)
        {
          goto LABEL_79;
        }
      }

      v178 = objc_msgSend_codeServiceURLByServiceEntitlement(v5, v176, v177);
      v181 = objc_msgSend_codeServiceURLByServiceEntitlement(self, v179, v180);
      v184 = v181;
      if (v178 == v181)
      {
      }

      else
      {
        v185 = objc_msgSend_codeServiceURLByServiceEntitlement(v5, v182, v183);
        v188 = objc_msgSend_codeServiceURLByServiceEntitlement(self, v186, v187);
        v190 = objc_msgSend_isEqual_(v185, v189, v188);

        if (!v190)
        {
          goto LABEL_79;
        }
      }

      v193 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(v5, v191, v192);
      v196 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(self, v194, v195);
      v199 = v196;
      if (v193 == v196)
      {
      }

      else
      {
        v200 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(v5, v197, v198);
        v203 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(self, v201, v202);
        v205 = objc_msgSend_isEqual_(v200, v204, v203);

        if (!v205)
        {
          goto LABEL_79;
        }
      }

      hasVFSOpenByIDEntitlement = objc_msgSend_hasVFSOpenByIDEntitlement(v5, v206, v207);
      if (hasVFSOpenByIDEntitlement != objc_msgSend_hasVFSOpenByIDEntitlement(self, v209, v210))
      {
        goto LABEL_79;
      }

      hasNetworkSocketDelegateEntitlement = objc_msgSend_hasNetworkSocketDelegateEntitlement(v5, v211, v212);
      if (hasNetworkSocketDelegateEntitlement != objc_msgSend_hasNetworkSocketDelegateEntitlement(self, v214, v215))
      {
        goto LABEL_79;
      }

      hasAllowPackagesEntitlement = objc_msgSend_hasAllowPackagesEntitlement(v5, v216, v217);
      if (hasAllowPackagesEntitlement != objc_msgSend_hasAllowPackagesEntitlement(self, v219, v220))
      {
        goto LABEL_79;
      }

      hasEnvironmentEntitlement = objc_msgSend_hasEnvironmentEntitlement(v5, v221, v222);
      if (hasEnvironmentEntitlement != objc_msgSend_hasEnvironmentEntitlement(self, v224, v225))
      {
        goto LABEL_79;
      }

      hasCustomAccountsEntitlement = objc_msgSend_hasCustomAccountsEntitlement(v5, v226, v227);
      if (hasCustomAccountsEntitlement != objc_msgSend_hasCustomAccountsEntitlement(self, v229, v230))
      {
        goto LABEL_79;
      }

      v233 = objc_msgSend_clientPrefixEntitlement(v5, v231, v232);
      v236 = objc_msgSend_clientPrefixEntitlement(self, v234, v235);
      v239 = v236;
      if (v233 == v236)
      {
      }

      else
      {
        v240 = objc_msgSend_clientPrefixEntitlement(v5, v237, v238);
        v243 = objc_msgSend_clientPrefixEntitlement(self, v241, v242);
        v245 = objc_msgSend_isEqual_(v240, v244, v243);

        if (!v245)
        {
          goto LABEL_79;
        }
      }

      hasAssetBoundaryKeyEntitlement = objc_msgSend_hasAssetBoundaryKeyEntitlement(v5, v246, v247);
      if (hasAssetBoundaryKeyEntitlement != objc_msgSend_hasAssetBoundaryKeyEntitlement(self, v249, v250))
      {
        goto LABEL_79;
      }

      hasAllowFakeEntitlementsEntitlement = objc_msgSend_hasAllowFakeEntitlementsEntitlement(v5, v251, v252);
      if (hasAllowFakeEntitlementsEntitlement != objc_msgSend_hasAllowFakeEntitlementsEntitlement(self, v254, v255))
      {
        goto LABEL_79;
      }

      v258 = objc_msgSend_containerEnvironment(v5, v256, v257);
      if (v258 != objc_msgSend_containerEnvironment(self, v259, v260))
      {
        goto LABEL_79;
      }

      v263 = objc_msgSend_developmentContainerEnvironmentOverrides(v5, v261, v262);
      v266 = objc_msgSend_developmentContainerEnvironmentOverrides(self, v264, v265);
      v269 = v266;
      if (v263 == v266)
      {
      }

      else
      {
        v270 = objc_msgSend_developmentContainerEnvironmentOverrides(v5, v267, v268);
        v273 = objc_msgSend_developmentContainerEnvironmentOverrides(self, v271, v272);
        v275 = objc_msgSend_isEqual_(v270, v274, v273);

        if (!v275)
        {
          goto LABEL_79;
        }
      }

      v278 = objc_msgSend_extendedShareAccessEntitlement(v5, v276, v277);
      v281 = objc_msgSend_extendedShareAccessEntitlement(self, v279, v280);
      v284 = v281;
      if (v278 == v281)
      {
      }

      else
      {
        v285 = objc_msgSend_extendedShareAccessEntitlement(v5, v282, v283);
        v288 = objc_msgSend_extendedShareAccessEntitlement(self, v286, v287);
        v290 = objc_msgSend_isEqual_(v285, v289, v288);

        if (!v290)
        {
          goto LABEL_79;
        }
      }

      v293 = objc_msgSend_cloudServices(v5, v291, v292);
      v296 = objc_msgSend_cloudServices(self, v294, v295);
      v299 = v296;
      if (v293 == v296)
      {
      }

      else
      {
        v300 = objc_msgSend_cloudServices(v5, v297, v298);
        v303 = objc_msgSend_cloudServices(self, v301, v302);
        v305 = objc_msgSend_isEqual_(v300, v304, v303);

        if (!v305)
        {
          goto LABEL_79;
        }
      }

      hasAlwaysAllowPublishAssetsEntitlement = objc_msgSend_hasAlwaysAllowPublishAssetsEntitlement(v5, v306, v307);
      if (hasAlwaysAllowPublishAssetsEntitlement == objc_msgSend_hasAlwaysAllowPublishAssetsEntitlement(self, v309, v310))
      {
        hasAllowOnDeviceAssetStreamingEntitlement = objc_msgSend_hasAllowOnDeviceAssetStreamingEntitlement(v5, v311, v312);
        v19 = hasAllowOnDeviceAssetStreamingEntitlement ^ objc_msgSend_hasAllowOnDeviceAssetStreamingEntitlement(self, v315, v316) ^ 1;
        goto LABEL_80;
      }

LABEL_79:
      LOBYTE(v19) = 0;
LABEL_80:

      goto LABEL_81;
    }

    LOBYTE(v19) = 0;
  }

LABEL_81:

  return v19;
}

- (id)sqliteRepresentation
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v3 = objc_msgSend_mutableCopy(self, a2, v2);
  v13 = 0;
  v5 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v4, v3, 0, &v13);
  v6 = v13;
  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Error converting CKEntitlements to JSON: %{public}@", buf, 0xCu);
    }
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = objc_msgSend_initWithData_encoding_(v8, v9, v5, 4);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (CKEntitlements)initWithSqliteRepresentation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_dataUsingEncoding_(v4, v7, 4);
    v17 = 0;
    v10 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v9, v8, 0, &v17);
    v12 = v17;
    if (v12 || !v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v12;
        _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Error converting JSON data to CKEntitlements: %{public}@", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      self = objc_msgSend_initWithEntitlementsDict_(self, v11, v10);
      v13 = self;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)validateEntitlementsWithSDKVersion:(unsigned int)a3 error:(id *)a4
{
  v231[26] = *MEMORY[0x1E69E9840];
  v174 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v5 = self;
  newValue = objc_msgSend_mutableCopy(v5, v6, v7);

  v231[0] = @"com.apple.private.cloudkit.masquerade";
  v231[1] = @"com.apple.private.cloudkit.setEnvironment";
  v231[2] = @"com.apple.private.cloudkit.customAccounts";
  v231[3] = @"com.apple.private.cloudkit.assetBoundaryKey";
  v231[4] = @"com.apple.private.cloudkit.protectiondata";
  v231[5] = @"com.apple.private.cloudkit.systemService";
  v231[6] = @"com.apple.private.dark-wake-push";
  v231[7] = @"com.apple.private.cloudkit.buddyAccess";
  v231[8] = @"com.apple.private.cloudkit.lightweightPCS";
  v231[9] = @"com.apple.private.cloudkit.oopui";
  v231[10] = @"com.apple.private.cloudkit.participant-pii";
  v231[11] = @"com.apple.private.cloudkit.displaysSystemAcceptPrompt";
  v231[12] = @"com.apple.private.cloudkit.systemLaunchDaemonAccess";
  v231[13] = @"com.apple.private.cloudkit.packages";
  v231[14] = @"com.apple.private.vfs.open-by-id";
  v231[15] = @"com.apple.private.network.socket-delegate";
  v231[16] = @"com.apple.private.cloudkit.fakeEntitlements";
  v231[17] = @"com.apple.private.cloudkit.zoneprotectiondata";
  v231[18] = @"com.apple.private.cloudkit.nonLegacySharingURL";
  v231[19] = @"com.apple.private.cloudkit.allowUnverifiedAccount";
  v231[20] = @"com.apple.private.cloudkit.notifyOnAccountWarmup";
  v231[21] = @"com.apple.private.cloudkit.explicitCodeOperationURL";
  v231[22] = @"com.apple.private.cloudkit.realTimeOperations";
  v231[23] = @"com.apple.private.cloudkit.supportservice";
  v231[24] = @"com.apple.private.cloudkit.publishAssets";
  v231[25] = @"com.apple.private.cloudkit.onDeviceStreaming";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v231, 26);
  v230[0] = @"application-identifier";
  v230[1] = @"com.apple.private.cloudkit.prefix";
  v230[2] = @"aps-environment";
  v230[3] = @"com.apple.developer.icloud-code-destination";
  v165 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v230, 4);
  v229[0] = @"com.apple.developer.icloud-container-development-container-identifiers";
  v229[1] = @"com.apple.developer.icloud-services";
  v229[2] = @"com.apple.developer.icloud-extended-share-access";
  v164 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v229, 3);
  v228[0] = @"com.apple.private.cloudkit.serviceNameForContainerMap";
  v228[1] = @"com.apple.developer.icloud-code-destination-by-service";
  v163 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v228, 2);
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v13 = v9;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v207, v227, 16);
  v171 = HIWORD(a3);
  v173 = v13;
  if (v15)
  {
    v17 = v15;
    v18 = *v208;
    do
    {
      v19 = 0;
      do
      {
        if (*v208 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v207 + 1) + 8 * v19);
        objc_msgSend_addObject_(0, v16, v20);
        v22 = objc_msgSend_valueForEntitlement_(v174, v21, v20);
        if (v22 && (objc_opt_respondsToSelector() & 1) == 0)
        {
          v23 = ck_log_initialization_block;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, v23);
          }

          v24 = ck_log_facility_ck;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v212 = v22;
            v213 = 2114;
            v214 = v20;
            _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected something that supports -BOOLValue", buf, 0x16u);
          }

          if (v171 > 0xE)
          {
            v13 = v173;
            if (a4)
            {
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected something that supports -BOOLValue", v22, v20);
              *a4 = v102 = 0;
            }

            else
            {
              v102 = 0;
            }

            v38 = v173;
            goto LABEL_166;
          }

          objc_msgSend_setObject_forKeyedSubscript_(newValue, v25, 0, v20);
          v13 = v173;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v207, v227, 16);
    }

    while (v17);
  }

  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v26 = v165;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v203, v226, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v204;
    do
    {
      v32 = 0;
      do
      {
        if (*v204 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v203 + 1) + 8 * v32);
        objc_msgSend_addObject_(0, v29, v33);
        v22 = objc_msgSend_valueForEntitlement_(v174, v34, v33);
        if (v22)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v35 = ck_log_initialization_block;
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, v35);
            }

            v36 = ck_log_facility_ck;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v212 = v22;
              v213 = 2114;
              v214 = v33;
              _os_log_error_impl(&dword_1883EA000, v36, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected a string", buf, 0x16u);
            }

            if (v171 > 0xE)
            {
              v13 = v173;
              if (a4)
              {
                objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected a string", v22, v33);
                *a4 = v102 = 0;
              }

              else
              {
                v102 = 0;
              }

              v38 = v26;
              goto LABEL_166;
            }

            objc_msgSend_setObject_forKeyedSubscript_(newValue, v37, 0, v33);
            v13 = v173;
          }
        }

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v203, v226, 16);
    }

    while (v30);
  }

  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v38 = v164;
  v40 = v174;
  v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v199, v225, 16);
  if (v168)
  {
    v42 = *v200;
    v157 = *v200;
    v160 = v38;
    do
    {
      v43 = 0;
      do
      {
        if (*v200 != v42)
        {
          objc_enumerationMutation(v38);
        }

        v44 = *(*(&v199 + 1) + 8 * v43);
        objc_msgSend_addObject_(0, v41, v44);
        v22 = objc_msgSend_valueForEntitlement_(v40, v45, v44);
        if (v22)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_48;
          }

          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          v46 = v22;
          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v195, v224, 16);
          if (!v48)
          {

            v13 = v173;
            goto LABEL_56;
          }

          v49 = v48;
          v50 = *v196;
          v51 = 1;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v196 != v50)
              {
                objc_enumerationMutation(v46);
              }

              v53 = *(*(&v195 + 1) + 8 * i);
              objc_opt_class();
              v51 &= objc_opt_isKindOfClass();
            }

            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v54, &v195, v224, 16);
          }

          while (v49);

          v13 = v173;
          v40 = v174;
          v42 = v157;
          v38 = v160;
          if ((v51 & 1) == 0)
          {
LABEL_48:
            v55 = ck_log_initialization_block;
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, v55);
            }

            v56 = ck_log_facility_ck;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v212 = v22;
              v213 = 2114;
              v214 = v44;
              _os_log_error_impl(&dword_1883EA000, v56, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected an array of strings", buf, 0x16u);
            }

            if (v171 > 0xE || (objc_msgSend_isEqualToString_(v44, v57, @"com.apple.developer.icloud-services") & 1) != 0)
            {
              v103 = a4;
              if (a4)
              {
                v152 = v22;
                v154 = v44;
                v104 = @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected an array of strings";
                goto LABEL_115;
              }

              goto LABEL_165;
            }

            objc_msgSend_setObject_forKeyedSubscript_(newValue, v57, 0, v44);
          }
        }

LABEL_56:

        ++v43;
      }

      while (v43 != v168);
      v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v199, v225, 16);
    }

    while (v168);
  }

  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v38 = v163;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v58, &v191, v223, 16);
  if (!v59)
  {
LABEL_85:

    v38 = @"com.apple.developer.associated-application-identifier";
    v22 = objc_msgSend_valueForEntitlement_(v40, v85, v38);
    objc_msgSend_addObject_(0, v86, v38);
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_96:
          v97 = ck_log_initialization_block;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, v97);
          }

          v98 = ck_log_facility_ck;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v212 = v22;
            v213 = 2114;
            v214 = v38;
            _os_log_error_impl(&dword_1883EA000, v98, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected a string", buf, 0x16u);
          }

          if (v171 > 0xE)
          {
            if (a4)
            {
              v153 = v38;
              v100 = v38;
              v101 = a4;
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v99, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected a string", v22, v153);
LABEL_164:
              *v101 = v102 = 0;
LABEL_177:
              v38 = v100;
              goto LABEL_166;
            }

            goto LABEL_165;
          }

          objc_msgSend_setObject_forKeyedSubscript_(newValue, v99, 0, v38);
          goto LABEL_118;
        }

        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v87 = v22;
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v88, &v183, v221, 16);
        if (v89)
        {
          v90 = v89;
          v91 = v38;
          v92 = *v184;
          v93 = 1;
          do
          {
            for (j = 0; j != v90; ++j)
            {
              if (*v184 != v92)
              {
                objc_enumerationMutation(v87);
              }

              v95 = *(*(&v183 + 1) + 8 * j);
              objc_opt_class();
              v93 &= objc_opt_isKindOfClass();
            }

            v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v96, &v183, v221, 16);
          }

          while (v90);

          v13 = v173;
          v38 = v91;
          if ((v93 & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        else
        {
        }
      }
    }

LABEL_118:
    v100 = @"com.apple.developer.icloud-code-destination-by-container-and-service";

    v107 = objc_msgSend_valueForEntitlement_(v40, v106, v100);

    objc_msgSend_addObject_(0, v108, v100);
    if (v107)
    {
      v109 = 0x1E695D000uLL;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_144;
      }

      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v110 = v107;
      v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v111, &v179, v220, 16);
      if (!v112)
      {

        goto LABEL_153;
      }

      v113 = v112;
      v159 = v100;
      v114 = *v180;
      v115 = 1;
      v167 = v110;
      v161 = *v180;
      do
      {
        v116 = 0;
        v170 = v113;
        do
        {
          if (*v180 != v114)
          {
            objc_enumerationMutation(v110);
          }

          v117 = *(*(&v179 + 1) + 8 * v116);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v119 = objc_msgSend_objectForKeyedSubscript_(v110, v118, v117);
            v120 = *(v109 + 3872);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v121 = v119;
              v175 = 0u;
              v176 = 0u;
              v177 = 0u;
              v178 = 0u;
              v122 = v121;
              v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v123, &v175, v219, 16);
              if (v124)
              {
                v125 = v124;
                v126 = *v176;
                do
                {
                  for (k = 0; k != v125; ++k)
                  {
                    if (*v176 != v126)
                    {
                      objc_enumerationMutation(v122);
                    }

                    v128 = *(*(&v175 + 1) + 8 * k);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v130 = objc_msgSend_objectForKeyedSubscript_(v122, v129, v128);
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        continue;
                      }
                    }

                    v115 = 0;
                  }

                  v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v129, &v175, v219, 16);
                }

                while (v125);
              }

              v13 = v173;
              v109 = 0x1E695D000;
              v110 = v167;
              v113 = v170;
              v114 = v161;
            }

            else
            {
              v115 = 0;
            }
          }

          else
          {
            v115 = 0;
          }

          ++v116;
        }

        while (v116 != v113);
        v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v118, &v179, v220, 16);
      }

      while (v113);

      v100 = v159;
      if ((v115 & 1) == 0)
      {
LABEL_144:
        v132 = ck_log_initialization_block;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, v132);
        }

        v133 = ck_log_facility_ck;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v212 = v107;
          v213 = 2114;
          v214 = v100;
          _os_log_error_impl(&dword_1883EA000, v133, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected a type of [ string : [ string : string ] ]", buf, 0x16u);
        }

        if (v171 > 0xE)
        {
          if (a4)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v134, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected a type of [ string : [ string : string ] ]", v107, v100);
            *a4 = v102 = 0;
          }

          else
          {
            v102 = 0;
          }

          v22 = v107;
          goto LABEL_177;
        }

        objc_msgSend_setObject_forKeyedSubscript_(newValue, v134, 0, v100);
      }
    }

LABEL_153:
    v38 = @"com.apple.developer.icloud-container-environment";

    v22 = objc_msgSend_valueForEntitlement_(v174, v135, v38);

    objc_msgSend_addObject_(0, v136, v38);
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_compare_options_(v22, v138, @"production", 1) && objc_msgSend_compare_options_(v22, v137, @"development", 1))
      {
        v139 = ck_log_initialization_block;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, v139);
        }

        v140 = ck_log_facility_ck;
        if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544130;
          v212 = v22;
          v213 = 2114;
          v214 = v38;
          v215 = 2114;
          v216 = @"production";
          v217 = 2114;
          v218 = @"development";
          _os_log_error_impl(&dword_1883EA000, v140, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected %{public}@ or %{public}@", buf, 0x2Au);
        }

        if (v171 > 0xE)
        {
          if (a4)
          {
            v155 = v38;
            v100 = v38;
            v101 = a4;
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v141, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected %@ or %@", v22, v155, @"production", @"development");
            goto LABEL_164;
          }

LABEL_165:
          v102 = 0;
          goto LABEL_166;
        }

        objc_msgSend_setObject_forKeyedSubscript_(newValue, v141, 0, v38);
      }
    }

    objc_msgSend_addObject_(0, v137, @"com.apple.private.cloudkit.spi");
    objc_msgSend_addObject_(0, v144, @"aps-connection-initiate");
    if (v171 <= 0xE)
    {
      v146 = v38;
      if (v174)
      {
        Property = objc_getProperty(v174, v145, 24, 1);
      }

      else
      {
        Property = 0;
      }

      v148 = Property;
      isEqual = objc_msgSend_isEqual_(v148, v149, newValue);

      v102 = 1;
      v38 = v146;
      if (v174 && (isEqual & 1) == 0)
      {
        objc_setProperty_atomic_copy(v174, v151, newValue, 24);
      }
    }

    else
    {
      v102 = 1;
    }

    goto LABEL_166;
  }

  v61 = v59;
  v62 = *v192;
  v63 = 0x1E695D000uLL;
  v160 = v38;
  v156 = *v192;
LABEL_60:
  v64 = 0;
  v158 = v61;
  while (1)
  {
    if (*v192 != v62)
    {
      objc_enumerationMutation(v38);
    }

    v65 = *(*(&v191 + 1) + 8 * v64);
    objc_msgSend_addObject_(0, v60, v65);
    v169 = v65;
    v22 = objc_msgSend_valueForEntitlement_(v40, v66, v65);
    if (!v22)
    {
      goto LABEL_83;
    }

    v67 = *(v63 + 3872);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v166 = v64;
      v68 = v22;
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v71 = objc_msgSend_allKeys(v68, v69, v70);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v187, v222, 16);
      if (!v73)
      {

        v13 = v173;
        v63 = 0x1E695D000;
        v64 = v166;
        goto LABEL_83;
      }

      v74 = v73;
      v75 = *v188;
      v76 = 1;
      do
      {
        for (m = 0; m != v74; ++m)
        {
          if (*v188 != v75)
          {
            objc_enumerationMutation(v71);
          }

          v78 = *(*(&v187 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = objc_msgSend_objectForKeyedSubscript_(v68, v79, v78);
            objc_opt_class();
            v81 = objc_opt_isKindOfClass();

            if (v81)
            {
              continue;
            }
          }

          v76 = 0;
        }

        v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v79, &v187, v222, 16);
      }

      while (v74);

      v13 = v173;
      v40 = v174;
      v61 = v158;
      v38 = v160;
      v62 = v156;
      v63 = 0x1E695D000;
      v64 = v166;
      if (v76)
      {
        goto LABEL_83;
      }
    }

    v82 = v64;
    v83 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v83);
    }

    v84 = ck_log_facility_ck;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v212 = v22;
      v213 = 2114;
      v214 = v169;
      _os_log_error_impl(&dword_1883EA000, v84, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected a dict of string : string", buf, 0x16u);
    }

    if (v171 > 0xE)
    {
      break;
    }

    objc_msgSend_setObject_forKeyedSubscript_(newValue, v57, 0, v169);
    v64 = v82;
LABEL_83:

    if (++v64 == v61)
    {
      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v60, &v191, v223, 16);
      if (v61)
      {
        goto LABEL_60;
      }

      goto LABEL_85;
    }
  }

  v103 = a4;
  if (!a4)
  {
    goto LABEL_165;
  }

  v152 = v22;
  v154 = v169;
  v104 = @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected a dict of string : string";
LABEL_115:
  v105 = v103;
  objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v57, @"CKErrorDomain", 8, v104, v152, v154);
  *v105 = v102 = 0;
  v38 = v160;
LABEL_166:

  v142 = *MEMORY[0x1E69E9840];
  return v102;
}

- (void)ck_bindInStatement:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v10 = objc_msgSend_sqliteRepresentation(self, v7, v8);
  objc_msgSend_bindText_atIndex_(v6, v9, v10, a4);
}

@end