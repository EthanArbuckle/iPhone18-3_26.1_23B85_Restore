@interface HSSetupStateMachineCHIPPartnerEcosystem
- (BOOL)_sync_shouldSkipStep:(int64_t)a3 withConfiguration:(id)a4;
- (int64_t)stepFollowingStep:(int64_t)a3 withConfiguration:(id)a4;
@end

@implementation HSSetupStateMachineCHIPPartnerEcosystem

- (int64_t)stepFollowingStep:(int64_t)a3 withConfiguration:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (!v8)
    {
      sub_10007A644();
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 pairingError];

  if (!v9)
  {
    v11 = sub_10004C888();
    v12 = [NSNumber numberWithInteger:a3];
    v13 = [v11 indexOfObject:v12];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007A760(v14);
      }
    }

    else
    {
      v15 = v13 + 1;
      if (v15 < [v11 count])
      {
        v16 = [v11 objectAtIndexedSubscript:v15];
        v17 = [v16 intValue];

        if (v17 >= 8)
        {
          [v8 setIsReadyToPair:1];
        }

        v18 = [v11 objectAtIndexedSubscript:v15];
        v10 = [v18 intValue];

        goto LABEL_20;
      }

      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007A6DC(v14);
      }
    }

    v10 = 58;
LABEL_20:

    goto LABEL_21;
  }

  v10 = 58;
LABEL_21:

  return v10;
}

- (BOOL)_sync_shouldSkipStep:(int64_t)a3 withConfiguration:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (!v8)
    {
      sub_10007A644();
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  if (a3 > 5)
  {
    if (a3 == 6)
    {
      v13 = [v8 matterDeviceSetupRequest];
      v15 = [v13 topology];
      v18 = [v15 homes];
      if (v18)
      {
        v19 = [v8 matterDeviceSetupRequest];
        v20 = [v19 topology];
        v21 = [v20 homes];
        v9 = [v21 count] < 2;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      if (a3 != 13)
      {
        if (a3 == 26)
        {
          v9 = [HSPCNetworkCredentialManagementViewController shouldSkipForConfig:v8];
        }

        goto LABEL_30;
      }

      v13 = [v8 matterDeviceSetupRequest];
      v15 = [v13 topology];
      v18 = [v15 homes];
      v9 = [v18 count] == 0;
    }

LABEL_28:
    goto LABEL_29;
  }

  if ((a3 - 2) < 2)
  {
    v16 = [v8 setupDescription];
    v17 = [v16 setupAccessoryPayload];

    if (!v17)
    {
      v22 = [v8 delegate];
      v13 = [v22 stateMachineConfigurationGetDiscoveredAccessory:v8];

      v9 = v13 != 0;
LABEL_29:

      goto LABEL_30;
    }

LABEL_21:
    v9 = 1;
    goto LABEL_30;
  }

  if (a3 == 1 || a3 == 4)
  {
    v10 = [v8 setupDescription];
    v11 = [v10 setupAccessoryPayload];

    if (!v11)
    {
      v12 = [v8 delegate];
      v13 = [v12 stateMachineConfigurationGetDiscoveredAccessory:v8];

      v14 = [v8 delegate];
      v15 = [v14 stateMachineConfigurationGetSetupCode:v8];

      v9 = v13 && ![v13 requiresSetupCode] || objc_msgSend(v15, "length") != 0;
      goto LABEL_28;
    }

    goto LABEL_21;
  }

LABEL_30:

  return v9;
}

@end