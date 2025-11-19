@interface CLSCurrentUser
+ (unint64_t)userRolesFromUserLocationIDsByAXMRoleType:(id)a3;
- (CLSCurrentUser)initWithCoder:(id)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)_useRoles;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSCurrentUser

+ (unint64_t)userRolesFromUserLocationIDsByAXMRoleType:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = objc_msgSend_allKeys(a3, a2, a3, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v15, v19, 16);
  if (v5)
  {
    v8 = v5;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = objc_msgSend_integerValue(*(*(&v15 + 1) + 8 * i), v6, v7);
        switch(v12)
        {
          case 6:
            v9 |= 1uLL;
            break;
          case 4:
            v9 |= 2uLL;
            break;
          case 1:
            v9 |= 8uLL;
            break;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v15, v19, 16);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CLSCurrentUser;
  return [(CLSCurrentUser *)&v3 init];
}

- (unint64_t)_useRoles
{
  locationIDsByAXMRoleType = self->_locationIDsByAXMRoleType;
  if (locationIDsByAXMRoleType)
  {
    return MEMORY[0x2821F9670](CLSCurrentUser, sel_userRolesFromUserLocationIDsByAXMRoleType_, locationIDsByAXMRoleType);
  }

  else
  {
    return self->_roles;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v13 = objc_msgSend_person(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  objc_msgSend_setPerson_(v10, v17, v16);

  v20 = objc_msgSend_roles(self, v18, v19);
  objc_msgSend_setRoles_(v10, v21, v20);
  v24 = objc_msgSend_accountIdentifier(self, v22, v23);
  objc_msgSend_setAccountIdentifier_(v10, v25, v24);

  v28 = objc_msgSend_accountPersonaUniqueIdentifier(self, v26, v27);
  objc_msgSend_setAccountPersonaUniqueIdentifier_(v10, v29, v28);

  v32 = objc_msgSend_clientPersonaUniqueIdentifier(self, v30, v31);
  objc_msgSend_setClientPersonaUniqueIdentifier_(v10, v33, v32);

  v36 = objc_msgSend_requiresPersonaMatch(self, v34, v35);
  objc_msgSend_setRequiresPersonaMatch_(v10, v37, v36);
  hasMatchingPersona = objc_msgSend_hasMatchingPersona(self, v38, v39);
  objc_msgSend_setHasMatchingPersona_(v10, v41, hasMatchingPersona);
  hasDataSeparatedAccount = objc_msgSend_hasDataSeparatedAccount(self, v42, v43);
  objc_msgSend_setHasDataSeparatedAccount_(v10, v45, hasDataSeparatedAccount);
  hasManagedAccount = objc_msgSend_hasManagedAccount(self, v46, v47);
  objc_msgSend_setHasManagedAccount_(v10, v49, hasManagedAccount);
  hasEDUAccount = objc_msgSend_hasEDUAccount(self, v50, v51);
  objc_msgSend_setHasEDUAccount_(v10, v53, hasEDUAccount);
  hasUbiquityEnabled = objc_msgSend_hasUbiquityEnabled(self, v54, v55);
  objc_msgSend_setHasUbiquityEnabled_(v10, v57, hasUbiquityEnabled);
  v60 = objc_msgSend_organizationName(self, v58, v59);
  objc_msgSend_setOrganizationName_(v10, v61, v60);

  v64 = objc_msgSend_organizationProgressTrackingAllowed(self, v62, v63);
  objc_msgSend_setOrganizationProgressTrackingAllowed_(v10, v65, v64);
  v68 = objc_msgSend_organizationMaidAnalyticsEnabled(self, v66, v67);
  objc_msgSend_setOrganizationMaidAnalyticsEnabled_(v10, v69, v68);
  v72 = objc_msgSend_personMaidAnalyticsEnabled(self, v70, v71);
  objc_msgSend_setPersonMaidAnalyticsEnabled_(v10, v73, v72);
  v76 = objc_msgSend_catalogEnvironment(self, v74, v75);
  objc_msgSend_setCatalogEnvironment_(v10, v77, v76);
  v80 = objc_msgSend_rosterServiceAuthenticationState(self, v78, v79);
  objc_msgSend_setRosterServiceAuthenticationState_(v10, v81, v80);
  v84 = objc_msgSend_handoutServiceAuthenticationState(self, v82, v83);
  objc_msgSend_setHandoutServiceAuthenticationState_(v10, v85, v84);
  v88 = objc_msgSend_iCloudDriveAuthenticationState(self, v86, v87);
  objc_msgSend_setICloudDriveAuthenticationState_(v10, v89, v88);
  v92 = objc_msgSend_schoolworkUbiquitousContainerURL(self, v90, v91);
  objc_msgSend_setSchoolworkUbiquitousContainerURL_(v10, v93, v92);

  v96 = objc_msgSend_schoolworkUbiquitousContainerError(self, v94, v95);
  objc_msgSend_setSchoolworkUbiquitousContainerError_(v10, v97, v96);

  v100 = objc_msgSend_schoolworkUbiquitousContainerURLSandboxExtension(self, v98, v99);
  objc_msgSend_setSchoolworkUbiquitousContainerURLSandboxExtension_(v10, v101, v100);

  v104 = objc_msgSend_orgAdminUserRecordID(self, v102, v103);
  objc_msgSend_setOrgAdminUserRecordID_(v10, v105, v104);

  v108 = objc_msgSend_orgAdminUserFetchError(self, v106, v107);
  objc_msgSend_setOrgAdminUserFetchError_(v10, v109, v108);

  v112 = objc_msgSend_userRecordID(self, v110, v111);
  objc_msgSend_setUserRecordID_(v10, v113, v112);

  v116 = objc_msgSend_userFetchError(self, v114, v115);
  objc_msgSend_setUserFetchError_(v10, v117, v116);

  v120 = objc_msgSend_multimediaCacheDirectoryURL(self, v118, v119);
  objc_msgSend_setMultimediaCacheDirectoryURL_(v10, v121, v120);

  v124 = objc_msgSend_multimediaCacheDirectoryURLError(self, v122, v123);
  objc_msgSend_setMultimediaCacheDirectoryURLError_(v10, v125, v124);

  v128 = objc_msgSend_multimediaCacheDirectoryURLSandboxExtension(self, v126, v127);
  objc_msgSend_setMultimediaCacheDirectoryURLSandboxExtension_(v10, v129, v128);

  v132 = objc_msgSend_allowSharingOutsideOrg(self, v130, v131);
  objc_msgSend_setAllowSharingOutsideOrg_(v10, v133, v132);
  v136 = objc_msgSend_classroomClassicAdHocModeEnabled(self, v134, v135);
  objc_msgSend_setClassroomClassicAdHocModeEnabled_(v10, v137, v136);
  return v10;
}

- (CLSCurrentUser)initWithCoder:(id)a3
{
  v4 = a3;
  v111.receiver = self;
  v111.super_class = CLSCurrentUser;
  v5 = [(CLSCurrentUser *)&v111 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"person");
    person = v5->_person;
    v5->_person = v8;

    v5->_roles = objc_msgSend_decodeIntegerForKey_(v4, v10, @"roles");
    v12 = objc_msgSend_decodeIntegerForKey_(v4, v11, @"devMode");
    if (v12 == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 == 1;
    }

    v5->_devMode = v14;
    v5->_catalogEnvironment = objc_msgSend_decodeIntegerForKey_(v4, v13, @"catalogEnvironment") == 1;
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v21 = objc_msgSend_setWithObjects_(v15, v20, v16, v17, v18, v19, 0);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v22, v21, @"locationIDsByAXMRoleType");
    locationIDsByAXMRoleType = v5->_locationIDsByAXMRoleType;
    v5->_locationIDsByAXMRoleType = v23;

    v25 = objc_opt_class();
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v26, v25, @"accountIdentifier");
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v27;

    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v30, v29, @"accountPersonaUniqueIdentifier");
    accountPersonaUniqueIdentifier = v5->_accountPersonaUniqueIdentifier;
    v5->_accountPersonaUniqueIdentifier = v31;

    v33 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v34, v33, @"clientPersonaUniqueIdentifier");
    clientPersonaUniqueIdentifier = v5->_clientPersonaUniqueIdentifier;
    v5->_clientPersonaUniqueIdentifier = v35;

    v5->_requiresPersonaMatch = objc_msgSend_decodeBoolForKey_(v4, v37, @"requiresPersonaMatch");
    v5->_hasMatchingPersona = objc_msgSend_decodeBoolForKey_(v4, v38, @"hasMatchingPersona");
    v5->_hasDataSeparatedAccount = objc_msgSend_decodeBoolForKey_(v4, v39, @"hasDataSeparatedAccount");
    v5->_hasManagedAccount = objc_msgSend_decodeBoolForKey_(v4, v40, @"hasManagedAccount");
    v5->_hasEDUAccount = objc_msgSend_decodeBoolForKey_(v4, v41, @"hasEDUAccount");
    v5->_hasUbiquityEnabled = objc_msgSend_decodeBoolForKey_(v4, v42, @"hasUbiquityEnabled");
    v43 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v44, v43, @"organizationName");
    organizationName = v5->_organizationName;
    v5->_organizationName = v45;

    v5->_organizationProgressTrackingAllowed = objc_msgSend_decodeBoolForKey_(v4, v47, @"organizationProgressTrackingAllowed");
    v5->_organizationMaidAnalyticsEnabled = objc_msgSend_decodeBoolForKey_(v4, v48, @"organizationMaidAnalyticsEnabled");
    v5->_personMaidAnalyticsEnabled = objc_msgSend_decodeBoolForKey_(v4, v49, @"personMaidAnalyticsEnabled");
    v51 = objc_msgSend_decodeIntegerForKey_(v4, v50, @"rosterServiceAuthenticationState");
    if (v51 == 2)
    {
      v53 = 2;
    }

    else
    {
      v53 = v51 == 1;
    }

    v5->_rosterServiceAuthenticationState = v53;
    v54 = objc_msgSend_decodeIntegerForKey_(v4, v52, @"handoutServiceAuthenticationState");
    if (v54 == 2)
    {
      v56 = 2;
    }

    else
    {
      v56 = v54 == 1;
    }

    v5->_handoutServiceAuthenticationState = v56;
    v57 = objc_msgSend_decodeIntegerForKey_(v4, v55, @"iCloudDriveAuthenticationState");
    v58 = v57 == 1;
    if (v57 == 2)
    {
      v58 = 2;
    }

    v5->_iCloudDriveAuthenticationState = v58;
    v59 = objc_opt_class();
    v61 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v60, v59, @"schoolworkUbiquitousContainerURL");
    schoolworkUbiquitousContainerURL = v5->_schoolworkUbiquitousContainerURL;
    v5->_schoolworkUbiquitousContainerURL = v61;

    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v64, v63, @"schoolworkUbiquitousContainerError");
    schoolworkUbiquitousContainerError = v5->_schoolworkUbiquitousContainerError;
    v5->_schoolworkUbiquitousContainerError = v65;

    v67 = objc_opt_class();
    v69 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v68, v67, @"schoolworkUbiquitousContainerURLSandboxExtension");
    schoolworkUbiquitousContainerURLSandboxExtension = v5->_schoolworkUbiquitousContainerURLSandboxExtension;
    v5->_schoolworkUbiquitousContainerURLSandboxExtension = v69;

    v71 = objc_opt_class();
    v73 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v72, v71, @"orgAdminUserRecordID");
    orgAdminUserRecordID = v5->_orgAdminUserRecordID;
    v5->_orgAdminUserRecordID = v73;

    v75 = objc_opt_class();
    v77 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v76, v75, @"orgAdminUserFetchError");
    orgAdminUserFetchError = v5->_orgAdminUserFetchError;
    v5->_orgAdminUserFetchError = v77;

    v79 = objc_opt_class();
    v81 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v80, v79, @"userRecordID");
    userRecordID = v5->_userRecordID;
    v5->_userRecordID = v81;

    v83 = objc_opt_class();
    v85 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v84, v83, @"userFetchError");
    userFetchError = v5->_userFetchError;
    v5->_userFetchError = v85;

    v88 = v5->_schoolworkUbiquitousContainerURL;
    if (v88)
    {
      v89 = v5->_schoolworkUbiquitousContainerURLSandboxExtension;
      if (v89)
      {
        objc_msgSend_attachSandboxExtensionToken_(v88, v87, v89);
        v5->_hasSecurityScopedSchoolworkUbiquitousContainerURL = objc_msgSend_startAccessingSecurityScopedResource(v5->_schoolworkUbiquitousContainerURL, v90, v91);
      }
    }

    v92 = objc_opt_class();
    v94 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v93, v92, @"multimediaCacheDirectoryURL");
    multimediaCacheDirectoryURL = v5->_multimediaCacheDirectoryURL;
    v5->_multimediaCacheDirectoryURL = v94;

    v96 = objc_opt_class();
    v98 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v97, v96, @"multimediaCacheDirectoryURLError");
    multimediaCacheDirectoryURLError = v5->_multimediaCacheDirectoryURLError;
    v5->_multimediaCacheDirectoryURLError = v98;

    v100 = objc_opt_class();
    v102 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v101, v100, @"multimediaCacheDirectoryURLSandboxExtension");
    multimediaCacheDirectoryURLSandboxExtension = v5->_multimediaCacheDirectoryURLSandboxExtension;
    v5->_multimediaCacheDirectoryURLSandboxExtension = v102;

    v105 = v5->_multimediaCacheDirectoryURL;
    if (v105)
    {
      v106 = v5->_multimediaCacheDirectoryURLSandboxExtension;
      if (v106)
      {
        objc_msgSend_attachSandboxExtensionToken_(v105, v104, v106);
        v5->_hasSecurityScopedMultimediaCacheDirectoryURL = objc_msgSend_startAccessingSecurityScopedResource(v5->_multimediaCacheDirectoryURL, v107, v108);
      }
    }

    v5->_allowSharingOutsideOrg = objc_msgSend_decodeBoolForKey_(v4, v104, @"allowSharingOutsideOrg");
    v5->_classroomClassicAdHocModeEnabled = objc_msgSend_decodeBoolForKey_(v4, v109, @"classroomClassicAdHocModeEnabled");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  person = self->_person;
  v38 = a3;
  objc_msgSend_encodeObject_forKey_(v38, v5, person, @"person");
  objc_msgSend_encodeInteger_forKey_(v38, v6, self->_roles, @"roles");
  objc_msgSend_encodeInteger_forKey_(v38, v7, self->_devMode, @"devMode");
  objc_msgSend_encodeInteger_forKey_(v38, v8, self->_catalogEnvironment, @"catalogEnvironment");
  objc_msgSend_encodeObject_forKey_(v38, v9, self->_locationIDsByAXMRoleType, @"locationIDsByAXMRoleType");
  objc_msgSend_encodeObject_forKey_(v38, v10, self->_accountIdentifier, @"accountIdentifier");
  objc_msgSend_encodeObject_forKey_(v38, v11, self->_accountPersonaUniqueIdentifier, @"accountPersonaUniqueIdentifier");
  objc_msgSend_encodeObject_forKey_(v38, v12, self->_clientPersonaUniqueIdentifier, @"clientPersonaUniqueIdentifier");
  objc_msgSend_encodeBool_forKey_(v38, v13, self->_hasManagedAccount, @"hasManagedAccount");
  objc_msgSend_encodeBool_forKey_(v38, v14, self->_hasEDUAccount, @"hasEDUAccount");
  objc_msgSend_encodeBool_forKey_(v38, v15, self->_hasUbiquityEnabled, @"hasUbiquityEnabled");
  objc_msgSend_encodeBool_forKey_(v38, v16, self->_requiresPersonaMatch, @"requiresPersonaMatch");
  objc_msgSend_encodeBool_forKey_(v38, v17, self->_hasMatchingPersona, @"hasMatchingPersona");
  objc_msgSend_encodeBool_forKey_(v38, v18, self->_hasDataSeparatedAccount, @"hasDataSeparatedAccount");
  objc_msgSend_encodeObject_forKey_(v38, v19, self->_organizationName, @"organizationName");
  objc_msgSend_encodeBool_forKey_(v38, v20, self->_organizationProgressTrackingAllowed, @"organizationProgressTrackingAllowed");
  objc_msgSend_encodeBool_forKey_(v38, v21, self->_organizationMaidAnalyticsEnabled, @"organizationMaidAnalyticsEnabled");
  objc_msgSend_encodeBool_forKey_(v38, v22, self->_personMaidAnalyticsEnabled, @"personMaidAnalyticsEnabled");
  objc_msgSend_encodeInteger_forKey_(v38, v23, self->_rosterServiceAuthenticationState, @"rosterServiceAuthenticationState");
  objc_msgSend_encodeInteger_forKey_(v38, v24, self->_handoutServiceAuthenticationState, @"handoutServiceAuthenticationState");
  objc_msgSend_encodeInteger_forKey_(v38, v25, self->_iCloudDriveAuthenticationState, @"iCloudDriveAuthenticationState");
  objc_msgSend_encodeObject_forKey_(v38, v26, self->_schoolworkUbiquitousContainerURL, @"schoolworkUbiquitousContainerURL");
  objc_msgSend_encodeObject_forKey_(v38, v27, self->_schoolworkUbiquitousContainerError, @"schoolworkUbiquitousContainerError");
  objc_msgSend_encodeObject_forKey_(v38, v28, self->_schoolworkUbiquitousContainerURLSandboxExtension, @"schoolworkUbiquitousContainerURLSandboxExtension");
  objc_msgSend_encodeObject_forKey_(v38, v29, self->_orgAdminUserRecordID, @"orgAdminUserRecordID");
  objc_msgSend_encodeObject_forKey_(v38, v30, self->_orgAdminUserFetchError, @"orgAdminUserFetchError");
  objc_msgSend_encodeObject_forKey_(v38, v31, self->_userRecordID, @"userRecordID");
  objc_msgSend_encodeObject_forKey_(v38, v32, self->_userFetchError, @"userFetchError");
  objc_msgSend_encodeObject_forKey_(v38, v33, self->_multimediaCacheDirectoryURL, @"multimediaCacheDirectoryURL");
  objc_msgSend_encodeObject_forKey_(v38, v34, self->_multimediaCacheDirectoryURLError, @"multimediaCacheDirectoryURLError");
  objc_msgSend_encodeObject_forKey_(v38, v35, self->_multimediaCacheDirectoryURLSandboxExtension, @"multimediaCacheDirectoryURLSandboxExtension");
  objc_msgSend_encodeBool_forKey_(v38, v36, self->_allowSharingOutsideOrg, @"allowSharingOutsideOrg");
  objc_msgSend_encodeBool_forKey_(v38, v37, self->_classroomClassicAdHocModeEnabled, @"classroomClassicAdHocModeEnabled");
}

- (void)dealloc
{
  if (self->_hasSecurityScopedSchoolworkUbiquitousContainerURL)
  {
    objc_msgSend_stopAccessingSecurityScopedResource(self->_schoolworkUbiquitousContainerURL, a2, v2);
  }

  if (self->_hasSecurityScopedMultimediaCacheDirectoryURL)
  {
    objc_msgSend_stopAccessingSecurityScopedResource(self->_multimediaCacheDirectoryURL, a2, v2);
  }

  v4.receiver = self;
  v4.super_class = CLSCurrentUser;
  [(CLSCurrentUser *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v141.receiver = self;
  v141.super_class = CLSCurrentUser;
  v4 = [(CLSCurrentUser *)&v141 description];
  v6 = objc_msgSend_initWithString_(v3, v5, v4);

  v9 = objc_msgSend_organizationName(self, v7, v8);
  objc_msgSend_appendFormat_(v6, v10, @"\n  organizationName:                    %@", v9);

  v13 = objc_msgSend_givenName(self->_person, v11, v12);
  v16 = objc_msgSend_middleName(self->_person, v14, v15);
  v19 = objc_msgSend_familyName(self->_person, v17, v18);
  v22 = objc_msgSend_appleID(self->_person, v20, v21);
  objc_msgSend_appendFormat_(v6, v23, @"\n  person:                              %@ %@ %@ [%@]", v13, v16, v19, v22);

  v26 = objc_msgSend_accountIdentifier(self, v24, v25);
  objc_msgSend_appendFormat_(v6, v27, @"\n  accountIdentifier:                   %@", v26);

  v30 = objc_msgSend_accountPersonaUniqueIdentifier(self, v28, v29);
  objc_msgSend_appendFormat_(v6, v31, @"\n  accountPersonaUniqueIdentifier:      %@", v30);

  v34 = objc_msgSend_clientPersonaUniqueIdentifier(self, v32, v33);
  objc_msgSend_appendFormat_(v6, v35, @"\n  clientPersonaUniqueIdentifier:       %@", v34);

  if (objc_msgSend_hasDataSeparatedAccount(self, v36, v37))
  {
    objc_msgSend_appendFormat_(v6, v38, @"\n  hasDataSeparatedAccount:             %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v38, @"\n  hasDataSeparatedAccount:             %s", "NO");
  }

  if (objc_msgSend_requiresPersonaMatch(self, v39, v40))
  {
    objc_msgSend_appendFormat_(v6, v41, @"\n  requiresPersonaMatch:                %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v41, @"\n  requiresPersonaMatch:                %s", "NO");
  }

  if (objc_msgSend_hasMatchingPersona(self, v42, v43))
  {
    objc_msgSend_appendFormat_(v6, v44, @"\n  hasMatchingPersona:                  %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v44, @"\n  hasMatchingPersona:                  %s", "NO");
  }

  if (objc_msgSend_isAdministrator(self, v45, v46))
  {
    objc_msgSend_appendFormat_(v6, v47, @"\n  isAdministrator:                     %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v47, @"\n  isAdministrator:                     %s", "NO");
  }

  if (objc_msgSend_isInstructor(self, v48, v49))
  {
    objc_msgSend_appendFormat_(v6, v50, @"\n  isInstructor:                        %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v50, @"\n  isInstructor:                        %s", "NO");
  }

  if (objc_msgSend_isStudent(self, v51, v52))
  {
    objc_msgSend_appendFormat_(v6, v53, @"\n  isStudent:                           %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v53, @"\n  isStudent:                           %s", "NO");
  }

  if (objc_msgSend_hasManagedAccount(self, v54, v55))
  {
    objc_msgSend_appendFormat_(v6, v56, @"\n  hasManagedAccount:                   %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v56, @"\n  hasManagedAccount:                   %s", "NO");
  }

  if (objc_msgSend_hasEDUAccount(self, v57, v58))
  {
    objc_msgSend_appendFormat_(v6, v59, @"\n  hasEDUAccount:                       %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v59, @"\n  hasEDUAccount:                       %s", "NO");
  }

  if (objc_msgSend_hasUbiquityEnabled(self, v60, v61))
  {
    objc_msgSend_appendFormat_(v6, v62, @"\n  hasUbiquityEnabled:                  %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v62, @"\n  hasUbiquityEnabled:                  %s", "NO");
  }

  if (objc_msgSend_organizationProgressTrackingAllowed(self, v63, v64))
  {
    objc_msgSend_appendFormat_(v6, v65, @"\n  organizationProgressTrackingAllowed: %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v65, @"\n  organizationProgressTrackingAllowed: %s", "NO");
  }

  if (objc_msgSend_organizationMaidAnalyticsEnabled(self, v66, v67))
  {
    objc_msgSend_appendFormat_(v6, v68, @"\n  organizationMaidAnalyticsEnabled:    %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v68, @"\n  organizationMaidAnalyticsEnabled:    %s", "NO");
  }

  if (objc_msgSend_personMaidAnalyticsEnabled(self, v69, v70))
  {
    objc_msgSend_appendFormat_(v6, v71, @"\n  personMaidAnalyticsEnabled:          %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v71, @"\n  personMaidAnalyticsEnabled:          %s", "NO");
  }

  v74 = objc_msgSend_catalogEnvironment(self, v72, v73);
  v76 = NSStringFromClassKitCatalogEnvironment(v74, v75);
  objc_msgSend_appendFormat_(v6, v77, @"\n  catalogEnvironment:                  %@", v76);

  v80 = objc_msgSend_rosterServiceAuthenticationState(self, v78, v79);
  v82 = NSStringFromCLSAuthenticationState(v80, v81);
  objc_msgSend_appendFormat_(v6, v83, @"\n  rosterServiceAuthenticationState:    %@", v82);

  v86 = objc_msgSend_handoutServiceAuthenticationState(self, v84, v85);
  v88 = NSStringFromCLSAuthenticationState(v86, v87);
  objc_msgSend_appendFormat_(v6, v89, @"\n  handoutServiceAuthenticationState:   %@", v88);

  v92 = objc_msgSend_iCloudDriveAuthenticationState(self, v90, v91);
  v94 = NSStringFromCLSAuthenticationState(v92, v93);
  objc_msgSend_appendFormat_(v6, v95, @"\n  iCloudDriveAuthenticationState:      %@", v94);

  v98 = objc_msgSend_schoolworkUbiquitousContainerURL(self, v96, v97);
  v101 = objc_msgSend_path(v98, v99, v100);
  objc_msgSend_appendFormat_(v6, v102, @"\n  schoolworkUbiquitousContainerURL:    %@", v101);

  v105 = objc_msgSend_schoolworkUbiquitousContainerError(self, v103, v104);
  objc_msgSend_appendFormat_(v6, v106, @"\n  schoolworkUbiquitousContainerError:  %@", v105);

  v109 = objc_msgSend_orgAdminUserRecordID(self, v107, v108);
  objc_msgSend_appendFormat_(v6, v110, @"\n  orgAdminUserRecordID:                %@", v109);

  v113 = objc_msgSend_orgAdminUserFetchError(self, v111, v112);
  objc_msgSend_appendFormat_(v6, v114, @"\n  orgAdminUserFetchError:              %@", v113);

  v117 = objc_msgSend_userRecordID(self, v115, v116);
  objc_msgSend_appendFormat_(v6, v118, @"\n  userRecordID:                        %@", v117);

  v121 = objc_msgSend_userFetchError(self, v119, v120);
  objc_msgSend_appendFormat_(v6, v122, @"\n  userFetchError:                      %@", v121);

  v125 = objc_msgSend_multimediaCacheDirectoryURL(self, v123, v124);
  v128 = objc_msgSend_path(v125, v126, v127);
  objc_msgSend_appendFormat_(v6, v129, @"\n  multimediaCacheDirectoryURL:         %@", v128);

  v132 = objc_msgSend_multimediaCacheDirectoryURLError(self, v130, v131);
  objc_msgSend_appendFormat_(v6, v133, @"\n  multimediaCacheDirectoryURLError:    %@", v132);

  if (objc_msgSend_allowSharingOutsideOrg(self, v134, v135))
  {
    objc_msgSend_appendFormat_(v6, v136, @"\n  allowSharingOutsideOrg:              %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v136, @"\n  allowSharingOutsideOrg:              %s", "NO");
  }

  if (objc_msgSend_classroomClassicAdHocModeEnabled(self, v137, v138))
  {
    objc_msgSend_appendFormat_(v6, v139, @"\n  classroomClassicAdHocModeEnabled:    %s", "YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v139, @"\n  classroomClassicAdHocModeEnabled:    %s", "NO");
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_msgSend_organizationName(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"organizationName");

  v10 = objc_msgSend_person(self, v8, v9);
  v13 = objc_msgSend_dictionaryRepresentation(v10, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v14, v13, @"person");

  v17 = objc_msgSend_accountIdentifier(self, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v18, v17, @"accountIdentifier");

  v21 = objc_msgSend_accountPersonaUniqueIdentifier(self, v19, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v22, v21, @"accountPersonaUniqueIdentifier");

  v25 = objc_msgSend_clientPersonaUniqueIdentifier(self, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v26, v25, @"clientPersonaUniqueIdentifier");

  if (objc_msgSend_hasDataSeparatedAccount(self, v27, v28))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v29, @"YES", @"hasDataSeparatedAccount");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v29, @"NO", @"hasDataSeparatedAccount");
  }

  if (objc_msgSend_requiresPersonaMatch(self, v30, v31))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v32, @"YES", @"requiresPersonaMatch");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v32, @"NO", @"requiresPersonaMatch");
  }

  if (objc_msgSend_hasMatchingPersona(self, v33, v34))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v35, @"YES", @"hasMatchingPersona");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v35, @"NO", @"hasMatchingPersona");
  }

  if (objc_msgSend_isAdministrator(self, v36, v37))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v38, @"YES", @"isAdministrator");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v38, @"NO", @"isAdministrator");
  }

  if (objc_msgSend_isInstructor(self, v39, v40))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v41, @"YES", @"isTeacher");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v41, @"NO", @"isTeacher");
  }

  if (objc_msgSend_isStudent(self, v42, v43))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v44, @"YES", @"isStudent");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v44, @"NO", @"isStudent");
  }

  if (objc_msgSend_hasManagedAccount(self, v45, v46))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v47, @"YES", @"hasManagedAccount");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v47, @"NO", @"hasManagedAccount");
  }

  if (objc_msgSend_hasEDUAccount(self, v48, v49))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v50, @"YES", @"hasEDUAccount");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v50, @"NO", @"hasEDUAccount");
  }

  if (objc_msgSend_hasUbiquityEnabled(self, v51, v52))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v53, @"YES", @"hasUbiquityEnabled");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v53, @"NO", @"hasUbiquityEnabled");
  }

  if (objc_msgSend_organizationProgressTrackingAllowed(self, v54, v55))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v56, @"YES", @"organizationProgressTrackingAllowed");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v56, @"NO", @"organizationProgressTrackingAllowed");
  }

  if (objc_msgSend_organizationMaidAnalyticsEnabled(self, v57, v58))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v59, @"YES", @"organizationMaidAnalyticsEnabled");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v59, @"NO", @"organizationMaidAnalyticsEnabled");
  }

  if (objc_msgSend_personMaidAnalyticsEnabled(self, v60, v61))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v62, @"YES", @"personMaidAnalyticsEnabled");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v62, @"NO", @"personMaidAnalyticsEnabled");
  }

  v65 = objc_msgSend_catalogEnvironment(self, v63, v64);
  v67 = NSStringFromClassKitCatalogEnvironment(v65, v66);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v68, v67, @"catalogEnvironment");

  v71 = objc_msgSend_rosterServiceAuthenticationState(self, v69, v70);
  v73 = NSStringFromCLSAuthenticationState(v71, v72);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v74, v73, @"rosterServiceAuthenticationState");

  v77 = objc_msgSend_handoutServiceAuthenticationState(self, v75, v76);
  v79 = NSStringFromCLSAuthenticationState(v77, v78);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v80, v79, @"handoutServiceAuthenticationState");

  v83 = objc_msgSend_iCloudDriveAuthenticationState(self, v81, v82);
  v85 = NSStringFromCLSAuthenticationState(v83, v84);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v86, v85, @"iCloudDriveAuthenticationState");

  v89 = objc_msgSend_schoolworkUbiquitousContainerURL(self, v87, v88);
  v92 = objc_msgSend_path(v89, v90, v91);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v93, v92, @"schoolworkUbiquitousContainerURL");

  v96 = objc_msgSend_schoolworkUbiquitousContainerError(self, v94, v95);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v97, v96, @"schoolworkUbiquitousContainerError");

  v100 = objc_msgSend_orgAdminUserRecordID(self, v98, v99);
  v103 = objc_msgSend_description(v100, v101, v102);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v104, v103, @"orgAdminUserRecordID");

  v107 = objc_msgSend_orgAdminUserFetchError(self, v105, v106);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v108, v107, @"orgAdminUserFetchError");

  v111 = objc_msgSend_userRecordID(self, v109, v110);
  v114 = objc_msgSend_description(v111, v112, v113);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v115, v114, @"userRecordID");

  v118 = objc_msgSend_userFetchError(self, v116, v117);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v119, v118, @"userFetchError");

  v122 = objc_msgSend_multimediaCacheDirectoryURL(self, v120, v121);
  v125 = objc_msgSend_path(v122, v123, v124);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v126, v125, @"multimediaCacheDirectoryURL");

  v129 = objc_msgSend_multimediaCacheDirectoryURLError(self, v127, v128);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v130, v129, @"multimediaCacheDirectoryURLError");

  if (objc_msgSend_allowSharingOutsideOrg(self, v131, v132))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v133, @"YES", @"allowSharingOutsideOrg");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v133, @"NO", @"allowSharingOutsideOrg");
  }

  if (objc_msgSend_classroomClassicAdHocModeEnabled(self, v134, v135))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v136, @"YES", @"classroomClassicAdHocModeEnabled");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v136, @"NO", @"classroomClassicAdHocModeEnabled");
  }

  return v3;
}

@end