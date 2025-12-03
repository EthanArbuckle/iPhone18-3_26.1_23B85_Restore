@interface HSSetupStateMachine
- (BOOL)_deviceIsOnAMultiUserLanguage;
- (BOOL)_isVoiceRecognitionEnabled:(id)enabled;
- (BOOL)_shouldShowSiriEndpointStep:(id)step;
- (BOOL)_shouldSkipAdaptiveTempStep:(int64_t)step forConfig:(id)config;
- (BOOL)_shouldSkipCleanEnergyStep:(int64_t)step forConfig:(id)config;
- (BOOL)_shouldSkipRestrictedGuestAccessStep:(id)step;
- (BOOL)_shouldSkipSafetyAndSecurityStep:(id)step;
- (BOOL)_shouldSkipSiriUpdateRequiredStep:(id)step;
- (BOOL)_shouldSkipSiriVoiceRecognitionStep:(id)step;
- (BOOL)_shouldSkipUseSiriFlow:(id)flow;
- (BOOL)_shouldSkipUseSiriStep:(id)step;
- (BOOL)_sync_shouldSkipPersonalRequestsStep:(id)step;
- (BOOL)_sync_shouldSkipSetupSiriStep:(id)step;
- (BOOL)_sync_shouldSkipSiriForEveryoneStep:(id)step;
- (BOOL)_sync_shouldSkipSiriVoiceTrainingStep:(id)step;
- (BOOL)_sync_shouldSkipStep:(int64_t)step withConfiguration:(id)configuration;
- (BOOL)configSupportsPairing:(id)pairing;
- (BOOL)stepRequiresDismissalConfirmation:(int64_t)confirmation withCoordinator:(id)coordinator configuration:(id)configuration;
- (BOOL)stepRequiresIdentifyButton:(int64_t)button withCoordinator:(id)coordinator configuration:(id)configuration;
- (id)_voiceProfileCheckFuture;
- (id)shouldSkipStep:(int64_t)step withConfiguration:(id)configuration;
- (int64_t)stepFollowingStep:(int64_t)step withConfiguration:(id)configuration;
@end

@implementation HSSetupStateMachine

- (BOOL)configSupportsPairing:(id)pairing
{
  pairingCopy = pairing;
  delegate = [pairingCopy delegate];
  v5 = [delegate stateMachineConfigurationGetLaunchReason:pairingCopy];

  home = [pairingCopy home];

  if (home)
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

- (int64_t)stepFollowingStep:(int64_t)step withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configurationObjectClass = [(HSSetupStateMachine *)self configurationObjectClass];
  v9 = configurationCopy;
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
      sub_1000774F0(v9, configurationObjectClass);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HSSetupStateMachine *)self configSupportsPairing:v11];
  if (step >= 7 && v12)
  {
    [v11 setIsReadyToPair:1];
  }

  pairingError = [v11 pairingError];

  if (pairingError)
  {
LABEL_12:
    v14 = 58;
    goto LABEL_13;
  }

  delegate = [v11 delegate];
  v17 = [delegate stateMachineConfigurationGetLaunchReason:v11];

  v14 = 3;
  switch(step)
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
            delegate2 = [v11 delegate];
            v39 = [delegate2 stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:v11];

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
          delegate3 = [v11 delegate];
          v37 = [delegate3 stateMachineConfigurationIsLaunchedToSetupSpecificAccessory:v11];

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
      setupDescription = [v11 setupDescription];
      setupAccessoryPayload = [setupDescription setupAccessoryPayload];

      if (setupAccessoryPayload)
      {
        v14 = 5;
      }

      else
      {
        delegate4 = [v11 delegate];
        v32 = [delegate4 stateMachineConfigurationGetDiscoveredAccessory:v11];

        delegate5 = [v11 delegate];
        v34 = [delegate5 stateMachineConfigurationGetSetupCode:v11];

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
      homeManager = [v28 homeManager];
      hf_containsAtLeastOneHomeThatRequiresUpdate = [homeManager hf_containsAtLeastOneHomeThatRequiresUpdate];

      v20 = hf_containsAtLeastOneHomeThatRequiresUpdate == 0;
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
      delegate6 = [v11 delegate];
      v19 = [delegate6 stateMachineConfigurationShouldJumpToDoneStep:v11];

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
      addedAccessory = [v11 addedAccessory];
      pendingConfigurationIdentifier = [addedAccessory pendingConfigurationIdentifier];

      v14 = [HSSetupContentProvider hsProxCardSetupUIStepForString:pendingConfigurationIdentifier];
      if (v14 <= 12)
      {
        addedAccessory2 = [v11 addedAccessory];

        if (!addedAccessory2)
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

- (id)shouldSkipStep:(int64_t)step withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  delegate = [configurationCopy delegate];
  v8 = [delegate stateMachineConfigurationIsLaunchedToSetupSpecificAccessory:configurationCopy];

  if (v8)
  {
    if (step > 7)
    {
      v11 = 0;
      if (step == 8 || step == 58)
      {
        goto LABEL_11;
      }
    }

    else if (step == 1 || step == 4)
    {
      delegate2 = [configurationCopy delegate];
      v10 = [delegate2 stateMachineConfigurationGetSetupCode:configurationCopy];
      v11 = [v10 length] != 0;

LABEL_11:
      delegate3 = [NSNumber numberWithBool:v11];
      v15 = [NAFuture futureWithResult:delegate3];
LABEL_12:
      v14 = v15;
      goto LABEL_13;
    }

    v11 = 1;
    goto LABEL_11;
  }

  if (step == 11)
  {
    delegate3 = [configurationCopy delegate];
    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [delegate3 stateMachineConfigurationShouldSkipResumeSelectAccessoryStep:configurationCopy]);
    v14 = [NAFuture futureWithResult:v13];

LABEL_13:
    goto LABEL_14;
  }

  delegate4 = [configurationCopy delegate];
  v18 = [delegate4 stateMachineConfigurationGetLaunchReason:configurationCopy];

  addedAccessory = [configurationCopy addedAccessory];
  if ([addedAccessory hf_isNetworkRouter])
  {
    delegate5 = [configurationCopy delegate];
    stateMachineConfigurationActiveTupleIsTopTuple = [delegate5 stateMachineConfigurationActiveTupleIsTopTuple];

    if (stateMachineConfigurationActiveTupleIsTopTuple)
    {
      v23 = step > 8 && step != 51;
      v24 = [NSNumber numberWithInt:v23];
      v14 = [NAFuture futureWithResult:v24];

      goto LABEL_14;
    }
  }

  else
  {
  }

  if (step > 21)
  {
    if (step > 24)
    {
      if (step <= 44)
      {
        if (step != 25)
        {
          if (step == 27)
          {
            if ((+[HFUtilities isUsingiCloud]& 1) != 0)
            {
              addedAccessory2 = [configurationCopy addedAccessory];
              home = [configurationCopy home];
              hf_currentUserIsOwner = [home hf_currentUserIsOwner];

              home2 = [configurationCopy home];
              hf_hasHomeHubSupportingAccessCodes = [home2 hf_hasHomeHubSupportingAccessCodes];

              if ([addedAccessory2 supportsAccessCodes] && ((hf_currentUserIsOwner | hf_hasHomeHubSupportingAccessCodes) & 1) != 0)
              {
                v30 = +[HFHomeKitDispatcher sharedDispatcher];
                home3 = [configurationCopy home];
                v32 = [v30 pinCodeManagerForHome:home3];

                objc_initWeak(location, self);
                guestPinCodes = [v32 guestPinCodes];
                v141[0] = _NSConcreteStackBlock;
                v141[1] = 3221225472;
                v141[2] = sub_10000D10C;
                v141[3] = &unk_1000C5BC8;
                objc_copyWeak(&v142, location);
                v34 = [guestPinCodes flatMap:v141];
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
                  v163 = addedAccessory2;
                  v164 = 1024;
                  *v165 = [addedAccessory2 supportsAccessCodes];
                  *&v165[4] = 1024;
                  *&v165[6] = hf_currentUserIsOwner;
                  LOWORD(v166) = 1024;
                  *(&v166 + 2) = hf_hasHomeHubSupportingAccessCodes & 1;
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
          delegate3 = [NSNumber numberWithBool:[(HSSetupStateMachine *)self _sync_shouldSkipStep:step withConfiguration:configurationCopy]];
          v15 = [NAFuture futureWithResult:delegate3];
          goto LABEL_12;
        }

        addedAccessory3 = [configurationCopy addedAccessory];
        supportsAccessCodes = [addedAccessory3 supportsAccessCodes];

        if (supportsAccessCodes)
        {
          if ((+[HFUtilities isUsingiCloud]& 1) != 0)
          {
            home4 = [configurationCopy home];
            v44 = +[HFHomeKitDispatcher sharedDispatcher];
            v45 = [v44 pinCodeManagerForHome:home4];

            objc_initWeak(location, self);
            hasValidConstraints = [v45 hasValidConstraints];
            v143[0] = _NSConcreteStackBlock;
            v143[1] = 3221225472;
            v143[2] = sub_10000CF0C;
            v143[3] = &unk_1000C5BA0;
            objc_copyWeak(&v146, location);
            v47 = home4;
            v144 = v47;
            v145 = configurationCopy;
            v14 = [hasValidConstraints flatMap:v143];

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

      if (step == 46)
      {
        if ([(HSSetupStateMachine *)self _sync_shouldSkipSiriVoiceTrainingStep:configurationCopy])
        {
LABEL_52:
          [NAFuture futureWithResult:&__kCFBooleanTrue];
          v35 = LABEL_53:;
          goto LABEL_154;
        }
      }

      else
      {
        if (step != 45)
        {
          goto LABEL_80;
        }

        if ([(HSSetupStateMachine *)self _sync_shouldSkipSetupSiriStep:configurationCopy])
        {
          goto LABEL_52;
        }
      }

      [(HSSetupStateMachine *)self _voiceProfileCheckFuture];
      goto LABEL_53;
    }

    if (step != 22)
    {
      if (step != 23)
      {
        if ((+[HFUtilities isUsingiCloud]& 1) == 0 && !v18)
        {
LABEL_44:
          v35 = [NAFuture futureWithResult:&__kCFBooleanTrue];
LABEL_154:
          v14 = v35;
          goto LABEL_14;
        }

        home5 = [configurationCopy home];
        hf_currentUserIsOwner2 = [home5 hf_currentUserIsOwner];

        home6 = [configurationCopy home];
        hf_hasHomeHubSupportingAccessCodes2 = [home6 hf_hasHomeHubSupportingAccessCodes];

        addedAccessory4 = [configurationCopy addedAccessory];
        supportsAccessCodes2 = [addedAccessory4 supportsAccessCodes];

        v75 = HFLogForCategory();
        v76 = supportsAccessCodes2 & (hf_currentUserIsOwner2 | hf_hasHomeHubSupportingAccessCodes2);
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

          addedAccessory5 = [configurationCopy addedAccessory];
          *location = 138413570;
          *&location[4] = self;
          v160 = 2080;
          v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
          v162 = 2112;
          v163 = v77;
          v164 = 1024;
          *v165 = [addedAccessory5 supportsAccessCodes];
          *&v165[4] = 1024;
          *&v165[6] = hf_currentUserIsOwner2;
          LOWORD(v166) = 1024;
          *(&v166 + 2) = hf_hasHomeHubSupportingAccessCodes2;
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

      home7 = [configurationCopy home];

      if (home7)
      {
        if ((+[HFUtilities isUsingiCloud]& 1) != 0)
        {
          home8 = [configurationCopy home];
          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 = [home8 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];
          v147[0] = _NSConcreteStackBlock;
          v147[1] = 3221225472;
          v147[2] = sub_10000C7A8;
          v147[3] = &unk_1000C5AD8;
          v148 = configurationCopy;
          v149 = v18;
          v14 = [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 flatMap:v147];

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
        v161 = configurationCopy;
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

    home9 = [configurationCopy home];
    if (home9)
    {
      addedAccessory6 = [configurationCopy addedAccessory];
      supportsUWBUnlock = [addedAccessory6 supportsUWBUnlock];

      v51 = HFLogForCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:22];
        addedAccessory7 = [configurationCopy addedAccessory];
        v54 = addedAccessory7;
        v55 = @"doesn't support";
        *location = 136316162;
        *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
        if (supportsUWBUnlock)
        {
          v55 = @"supports";
        }

        v56 = @"Skipping UWB prox card.";
        if (supportsUWBUnlock)
        {
          v56 = &stru_1000C89F8;
        }

        v160 = 2112;
        v161 = v52;
        v162 = 2112;
        v163 = addedAccessory7;
        v164 = 2112;
        *v165 = v55;
        *&v165[8] = 2112;
        v166 = v56;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "(%s) step = %@. %@ %@ UWB unlock. %@", location, 0x34u);
      }

      if ((supportsUWBUnlock & 1) == 0)
      {
        v121 = [NSNumber numberWithInt:1];
        v14 = [NAFuture futureWithResult:v121];

        goto LABEL_159;
      }

      if ((+[HFUtilities isAnIPhone]& 1) != 0)
      {
        if ((MGGetBoolAnswer() & 1) != 0 || (+[HFUtilities isInternalTest]& 1) != 0)
        {
          home10 = [configurationCopy home];
          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2 = [home10 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];
          v153[0] = _NSConcreteStackBlock;
          v153[1] = 3221225472;
          v153[2] = sub_10000C1BC;
          v153[3] = &unk_1000C5B50;
          v156 = 22;
          v59 = configurationCopy;
          v157 = v18;
          v154 = v59;
          selfCopy = self;
          v60 = [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2 flatMap:v153];
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
        v163 = configurationCopy;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "(%s) Skipping %@ because config %@ has no home.", location, 0x20u);
      }
    }

    v14 = [NAFuture futureWithResult:&__kCFBooleanTrue];
    goto LABEL_159;
  }

  if (step > 19)
  {
    if (step == 20)
    {
      if (![(HSSetupStateMachine *)self _shouldSkipCleanEnergyStep:20 forConfig:configurationCopy])
      {
        goto LABEL_80;
      }

      goto LABEL_44;
    }

    home11 = [configurationCopy home];
    hf_currentUserIsOwner3 = [home11 hf_currentUserIsOwner];
    hf_currentUserIsAdministrator = [home11 hf_currentUserIsAdministrator];
    hf_hasHomeHubSupportingWalletKey = [home11 hf_hasHomeHubSupportingWalletKey];
    addedAccessory8 = [configurationCopy addedAccessory];
    supportsWalletKey = [addedAccessory8 supportsWalletKey];
    if (!(hf_currentUserIsOwner3 & 1 | ((supportsWalletKey & 1) == 0)))
    {
      if (hf_hasHomeHubSupportingWalletKey & hf_currentUserIsAdministrator)
      {
        supportsWalletKey = 1;
      }

      else
      {
        supportsWalletKey = [home11 hasOnboardedForWalletKey];
      }
    }

    v81 = HFLogForCategory();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v131 = [objc_opt_class() description];
      if (supportsWalletKey)
      {
        v82 = @"Not Skipping";
      }

      else
      {
        v82 = @"Skipping";
      }

      v83 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:21];
      addedAccessory9 = [configurationCopy addedAccessory];
      addedAccessory10 = [configurationCopy addedAccessory];
      supportsWalletKey2 = [addedAccessory10 supportsWalletKey];
      *location = 138414338;
      v87 = @"doesn't support";
      v160 = 2080;
      v161 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
      *&location[4] = v131;
      v162 = 2112;
      if (supportsWalletKey2)
      {
        v87 = @"supports";
      }

      v163 = v82;
      v164 = 2112;
      *v165 = v83;
      *&v165[8] = 2112;
      v166 = addedAccessory9;
      v167 = 2112;
      v168 = v87;
      v169 = 1024;
      *v170 = hf_currentUserIsOwner3;
      *&v170[4] = 1024;
      *&v170[6] = hf_currentUserIsAdministrator;
      LOWORD(v171) = 1024;
      *(&v171 + 2) = hf_hasHomeHubSupportingWalletKey;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ %@ because %@ %@ wallet key. isOwner: %{BOOL}d  isAdmin: %{BOOL}d  home hub supports wallet key:(%{BOOL}d)", location, 0x50u);
    }

    if (supportsWalletKey)
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
        hf_hasWalletKeyCompatibleDevice = [home11 hf_hasWalletKeyCompatibleDevice];
        v158[0] = _NSConcreteStackBlock;
        v158[1] = 3221225472;
        v158[2] = sub_10000C010;
        v158[3] = &unk_1000C5AD8;
        v158[4] = self;
        v158[5] = 21;
        v14 = [hf_hasWalletKeyCompatibleDevice flatMap:v158];
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
    if ((step - 17) < 3)
    {
      if (![(HSSetupStateMachine *)self _shouldSkipAdaptiveTempStep:step forConfig:configurationCopy])
      {
        goto LABEL_80;
      }

      goto LABEL_44;
    }

    if (step != 16)
    {
      goto LABEL_80;
    }

    home12 = [configurationCopy home];
    hf_currentUserIsAdministrator2 = [home12 hf_currentUserIsAdministrator];
    if ([home12 hasOnboardedForWalletKey])
    {
      hf_currentUserIsOwner4 = 0;
    }

    else
    {
      hf_walletKeyAccessories = [home12 hf_walletKeyAccessories];
      if ([hf_walletKeyAccessories count])
      {
        if (hf_currentUserIsAdministrator2 && ([home12 hf_hasHomeHubSupportingWalletKey] & 1) != 0)
        {
          hf_currentUserIsOwner4 = 1;
        }

        else
        {
          hf_currentUserIsOwner4 = [home12 hf_currentUserIsOwner];
        }
      }

      else
      {
        hf_currentUserIsOwner4 = 0;
      }
    }

    v97 = HFLogForCategory();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v127 = NSStringFromBOOL();
      name = [home12 name];
      uniqueIdentifier = [home12 uniqueIdentifier];
      [home12 hasOnboardedForWalletKey];
      v125 = NSStringFromBOOL();
      hf_walletKeyAccessories2 = [home12 hf_walletKeyAccessories];
      v99 = [hf_walletKeyAccessories2 count];
      hf_walletKeyAccessories3 = [home12 hf_walletKeyAccessories];
      v101 = [HMAccessory hf_minimumDescriptionsOfAccessories:hf_walletKeyAccessories3];
      [home12 hf_hasHomeHubSupportingWalletKey];
      v102 = NSStringFromBOOL();
      currentUser = [home12 currentUser];
      hf_prettyDescription = [currentUser hf_prettyDescription];
      *location = 136317186;
      *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
      v160 = 2112;
      v161 = v127;
      v162 = 2112;
      v163 = name;
      v164 = 2112;
      *v165 = uniqueIdentifier;
      *&v165[8] = 2112;
      v166 = v125;
      v167 = 2048;
      v168 = v99;
      v169 = 2112;
      *v170 = v101;
      *&v170[8] = 2112;
      v171 = v102;
      v172 = 2112;
      v173 = hf_prettyDescription;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "(%s) showWalletKeyFeature = %@ | home <Name: %@, uniqueIdentifier: %@> | hasOnboardedForWalletKey = %@ | walletKeyAccessories (%ld) %@ | hasHomeHubSupportingWalletKey %@ | user %@", location, 0x5Cu);
    }

    if ([home12 hasOnboardedForAccessCode])
    {
      hf_currentUserIsOwner5 = 0;
    }

    else
    {
      hf_accessoriesSupportingAccessCodes = [home12 hf_accessoriesSupportingAccessCodes];
      if ([hf_accessoriesSupportingAccessCodes count])
      {
        if (hf_currentUserIsAdministrator2 && ([home12 hf_hasHomeHubSupportingAccessCodes] & 1) != 0)
        {
          hf_currentUserIsOwner5 = 1;
        }

        else
        {
          hf_currentUserIsOwner5 = [home12 hf_currentUserIsOwner];
        }
      }

      else
      {
        hf_currentUserIsOwner5 = 0;
      }
    }

    v106 = HFLogForCategory();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v128 = NSStringFromBOOL();
      name2 = [home12 name];
      uniqueIdentifier2 = [home12 uniqueIdentifier];
      [home12 hasOnboardedForAccessCode];
      v126 = NSStringFromBOOL();
      hf_accessoriesSupportingAccessCodes2 = [home12 hf_accessoriesSupportingAccessCodes];
      v108 = [hf_accessoriesSupportingAccessCodes2 count];
      hf_accessoriesSupportingAccessCodes3 = [home12 hf_accessoriesSupportingAccessCodes];
      v110 = [HMAccessory hf_minimumDescriptionsOfAccessories:hf_accessoriesSupportingAccessCodes3];
      [home12 hf_hasHomeHubSupportingAccessCodes];
      v111 = NSStringFromBOOL();
      currentUser2 = [home12 currentUser];
      hf_prettyDescription2 = [currentUser2 hf_prettyDescription];
      *location = 136317186;
      *&location[4] = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]";
      v160 = 2112;
      v161 = v128;
      v162 = 2112;
      v163 = name2;
      v164 = 2112;
      *v165 = uniqueIdentifier2;
      *&v165[8] = 2112;
      v166 = v126;
      v167 = 2048;
      v168 = v108;
      v169 = 2112;
      *v170 = v110;
      *&v170[8] = 2112;
      v171 = v111;
      v172 = 2112;
      v173 = hf_prettyDescription2;
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

    v119 = [NSNumber numberWithInt:((hf_currentUserIsOwner4 | hf_currentUserIsOwner5) & 1) == 0];
    v14 = [NAFuture futureWithResult:v119];
  }

LABEL_14:

  return v14;
}

- (BOOL)_sync_shouldSkipStep:(int64_t)step withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = configurationCopy;
  v8 = 0;
  switch(step)
  {
    case 1:
    case 4:
      setupDescription = [configurationCopy setupDescription];
      setupAccessoryPayload = [setupDescription setupAccessoryPayload];

      if (setupAccessoryPayload)
      {
        goto LABEL_81;
      }

      delegate = [v7 delegate];
      delegate4 = [delegate stateMachineConfigurationGetDiscoveredAccessory:v7];

      delegate2 = [v7 delegate];
      home6 = [delegate2 stateMachineConfigurationGetSetupCode:v7];

      v8 = delegate4 && ![delegate4 requiresSetupCode] || objc_msgSend(home6, "length") != 0;
      goto LABEL_83;
    case 2:
    case 3:
      setupDescription2 = [configurationCopy setupDescription];
      setupAccessoryPayload2 = [setupDescription2 setupAccessoryPayload];

      if (setupAccessoryPayload2)
      {
        goto LABEL_81;
      }

      delegate3 = [v7 delegate];
      delegate4 = [delegate3 stateMachineConfigurationGetDiscoveredAccessory:v7];

      v8 = delegate4 != 0;
      goto LABEL_84;
    case 5:
      delegate4 = [configurationCopy delegate];
      hf_cameraIsNotSetToRecord2 = [delegate4 stateMachineConfigurationShouldSkipDetectedStep:v7];
      goto LABEL_72;
    case 6:
    case 7:
      home = [configurationCopy home];
      goto LABEL_43;
    case 8:
      home = [configurationCopy addedAccessory];
      goto LABEL_43;
    case 9:
      delegate4 = [configurationCopy delegate];
      hf_cameraIsNotSetToRecord2 = [delegate4 stateMachineConfigurationShouldSkipHomeHubStep:v7];
      goto LABEL_72;
    case 10:
      if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
      {
        goto LABEL_81;
      }

      home2 = [v7 home];
      hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter = [home2 hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter];

      addedAccessory = [v7 addedAccessory];
      requiresThreadRouter = [addedAccessory requiresThreadRouter];

      v38 = HFLogForCategory();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (!requiresThreadRouter || hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter)
      {
        if (v39)
        {
          *buf = 136315650;
          v74 = "[HSSetupStateMachine _sync_shouldSkipStep:withConfiguration:]";
          v75 = 1024;
          *v76 = requiresThreadRouter;
          *&v76[4] = 1024;
          *&v76[6] = hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter;
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
          *v76 = requiresThreadRouter;
          *&v76[4] = 1024;
          *&v76[6] = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s Showing HSProxCardSetupUIThreadRouterWarning - accessoryIsSED: [%d], hasThreadEnabledResident: [%d]", buf, 0x18u);
        }

        v8 = 0;
      }

      break;
    case 14:
      home = [configurationCopy roomName];
LABEL_43:
      v8 = home != 0;

      break;
    case 26:
      v20 = [HSPCNetworkCredentialManagementViewController shouldSkipForConfig:configurationCopy];
      goto LABEL_76;
    case 28:
      addedAccessory2 = [configurationCopy addedAccessory];
      hf_primaryService = [addedAccessory2 hf_primaryService];
      serviceType = [hf_primaryService serviceType];
      v47 = [HFAssociatedServiceTypeFactory associatedServiceTypesSetFor:serviceType];

      addedAccessory3 = [v7 addedAccessory];
      v49 = [HSPCNameServicesViewController applicableServicesForAccessory:addedAccessory3];
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
      addedAccessory4 = [configurationCopy addedAccessory];
      hf_isCamera = [addedAccessory4 hf_isCamera];

      if (!hf_isCamera || ![v7 supportsRichConfiguration])
      {
        goto LABEL_81;
      }

      delegate4 = [v7 home];
      hf_currentUserIsAdministrator = [delegate4 hf_currentUserIsAdministrator];
      goto LABEL_46;
    case 30:
      addedAccessory5 = [configurationCopy addedAccessory];
      hf_isCamera2 = [addedAccessory5 hf_isCamera];

      if (!hf_isCamera2)
      {
        goto LABEL_81;
      }

      home3 = [v7 home];
      hf_allUsersIncludingCurrentUser = [home3 hf_allUsersIncludingCurrentUser];
      v56 = [NSSet setWithArray:hf_allUsersIncludingCurrentUser];

      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_10000DE5C;
      v71[3] = &unk_1000C5C18;
      v57 = v7;
      v72 = v57;
      delegate4 = [v56 na_filter:v71];

      v58 = [delegate4 count];
      cameraProfile = [v57 cameraProfile];
      hf_cameraIsNotSetToRecord = [cameraProfile hf_cameraIsNotSetToRecord];

      v8 = 1;
      if (v58 >= 2 && (hf_cameraIsNotSetToRecord & 1) == 0)
      {
        home4 = [v57 home];
        v8 = [home4 hf_currentUserIsAdministrator] ^ 1;
      }

      v62 = [delegate4 na_map:&stru_1000C5C58];
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
      addedAccessory6 = [configurationCopy addedAccessory];
      hf_isDoorbell = [addedAccessory6 hf_isDoorbell];

      if (!hf_isDoorbell)
      {
        goto LABEL_81;
      }

      delegate4 = [v7 cameraProfile];
      hf_cameraIsNotSetToRecord2 = [delegate4 hf_cameraIsNotSetToRecord];
      goto LABEL_72;
    case 32:
      addedAccessory7 = [configurationCopy addedAccessory];
      hf_isDoorbell2 = [addedAccessory7 hf_isDoorbell];

      if (!hf_isDoorbell2 || [(HSSetupStateMachine *)self _sync_shouldSkipStep:31 withConfiguration:v7])
      {
        goto LABEL_81;
      }

      home5 = [v7 home];
      personManagerSettings = [home5 personManagerSettings];
      isFaceClassificationEnabled = [personManagerSettings isFaceClassificationEnabled];

      v8 = isFaceClassificationEnabled ^ 1;
      break;
    case 33:
      addedAccessory8 = [configurationCopy addedAccessory];
      hf_isDoorbell3 = [addedAccessory8 hf_isDoorbell];

      if (!hf_isDoorbell3)
      {
        goto LABEL_81;
      }

      delegate4 = [v7 addedAccessory];
      home6 = [v7 home];
      v8 = [HSPCChimeViewController shouldSkipForAccessory:delegate4 inHome:home6];
      goto LABEL_83;
    case 35:
      delegate4 = [configurationCopy addedAccessory];
      home6 = [delegate4 category];
      categoryType = [home6 categoryType];
      v8 = [categoryType isEqualToString:HMAccessoryCategoryTypeShowerHead] ^ 1;

      goto LABEL_83;
    case 36:
      delegate4 = [configurationCopy addedAccessory];
      if ([delegate4 hf_isSprinkler])
      {
        home6 = [HSPCNameZonesViewController applicableServicesForAccessory:delegate4];
        v8 = [home6 count] == 0;
LABEL_83:
      }

      else
      {
        v8 = 1;
      }

      goto LABEL_84;
    case 37:
      delegate4 = [configurationCopy addedAccessory];
      hf_isCategorizedAsBridge = [delegate4 hf_isCategorizedAsBridge];
      v23 = [HSPCNameServicesViewController applicableServicesForAccessory:delegate4];
      v24 = [v23 count];

      hf_isProgrammableSwitch = [delegate4 hf_isProgrammableSwitch];
      v26 = v24 < 2;
      if (hf_isCategorizedAsBridge)
      {
        v26 = v24 == 0;
      }

      v8 = v26 | hf_isProgrammableSwitch;
      goto LABEL_84;
    case 39:
      v20 = [(HSSetupStateMachine *)self _shouldSkipUseSiriStep:configurationCopy];
      goto LABEL_76;
    case 40:
      delegate5 = [configurationCopy delegate];
      v43 = [delegate5 stateMachineConfigurationGetLaunchReason:v7];

      if (v43 != 3)
      {
        goto LABEL_81;
      }

      delegate4 = [v7 delegate];
      hf_currentUserIsAdministrator = [delegate4 stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:v7];
      goto LABEL_46;
    case 41:
      if (![(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:configurationCopy])
      {
        goto LABEL_81;
      }

      shouldShowSiriRecognitionLanguageSetup = [v7 shouldShowSiriRecognitionLanguageSetup];
      goto LABEL_59;
    case 42:
      if (![(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:configurationCopy])
      {
        goto LABEL_81;
      }

      shouldShowSiriRecognitionLanguageSetup = [v7 shouldShowVoiceSelectionSetup];
LABEL_59:
      v8 = shouldShowSiriRecognitionLanguageSetup ^ 1;
      break;
    case 43:
      v20 = [(HSSetupStateMachine *)self _shouldSkipSiriUpdateRequiredStep:configurationCopy];
      goto LABEL_76;
    case 44:
      v20 = [(HSSetupStateMachine *)self _shouldSkipSiriVoiceRecognitionStep:configurationCopy];
      goto LABEL_76;
    case 45:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipSetupSiriStep:configurationCopy];
      goto LABEL_76;
    case 46:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipSiriVoiceTrainingStep:configurationCopy];
      goto LABEL_76;
    case 47:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipPersonalRequestsStep:configurationCopy];
      goto LABEL_76;
    case 48:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipSiriForEveryoneStep:configurationCopy];
      goto LABEL_76;
    case 49:
      v20 = [(HSSetupStateMachine *)self _sync_shouldSkipUseAirPlayStep:configurationCopy];
      goto LABEL_76;
    case 50:
      delegate4 = [configurationCopy delegate];
      hf_cameraIsNotSetToRecord2 = [delegate4 stateMachineConfigurationShouldSkipBridgeAddedStep:v7];
      goto LABEL_72;
    case 51:
      delegate4 = [configurationCopy delegate];
      hf_currentUserIsAdministrator = [delegate4 stateMachineConfigurationShouldSetupBridgedAccessories:v7];
      goto LABEL_46;
    case 52:
      v20 = [(HSSetupStateMachine *)self _shouldSkipSafetyAndSecurityStep:configurationCopy];
      goto LABEL_76;
    case 53:
      v20 = [(HSSetupStateMachine *)self _shouldSkipRestrictedGuestAccessStep:configurationCopy];
LABEL_76:
      v8 = v20;
      break;
    case 54:
      delegate4 = [configurationCopy delegate];
      hf_currentUserIsAdministrator = [delegate4 stateMachineConfigurationShouldSetupRouters:v7];
LABEL_46:
      v8 = hf_currentUserIsAdministrator ^ 1;
      goto LABEL_84;
    case 55:
      delegate4 = [configurationCopy delegate];
      hf_cameraIsNotSetToRecord2 = [delegate4 stateMachineConfigurationShouldSkipAccessoryUpdateStep:v7];
      goto LABEL_72;
    case 56:
      delegate4 = +[HFHomeKitDispatcher sharedDispatcher];
      home6 = [delegate4 homeManager];
      v8 = [home6 hf_containsAtLeastOneHomeThatRequiresUpdate] ^ 1;
      goto LABEL_83;
    case 57:
      delegate4 = [configurationCopy delegate];
      hf_cameraIsNotSetToRecord2 = [delegate4 stateMachineConfigurationShouldSkipDoneStep:v7];
LABEL_72:
      v8 = hf_cameraIsNotSetToRecord2;
LABEL_84:

      break;
    default:
      break;
  }

  return v8 & 1;
}

- (BOOL)stepRequiresDismissalConfirmation:(int64_t)confirmation withCoordinator:(id)coordinator configuration:(id)configuration
{
  coordinatorCopy = coordinator;
  configurationCopy = configuration;
  v9 = configurationCopy;
  if (confirmation > 0x3A)
  {
    goto LABEL_8;
  }

  if (((1 << confirmation) & 0x50000000000021ELL) == 0)
  {
    if (((1 << confirmation) & 0x21) != 0)
    {
      addedAccessory = [configurationCopy addedAccessory];
      v10 = addedAccessory != 0;

      goto LABEL_9;
    }

    if (confirmation == 57)
    {
      activeTuple = [coordinatorCopy activeTuple];
      accessory = [activeTuple accessory];
      allAccessories = [coordinatorCopy allAccessories];
      lastObject = [allAccessories lastObject];
      v10 = accessory != lastObject;

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

- (BOOL)stepRequiresIdentifyButton:(int64_t)button withCoordinator:(id)coordinator configuration:(id)configuration
{
  coordinatorCopy = coordinator;
  configurationCopy = configuration;
  v9 = configurationCopy;
  if (button > 0x1C)
  {
    goto LABEL_7;
  }

  if (((1 << button) & 0x1000B000) == 0)
  {
    if (button == 5)
    {
      addedAccessory = [configurationCopy addedAccessory];
      v10 = addedAccessory != 0;

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

- (BOOL)_shouldSkipSafetyAndSecurityStep:(id)step
{
  stepCopy = step;
  delegate = [stepCopy delegate];
  v7 = [delegate stateMachineConfigurationGetLaunchReason:stepCopy];

  if (v7 == 2 && ([stepCopy addedAccessory], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hf_isAudioAnalysisSupportedDevice"), v8, v9))
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v14 = 138412546;
      selfCopy = self;
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

- (BOOL)_shouldSkipRestrictedGuestAccessStep:(id)step
{
  stepCopy = step;
  addedAccessory = [stepCopy addedAccessory];
  if (([addedAccessory hf_isRestrictedGuestAllowedAccessory] & 1) == 0)
  {

    goto LABEL_7;
  }

  home = [stepCopy home];
  hf_hasAtLeastOneRestrictedGuest = [home hf_hasAtLeastOneRestrictedGuest];

  if (!hf_hasAtLeastOneRestrictedGuest)
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
    selfCopy = self;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Showing Restricted Guest access card based on the added accessory being a supported accessory AND at least one RG already existing in the home.", &v13, 0x16u);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)_shouldSkipUseSiriStep:(id)step
{
  stepCopy = step;
  addedAccessory = [stepCopy addedAccessory];
  hf_siriEndpointProfile = [addedAccessory hf_siriEndpointProfile];

  if (hf_siriEndpointProfile)
  {
    addedAccessory2 = [stepCopy addedAccessory];
    home = [addedAccessory2 home];
    v10 = [home hf_hasHomePods] ^ 1;
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      addedAccessory3 = [stepCopy addedAccessory];
      v15 = 138412802;
      selfCopy = self;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = addedAccessory3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Siri endpoint profile does not exist. Added accessory is %@", &v15, 0x20u);
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)_shouldSkipSiriUpdateRequiredStep:(id)step
{
  stepCopy = step;
  addedAccessory = [stepCopy addedAccessory];
  hf_siriEndpointProfile = [addedAccessory hf_siriEndpointProfile];

  if (hf_siriEndpointProfile && ([stepCopy addedAccessory], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "home"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hf_hasHomePods"), v8, v7, v9) && !-[HSSetupStateMachine _shouldSkipUseSiriFlow:](self, "_shouldSkipUseSiriFlow:", stepCopy))
  {
    supportsOnboarding = [hf_siriEndpointProfile supportsOnboarding];
  }

  else
  {
    supportsOnboarding = 1;
  }

  return supportsOnboarding;
}

- (BOOL)_shouldSkipSiriVoiceRecognitionStep:(id)step
{
  stepCopy = step;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:stepCopy]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:stepCopy]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    v5 = [(HSSetupStateMachine *)self _isVoiceRecognitionEnabled:stepCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_sync_shouldSkipSetupSiriStep:(id)step
{
  stepCopy = step;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:stepCopy]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:stepCopy]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    shouldSkipVoiceProfileSetup = [stepCopy shouldSkipVoiceProfileSetup];
  }

  else
  {
    shouldSkipVoiceProfileSetup = 1;
  }

  return shouldSkipVoiceProfileSetup;
}

- (BOOL)_sync_shouldSkipSiriVoiceTrainingStep:(id)step
{
  stepCopy = step;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:stepCopy]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:stepCopy]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    shouldSkipVoiceProfileSetup = [stepCopy shouldSkipVoiceProfileSetup];
  }

  else
  {
    shouldSkipVoiceProfileSetup = 1;
  }

  return shouldSkipVoiceProfileSetup;
}

- (BOOL)_sync_shouldSkipPersonalRequestsStep:(id)step
{
  stepCopy = step;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:stepCopy]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:stepCopy]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    shouldSkipVoiceProfileSetup = [stepCopy shouldSkipVoiceProfileSetup];
  }

  else
  {
    shouldSkipVoiceProfileSetup = 1;
  }

  return shouldSkipVoiceProfileSetup;
}

- (BOOL)_sync_shouldSkipSiriForEveryoneStep:(id)step
{
  stepCopy = step;
  if ([(HSSetupStateMachine *)self _shouldShowSiriEndpointStep:stepCopy]&& ![(HSSetupStateMachine *)self _shouldSkipUseSiriFlow:stepCopy]&& [(HSSetupStateMachine *)self _deviceIsOnAMultiUserLanguage])
  {
    home = [stepCopy home];
    isMultiUserEnabled = [home isMultiUserEnabled];
  }

  else
  {
    isMultiUserEnabled = 1;
  }

  return isMultiUserEnabled;
}

- (BOOL)_shouldShowSiriEndpointStep:(id)step
{
  stepCopy = step;
  addedAccessory = [stepCopy addedAccessory];
  hf_siriEndpointProfile = [addedAccessory hf_siriEndpointProfile];

  if (hf_siriEndpointProfile && [hf_siriEndpointProfile supportsOnboarding])
  {
    addedAccessory2 = [stepCopy addedAccessory];
    home = [addedAccessory2 home];
    hf_hasHomePods = [home hf_hasHomePods];
  }

  else
  {
    hf_hasHomePods = 0;
  }

  return hf_hasHomePods;
}

- (BOOL)_isVoiceRecognitionEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6 = [HFUserItem alloc];
  home = [enabledCopy home];
  home2 = [enabledCopy home];

  currentUser = [home2 currentUser];
  v10 = [v6 initWithHome:home user:currentUser nameStyle:0];

  isIdentifyVoiceEnabled = [v10 isIdentifyVoiceEnabled];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v15 = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v13;
    v19 = 1024;
    v20 = isIdentifyVoiceEnabled;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Is voice recognition enabled? %{BOOL}d", &v15, 0x1Cu);
  }

  return isIdentifyVoiceEnabled;
}

- (BOOL)_shouldSkipUseSiriFlow:(id)flow
{
  flowCopy = flow;
  onboardingSelections = [flowCopy onboardingSelections];
  if (onboardingSelections)
  {
    onboardingSelections2 = [flowCopy onboardingSelections];
    v6 = [onboardingSelections2 allowHeySiri] ^ 1;
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

- (BOOL)_shouldSkipAdaptiveTempStep:(int64_t)step forConfig:(id)config
{
  configCopy = config;
  if (_os_feature_enabled_impl())
  {
    home = [configCopy home];
    v7 = home;
    if (home)
    {
      if (([home hf_hasResidentCapableOfSupportingHomeActivityState]& 1) != 0)
      {
        isAllowedToEnableAdaptiveTemperatureAutomations = [v7 isAllowedToEnableAdaptiveTemperatureAutomations];
        v9 = isAllowedToEnableAdaptiveTemperatureAutomations;
        if ((step & 0xFFFFFFFFFFFFFFFELL) == 0x12)
        {
          if (isAllowedToEnableAdaptiveTemperatureAutomations)
          {
            addedAccessory = [configCopy addedAccessory];
            supportsAdaptiveTemperatureAutomations = [addedAccessory supportsAdaptiveTemperatureAutomations];

            if ((supportsAdaptiveTemperatureAutomations & 1) == 0)
            {
              v19 = HFLogForCategory();
              if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_23;
              }

              v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
              addedAccessory2 = [configCopy addedAccessory];
              addedAccessory3 = [configCopy addedAccessory];
              v32 = 136315906;
              v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
              v34 = 2112;
              v35 = v22;
              v36 = 2112;
              *v37 = addedAccessory2;
              *&v37[8] = 1024;
              supportsAdaptiveTemperatureAutomations2 = [addedAccessory3 supportsAdaptiveTemperatureAutomations];
              goto LABEL_38;
            }

            if (step != 19 || ([configCopy addedAccessory], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hf_shouldShowPresetConfiguration"), v12, (v13 & 1) != 0))
            {
              addedAccessory4 = [configCopy addedAccessory];
              hasOnboardedForAdaptiveTemperatureAutomations = [addedAccessory4 hasOnboardedForAdaptiveTemperatureAutomations];

              if (hasOnboardedForAdaptiveTemperatureAutomations)
              {
                v16 = HFLogForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
                  addedAccessory5 = [configCopy addedAccessory];
                  v32 = 136315650;
                  v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
                  v34 = 2112;
                  v35 = v17;
                  v36 = 2112;
                  *v37 = addedAccessory5;
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
              addedAccessory2 = [configCopy addedAccessory];
              addedAccessory3 = [configCopy addedAccessory];
              v32 = 136315906;
              v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
              v34 = 2112;
              v35 = v22;
              v36 = 2112;
              *v37 = addedAccessory2;
              *&v37[8] = 1024;
              supportsAdaptiveTemperatureAutomations2 = [addedAccessory3 hf_shouldShowPresetConfiguration];
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

          v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
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
          if (step != 17)
          {
            goto LABEL_31;
          }

          addedAccessory6 = [configCopy addedAccessory];
          supportsAdaptiveTemperatureAutomations3 = [addedAccessory6 supportsAdaptiveTemperatureAutomations];

          if ((supportsAdaptiveTemperatureAutomations3 & 1) == 0)
          {
            v19 = HFLogForCategory();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_23;
            }

            v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:17];
            addedAccessory2 = [configCopy addedAccessory];
            addedAccessory3 = [configCopy addedAccessory];
            v32 = 136315906;
            v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
            v34 = 2112;
            v35 = v22;
            v36 = 2112;
            *v37 = addedAccessory2;
            *&v37[8] = 1024;
            supportsAdaptiveTemperatureAutomations2 = [addedAccessory3 supportsAdaptiveTemperatureAutomations];
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

      v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
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

      v22 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
      v32 = 136315650;
      v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      *v37 = configCopy;
      v23 = "(%s) Skipping %@ because config %@ has no home.";
    }

    v24 = v19;
    v25 = 32;
    goto LABEL_21;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
    v32 = 136315394;
    v33 = "[HSSetupStateMachine _shouldSkipAdaptiveTempStep:forConfig:]";
    v34 = 2112;
    v35 = v21;
  }

  v20 = 1;
LABEL_25:

  return v20;
}

- (BOOL)_shouldSkipCleanEnergyStep:(int64_t)step forConfig:(id)config
{
  configCopy = config;
  if (_os_feature_enabled_impl())
  {
    home = [configCopy home];
    v7 = home;
    if (home)
    {
      if (([home hf_hasResidentCapableOfSupportingHomeActivityState]& 1) != 0)
      {
        addedAccessory = [configCopy addedAccessory];
        supportsCleanEnergyAutomation = [addedAccessory supportsCleanEnergyAutomation];

        if (supportsCleanEnergyAutomation)
        {
          if (([v7 hf_isGridForecastSupported]& 1) != 0)
          {
            addedAccessory2 = [configCopy addedAccessory];
            hasOnboardedForCleanEnergyAutomation = [addedAccessory2 hasOnboardedForCleanEnergyAutomation];

            if (!hasOnboardedForCleanEnergyAutomation)
            {
              v18 = 0;
              goto LABEL_25;
            }

            v12 = HFLogForCategory();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_23;
            }

            v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
            addedAccessory3 = [configCopy addedAccessory];
            v20 = 136315650;
            v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = addedAccessory3;
            goto LABEL_20;
          }

          v12 = HFLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
            addedAccessory3 = [configCopy addedAccessory];
            v20 = 136315650;
            v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = addedAccessory3;
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
            v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
            addedAccessory3 = [configCopy addedAccessory];
            addedAccessory4 = [configCopy addedAccessory];
            v20 = 136315906;
            v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = addedAccessory3;
            v26 = 1024;
            supportsCleanEnergyAutomation2 = [addedAccessory4 supportsCleanEnergyAutomation];

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

      v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
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

      v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
      v20 = 136315650;
      v21 = "[HSSetupStateMachine _shouldSkipCleanEnergyStep:forConfig:]";
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = configCopy;
      v16 = "(%s) Skipping %@ because config %@ has no home.";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v16, &v20, 0x20u);
LABEL_22:

    goto LABEL_23;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
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