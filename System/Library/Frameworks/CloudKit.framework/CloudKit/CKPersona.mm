@interface CKPersona
+ (BOOL)getOriginatorPersona:(id *)persona error:(id *)error;
+ (BOOL)getProximatePersona:(id *)persona error:(id *)error;
+ (BOOL)isSupported;
+ (CKPersona)currentPersona;
+ (CKPersona)launchPersona;
+ (CKPersona)personaWithIdentifier:(id)identifier error:(id *)error;
+ (CKPersona)personaWithIdentifier:(id)identifier type:(unint64_t)type;
+ (id)personaFromPersonaInfo:(proc_persona_info *)info error:(id *)error;
+ (id)personaFromUserPersona:(id)persona;
+ (id)personaFromUserPersonaAttributes:(id)attributes;
+ (id)personas:(id *)personas;
+ (id)personasWithType:(unint64_t)type error:(id *)error;
+ (id)processInfo;
+ (id)userManager;
+ (void)setProcessInfo:(id)info;
+ (void)setUserManager:(id)manager;
- (BOOL)canAdopt;
- (BOOL)isCurrentPersona;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToPersona:(id)persona;
- (BOOL)isLaunchPersona;
- (CKPersona)initWithCoder:(id)coder;
- (CKPersona)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)adopt:(id *)adopt;
- (int64_t)isDataSeparated;
- (unint64_t)hash;
- (unint64_t)type;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)encodeWithCoder:(id)coder;
- (void)performBlock:(id)block;
- (void)restore:(id)restore;
@end

@implementation CKPersona

- (unint64_t)type
{
  if (self->_type <= 5)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

+ (CKPersona)currentPersona
{
  v4 = objc_msgSend_currentPersona(MEMORY[0x1E69DF078], a2, v2);
  v6 = objc_msgSend_personaFromUserPersona_(self, v5, v4);

  return v6;
}

+ (BOOL)isSupported
{
  v4 = objc_msgSend_processInfo(self, a2, v2);
  v7 = objc_msgSend_sessionType(v4, v5, v6);

  if (v7 == 1)
  {
    return 0;
  }

  v11 = objc_msgSend_userManager(self, v8, v9);
  isSharedIPad = objc_msgSend_isSharedIPad(v11, v12, v13);

  return isSharedIPad ^ 1;
}

- (int64_t)isDataSeparated
{
  v3 = objc_msgSend_type(self, a2, v2);
  if ((v3 - 1) > 4)
  {
    return -1;
  }

  else
  {
    return qword_1886FEA90[v3 - 1];
  }
}

+ (id)processInfo
{
  if (__sTestOverridesAvailable[0] == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (qword_1EA919BA8)
    {
      v4 = qword_1EA919BA8;
      objc_sync_exit(selfCopy);

      goto LABEL_6;
    }

    objc_sync_exit(selfCopy);
  }

  v4 = objc_msgSend_processInfo(CKProcessInfo, a2, v2);
LABEL_6:

  return v4;
}

+ (void)setProcessInfo:(id)info
{
  infoCopy = info;
  if (__sTestOverridesAvailable[0] == 1)
  {
    v7 = infoCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&qword_1EA919BA8, info);
    objc_sync_exit(selfCopy);

    infoCopy = v7;
  }
}

+ (id)userManager
{
  if (__sTestOverridesAvailable[0] == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (qword_1EA919BB0)
    {
      v4 = qword_1EA919BB0;
      objc_sync_exit(selfCopy);

      goto LABEL_6;
    }

    objc_sync_exit(selfCopy);
  }

  v4 = objc_msgSend_sharedManager(MEMORY[0x1E69DF068], a2, v2);
LABEL_6:

  return v4;
}

+ (void)setUserManager:(id)manager
{
  managerCopy = manager;
  if (__sTestOverridesAvailable[0] == 1)
  {
    v7 = managerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&qword_1EA919BB0, manager);
    objc_sync_exit(selfCopy);

    managerCopy = v7;
  }
}

+ (CKPersona)launchPersona
{
  v4 = objc_msgSend_launchPersona(MEMORY[0x1E69DF078], a2, v2);
  v6 = objc_msgSend_personaFromUserPersona_(self, v5, v4);

  return v6;
}

+ (BOOL)getOriginatorPersona:(id *)persona error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  if (persona)
  {
    *persona = 0;
  }

  if (error)
  {
    *error = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  if (voucher_get_current_persona_originator_info() || DWORD1(v15) == -1)
  {
    if (persona)
    {
      *persona = objc_msgSend_launchPersona(self, v7, v8);
    }

    v10 = 1;
  }

  else
  {
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v9 = objc_msgSend_personaFromPersonaInfo_error_(self, v7, v13, error);
    v10 = v9 != 0;
    if (persona && v9)
    {
      v9 = v9;
      *persona = v9;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)getProximatePersona:(id *)persona error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  if (persona)
  {
    *persona = 0;
  }

  if (error)
  {
    *error = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  if (voucher_get_current_persona_proximate_info() || DWORD1(v15) == -1)
  {
    if (persona)
    {
      *persona = objc_msgSend_launchPersona(self, v7, v8);
    }

    v10 = 1;
  }

  else
  {
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v9 = objc_msgSend_personaFromPersonaInfo_error_(self, v7, v13, error);
    v10 = v9 != 0;
    if (persona && v9)
    {
      v9 = v9;
      *persona = v9;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)personaFromPersonaInfo:(proc_persona_info *)info error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 2;
  persona_id = info->persona_id;
  if (kpersona_info())
  {
    v10 = objc_msgSend_sharedOptions(CKBehaviorOptions, v8, v9);
    PersonaAttributes = objc_msgSend_allowsFetchPersonaAttributes(v10, v11, v12);

    if (PersonaAttributes)
    {
      v16 = objc_msgSend_sharedManager(MEMORY[0x1E69DF068], v14, v15);
      v35 = 0;
      v18 = objc_msgSend_listAllPersonaAttributesWithError_(v16, v17, &v35);
      v19 = v35;

      if (!v18 || v19)
      {
        if (error)
        {
          v32 = v19;
          v26 = 0;
          *error = v19;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_1886BBE14;
        v36[3] = &unk_1E70C1E40;
        v21 = *&info->pidversion;
        v37 = *&info->unique_pid;
        v38 = v21;
        v39 = *info->macho_uuid;
        v23 = objc_msgSend_CKFirstObjectPassingTest_(v18, v20, v36);
        if (v23)
        {
          v24 = objc_msgSend_personaFromUserPersonaAttributes_(self, v22, v23);
          v26 = v24;
          if (v24)
          {
            v27 = v24;
          }

          else if (error)
          {
            *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKInternalErrorDomain", 2003, @"Failed to resolve persona from persona attributes: %@", v23);
          }
        }

        else if (error)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKInternalErrorDomain", 2003, @"Failed to fetch persona %u", info->persona_id);
          *error = v26 = 0;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKInternalErrorDomain", 2027, @"Fetching persona attributes is not supported per behavior options");
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v28 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v8, &v46[4], 4);
    if ((DWORD1(v41) - 2) > 4)
    {
      v29 = 0;
    }

    else
    {
      v29 = qword_1886FEA30[DWORD1(v41) - 2];
    }

    v30 = [CKPersona alloc];
    v26 = objc_msgSend_initWithIdentifier_type_(v30, v31, v28, v29);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)personaFromUserPersona:(id)persona
{
  personaCopy = persona;
  v8 = objc_msgSend_userPersonaUniqueString(personaCopy, v6, v7);
  v11 = objc_msgSend_userPersonaType(personaCopy, v9, v10);
  v13 = objc_msgSend_personaWithIdentifier_type_(self, v12, v8, v11);

  isDataSeparated = objc_msgSend_isDataSeparated(v13, v14, v15);
  LODWORD(v8) = CKBoolFromCKTernary(isDataSeparated, v17, v18);
  isDataSeparatedPersona = objc_msgSend_isDataSeparatedPersona(personaCopy, v19, v20);

  if (v8 != isDataSeparatedPersona)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKPersona.m", 304, @"Incorrect data separation state detected");
  }

  return v13;
}

+ (id)personaFromUserPersonaAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8 = objc_msgSend_userPersonaUniqueString(attributesCopy, v6, v7);
  v11 = objc_msgSend_userPersonaType(attributesCopy, v9, v10);
  v13 = objc_msgSend_personaWithIdentifier_type_(self, v12, v8, v11);

  if (v13)
  {
    isDataSeparated = objc_msgSend_isDataSeparated(v13, v14, v15);
    v19 = CKBoolFromCKTernary(isDataSeparated, v17, v18);
    if (v19 != objc_msgSend_isDataSeparatedPersona(attributesCopy, v20, v21))
    {
      v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v22, v23);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKPersona.m", 314, @"Incorrect data separation state detected");
    }
  }

  return v13;
}

+ (CKPersona)personaWithIdentifier:(id)identifier type:(unint64_t)type
{
  if (identifier)
  {
    if (type > 6)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_1886FEA58[type];
    }

    identifierCopy = identifier;
    v8 = [self alloc];
    v6 = objc_msgSend_initWithIdentifier_type_(v8, v9, identifierCopy, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)personas:(id *)personas
{
  v4 = objc_msgSend_sharedOptions(CKBehaviorOptions, a2, personas);
  PersonaAttributes = objc_msgSend_allowsFetchPersonaAttributes(v4, v5, v6);

  if (PersonaAttributes)
  {
    v10 = objc_msgSend_sharedManager(MEMORY[0x1E69DF068], v8, v9);
    v19 = 0;
    v12 = objc_msgSend_listAllPersonaAttributesWithError_(v10, v11, &v19);
    v13 = v19;

    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v17 = objc_msgSend_CKCompactMap_(v12, v14, &unk_1EFA307F0);
    }

    else if (personas)
    {
      v16 = v13;
      v17 = 0;
      *personas = v13;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (personas)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKInternalErrorDomain", 2027, @"Fetching persona attributes is not supported per behavior options");
    *personas = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (CKPersona)personaWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v9 = objc_msgSend_currentPersona(self, v7, v8);
  v12 = objc_msgSend_identifier(v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, identifierCopy);

  if (isEqualToString)
  {
    v17 = v9;
  }

  else
  {
    v18 = objc_msgSend_launchPersona(self, v15, v16);
    v21 = objc_msgSend_identifier(v18, v19, v20);
    v23 = objc_msgSend_isEqualToString_(v21, v22, identifierCopy);

    if (v23)
    {
      v17 = v18;
    }

    else
    {
      v26 = objc_msgSend_sharedOptions(CKBehaviorOptions, v24, v25);
      PersonaAttributes = objc_msgSend_allowsFetchPersonaAttributes(v26, v27, v28);

      if (PersonaAttributes)
      {
        v32 = objc_msgSend_personaAttributesForPersonaUniqueString_withError_(MEMORY[0x1E69DF088], v30, identifierCopy, error);
        if (v32)
        {
          v17 = objc_msgSend_personaFromUserPersonaAttributes_(self, v31, v32);
        }

        else
        {
          v17 = 0;
        }
      }

      else if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v30, @"CKInternalErrorDomain", 2027, @"Fetching persona attributes is not supported per behavior options");
        *error = v17 = 0;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  return v17;
}

+ (id)personasWithType:(unint64_t)type error:(id *)error
{
  v5 = objc_msgSend_personas_(self, a2, error);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886BC404;
  v9[3] = &unk_1E70C1E80;
  v9[4] = type;
  v7 = objc_msgSend_CKCompactMap_(v5, v6, v9);

  return v7;
}

- (CKPersona)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKPersona.m", 425, @"Invalid parameter not satisfying: %@", @"identifier");
  }

  v18.receiver = self;
  v18.super_class = CKPersona;
  v12 = [(CKPersona *)&v18 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(identifierCopy, v10, v11);
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v12->_type = type;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_identifier(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_identifier(self, v6, v7);
      v11 = objc_msgSend_identifier(v5, v9, v10);
      isEqualToString = objc_msgSend_isEqualToString_(v8, v12, v11);

      if (isEqualToString)
      {
        if (objc_msgSend_type(self, v14, v15) && objc_msgSend_type(v5, v16, v17))
        {
          v20 = objc_msgSend_type(self, v18, v19);
          v23 = v20 == objc_msgSend_type(v5, v21, v22);
        }

        else
        {
          v23 = 1;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (BOOL)isEquivalentToPersona:(id)persona
{
  personaCopy = persona;
  if ((objc_msgSend_isEqual_(self, v5, personaCopy) & 1) == 0)
  {
    v9 = objc_msgSend_type(self, v6, v7);
    if (v9 == objc_msgSend_type(personaCopy, v10, v11) || objc_msgSend_isDataSeparated(self, v12, v13) == 1 || objc_msgSend_isDataSeparated(personaCopy, v14, v15) == 1)
    {
      isEqualToString = 0;
      goto LABEL_7;
    }

    if (!objc_msgSend_type(self, v16, v17) || !objc_msgSend_type(personaCopy, v19, v20))
    {
      v21 = objc_msgSend_identifier(self, v19, v20);
      v24 = objc_msgSend_identifier(personaCopy, v22, v23);
      isEqualToString = objc_msgSend_isEqualToString_(v21, v25, v24);

      goto LABEL_7;
    }
  }

  isEqualToString = 1;
LABEL_7:

  return isEqualToString;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v6 = objc_msgSend_identifier(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"identifier", v6, 0);

  v11 = objc_msgSend_type(self, v8, v9) - 1;
  if (v11 > 4)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v10, @"type", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v10, @"type", off_1E70C1EA0[v11], 0);
  }

  isLaunchPersona = objc_msgSend_isLaunchPersona(self, v12, v13);
  objc_msgSend_addBooleanProperty_value_(usingCopy, v15, @"launchPersona", isLaunchPersona);
  isCurrentPersona = objc_msgSend_isCurrentPersona(self, v16, v17);
  objc_msgSend_addBooleanProperty_value_(usingCopy, v19, @"currentPersona", isCurrentPersona);
  isDataSeparated = objc_msgSend_isDataSeparated(self, v20, v21);
  v23 = CKTernaryDescription(isDataSeparated);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v24, @"dataSeparated", v23, 0);
}

- (BOOL)isLaunchPersona
{
  v4 = objc_msgSend_launchPersona(CKPersona, a2, v2);
  LOBYTE(self) = objc_msgSend_isEqual_(self, v5, v4);

  return self;
}

- (BOOL)isCurrentPersona
{
  v4 = objc_msgSend_currentPersona(CKPersona, a2, v2);
  LOBYTE(self) = objc_msgSend_isEqual_(self, v5, v4);

  return self;
}

- (BOOL)canAdopt
{
  if (objc_msgSend_isCurrentPersona(self, a2, v2) & 1) != 0 || (objc_msgSend_isLaunchPersona(self, v4, v5))
  {
    v8 = 1;
  }

  else if (objc_msgSend_canUseArbitraryPersonas(CKPersona, v6, v7))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1886BCAAC;
    v11[3] = &unk_1E70BC990;
    v11[4] = &v12;
    objc_msgSend_performBlock_(self, v10, v11);
    v8 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)adopt:(id *)adopt
{
  v42 = *MEMORY[0x1E69E9840];
  if (adopt)
  {
    *adopt = 0;
  }

  v5 = objc_msgSend_sharedManager(MEMORY[0x1E69DF068], a2, adopt);
  v8 = objc_msgSend_currentPersona(v5, v6, v7);

  v37 = 0;
  v10 = objc_msgSend_copyCurrentPersonaContextWithError_(v8, v9, &v37);
  v11 = v37;
  if (v10)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v15 = v12;
      v18 = objc_msgSend_ckShortDescription(self, v16, v17);
      *buf = 138412290;
      v39 = v18;
      _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_INFO, "Restoring persona: %@", buf, 0xCu);
    }

    v19 = objc_msgSend_identifier(self, v13, v14);
    v21 = objc_msgSend_generateAndRestorePersonaContextWithPersonaUniqueString_(v8, v20, v19);

    if (!v21)
    {
      v24 = v10;
      v11 = 0;
      goto LABEL_25;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v27 = v22;
      v30 = objc_msgSend_ckShortDescription(self, v28, v29);
      *buf = 138412546;
      v39 = v30;
      v40 = 2112;
      v41 = v21;
      _os_log_error_impl(&dword_1883EA000, v27, OS_LOG_TYPE_ERROR, "Failed to adopt persona %@, failed to restore persona context: %@", buf, 0x16u);

      if (adopt)
      {
        goto LABEL_13;
      }
    }

    else if (adopt)
    {
LABEL_13:
      v23 = v21;
      v24 = 0;
      *adopt = v21;
LABEL_22:
      v11 = v21;
      goto LABEL_25;
    }

    v24 = 0;
    goto LABEL_22;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v25 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v31 = v25;
    v34 = objc_msgSend_ckShortDescription(self, v32, v33);
    *buf = 138412546;
    v39 = v34;
    v40 = 2112;
    v41 = v11;
    _os_log_error_impl(&dword_1883EA000, v31, OS_LOG_TYPE_ERROR, "Failed to adopt persona %@, failed to copy current context: %@", buf, 0x16u);

    if (adopt)
    {
      goto LABEL_18;
    }
  }

  else if (adopt)
  {
LABEL_18:
    v26 = v11;
    v24 = 0;
    *adopt = v11;
    goto LABEL_25;
  }

  v24 = 0;
LABEL_25:

  v35 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)restore:(id)restore
{
  v18 = *MEMORY[0x1E69E9840];
  restoreCopy = restore;
  v6 = objc_msgSend_sharedManager(MEMORY[0x1E69DF068], v4, v5);
  v9 = objc_msgSend_currentPersona(v6, v7, v8);
  v11 = objc_msgSend_restorePersonaWithSavedPersonaContext_(v9, v10, restoreCopy);

  if (v11)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = restoreCopy;
      v16 = 2112;
      v17 = v11;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Failed to restore persona with context %@: %@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_currentPersona(CKPersona, v5, v6);
  isEqual = objc_msgSend_isEqual_(self, v8, v7);

  if (isEqual)
  {
    blockCopy[2](blockCopy, 0);
  }

  else
  {
    v14 = 0;
    v11 = objc_msgSend_adopt_(self, v10, &v14);
    v12 = v14;
    (blockCopy)[2](blockCopy, v12);
    objc_msgSend_restore_(self, v13, v11);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_identifier(self, v5, v6);
  v8 = NSStringFromSelector(sel_identifier);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  v12 = objc_msgSend_type(self, v10, v11);
  v14 = NSStringFromSelector(sel_type);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v13, v12, v14);
}

- (CKPersona)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v5, v6);

  v9 = NSStringFromSelector(sel_type);
  v11 = objc_msgSend_decodeIntegerForKey_(coderCopy, v10, v9);

  v13 = objc_msgSend_initWithIdentifier_type_(self, v12, v8, v11);
  return v13;
}

@end