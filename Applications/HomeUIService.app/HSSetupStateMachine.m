@interface HSSetupStateMachine
- (BOOL)_deviceIsOnAMultiUserLanguage;
- (BOOL)_isVoiceRecognitionEnabled:(id)a3;
- (BOOL)_shouldShowSiriEndpointStep:(id)a3;
- (BOOL)_shouldSkipAdaptiveTempStep:(int64_t)a3 forConfig:(id)a4;
- (BOOL)_shouldSkipCleanEnergyStep:(int64_t)a3 forConfig:(id)a4;
- (BOOL)_shouldSkipRestrictedGuestAccessStep:(id)a3;
- (BOOL)_shouldSkipSafetyAndSecurityStep:(id)a3;
- (BOOL)_shouldSkipSiriUpdateRequiredStep:(id)a3;
- (BOOL)_shouldSkipSiriVoiceRecognitionStep:(id)a3;
- (BOOL)_shouldSkipUseSiriFlow:(id)a3;
- (BOOL)_shouldSkipUseSiriStep:(id)a3;
- (BOOL)_sync_shouldSkipPersonalRequestsStep:(id)a3;
- (BOOL)_sync_shouldSkipSetupSiriStep:(id)a3;
- (BOOL)_sync_shouldSkipSiriForEveryoneStep:(id)a3;
- (BOOL)_sync_shouldSkipSiriVoiceTrainingStep:(id)a3;
- (BOOL)_sync_shouldSkipStep:(int64_t)a3 withConfiguration:(id)a4;
- (BOOL)configSupportsPairing:(id)a3;
- (BOOL)stepRequiresDismissalConfirmation:(int64_t)a3 withCoordinator:(id)a4 configuration:(id)a5;
- (BOOL)stepRequiresIdentifyButton:(int64_t)a3 withCoordinator:(id)a4 configuration:(id)a5;
- (id)_voiceProfileCheckFuture;
- (id)shouldSkipStep:(int64_t)a3 withConfiguration:(id)a4;
- (int64_t)stepFollowingStep:(int64_t)a3 withConfiguration:(id)a4;
@end

@implementation HSSetupStateMachine

- (BOOL)configSupportsPairing:(id)a3
{
  v3 = a3;
  v4 = [v3 delegate];
  v5 = [v4 stateMachineConfigurationGetLaunchReason:v3];

  v6 = [v3 home];

  if (v6)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFCLL) == 4;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;

  return v8;
}

- (int64_t)stepFollowingStep:(int64_t)a3 withConfiguration:(id)a4
{
  v7 = a4;
  v8 = [(HSSetupStateMachine *)self configurationObjectClass];
  v9 = v7;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    if (!v11)
    {
      sub_1000774F0(v9, v8);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HSSetupStateMachine *)self configSupportsPairing:v11];
  if (a3 >= 7 && v12)
  {
    [v11 setIsReadyToPair:1];
  }

  v13 = [v11 pairingError];

  if (v13)
  {
LABEL_12:
    v14 = 58;
    goto LABEL_13;
  }

  v16 = [v11 delegate];
  v17 = [v16 stateMachineConfigurationGetLaunchReason:v11];

  v14 = 3;
  switch(a3)
  {
    case 0:
      if (v17 <= 4)
      {
        if (v17 > 1)
        {
          if (v17 == 2)
          {
LABEL_44:
            v14 = 52;
          }

          else if (v17 == 3)
          {
            v38 = [v11 delegate];
            v39 = [v38 stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:v11];

            if (v39)
            {
              v14 = 40;
            }

            else
            {
              v14 = 39;
            }
          }

          else
          {
            v14 = 16;
          }

          goto LABEL_13;
        }

        if (!v17)
        {
          v36 = [v11 delegate];
          v37 = [v36 stateMachineConfigurationIsLaunchedToSetupSpecificAccessory:v11];

          if (v37)
          {
            v14 = 4;
          }

          else
          {
            v14 = 1;
          }

          goto LABEL_13;
        }

        if (v17 == 1)
        {
          v14 = 11;
          goto LABEL_13;
        }

LABEL_94:
        v14 = 2;
        goto LABEL_13;
      }

      if (v17 > 7)
      {
        if ((v17 - 8) < 2)
        {
          v35 = +[NSAssertionHandler currentHandler];
          [v35 handleFailureInMethod:a2 object:self file:@"HSSetupStateMachine.m" lineNumber:123 description:{@"Unsupported Launch Reason %ld", v17}];
        }

        goto LABEL_94;
      }

      if (v17 == 5)
      {
LABEL_15:
        v14 = 21;
      }

      else if (v17 == 6)
      {
LABEL_84:
        v14 = 24;
      }

      else
      {
LABEL_83:
        v14 = 17;
      }

LABEL_13:

      return v14;
    case 1:
      goto LABEL_94;
    case 2:
      goto LABEL_13;
    case 3:
      v14 = 4;
      goto LABEL_13;
    case 4:
      v23 = [v11 setupDescription];
      v24 = [v23 setupAccessoryPayload];

      if (v24)
      {
        v14 = 5;
      }

      else
      {
        v31 = [v11 delegate];
        v32 = [v31 stateMachineConfigurationGetDiscoveredAccessory:v11];

        v33 = [v11 delegate];
        v34 = [v33 stateMachineConfigurationGetSetupCode:v11];

        if (v32 && (![v32 requiresSetupCode] || objc_msgSend(v34, "length")))
        {
          v14 = 5;
        }

        else
        {
          v14 = 1;
        }
      }

      goto LABEL_13;
    case 5:
      v28 = +[HFHomeKitDispatcher sharedDispatcher];
      v29 = [v28 homeManager];
      v30 = [v29 hf_containsAtLeastOneHomeThatRequiresUpdate];

      v20 = v30 == 0;
      v21 = 6;
      v22 = 56;
      goto LABEL_57;
    case 6:
      v14 = 7;
      goto LABEL_13;
    case 7:
      v14 = 8;
      goto LABEL_13;
    case 8:
      v14 = 9;
      goto LABEL_13;
    case 9:
      v14 = 10;
      goto LABEL_13;
    case 10:
      v14 = 13;
      goto LABEL_13;
    case 11:
      v18 = [v11 delegate];
      v19 = [v18 stateMachineConfigurationShouldJumpToDoneStep:v11];

      v20 = v19 == 0;
      v21 = 12;
      v22 = 57;
LABEL_57:
      if (v20)
      {
        v14 = v21;
      }

      else
      {
        v14 = v22;
      }

      goto LABEL_13;
    case 12:
      v25 = [v11 addedAccessory];
      v26 = [v25 pendingConfigurationIdentifier];

      v14 = [HSSetupContentProvider hsProxCardSetupUIStepForString:v26];
      if (v14 <= 12)
      {
        v27 = [v11 addedAccessory];

        if (!v27)
        {
          sub_100077598(a2, self);
        }

        v14 = 13;
      }

      goto LABEL_13;
    case 13:
      v14 = 14;
      goto LABEL_13;
    case 14:
      v14 = 15;
      goto LABEL_13;
    case 15:
      goto LABEL_83;
    case 16:
    case 20:
      goto LABEL_15;
    case 17:
      v14 = 18;
      goto LABEL_13;
    case 18:
      v14 = 19;
      goto LABEL_13;
    case 19:
      v14 = 20;
      goto LABEL_13;
    case 21:
      v14 = 22;
      goto LABEL_13;
    case 22:
      v14 = 23;
      goto LABEL_13;
    case 23:
      goto LABEL_84;
    case 24:
      v14 = 25;
      goto LABEL_13;
    case 25:
      if ((v17 - 4) >= 3)
      {
        v14 = 26;
      }

      else
      {
        v14 = 57;
      }

      goto LABEL_13;
    case 26:
      v14 = 27;
      goto LABEL_13;
    case 27:
      v14 = 28;
      goto LABEL_13;
    case 28:
      v14 = 29;
      goto LABEL_13;
    case 29:
      v14 = 30;
      goto LABEL_13;
    case 30:
      v14 = 31;
      goto LABEL_13;
    case 31:
      v14 = 32;
      goto LABEL_13;
    case 32:
      v14 = 33;
      goto LABEL_13;
    case 33:
      v14 = 34;
      goto LABEL_13;
    case 34:
      v14 = 35;
      goto LABEL_13;
    case 35:
      v14 = 36;
      goto LABEL_13;
    case 36:
      v14 = 37;
      goto LABEL_13;
    case 37:
      v14 = 38;
      goto LABEL_13;
    case 38:
      v14 = 39;
      goto LABEL_13;
    case 39:
      v14 = 40;
      goto LABEL_13;
    case 40:
      v14 = 41;
      goto LABEL_13;
    case 41:
      v14 = 42;
      goto LABEL_13;
    case 42:
      v14 = 43;
      goto LABEL_13;
    case 43:
      v14 = 44;
      goto LABEL_13;
    case 44:
      v14 = 45;
      goto LABEL_13;
    case 45:
      v14 = 46;
      goto LABEL_13;
    case 46:
      v14 = 47;
      goto LABEL_13;
    case 47:
      v14 = 48;
      goto LABEL_13;
    case 48:
      v14 = 49;
      goto LABEL_13;
    case 49:
      v14 = 50;
      goto LABEL_13;
    case 50:
      v14 = 51;
      goto LABEL_13;
    case 51:
      goto LABEL_44;
    case 52:
      v14 = 53;
      goto LABEL_13;
    case 53:
      v14 = 54;
      goto LABEL_13;
    case 54:
      v14 = 55;
      goto LABEL_13;
    case 55:
      v14 = 57;
      goto LABEL_13;
    default:
      goto LABEL_12;
  }
}

- (id)shouldSkipStep:(int64_t)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = [v6 delegate];
  v8 = [v7 stateMachineConfigurationIsLaunchedToSetupSpecificAccessory:v6];

  if (v8)
  {
    if (a3 > 7)
    {
      v11 = 0;
      if (a3 == 8 || a3 == 58)
      {
        goto LABEL_11;
      }
    }

    else if (a3 == 1 || a3 == 4)
    {
      v9 = [v6 delegate];
      v10 = [v9 stateMachineConfigurationGetSetupCode:v6];
      v11 = [v10 length] != 0;

LABEL_11:
      v12 = [NSNumber numberWithBool:v11];
      v15 = [NAFuture futureWithResult:v12];
LABEL_12:
      v14 = v15;
      goto LABEL_13;
    }

    v11 = 1;
    goto LABEL_11;
  }

  if (a3 == 11)
  {
    v12 = [v6 delegate];
    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 stateMachineConfigurationShouldSkipResumeSelectAccessoryStep:v6]);
    v14 = [NAFuture futureWithResult:v13];

LABEL_13:
    goto LABEL_14;
  }

  v17 = [v6 delegate];
  v18 = [v17 stateMachineConfigurationGetLaunchReason:v6];

  v19 = [v6 addedAccessory];
  if ([v19 hf_isNetworkRouter])
  {
    v20 = [v6 delegate];
    v21 = [v20 stateMachineConfigurationActiveTupleIsTopTuple];

    if (v21)
    {
      v23 = a3 > 8 && a3 != 51;
      v24 = [NSNumber numberWithInt:v23];
      v14 = [NAFuture futureWithResult:v24];

      goto LABEL_14;
    }
  }

  else
  {
  }

  if (a3 > 21)
  {
    if (a3 > 24)
    {
      if (a3 <= 44)
      {
        if (a3 != 25)
        {
          if (a3 == 27)
          {
            if ((+[HFUtilities isUsingiCloud]& 1) != 0)
            {
              v25 = [v6 addedAccessory];
              v26 = [v6 home];
              v27 = [v26 hf_currentUserIsOwner];

              v28 = [v6 home];
              v29 = [v28 hf_hasHomeHubSupportingAccessCodes];

              if ([v25 supportsAccessCodes] && ((v27 | v29) & 1) != 0)
              {
                v30 = +[HFHomeKitDispatcher sharedDispatcher];
                v31 = [v6 home];
                v32 = [v30 pinCodeManagerForHome:v31];

                objc_initWeak(location, self);
                v33 = [v32 guestPinCodes];
                v141[0] = _NSConcreteStackBlock;
                v141[1] = 3221225472;
                v141[2] = sub_10000D10C;
                v141[3] = &unk_1000C5BC8;
                objc_copyWeak(&v142, location);
                v34 = [v33 flatMap:v141];
                v139[0] = _NSConcreteStackBlock;
                v139[1] = 3221225472;
                v139[2] = sub_10000D2B8;
                v139[3] = &unk_1000C5BF0;
                objc_copyWeak(&v140, location);
                v14 = [v34 recover:v139];
                objc_destroyWeak(&v140);

                objc_destroyWeak(&v142);
                objc_destroyWeak(location);
              }

              else
              {
                v92 = HFLogForCategory();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  v93 = [(HSSetupStateMachine *)self description];
                  *location = 138413570;
                  *&location[4] = objc_opt_class();
                  v160 = 2080;
                  v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
                  v162 = 2112;
                  v163 = v25;
                  v164 = 1024;
                  *v165 = [v25 supportsAccessCodes];
                  *&v165[4] = 1024;
                  *&v165[6] = v27;
                  LOWORD(v166) = 1024;
                  *(&v166 + 2) = v29 & 1;
                  _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "(%@:%s) Skipping guest access for %@. supportsAccessCodes: %{BOOL}d  currentUserIsOwner:%{BOOL}d  hubSupported:%{BOOL}d", location, 0x32u);
                }

                v14 = [NAFuture futureWithResult:&__kCFBooleanTrue];
              }

              goto LABEL_14;
            }

            v66 = HFLogForCategory();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = [(HSSetupStateMachine *)self description];
              *location = 138412546;
              *&location[4] = objc_opt_class();
              v160 = 2080;
              v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "(%@:%s) Skipping guest access PIN code prox card because user isn't signed into iCloud.", location, 0x16u);
            }

            goto LABEL_153;
          }

LABEL_80:
          v12 = [NSNumber numberWithBool:[(HSSetupStateMachine *)self _sync_shouldSkipStep:a3 withConfiguration:v6]];
          v15 = [NAFuture futureWithResult:v12];
          goto LABEL_12;
        }

        v41 = [v6 addedAccessory];
        v42 = [v41 supportsAccessCodes];

        if (v42)
        {
          if ((+[HFUtilities isUsingiCloud]& 1) != 0)
          {
            v43 = [v6 home];
            v44 = +[HFHomeKitDispatcher sharedDispatcher];
            v45 = [v44 pinCodeManagerForHome:v43];

            objc_initWeak(location, self);
            v46 = [v45 hasValidConstraints];
            v143[0] = _NSConcreteStackBlock;
            v143[1] = 3221225472;
            v143[2] = sub_10000CF0C;
            v143[3] = &unk_1000C5BA0;
            objc_copyWeak(&v146, location);
            v47 = v43;
            v144 = v47;
            v145 = v6;
            v14 = [v46 flatMap:v143];

            objc_destroyWeak(&v146);
            objc_destroyWeak(location);

            goto LABEL_14;
          }

          v66 = HFLogForCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *location = 138412546;
            *&location[4] = self;
            v160 = 2080;
            v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "(%@:%s) Skipping PIN code text field prox card because user isn't signed into iCloud.", location, 0x16u);
          }

          goto LABEL_153;
        }

        goto LABEL_44;
      }

      if (a3 == 46)
      {
        if ([(HSSetupStateMachine *)self _sync_shouldSkipSiriVoiceTrainingStep:v6])
        {
LABEL_52:
          [NAFuture futureWithResult:&__kCFBooleanTrue];
          v35 = LABEL_53:;
          goto LABEL_154;
        }
      }

      else
      {
        if (a3 != 45)
        {
          goto LABEL_80;
        }

        if ([(HSSetupStateMachine *)self _sync_shouldSkipSetupSiriStep:v6])
        {
          goto LABEL_52;
        }
      }

      [(HSSetupStateMachine *)self _voiceProfileCheckFuture];
      goto LABEL_53;
    }

    if (a3 != 22)
    {
      if (a3 != 23)
      {
        if ((+[HFUtilities isUsingiCloud]& 1) == 0 && !v18)
        {
LABEL_44:
          v35 = [NAFuture futureWithResult:&__kCFBooleanTrue];
LABEL_154:
          v14 = v35;
          goto LABEL_14;
        }

        v69 = [v6 home];
        v70 = [v69 hf_currentUserIsOwner];

        v71 = [v6 home];
        v72 = [v71 hf_hasHomeHubSupportingAccessCodes];

        v73 = [v6 addedAccessory];
        v74 = [v73 supportsAccessCodes];

        v75 = HFLogForCategory();
        v76 = v74 & (v70 | v72);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          if (v76)
          {
            v77 = @"Not";
          }

          else
          {
            v77 = &stru_1000C89F8;
          }

          v78 = [v6 addedAccessory];
          *location = 138413570;
          *&location[4] = self;
          v160 = 2080;
          v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
          v162 = 2112;
          v163 = v77;
          v164 = 1024;
          *v165 = [v78 supportsAccessCodes];
          *&v165[4] = 1024;
          *&v165[6] = v70;
          LOWORD(v166) = 1024;
          *(&v166 + 2) = v72;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ Skipping PIN Code prox card. supportsAccessCodes:%{BOOL}d  currentUserIsOwner:%{BOOL}d  hubSupported:%{BOOL}d", location, 0x32u);
        }

        v79 = [NSNumber numberWithInt:v76 ^ 1u];
        v14 = [NAFuture futureWithResult:v79];

        goto LABEL_14;
      }

      if ((+[HFUtilities isAnIPhone]& 1) == 0)
      {
        v66 = HFLogForCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v68 = [objc_opt_class() description];
          *location = 138412546;
          *&location[4] = v68;
          v160 = 2080;
          v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "(%@:%s) Skipping HSProxCardSetupUIStepWalletKeyExpressMode because this device is not iPhone", location, 0x16u);
        }

LABEL_153:

        v35 = [NAFuture futureWithResult:&__kCFBooleanTrue];
        goto LABEL_154;
      }

      v61 = [v6 home];

      if (v61)
      {
        if ((+[HFUtilities isUsingiCloud]& 1) != 0)
        {
          v62 = [v6 home];
          v63 = [v62 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];
          v147[0] = _NSConcreteStackBlock;
          v147[1] = 3221225472;
          v147[2] = sub_10000C7A8;
          v147[3] = &unk_1000C5AD8;
          v148 = v6;
          v149 = v18;
          v14 = [v63 flatMap:v147];

          goto LABEL_14;
        }

        v66 = HFLogForCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v120 = [objc_opt_class() description];
          *location = 138412546;
          *&location[4] = v120;
          v160 = 2080;
          v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "(%@:%s) Skipping HSProxCardSetupUIStepWalletKeyExpressMode because not signed into iCloud", location, 0x16u);
        }

        goto LABEL_153;
      }

      v64 = HFLogForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *location = 134218242;
        *&location[4] = 23;
        v160 = 2112;
        v161 = v6;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Skipping step because config has no home. step: %lu config: %@", location, 0x16u);
      }

LABEL_84:

      v35 = [NAFuture futureWithResult:&__kCFBooleanTrue];
      goto LABEL_154;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v64 = HFLogForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:22];
        *location = 136315394;
        *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
        v160 = 2112;
        v161 = v65;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "(%s) Skipping %@ because feature flag is NOT enabled.", location, 0x16u);
      }

      goto LABEL_84;
    }

    v48 = [v6 home];
    if (v48)
    {
      v49 = [v6 addedAccessory];
      v50 = [v49 supportsUWBUnlock];

      v51 = HFLogForCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:22];
        v53 = [v6 addedAccessory];
        v54 = v53;
        v55 = @"doesn't support";
        *location = 136316162;
        *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
        if (v50)
        {
          v55 = @"supports";
        }

        v56 = @"Skipping UWB prox card.";
        if (v50)
        {
          v56 = &stru_1000C89F8;
        }

        v160 = 2112;
        v161 = v52;
        v162 = 2112;
        v163 = v53;
        v164 = 2112;
        *v165 = v55;
        *&v165[8] = 2112;
        v166 = v56;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "(%s) step = %@. %@ %@ UWB unlock. %@", location, 0x34u);
      }

      if ((v50 & 1) == 0)
      {
        v121 = [NSNumber numberWithInt:1];
        v14 = [NAFuture futureWithResult:v121];

        goto LABEL_159;
      }

      if ((+[HFUtilities isAnIPhone]& 1) != 0)
      {
        if ((MGGetBoolAnswer() & 1) != 0 || (+[HFUtilities isInternalTest]& 1) != 0)
        {
          v57 = [v6 home];
          v58 = [v57 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];
          v153[0] = _NSConcreteStackBlock;
          v153[1] = 3221225472;
          v153[2] = sub_10000C1BC;
          v153[3] = &unk_1000C5B50;
          v156 = 22;
          v59 = v6;
          v157 = v18;
          v154 = v59;
          v155 = self;
          v60 = [v58 flatMap:v153];
          v150[0] = _NSConcreteStackBlock;
          v150[1] = 3221225472;
          v150[2] = sub_10000C710;
          v150[3] = &unk_1000C5B28;
          v150[4] = self;
          v152 = 22;
          v151 = v59;
          v14 = [v60 recover:v150];

LABEL_159:
          goto LABEL_14;
        }

        v95 = HFLogForCategory();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v123 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:22];
          v124 = [HUHomeUIServiceLaunchUserInfo launchReasonDescription:v18];
          *location = 136315650;
          *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
          v160 = 2112;
          v161 = v123;
          v162 = 2112;
          v163 = v124;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "(%s) Skipping %@ because this device does not have UWB capability. Launch reason = %@", location, 0x20u);
        }
      }

      else
      {
        v95 = HFLogForCategory();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v122 = [HUHomeUIServiceLaunchUserInfo launchReasonDescription:v18];
          *location = 136315394;
          *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
          v160 = 2112;
          v161 = v122;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "(%s) Skipping %@ because this device is not iPhone. This prox card should only displayed on iPhones.", location, 0x16u);
        }
      }
    }

    else
    {
      v95 = HFLogForCategory();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v96 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:22];
        *location = 136315650;
        *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
        v160 = 2112;
        v161 = v96;
        v162 = 2112;
        v163 = v6;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "(%s) Skipping %@ because config %@ has no home.", location, 0x20u);
      }
    }

    v14 = [NAFuture futureWithResult:&__kCFBooleanTrue];
    goto LABEL_159;
  }

  if (a3 > 19)
  {
    if (a3 == 20)
    {
      if (![(HSSetupStateMachine *)self _shouldSkipCleanEnergyStep:20 forConfig:v6])
      {
        goto LABEL_80;
      }

      goto LABEL_44;
    }

    v36 = [v6 home];
    v37 = [v36 hf_currentUserIsOwner];
    v137 = [v36 hf_currentUserIsAdministrator];
    v134 = [v36 hf_hasHomeHubSupportingWalletKey];
    v38 = [v6 addedAccessory];
    v39 = [v38 supportsWalletKey];
    if (!(v37 & 1 | ((v39 & 1) == 0)))
    {
      if (v134 & v137)
      {
        v39 = 1;
      }

      else
      {
        v39 = [v36 hasOnboardedForWalletKey];
      }
    }

    v81 = HFLogForCategory();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v131 = [objc_opt_class() description];
      if (v39)
      {
        v82 = @"Not Skipping";
      }

      else
      {
        v82 = @"Skipping";
      }

      v83 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:21];
      v84 = [v6 addedAccessory];
      v85 = [v6 addedAccessory];
      v86 = [v85 supportsWalletKey];
      *location = 138414338;
      v87 = @"doesn't support";
      v160 = 2080;
      v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
      *&location[4] = v131;
      v162 = 2112;
      if (v86)
      {
        v87 = @"supports";
      }

      v163 = v82;
      v164 = 2112;
      *v165 = v83;
      *&v165[8] = 2112;
      v166 = v84;
      v167 = 2112;
      v168 = v87;
      v169 = 1024;
      *v170 = v37;
      *&v170[4] = 1024;
      *&v170[6] = v137;
      LOWORD(v171) = 1024;
      *(&v171 + 2) = v134;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ %@ because %@ %@ wallet key. isOwner: %{BOOL}d  isAdmin: %{BOOL}d  home hub supports wallet key:(%{BOOL}d)", location, 0x50u);
    }

    if (v39)
    {
      if (+[HFUtilities isAnIPad])
      {
        v88 = HFLogForCategory();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v89 = [objc_opt_class() description];
          v90 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:21];
          *location = 138412802;
          *&location[4] = v89;
          v160 = 2080;
          v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
          v162 = 2112;
          v163 = v90;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "(%@:%s) Not skipping %@ for iPads", location, 0x20u);
        }

        v14 = [NAFuture futureWithResult:&__kCFBooleanFalse];
      }

      else
      {
        v94 = [v36 hf_hasWalletKeyCompatibleDevice];
        v158[0] = _NSConcreteStackBlock;
        v158[1] = 3221225472;
        v158[2] = sub_10000C010;
        v158[3] = &unk_1000C5AD8;
        v158[4] = self;
        v158[5] = 21;
        v14 = [v94 flatMap:v158];
      }
    }

    else
    {
      v91 = [NSNumber numberWithInt:1];
      v14 = [NAFuture futureWithResult:v91];
    }
  }

  else
  {
    if ((a3 - 17) < 3)
    {
      if (![(HSSetupStateMachine *)self _shouldSkipAdaptiveTempStep:a3 forConfig:v6])
      {
        goto LABEL_80;
      }

      goto LABEL_44;
    }

    if (a3 != 16)
    {
      goto LABEL_80;
    }

    v40 = [v6 home];
    v135 = [v40 hf_currentUserIsAdministrator];
    if ([v40 hasOnboardedForWalletKey])
    {
      v138 = 0;
    }

    else
    {
      v80 = [v40 hf_walletKeyAccessories];
      if ([v80 count])
      {
        if (v135 && ([v40 hf_hasHomeHubSupportingWalletKey] & 1) != 0)
        {
          v138 = 1;
        }

        else
        {
          v138 = [v40 hf_currentUserIsOwner];
        }
      }

      else
      {
        v138 = 0;
      }
    }

    v97 = HFLogForCategory();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v127 = NSStringFromBOOL();
      v132 = [v40 name];
      v129 = [v40 uniqueIdentifier];
      [v40 hasOnboardedForWalletKey];
      v125 = NSStringFromBOOL();
      v98 = [v40 hf_walletKeyAccessories];
      v99 = [v98 count];
      v100 = [v40 hf_walletKeyAccessories];
      v101 = [HMAccessory hf_minimumDescriptionsOfAccessories:v100];
      [v40 hf_hasHomeHubSupportingWalletKey];
      v102 = NSStringFromBOOL();
      v103 = [v40 currentUser];
      v104 = [v103 hf_prettyDescription];
      *location = 136317186;
      *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
      v160 = 2112;
      v161 = v127;
      v162 = 2112;
      v163 = v132;
      v164 = 2112;
      *v165 = v129;
      *&v165[8] = 2112;
      v166 = v125;
      v167 = 2048;
      v168 = v99;
      v169 = 2112;
      *v170 = v101;
      *&v170[8] = 2112;
      v171 = v102;
      v172 = 2112;
      v173 = v104;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "(%s) showWalletKeyFeature = %@ | home <Name: %@, uniqueIdentifier: %@> | hasOnboardedForWalletKey = %@ | walletKeyAccessories (%ld) %@ | hasHomeHubSupportingWalletKey %@ | user %@", location, 0x5Cu);
    }

    if ([v40 hasOnboardedForAccessCode])
    {
      v136 = 0;
    }

    else
    {
      v105 = [v40 hf_accessoriesSupportingAccessCodes];
      if ([v105 count])
      {
        if (v135 && ([v40 hf_hasHomeHubSupportingAccessCodes] & 1) != 0)
        {
          v136 = 1;
        }

        else
        {
          v136 = [v40 hf_currentUserIsOwner];
        }
      }

      else
      {
        v136 = 0;
      }
    }

    v106 = HFLogForCategory();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v128 = NSStringFromBOOL();
      v133 = [v40 name];
      v130 = [v40 uniqueIdentifier];
      [v40 hasOnboardedForAccessCode];
      v126 = NSStringFromBOOL();
      v107 = [v40 hf_accessoriesSupportingAccessCodes];
      v108 = [v107 count];
      v109 = [v40 hf_accessoriesSupportingAccessCodes];
      v110 = [HMAccessory hf_minimumDescriptionsOfAccessories:v109];
      [v40 hf_hasHomeHubSupportingAccessCodes];
      v111 = NSStringFromBOOL();
      v112 = [v40 currentUser];
      v113 = [v112 hf_prettyDescription];
      *location = 136317186;
      *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
      v160 = 2112;
      v161 = v128;
      v162 = 2112;
      v163 = v133;
      v164 = 2112;
      *v165 = v130;
      *&v165[8] = 2112;
      v166 = v126;
      v167 = 2048;
      v168 = v108;
      v169 = 2112;
      *v170 = v110;
      *&v170[8] = 2112;
      v171 = v111;
      v172 = 2112;
      v173 = v113;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "(%s) showAccessCodeFeature = %@ | home <Name: %@, uniqueIdentifier: %@> | hasOnboardedForAccessCode = %@ | accessoriesSupportingAccessCodes (%ld) %@ | hasHomeHubSupportingAccessCodes %@ | user %@", location, 0x5Cu);
    }

    v114 = HFLogForCategory();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v115 = NSStringFromBOOL();
      v116 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:16];
      v117 = NSStringFromBOOL();
      v118 = NSStringFromBOOL();
      *location = 136316162;
      *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
      v160 = 2112;
      v161 = v115;
      v162 = 2112;
      v163 = v116;
      v164 = 2112;
      *v165 = v117;
      *&v165[8] = 2112;
      v166 = v118;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "(%s) shouldShow = %@ for %@ because showWalletKeyFeature = %@ and showAccessCodeFeature = %@", location, 0x34u);
    }

    v119 = [NSNumber numberWithInt:((v138 | v136) & 1) == 0];
    v14 = [NAFuture futureWithResult:v119];
  }

LABEL_14:

  return v14;
}

- (BOOL)_sync_shouldSkipStep:(int64_t)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  switch(a3)
  {
    case 1:
    case 4:
      v14 = [v6 setupDescription];
      v15 = [v14 setupAccessoryPayload];

      if (v15)
      {
        goto LABEL_81;
      }

      v16 = [v7 delegate];
      v13 = [v16 stateMachineConfigurationGetDiscoveredAccessory:v7];

      v17 = [v7 delegate];
      v18 = [v17 stateMachineConfigurationGetSetupCode:v7];

      v8 = v13 && ![v13 requiresSetupCode] || objc_msgSend(v18, "length") != 0;
      goto LABEL_83;
    case 2:
    case 3:
      v10 = [v6 setupDescription];
      v11 = [v10 setupAccessoryPayload];

      if (v11)
      {
        goto LABEL_81;
      }

      v12 = [v7 delegate];
      v13 = [v12 stateMachineConfigurationGetDiscoveredAccessory:v7];

      v8 = v13 != 0;
      goto LABEL_84;
    case 5:
      v13 = [v6 delegate];
      v19 = [v13 stateMachineConfigurationShouldSkipDetectedStep:v7];
      goto LABEL_72;
    case 6:
    case 7:
      v9 = [v6 home];
      goto LABEL_43;
    case 8:
      v9 = [v6 addedAccessory];
      goto LABEL_43;
    case 9:
      v13 = [v6 delegate];
      v19 = [v13 stateMachineConfigurationShouldSkipHomeHubStep:v7];
      goto LABEL_72;
    case 10:
      if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
      {
        goto LABEL_81;
      }

      v34 = [v7 home];
      v35 = [v34 hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter];

      v36 = [v7 addedAccessory];
      v37 = [v36 requiresThreadRouter];

      v38 = HFLogForCategory();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (!v37 || v35)
      {
        if (v39)
        {
          *buf = 136315650;
          v74 = "[HSSetupStateMachine _sync_shouldSkipStep:withConfiguration:]";
          v75 = 1024;
          *v76 = v37;
          *&v76[4] = 1024;
          *&v76[6] = v35;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s Skipping HSProxCardSetupUIThreadRouterWarning - accessoryIsSED: [%d], hasThreadEnabledResident: [%d]", buf, 0x18u);
        }

LABEL_81:
        v8 = 1;
      }

      else
      {
        if (v39)
        {
          *buf = 136315650;
          v74 = "[HSSetupStateMachine _sync_shouldSkipStep:withConfiguration:]";
          v75 = 1024;
          *v76 = v37;
          *&v76[4] = 1024;
          *&v76[6] = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s Showing HSProxCardSetupUIThreadRouterWarning - accessoryIsSED: [%d], hasThreadEnabledResident: [%d]", buf, 0x18u);
        }

        v8 = 0;
      }

      break;
    case 14:
      v9 = [v6 roomName];
LABEL_43:
      v8 = v9 != 0;

      break;
    case 26:
      v20 = [HSPCNetworkCredentialManagementViewController shouldSkipForConfig:v6];
      goto LABEL_76;
    case 28:
      v44 = [v6 addedAccessory];
      v45 = [v44 hf_primaryService];
      v46 = [v45 serviceType];
      v47 = [HFAssociatedServiceTypeFactory associatedServiceTypesSetFor:v46];

      v48 = [v7 addedAccessory];
      v49 = [HSPCNameServicesViewController applicableServicesForAccessory:v48];
      v50 = [v49 count];

      if (v47)
      {
        v51 = v50 > 1;
      }

      else
      {
        v51 = 1;
      }

      v8 = v51;
      break;
    case 29:
      v40 = [v6 addedAccessory];
      v41 = [v40 hf_isCamera];

      if (!v41 || ![v7 supportsRichConfiguration])
      {
        goto LABEL_81;
      }

      v13 = [v7 home];
      v21 = [v13 hf_currentUserIsAdministrator];
      goto LABEL_46;
    case 30:
      v52 = [v6 addedAccessory];
      v53 = [v52 hf_isCamera];

      if (!v53)
      {
        goto LABEL_81;
      }

      v54 = [v7 home];
      v55 = [v54 hf_allUsersIncludingCurrentUser];
      v56 = [NSSet setWithArray:v55];

      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_10000DE5C;
      v71[3] = &unk_1000C5C18;
      v57 = v7;
      v72 = v57;
      v13 = [v56 na_filter:v71];

      v58 = [v13 count];
      v59 = [v57 cameraProfile];
      v60 = [v59 hf_cameraIsNotSetToRecord];

      v8 = 1;
      if (v58 >= 2 && (v60 & 1) == 0)
      {
        v61 = [v57 home];
        v8 = [v61 hf_currentUserIsAdministrator] ^ 1;
      }

      v62 = [v13 na_map:&stru_1000C5C58];
      v63 = HFLogForCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = NSStringFromBOOL();
        v65 = NSStringFromBOOL();
        *buf = 136315906;
        v74 = "[HSSetupStateMachine _sync_shouldSkipStep:withConfiguration:]";
        v75 = 2112;
        *v76 = v64;
        *&v76[8] = 2112;
        v77 = v62;
        v78 = 2112;
        v79 = v65;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "(%s) shouldSkip = %@ because users = %@, cameraIsRecording = %@", buf, 0x2Au);
      }

      goto LABEL_84;
    case 31:
      v66 = [v6 addedAccessory];
      v67 = [v66 hf_isDoorbell];

      if (!v67)
      {
        goto LABEL_81;
      }

      v13 = [v7 cameraProfile];
      v19 = [v13 hf_cameraIsNotSetToRecord];
      goto LABEL_72;
    case 32:
      v27 = [v6 addedAccessory];
      v28 = [v27 hf_isDoorbell];

      if (!v28 || [(HSSetupStateMachine *)self _sync_shouldSkipStep:31 withConfiguration:v7])
      {
        goto LABEL_81;
      }

      v29 = [v7 home];
      v30 = [v29 personManagerSettings];
      v31 = [v30 isFaceClassificationEnabled];

      v8 = v31 ^ 1;
      break;
    case 33:
      v68 = [v6 addedAccessory];
      v69 = [v68 hf_isDoorbell];

      if (!v69)
      {
        goto LABEL_81;
      }

      v13 = [v7 addedAccessory];
      v18 = [v7 home];
      v8 = [HSPCChimeViewController shouldSkipForAccessory:v13 inHome:v18];
      goto LABEL_83;
    case 35:
      v13 = [v6 addedAccessory];
      v18 = [v13 category];
      v32 = [v18 categoryType];
      v8 = [v32 isEqualToString:HMAccessoryCategoryTypeShowerHead] ^ 1;

      goto LABEL_83;
    case 36:
      v13 = [v6 addedAccessory];
      if ([v13 hf_isSprinkler])
      {
        v18 = [HSPCNameZonesViewController applicableServicesForAccessory:v13];
        v8 = [v18 count] == 0;
LABEL_83:
      }

      else
      {
        v8 = 1;
      }

      goto LABEL_84;
    case 37:
      v13 = [v6 addedAccessory];
      v22 = [v13 hf_isCategorizedAsBridge];
      v23 = [HSPCNameServicesViewController applicableServicesForAccessory:v13];
      v24 = [v23 count];

      v25 = [v13 hf_isProgrammableSwitch];
      v26 = v24 < 2;
      if (v22)
      {
        v26 = v24 == 0;
      }

      v8 = v26 | v25;
      goto LABEL_84;
    case 39:
      v20 = [(HSSetupStateMachine *)self _shouldSkipUseSiriStep:v6];
      goto LABEL_76;
    case 40:
      v42 = [v6 delegate];
      v43 = [v42 stateMachineConfigurationGetLaunchReason:v7];

      if (v43 != 3)
      {
        goto LABEL_81;
      }

      v13 = [v7 delegate];
      v21 = [v13 stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:v7];
      goto LABEL_46;
    case 41:
      if (![(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:v6])
      {
        goto LABEL_81;
      }

      v33 = [v7 shouldShowSiriRecognitionLanguageSetup];
      goto LABEL_59;
    case 42:
      if (![(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:v6])
      {
        goto LABEL_81;
      }

      v33 = [v7 shouldShowVoiceSelectionSetup];
LABEL_59:
      v8 = v33 ^ 1;
      break;
    case 43:
      v20 = [(HSSetupStateMachine *)self _shouldSkipSiriUpdateRequiredStep:v6];
      goto LABEL_76;
    case 44:
      v20 = [(HSSetupStateMachine *)self _shouldSkipSiriVoiceRecognitionStep:v6];
      goto LABEL_76;
    case 45:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipSetupSiriStep:v6];
      goto LABEL_76;
    case 46:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipSiriVoiceTrainingStep:v6];
      goto LABEL_76;
    case 47:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipPersonalRequestsStep:v6];
      goto LABEL_76;
    case 48:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipSiriForEveryoneStep:v6];
      goto LABEL_76;
    case 49:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipUseAirPlayStep:v6];
      goto LABEL_76;
    case 50:
      v13 = [v6 delegate];
      v19 = [v13 stateMachineConfigurationShouldSkipBridgeAddedStep:v7];
      goto LABEL_72;
    case 51:
      v13 = [v6 delegate];
      v21 = [v13 stateMachineConfigurationShouldSetupBridgedAccessories:v7];
      goto LABEL_46;
    case 52:
      v20 = [(HSSetupStateMachine *)self _shouldSkipSafetyAndSecurityStep:v6];
      goto LABEL_76;
    case 53:
      v20 = [(HSSetupStateMachine *)self _shouldSkipRestrictedGuestAccessStep:v6];
LABEL_76:
      v8 = v20;
      break;
    case 54:
      v13 = [v6 delegate];
      v21 = [v13 stateMachineConfigurationShouldSetupRouters:v7];
LABEL_46:
      v8 = v21 ^ 1;
      goto LABEL_84;
    case 55:
      v13 = [v6 delegate];
      v19 = [v13 stateMachineConfigurationShouldSkipAccessoryUpdateStep:v7];
      goto LABEL_72;
    case 56:
      v13 = +[HFHomeKitDispatcher sharedDispatcher];
      v18 = [v13 homeManager];
      v8 = [v18 hf_containsAtLeastOneHomeThatRequiresUpdate] ^ 1;
      goto LABEL_83;
    case 57:
      v13 = [v6 delegate];
      v19 = [v13 stateMachineConfigurationShouldSkipDoneStep:v7];
LABEL_72:
      v8 = v19;
LABEL_84:

      break;
    default:
      break;
  }

  return v8 & 1;
}

- (BOOL)stepRequiresDismissalConfirmation:(int64_t)a3 withCoordinator:(id)a4 configuration:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 > 0x3A)
  {
    goto LABEL_8;
  }

  if (((1 << a3) & 0x50000000000021ELL) == 0)
  {
    if (((1 << a3) & 0x21) != 0)
    {
      v11 = [v8 addedAccessory];
      v10 = v11 != 0;

      goto LABEL_9;
    }

    if (a3 == 57)
    {
      v12 = [v7 activeTuple];
      v13 = [v12 accessory];
      v14 = [v7 allAccessories];
      v15 = [v14 lastObject];
      v10 = v13 != v15;

      goto LABEL_9;
    }

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)stepRequiresIdentifyButton:(int64_t)a3 withCoordinator:(id)a4 configuration:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 > 0x1C)
  {
    goto LABEL_7;
  }

  if (((1 << a3) & 0x1000B000) == 0)
  {
    if (a3 == 5)
    {
      v12 = [v8 addedAccessory];
      v10 = v12 != 0;

      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_4;
  }

  v10 = 1;
LABEL_4:

  return v10;
}

- (BOOL)_shouldSkipSafetyAndSecurityStep:(id)a3
{
  v5 = a3;
  v6 = [v5 delegate];
  v7 = [v6 stateMachineConfigurationGetLaunchReason:v5];

  if (v7 == 2 && ([v5 addedAccessory], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hf_isAudioAnalysisSupportedDevice"), v8, v9))
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Showing Safety and Security card based on launch reason AND added accessory supports Audio Analysis", &v14, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_shouldSkipRestrictedGuestAccessStep:(id)a3
{
  v5 = a3;
  v6 = [v5 addedAccessory];
  if (([v6 hf_isRestrictedGuestAllowedAccessory] & 1) == 0)
  {

    goto LABEL_7;
  }

  v7 = [v5 home];
  v8 = [v7 hf_hasAtLeastOneRestrictedGuest];

  if (!v8)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Showing Restricted Guest access card based on the added accessory being a supported accessory AND at least one RG already existing in the home.", &v13, 0x16u);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)_shouldSkipUseSiriStep:(id)a3
{
  v5 = a3;
  v6 = [v5 addedAccessory];
  v7 = [v6 hf_siriEndpointProfile];

  if (v7)
  {
    v8 = [v5 addedAccessory];
    v9 = [v8 home];
    v10 = [v9 hf_hasHomePods] ^ 1;
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v13 = [v5 addedAccessory];
      v15 = 138412802;
      v16 = self;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Siri endpoint profile does not exist. Added accessory is %@", &v15, 0x20u);
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)_shouldSkipSiriUpdateRequiredStep:(id)a3
{
  v4 = a3;
  v5 = [v4 addedAccessory];
  v6 = [v5 hf_siriEndpointProfile];

  if (v6 && ([v4 addedAccessory], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "home"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hf_hasHomePods"), v8, v7, v9) && !-[HSSetupStateMachine _shouldSkipUseSiriFlow:](self, "_shouldSkipUseSiriFlow:", v4))
  {
    v10 = [v6 supportsOnboarding];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_shouldSkipSiriVoiceRecognitionStep:(id)a3
{
  v4 = a3;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:v4]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:v4]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    v5 = [(HSSetupStateMachine *)self _isVoiceRecognitionEnabled:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_sync_shouldSkipSetupSiriStep:(id)a3
{
  v4 = a3;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:v4]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:v4]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    v5 = [v4 shouldSkipVoiceProfileSetup];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_sync_shouldSkipSiriVoiceTrainingStep:(id)a3
{
  v4 = a3;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:v4]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:v4]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    v5 = [v4 shouldSkipVoiceProfileSetup];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_sync_shouldSkipPersonalRequestsStep:(id)a3
{
  v4 = a3;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:v4]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:v4]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    v5 = [v4 shouldSkipVoiceProfileSetup];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_sync_shouldSkipSiriForEveryoneStep:(id)a3
{
  v4 = a3;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:v4]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:v4]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    v5 = [v4 home];
    v6 = [v5 isMultiUserEnabled];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_shouldShowSiriEndpointStep:(id)a3
{
  v3 = a3;
  v4 = [v3 addedAccessory];
  v5 = [v4 hf_siriEndpointProfile];

  if (v5 && [v5 supportsOnboarding])
  {
    v6 = [v3 addedAccessory];
    v7 = [v6 home];
    v8 = [v7 hf_hasHomePods];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isVoiceRecognitionEnabled:(id)a3
{
  v5 = a3;
  v6 = [HFUserItem alloc];
  v7 = [v5 home];
  v8 = [v5 home];

  v9 = [v8 currentUser];
  v10 = [v6 initWithHome:v7 user:v9 nameStyle:0];

  v11 = [v10 isIdentifyVoiceEnabled];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v15 = 138412802;
    v16 = self;
    v17 = 2112;
    v18 = v13;
    v19 = 1024;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Is voice recognition enabled? %{BOOL}d", &v15, 0x1Cu);
  }

  return v11;
}

- (BOOL)_shouldSkipUseSiriFlow:(id)a3
{
  v3 = a3;
  v4 = [v3 onboardingSelections];
  if (v4)
  {
    v5 = [v3 onboardingSelections];
    v6 = [v5 allowHeySiri] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_deviceIsOnAMultiUserLanguage
{
  v3 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
  if (v3)
  {
    v4 = [HUHomeFeatureOnboardingUtilities isDeviceUsingASupportedVoiceRecognitionSiriLanguage:v3 shouldFallbackToBestSupportedLanguage:1];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100077970(a2);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_voiceProfileCheckFuture
{
  v4 = [HUHomeFeatureOnboardingUtilities checkVoiceProfileAvailabiltyForLanguage:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EB18;
  v8[3] = &unk_1000C5AD8;
  v8[4] = self;
  v8[5] = a2;
  v5 = [v4 flatMap:v8];
  v6 = [v5 recover:&stru_1000C5C78];

  return v6;
}

- (BOOL)_shouldSkipAdaptiveTempStep:(int64_t)a3 forConfig:(id)a4
{
  v5 = a4;
  if (_os_feature_enabled_impl())
  {
    v6 = [v5 home];
    v7 = v6;
    if (v6)
    {
      if (([v6 hf_hasResidentCapableOfSupportingHomeActivityState]& 1) != 0)
      {
        v8 = [v7 isAllowedToEnableAdaptiveTemperatureAutomations];
        v9 = v8;
        if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x12)
        {
          if (v8)
          {
            v10 = [v5 addedAccessory];
            v11 = [v10 supportsAdaptiveTemperatureAutomations];

            if ((v11 & 1) == 0)
            {
              v19 = HFLogForCategory();
              if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_23;
              }

              v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
              v29 = [v5 addedAccessory];
              v30 = [v5 addedAccessory];
              v32 = 136315906;
              v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
              v34 = 2112;
              v35 = v22;
              v36 = 2112;
              *v37 = v29;
              *&v37[8] = 1024;
              v38 = [v30 supportsAdaptiveTemperatureAutomations];
              goto LABEL_38;
            }

            if (a3 != 19 || ([v5 addedAccessory], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hf_shouldShowPresetConfiguration"), v12, (v13 & 1) != 0))
            {
              v14 = [v5 addedAccessory];
              v15 = [v14 hasOnboardedForAdaptiveTemperatureAutomations];

              if (v15)
              {
                v16 = HFLogForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
                  v18 = [v5 addedAccessory];
                  v32 = 136315650;
                  v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
                  v34 = 2112;
                  v35 = v17;
                  v36 = 2112;
                  *v37 = v18;
                }

                v19 = [NAFuture futureWithResult:&__kCFBooleanTrue];
                v20 = v19 != 0;
                goto LABEL_24;
              }

LABEL_31:
              v20 = 0;
              goto LABEL_25;
            }

            v19 = HFLogForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:19];
              v29 = [v5 addedAccessory];
              v30 = [v5 addedAccessory];
              v32 = 136315906;
              v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
              v34 = 2112;
              v35 = v22;
              v36 = 2112;
              *v37 = v29;
              *&v37[8] = 1024;
              v38 = [v30 hf_shouldShowPresetConfiguration];
              v31 = "(%s) Skipping %@ because accessory %@ does not have presets, hf_shouldShowPresetConfiguration = %d";
LABEL_38:
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v31, &v32, 0x26u);

              goto LABEL_22;
            }

            goto LABEL_23;
          }

          v19 = HFLogForCategory();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
          v32 = 136315650;
          v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
          v34 = 2112;
          v35 = v22;
          v36 = 1024;
          *v37 = [v7 isAllowedToEnableAdaptiveTemperatureAutomations];
          v23 = "(%s) Skipping %@ because the home is not allowed to enable Adaptive Temperature, isAllowedToEnableAdaptiveTemperatureAutomations = %d";
          v24 = v19;
          v25 = 28;
        }

        else
        {
          if (a3 != 17)
          {
            goto LABEL_31;
          }

          v27 = [v5 addedAccessory];
          v28 = [v27 supportsAdaptiveTemperatureAutomations];

          if ((v28 & 1) == 0)
          {
            v19 = HFLogForCategory();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_23;
            }

            v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:17];
            v29 = [v5 addedAccessory];
            v30 = [v5 addedAccessory];
            v32 = 136315906;
            v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
            v34 = 2112;
            v35 = v22;
            v36 = 2112;
            *v37 = v29;
            *&v37[8] = 1024;
            v38 = [v30 supportsAdaptiveTemperatureAutomations];
            goto LABEL_38;
          }

          if (!v9)
          {
            goto LABEL_31;
          }

          v19 = HFLogForCategory();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
LABEL_23:
            v20 = 1;
LABEL_24:

            goto LABEL_25;
          }

          v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:17];
          v32 = 136315906;
          v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
          v34 = 2112;
          v35 = v22;
          v36 = 1024;
          *v37 = [v7 isAllowedToEnableAdaptiveTemperatureAutomations];
          *&v37[4] = 1024;
          *&v37[6] = 0;
          v23 = "(%s) Skipping %@ because isAllowedToEnableAdaptiveTemperatureAutomations = %d, HM_FEATURE_ICICLE_DRIP_ENABLED = %d";
          v24 = v19;
          v25 = 34;
        }

LABEL_21:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v32, v25);
LABEL_22:

        goto LABEL_23;
      }

      v19 = HFLogForCategory();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
      v32 = 136315650;
      v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      *v37 = v7;
      v23 = "(%s) Skipping %@ because home %@ does not have any residents capable of supporting home activity state.";
    }

    else
    {
      v19 = HFLogForCategory();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
      v32 = 136315650;
      v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      *v37 = v5;
      v23 = "(%s) Skipping %@ because config %@ has no home.";
    }

    v24 = v19;
    v25 = 32;
    goto LABEL_21;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
    v32 = 136315394;
    v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
    v34 = 2112;
    v35 = v21;
  }

  v20 = 1;
LABEL_25:

  return v20;
}

- (BOOL)_shouldSkipCleanEnergyStep:(int64_t)a3 forConfig:(id)a4
{
  v5 = a4;
  if (_os_feature_enabled_impl())
  {
    v6 = [v5 home];
    v7 = v6;
    if (v6)
    {
      if (([v6 hf_hasResidentCapableOfSupportingHomeActivityState]& 1) != 0)
      {
        v8 = [v5 addedAccessory];
        v9 = [v8 supportsCleanEnergyAutomation];

        if (v9)
        {
          if (([v7 hf_isGridForecastSupported]& 1) != 0)
          {
            v10 = [v5 addedAccessory];
            v11 = [v10 hasOnboardedForCleanEnergyAutomation];

            if (!v11)
            {
              v18 = 0;
              goto LABEL_25;
            }

            v12 = HFLogForCategory();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_23;
            }

            v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
            v14 = [v5 addedAccessory];
            v20 = 136315650;
            v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            goto LABEL_20;
          }

          v12 = HFLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
            v14 = [v5 addedAccessory];
            v20 = 136315650;
            v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            v15 = "(%s) Skipping %@ for accessory %@ because grid forecast is not supported in home region.";
LABEL_20:
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v15, &v20, 0x20u);
            goto LABEL_21;
          }
        }

        else
        {
          v12 = HFLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
            v14 = [v5 addedAccessory];
            v17 = [v5 addedAccessory];
            v20 = 136315906;
            v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            v26 = 1024;
            v27 = [v17 supportsCleanEnergyAutomation];

LABEL_21:
            goto LABEL_22;
          }
        }

LABEL_23:

        goto LABEL_24;
      }

      v12 = HFLogForCategory();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
      v20 = 136315650;
      v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v7;
      v16 = "(%s) Skipping %@ because home %@ does not have any residents capable of supporting home activity state.";
    }

    else
    {
      v12 = HFLogForCategory();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
      v20 = 136315650;
      v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v5;
      v16 = "(%s) Skipping %@ because config %@ has no home.";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v16, &v20, 0x20u);
LABEL_22:

    goto LABEL_23;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
    v20 = 136315394;
    v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
    v22 = 2112;
    v23 = v12;
    goto LABEL_23;
  }

LABEL_24:
  v18 = 1;
LABEL_25:

  return v18;
}

@end