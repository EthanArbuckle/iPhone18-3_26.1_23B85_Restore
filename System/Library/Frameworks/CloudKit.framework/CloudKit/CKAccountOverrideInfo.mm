@interface CKAccountOverrideInfo
+ (id)anonymousAccount;
+ (id)liveAccount;
- (ACAccount)account;
- (BOOL)getAccount:(id *)a3 error:(id *)a4;
- (BOOL)getPersona:(id *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (CKAccountOverrideInfo)initWithAccount:(id)a3;
- (CKAccountOverrideInfo)initWithCoder:(id)a3;
- (CKAccountOverrideInfo)initWithSqliteRepresentation:(id)a3;
- (NSString)uniqueID;
- (id)CKPropertiesDescription;
- (id)_initWithEmail:(id)a3 password:(id)a4 recoveryKey:(id)a5 secondEmail:(id)a6 accountID:(id)a7 altDSID:(id)a8 accountPropertyOverrides:(id)a9 overridesByDataclass:(id)a10;
- (id)copyWithAccountPropertyOverrides:(id)a3 overridesByDataclass:(id)a4;
- (id)sqliteRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKAccountOverrideInfo

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 4);
  v6 = objc_msgSend_accountID(self, v4, v5);

  if (v6)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_msgSend_accountID(self, v7, v8);
    v12 = objc_msgSend_stringWithFormat_(v9, v11, @"accountID=%@", v10);
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_altDSID(self, v7, v8);

  if (v14)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_msgSend_altDSID(self, v15, v16);
    v20 = objc_msgSend_stringWithFormat_(v17, v19, @"altDSID=%@", v18);
    objc_msgSend_addObject_(v3, v21, v20);
  }

  v22 = objc_msgSend_email(self, v15, v16);

  if (v22)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_msgSend_email(self, v23, v24);
    v28 = objc_msgSend_stringWithFormat_(v25, v27, @"email=%@", v26);
    objc_msgSend_addObject_(v3, v29, v28);
  }

  v30 = objc_msgSend_secondEmail(self, v23, v24);

  if (v30)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_msgSend_secondEmail(self, v31, v32);
    v36 = objc_msgSend_stringWithFormat_(v33, v35, @"secondEmail=%@", v34);
    objc_msgSend_addObject_(v3, v37, v36);
  }

  v38 = objc_msgSend_accountPropertyOverrides(self, v31, v32);
  v41 = objc_msgSend_count(v38, v39, v40);

  if (v41)
  {
    v44 = MEMORY[0x1E696AEC0];
    v45 = objc_msgSend_accountPropertyOverrides(self, v42, v43);
    v47 = objc_msgSend_stringWithFormat_(v44, v46, @"customProps=%@", v45);
    objc_msgSend_addObject_(v3, v48, v47);
  }

  v49 = objc_msgSend_overridesByDataclass(self, v42, v43);
  v52 = objc_msgSend_count(v49, v50, v51);

  if (v52)
  {
    v55 = MEMORY[0x1E696AEC0];
    v56 = objc_msgSend_overridesByDataclass(self, v53, v54);
    v58 = objc_msgSend_stringWithFormat_(v55, v57, @"customPropsByDataclass=%@", v56);
    objc_msgSend_addObject_(v3, v59, v58);
  }

  v60 = objc_msgSend_componentsJoinedByString_(v3, v53, @", ");

  return v60;
}

- (CKAccountOverrideInfo)initWithAccount:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKAccountOverrideInfo.m", 62, @"Invalid parameter not satisfying: %@", @"account");
  }

  v8 = objc_msgSend_identifier(v7, v5, v6);
  v10 = objc_msgSend_initWithAccountID_(self, v9, v8);

  if (v10)
  {
    v13 = objc_msgSend_copy(v7, v11, v12);
    account = v10->_account;
    v10->_account = v13;
  }

  return v10;
}

- (id)_initWithEmail:(id)a3 password:(id)a4 recoveryKey:(id)a5 secondEmail:(id)a6 accountID:(id)a7 altDSID:(id)a8 accountPropertyOverrides:(id)a9 overridesByDataclass:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v58.receiver = self;
  v58.super_class = CKAccountOverrideInfo;
  v26 = [(CKAccountOverrideInfo *)&v58 init];
  if (v26)
  {
    v27 = objc_msgSend_copy(v16, v24, v25);
    email = v26->_email;
    v26->_email = v27;

    v31 = objc_msgSend_copy(v17, v29, v30);
    password = v26->_password;
    v26->_password = v31;

    v35 = objc_msgSend_copy(v18, v33, v34);
    recoveryKey = v26->_recoveryKey;
    v26->_recoveryKey = v35;

    v39 = objc_msgSend_copy(v19, v37, v38);
    secondEmail = v26->_secondEmail;
    v26->_secondEmail = v39;

    v43 = objc_msgSend_copy(v20, v41, v42);
    accountID = v26->_accountID;
    v26->_accountID = v43;

    v47 = objc_msgSend_copy(v21, v45, v46);
    altDSID = v26->_altDSID;
    v26->_altDSID = v47;

    v51 = objc_msgSend_CKDeepCopy(v22, v49, v50);
    accountPropertyOverrides = v26->_accountPropertyOverrides;
    v26->_accountPropertyOverrides = v51;

    v55 = objc_msgSend_CKDeepCopy(v23, v53, v54);
    overridesByDataclass = v26->_overridesByDataclass;
    v26->_overridesByDataclass = v55;
  }

  return v26;
}

+ (id)anonymousAccount
{
  if (qword_1ED4B64F0 != -1)
  {
    dispatch_once(&qword_1ED4B64F0, &unk_1EFA30610);
  }

  v3 = qword_1ED4B64F8;

  return v3;
}

+ (id)liveAccount
{
  if (qword_1ED4B6500 != -1)
  {
    dispatch_once(&qword_1ED4B6500, &unk_1EFA30630);
  }

  v3 = qword_1ED4B6508;

  return v3;
}

- (NSString)uniqueID
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, self, 0, 0);
  memset(v17, 0, sizeof(v17));
  v4 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v3, v17, 32, 0);
  v5 = v2;
  v8 = objc_msgSend_bytes(v5, v6, v7);
  v11 = objc_msgSend_length(v2, v9, v10);
  CC_SHA256(v8, v11, v17);
  v14 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v4, v12, v13);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (ACAccount)account
{
  v4 = 0;
  objc_msgSend_getAccount_error_(self, a2, &v4, 0);
  v2 = v4;

  return v2;
}

- (BOOL)getAccount:(id *)a3 error:(id *)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v7 = self;
  objc_sync_enter(v7);
  account = v7->_account;
  if (!account)
  {
    v12 = objc_msgSend_accountID(v7, v8, v9);
    v15 = objc_msgSend_altDSID(v7, v13, v14);
    v18 = v15;
    v11 = (v12 | v15) == 0;
    if (!(v12 | v15))
    {
LABEL_32:

      goto LABEL_33;
    }

    if (v12)
    {
      v19 = objc_msgSend_defaultStore(MEMORY[0x1E6959A48], v16, v17);
      v36 = 0;
      v21 = objc_msgSend_accountWithIdentifier_error_(v19, v20, v12, &v36);
      v22 = v36;

      if (!v21)
      {
        v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"identifier %@", v12);
        goto LABEL_20;
      }
    }

    else if (v15)
    {
      v25 = objc_msgSend_defaultStore(MEMORY[0x1E6959A48], v16, v17);
      v21 = objc_msgSend_aa_appleAccountWithAltDSID_(v25, v26, v18);

      if (!v21)
      {
        v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v27, @"altDSID %@", v18);
        v22 = 0;
LABEL_20:
        v21 = 0;
        if (!a3)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v22 = 0;
    }

    else
    {
      v22 = 0;
      v21 = 0;
    }

    v24 = 0;
    if (!a3)
    {
LABEL_22:
      v4 = v21 != 0;
      if (!v21)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v29 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1883EA000, v29, OS_LOG_TYPE_ERROR, "Found nil account instance, which indicates the adopter probably has neither com.apple.accounts.appleaccount.fullaccess entitlement or com.apple.private.accounts.allaccounts entitlement", buf, 2u);
          if (a4)
          {
            goto LABEL_27;
          }
        }

        else if (a4)
        {
LABEL_27:
          if (v22)
          {
            v37 = *MEMORY[0x1E696AA08];
            v38[0] = v22;
            v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v38, &v37, 1);
            objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v32, @"CKInternalErrorDomain", 1002, v31, @"Account with %@ not found", v24);
          }

          else
          {
            v31 = 0;
            objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v30, @"CKInternalErrorDomain", 1002, 0, @"Account with %@ not found", v24);
          }
          *a4 = ;
        }
      }

      goto LABEL_32;
    }

LABEL_21:
    v28 = v21;
    *a3 = v21;
    goto LABEL_22;
  }

  v11 = 0;
  if (a3)
  {
    *a3 = account;
  }

  v4 = 1;
LABEL_33:
  objc_sync_exit(v7);

  v33 = *MEMORY[0x1E69E9840];
  return v11 || v4;
}

- (id)copyWithAccountPropertyOverrides:(id)a3 overridesByDataclass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_email(self, v8, v9);
  v13 = objc_msgSend_password(self, v11, v12);
  v16 = objc_msgSend_recoveryKey(self, v14, v15);
  v19 = objc_msgSend_secondEmail(self, v17, v18);
  v22 = objc_msgSend_accountID(self, v20, v21);
  v27 = objc_msgSend_altDSID(self, v23, v24);
  v28 = v6;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    objc_msgSend_overridesByDataclass(self, v25, v26);
    v35 = v7;
    v31 = v13;
    v33 = v32 = v10;
    v29 = objc_msgSend__initWithEmail_password_recoveryKey_secondEmail_accountID_altDSID_accountPropertyOverrides_overridesByDataclass_(v36, v34, v32, v31, v16, v19, v22, v27, v28, v33);

    v10 = v32;
    v13 = v31;
    v7 = v35;
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v28 = objc_msgSend_accountPropertyOverrides(self, v25, v26);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  v29 = objc_msgSend__initWithEmail_password_recoveryKey_secondEmail_accountID_altDSID_accountPropertyOverrides_overridesByDataclass_(v36, v25, v10, v13, v16, v19, v22, v27, v28, v7);
  if (!v6)
  {
LABEL_4:
  }

LABEL_5:

  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v61 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_accountID(self, v6, v7);
      v11 = objc_msgSend_accountID(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (!v12)
      {
        goto LABEL_13;
      }

      v15 = objc_msgSend_altDSID(self, v13, v14);
      v18 = objc_msgSend_altDSID(v5, v16, v17);
      v19 = CKObjectsAreBothNilOrEqual(v15, v18);

      if (!v19)
      {
        goto LABEL_13;
      }

      v22 = objc_msgSend_email(self, v20, v21);
      v25 = objc_msgSend_email(v5, v23, v24);
      v26 = CKObjectsAreBothNilOrEqual(v22, v25);

      if (!v26)
      {
        goto LABEL_13;
      }

      v29 = objc_msgSend_secondEmail(self, v27, v28);
      v32 = objc_msgSend_secondEmail(v5, v30, v31);
      v33 = CKObjectsAreBothNilOrEqual(v29, v32);

      if (!v33)
      {
        goto LABEL_13;
      }

      v36 = objc_msgSend_password(self, v34, v35);
      v39 = objc_msgSend_password(v5, v37, v38);
      v40 = CKObjectsAreBothNilOrEqual(v36, v39);

      if (!v40)
      {
        goto LABEL_13;
      }

      v43 = objc_msgSend_recoveryKey(self, v41, v42);
      v46 = objc_msgSend_recoveryKey(v5, v44, v45);
      v47 = CKObjectsAreBothNilOrEqual(v43, v46);

      if (!v47)
      {
        goto LABEL_13;
      }

      v50 = objc_msgSend_accountPropertyOverrides(self, v48, v49);
      v53 = objc_msgSend_accountPropertyOverrides(v5, v51, v52);
      v54 = CKObjectsAreBothNilOrEqual(v50, v53);

      if (v54)
      {
        v57 = objc_msgSend_overridesByDataclass(self, v55, v56);
        v60 = objc_msgSend_overridesByDataclass(v5, v58, v59);
        v61 = CKObjectsAreBothNilOrEqual(v57, v60);
      }

      else
      {
LABEL_13:
        v61 = 0;
      }
    }

    else
    {
      v61 = 0;
    }
  }

  return v61;
}

- (BOOL)getPersona:(id *)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_1883EE23C;
  v65 = sub_1883EF7C4;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_1883EE23C;
  v59 = sub_1883EF7C4;
  v60 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1886A17F4;
  aBlock[3] = &unk_1E70C1758;
  aBlock[6] = a3;
  aBlock[7] = a4;
  aBlock[4] = &v61;
  aBlock[5] = &v55;
  v5 = _Block_copy(aBlock);
  if (objc_msgSend_isSupported(CKPersona, v6, v7))
  {
    v9 = (v56 + 5);
    obj = v56[5];
    v53 = 0;
    Account_error = objc_msgSend_getAccount_error_(self, v8, &v53, &obj);
    v11 = v53;
    objc_storeStrong(v9, obj);
    if (Account_error)
    {
      if (v11)
      {
        v15 = (v62 + 5);
        v14 = v62[5];
        v16 = v56;
        v50 = v56[5];
        v51 = v14;
        Persona_error = objc_msgSend_ck_getPersona_error_(v11, v12, &v51, &v50);
        objc_storeStrong(v15, v51);
        v18 = v50;
        v19 = v16[5];
        v16[5] = v18;
      }

      else
      {
        if (__sTestOverridesAvailable[0] != 1)
        {
          goto LABEL_20;
        }

        v22 = objc_msgSend_email(self, v12, v13);
        if (!v22)
        {
          goto LABEL_20;
        }

        v23 = objc_msgSend_accountPropertyOverrides(self, v20, v21);
        v24 = *MEMORY[0x1E69597A0];
        v26 = objc_msgSend_objectForKeyedSubscript_(v23, v25, *MEMORY[0x1E69597A0]);
        v27 = v26 == 0;

        if (v27)
        {
LABEL_20:
          Persona_error = 1;
          goto LABEL_21;
        }

        v30 = objc_msgSend_accountPropertyOverrides(self, v28, v29);
        v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, v24);
        v35 = objc_msgSend_copy(v32, v33, v34);
        v19 = objc_msgSend_CKNilIfEmpty(v35, v36, v37);

        if (v19)
        {
          v49 = 0;
          v39 = objc_msgSend_personaWithIdentifier_error_(CKPersona, v38, v19, &v49);
          v40 = v49;
          v41 = v62[5];
          v62[5] = v39;

          if (!v62[5])
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v42 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v68 = v40;
              _os_log_debug_impl(&dword_1883EA000, v42, OS_LOG_TYPE_DEBUG, "Unable to fetch persona with error: %@", buf, 0xCu);
            }

            v43 = [CKPersona alloc];
            v45 = objc_msgSend_initWithIdentifier_type_(v43, v44, v19, 0);
            v46 = v62[5];
            v62[5] = v45;
          }
        }

        Persona_error = 1;
      }
    }

    else
    {
      Persona_error = 0;
    }

LABEL_21:

    goto LABEL_22;
  }

  Persona_error = 1;
LABEL_22:
  v5[2](v5);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  v47 = *MEMORY[0x1E69E9840];
  return Persona_error;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_email(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_secondEmail(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_password(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_recoveryKey(self, v20, v21);
  v25 = v13 ^ v19 ^ objc_msgSend_hash(v22, v23, v24);
  v28 = objc_msgSend_accountID(self, v26, v27);
  v31 = objc_msgSend_hash(v28, v29, v30);
  v34 = objc_msgSend_altDSID(self, v32, v33);
  v37 = v31 ^ objc_msgSend_hash(v34, v35, v36);
  v40 = objc_msgSend_accountPropertyOverrides(self, v38, v39);
  v43 = v25 ^ v37 ^ objc_msgSend_hash(v40, v41, v42);
  v46 = objc_msgSend_overridesByDataclass(self, v44, v45);
  v49 = objc_msgSend_hash(v46, v47, v48);

  return v43 ^ v49;
}

- (void)encodeWithCoder:(id)a3
{
  v37 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_accountID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v37, v8, v7, @"AccountID");

  v11 = objc_msgSend_altDSID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v37, v12, v11, @"AltDSID");

  v15 = objc_msgSend_email(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v37, v16, v15, @"Email");

  v19 = objc_msgSend_secondEmail(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v37, v20, v19, @"SecondEmail");

  v23 = objc_msgSend_password(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(v37, v24, v23, @"Password");

  v27 = objc_msgSend_recoveryKey(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(v37, v28, v27, @"RecoveryKey");

  v31 = objc_msgSend_accountPropertyOverrides(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(v37, v32, v31, @"AccountPropertyOverrides");

  v35 = objc_msgSend_overridesByDataclass(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(v37, v36, v35, @"OverridesByDataclass");

  objc_autoreleasePoolPop(v4);
}

- (CKAccountOverrideInfo)initWithCoder:(id)a3
{
  v51[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = CKAccountOverrideInfo;
  v5 = [(CKAccountOverrideInfo *)&v49 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"AccountID");
    accountID = v5->_accountID;
    v5->_accountID = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"AltDSID");
    altDSID = v5->_altDSID;
    v5->_altDSID = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"Email");
    email = v5->_email;
    v5->_email = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"SecondEmail");
    secondEmail = v5->_secondEmail;
    v5->_secondEmail = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"Password");
    password = v5->_password;
    v5->_password = v25;

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v28, v27, @"RecoveryKey");
    recoveryKey = v5->_recoveryKey;
    v5->_recoveryKey = v29;

    v31 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v32, v51, 2);
    v35 = objc_msgSend_setWithArray_(v31, v34, v33);
    v37 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v36, v35, @"AccountPropertyOverrides");
    accountPropertyOverrides = v5->_accountPropertyOverrides;
    v5->_accountPropertyOverrides = v37;

    v39 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v40, v50, 2);
    v43 = objc_msgSend_setWithArray_(v39, v42, v41);
    v45 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v44, v43, @"OverridesByDataclass");
    overridesByDataclass = v5->_overridesByDataclass;
    v5->_overridesByDataclass = v45;

    objc_autoreleasePoolPop(v6);
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)sqliteRepresentation
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v6 = objc_msgSend_accountID(self, v4, v5);
  v7 = NSStringFromSelector(sel_accountID);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v8, v6, v7);

  v11 = objc_msgSend_altDSID(self, v9, v10);
  v12 = NSStringFromSelector(sel_altDSID);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v13, v11, v12);

  v16 = objc_msgSend_email(self, v14, v15);
  v17 = NSStringFromSelector(sel_email);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v18, v16, v17);

  v21 = objc_msgSend_secondEmail(self, v19, v20);
  v22 = NSStringFromSelector(sel_secondEmail);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v23, v21, v22);

  v26 = objc_msgSend_password(self, v24, v25);
  v27 = NSStringFromSelector(sel_password);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v28, v26, v27);

  v31 = objc_msgSend_recoveryKey(self, v29, v30);
  v32 = NSStringFromSelector(sel_recoveryKey);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v33, v31, v32);

  v36 = objc_msgSend_accountPropertyOverrides(self, v34, v35);
  v37 = NSStringFromSelector(sel_accountPropertyOverrides);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v38, v36, v37);

  v41 = objc_msgSend_overridesByDataclass(self, v39, v40);
  v42 = NSStringFromSelector(sel_overridesByDataclass);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v43, v41, v42);

  v53 = 0;
  v45 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v44, v3, 0, &v53);
  v46 = v53;
  if (v46)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v47 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v46;
      _os_log_error_impl(&dword_1883EA000, v47, OS_LOG_TYPE_ERROR, "Error converting CKAccountOverrideInfo to JSON: %@", buf, 0xCu);
    }
  }

  v48 = objc_alloc(MEMORY[0x1E696AEC0]);
  v50 = objc_msgSend_initWithData_encoding_(v48, v49, v45, 4);

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

- (CKAccountOverrideInfo)initWithSqliteRepresentation:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_dataUsingEncoding_(v4, v7, 4);
    v50 = 0;
    v10 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v9, v8, 0, &v50);
    v11 = v50;
    if (v11 || !v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v46 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v11;
        _os_log_error_impl(&dword_1883EA000, v46, OS_LOG_TYPE_ERROR, "Error converting JSON data to CKAccountOverrideInfo: %@", buf, 0xCu);
      }

      v45 = 0;
    }

    else
    {
      v49.receiver = self;
      v49.super_class = CKAccountOverrideInfo;
      v12 = [(CKAccountOverrideInfo *)&v49 init];
      if (v12)
      {
        v13 = NSStringFromSelector(sel_accountID);
        v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);
        accountID = v12->_accountID;
        v12->_accountID = v15;

        v17 = NSStringFromSelector(sel_altDSID);
        v19 = objc_msgSend_objectForKeyedSubscript_(v10, v18, v17);
        altDSID = v12->_altDSID;
        v12->_altDSID = v19;

        v21 = NSStringFromSelector(sel_email);
        v23 = objc_msgSend_objectForKeyedSubscript_(v10, v22, v21);
        email = v12->_email;
        v12->_email = v23;

        v25 = NSStringFromSelector(sel_secondEmail);
        v27 = objc_msgSend_objectForKeyedSubscript_(v10, v26, v25);
        secondEmail = v12->_secondEmail;
        v12->_secondEmail = v27;

        v29 = NSStringFromSelector(sel_password);
        v31 = objc_msgSend_objectForKeyedSubscript_(v10, v30, v29);
        password = v12->_password;
        v12->_password = v31;

        v33 = NSStringFromSelector(sel_recoveryKey);
        v35 = objc_msgSend_objectForKeyedSubscript_(v10, v34, v33);
        recoveryKey = v12->_recoveryKey;
        v12->_recoveryKey = v35;

        v37 = NSStringFromSelector(sel_accountPropertyOverrides);
        v39 = objc_msgSend_objectForKeyedSubscript_(v10, v38, v37);
        accountPropertyOverrides = v12->_accountPropertyOverrides;
        v12->_accountPropertyOverrides = v39;

        v41 = NSStringFromSelector(sel_overridesByDataclass);
        v43 = objc_msgSend_objectForKeyedSubscript_(v10, v42, v41);
        overridesByDataclass = v12->_overridesByDataclass;
        v12->_overridesByDataclass = v43;
      }

      self = v12;
      v45 = self;
    }
  }

  else
  {
    v45 = 0;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v45;
}

@end