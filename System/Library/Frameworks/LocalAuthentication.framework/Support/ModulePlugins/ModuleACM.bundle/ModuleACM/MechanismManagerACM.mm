@interface MechanismManagerACM
+ (MechanismManagerACM)sharedInstance;
- (BOOL)_shouldBindBiometricIdentitiesForMechanism:(id)mechanism request:(id)request;
- (id)_biometricIdentitiesForRequirement:(__ACMRequirement *)requirement request:(id)request error:(id *)error;
- (id)_buildUiForMechanism:(id)mechanism policy:(int64_t)policy internalInfo:(id)info uiDelegate:(id)delegate request:(id)request error:(id *)error;
- (id)_evaluationModeForPolicy:(int64_t)policy;
- (id)_loadACMMechanism:(int64_t)mechanism initParams:(id)params request:(id)request error:(id *)error;
- (id)_loadACMMechanismFromPlugin:(int64_t)plugin acmContextRecord:(id)record internalInfo:(id)info request:(id)request error:(id *)error;
- (id)_nonUiMechanismForACMRequirement:(const __ACMRequirement *)requirement acmContextRecord:(id)record policy:(int64_t)policy internalInfo:(id)info request:(id)request state:(unsigned int *)state error:(id *)error;
- (id)_nonUiSubmechanismsForACMRequirement:(const __ACMRequirement *)requirement acmContextRecord:(id)record policy:(int64_t)policy internalInfo:(id)info request:(id)request requiredCount:(unint64_t *)count error:(id *)error;
- (id)_preferedError:(id)error;
- (id)_prepareInitParamsUsingInternalInfo:(id)info acmContextRecord:(id)record;
- (id)_restrictedNonUiMechanism:(id)mechanism availabilityEvents:(id *)events policy:(int64_t)policy internalInfo:(id)info request:(id)request error:(id *)error;
- (unint64_t)_acmRequirementPropertyFlags:(__ACMRequirement *)flags;
- (void)_mechanismForACMRequirement:(const __ACMRequirement *)requirement acmContextRecord:(id)record policy:(int64_t)policy internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)self0;
- (void)mechanismForApplicationPasswordMode:(int64_t)mode acmContextRecord:(id)record options:(id)options internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)self0;
@end

@implementation MechanismManagerACM

+ (MechanismManagerACM)sharedInstance
{
  if (qword_350E8 != -1)
  {
    sub_190E8();
  }

  v3 = qword_350E0;

  return v3;
}

- (void)_mechanismForACMRequirement:(const __ACMRequirement *)requirement acmContextRecord:(id)record policy:(int64_t)policy internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)self0
{
  recordCopy = record;
  infoCopy = info;
  delegateCopy = delegate;
  requestCopy = request;
  replyCopy = reply;
  payload = [requestCopy payload];
  v20 = [payload mutableCopy];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;

  [v23 setObject:infoCopy forKeyedSubscript:LACEvaluationRequestPayloadKeyInternalInfo];
  [requestCopy updatePayload:v23];
  v70 = 0;
  v69 = 0;
  v24 = [(MechanismManagerACM *)self _nonUiMechanismForACMRequirement:requirement acmContextRecord:recordCopy policy:policy internalInfo:infoCopy request:requestCopy state:&v70 error:&v69];
  v25 = v69;
  objc_opt_class();
  v58 = v23;
  v59 = replyCopy;
  policyCopy = policy;
  if (objc_opt_isKindOfClass())
  {
    v26 = [requestCopy log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v72 = v24;
      _os_log_impl(&def_1FF08, v26, OS_LOG_TYPE_DEFAULT, "resolving reorganizer: %@", buf, 0xCu);
    }

    v76 = v24;
    v27 = [NSArray arrayWithObjects:&v76 count:1];
    v28 = [MechanismKofN mechanismWithK:1 ofSubmechanisms:v27 serial:0 request:requestCopy preserveStandaloneReorganizers:0];

    if (v28)
    {
      replyCopy = v59;
      goto LABEL_16;
    }

    v29 = [LAErrorHelper internalErrorWithMessage:@"No mechanisms after top-level reorganization."];

    v24 = 0;
    v25 = v29;
    replyCopy = v59;
    policy = policyCopy;
  }

  if (policy != 1026 || v24)
  {
    v28 = v24;
  }

  else if ([LAErrorHelper error:v25 hasCode:-1 subcode:6])
  {
    v30 = [MechanismRatchet alloc];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_F370;
    v66[3] = &unk_30E18;
    v67 = infoCopy;
    v68 = recordCopy;
    v31 = sub_F370(v66);
    v28 = [v30 initWithParams:v31 request:requestCopy];
  }

  else
  {
    v28 = 0;
  }

LABEL_16:
  v32 = [requestCopy log];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v72 = v28;
    _os_log_impl(&def_1FF08, v32, OS_LOG_TYPE_INFO, "nonUiMechanism: %{public}@", buf, 0xCu);
  }

  if (v28)
  {
    v55 = recordCopy;
    v56 = delegateCopy;
    v65 = v25;
    v33 = [v28 bestEffortAvailableMechanismForRequest:requestCopy error:&v65];
    v34 = v65;

    if (v33 != v28 && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v72 = v33;
      _os_log_impl(&def_1FF08, v32, OS_LOG_TYPE_INFO, "availableNonUiMechanism: %{public}@", buf, 0xCu);
    }

    if (v33)
    {
      v35 = v33;
      goto LABEL_24;
    }

    if (+[LAErrorHelper error:hasCode:](LAErrorHelper, "error:hasCode:", v34, -8) && [v28 canRecoverFromAvailabilityError:v34 request:requestCopy])
    {
      v64 = v34;
      v41 = v34;
      v42 = [(MechanismManagerACM *)self _loadACMMechanismFromPlugin:2 acmContextRecord:v55 internalInfo:infoCopy request:requestCopy error:&v64];
      v34 = v64;

      if (v42)
      {
        v75[0] = v42;
        v75[1] = v28;
        v43 = [NSArray arrayWithObjects:v75 count:2];
        v44 = [MechanismKofN mechanismWithK:2 ofSubmechanisms:v43 serial:1 request:requestCopy];

        replyCopy = v59;
        [requestCopy setRetryingForError:v41];

        v35 = v44;
        if (v44)
        {
LABEL_24:
          v36 = [v35 availabilityEventsForPurpose:{objc_msgSend(requestCopy, "purpose")}];
          v37 = v36;
          if (v33)
          {
            v62 = v34;
            v63 = v36;
            v38 = [(MechanismManagerACM *)self _restrictedNonUiMechanism:v35 availabilityEvents:&v63 policy:policyCopy internalInfo:infoCopy request:requestCopy error:&v62];
            v39 = v63;
            v40 = v37;
            v37 = v39;

            v25 = v62;
            if (!v38)
            {
              replyCopy[2](replyCopy, 0, v25);
              delegateCopy = v56;
LABEL_48:

              recordCopy = v55;
              goto LABEL_51;
            }

            v53 = v35;
            if (v38 != v35 && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v72 = v38;
              _os_log_impl(&def_1FF08, v32, OS_LOG_TYPE_INFO, "restrictedNonUiMechanism: %{public}@", buf, 0xCu);
            }

            v34 = v25;
          }

          else
          {
            v53 = v35;
            v38 = v35;
          }

          v45 = [infoCopy objectForKeyedSubscript:@"AuditToken"];
          v54 = infoCopy;
          v46 = [infoCopy objectForKeyedSubscript:@"Options"];
          v47 = [v46 objectForKeyedSubscript:&off_32908];
          v48 = [v38 tccPreflightWithAuditTokenData:v45 auditTokenUsage:v47];

          if (v48 && ([v48 BOOLValue] & 1) == 0)
          {
            v49 = [v38 tccError:0];
            v59[2](v59, 0, v49);
            infoCopy = v54;
          }

          else
          {
            v61 = v34;
            infoCopy = v54;
            v49 = [(MechanismManagerACM *)self _buildUiForMechanism:v38 policy:policyCopy internalInfo:v54 uiDelegate:v56 request:requestCopy error:&v61];
            v50 = v61;

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v72 = v49;
              v73 = 2114;
              v74 = v38;
              _os_log_impl(&def_1FF08, v32, OS_LOG_TYPE_DEFAULT, "uiMechanism: %{public}@ nonUiMechanism: %{public}@", buf, 0x16u);
            }

            if (v49)
            {
              mechanismTreeDescription = [v38 mechanismTreeDescription];
              v52 = [[MechanismManagerACMResult alloc] initWithMechanism:v49 availableMechanisms:v37 mechanismTree:mechanismTreeDescription internalInfo:v54];
              (v59)[2](v59, v52, v50);

              infoCopy = v54;
            }

            else
            {
              v59[2](v59, 0, v50);
            }

            v34 = v50;
          }

          v25 = v34;
          delegateCopy = v56;
          replyCopy = v59;
          v35 = v53;
          goto LABEL_48;
        }
      }

      else
      {
      }
    }

    replyCopy[2](replyCopy, 0, v34);
    v25 = v34;
    recordCopy = v55;
    delegateCopy = v56;
    goto LABEL_51;
  }

  replyCopy[2](replyCopy, 0, v25);
LABEL_51:
}

- (void)mechanismForApplicationPasswordMode:(int64_t)mode acmContextRecord:(id)record options:(id)options internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)self0
{
  recordCopy = record;
  optionsCopy = options;
  infoCopy = info;
  requestCopy = request;
  replyCopy = reply;
  v27[0] = @"PasswordMode";
  v18 = [NSNumber numberWithInteger:mode];
  v28[0] = v18;
  v28[1] = recordCopy;
  v27[1] = @"AcmContextRecord";
  v27[2] = @"UserId";
  v19 = [infoCopy objectForKeyedSubscript:?];
  v28[2] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

  v21 = +[MechanismManagerACM sharedInstance];
  v26 = 0;
  v22 = [v21 loadMechanism:2 initParams:v20 request:requestCopy className:@"MechanismPassword" error:&v26];
  v23 = v26;

  if (v22)
  {
    v24 = [optionsCopy objectForKey:&off_32920];
    v25 = [[MechanismUI alloc] initWithNonUiMechanism:v22 eventProcessing:v24 policy:0 internalInfo:infoCopy request:requestCopy];
    replyCopy[2](replyCopy, v25, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v23);
  }
}

- (id)_nonUiMechanismForACMRequirement:(const __ACMRequirement *)requirement acmContextRecord:(id)record policy:(int64_t)policy internalInfo:(id)info request:(id)request state:(unsigned int *)state error:(id *)error
{
  recordCopy = record;
  infoCopy = info;
  requestCopy = request;
  if (!infoCopy || ([infoCopy objectForKeyedSubscript:@"UserId"], v16 = objc_claimAutoreleasedReturnValue(), v16, !recordCopy) || !v16)
  {
    if (error)
    {
      [LAErrorHelper silentInternalErrorWithMessage:@"Bad parameters"];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_113;
  }

  v108[0] = recordCopy;
  v107[0] = @"AcmContextRecord";
  v107[1] = @"UserId";
  v17 = [infoCopy objectForKeyedSubscript:@"UserId"];
  v108[1] = v17;
  v107[2] = @"EvaluationMode";
  v18 = [(MechanismManagerACM *)self _evaluationModeForPolicy:policy];
  v108[2] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:3];
  v79 = [NSMutableDictionary dictionaryWithDictionary:v19];

  v20 = [(MechanismManagerACM *)self _acmRequirementType:requirement];
  v78 = [(MechanismManagerACM *)self _acmRequirementState:requirement];
  if ((v20 & 0xFFFFFFFD) == 1 && (v77 = [(MechanismManagerACM *)self _acmRequirementPropertyFlags:requirement]) != 0)
  {
    [recordCopy setFlags:?];
  }

  else
  {
    LODWORD(v77) = 0;
  }

  if (v20 > 14)
  {
    if (v20 > 25)
    {
      if ((v20 - 26) >= 2)
      {
        goto LABEL_60;
      }

      if (policy != 1026)
      {
        v35 = [NSNumber numberWithInteger:policy];
        v36 = [NSString stringWithFormat:@"Requirement: %d not handled for policy: %@", v20, v35];
        v32 = [LAErrorHelper internalErrorWithMessage:v36];

        goto LABEL_80;
      }

      v26 = [MechanismRatchet alloc];
      v99 = @"ACMRequirement";
      v27 = [NSNumber numberWithUnsignedInt:v20];
      v100 = v27;
      v28 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v29 = [v28 dictionaryByMergingWith:v79];
      v21 = [v26 initWithParams:v29 request:requestCopy];
    }

    else
    {
      if (v20 != 15)
      {
        if (v20 == 19)
        {
          goto LABEL_30;
        }

        if (v20 == 25)
        {
          if (v78 != 1)
          {
            v32 = 0;
            v54 = 0;
            v21 = 0;
            goto LABEL_100;
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          *&v104 = 0x3032000000;
          *(&v104 + 1) = sub_106DC;
          v105 = sub_106EC;
          v106 = 0;
          v83[1] = _NSConcreteStackBlock;
          v83[2] = 3221225472;
          v83[3] = sub_106F4;
          v83[4] = &unk_30E90;
          v83[5] = &buf;
          ACMRequirementGetProperty();
          if (v22)
          {
            v23 = [NSString stringWithFormat:@"Failed to get ACM nonce. amcErr = %d", v22];
            v24 = [LAErrorHelper internalErrorWithMessage:v23];
          }

          else
          {
            v64 = *(*(&buf + 1) + 40);
            v101 = LAErrorNonceKey;
            v102 = v64;
            v23 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
            v24 = [LAErrorHelper errorWithCode:-1026 message:@"Main key signature required" moreInfo:v23];
          }

          v32 = v24;

          _Block_object_dispose(&buf, 8);
          goto LABEL_80;
        }

        goto LABEL_60;
      }

      v21 = [[MechanismCompanion alloc] initWithParams:v79 request:requestCopy];
    }

    v32 = 0;
    goto LABEL_93;
  }

  if (v20 > 2)
  {
    if (v20 != 3)
    {
      if (v20 != 7)
      {
        if (v20 != 11)
        {
          goto LABEL_60;
        }

LABEL_30:
        if (v20 == 19)
        {
          [v79 setObject:&__kCFBooleanTrue forKey:@"Secondary"];
        }

        v30 = [LACACMHelper BOOLEnvironmentVariable:13];
        bOOLValue = [v30 BOOLValue];

        if (bOOLValue)
        {
          [v79 setObject:&__kCFBooleanTrue forKey:@"AXMode"];
        }

        v89 = 0;
        v21 = [(MechanismManagerACM *)self loadMechanism:3 initParams:v79 request:requestCopy error:&v89];
        v32 = v89;
        v33 = [NSSet setWithArray:&off_32BA8];
        v34 = v33;
        if (v20 == 11)
        {
          if (!v33)
          {
            goto LABEL_64;
          }
        }

        else if (!v33 || !((v78 == 1) | bOOLValue & 1))
        {
          goto LABEL_64;
        }

        v55 = [MechanismKofNReorganizer alloc];
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_104A4;
        v84[3] = &unk_30E68;
        v85 = v34;
        v88 = v20 == 19;
        v86 = requestCopy;
        v87 = v21;
        v56 = v21;
        v21 = [v55 initWithMin:0 max:1 k:0 request:v86 apply:v84];

LABEL_64:
        goto LABEL_93;
      }

      v38 = [LACACMHelper requirement:requirement uint32Property:700];
      v39 = v38;
      if (!v38)
      {
        v32 = [LAErrorHelper internalErrorWithMessage:@"Missing k in KofN."];
        v21 = 0;
LABEL_92:

        goto LABEL_93;
      }

      *&buf = [v38 unsignedIntegerValue];
      v83[0] = 0;
      v40 = [(MechanismManagerACM *)self _nonUiSubmechanismsForACMRequirement:requirement acmContextRecord:recordCopy policy:policy internalInfo:infoCopy request:requestCopy requiredCount:&buf error:v83];
      v32 = v83[0];
      if ([v40 count])
      {
        v41 = buf;
        v42 = v41 == [v40 count];
        v21 = [MechanismKofN mechanismWithK:buf ofSubmechanisms:v40 serial:v42 request:requestCopy];
        if (!v21)
        {
          v50 = [LAErrorHelper internalErrorWithMessage:@"Failed to create kofn mechanism."];
          v21 = 0;
LABEL_90:

          v32 = v50;
          goto LABEL_91;
        }

        if ([v40 count] == &def_1FF08 + 2)
        {
          v76 = [v40 objectAtIndex:0];
          v75 = [v40 objectAtIndex:1];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (v43 = [(__CFString *)v76 acmFlags], v44 = v75, (v43) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (v45 = [(__CFString *)v75 acmFlags], v44 = v76, (v45)) && (v46 = v44) != 0)
          {
            v74 = v46;
            v47 = buf;
            if (v47 >= [v40 count])
            {
              v50 = v32;
            }

            else
            {
              v73 = +[LAPasscodeHelper sharedInstance];
              v48 = [infoCopy objectForKeyedSubscript:@"UserId"];
              v82 = v32;
              v49 = [v73 isPasscodeSetForUser:objc_msgSend(v48 error:{"unsignedIntValue"), &v82}];
              v50 = v82;

              v51 = v74;
              if (!v49)
              {
                v51 = 0;
              }

              v52 = v51;

              v21 = v52;
            }

            v65 = v74;
          }

          else
          {
            v65 = 0;
            v50 = v32;
          }

          v32 = v76;
          goto LABEL_90;
        }
      }

      else
      {
        v21 = 0;
      }

LABEL_91:

      goto LABEL_92;
    }

    if ([(MechanismManagerACM *)self _shouldDisregardUserIdForPolicy:policy])
    {
      [v79 removeObjectForKey:@"UserId"];
    }

    if ([(MechanismManagerACM *)self _deviceHasPearl])
    {
      if ((v77 & 4) == 0)
      {
        v96 = 0;
        v21 = [(MechanismManagerACM *)self loadMechanism:4 initParams:v79 request:requestCopy error:&v96];
        v37 = &v96;
LABEL_68:
        v32 = *v37;
        if (!v21)
        {
          goto LABEL_99;
        }

        if ((v77 & 0x10) != 0)
        {
          v54 = [LAErrorHelper errorWithCode:-1022 message:@"Failed to match the bound identity."];

LABEL_98:
          v21 = 0;
          v32 = v54;
          goto LABEL_100;
        }

        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_10398;
        v91[3] = &unk_30E40;
        requirementCopy = requirement;
        v57 = requestCopy;
        v92 = v57;
        v21 = v21;
        v93 = v21;
        v58 = sub_10398(v91);
        [(__CFString *)v21 setUpdateConstraintOffset:v58];

        if ([(MechanismManagerACM *)self _shouldBindBiometricIdentitiesForMechanism:v21 request:v57])
        {
          v90 = 0;
          v59 = [(MechanismManagerACM *)self _biometricIdentitiesForRequirement:requirement request:v57 error:&v90];
          v60 = v90;
          v61 = v60;
          if (v60)
          {
            v62 = v60;

            v21 = 0;
            v32 = v62;
          }

          else
          {
            [(__CFString *)v21 setIdentityUUIDs:v59];
          }
        }

LABEL_93:
        if (v21 && v78 == 3)
        {

          v54 = [LAErrorHelper errorWithCode:-1 subcode:6 message:@"Unsatisfiable constraint."];

          v66 = [requestCopy log];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = [infoCopy objectForKeyedSubscript:@"UserId"];
            v68 = [LACACMHelper catacombUUID:v67];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v68;
            _os_log_impl(&def_1FF08, v66, OS_LOG_TYPE_DEFAULT, "ACM catacombUUID: %{public}@", &buf, 0xCu);
          }

          goto LABEL_98;
        }

LABEL_99:
        v54 = v32;
        goto LABEL_100;
      }

      v63 = [LAErrorHelper errorWithCode:-1012 message:@"Touch ID required."];
    }

    else
    {
      if ((v77 & 8) == 0)
      {
        v95 = 0;
        v21 = [(MechanismManagerACM *)self loadMechanism:1 initParams:v79 request:requestCopy error:&v95];
        v37 = &v95;
        goto LABEL_68;
      }

      v63 = [LAErrorHelper errorWithCode:-1015 message:@"Pearl required."];
    }

    v32 = v63;
LABEL_80:
    v21 = 0;
    goto LABEL_99;
  }

  if (v20 == 1)
  {
    v98 = 0;
    v21 = [(MechanismManagerACM *)self loadMechanism:2 initParams:v79 request:requestCopy error:&v98];
    v25 = v98;
    goto LABEL_38;
  }

  if (v20 == 2)
  {
    [recordCopy setPassphrasePurpose:{-[MechanismManagerACM _acmPurposeForPolicy:](self, "_acmPurposeForPolicy:", policy)}];
    v97 = 0;
    v21 = [(MechanismManagerACM *)self loadMechanism:2 initParams:v79 request:requestCopy className:@"MechanismPassphrase" error:&v97];
    v25 = v97;
LABEL_38:
    v32 = v25;
    goto LABEL_93;
  }

LABEL_60:
  v53 = [NSString stringWithFormat:@"Unexpected ACM requirement: %d", v20];
  v54 = [LAErrorHelper silentInternalErrorWithMessage:v53];

  v21 = 0;
  v32 = @"skipping this requirement";
LABEL_100:
  if (error)
  {
    if (v21)
    {
      v69 = 0;
    }

    else
    {
      v69 = v54;
    }

    *error = v69;
  }

  if (state)
  {
    *state = v78;
  }

  v70 = [requestCopy log];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    if (v21)
    {
      v71 = v21;
    }

    else
    {
      v71 = v32;
    }

    LODWORD(buf) = 67109890;
    DWORD1(buf) = v20;
    WORD4(buf) = 1024;
    *(&buf + 10) = v78;
    HIWORD(buf) = 1024;
    LODWORD(v104) = v77;
    WORD2(v104) = 2114;
    *(&v104 + 6) = v71;
    _os_log_impl(&def_1FF08, v70, OS_LOG_TYPE_DEFAULT, "ACMRequirement of type:%u, state:%d, flags:%x -> %{public}@", &buf, 0x1Eu);
  }

LABEL_113:

  return v21;
}

- (unint64_t)_acmRequirementPropertyFlags:(__ACMRequirement *)flags
{
  v3 = [LACACMHelper requirement:flags uint32Property:100];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)_evaluationModeForPolicy:(int64_t)policy
{
  if (policy == 1008)
  {
    return &off_32968;
  }

  else
  {
    return &off_32980;
  }
}

- (BOOL)_shouldBindBiometricIdentitiesForMechanism:(id)mechanism request:(id)request
{
  if (!mechanism)
  {
    return 0;
  }

  updateConstraintOffset = [mechanism updateConstraintOffset];
  v5 = [updateConstraintOffset unsignedIntValue] == 0;

  return v5;
}

- (id)_biometricIdentitiesForRequirement:(__ACMRequirement *)requirement request:(id)request error:(id *)error
{
  requestCopy = request;
  v8 = [LACACMHelper requirement:requirement uint32Property:304];
  if (![v8 unsignedIntValue])
  {
    v22 = 0;
    goto LABEL_30;
  }

  v9 = [LACACMHelper requirement:requirement dataProperty:303];
  v10 = (16 * [v8 unsignedIntValue]);
  v11 = [v9 length];
  if (v11 != v10)
  {
    v21 = [requestCopy log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v30 = [v9 length];
      *&v30[4] = 1024;
      *&v30[6] = v10;
      _os_log_impl(&def_1FF08, v21, OS_LOG_TYPE_DEFAULT, "Unexpected data in kACMRequirementPropertyBioIdentityUUIDs with length of %u, expected: %u", buf, 0xEu);
    }

    goto LABEL_28;
  }

  v12 = v11;
  errorCopy = error;
  v26 = v8;
  v27 = +[NSMutableArray array];
  if (v10)
  {
    v13 = 0;
    do
    {
      v14 = [v9 subdataWithRange:{v13, 16}];
      if (v14)
      {
        v15 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v14, "bytes")}];
        if (v15)
        {
          v16 = +[BiometryHelper sharedInstance];
          device = [v16 device];
          v28 = 0;
          v18 = [device identityForUUID:v15 error:&v28];
          v19 = v28;

          if (v18)
          {
            [v27 addObject:v18];
          }

          else
          {
            v20 = [requestCopy log];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v30 = v15;
              *&v30[8] = 2114;
              v31 = v19;
              _os_log_impl(&def_1FF08, v20, OS_LOG_TYPE_DEFAULT, "Failed to find identity with UUID %{public}@, error: %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v19 = [requestCopy log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v30 = v14;
            _os_log_impl(&def_1FF08, v19, OS_LOG_TYPE_DEFAULT, "Failed to init UUID with %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v15 = [requestCopy log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *v30 = v9;
          *&v30[8] = 1024;
          LODWORD(v31) = v13;
          _os_log_impl(&def_1FF08, v15, OS_LOG_TYPE_DEFAULT, "Failed to get UUID from ACM Data %{public}@ at offset:%u", buf, 0x12u);
        }
      }

      v13 += 16;
    }

    while (v13 < v12);
  }

  v21 = v27;
  if (![v27 count])
  {
    v23 = [requestCopy log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v30 = v9;
      _os_log_impl(&def_1FF08, v23, OS_LOG_TYPE_DEFAULT, "Failed to find any of bound identities %{public}@ , check previous error in the log", buf, 0xCu);
    }

    v8 = v26;
    if (errorCopy)
    {
      [LAErrorHelper errorWithCode:-1 message:@"No bound identity found."];
      *errorCopy = v22 = 0;
      goto LABEL_29;
    }

LABEL_28:
    v22 = 0;
    goto LABEL_29;
  }

  v21 = v27;
  v22 = v21;
  v8 = v26;
LABEL_29:

LABEL_30:

  return v22;
}

- (id)_preferedError:(id)error
{
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&off_32BC0 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&off_32BC0);
        }

        v8 = [errorCopy objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v8)
        {
          nextObject = v8;
          goto LABEL_11;
        }
      }

      v5 = [&off_32BC0 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  objectEnumerator = [errorCopy objectEnumerator];
  nextObject = [objectEnumerator nextObject];

LABEL_11:

  return nextObject;
}

- (id)_nonUiSubmechanismsForACMRequirement:(const __ACMRequirement *)requirement acmContextRecord:(id)record policy:(int64_t)policy internalInfo:(id)info request:(id)request requiredCount:(unint64_t *)count error:(id *)error
{
  recordCopy = record;
  infoCopy = info;
  requestCopy = request;
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v50 = 0;
  v51[0] = &v50;
  v51[1] = 0x2020000000;
  v51[2] = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v19 = *count;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_11124;
  v46[3] = &unk_30978;
  v20 = objc_opt_new();
  v47 = v20;
  ACMRequirementGetSubrequirements(requirement, v46);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_11190;
  v34[3] = &unk_30EB8;
  v41 = &v50;
  v34[4] = self;
  v21 = recordCopy;
  v35 = v21;
  policyCopy = policy;
  v22 = infoCopy;
  v36 = v22;
  v23 = requestCopy;
  v37 = v23;
  v44 = v19;
  v24 = v20;
  v38 = v24;
  v25 = v18;
  countCopy = count;
  v39 = v25;
  v42 = v48;
  v26 = v17;
  v40 = v26;
  ACMRequirementGetSubrequirements(requirement, v34);
  if ([v25 count] >= *count)
  {
    if (*count)
    {
      v27 = 0;
      v29 = 1;
      goto LABEL_10;
    }

    [v25 removeAllObjects];
    v27 = [LAErrorHelper silentInternalErrorWithMessage:@"KofN is already satisfied."];
  }

  else
  {
    v27 = [(MechanismManagerACM *)self _preferedError:v26];
    if (*count > *(v51[0] + 24))
    {
      v28 = [v23 log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_190FC(count, v51, v28);
      }
    }
  }

  v29 = 0;
LABEL_10:
  if (error)
  {
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v27;
    }

    *error = v30;
  }

  if (v29)
  {
    v31 = [(MechanismManagerACM *)self _sortedSubmechanisms:v25];
  }

  else
  {
    v31 = 0;
  }

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v50, 8);

  return v31;
}

- (id)_buildUiForMechanism:(id)mechanism policy:(int64_t)policy internalInfo:(id)info uiDelegate:(id)delegate request:(id)request error:(id *)error
{
  mechanismCopy = mechanism;
  infoCopy = info;
  delegateCopy = delegate;
  requestCopy = request;
  if (delegateCopy)
  {
    v17 = [infoCopy objectForKey:@"Options"];
    v18 = [v17 objectForKey:&off_32920];
    if (!v18)
    {
      v22[0] = &off_32950;
      v22[1] = &off_32A28;
      v23[0] = &__NSDictionary0__struct;
      v23[1] = &__NSDictionary0__struct;
      v22[2] = &off_32A40;
      v22[3] = &off_32A58;
      v23[2] = &__NSDictionary0__struct;
      v23[3] = &__NSDictionary0__struct;
      v22[4] = &off_32968;
      v22[5] = &off_32938;
      v23[4] = &__NSDictionary0__struct;
      v23[5] = &__NSDictionary0__struct;
      v22[6] = &off_32A70;
      v23[6] = &__NSDictionary0__struct;
      v18 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:7];
    }
  }

  else
  {
    v18 = 0;
  }

  if ([mechanismCopy requiresUiWithEventProcessing:v18])
  {
    v19 = [[MechanismUI alloc] initWithNonUiMechanism:mechanismCopy eventProcessing:v18 policy:policy internalInfo:infoCopy request:requestCopy];
  }

  else
  {
    v19 = mechanismCopy;
  }

  v20 = v19;
  if (error)
  {
    *error = 0;
  }

  return v20;
}

- (id)_restrictedNonUiMechanism:(id)mechanism availabilityEvents:(id *)events policy:(int64_t)policy internalInfo:(id)info request:(id)request error:(id *)error
{
  mechanismCopy = mechanism;
  infoCopy = info;
  requestCopy = request;
  v15 = mechanismCopy;
  if (([requestCopy isPurposeApplePay] & 1) == 0)
  {
    v16 = [infoCopy objectForKeyedSubscript:@"Options"];
    v17 = [v16 objectForKeyedSubscript:&off_32A88];
    bOOLValue = [v17 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_4;
    }
  }

  v19 = +[BiometryHelper sharedInstance];
  v20 = [infoCopy objectForKeyedSubscript:@"UserId"];
  v21 = [v19 isBiometryOnForApplePay:v20];

  if (v21)
  {
LABEL_4:
    v22 = 0;
    v23 = v15;
    goto LABEL_22;
  }

  v24 = [v15 findMechanismWithEventIdentifier:2];
  v25 = [v15 findMechanismWithEventIdentifier:3];
  v26 = [v15 findMechanismWithEventIdentifier:5];
  v27 = v26;
  if (v24 && v25)
  {
    v39[0] = v24;
    v39[1] = v25;
    v28 = [NSArray arrayWithObjects:v39 count:2];
    v23 = [MechanismKofN mechanismWithK:2 ofSubmechanisms:v28 serial:1 request:requestCopy];

LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  if (v24 || v25 || v26)
  {
    if (v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v26;
    }

    if (v24)
    {
      v29 = v24;
    }

    v23 = v29;

    goto LABEL_18;
  }

  v22 = [LAErrorHelper errorWithCode:-4 message:@"Biometry is disabled for ApplePay."];
  v23 = 0;
LABEL_19:

  if (events && v23 != v15)
  {
    v30 = objc_opt_new();
    v31 = [v15 availabilityEventsForPurpose:{objc_msgSend(requestCopy, "purpose")}];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_118E8;
    v36[3] = &unk_30EE0;
    v23 = v23;
    v37 = v23;
    v38 = v30;
    v32 = v30;
    [v31 enumerateKeysAndObjectsUsingBlock:v36];

    v33 = v32;
    *events = v32;
  }

LABEL_22:
  if (error)
  {
    v34 = v22;
    *error = v22;
  }

  return v23;
}

- (id)_loadACMMechanismFromPlugin:(int64_t)plugin acmContextRecord:(id)record internalInfo:(id)info request:(id)request error:(id *)error
{
  requestCopy = request;
  v13 = [(MechanismManagerACM *)self _prepareInitParamsUsingInternalInfo:info acmContextRecord:record];
  v14 = [(MechanismManagerACM *)self _loadACMMechanism:plugin initParams:v13 request:requestCopy error:error];

  return v14;
}

- (id)_loadACMMechanism:(int64_t)mechanism initParams:(id)params request:(id)request error:(id *)error
{
  v7 = [(MechanismManagerACM *)self loadMechanism:mechanism initParams:params request:request className:0 error:error];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v8 = [NSString stringWithFormat:@"Unexpected mechanism class: %@", v7];
        *error = [LAErrorHelper internalErrorWithMessage:v8];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)_prepareInitParamsUsingInternalInfo:(id)info acmContextRecord:(id)record
{
  v10[0] = @"AcmContextRecord";
  v10[1] = @"UserId";
  v11[0] = record;
  recordCopy = record;
  v6 = [info objectForKeyedSubscript:@"UserId"];
  v11[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [v7 mutableCopy];

  return v8;
}

@end