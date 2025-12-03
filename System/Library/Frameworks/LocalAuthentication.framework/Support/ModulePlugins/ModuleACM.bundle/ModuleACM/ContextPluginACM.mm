@interface ContextPluginACM
- (BOOL)_isBiometricOnlyPolicy:(int64_t)policy;
- (BOOL)_isEvent:(int64_t)event contributingToResult:(id)result;
- (BOOL)_setPragueInstructions:(id)instructions signature:(id)signature error:(id *)error;
- (BOOL)_shouldRetryEvaluationForError:(id)error options:(id)options;
- (BOOL)_updateACMContextWithOptions:(id)options policy:(int64_t)policy error:(id *)error;
- (BOOL)_validatePassword:(int64_t)password options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)id reply:(id)self0;
- (id)_decodeOperation:(id)operation;
- (id)_fillConstraint:(id)constraint options:(id)options userId:(id)id error:(id *)error;
- (id)_operationAsString:(id)string error:(id *)error;
- (id)_unsatisfiedListForRequirement:(__ACMRequirement *)requirement;
- (id)_updateRecoveryRetryCountIfNeeded:(id)needed request:(id)request userId:(id)id;
- (unsigned)_credentialTypeForEvent:(int64_t)event;
- (unsigned)_credentialTypeForRequirementType:(unsigned int)type;
- (unsigned)_requirementTypeForCredentialType:(int64_t)type;
- (void)_evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)self0 reply:(id)self1;
- (void)_evaluateCtkPolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply;
- (void)_evaluateOperation:(id)operation aclRef:(id)ref options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request validate:(BOOL)validate callerName:(id)self0 callerBundleId:(id)self1 reply:(id)self2;
- (void)_handleAcmRequirement:(const __ACMRequirement *)requirement policy:(int64_t)policy constraintData:(id)data operation:(id)operation internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)self0 reply:(id)self1;
- (void)_handleCTKACL:(id)l tokenId:(id)id operation:(id)operation options:(id)options originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)self0 reply:(id)self1;
- (void)_parseInstructions:(id)instructions completion:(id)completion;
- (void)_paymentOperationWithInstructions:(id)instructions originatorId:(unint64_t)id reply:(id)reply;
- (void)_releaseGracefully:(BOOL)gracefully;
- (void)_removeRequestedCredentials:(__ACMRequirement *)credentials;
- (void)_setLegacyInstructions:(id)instructions originatorId:(unint64_t)id reply:(id)reply;
- (void)_setOptions:(id)options forInternalOperation:(int64_t)operation originatorId:(unint64_t)id reply:(id)reply;
- (void)_validateACL:(id)l evaluateOperation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)self0 reply:(id)self1;
- (void)_validateOperation:(id)operation aclRef:(id)ref evaluateOperation:(id)evaluateOperation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)self0;
- (void)_validateOperations:(id)operations aclRef:(id)ref evaluateOperation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request currentResult:(id)self0 reply:(id)self1;
- (void)authMethodWithReply:(id)reply;
- (void)checkCredentialSatisfied:(int64_t)satisfied policy:(int64_t)policy reply:(id)reply;
- (void)credentialEncodingSeedWithReply:(id)reply;
- (void)credentialOfType:(int64_t)type originator:(id)originator reply:(id)reply;
- (void)credentialsUUIDWithOriginator:(id)originator reply:(id)reply;
- (void)dealloc;
- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)self0 reply:(id)self1;
- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply;
- (void)evaluatePolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply;
- (void)externalizedContextWithReply:(id)reply;
- (void)finishedAuthenticationForPolicy:(int64_t)policy constraintData:(id)data operation:(id)operation internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)request availabilityEvents:(id)self0 result:(id)self1 error:(id)self2 reply:(id)self3;
- (void)isCredentialSet:(int64_t)set originator:(id)originator reply:(id)reply;
- (void)resetEvent:(int64_t)event originator:(id)originator reply:(id)reply;
- (void)setCredential:(id)credential type:(int64_t)type options:(id)options originator:(id)originator reply:(id)reply;
- (void)setCredentialsUUID:(id)d originator:(id)originator reply:(id)reply;
- (void)setOptions:(id)options forInternalOperation:(int64_t)operation originator:(id)originator reply:(id)reply;
- (void)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options reply:(id)reply;
@end

@implementation ContextPluginACM

- (void)dealloc
{
  [(ContextPluginACM *)self _releaseGracefully:1];
  v3.receiver = self;
  v3.super_class = ContextPluginACM;
  [(ContextPluginACM *)&v3 dealloc];
}

- (void)_releaseGracefully:(BOOL)gracefully
{
  gracefullyCopy = gracefully;
  module = [(ContextPluginACM *)self module];
  if (gracefullyCopy)
  {
    v6 = "gracefully";
  }

  else
  {
    v6 = "forcibly";
  }

  v7 = [NSString stringWithFormat:@"released %s", v6];
  [module untrackPlugin:self reason:v7];

  acmContext = self->_acmContext;
  if (acmContext)
  {
    TrackingNumber = ACMContextGetTrackingNumber(acmContext);
    v10 = sub_26D8();
    v11 = v10;
    if (gracefullyCopy)
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
      contextOwner = [(ContextPluginACM *)self contextOwner];
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

- (BOOL)_updateACMContextWithOptions:(id)options policy:(int64_t)policy error:(id *)error
{
  optionsCopy = options;
  if ([LACPolicyUtilities isDTOPolicy:policy options:optionsCopy])
  {
    v9 = [optionsCopy objectForKeyedSubscript:&off_32620];
    v10 = [optionsCopy objectForKeyedSubscript:&off_32638];
    v11 = [optionsCopy objectForKeyedSubscript:&off_32650];
    v12 = [optionsCopy objectForKeyedSubscript:&off_32668];
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
      v15 = [(LACACMHelper *)self->_acmHelper setData:v14 type:9 error:error];
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
        v19 = *error;
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&def_1FF08, v17, v18, "DTOConfig update did finish err=%{public}@", buf, 0xCu);
      }
    }
  }

  v20 = *error == 0;

  return v20;
}

- (BOOL)_isBiometricOnlyPolicy:(int64_t)policy
{
  v3 = policy == 1008;
  if (policy == 1003)
  {
    v3 = 1;
  }

  if (policy == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)evaluatePolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply
{
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  replyCopy = reply;
  objc_initWeak(location, originatorCopy);
  v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [originatorCopy userId]);
  v20 = [(ContextPluginACM *)self _updateRecoveryRetryCountIfNeeded:optionsCopy request:requestCopy userId:v19];
  v44 = optionsCopy;

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_3CC4;
  v59[3] = &unk_30600;
  v59[4] = self;
  v21 = v20;
  v60 = v21;
  v22 = requestCopy;
  v61 = v22;
  v64[1] = policy;
  v23 = delegateCopy;
  v62 = v23;
  objc_copyWeak(v64, location);
  v43 = replyCopy;
  v63 = v43;
  v24 = objc_retainBlock(v59);
  if (policy == 1024)
  {
    v25 = +[LAPasscodeHelper sharedInstance];
    v26 = [v25 isPasscodeSetForUser:objc_msgSend(originatorCopy error:{"userId"), 0}];

    if ((v26 & 1) == 0)
    {
      v27 = +[LACPasscodeHelper sharedInstance];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_3F48;
      v54[3] = &unk_30628;
      v54[4] = self;
      v55 = originatorCopy;
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
    v32 = [LACACMHelper acmPolicyForPolicy:policy];
    if (!v32)
    {
      v38 = [NSNumber numberWithInteger:policy];
      v39 = [NSString stringWithFormat:@"Can't find ACM policy for: %@", v38];
      v40 = [LAErrorHelper parameterErrorWithMessage:v39];
      (v24[2])(v24, 0, v40);

      goto LABEL_14;
    }

    v33 = [v21 objectForKey:&off_32680];
    [v33 doubleValue];
    v35 = v34;

    v42 = -[ContextPluginACM _acmParamForPolicy:options:userId:secondPass:](self, "_acmParamForPolicy:options:userId:secondPass:", policy, v21, [originatorCopy userId], 0);
    v53 = 0;
    LOBYTE(v33) = [(ContextPluginACM *)self _updateACMContextWithOptions:v21 policy:policy error:&v53];
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
    selfCopy = self;
    policyCopy = policy;
    v48 = originatorCopy;
    v49 = v21;
    v50 = v23;
    [(ContextPluginACM *)self _verifyACMPolicy:v32 acmParameter:v42 maxGlobalCredentialAge:(v35 * 1000.0) retryAllowed:1 reply:v45];

    v31 = v42;
    goto LABEL_12;
  }

  if (policy != 1009)
  {
    goto LABEL_8;
  }

  [(ContextPluginACM *)self _evaluateCtkPolicy:1009 options:v21 uiDelegate:v23 originator:originatorCopy request:v22 reply:v24];
LABEL_14:

  objc_destroyWeak(v64);
  objc_destroyWeak(location);
}

- (void)_evaluateCtkPolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply
{
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  replyCopy = reply;
  v14 = [optionsCopy objectForKeyedSubscript:&off_32698];
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
    v19 = replyCopy;
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

    v22 = [optionsCopy objectForKeyedSubscript:&off_326E0];
    v55 = v22;
    if (v22)
    {
      v60 = v22;
      intValue = [v60 intValue];
      if (originatorCopy)
      {
        [originatorCopy auditToken];
      }

      else
      {
        v75 = 0u;
        v76 = 0u;
      }

      v69 = 0;
      v57 = [DaemonUtils callerDisplayNameWithPid:intValue auditToken:&v75 bundleId:&v69];
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
      if (optionsCopy)
      {
        v24 = optionsCopy;
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
      v62 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy];
    }

    [v62 removeObjectForKey:&off_32698];
    authenticationError = [v20 authenticationError];

    if (authenticationError)
    {
      authenticationError2 = [v20 authenticationError];
      [v62 setObject:authenticationError2 forKeyedSubscript:&off_326F8];
    }

    v51 = [v62 objectForKeyedSubscript:&off_32710];
    v54 = [v62 objectForKeyedSubscript:&off_32728];
    v52 = [v62 objectForKeyedSubscript:&off_32740];
    v53 = [v62 objectForKeyedSubscript:&off_32758];
    if (objc_opt_isKindOfClass())
    {
      pINFormat = [v20 PINFormat];
      if (pINFormat)
      {
        v29 = v54;
        if (!v54)
        {
          v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pINFormat minPINLength]);
          [v62 setObject:v30 forKey:&off_32728];
          v29 = v30;
        }

        v54 = v29;
        if (!v52)
        {
          v52 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pINFormat maxPINLength]);
          [v62 setObject:v52 forKey:&off_32740];
          v29 = v54;
        }

        if (!v53)
        {
          v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pINFormat charset]);
          [v62 setObject:v53 forKey:&off_32758];
          v29 = v54;
        }

        if (!v51 && v29 && [v29 isEqualToNumber:v52])
        {
          [v62 setObject:v54 forKey:&off_32710];
        }
      }

      localizedPINLabel = [v20 localizedPINLabel];

      if (localizedPINLabel)
      {
        localizedPINLabel2 = [v20 localizedPINLabel];
        [v62 setObject:localizedPINLabel2 forKey:&off_32770];
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

      localizedPasswordLabel = [v20 localizedPasswordLabel];

      if (!localizedPasswordLabel)
      {
LABEL_45:
        v34 = [(ContextPluginACM *)self createInternalInfoWithPolicy:policy policyOptions:v62 request:requestCopy originator:originatorCopy];
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
          payload = [requestCopy payload];
          v39 = [payload mutableCopy];
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
          [requestCopy updatePayload:v42];
          v82[0] = @"AcmContextRecord";
          v43 = [[ACMContextRecord alloc] initWithACMContext:self->_acmContext cachedExternalizationDelegate:self];
          v82[1] = @"UserId";
          v83[0] = v43;
          v44 = [v35 objectForKeyedSubscript:?];
          v83[1] = v44;
          v45 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];

          mechanismManager = self->_mechanismManager;
          v68 = 0;
          v47 = [(MechanismManagerACM *)mechanismManager loadMechanism:2 initParams:v45 request:requestCopy className:@"MechanismPassphrase" error:&v68];
          v48 = v68;
          if (v47)
          {
            v49 = [[MechanismUI alloc] initWithNonUiMechanism:v47 eventProcessing:0 policy:policy internalInfo:v35 request:requestCopy];
            authenticationManager = self->_authenticationManager;
            v66[0] = _NSConcreteStackBlock;
            v66[1] = 3221225472;
            v66[2] = sub_5010;
            v66[3] = &unk_306C8;
            v67 = v59;
            [(AuthenticationManager *)authenticationManager authenticateForPolicy:policy constraintData:0 internalInfo:v35 uiDelegate:delegateCopy originator:originatorCopy request:requestCopy mechanism:v49 reply:v66];
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

      pINFormat = [v20 localizedPasswordLabel];
      [v62 setObject:pINFormat forKey:&off_32770];
    }

    goto LABEL_45;
  }

  v21 = [LAErrorHelper parameterErrorWithMessage:@"Missing auth operation."];
  (*(replyCopy + 2))(replyCopy, 0, v21);

LABEL_64:
}

- (void)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  v8 = +[LAErrorHelper errorNotSupported];
  (*(reply + 2))(replyCopy, 0, v8);
}

- (BOOL)_shouldRetryEvaluationForError:(id)error options:(id)options
{
  errorCopy = error;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:&off_327A0];
  v9 = [optionsCopy objectForKeyedSubscript:&off_325F0];
  v10 = [optionsCopy objectForKeyedSubscript:&off_327B8];

  if (v10)
  {
    v11 = ([v10 integerValue] > 0);
  }

  else
  {
    v11 = (&def_1FF08 + 1);
  }

  v12 = [LAErrorHelper error:errorCopy hasCode:-8];
  v13 = [LAErrorHelper error:errorCopy hasCode:-1024];
  if (v12)
  {
    if (([v8 BOOLValue] & v11) == 1)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_55A0;
      v18[3] = &unk_30718;
      v11 = &v19;
      v19 = errorCopy;
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
      selfCopy = self;
      v22 = 2112;
      v23 = errorCopy;
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

- (id)_updateRecoveryRetryCountIfNeeded:(id)needed request:(id)request userId:(id)id
{
  neededCopy = needed;
  requestCopy = request;
  idCopy = id;
  v10 = [neededCopy objectForKeyedSubscript:&off_327B8];
  if (v10)
  {
    v11 = +[BiometryHelper sharedInstance];
    v20 = 0;
    v12 = [v11 isLockedOutForUser:idCopy request:requestCopy error:&v20];
    v13 = v20;

    if (v12)
    {
      integerValue = [v10 integerValue];
      v21 = &off_327B8;
      if (integerValue <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = integerValue;
      }

      v16 = [NSNumber numberWithInteger:v15 - 1];
      v22 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v18 = [neededCopy dictionaryByMergingWith:v17];
    }

    else
    {
      v18 = neededCopy;
    }
  }

  else
  {
    v18 = neededCopy;
  }

  return v18;
}

- (void)_handleAcmRequirement:(const __ACMRequirement *)requirement policy:(int64_t)policy constraintData:(id)data operation:(id)operation internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)self0 reply:(id)self1
{
  dataCopy = data;
  operationCopy = operation;
  infoCopy = info;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  replyCopy = reply;
  objc_initWeak(location, originatorCopy);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_5A50;
  v44[3] = &unk_30768;
  v33 = infoCopy;
  v45 = v33;
  v30 = replyCopy;
  v46 = v30;
  v21 = objc_retainBlock(v44);
  v22 = [[ACMContextRecord alloc] initWithACMContext:self->_acmContext cachedExternalizationDelegate:self];
  mechanismManager = self->_mechanismManager;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_5E48;
  v35[3] = &unk_30820;
  v24 = delegateCopy;
  v36 = v24;
  v25 = v21;
  v42 = v25;
  selfCopy = self;
  v43[1] = policy;
  v26 = dataCopy;
  v38 = v26;
  v27 = originatorCopy;
  v39 = v27;
  v28 = requestCopy;
  v40 = v28;
  v29 = operationCopy;
  v41 = v29;
  objc_copyWeak(v43, location);
  [(MechanismManagerACM *)mechanismManager mechanismForACMRequirement:requirement acmContextRecord:v22 policy:policy internalInfo:v33 uiDelegate:v24 originator:v27 request:v28 reply:v35];
  objc_destroyWeak(v43);

  objc_destroyWeak(location);
}

- (id)_unsatisfiedListForRequirement:(__ACMRequirement *)requirement
{
  if (ACMRequirementGetState(requirement, a2) == 2)
  {
    v6 = 0;
  }

  else if (ACMRequirementGetType(requirement, v5) == 7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_635C;
    v12[3] = &unk_30848;
    v12[4] = self;
    v13 = objc_opt_new();
    v8 = v13;
    ACMRequirementGetSubrequirements(requirement, v12);
    v6 = [v8 componentsJoinedByString:{@", "}];
  }

  else
  {
    Type = ACMRequirementGetType(requirement, v7);
    v6 = [NSString stringWithFormat:@"%d:%d", Type, ACMRequirementGetState(requirement, v10)];
  }

  return v6;
}

- (void)finishedAuthenticationForPolicy:(int64_t)policy constraintData:(id)data operation:(id)operation internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)request availabilityEvents:(id)self0 result:(id)self1 error:(id)self2 reply:(id)self3
{
  dataCopy = data;
  operationCopy = operation;
  infoCopy = info;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  eventsCopy = events;
  resultCopy = result;
  errorCopy = error;
  replyCopy = reply;
  objc_initWeak(location, self);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_6950;
  v76[3] = &unk_308B8;
  v25 = delegateCopy;
  v77 = v25;
  v26 = eventsCopy;
  v78 = v26;
  objc_copyWeak(&v81, location);
  selfCopy = self;
  v27 = replyCopy;
  v80 = v27;
  v28 = objc_retainBlock(v76);
  v29 = v28;
  v57 = requestCopy;
  if (resultCopy)
  {
    v49 = v27;
    v50 = v26;
    v54 = errorCopy;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_6BB4;
    v66[3] = &unk_308E0;
    v30 = v28;
    v52 = operationCopy;
    selfCopy2 = self;
    v66[4] = self;
    v74 = v30;
    policyCopy = policy;
    v31 = operationCopy;
    v67 = v31;
    v68 = requestCopy;
    v51 = resultCopy;
    v32 = resultCopy;
    v69 = v32;
    v33 = infoCopy;
    v70 = v33;
    v34 = dataCopy;
    v35 = dataCopy;
    v71 = v35;
    v72 = v25;
    v36 = originatorCopy;
    v73 = originatorCopy;
    v56 = objc_retainBlock(v66);
    v37 = [v33 objectForKey:@"GlobalCredential"];
    unsignedIntValue = [v37 unsignedIntValue];

    if (policy)
    {
      if (policy == 1008)
      {
        [v32 objectForKeyedSubscript:@"UserId"];
      }

      else
      {
        [v33 objectForKeyedSubscript:@"UserId"];
      }
      v38 = ;
      unsignedIntValue2 = [v38 unsignedIntValue];
      v39 = dataCopy;

      v45 = [v33 objectForKeyedSubscript:@"Options"];
      v41 = [(ContextPluginACM *)selfCopy2 _acmParamForPolicy:policy options:v45 userId:unsignedIntValue2 secondPass:1];

      acmHelper = selfCopy2->_acmHelper;
      v47 = [LACACMHelper acmPolicyForPolicy:policy];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_6F70;
      v64[3] = &unk_30908;
      v65 = v56;
      [(LACACMHelper *)acmHelper preflightPolicy:v47 parameters:v41 maxGlobalCredentialAge:unsignedIntValue processRequirement:v64];
      v40 = v65;
      v36 = originatorCopy;
    }

    else
    {
      if (!v35)
      {
        v41 = [LAErrorHelper internalErrorWithMessage:@"Unexpected result type."];
        (v30[2])(v30, 0, v41);
        goto LABEL_12;
      }

      v39 = dataCopy;
      v63 = 0;
      v40 = [(ContextPluginACM *)selfCopy2 _operationAsString:v31 error:&v63];
      v41 = v63;
      if (v40)
      {
        v42 = selfCopy2->_acmHelper;
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_6F98;
        v61[3] = &unk_30930;
        v62 = v56;
        v43 = v42;
        v36 = originatorCopy;
        [(LACACMHelper *)v43 verifyAclConstraint:v35 operation:v40 preflight:1 parameters:0 maxGlobalCredentialAge:unsignedIntValue processRequirement:v61];
      }

      else
      {
        (v30[2])(v30, 0, v54);
      }
    }

    v34 = v39;
LABEL_12:

    resultCopy = v51;
    operationCopy = v52;
    errorCopy = v54;
    v27 = v49;
    v26 = v50;
    goto LABEL_13;
  }

  (v28[2])(v28, 0, errorCopy);
  v36 = originatorCopy;
  v34 = dataCopy;
LABEL_13:

  objc_destroyWeak(&v81);
  objc_destroyWeak(location);
}

- (BOOL)_isEvent:(int64_t)event contributingToResult:(id)result
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7098;
  v10[3] = &unk_30950;
  v10[4] = event;
  v5 = sub_7098(v10);
  resultCopy = result;
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [resultCopy objectForKeyedSubscript:v7];

  LOBYTE(resultCopy) = [v8 BOOLValue];
  return resultCopy;
}

- (unsigned)_credentialTypeForRequirementType:(unsigned int)type
{
  v4 = type - 1;
  if (type - 1 < 0x1B && ((0x6047C07u >> v4) & 1) != 0)
  {
    return dword_260F8[v4];
  }

  v6 = sub_26D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_18DF8(type, v6);
  }

  return 0;
}

- (void)_removeRequestedCredentials:(__ACMRequirement *)credentials
{
  Type = ACMRequirementGetType(credentials, a2);
  if (Type == 7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_74BC;
    v15[3] = &unk_30978;
    v15[4] = self;
    ACMRequirementGetSubrequirements(credentials, v15);
  }

  else
  {
    v7 = Type;
    if (ACMRequirementGetState(credentials, v6) == 1)
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

- (id)_decodeOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = operationCopy;
LABEL_19:
    v6 = v5;
    goto LABEL_20;
  }

  integerValue = [operationCopy integerValue];
  if (integerValue <= 2)
  {
    if (integerValue)
    {
      if (integerValue == &def_1FF08 + 1)
      {
        goto LABEL_15;
      }

      v6 = 0;
      if (integerValue != &def_1FF08 + 2)
      {
        goto LABEL_20;
      }
    }

    v6 = &stru_31610;
    goto LABEL_20;
  }

  if (integerValue <= 4)
  {
    if (integerValue == &def_1FF08 + 3)
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

  if (integerValue == &dword_4 + 1)
  {
    v7 = &off_31110;
    goto LABEL_18;
  }

  if (integerValue == stru_3D8.segname)
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

- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply
{
  lCopy = l;
  operationCopy = operation;
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_7970;
  v52[3] = &unk_306C8;
  replyCopy = reply;
  v53 = replyCopy;
  v35 = objc_retainBlock(v52);
  v16 = [optionsCopy objectForKey:&off_325F0];
  LOBYTE(delegate) = [v16 BOOLValue];

  if (delegate)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    processId = [originatorCopy processId];
    v20 = [optionsCopy objectForKeyedSubscript:&off_32878];
    if (v20 && [originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.CallerPID"])
    {
      processId = [v20 intValue];
    }

    if (originatorCopy)
    {
      [originatorCopy auditToken];
    }

    else
    {
      *location = 0u;
      v51 = 0u;
    }

    v49 = 0;
    v17 = [DaemonUtils callerDisplayNameWithPid:processId auditToken:location bundleId:&v49];
    v18 = v49;
    v21 = [optionsCopy objectForKeyedSubscript:&off_32890];
    if (v21 && [originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.CallerName"])
    {
      v22 = v21;

      v17 = v22;
    }
  }

  objc_initWeak(location, originatorCopy);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_7A00;
  v38[3] = &unk_309C8;
  v23 = operationCopy;
  v39 = v23;
  selfCopy = self;
  v24 = lCopy;
  v41 = v24;
  v25 = optionsCopy;
  v42 = v25;
  v26 = delegateCopy;
  v43 = v26;
  objc_copyWeak(&v48, location);
  v27 = requestCopy;
  v44 = v27;
  v28 = v17;
  v45 = v28;
  v29 = v18;
  v46 = v29;
  v30 = v35;
  v47 = v30;
  [(ContextPluginACM *)self evaluateACL:v24 operation:v23 options:v25 uiDelegate:v26 originator:originatorCopy request:v27 callerName:v28 callerBundleId:v29 reply:v38];

  objc_destroyWeak(&v48);
  objc_destroyWeak(location);
}

- (void)_handleCTKACL:(id)l tokenId:(id)id operation:(id)operation options:(id)options originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)self0 reply:(id)self1
{
  lCopy = l;
  idCopy = id;
  operationCopy = operation;
  optionsCopy = options;
  originatorCopy = originator;
  requestCopy = request;
  nameCopy = name;
  bundleIdCopy = bundleId;
  replyCopy = reply;
  v19 = [requestCopy log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = idCopy;
    _os_log_impl(&def_1FF08, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ handles CTK request using tokenId:%{public}@", buf, 0x16u);
  }

  v20 = [LAContext alloc];
  cachedExternalizedContext = [(ContextPluginACM *)self cachedExternalizedContext];
  externalizedContext = [cachedExternalizedContext externalizedContext];
  v23 = [v20 initWithExternalizedContext:externalizedContext];

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
  v26 = [[v24 alloc] initWithTokenID:idCopy];
  v45 = 0;
  v27 = [v26 sessionWithLAContext:v23 error:&v45];
  v28 = v45;

  if (v27)
  {
    CFRetain(v27);
    self->_ctkCallerSet = 1;
    objc_storeStrong(&self->_ctkCallerOptions, options);
    self->_ctkCallerProcessId = [originatorCopy processId];
    objc_storeStrong(&self->_ctkCallerName, name);
    objc_storeStrong(&self->_ctkCallerBundleId, bundleId);
    v29 = [requestCopy log];
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
    v40 = lCopy;
    v41 = operationCopy;
    selfCopy = self;
    v44 = replyCopy;
    v43 = requestCopy;
    dispatch_async(v30, block);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v28);
  }
}

- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)self0 reply:(id)self1
{
  lCopy = l;
  operationCopy = operation;
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  nameCopy = name;
  idCopy = id;
  replyCopy = reply;
  v20 = [(ContextPluginACM *)self _decodeOperation:operationCopy];
  if (v20)
  {
    v51 = 0;
    v21 = SecAccessControlCreateFromData();
    if (v21)
    {
      lCopy = SecAccessControlGetProtection();
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
        v27 = [lCopy objectForKey:v26];

        v28 = [requestCopy log];
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
        v42 = lCopy;
        v43 = v27;
        v44 = v20;
        v45 = optionsCopy;
        v46 = originatorCopy;
        v47 = requestCopy;
        v48 = nameCopy;
        v49 = idCopy;
        v50 = replyCopy;
        v30 = v27;
        dispatch_async(v29, block);
      }

      else
      {
        v34 = [requestCopy log];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = lCopy;
          _os_log_impl(&def_1FF08, v34, OS_LOG_TYPE_INFO, "ACL protection: %{public}@", &buf, 0xCu);
        }

        if ([v20 isEqualToString:&stru_31610])
        {
          [(ContextPluginACM *)self _validateACL:v21 evaluateOperation:v20 options:optionsCopy uiDelegate:delegateCopy originator:originatorCopy request:requestCopy callerName:nameCopy callerBundleId:idCopy reply:replyCopy];
        }

        else
        {
          [(ContextPluginACM *)self _evaluateACL:v21 operation:v20 options:optionsCopy uiDelegate:delegateCopy originator:originatorCopy request:requestCopy callerName:nameCopy callerBundleId:idCopy reply:replyCopy];
        }
      }
    }

    else
    {
      lCopy = [NSString stringWithFormat:@"Invalid ACL: '%@'", lCopy];
      v33 = [LAErrorHelper parameterErrorWithMessage:lCopy];
      (*(replyCopy + 2))(replyCopy, 0, v33);
    }
  }

  else
  {
    operationCopy = [NSString stringWithFormat:@"Invalid operation: %@", operationCopy];
    v32 = [LAErrorHelper parameterErrorWithMessage:operationCopy];
    (*(replyCopy + 2))(replyCopy, 0, v32);
  }
}

- (void)_evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)self0 reply:(id)self1
{
  lCopy = l;
  operationCopy = operation;
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  nameCopy = name;
  idCopy = id;
  replyCopy = reply;
  objc_initWeak(location, originatorCopy);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_8B08;
  v34[3] = &unk_30A90;
  v31 = replyCopy;
  v42 = v31;
  v24 = lCopy;
  v35 = v24;
  selfCopy = self;
  v25 = optionsCopy;
  v37 = v25;
  v26 = delegateCopy;
  v38 = v26;
  objc_copyWeak(&v43, location);
  v27 = requestCopy;
  v39 = v27;
  v28 = nameCopy;
  v40 = v28;
  v29 = idCopy;
  v41 = v29;
  LOBYTE(v30) = 0;
  [(ContextPluginACM *)self _evaluateOperation:operationCopy aclRef:v24 options:v25 uiDelegate:v26 originator:originatorCopy request:v27 validate:v30 callerName:v28 callerBundleId:v29 reply:v34];

  objc_destroyWeak(&v43);
  objc_destroyWeak(location);
}

- (id)_fillConstraint:(id)constraint options:(id)options userId:(id)id error:(id *)error
{
  constraintCopy = constraint;
  optionsCopy = options;
  idCopy = id;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_9418;
  v64[3] = &unk_30AB0;
  v64[4] = error;
  v12 = objc_retainBlock(v64);
  v13 = +[NSMutableDictionary dictionary];
  v14 = [constraintCopy objectForKey:@"cbio"];
  objc_opt_class();
  v58 = idCopy;
  if ((objc_opt_isKindOfClass() & 1) != 0 || !v14)
  {
LABEL_16:
    v15 = [optionsCopy objectForKey:&off_32680];
    if (!v15)
    {
LABEL_25:
      v57 = v13;
      v35 = [constraintCopy objectForKey:@"cup"];
      bOOLValue = [v35 BOOLValue];

      if (bOOLValue)
      {
        if (!v14 || ([constraintCopy objectForKey:@"pkofn"], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "integerValue"), v37, v38 == &def_1FF08 + 2))
        {
          v39 = +[LAPasscodeHelper sharedInstance];
          v61 = 0;
          v40 = [v39 isPasscodeSetForUser:objc_msgSend(idCopy error:{"unsignedIntValue"), &v61}];
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

      v42 = optionsCopy;
      v41 = [constraintCopy objectForKey:@"cpo"];
      if (v41)
      {
        v43 = +[LAPasscodeHelper sharedInstance];
        v60 = 0;
        v44 = [v43 isPasscodeSetForUser:objc_msgSend(idCopy error:{"unsignedIntValue"), &v60}];
        v45 = v60;

        if (!v44)
        {
          v31 = (v12[2])(v12, v45);
          goto LABEL_44;
        }
      }

      v45 = [constraintCopy objectForKey:@"ckon"];
      if (!v45)
      {
LABEL_39:
        v49 = (v12[2])(v12, 0);
        v13 = v57;
        v31 = v57;
LABEL_45:

        optionsCopy = v42;
        goto LABEL_46;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v59 = 0;
        v46 = [(ContextPluginACM *)self _fillConstraint:v45 options:v42 userId:idCopy error:&v59];
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

    v29 = [constraintCopy objectForKey:@"pgcma"];
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

      v32 = [constraintCopy objectForKey:@"cpo"];

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
  v54 = optionsCopy;
  if (v16 && ![v16 length])
  {
    v18 = v13;
    v19 = +[BiometryHelper sharedInstance];
    v20 = [v19 catacombUUID:idCopy];

    if (!v20)
    {
      idCopy = [NSString stringWithFormat:@"Failed to get bio catacomb UUID for user %@.", idCopy];
      v53 = [LAErrorHelper internalErrorWithMessage:idCopy];
      v31 = (v12[2])(v12, v53);

      optionsCopy = v54;
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

      optionsCopy = v54;
      idCopy = v58;
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

  optionsCopy = v54;
  v13 = v56;
LABEL_47:

  return v31;
}

- (void)_evaluateOperation:(id)operation aclRef:(id)ref options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request validate:(BOOL)validate callerName:(id)self0 callerBundleId:(id)self1 reply:(id)self2
{
  operationCopy = operation;
  refCopy = ref;
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  nameCopy = name;
  idCopy = id;
  replyCopy = reply;
  v23 = [requestCopy log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    v92 = 2114;
    v93 = operationCopy;
    _os_log_impl(&def_1FF08, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ evaluates operation: %{public}@", buf, 0x16u);
  }

  if (![operationCopy isEqualToString:&stru_31610])
  {
    v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [originatorCopy userId]);
    v27 = [(ContextPluginACM *)self _updateRecoveryRetryCountIfNeeded:optionsCopy request:requestCopy userId:v26];

    Constraint = SecAccessControlGetConstraint();
    v64 = v27;
    if (!Constraint)
    {
      if (validate)
      {
        replyCopy[2](replyCopy, &__NSDictionary0__struct, 0);
      }

      else
      {
        operationCopy = [NSString stringWithFormat:@"ACL operation is not allowed: '%@'", operationCopy];
        v35 = [LAErrorHelper errorWithCode:-1009 message:operationCopy];
        (replyCopy)[2](replyCopy, 0, v35);
      }

      v25 = nameCopy;
      v24 = delegateCopy;
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
        v32 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [originatorCopy userId]);
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
        v87 = operationCopy;
        [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v40 = v61 = v33;
        v90 = v40;
        v41 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v42 = sub_11BC0(refCopy, v41, buf);

        v33 = v61;
        if (v42)
        {
LABEL_18:

          v27 = v64;
          goto LABEL_19;
        }

        v51 = *buf;
        replyCopy[2](replyCopy, 0, *buf);

        v48 = v61;
        v49 = v56;
        v25 = nameCopy;
        v24 = delegateCopy;
        v50 = v63;
      }

      else
      {
        (replyCopy)[2](replyCopy, 0, v37);
        v48 = v38;
        v25 = nameCopy;
        v24 = delegateCopy;
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
    v25 = nameCopy;
    v62 = v33;
    v57 = v43;
    if (v43)
    {
      [v43 doubleValue];
      unsignedIntValue = (v44 * 1000.0);
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
          unsignedIntValue = [v46 unsignedIntValue];
        }

        else
        {
          unsignedIntValue = 0;
        }
      }

      else
      {
        unsignedIntValue = 0;
      }
    }

    v85 = 0;
    v52 = [(ContextPluginACM *)self _operationAsString:operationCopy error:&v85];
    v53 = v85;
    v55 = v53;
    if (v52)
    {
      acmHelper = self->_acmHelper;
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_9B3C;
      v69[3] = &unk_30B00;
      v82 = replyCopy;
      v70 = requestCopy;
      v71 = v63;
      v72 = originatorCopy;
      validateCopy = validate;
      v73 = v62;
      selfCopy = self;
      v75 = v27;
      v76 = nameCopy;
      v77 = idCopy;
      v83 = unsignedIntValue;
      v49 = v60;
      v58 = unsignedIntValue;
      v78 = v60;
      v79 = operationCopy;
      v24 = delegateCopy;
      v80 = delegateCopy;
      v81 = refCopy;
      v50 = v63;
      [(LACACMHelper *)acmHelper verifyAclConstraint:v78 operation:v52 preflight:1 parameters:0 maxGlobalCredentialAge:v58 processRequirement:v69];
    }

    else
    {
      (replyCopy)[2](replyCopy, 0, v53);
      v24 = delegateCopy;
      v49 = v60;
      v50 = v63;
    }

    v48 = v62;
    goto LABEL_33;
  }

  replyCopy[2](replyCopy, &__NSDictionary0__struct, 0);
  v25 = nameCopy;
  v24 = delegateCopy;
LABEL_35:
}

- (id)_operationAsString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    stringCopy = [NSString stringWithFormat:@"Invalid operation: %@", stringCopy];
    v7 = [LAErrorHelper internalErrorWithMessage:stringCopy];

    v6 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = stringCopy;
  v7 = 0;
  if (error)
  {
LABEL_5:
    v9 = v7;
    *error = v7;
  }

LABEL_6:

  return v6;
}

- (void)_validateACL:(id)l evaluateOperation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)self0 reply:(id)self1
{
  lCopy = l;
  operationCopy = operation;
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  nameCopy = name;
  idCopy = id;
  replyCopy = reply;
  v24 = SecAccessControlGetConstraints();
  if (v24)
  {
    v27 = requestCopy;
    objc_initWeak(location, originatorCopy);
    keyEnumerator = [v24 keyEnumerator];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_A45C;
    v29[3] = &unk_30B28;
    v36[1] = lCopy;
    v35 = replyCopy;
    v29[4] = self;
    v30 = optionsCopy;
    v31 = delegateCopy;
    objc_copyWeak(v36, location);
    v32 = v27;
    v33 = nameCopy;
    v34 = idCopy;
    [(ContextPluginACM *)self _validateOperations:keyEnumerator aclRef:lCopy evaluateOperation:operationCopy options:v30 uiDelegate:v31 originator:originatorCopy request:v32 currentResult:&__NSDictionary0__struct reply:v29];

    objc_destroyWeak(v36);
    objc_destroyWeak(location);
    requestCopy = v27;
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, &__NSDictionary0__struct, 0);
  }
}

- (void)_validateOperations:(id)operations aclRef:(id)ref evaluateOperation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request currentResult:(id)self0 reply:(id)self1
{
  operationsCopy = operations;
  refCopy = ref;
  operationCopy = operation;
  optionsCopy = options;
  v20 = operationsCopy;
  v33 = optionsCopy;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  resultCopy = result;
  replyCopy = reply;
  nextObject = [v20 nextObject];
  v31 = nextObject;
  v32 = operationCopy;
  if (nextObject)
  {
    v27 = nextObject;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_A8F0;
    v34[3] = &unk_30B50;
    v45 = replyCopy;
    v35 = resultCopy;
    v36 = v27;
    selfCopy = self;
    v38 = v20;
    v39 = refCopy;
    v40 = operationCopy;
    v41 = v33;
    v42 = delegateCopy;
    v43 = originatorCopy;
    v44 = requestCopy;
    [(ContextPluginACM *)self _validateOperation:v36 aclRef:v39 evaluateOperation:v40 options:v41 uiDelegate:v42 originator:v43 request:v44 reply:v34];

    v28 = v45;
  }

  else
  {
    v47 = resultCopy;
    v48 = @"Result";
    v46 = &off_328C0;
    v28 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v49 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    (*(replyCopy + 2))(replyCopy, v29, 0);
  }
}

- (void)_validateOperation:(id)operation aclRef:(id)ref evaluateOperation:(id)evaluateOperation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)self0
{
  operationCopy = operation;
  refCopy = ref;
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  replyCopy = reply;
  evaluateOperationCopy = evaluateOperation;
  v24 = [requestCopy log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v29 = 2114;
    v30 = operationCopy;
    _os_log_impl(&def_1FF08, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ validates operation: %{public}@", buf, 0x16u);
  }

  v25 = [operationCopy isEqual:evaluateOperationCopy];
  if (v25)
  {
    replyCopy[2](replyCopy, &__NSDictionary0__struct, 0);
  }

  else
  {
    LOBYTE(v26) = 1;
    [(ContextPluginACM *)self _evaluateOperation:operationCopy aclRef:refCopy options:optionsCopy uiDelegate:delegateCopy originator:originatorCopy request:requestCopy validate:v26 callerName:0 callerBundleId:0 reply:replyCopy];
  }
}

- (BOOL)_validatePassword:(int64_t)password options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request callerName:(id)name callerBundleId:(id)id reply:(id)self0
{
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  nameCopy = name;
  idCopy = id;
  replyCopy = reply;
  acmHelper = self->_acmHelper;
  v50[0] = 0;
  v23 = [(LACACMHelper *)acmHelper isCredentialOfTypeSet:2 error:v50];
  v24 = v50[0];
  if ((v23 & 1) == 0)
  {
    v40 = originatorCopy;
    v38 = delegateCopy;
    v25 = [optionsCopy objectForKey:&off_325F0];
    bOOLValue = [v25 BOOLValue];

    if (bOOLValue)
    {
      v27 = [LAErrorHelper errorWithCode:-1004 message:@"User interaction is required."];
      replyCopy[2](replyCopy, 0, v27);
      delegateCopy = v38;
    }

    else
    {
      delegateCopy = v38;
      if (!self->_applicationPasswordWasSet)
      {
        originatorCopy = v40;
        if (self->_applicationPasswordCounter < 5)
        {
          v37 = [(ContextPluginACM *)self createInternalInfo:optionsCopy skipCallerIdentification:nameCopy != 0 callerBundleId:0 request:requestCopy originator:v40];
          if (nameCopy)
          {
            [v37 setObject:nameCopy forKey:@"CallerName"];
          }

          if (idCopy)
          {
            [v37 setObject:idCopy forKey:@"CallerId"];
          }

          payload = [requestCopy payload];
          v29 = [payload mutableCopy];
          v33 = idCopy;
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
          [requestCopy updatePayload:v36];
          objc_initWeak(&location, v40);
          v35 = [[ACMContextRecord alloc] initWithACMContext:self->_acmContext cachedExternalizationDelegate:self];
          mechanismManager = self->_mechanismManager;
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_AFFC;
          v41[3] = &unk_30BC8;
          v42 = optionsCopy;
          selfCopy = self;
          v27 = v37;
          v44 = v27;
          v45 = v38;
          objc_copyWeak(&v48, &location);
          v46 = requestCopy;
          v47 = replyCopy;
          originatorCopy = v40;
          [(MechanismManagerACM *)mechanismManager mechanismForApplicationPasswordMode:password acmContextRecord:v35 options:v42 internalInfo:v27 uiDelegate:v45 originator:v40 request:v46 reply:v41];
          idCopy = v33;

          objc_destroyWeak(&v48);
          objc_destroyWeak(&location);

          delegateCopy = v38;
        }

        else
        {
          self->_applicationPasswordCounter = 0;
          v27 = [LAErrorHelper errorWithCode:-1 message:@"Application retry limit exceeded."];
          replyCopy[2](replyCopy, 0, v27);
        }

        goto LABEL_7;
      }

      v27 = [LAErrorHelper errorWithCode:-1 message:@"Missing application password."];
      replyCopy[2](replyCopy, 0, v27);
    }

    originatorCopy = v40;
LABEL_7:
  }

  return v23;
}

- (void)isCredentialSet:(int64_t)set originator:(id)originator reply:(id)reply
{
  originatorCopy = originator;
  replyCopy = reply;
  if (set > -3)
  {
    v12 = 2;
    if (set != -2)
    {
      if (set == -1)
      {
        if (([originatorCopy checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"] & 1) == 0)
        {
          v18 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
          goto LABEL_22;
        }

        v12 = 1;
      }

      else if (set)
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

  if (set == -9)
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

  if (set == -6)
  {
    v12 = 14;
    goto LABEL_16;
  }

  if (set != -3)
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
  replyCopy[2](replyCopy, v15 == 0, v15);
}

- (void)setCredential:(id)credential type:(int64_t)type options:(id)options originator:(id)originator reply:(id)reply
{
  credentialCopy = credential;
  optionsCopy = options;
  originatorCopy = originator;
  replyCopy = reply;
  if (type > -7)
  {
    if (type > -2)
    {
      if (type == -1)
      {
        if (![originatorCopy checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
        {
          v40 = @"com.apple.private.CoreAuthentication.SPI";
          goto LABEL_37;
        }

        if (!credentialCopy)
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
        v50 = credentialCopy;
        selfCopy = self;
        v52 = originatorCopy;
        v53 = optionsCopy;
        v35 = sub_BB60(v49);
        v36 = [v34 verifyPasscode:v35];

        v18 = v36 == 0;
        if (v36)
        {
          resultInfo = [NSString stringWithFormat:@"Password rejected (%d)", v36];
          v20 = [LAErrorHelper errorWithCode:-1 message:resultInfo];
        }

        else
        {
          resultInfo = [(ContextPluginACM *)self resultInfo];
          v64 = @"Result";
          v62 = &off_328F0;
          v63 = &__kCFBooleanTrue;
          v44 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v65 = v44;
          v45 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v46 = [resultInfo dictionaryByMergingWith:v45];
          [(ContextPluginACM *)self setResultInfo:v46];

          v20 = 0;
        }

        goto LABEL_55;
      }

      if (type)
      {
        goto LABEL_32;
      }

      if (credentialCopy)
      {
        v23 = +[LACSecureData secureDataWithBytes:length:](LACSecureData, "secureDataWithBytes:length:", [credentialCopy bytes], objc_msgSend(credentialCopy, "length"));
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

      self->_applicationPasswordWasSet = credentialCopy != 0;
    }

    else
    {
      if (type == -6)
      {
        if ([originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.RGBCapture"])
        {
          v27 = self->_acmHelper;
          if (credentialCopy)
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

      if (type != -3)
      {
LABEL_32:
        v38 = [NSNumber numberWithInteger:type];
        v39 = [NSString stringWithFormat:@"Unsupported credentialType: %@", v38];
        v20 = [LAErrorHelper parameterErrorWithMessage:v39];

        goto LABEL_38;
      }

      objc_storeStrong(&self->_ctkPin, credential);
      v20 = 0;
    }

    v18 = 1;
    goto LABEL_55;
  }

  if (type <= -10)
  {
    if (type != -12)
    {
      if (type == -11)
      {
        v17 = self->_acmHelper;
        v47 = 0;
        v18 = [(LACACMHelper *)v17 addCredential:21 scope:1 property:1001 data:credentialCopy error:&v47];
        v19 = v47;
LABEL_54:
        v20 = v19;
        goto LABEL_55;
      }

      goto LABEL_32;
    }

    if ([originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.PasscodeStashSecret"])
    {
      v26 = self->_acmHelper;
      if (credentialCopy)
      {
        v22 = [LACSecureData secureDataWithData:credentialCopy];
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
      if (credentialCopy)
      {
      }

      goto LABEL_55;
    }

    v40 = @"com.apple.private.LocalAuthentication.PasscodeStashSecret";
LABEL_37:
    v20 = [LAErrorHelper missingEntitlementError:v40];
    goto LABEL_38;
  }

  if (type != -9)
  {
    if (type == -8)
    {
      v21 = self->_acmHelper;
      if (credentialCopy)
      {
        v22 = [LACSecureData secureDataWithData:credentialCopy];
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
  v29 = [v28 checkOriginatorCanWriteExtractableCredential:originatorCopy error:&v59];
  v30 = v59;
  v31 = v30;
  if (v29)
  {
    v32 = self->_acmHelper;
    if (credentialCopy)
    {
      v33 = [LACSecureData secureDataWithData:credentialCopy];
    }

    else
    {
      v33 = 0;
    }

    v58 = 0;
    v18 = [(LACACMHelper *)v32 setData:v33 type:7 encoded:[LACContextCredentialCoder error:"checkCredentialRequiresEncoding:" checkCredentialRequiresEncoding:?], &v58];
    v20 = v58;
    if (credentialCopy)
    {
    }
  }

  else
  {
    v20 = v30;
    v18 = 0;
  }

LABEL_55:
  replyCopy[2](replyCopy, v18, v20);
}

- (void)credentialOfType:(int64_t)type originator:(id)originator reply:(id)reply
{
  originatorCopy = originator;
  replyCopy = reply;
  if (type == -9)
  {
    v10 = [[LACCredentialExtractablePasswordAuthorizer alloc] initWithACMHelper:self->_acmHelper];
    v20 = 0;
    v11 = [v10 checkOriginatorCanReadExtractableCredential:originatorCopy error:&v20];
    v12 = v20;
    if (v11)
    {
      acmHelper = self->_acmHelper;
      v19 = v12;
      v14 = [(LACACMHelper *)acmHelper dataWithType:7 encoded:[LACContextCredentialCoder error:"checkCredentialRequiresEncoding:" checkCredentialRequiresEncoding:?], &v19];
      v15 = v19;

      data = [v14 data];
      replyCopy[2](replyCopy, data, v15);

      v12 = v15;
    }

    else
    {
      replyCopy[2](replyCopy, 0, v12);
    }
  }

  else
  {
    type = [NSString stringWithFormat:@"Unsupported credentialType: %d", type];
    v18 = [LAErrorHelper parameterErrorWithMessage:type];
    replyCopy[2](replyCopy, 0, v18);
  }
}

- (void)checkCredentialSatisfied:(int64_t)satisfied policy:(int64_t)policy reply:(id)reply
{
  acmHelper = self->_acmHelper;
  replyCopy = reply;
  v12 = 0;
  v10 = [(LACACMHelper *)acmHelper verifyRequirementOfType:[(ContextPluginACM *)self _requirementTypeForCredentialType:satisfied] policy:[LACACMHelper error:"acmPolicyForPolicy:" acmPolicyForPolicy:policy], &v12];
  v11 = v12;
  replyCopy[2](replyCopy, v10, v11);
}

- (void)credentialsUUIDWithOriginator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  if ([originator checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    acmHelper = self->_acmHelper;
    v12 = 0;
    v8 = [(LACACMHelper *)acmHelper dataWithType:10 error:&v12];
    v9 = v12;
    if (v8)
    {
      v10 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
      replyCopy[2](replyCopy, v10, 0);
    }

    else
    {
      (replyCopy)[2](replyCopy, 0, v9);
    }
  }

  else
  {
    v11 = [LACError errorWithCode:LACErrorCodeDenied debugDescription:@"Missing required credential entitlements"];
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)setCredentialsUUID:(id)d originator:(id)originator reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if ([originator checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_C1CC;
    v18[3] = &unk_30C18;
    v19 = dCopy;
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

    (replyCopy)[2](replyCopy, v14, v15);
  }

  else
  {
    v16 = [LACError errorWithCode:LACErrorCodeDenied debugDescription:@"Missing required credential entitlements"];
    (replyCopy)[2](replyCopy, 0, v16);
  }
}

- (void)credentialEncodingSeedWithReply:(id)reply
{
  replyCopy = reply;
  acmHelper = self->_acmHelper;
  v9 = 0;
  v6 = [(LACACMHelper *)acmHelper dataWithType:13 error:&v9];
  v7 = v9;
  if (v6)
  {
    data = [v6 data];
    replyCopy[2](replyCopy, data, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v7);
  }
}

- (unsigned)_requirementTypeForCredentialType:(int64_t)type
{
  if (type == -1)
  {
    return 1;
  }

  else
  {
    return 2 * (type == -2);
  }
}

- (void)externalizedContextWithReply:(id)reply
{
  replyCopy = reply;
  acmContext = self->_acmContext;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C3C8;
  v7[3] = &unk_30C40;
  v8 = replyCopy;
  v6 = replyCopy;
  ACMContextGetExternalForm(acmContext, v7);
}

- (void)setOptions:(id)options forInternalOperation:(int64_t)operation originator:(id)originator reply:(id)reply
{
  optionsCopy = options;
  originatorCopy = originator;
  replyCopy = reply;
  objc_initWeak(&location, self);
  originatorId = [originatorCopy originatorId];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_C5FC;
  v17[3] = &unk_30C68;
  objc_copyWeak(v20, &location);
  v14 = optionsCopy;
  v18 = v14;
  v20[1] = operation;
  v20[2] = originatorId;
  v15 = replyCopy;
  v19 = v15;
  v16.receiver = self;
  v16.super_class = ContextPluginACM;
  [(ContextPluginACM *)&v16 setOptions:v14 forInternalOperation:operation originator:originatorCopy reply:v17];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)_setOptions:(id)options forInternalOperation:(int64_t)operation originatorId:(unint64_t)id reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (operation == 1)
  {
    v11 = optionsCopy;
    if (optionsCopy && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11 = optionsCopy, (isKindOfClass & 1) != 0))
    {
      [(ContextPluginACM *)self _paymentOperationWithInstructions:optionsCopy originatorId:id reply:replyCopy];
    }

    else
    {
      v15 = [LAErrorHelper parameterErrorForMissingOrInvalidObject:v11 name:"options"];
      replyCopy[2](replyCopy, 0, v15);
    }
  }

  else
  {
    operation = [NSString stringWithFormat:@"Unsupported internal operation: %d", operation];
    v14 = [LAErrorHelper internalErrorWithMessage:operation];
    replyCopy[2](replyCopy, 0, v14);
  }
}

- (void)_paymentOperationWithInstructions:(id)instructions originatorId:(unint64_t)id reply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_C894;
  v9[3] = &unk_30CB8;
  selfCopy = self;
  instructionsCopy = instructions;
  replyCopy = reply;
  idCopy = id;
  v7 = instructionsCopy;
  v8 = replyCopy;
  [(ContextPluginACM *)selfCopy _parseInstructions:v7 completion:v9];
}

- (void)_parseInstructions:(id)instructions completion:(id)completion
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_CE1C;
  v20[3] = &unk_30CE0;
  completionCopy = completion;
  v21 = completionCopy;
  instructionsCopy = instructions;
  v7 = objc_retainBlock(v20);
  v19 = 0;
  v8 = [NSPropertyListSerialization propertyListWithData:instructionsCopy options:0 format:0 error:&v19];

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
              (*(completionCopy + 2))(completionCopy, 0, 0, v15, v16);

              if (!v11)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          (*(completionCopy + 2))(completionCopy, 0, 0, v15, 0);
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

- (BOOL)_setPragueInstructions:(id)instructions signature:(id)signature error:(id *)error
{
  signatureCopy = signature;
  acmHelper = self->_acmHelper;
  v19 = 0;
  v10 = [(LACACMHelper *)acmHelper setData:instructions type:1 error:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = self->_acmHelper;
    v18 = v11;
    v13 = [(LACACMHelper *)v12 setData:signatureCopy type:3 error:&v18];
    v14 = v18;

    if (v13)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
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

- (void)_setLegacyInstructions:(id)instructions originatorId:(unint64_t)id reply:(id)reply
{
  replyCopy = reply;
  v7 = +[LAErrorHelper errorNotSupported];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (unsigned)_credentialTypeForEvent:(int64_t)event
{
  if ((event - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_26164[event - 1];
  }
}

- (void)resetEvent:(int64_t)event originator:(id)originator reply:(id)reply
{
  originatorCopy = originator;
  replyCopy = reply;
  v10 = sub_26D8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    eventCopy = event;
    _os_log_impl(&def_1FF08, v10, OS_LOG_TYPE_DEFAULT, "resetEvent:%d", buf, 8u);
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
  do
  {
    if ((!event || v13 == [(ContextPluginACM *)self _credentialTypeForEvent:event]) && ![(ContextPluginACM *)self _shouldAvoidRemovingCredentialType:v13])
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
  if (!event)
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
  (replyCopy)[2](replyCopy, v11, v12);
}

- (void)authMethodWithReply:(id)reply
{
  replyCopy = reply;
  acmContext = self->_acmContext;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D23C;
  v7[3] = &unk_30D08;
  v8 = replyCopy;
  v6 = replyCopy;
  ACMGetAclAuthMethod(acmContext, v7);
}

@end