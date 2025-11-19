@interface ContextPluginACM
- (BOOL)_isBiometricOnlyPolicy:(int64_t)a3;
- (BOOL)_isEvent:(int64_t)a3 contributingToResult:(id)a4;
- (BOOL)_setPragueInstructions:(id)a3 signature:(id)a4 error:(id *)a5;
- (BOOL)_shouldRetryEvaluationForError:(id)a3 options:(id)a4;
- (BOOL)_updateACMContextWithOptions:(id)a3 policy:(int64_t)a4 error:(id *)a5;
- (BOOL)_validatePassword:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 callerName:(id)a8 callerBundleId:(id)a9 reply:(id)a10;
- (id)_decodeOperation:(id)a3;
- (id)_fillConstraint:(id)a3 options:(id)a4 userId:(id)a5 error:(id *)a6;
- (id)_operationAsString:(id)a3 error:(id *)a4;
- (id)_unsatisfiedListForRequirement:(__ACMRequirement *)a3;
- (id)_updateRecoveryRetryCountIfNeeded:(id)a3 request:(id)a4 userId:(id)a5;
- (unsigned)_credentialTypeForEvent:(int64_t)a3;
- (unsigned)_credentialTypeForRequirementType:(unsigned int)a3;
- (unsigned)_requirementTypeForCredentialType:(int64_t)a3;
- (void)_evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 callerName:(id)a9 callerBundleId:(id)a10 reply:(id)a11;
- (void)_evaluateCtkPolicy:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 reply:(id)a8;
- (void)_evaluateOperation:(id)a3 aclRef:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 validate:(BOOL)a9 callerName:(id)a10 callerBundleId:(id)a11 reply:(id)a12;
- (void)_handleAcmRequirement:(const __ACMRequirement *)a3 policy:(int64_t)a4 constraintData:(id)a5 operation:(id)a6 internalInfo:(id)a7 uiDelegate:(id)a8 originator:(id)a9 request:(id)a10 reply:(id)a11;
- (void)_handleCTKACL:(id)a3 tokenId:(id)a4 operation:(id)a5 options:(id)a6 originator:(id)a7 request:(id)a8 callerName:(id)a9 callerBundleId:(id)a10 reply:(id)a11;
- (void)_parseInstructions:(id)a3 completion:(id)a4;
- (void)_paymentOperationWithInstructions:(id)a3 originatorId:(unint64_t)a4 reply:(id)a5;
- (void)_releaseGracefully:(BOOL)a3;
- (void)_removeRequestedCredentials:(__ACMRequirement *)a3;
- (void)_setLegacyInstructions:(id)a3 originatorId:(unint64_t)a4 reply:(id)a5;
- (void)_setOptions:(id)a3 forInternalOperation:(int64_t)a4 originatorId:(unint64_t)a5 reply:(id)a6;
- (void)_validateACL:(id)a3 evaluateOperation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 callerName:(id)a9 callerBundleId:(id)a10 reply:(id)a11;
- (void)_validateOperation:(id)a3 aclRef:(id)a4 evaluateOperation:(id)a5 options:(id)a6 uiDelegate:(id)a7 originator:(id)a8 request:(id)a9 reply:(id)a10;
- (void)_validateOperations:(id)a3 aclRef:(id)a4 evaluateOperation:(id)a5 options:(id)a6 uiDelegate:(id)a7 originator:(id)a8 request:(id)a9 currentResult:(id)a10 reply:(id)a11;
- (void)authMethodWithReply:(id)a3;
- (void)checkCredentialSatisfied:(int64_t)a3 policy:(int64_t)a4 reply:(id)a5;
- (void)credentialEncodingSeedWithReply:(id)a3;
- (void)credentialOfType:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)credentialsUUIDWithOriginator:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 callerName:(id)a9 callerBundleId:(id)a10 reply:(id)a11;
- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 reply:(id)a9;
- (void)evaluatePolicy:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 reply:(id)a8;
- (void)externalizedContextWithReply:(id)a3;
- (void)finishedAuthenticationForPolicy:(int64_t)a3 constraintData:(id)a4 operation:(id)a5 internalInfo:(id)a6 uiDelegate:(id)a7 originator:(id)a8 request:(id)a9 availabilityEvents:(id)a10 result:(id)a11 error:(id)a12 reply:(id)a13;
- (void)isCredentialSet:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)resetEvent:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 originator:(id)a6 reply:(id)a7;
- (void)setCredentialsUUID:(id)a3 originator:(id)a4 reply:(id)a5;
- (void)setOptions:(id)a3 forInternalOperation:(int64_t)a4 originator:(id)a5 reply:(id)a6;
- (void)verifyFileVaultUser:(id)a3 volumeUuid:(id)a4 options:(unint64_t)a5 reply:(id)a6;
@end

@implementation ContextPluginACM

- (void)dealloc
{
  [(ContextPluginACM *)self _releaseGracefully:1];
  v3.receiver = self;
  v3.super_class = ContextPluginACM;
  [(ContextPluginACM *)&v3 dealloc];
}

- (void)_releaseGracefully:(BOOL)a3
{
  v3 = a3;
  v5 = [(ContextPluginACM *)self module];
  if (v3)
  {
    v6 = "gracefully";
  }

  else
  {
    v6 = "forcibly";
  }

  v7 = [NSString stringWithFormat:@"released %s", v6];
  [v5 untrackPlugin:self reason:v7];

  acmContext = self->_acmContext;
  if (acmContext)
  {
    TrackingNumber = ACMContextGetTrackingNumber(acmContext);
    v10 = sub_26D8();
    v11 = v10;
    if (v3)
    {
      v12 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v10, v12))
    {
      *buf = 67109634;
      v17 = TrackingNumber;
      v18 = 2082;
      v19 = v6;
      v20 = 1024;
      v21 = [(ContextPluginACM *)self contextOwner];
      _os_log_impl(&def_1FF08, v11, v12, "Deleting ACMContext:%u %{public}s, destroy:%d", buf, 0x18u);
    }

    v13 = ACMContextDelete(self->_acmContext, [(ContextPluginACM *)self contextOwner]);
    if (v13)
    {
      v14 = v13;
      v15 = sub_26D8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_18D5C(TrackingNumber, v14, v15);
      }
    }

    self->_acmContext = 0;
    [(LACACMHelper *)self->_acmHelper clear];
  }
}

- (BOOL)_updateACMContextWithOptions:(id)a3 policy:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([LACPolicyUtilities isDTOPolicy:a4 options:v8])
  {
    v9 = [v8 objectForKeyedSubscript:&off_32620];
    v10 = [v8 objectForKeyedSubscript:&off_32638];
    v11 = [v8 objectForKeyedSubscript:&off_32650];
    v12 = [v8 objectForKeyedSubscript:&off_32668];
    if (([v9 BOOLValue] & 1) != 0 || (objc_msgSend(v10, "BOOLValue") & 1) != 0 || (objc_msgSend(v11, "BOOLValue") & 1) != 0 || objc_msgSend(v12, "BOOLValue"))
    {
      v13 = LACLogDTO();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&def_1FF08, v13, OS_LOG_TYPE_DEFAULT, "DTOContextConfig update will start", &v22, 2u);
      }

      LODWORD(v25) = 0;
      if ([v9 BOOLValue])
      {
        v23 = 1;
      }

      if ([v10 BOOLValue])
      {
        BYTE3(v25) = 1;
      }

      if ([v11 BOOLValue])
      {
        v24 = 1;
      }

      if ([v12 BOOLValue])
      {
        BYTE2(v25) = 1;
      }

      v14 = [[LACSecureData alloc] initWithBytes:&v22 length:20];
      v15 = [(LACACMHelper *)self->_acmHelper setData:v14 type:9 error:a5];
      v16 = LACLogDTO();
      v17 = v16;
      if (v15)
      {
        v18 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v18 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v16, v18))
      {
        v19 = *a5;
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&def_1FF08, v17, v18, "DTOConfig update did finish err=%{public}@", buf, 0xCu);
      }
    }
  }

  v20 = *a5 == 0;

  return v20;
}

- (BOOL)_isBiometricOnlyPolicy:(int64_t)a3
{
  v3 = a3 == 1008;
  if (a3 == 1003)
  {
    v3 = 1;
  }

  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)evaluatePolicy:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 reply:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  objc_initWeak(location, v16);
  v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v16 userId]);
  v20 = [(ContextPluginACM *)self _updateRecoveryRetryCountIfNeeded:v14 request:v17 userId:v19];
  v44 = v14;

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_3CC4;
  v59[3] = &unk_30600;
  v59[4] = self;
  v21 = v20;
  v60 = v21;
  v22 = v17;
  v61 = v22;
  v64[1] = a3;
  v23 = v15;
  v62 = v23;
  objc_copyWeak(v64, location);
  v43 = v18;
  v63 = v43;
  v24 = objc_retainBlock(v59);
  if (a3 == 1024)
  {
    v25 = +[LAPasscodeHelper sharedInstance];
    v26 = [v25 isPasscodeSetForUser:objc_msgSend(v16 error:{"userId"), 0}];

    if ((v26 & 1) == 0)
    {
      v27 = +[LACPasscodeHelper sharedInstance];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_3F48;
      v54[3] = &unk_30628;
      v54[4] = self;
      v55 = v16;
      v58 = 1024;
      v56 = v21;
      v57 = v22;
      v28 = sub_3F48(v54);
      v29 = [v27 verifyPasscode:v28];

      if (v29)
      {
        v30 = [LAErrorHelper internalErrorWithMessage:@"Unable to verify empty password"];
        (v24[2])(v24, 0, v30);

        v31 = v55;
LABEL_12:

        goto LABEL_14;
      }
    }

LABEL_8:
    v32 = [LACACMHelper acmPolicyForPolicy:a3];
    if (!v32)
    {
      v38 = [NSNumber numberWithInteger:a3];
      v39 = [NSString stringWithFormat:@"Can't find ACM policy for: %@", v38];
      v40 = [LAErrorHelper parameterErrorWithMessage:v39];
      (v24[2])(v24, 0, v40);

      goto LABEL_14;
    }

    v33 = [v21 objectForKey:&off_32680];
    [v33 doubleValue];
    v35 = v34;

    v42 = -[ContextPluginACM _acmParamForPolicy:options:userId:secondPass:](self, "_acmParamForPolicy:options:userId:secondPass:", a3, v21, [v16 userId], 0);
    v53 = 0;
    LOBYTE(v33) = [(ContextPluginACM *)self _updateACMContextWithOptions:v21 policy:a3 error:&v53];
    v41 = v53;
    if ((v33 & 1) == 0)
    {
      v36 = [NSString stringWithFormat:@"Unable to set data on ACM context with error %@", v41];
      v37 = [LAErrorHelper parameterErrorWithMessage:v36];
      (v24[2])(v24, 0, v37);
    }

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_4054;
    v45[3] = &unk_30678;
    v51 = v24;
    v46 = v22;
    v47 = self;
    v52 = a3;
    v48 = v16;
    v49 = v21;
    v50 = v23;
    [(ContextPluginACM *)self _verifyACMPolicy:v32 acmParameter:v42 maxGlobalCredentialAge:(v35 * 1000.0) retryAllowed:1 reply:v45];

    v31 = v42;
    goto LABEL_12;
  }

  if (a3 != 1009)
  {
    goto LABEL_8;
  }

  [(ContextPluginACM *)self _evaluateCtkPolicy:1009 options:v21 uiDelegate:v23 originator:v16 request:v22 reply:v24];
LABEL_14:

  objc_destroyWeak(v64);
  objc_destroyWeak(location);
}

- (void)_evaluateCtkPolicy:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 reply:(id)a8
{
  v13 = a4;
  v61 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v14 = [v13 objectForKeyedSubscript:&off_32698];
  if (v14)
  {
    v78 = 0;
    v79 = &v78;
    v80 = 0x2050000000;
    v15 = qword_350B8;
    v81 = qword_350B8;
    if (!qword_350B8)
    {
      *&v75 = _NSConcreteStackBlock;
      *(&v75 + 1) = 3221225472;
      *&v76 = sub_D3CC;
      *(&v76 + 1) = &unk_30D70;
      v77 = &v78;
      sub_D3CC(&v75);
      v15 = v79[3];
    }

    v16 = v15;
    _Block_object_dispose(&v78, 8);
    v78 = 0;
    v79 = &v78;
    v80 = 0x2050000000;
    v17 = qword_350C8;
    v81 = qword_350C8;
    if (!qword_350C8)
    {
      *&v75 = _NSConcreteStackBlock;
      *(&v75 + 1) = 3221225472;
      *&v76 = sub_D598;
      *(&v76 + 1) = &unk_30D70;
      v77 = &v78;
      sub_D598(&v75);
      v17 = v79[3];
    }

    v18 = v17;
    _Block_object_dispose(&v78, 8);
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_4E90;
    v70[3] = &unk_306A0;
    v19 = v65;
    v72 = v19;
    v20 = v14;
    v71 = v20;
    v73 = v15;
    v74 = v17;
    v59 = objc_retainBlock(v70);
    if (self->_ctkPin)
    {
      v60 = [[NSString alloc] initWithBytes:-[NSData bytes](self->_ctkPin length:"bytes") encoding:{-[NSData length](self->_ctkPin, "length"), 4}];
      (v59[2])(v59, v60, 0);
LABEL_63:

      goto LABEL_64;
    }

    v22 = [v13 objectForKeyedSubscript:&off_326E0];
    v55 = v22;
    if (v22)
    {
      v60 = v22;
      v23 = [v60 intValue];
      if (v63)
      {
        [v63 auditToken];
      }

      else
      {
        v75 = 0u;
        v76 = 0u;
      }

      v69 = 0;
      v57 = [DaemonUtils callerDisplayNameWithPid:v23 auditToken:&v75 bundleId:&v69];
      v56 = v69;
    }

    else if (self->_ctkCallerSet)
    {
      v60 = [NSNumber numberWithInt:self->_ctkCallerProcessId];
      v57 = self->_ctkCallerName;
      v56 = self->_ctkCallerBundleId;
    }

    else
    {
      v56 = 0;
      v57 = 0;
      v60 = 0;
    }

    if (self->_ctkCallerSet)
    {
      if (v13)
      {
        v24 = v13;
      }

      else
      {
        v24 = &__NSDictionary0__struct;
      }

      v25 = [v24 dictionaryByMergingWith:self->_ctkCallerOptions];
      v62 = [NSMutableDictionary dictionaryWithDictionary:v25];
    }

    else
    {
      v62 = [NSMutableDictionary dictionaryWithDictionary:v13];
    }

    [v62 removeObjectForKey:&off_32698];
    v26 = [v20 authenticationError];

    if (v26)
    {
      v27 = [v20 authenticationError];
      [v62 setObject:v27 forKeyedSubscript:&off_326F8];
    }

    v51 = [v62 objectForKeyedSubscript:&off_32710];
    v54 = [v62 objectForKeyedSubscript:&off_32728];
    v52 = [v62 objectForKeyedSubscript:&off_32740];
    v53 = [v62 objectForKeyedSubscript:&off_32758];
    if (objc_opt_isKindOfClass())
    {
      v28 = [v20 PINFormat];
      if (v28)
      {
        v29 = v54;
        if (!v54)
        {
          v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 minPINLength]);
          [v62 setObject:v30 forKey:&off_32728];
          v29 = v30;
        }

        v54 = v29;
        if (!v52)
        {
          v52 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 maxPINLength]);
          [v62 setObject:v52 forKey:&off_32740];
          v29 = v54;
        }

        if (!v53)
        {
          v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 charset]);
          [v62 setObject:v53 forKey:&off_32758];
          v29 = v54;
        }

        if (!v51 && v29 && [v29 isEqualToNumber:v52])
        {
          [v62 setObject:v54 forKey:&off_32710];
        }
      }

      v31 = [v20 localizedPINLabel];

      if (v31)
      {
        v32 = [v20 localizedPINLabel];
        [v62 setObject:v32 forKey:&off_32770];
      }
    }

    else
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = [NSString stringWithFormat:@"Unsupported auth operation: %@", v20];
        v42 = [LAErrorHelper parameterErrorWithMessage:v35];
        (*(v19 + 2))(v19, 0, v42);
LABEL_62:

        goto LABEL_63;
      }

      if (!v53)
      {
        [v62 setObject:&off_32788 forKey:&off_32758];
        v53 = &off_32788;
      }

      v33 = [v20 localizedPasswordLabel];

      if (!v33)
      {
LABEL_45:
        v34 = [(ContextPluginACM *)self createInternalInfoWithPolicy:a3 policyOptions:v62 request:v64 originator:v63];
        v35 = [NSMutableDictionary dictionaryWithDictionary:v34];

        if (v60)
        {
          [v35 setObject:v60 forKey:@"ProcessId"];
          if (!v57)
          {
            v36 = +[LACInstalledAppsCache sharedInstance];
            v37 = [v36 binaryNameForPid:{objc_msgSend(v60, "intValue")}];

            if (v37)
            {
              [v35 setObject:v37 forKey:@"CallerName"];
            }

            goto LABEL_52;
          }
        }

        else if (!v57)
        {
LABEL_52:
          if (v56)
          {
            [v35 setObject:v56 forKey:@"CallerId"];
          }

          [v35 setObject:&__kCFBooleanTrue forKey:@"CTKPIN"];
          v38 = [v64 payload];
          v39 = [v38 mutableCopy];
          v40 = v39;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = objc_opt_new();
          }

          v42 = v41;

          [v42 setObject:v35 forKeyedSubscript:LACEvaluationRequestPayloadKeyInternalInfo];
          [v64 updatePayload:v42];
          v82[0] = @"AcmContextRecord";
          v43 = [[ACMContextRecord alloc] initWithACMContext:self->_acmContext cachedExternalizationDelegate:self];
          v82[1] = @"UserId";
          v83[0] = v43;
          v44 = [v35 objectForKeyedSubscript:?];
          v83[1] = v44;
          v45 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];

          mechanismManager = self->_mechanismManager;
          v68 = 0;
          v47 = [(MechanismManagerACM *)mechanismManager loadMechanism:2 initParams:v45 request:v64 className:@"MechanismPassphrase" error:&v68];
          v48 = v68;
          if (v47)
          {
            v49 = [[MechanismUI alloc] initWithNonUiMechanism:v47 eventProcessing:0 policy:a3 internalInfo:v35 request:v64];
            authenticationManager = self->_authenticationManager;
            v66[0] = _NSConcreteStackBlock;
            v66[1] = 3221225472;
            v66[2] = sub_5010;
            v66[3] = &unk_306C8;
            v67 = v59;
            [(AuthenticationManager *)authenticationManager authenticateForPolicy:a3 constraintData:0 internalInfo:v35 uiDelegate:v61 originator:v63 request:v64 mechanism:v49 reply:v66];
          }

          else
          {
            (v59[2])(v59, 0, v48);
          }

          goto LABEL_62;
        }

        [v35 setObject:v57 forKey:@"CallerName"];
        goto LABEL_52;
      }

      v28 = [v20 localizedPasswordLabel];
      [v62 setObject:v28 forKey:&off_32770];
    }

    goto LABEL_45;
  }

  v21 = [LAErrorHelper parameterErrorWithMessage:@"Missing auth operation."];
  (*(v65 + 2))(v65, 0, v21);

LABEL_64:
}

- (void)verifyFileVaultUser:(id)a3 volumeUuid:(id)a4 options:(unint64_t)a5 reply:(id)a6
{
  v7 = a6;
  v8 = +[LAErrorHelper errorNotSupported];
  (*(a6 + 2))(v7, 0, v8);
}

- (BOOL)_shouldRetryEvaluationForError:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:&off_327A0];
  v9 = [v7 objectForKeyedSubscript:&off_325F0];
  v10 = [v7 objectForKeyedSubscript:&off_327B8];

  if (v10)
  {
    v11 = ([v10 integerValue] > 0);
  }

  else
  {
    v11 = (&def_1FF08 + 1);
  }

  v12 = [LAErrorHelper error:v6 hasCode:-8];
  v13 = [LAErrorHelper error:v6 hasCode:-1024];
  if (v12)
  {
    if (([v8 BOOLValue] & v11) == 1)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_55A0;
      v18[3] = &unk_30718;
      v11 = &v19;
      v19 = v6;
      v12 = sub_55A0(v18);
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = ([v9 BOOLValue] ^ 1) & (v13 | v12);
  if (v15 == 1)
  {
    v16 = sub_26D8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v21 = self;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&def_1FF08, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ retries evaluation for error: %@ lockoutRecovery:%@ nonInteractive:%@", buf, 0x2Au);
    }
  }

  if (v14)
  {
  }

  return v15;
}

- (id)_updateRecoveryRetryCountIfNeeded:(id)a3 request:(id)a4 userId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:&off_327B8];
  if (v10)
  {
    v11 = +[BiometryHelper sharedInstance];
    v20 = 0;
    v12 = [v11 isLockedOutForUser:v9 request:v8 error:&v20];
    v13 = v20;

    if (v12)
    {
      v14 = [v10 integerValue];
      v21 = &off_327B8;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = [NSNumber numberWithInteger:v15 - 1];
      v22 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v18 = [v7 dictionaryByMergingWith:v17];
    }

    else
    {
      v18 = v7;
    }
  }

  else
  {
    v18 = v7;
  }

  return v18;
}

- (void)_handleAcmRequirement:(const __ACMRequirement *)a3 policy:(int64_t)a4 constraintData:(id)a5 operation:(id)a6 internalInfo:(id)a7 uiDelegate:(id)a8 originator:(id)a9 request:(id)a10 reply:(id)a11
{
  v15 = a5;
  v31 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  objc_initWeak(location, v18);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_5A50;
  v44[3] = &unk_30768;
  v33 = v16;
  v45 = v33;
  v30 = v20;
  v46 = v30;
  v21 = objc_retainBlock(v44);
  v22 = [[ACMContextRecord alloc] initWithACMContext:self->_acmContext cachedExternalizationDelegate:self];
  mechanismManager = self->_mechanismManager;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_5E48;
  v35[3] = &unk_30820;
  v24 = v17;
  v36 = v24;
  v25 = v21;
  v42 = v25;
  v37 = self;
  v43[1] = a4;
  v26 = v15;
  v38 = v26;
  v27 = v18;
  v39 = v27;
  v28 = v19;
  v40 = v28;
  v29 = v31;
  v41 = v29;
  objc_copyWeak(v43, location);
  [(MechanismManagerACM *)mechanismManager mechanismForACMRequirement:a3 acmContextRecord:v22 policy:a4 internalInfo:v33 uiDelegate:v24 originator:v27 request:v28 reply:v35];
  objc_destroyWeak(v43);

  objc_destroyWeak(location);
}

- (id)_unsatisfiedListForRequirement:(__ACMRequirement *)a3
{
  if (ACMRequirementGetState(a3, a2) == 2)
  {
    v6 = 0;
  }

  else if (ACMRequirementGetType(a3, v5) == 7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_635C;
    v12[3] = &unk_30848;
    v12[4] = self;
    v13 = objc_opt_new();
    v8 = v13;
    ACMRequirementGetSubrequirements(a3, v12);
    v6 = [v8 componentsJoinedByString:{@", "}];
  }

  else
  {
    Type = ACMRequirementGetType(a3, v7);
    v6 = [NSString stringWithFormat:@"%d:%d", Type, ACMRequirementGetState(a3, v10)];
  }

  return v6;
}

- (void)finishedAuthenticationForPolicy:(int64_t)a3 constraintData:(id)a4 operation:(id)a5 internalInfo:(id)a6 uiDelegate:(id)a7 originator:(id)a8 request:(id)a9 availabilityEvents:(id)a10 result:(id)a11 error:(id)a12 reply:(id)a13
{
  v59 = a4;
  v18 = a5;
  v60 = a6;
  v19 = a7;
  v58 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  objc_initWeak(location, self);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_6950;
  v76[3] = &unk_308B8;
  v25 = v19;
  v77 = v25;
  v26 = v21;
  v78 = v26;
  objc_copyWeak(&v81, location);
  v79 = self;
  v27 = v24;
  v80 = v27;
  v28 = objc_retainBlock(v76);
  v29 = v28;
  v57 = v20;
  if (v22)
  {
    v49 = v27;
    v50 = v26;
    v54 = v23;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_6BB4;
    v66[3] = &unk_308E0;
    v30 = v28;
    v52 = v18;
    v53 = self;
    v66[4] = self;
    v74 = v30;
    v75 = a3;
    v31 = v18;
    v67 = v31;
    v68 = v20;
    v51 = v22;
    v32 = v22;
    v69 = v32;
    v33 = v60;
    v70 = v33;
    v34 = v59;
    v35 = v59;
    v71 = v35;
    v72 = v25;
    v36 = v58;
    v73 = v58;
    v56 = objc_retainBlock(v66);
    v37 = [v33 objectForKey:@"GlobalCredential"];
    v48 = [v37 unsignedIntValue];

    if (a3)
    {
      if (a3 == 1008)
      {
        [v32 objectForKeyedSubscript:@"UserId"];
      }

      else
      {
        [v33 objectForKeyedSubscript:@"UserId"];
      }
      v38 = ;
      v44 = [v38 unsignedIntValue];
      v39 = v59;

      v45 = [v33 objectForKeyedSubscript:@"Options"];
      v41 = [(ContextPluginACM *)v53 _acmParamForPolicy:a3 options:v45 userId:v44 secondPass:1];

      acmHelper = v53->_acmHelper;
      v47 = [LACACMHelper acmPolicyForPolicy:a3];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_6F70;
      v64[3] = &unk_30908;
      v65 = v56;
      [(LACACMHelper *)acmHelper preflightPolicy:v47 parameters:v41 maxGlobalCredentialAge:v48 processRequirement:v64];
      v40 = v65;
      v36 = v58;
    }

    else
    {
      if (!v35)
      {
        v41 = [LAErrorHelper internalErrorWithMessage:@"Unexpected result type."];
        (v30[2])(v30, 0, v41);
        goto LABEL_12;
      }

      v39 = v59;
      v63 = 0;
      v40 = [(ContextPluginACM *)v53 _operationAsString:v31 error:&v63];
      v41 = v63;
      if (v40)
      {
        v42 = v53->_acmHelper;
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_6F98;
        v61[3] = &unk_30930;
        v62 = v56;
        v43 = v42;
        v36 = v58;
        [(LACACMHelper *)v43 verifyAclConstraint:v35 operation:v40 preflight:1 parameters:0 maxGlobalCredentialAge:v48 processRequirement:v61];
      }

      else
      {
        (v30[2])(v30, 0, v54);
      }
    }

    v34 = v39;
LABEL_12:

    v22 = v51;
    v18 = v52;
    v23 = v54;
    v27 = v49;
    v26 = v50;
    goto LABEL_13;
  }

  (v28[2])(v28, 0, v23);
  v36 = v58;
  v34 = v59;
LABEL_13:

  objc_destroyWeak(&v81);
  objc_destroyWeak(location);
}

- (BOOL)_isEvent:(int64_t)a3 contributingToResult:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7098;
  v10[3] = &unk_30950;
  v10[4] = a3;
  v5 = sub_7098(v10);
  v6 = a4;
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [v6 objectForKeyedSubscript:v7];

  LOBYTE(v6) = [v8 BOOLValue];
  return v6;
}

- (unsigned)_credentialTypeForRequirementType:(unsigned int)a3
{
  v4 = a3 - 1;
  if (a3 - 1 < 0x1B && ((0x6047C07u >> v4) & 1) != 0)
  {
    return dword_260F8[v4];
  }

  v6 = sub_26D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_18DF8(a3, v6);
  }

  return 0;
}

- (void)_removeRequestedCredentials:(__ACMRequirement *)a3
{
  Type = ACMRequirementGetType(a3, a2);
  if (Type == 7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_74BC;
    v15[3] = &unk_30978;
    v15[4] = self;
    ACMRequirementGetSubrequirements(a3, v15);
  }

  else
  {
    v7 = Type;
    if (ACMRequirementGetState(a3, v6) == 1)
    {
      v8 = [(ContextPluginACM *)self _credentialTypeForRequirementType:v7];
      if (v8)
      {
        v9 = v8;
        acmHelper = self->_acmHelper;
        v14 = 0;
        v11 = [(LACACMHelper *)acmHelper removeCredentialsOfType:v9 error:&v14];
        v12 = v14;
        if ((v11 & 1) == 0)
        {
          v13 = sub_26D8();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_18E70(v12, v7, v13);
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }
}

- (id)_decodeOperation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = v3;
LABEL_19:
    v6 = v5;
    goto LABEL_20;
  }

  v4 = [v3 integerValue];
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == &def_1FF08 + 1)
      {
        goto LABEL_15;
      }

      v6 = 0;
      if (v4 != &def_1FF08 + 2)
      {
        goto LABEL_20;
      }
    }

    v6 = &stru_31610;
    goto LABEL_20;
  }

  if (v4 <= 4)
  {
    if (v4 == &def_1FF08 + 3)
    {
      v7 = &off_310F0;
      goto LABEL_18;
    }

LABEL_15:
    v7 = &off_310D0;
LABEL_18:
    v5 = *v7;
    goto LABEL_19;
  }

  if (v4 == &dword_4 + 1)
  {
    v7 = &off_31110;
    goto LABEL_18;
  }

  if (v4 == stru_3D8.segname)
  {
    v6 = @"oacl";
  }

  else
  {
    v6 = 0;
  }

LABEL_20:

  return v6;
}

- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 reply:(id)a9
{
  v36 = a3;
  v33 = a4;
  v14 = a5;
  v32 = a6;
  v15 = a7;
  v34 = a8;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_7970;
  v52[3] = &unk_306C8;
  v31 = a9;
  v53 = v31;
  v35 = objc_retainBlock(v52);
  v16 = [v14 objectForKey:&off_325F0];
  LOBYTE(a6) = [v16 BOOLValue];

  if (a6)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = [v15 processId];
    v20 = [v14 objectForKeyedSubscript:&off_32878];
    if (v20 && [v15 checkEntitlement:@"com.apple.private.LocalAuthentication.CallerPID"])
    {
      v19 = [v20 intValue];
    }

    if (v15)
    {
      [v15 auditToken];
    }

    else
    {
      *location = 0u;
      v51 = 0u;
    }

    v49 = 0;
    v17 = [DaemonUtils callerDisplayNameWithPid:v19 auditToken:location bundleId:&v49];
    v18 = v49;
    v21 = [v14 objectForKeyedSubscript:&off_32890];
    if (v21 && [v15 checkEntitlement:@"com.apple.private.LocalAuthentication.CallerName"])
    {
      v22 = v21;

      v17 = v22;
    }
  }

  objc_initWeak(location, v15);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_7A00;
  v38[3] = &unk_309C8;
  v23 = v33;
  v39 = v23;
  v40 = self;
  v24 = v36;
  v41 = v24;
  v25 = v14;
  v42 = v25;
  v26 = v32;
  v43 = v26;
  objc_copyWeak(&v48, location);
  v27 = v34;
  v44 = v27;
  v28 = v17;
  v45 = v28;
  v29 = v18;
  v46 = v29;
  v30 = v35;
  v47 = v30;
  [(ContextPluginACM *)self evaluateACL:v24 operation:v23 options:v25 uiDelegate:v26 originator:v15 request:v27 callerName:v28 callerBundleId:v29 reply:v38];

  objc_destroyWeak(&v48);
  objc_destroyWeak(location);
}

- (void)_handleCTKACL:(id)a3 tokenId:(id)a4 operation:(id)a5 options:(id)a6 originator:(id)a7 request:(id)a8 callerName:(id)a9 callerBundleId:(id)a10 reply:(id)a11
{
  v34 = a3;
  v37 = a4;
  v35 = a5;
  v31 = a6;
  v36 = a7;
  v17 = a8;
  v32 = a9;
  v33 = a10;
  v18 = a11;
  v19 = [v17 log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v37;
    _os_log_impl(&def_1FF08, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ handles CTK request using tokenId:%{public}@", buf, 0x16u);
  }

  v20 = [LAContext alloc];
  v21 = [(ContextPluginACM *)self cachedExternalizedContext];
  v22 = [v21 externalizedContext];
  v23 = [v20 initWithExternalizedContext:v22];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v24 = qword_350D0;
  v49 = qword_350D0;
  if (!qword_350D0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_D5F0;
    v51 = &unk_30D70;
    v52 = &v46;
    sub_D5F0(buf);
    v24 = v47[3];
  }

  v25 = v24;
  _Block_object_dispose(&v46, 8);
  v26 = [[v24 alloc] initWithTokenID:v37];
  v45 = 0;
  v27 = [v26 sessionWithLAContext:v23 error:&v45];
  v28 = v45;

  if (v27)
  {
    CFRetain(v27);
    self->_ctkCallerSet = 1;
    objc_storeStrong(&self->_ctkCallerOptions, a6);
    self->_ctkCallerProcessId = [v36 processId];
    objc_storeStrong(&self->_ctkCallerName, a9);
    objc_storeStrong(&self->_ctkCallerBundleId, a10);
    v29 = [v17 log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&def_1FF08, v29, OS_LOG_TYPE_INFO, "TKClientTokenSession created successfully.", buf, 2u);
    }

    v30 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_80B0;
    block[3] = &unk_309F0;
    v39 = v27;
    v40 = v34;
    v41 = v35;
    v42 = self;
    v44 = v18;
    v43 = v17;
    dispatch_async(v30, block);
  }

  else
  {
    (*(v18 + 2))(v18, 0, v28);
  }
}

- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 callerName:(id)a9 callerBundleId:(id)a10 reply:(id)a11
{
  v17 = a3;
  v18 = a4;
  v36 = a5;
  v35 = a6;
  v37 = a7;
  v40 = a8;
  v38 = a9;
  v39 = a10;
  v19 = a11;
  v20 = [(ContextPluginACM *)self _decodeOperation:v18];
  if (v20)
  {
    v51 = 0;
    v21 = SecAccessControlCreateFromData();
    if (v21)
    {
      v22 = SecAccessControlGetProtection();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v23 = qword_350D8;
        v55 = qword_350D8;
        if (!qword_350D8)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v57 = sub_D648;
          v58 = &unk_30D70;
          v59 = &v52;
          v24 = sub_D424();
          v25 = dlsym(v24, "TKAccessControlProtectionTokenIDKey");
          *(v59[1] + 24) = v25;
          qword_350D8 = *(v59[1] + 24);
          v23 = v53[3];
        }

        _Block_object_dispose(&v52, 8);
        if (!v23)
        {
          sub_18EF8();
          __break(1u);
        }

        v26 = *v23;
        v27 = [v22 objectForKey:v26];

        v28 = [v40 log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v27;
          _os_log_impl(&def_1FF08, v28, OS_LOG_TYPE_DEFAULT, "ACL is protected by TKToken: %{public}@", &buf, 0xCu);
        }

        v29 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_8708;
        block[3] = &unk_30A40;
        block[4] = self;
        v42 = v17;
        v43 = v27;
        v44 = v20;
        v45 = v36;
        v46 = v37;
        v47 = v40;
        v48 = v38;
        v49 = v39;
        v50 = v19;
        v30 = v27;
        dispatch_async(v29, block);
      }

      else
      {
        v34 = [v40 log];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v22;
          _os_log_impl(&def_1FF08, v34, OS_LOG_TYPE_INFO, "ACL protection: %{public}@", &buf, 0xCu);
        }

        if ([v20 isEqualToString:&stru_31610])
        {
          [(ContextPluginACM *)self _validateACL:v21 evaluateOperation:v20 options:v36 uiDelegate:v35 originator:v37 request:v40 callerName:v38 callerBundleId:v39 reply:v19];
        }

        else
        {
          [(ContextPluginACM *)self _evaluateACL:v21 operation:v20 options:v36 uiDelegate:v35 originator:v37 request:v40 callerName:v38 callerBundleId:v39 reply:v19];
        }
      }
    }

    else
    {
      v22 = [NSString stringWithFormat:@"Invalid ACL: '%@'", v17];
      v33 = [LAErrorHelper parameterErrorWithMessage:v22];
      (*(v19 + 2))(v19, 0, v33);
    }
  }

  else
  {
    v31 = [NSString stringWithFormat:@"Invalid operation: %@", v18];
    v32 = [LAErrorHelper parameterErrorWithMessage:v31];
    (*(v19 + 2))(v19, 0, v32);
  }
}

- (void)_evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 callerName:(id)a9 callerBundleId:(id)a10 reply:(id)a11
{
  v32 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  objc_initWeak(location, v19);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_8B08;
  v34[3] = &unk_30A90;
  v31 = v23;
  v42 = v31;
  v24 = v32;
  v35 = v24;
  v36 = self;
  v25 = v17;
  v37 = v25;
  v26 = v18;
  v38 = v26;
  objc_copyWeak(&v43, location);
  v27 = v20;
  v39 = v27;
  v28 = v21;
  v40 = v28;
  v29 = v22;
  v41 = v29;
  LOBYTE(v30) = 0;
  [(ContextPluginACM *)self _evaluateOperation:v16 aclRef:v24 options:v25 uiDelegate:v26 originator:v19 request:v27 validate:v30 callerName:v28 callerBundleId:v29 reply:v34];

  objc_destroyWeak(&v43);
  objc_destroyWeak(location);
}

- (id)_fillConstraint:(id)a3 options:(id)a4 userId:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_9418;
  v64[3] = &unk_30AB0;
  v64[4] = a6;
  v12 = objc_retainBlock(v64);
  v13 = +[NSMutableDictionary dictionary];
  v14 = [v9 objectForKey:@"cbio"];
  objc_opt_class();
  v58 = v11;
  if ((objc_opt_isKindOfClass() & 1) != 0 || !v14)
  {
LABEL_16:
    v15 = [v10 objectForKey:&off_32680];
    if (!v15)
    {
LABEL_25:
      v57 = v13;
      v35 = [v9 objectForKey:@"cup"];
      v36 = [v35 BOOLValue];

      if (v36)
      {
        if (!v14 || ([v9 objectForKey:@"pkofn"], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "integerValue"), v37, v38 == &def_1FF08 + 2))
        {
          v39 = +[LAPasscodeHelper sharedInstance];
          v61 = 0;
          v40 = [v39 isPasscodeSetForUser:objc_msgSend(v11 error:{"unsignedIntValue"), &v61}];
          v41 = v61;

          if (!v40)
          {
            v31 = (v12[2])(v12, v41);
            v13 = v57;
LABEL_46:

            goto LABEL_47;
          }
        }
      }

      v42 = v10;
      v41 = [v9 objectForKey:@"cpo"];
      if (v41)
      {
        v43 = +[LAPasscodeHelper sharedInstance];
        v60 = 0;
        v44 = [v43 isPasscodeSetForUser:objc_msgSend(v11 error:{"unsignedIntValue"), &v60}];
        v45 = v60;

        if (!v44)
        {
          v31 = (v12[2])(v12, v45);
          goto LABEL_44;
        }
      }

      v45 = [v9 objectForKey:@"ckon"];
      if (!v45)
      {
LABEL_39:
        v49 = (v12[2])(v12, 0);
        v13 = v57;
        v31 = v57;
LABEL_45:

        v10 = v42;
        goto LABEL_46;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v59 = 0;
        v46 = [(ContextPluginACM *)self _fillConstraint:v45 options:v42 userId:v11 error:&v59];
        v47 = v59;
        if (v46)
        {
          if ([v46 count])
          {
            v48 = [v45 dictionaryByMergingWith:v46];
            [v57 setObject:v48 forKey:@"ckon"];
          }

          goto LABEL_39;
        }

        v31 = (v12[2])(v12, v47);
      }

      else
      {
        v50 = [LAErrorHelper internalErrorWithMessage:@"Kofn constraint must be a dictionary."];
        v31 = (v12[2])(v12, v50);
      }

LABEL_44:
      v13 = v57;
      goto LABEL_45;
    }

    v29 = [v9 objectForKey:@"pgcma"];
    if (!v29)
    {
      v30 = [v13 objectForKey:@"cbio"];
      if (v30)
      {

LABEL_23:
        [v15 doubleValue];
        v34 = [NSNumber numberWithUnsignedInteger:(v33 * 1000.0)];
        [v13 setObject:v34 forKey:@"pgcma"];

        goto LABEL_24;
      }

      v32 = [v9 objectForKey:@"cpo"];

      if (v32)
      {
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [LAErrorHelper internalErrorWithMessage:@"Bio constraint must be a dictionary."];
    v31 = (v12[2])(v12, v15);
    goto LABEL_47;
  }

  v15 = +[NSMutableDictionary dictionary];
  v16 = [v14 objectForKey:@"pbioc"];
  v17 = v16;
  v54 = v10;
  if (v16 && ![v16 length])
  {
    v18 = v13;
    v19 = +[BiometryHelper sharedInstance];
    v20 = [v19 catacombUUID:v11];

    if (!v20)
    {
      v52 = [NSString stringWithFormat:@"Failed to get bio catacomb UUID for user %@.", v11];
      v53 = [LAErrorHelper internalErrorWithMessage:v52];
      v31 = (v12[2])(v12, v53);

      v10 = v54;
      v13 = v18;
      goto LABEL_47;
    }

    [v15 setObject:v20 forKey:@"pbioc"];
    v17 = v20;
    v13 = v18;
  }

  v21 = [v14 objectForKey:@"pbioh"];
  v22 = v21;
  if (!v21 || [v21 length])
  {
    goto LABEL_12;
  }

  v56 = v13;
  v23 = +[BiometryHelper sharedInstance];
  v63 = 0;
  v24 = [v23 biometryDatabaseHashForUser:v58 error:&v63];

  if (v24)
  {
    [v15 setObject:v24 forKey:@"pbioh"];
    v22 = v24;
    v13 = v56;
LABEL_12:
    if (![v15 count])
    {
LABEL_15:

      v10 = v54;
      v11 = v58;
      goto LABEL_16;
    }

    v56 = v13;
    v25 = +[BiometryHelper sharedInstance];
    v62 = 0;
    v26 = [v25 isEnrolledWithoutHardware:v58 error:&v62];
    v27 = v62;

    if (v26)
    {
      v28 = [v14 dictionaryByMergingWith:v15];
      [v56 setObject:v28 forKey:@"cbio"];

      v13 = v56;
      goto LABEL_15;
    }

    v31 = (v12[2])(v12, v27);

    goto LABEL_52;
  }

  v22 = [LAErrorHelper internalErrorWithMessage:@"Failed to get bio database hash."];
  v31 = (v12[2])(v12, v22);
LABEL_52:

  v10 = v54;
  v13 = v56;
LABEL_47:

  return v31;
}

- (void)_evaluateOperation:(id)a3 aclRef:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 validate:(BOOL)a9 callerName:(id)a10 callerBundleId:(id)a11 reply:(id)a12
{
  v18 = a3;
  v68 = a4;
  v19 = a5;
  v66 = a6;
  v67 = a7;
  v20 = a8;
  v65 = a10;
  v21 = a11;
  v22 = a12;
  v23 = [v20 log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    v92 = 2114;
    v93 = v18;
    _os_log_impl(&def_1FF08, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ evaluates operation: %{public}@", buf, 0x16u);
  }

  if (![v18 isEqualToString:&stru_31610])
  {
    v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v67 userId]);
    v27 = [(ContextPluginACM *)self _updateRecoveryRetryCountIfNeeded:v19 request:v20 userId:v26];

    Constraint = SecAccessControlGetConstraint();
    v64 = v27;
    if (!Constraint)
    {
      if (a9)
      {
        v22[2](v22, &__NSDictionary0__struct, 0);
      }

      else
      {
        v34 = [NSString stringWithFormat:@"ACL operation is not allowed: '%@'", v18];
        v35 = [LAErrorHelper errorWithCode:-1009 message:v34];
        (v22)[2](v22, 0, v35);
      }

      v25 = v65;
      v24 = v66;
      goto LABEL_34;
    }

    v29 = CFRetain(Constraint);
    objc_opt_class();
    v63 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [v27 objectForKeyedSubscript:&off_328A8];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v67 userId]);
      }

      v36 = v32;

      v86 = 0;
      v33 = [(ContextPluginACM *)self _fillConstraint:v63 options:v27 userId:v36 error:&v86];
      v37 = v86;
      v38 = v36;
      v39 = v37;
      if (v33)
      {
        v56 = v38;
        v59 = v37;
        *buf = 0;
        if (![v33 count])
        {
          goto LABEL_18;
        }

        v88 = v33;
        v89 = &off_328C0;
        v87 = v18;
        [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v40 = v61 = v33;
        v90 = v40;
        v41 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v42 = sub_11BC0(v68, v41, buf);

        v33 = v61;
        if (v42)
        {
LABEL_18:

          v27 = v64;
          goto LABEL_19;
        }

        v51 = *buf;
        v22[2](v22, 0, *buf);

        v48 = v61;
        v49 = v56;
        v25 = v65;
        v24 = v66;
        v50 = v63;
      }

      else
      {
        (v22)[2](v22, 0, v37);
        v48 = v38;
        v25 = v65;
        v24 = v66;
        v49 = v39;
        v50 = v63;
      }

LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    v33 = &__NSDictionary0__struct;
LABEL_19:
    v60 = SecAccessControlCopyConstraintData();
    v43 = [v27 objectForKey:&off_32680];
    v25 = v65;
    v62 = v33;
    v57 = v43;
    if (v43)
    {
      [v43 doubleValue];
      v45 = (v44 * 1000.0);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [v63 objectForKey:@"pgcma"];
        v47 = v46;
        if (v46)
        {
          v45 = [v46 unsignedIntValue];
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    v85 = 0;
    v52 = [(ContextPluginACM *)self _operationAsString:v18 error:&v85];
    v53 = v85;
    v55 = v53;
    if (v52)
    {
      acmHelper = self->_acmHelper;
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_9B3C;
      v69[3] = &unk_30B00;
      v82 = v22;
      v70 = v20;
      v71 = v63;
      v72 = v67;
      v84 = a9;
      v73 = v62;
      v74 = self;
      v75 = v27;
      v76 = v65;
      v77 = v21;
      v83 = v45;
      v49 = v60;
      v58 = v45;
      v78 = v60;
      v79 = v18;
      v24 = v66;
      v80 = v66;
      v81 = v68;
      v50 = v63;
      [(LACACMHelper *)acmHelper verifyAclConstraint:v78 operation:v52 preflight:1 parameters:0 maxGlobalCredentialAge:v58 processRequirement:v69];
    }

    else
    {
      (v22)[2](v22, 0, v53);
      v24 = v66;
      v49 = v60;
      v50 = v63;
    }

    v48 = v62;
    goto LABEL_33;
  }

  v22[2](v22, &__NSDictionary0__struct, 0);
  v25 = v65;
  v24 = v66;
LABEL_35:
}

- (id)_operationAsString:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"Invalid operation: %@", v5];
    v7 = [LAErrorHelper internalErrorWithMessage:v8];

    v6 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = v5;
  v7 = 0;
  if (a4)
  {
LABEL_5:
    v9 = v7;
    *a4 = v7;
  }

LABEL_6:

  return v6;
}

- (void)_validateACL:(id)a3 evaluateOperation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 callerName:(id)a9 callerBundleId:(id)a10 reply:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v28 = a9;
  v22 = a10;
  v23 = a11;
  v24 = SecAccessControlGetConstraints();
  if (v24)
  {
    v27 = v21;
    objc_initWeak(location, v20);
    v25 = [v24 keyEnumerator];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_A45C;
    v29[3] = &unk_30B28;
    v36[1] = v16;
    v35 = v23;
    v29[4] = self;
    v30 = v18;
    v31 = v19;
    objc_copyWeak(v36, location);
    v32 = v27;
    v33 = v28;
    v34 = v22;
    [(ContextPluginACM *)self _validateOperations:v25 aclRef:v16 evaluateOperation:v17 options:v30 uiDelegate:v31 originator:v20 request:v32 currentResult:&__NSDictionary0__struct reply:v29];

    objc_destroyWeak(v36);
    objc_destroyWeak(location);
    v21 = v27;
  }

  else
  {
    (*(v23 + 2))(v23, &__NSDictionary0__struct, 0);
  }
}

- (void)_validateOperations:(id)a3 aclRef:(id)a4 evaluateOperation:(id)a5 options:(id)a6 uiDelegate:(id)a7 originator:(id)a8 request:(id)a9 currentResult:(id)a10 reply:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = v16;
  v33 = v19;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = [v20 nextObject];
  v31 = v26;
  v32 = v18;
  if (v26)
  {
    v27 = v26;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_A8F0;
    v34[3] = &unk_30B50;
    v45 = v25;
    v35 = v24;
    v36 = v27;
    v37 = self;
    v38 = v20;
    v39 = v17;
    v40 = v18;
    v41 = v33;
    v42 = v21;
    v43 = v22;
    v44 = v23;
    [(ContextPluginACM *)self _validateOperation:v36 aclRef:v39 evaluateOperation:v40 options:v41 uiDelegate:v42 originator:v43 request:v44 reply:v34];

    v28 = v45;
  }

  else
  {
    v47 = v24;
    v48 = @"Result";
    v46 = &off_328C0;
    v28 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v49 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    (*(v25 + 2))(v25, v29, 0);
  }
}

- (void)_validateOperation:(id)a3 aclRef:(id)a4 evaluateOperation:(id)a5 options:(id)a6 uiDelegate:(id)a7 originator:(id)a8 request:(id)a9 reply:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a5;
  v24 = [v21 log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = self;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&def_1FF08, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ validates operation: %{public}@", buf, 0x16u);
  }

  v25 = [v16 isEqual:v23];
  if (v25)
  {
    v22[2](v22, &__NSDictionary0__struct, 0);
  }

  else
  {
    LOBYTE(v26) = 1;
    [(ContextPluginACM *)self _evaluateOperation:v16 aclRef:v17 options:v18 uiDelegate:v19 originator:v20 request:v21 validate:v26 callerName:0 callerBundleId:0 reply:v22];
  }
}

- (BOOL)_validatePassword:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 callerName:(id)a8 callerBundleId:(id)a9 reply:(id)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  acmHelper = self->_acmHelper;
  v50[0] = 0;
  v23 = [(LACACMHelper *)acmHelper isCredentialOfTypeSet:2 error:v50];
  v24 = v50[0];
  if ((v23 & 1) == 0)
  {
    v40 = v17;
    v38 = v16;
    v25 = [v15 objectForKey:&off_325F0];
    v26 = [v25 BOOLValue];

    if (v26)
    {
      v27 = [LAErrorHelper errorWithCode:-1004 message:@"User interaction is required."];
      v21[2](v21, 0, v27);
      v16 = v38;
    }

    else
    {
      v16 = v38;
      if (!self->_applicationPasswordWasSet)
      {
        v17 = v40;
        if (self->_applicationPasswordCounter < 5)
        {
          v37 = [(ContextPluginACM *)self createInternalInfo:v15 skipCallerIdentification:v19 != 0 callerBundleId:0 request:v18 originator:v40];
          if (v19)
          {
            [v37 setObject:v19 forKey:@"CallerName"];
          }

          if (v20)
          {
            [v37 setObject:v20 forKey:@"CallerId"];
          }

          v34 = [v18 payload];
          v29 = [v34 mutableCopy];
          v33 = v20;
          if (v29)
          {
            v30 = v29;
            v31 = v29;
          }

          else
          {
            v30 = 0;
            v31 = objc_opt_new();
          }

          v36 = v31;

          [v36 setObject:v37 forKeyedSubscript:LACEvaluationRequestPayloadKeyInternalInfo];
          [v18 updatePayload:v36];
          objc_initWeak(&location, v40);
          v35 = [[ACMContextRecord alloc] initWithACMContext:self->_acmContext cachedExternalizationDelegate:self];
          mechanismManager = self->_mechanismManager;
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_AFFC;
          v41[3] = &unk_30BC8;
          v42 = v15;
          v43 = self;
          v27 = v37;
          v44 = v27;
          v45 = v38;
          objc_copyWeak(&v48, &location);
          v46 = v18;
          v47 = v21;
          v17 = v40;
          [(MechanismManagerACM *)mechanismManager mechanismForApplicationPasswordMode:a3 acmContextRecord:v35 options:v42 internalInfo:v27 uiDelegate:v45 originator:v40 request:v46 reply:v41];
          v20 = v33;

          objc_destroyWeak(&v48);
          objc_destroyWeak(&location);

          v16 = v38;
        }

        else
        {
          self->_applicationPasswordCounter = 0;
          v27 = [LAErrorHelper errorWithCode:-1 message:@"Application retry limit exceeded."];
          v21[2](v21, 0, v27);
        }

        goto LABEL_7;
      }

      v27 = [LAErrorHelper errorWithCode:-1 message:@"Missing application password."];
      v21[2](v21, 0, v27);
    }

    v17 = v40;
LABEL_7:
  }

  return v23;
}

- (void)isCredentialSet:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 > -3)
  {
    v12 = 2;
    if (a3 != -2)
    {
      if (a3 == -1)
      {
        if (([v8 checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"] & 1) == 0)
        {
          v18 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
          goto LABEL_22;
        }

        v12 = 1;
      }

      else if (a3)
      {
LABEL_21:
        v18 = [LAErrorHelper parameterErrorWithMessage:@"Unsupported credential type"];
        goto LABEL_22;
      }
    }

LABEL_16:
    acmHelper = self->_acmHelper;
    v19 = 0;
    [(LACACMHelper *)acmHelper isCredentialOfTypeSet:v12 error:&v19];
    v18 = v19;
LABEL_22:
    v15 = v18;
    goto LABEL_23;
  }

  if (a3 == -9)
  {
    v13 = self->_acmHelper;
    v20 = 0;
    v14 = [(LACACMHelper *)v13 hasDataWithType:7 error:&v20];
    v15 = v20;
    if ((v14 & 1) == 0)
    {
      v16 = [LAErrorHelper errorWithCode:-1008 message:@"Credential not set"];

      v11 = 0;
      v15 = v16;
      goto LABEL_24;
    }

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if (a3 == -6)
  {
    v12 = 14;
    goto LABEL_16;
  }

  if (a3 != -3)
  {
    goto LABEL_21;
  }

  ctkPin = self->_ctkPin;
  if (ctkPin)
  {
    v11 = ctkPin;
    goto LABEL_19;
  }

  v11 = +[NSNull null];
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_19:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [LAErrorHelper errorWithCode:-1008 message:@"Credential not set"];
  }

  else
  {
    v15 = 0;
  }

LABEL_24:
  v9[2](v9, v15 == 0, v15);
}

- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 originator:(id)a6 reply:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a4 > -7)
  {
    if (a4 > -2)
    {
      if (a4 == -1)
      {
        if (![v15 checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
        {
          v40 = @"com.apple.private.CoreAuthentication.SPI";
          goto LABEL_37;
        }

        if (!v13)
        {
          acmHelper = self->_acmHelper;
          v48 = 0;
          v18 = [(LACACMHelper *)acmHelper removeCredentialsOfType:1 error:&v48];
          v19 = v48;
          goto LABEL_54;
        }

        v34 = +[LACPasscodeHelper sharedInstance];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_BB60;
        v49[3] = &unk_30BF0;
        v50 = v13;
        v51 = self;
        v52 = v15;
        v53 = v14;
        v35 = sub_BB60(v49);
        v36 = [v34 verifyPasscode:v35];

        v18 = v36 == 0;
        if (v36)
        {
          v37 = [NSString stringWithFormat:@"Password rejected (%d)", v36];
          v20 = [LAErrorHelper errorWithCode:-1 message:v37];
        }

        else
        {
          v37 = [(ContextPluginACM *)self resultInfo];
          v64 = @"Result";
          v62 = &off_328F0;
          v63 = &__kCFBooleanTrue;
          v44 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v65 = v44;
          v45 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v46 = [v37 dictionaryByMergingWith:v45];
          [(ContextPluginACM *)self setResultInfo:v46];

          v20 = 0;
        }

        goto LABEL_55;
      }

      if (a4)
      {
        goto LABEL_32;
      }

      if (v13)
      {
        v23 = +[LACSecureData secureDataWithBytes:length:](LACSecureData, "secureDataWithBytes:length:", [v13 bytes], objc_msgSend(v13, "length"));
        v24 = self->_acmHelper;
        v61 = 0;
        v25 = [(LACACMHelper *)v24 replacePassphraseCredentialWithPurpose:0 passphrase:v23 scope:1 error:&v61];
        v20 = v61;

        if ((v25 & 1) == 0)
        {
LABEL_38:
          v18 = 0;
          goto LABEL_55;
        }
      }

      else
      {
        v42 = self->_acmHelper;
        v60 = 0;
        v18 = [(LACACMHelper *)v42 removeCredentialsOfType:2 error:&v60];
        v20 = v60;
        if (!v18)
        {
          goto LABEL_55;
        }
      }

      self->_applicationPasswordWasSet = v13 != 0;
    }

    else
    {
      if (a4 == -6)
      {
        if ([v15 checkEntitlement:@"com.apple.private.LocalAuthentication.RGBCapture"])
        {
          v27 = self->_acmHelper;
          if (v13)
          {
            v57 = 0;
            v18 = [(LACACMHelper *)v27 addCredential:14 scope:1 error:&v57];
            v19 = v57;
          }

          else
          {
            v56 = 0;
            v18 = [(LACACMHelper *)v27 removeCredentialsOfType:14 error:&v56];
            v19 = v56;
          }

          goto LABEL_54;
        }

        v40 = @"com.apple.private.LocalAuthentication.RGBCapture";
        goto LABEL_37;
      }

      if (a4 != -3)
      {
LABEL_32:
        v38 = [NSNumber numberWithInteger:a4];
        v39 = [NSString stringWithFormat:@"Unsupported credentialType: %@", v38];
        v20 = [LAErrorHelper parameterErrorWithMessage:v39];

        goto LABEL_38;
      }

      objc_storeStrong(&self->_ctkPin, a3);
      v20 = 0;
    }

    v18 = 1;
    goto LABEL_55;
  }

  if (a4 <= -10)
  {
    if (a4 != -12)
    {
      if (a4 == -11)
      {
        v17 = self->_acmHelper;
        v47 = 0;
        v18 = [(LACACMHelper *)v17 addCredential:21 scope:1 property:1001 data:v13 error:&v47];
        v19 = v47;
LABEL_54:
        v20 = v19;
        goto LABEL_55;
      }

      goto LABEL_32;
    }

    if ([v15 checkEntitlement:@"com.apple.private.LocalAuthentication.PasscodeStashSecret"])
    {
      v26 = self->_acmHelper;
      if (v13)
      {
        v22 = [LACSecureData secureDataWithData:v13];
      }

      else
      {
        v22 = 0;
      }

      v54 = 0;
      v18 = [(LACACMHelper *)v26 setSecretForPasscodeStash:v22 error:&v54];
      v41 = v54;
LABEL_46:
      v20 = v41;
      if (v13)
      {
      }

      goto LABEL_55;
    }

    v40 = @"com.apple.private.LocalAuthentication.PasscodeStashSecret";
LABEL_37:
    v20 = [LAErrorHelper missingEntitlementError:v40];
    goto LABEL_38;
  }

  if (a4 != -9)
  {
    if (a4 == -8)
    {
      v21 = self->_acmHelper;
      if (v13)
      {
        v22 = [LACSecureData secureDataWithData:v13];
      }

      else
      {
        v22 = 0;
      }

      v55 = 0;
      v18 = [(LACACMHelper *)v21 setData:v22 type:5 encoded:[LACContextCredentialCoder error:"checkCredentialRequiresEncoding:" checkCredentialRequiresEncoding:?], &v55];
      v41 = v55;
      goto LABEL_46;
    }

    goto LABEL_32;
  }

  v28 = [[LACCredentialExtractablePasswordAuthorizer alloc] initWithACMHelper:self->_acmHelper];
  v59 = 0;
  v29 = [v28 checkOriginatorCanWriteExtractableCredential:v15 error:&v59];
  v30 = v59;
  v31 = v30;
  if (v29)
  {
    v32 = self->_acmHelper;
    if (v13)
    {
      v33 = [LACSecureData secureDataWithData:v13];
    }

    else
    {
      v33 = 0;
    }

    v58 = 0;
    v18 = [(LACACMHelper *)v32 setData:v33 type:7 encoded:[LACContextCredentialCoder error:"checkCredentialRequiresEncoding:" checkCredentialRequiresEncoding:?], &v58];
    v20 = v58;
    if (v13)
    {
    }
  }

  else
  {
    v20 = v30;
    v18 = 0;
  }

LABEL_55:
  v16[2](v16, v18, v20);
}

- (void)credentialOfType:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 == -9)
  {
    v10 = [[LACCredentialExtractablePasswordAuthorizer alloc] initWithACMHelper:self->_acmHelper];
    v20 = 0;
    v11 = [v10 checkOriginatorCanReadExtractableCredential:v8 error:&v20];
    v12 = v20;
    if (v11)
    {
      acmHelper = self->_acmHelper;
      v19 = v12;
      v14 = [(LACACMHelper *)acmHelper dataWithType:7 encoded:[LACContextCredentialCoder error:"checkCredentialRequiresEncoding:" checkCredentialRequiresEncoding:?], &v19];
      v15 = v19;

      v16 = [v14 data];
      v9[2](v9, v16, v15);

      v12 = v15;
    }

    else
    {
      v9[2](v9, 0, v12);
    }
  }

  else
  {
    v17 = [NSString stringWithFormat:@"Unsupported credentialType: %d", a3];
    v18 = [LAErrorHelper parameterErrorWithMessage:v17];
    v9[2](v9, 0, v18);
  }
}

- (void)checkCredentialSatisfied:(int64_t)a3 policy:(int64_t)a4 reply:(id)a5
{
  acmHelper = self->_acmHelper;
  v9 = a5;
  v12 = 0;
  v10 = [(LACACMHelper *)acmHelper verifyRequirementOfType:[(ContextPluginACM *)self _requirementTypeForCredentialType:a3] policy:[LACACMHelper error:"acmPolicyForPolicy:" acmPolicyForPolicy:a4], &v12];
  v11 = v12;
  v9[2](v9, v10, v11);
}

- (void)credentialsUUIDWithOriginator:(id)a3 reply:(id)a4
{
  v6 = a4;
  if ([a3 checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    acmHelper = self->_acmHelper;
    v12 = 0;
    v8 = [(LACACMHelper *)acmHelper dataWithType:10 error:&v12];
    v9 = v12;
    if (v8)
    {
      v10 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
      v6[2](v6, v10, 0);
    }

    else
    {
      (v6)[2](v6, 0, v9);
    }
  }

  else
  {
    v11 = [LACError errorWithCode:LACErrorCodeDenied debugDescription:@"Missing required credential entitlements"];
    (v6)[2](v6, 0, v11);
  }
}

- (void)setCredentialsUUID:(id)a3 originator:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_C1CC;
    v18[3] = &unk_30C18;
    v19 = v8;
    v10 = sub_C1CC(v18);
    acmHelper = self->_acmHelper;
    v17 = 0;
    v12 = [(LACACMHelper *)acmHelper setData:v10 type:10 error:&v17];
    v13 = v17;
    if (v12)
    {
      v14 = 1;
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = v13;
    }

    (v9)[2](v9, v14, v15);
  }

  else
  {
    v16 = [LACError errorWithCode:LACErrorCodeDenied debugDescription:@"Missing required credential entitlements"];
    (v9)[2](v9, 0, v16);
  }
}

- (void)credentialEncodingSeedWithReply:(id)a3
{
  v4 = a3;
  acmHelper = self->_acmHelper;
  v9 = 0;
  v6 = [(LACACMHelper *)acmHelper dataWithType:13 error:&v9];
  v7 = v9;
  if (v6)
  {
    v8 = [v6 data];
    v4[2](v4, v8, 0);
  }

  else
  {
    (v4)[2](v4, 0, v7);
  }
}

- (unsigned)_requirementTypeForCredentialType:(int64_t)a3
{
  if (a3 == -1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == -2);
  }
}

- (void)externalizedContextWithReply:(id)a3
{
  v4 = a3;
  acmContext = self->_acmContext;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C3C8;
  v7[3] = &unk_30C40;
  v8 = v4;
  v6 = v4;
  ACMContextGetExternalForm(acmContext, v7);
}

- (void)setOptions:(id)a3 forInternalOperation:(int64_t)a4 originator:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [v11 originatorId];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_C5FC;
  v17[3] = &unk_30C68;
  objc_copyWeak(v20, &location);
  v14 = v10;
  v18 = v14;
  v20[1] = a4;
  v20[2] = v13;
  v15 = v12;
  v19 = v15;
  v16.receiver = self;
  v16.super_class = ContextPluginACM;
  [(ContextPluginACM *)&v16 setOptions:v14 forInternalOperation:a4 originator:v11 reply:v17];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)_setOptions:(id)a3 forInternalOperation:(int64_t)a4 originatorId:(unint64_t)a5 reply:(id)a6
{
  v16 = a3;
  v10 = a6;
  if (a4 == 1)
  {
    v11 = v16;
    if (v16 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11 = v16, (isKindOfClass & 1) != 0))
    {
      [(ContextPluginACM *)self _paymentOperationWithInstructions:v16 originatorId:a5 reply:v10];
    }

    else
    {
      v15 = [LAErrorHelper parameterErrorForMissingOrInvalidObject:v11 name:"options"];
      v10[2](v10, 0, v15);
    }
  }

  else
  {
    v13 = [NSString stringWithFormat:@"Unsupported internal operation: %d", a4];
    v14 = [LAErrorHelper internalErrorWithMessage:v13];
    v10[2](v10, 0, v14);
  }
}

- (void)_paymentOperationWithInstructions:(id)a3 originatorId:(unint64_t)a4 reply:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_C894;
  v9[3] = &unk_30CB8;
  v10 = self;
  v11 = a3;
  v12 = a5;
  v13 = a4;
  v7 = v11;
  v8 = v12;
  [(ContextPluginACM *)v10 _parseInstructions:v7 completion:v9];
}

- (void)_parseInstructions:(id)a3 completion:(id)a4
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_CE1C;
  v20[3] = &unk_30CE0;
  v5 = a4;
  v21 = v5;
  v6 = a3;
  v7 = objc_retainBlock(v20);
  v19 = 0;
  v8 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v19];

  v9 = v19;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v11 = [v10 objectForKeyedSubscript:@"fortifiedInstructions"];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = [LAErrorHelper parameterErrorForMissingOrInvalidObject:v11 name:"instructions"];
          (v7[2])(v7, v12);
LABEL_27:

          goto LABEL_28;
        }
      }

      v12 = [v10 objectForKeyedSubscript:@"fortifiedSignature"];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v17 = "signature";
        v18 = v12;
      }

      else
      {
        v13 = v11 != 0;
        if (v12)
        {
          v14 = v11 != 0;
        }

        else
        {
          v14 = 1;
        }

        if (v12)
        {
          v13 = 0;
        }

        if (!v13 && v14)
        {
          if (v11)
          {
            v15 = [LACSecureData secureDataWithData:v11];
            if (v12)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v15 = 0;
            if (v12)
            {
LABEL_16:
              v16 = [LACSecureData secureDataWithData:v12];
              (*(v5 + 2))(v5, 0, 0, v15, v16);

              if (!v11)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          (*(v5 + 2))(v5, 0, 0, v15, 0);
          if (!v11)
          {
            goto LABEL_27;
          }

LABEL_26:

          goto LABEL_27;
        }

        if (v11)
        {
          v17 = "signature";
        }

        else
        {
          v17 = "instructions";
        }

        v18 = 0;
      }

      v15 = [LAErrorHelper parameterErrorForMissingOrInvalidObject:v18 name:v17];
      (v7[2])(v7, v15);
      goto LABEL_26;
    }
  }

  v10 = [LAErrorHelper parameterErrorForMissingOrInvalidObject:v8 name:"plist"];
  (v7[2])(v7, v10);
LABEL_28:
}

- (BOOL)_setPragueInstructions:(id)a3 signature:(id)a4 error:(id *)a5
{
  v8 = a4;
  acmHelper = self->_acmHelper;
  v19 = 0;
  v10 = [(LACACMHelper *)acmHelper setData:a3 type:1 error:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = self->_acmHelper;
    v18 = v11;
    v13 = [(LACACMHelper *)v12 setData:v8 type:3 error:&v18];
    v14 = v18;

    if (v13)
    {
      if (a5)
      {
        v15 = v14;
        *a5 = v14;
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v11 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_setLegacyInstructions:(id)a3 originatorId:(unint64_t)a4 reply:(id)a5
{
  v6 = a5;
  v7 = +[LAErrorHelper errorNotSupported];
  (*(a5 + 2))(v6, 0, v7);
}

- (unsigned)_credentialTypeForEvent:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_26164[a3 - 1];
  }
}

- (void)resetEvent:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_26D8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = a3;
    _os_log_impl(&def_1FF08, v10, OS_LOG_TYPE_DEFAULT, "resetEvent:%d", buf, 8u);
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
  do
  {
    if ((!a3 || v13 == [(ContextPluginACM *)self _credentialTypeForEvent:a3]) && ![(ContextPluginACM *)self _shouldAvoidRemovingCredentialType:v13])
    {
      if ([(LACACMHelper *)self->_acmHelper isCredentialOfTypeSet:v13 error:0])
      {
        acmHelper = self->_acmHelper;
        v19 = v12;
        v15 = [(LACACMHelper *)acmHelper removeCredentialsOfType:v13 error:&v19];
        v16 = v19;

        v12 = v16;
        if (!v15)
        {
          break;
        }
      }
    }

    v17 = v13 + 1;
    v11 = v13 > 0x11;
    v13 = (v13 + 1);
  }

  while (v17 != 19);
  if (!a3)
  {
    ctkPin = self->_ctkPin;
    self->_ctkPin = 0;

    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v11)
  {
LABEL_12:
    [(ContextPluginACM *)self setResultInfo:&__NSDictionary0__struct];
  }

LABEL_13:
  (v9)[2](v9, v11, v12);
}

- (void)authMethodWithReply:(id)a3
{
  v4 = a3;
  acmContext = self->_acmContext;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D23C;
  v7[3] = &unk_30D08;
  v8 = v4;
  v6 = v4;
  ACMGetAclAuthMethod(acmContext, v7);
}

@end