void sub_29C8C81A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_29C8C81C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_29C8C885C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29C8C97C8(v5, v6);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = v5 != 0;
  [*(a1 + 32) signal];
}

void sub_29C8C841C(uint64_t a1)
{
  v2 = [MEMORY[0x29EDC1130] sharedInstance];
  v3 = [v2 _quickFetchFMIPEnabledstate];

  v4 = *(a1 + 48);
  if (v4 != 2)
  {
    if (v4 != 3)
    {
      return;
    }

    v20 = [*(a1 + 32) accountType];
    v5 = [v20 identifier];
    if ([v5 isEqual:*MEMORY[0x29EDB81C8]])
    {
      v6 = [*(a1 + 32) aa_isAccountClass:*MEMORY[0x29EDBE2C0]];

      if (!v6)
      {
        return;
      }

      v20 = dispatch_get_global_queue(2, 0);
      dispatch_async(v20, &unk_2A23D5778);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v3)
  {
    v7 = [*(a1 + 40) accountType];
    v8 = [v7 identifier];
    v9 = [v8 isEqual:*MEMORY[0x29EDB8208]];

    v10 = *(a1 + 40);
    if (v9)
    {
      if (![v10 isPropertyDirty:@"credential"])
      {
        return;
      }

      v20 = sub_29C8C885C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C8C7000, v20, OS_LOG_TYPE_DEFAULT, "FMIP token has changed", buf, 2u);
      }

      v11 = @"FMIP-auth-token";
    }

    else
    {
      v20 = [v10 accountType];
      v5 = [v20 identifier];
      if (![v5 isEqual:*MEMORY[0x29EDB81C8]])
      {
LABEL_23:

LABEL_24:

        return;
      }

      v14 = [*(a1 + 40) aa_isAccountClass:*MEMORY[0x29EDBE2C0]];

      if (!v14)
      {
        return;
      }

      v15 = [*(a1 + 32) aa_isSuspended];
      if (v15 == [*(a1 + 40) aa_isSuspended])
      {
        if ([*(a1 + 40) isPropertyDirty:@"credential"])
        {
          v20 = sub_29C8C885C();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&dword_29C8C7000, v20, OS_LOG_TYPE_DEFAULT, "iCloud token has changed", v22, 2u);
          }

          v11 = @"iCloud-auth-token";
        }

        else
        {
          v16 = *(a1 + 32);
          if (v16)
          {
            [v16 fmipAccountInfoForProactiveChanges];
          }

          else
          {
            [MEMORY[0x29EDB8DC0] dictionary];
          }
          v20 = ;
          v17 = *(a1 + 40);
          if (v17)
          {
            [v17 fmipAccountInfoForProactiveChanges];
          }

          else
          {
            [MEMORY[0x29EDB8DC0] dictionary];
          }
          v18 = ;
          if (([v20 isEqual:v18]& 1) != 0)
          {

            goto LABEL_24;
          }

          v19 = sub_29C8C885C();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 0;
            _os_log_impl(&dword_29C8C7000, v19, OS_LOG_TYPE_DEFAULT, "FMIP info changed", v21, 2u);
          }

          v11 = @"FMIP-info";
        }
      }

      else
      {
        v20 = sub_29C8C885C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&dword_29C8C7000, v20, OS_LOG_TYPE_DEFAULT, "iCloud account needs to verify terms changed", v23, 2u);
        }

        v11 = @"iCloud-terms-changed";
      }
    }

    v12 = [MEMORY[0x29EDC1130] sharedInstance];
    [v12 didChangeFMIPAccountInfo:v11];

    return;
  }

  v13 = sub_29C8C885C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_29C8C7000, v13, OS_LOG_TYPE_DEFAULT, "iCloud account info did change but FMIP is not enabled", v25, 2u);
  }
}

void sub_29C8C8814()
{
  v0 = [MEMORY[0x29EDC1130] sharedInstance];
  [v0 primaryAppleAccountRemoved];
}

id sub_29C8C885C()
{
  if (qword_2A1A11878 != -1)
  {
    sub_29C8C9840();
  }

  v1 = qword_2A1A11880;

  return v1;
}

uint64_t sub_29C8C88A0()
{
  qword_2A1A11880 = os_log_create("com.apple.icloud.findmydeviced", "_");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C88E4()
{
  if (qword_2A1796678 != -1)
  {
    sub_29C8C9854();
  }

  v1 = qword_2A1796680;

  return v1;
}

uint64_t sub_29C8C8928()
{
  qword_2A1796680 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C896C()
{
  if (qword_2A1796688 != -1)
  {
    sub_29C8C9868();
  }

  v1 = qword_2A1796690;

  return v1;
}

uint64_t sub_29C8C89B0()
{
  qword_2A1796690 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C89F4()
{
  if (qword_2A1796698 != -1)
  {
    sub_29C8C987C();
  }

  v1 = qword_2A17966A0;

  return v1;
}

uint64_t sub_29C8C8A38()
{
  qword_2A17966A0 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8A7C()
{
  if (qword_2A17966A8 != -1)
  {
    sub_29C8C9890();
  }

  v1 = qword_2A17966B0;

  return v1;
}

uint64_t sub_29C8C8AC0()
{
  qword_2A17966B0 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8B04()
{
  if (qword_2A17966B8 != -1)
  {
    sub_29C8C98A4();
  }

  v1 = qword_2A17966C0;

  return v1;
}

uint64_t sub_29C8C8B48()
{
  qword_2A17966C0 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8B8C()
{
  if (qword_2A17966C8 != -1)
  {
    sub_29C8C98B8();
  }

  v1 = qword_2A17966D0;

  return v1;
}

uint64_t sub_29C8C8BD0()
{
  qword_2A17966D0 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8C14()
{
  if (qword_2A17966D8 != -1)
  {
    sub_29C8C98CC();
  }

  v1 = qword_2A17966E0;

  return v1;
}

uint64_t sub_29C8C8C58()
{
  qword_2A17966E0 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8C9C()
{
  if (qword_2A17966E8 != -1)
  {
    sub_29C8C98E0();
  }

  v1 = qword_2A17966F0;

  return v1;
}

uint64_t sub_29C8C8CE0()
{
  qword_2A17966F0 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8D24()
{
  if (qword_2A17966F8 != -1)
  {
    sub_29C8C98F4();
  }

  v1 = qword_2A1796700;

  return v1;
}

uint64_t sub_29C8C8D68()
{
  qword_2A1796700 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8DAC()
{
  if (qword_2A1796708 != -1)
  {
    sub_29C8C9908();
  }

  v1 = qword_2A1796710;

  return v1;
}

uint64_t sub_29C8C8DF0()
{
  qword_2A1796710 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8E34()
{
  if (qword_2A1796718 != -1)
  {
    sub_29C8C991C();
  }

  v1 = qword_2A1796720;

  return v1;
}

uint64_t sub_29C8C8E78()
{
  qword_2A1796720 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8EBC()
{
  if (qword_2A1796728 != -1)
  {
    sub_29C8C9930();
  }

  v1 = qword_2A1796730;

  return v1;
}

uint64_t sub_29C8C8F00()
{
  qword_2A1796730 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8F44()
{
  if (qword_2A1796738 != -1)
  {
    sub_29C8C9944();
  }

  v1 = qword_2A1796740;

  return v1;
}

uint64_t sub_29C8C8F88()
{
  qword_2A1796740 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C8FCC()
{
  if (qword_2A1796748 != -1)
  {
    sub_29C8C9958();
  }

  v1 = qword_2A1796750;

  return v1;
}

uint64_t sub_29C8C9010()
{
  qword_2A1796750 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C9054()
{
  if (qword_2A1796758 != -1)
  {
    sub_29C8C996C();
  }

  v1 = qword_2A1796760;

  return v1;
}

uint64_t sub_29C8C9098()
{
  qword_2A1796760 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C90DC()
{
  if (qword_2A1796768 != -1)
  {
    sub_29C8C9980();
  }

  v1 = qword_2A1796770;

  return v1;
}

uint64_t sub_29C8C9120()
{
  result = [MEMORY[0x29EDC1100] BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"];
  if (result)
  {
    qword_2A1796770 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    return MEMORY[0x2A1C71028]();
  }

  return result;
}

id sub_29C8C918C(void *a1, uint64_t a2, int a3)
{
  v5 = [MEMORY[0x29EDB8E00] dictionary];
  v6 = qword_2A1796620;
  v7 = [a1 username];
  [v5 fm_safelyMapKey:v6 toObject:v7];

  v8 = qword_2A1796628;
  v9 = [a1 aa_personID];
  [v5 fm_safelyMapKey:v8 toObject:v9];

  v10 = qword_2A1796630;
  v11 = [a1 aa_altDSID];
  [v5 fm_safelyMapKey:v10 toObject:v11];

  if (a3)
  {
    v12 = qword_2A1796638;
    v13 = [a1 aa_fmipToken];
    [v5 fm_safelyMapKey:v12 toObject:v13];

    v14 = qword_2A1796640;
    v15 = [a1 aa_authToken];
    [v5 fm_safelyMapKey:v14 toObject:v15];
  }

  v16 = qword_2A1796648;
  v17 = [a1 identifier];
  [v5 fm_safelyMapKey:v16 toObject:v17];

  v18 = [a1 dataclassProperties];
  v19 = [v18 objectForKeyedSubscript:@"com.apple.Dataclass.DeviceLocator"];

  v20 = qword_2A1796650;
  v21 = [v19 objectForKeyedSubscript:@"hostname"];
  [v5 fm_safelyMapKey:v20 toObject:v21];

  [v5 fm_safelyMapKey:qword_2A1796658 toObject:@"https"];
  v22 = qword_2A1796660;
  v23 = [v19 objectForKeyedSubscript:@"apsEnv"];
  [v5 fm_safelyMapKey:v22 toObject:v23];

  v24 = MEMORY[0x29EDC1138];
  v25 = [MEMORY[0x29EDC1100] stringForKey:@"configURL" inDomain:*MEMORY[0x29EDC1138]];
  if (v25)
  {
    v26 = qword_2A1796668;
    v27 = v5;
    v28 = v25;
LABEL_5:
    [v27 fm_safelyMapKey:v26 toObject:v28];
    goto LABEL_8;
  }

  v29 = [v19 objectForKeyedSubscript:@"configURL"];

  v30 = qword_2A1796668;
  if (!v29)
  {
    v28 = @"https://gateway.icloud.com/fmadminws/findkit";
    v27 = v5;
    v26 = qword_2A1796668;
    goto LABEL_5;
  }

  v31 = [v19 objectForKeyedSubscript:@"configURL"];
  [v5 fm_safelyMapKey:v30 toObject:v31];

LABEL_8:
  v32 = [MEMORY[0x29EDC1100] stringForKey:@"pairingURL" inDomain:*v24];
  if (v32)
  {
    v33 = qword_2A1796670;
    v34 = v5;
    v35 = v32;
LABEL_10:
    [v34 fm_safelyMapKey:v33 toObject:v35];
    goto LABEL_13;
  }

  v36 = [v19 objectForKeyedSubscript:@"pairingURL"];

  v37 = qword_2A1796670;
  if (!v36)
  {
    v35 = @"https://gateway.icloud.com/fmadminws";
    v34 = v5;
    v33 = qword_2A1796670;
    goto LABEL_10;
  }

  v38 = [v19 objectForKeyedSubscript:@"pairingURL"];
  [v5 fm_safelyMapKey:v37 toObject:v38];

LABEL_13:
  v39 = [v5 copy];

  return v39;
}

id sub_29C8C9528(void *a1)
{
  v1 = [a1 fmipAccountInfoWithTokens:0];
  v2 = [v1 mutableCopy];

  [v2 removeObjectForKey:qword_2A1796648];
  v3 = [v2 copy];

  return v3;
}

id sub_29C8C9594(void *a1, uint64_t a2, int a3)
{
  v5 = [MEMORY[0x29EDB8E00] dictionary];
  v6 = qword_2A1796620;
  v7 = [a1 username];
  [v5 fm_safelyMapKey:v6 toObject:v7];

  v8 = qword_2A1796628;
  v9 = [a1 aa_personID];
  [v5 fm_safelyMapKey:v8 toObject:v9];

  v10 = qword_2A1796630;
  v11 = [a1 aa_altDSID];
  [v5 fm_safelyMapKey:v10 toObject:v11];

  if (a3)
  {
    v12 = qword_2A1796638;
    v13 = [a1 aa_fmipToken];
    [v5 fm_safelyMapKey:v12 toObject:v13];
  }

  v14 = [a1 dataclassProperties];
  v15 = [v14 objectForKeyedSubscript:@"com.apple.Dataclass.DeviceLocator"];

  v16 = qword_2A1796650;
  v17 = [v15 objectForKeyedSubscript:@"hostname"];
  [v5 fm_safelyMapKey:v16 toObject:v17];

  [v5 fm_safelyMapKey:qword_2A1796658 toObject:@"https"];
  v18 = qword_2A1796660;
  v19 = [v15 objectForKeyedSubscript:@"apsEnv"];
  [v5 fm_safelyMapKey:v18 toObject:v19];

  v20 = [v5 copy];

  return v20;
}

id sub_29C8C976C(void *a1)
{
  v1 = [a1 fmipAccountInfoWithTokens:0];
  v2 = [v1 mutableCopy];

  v3 = [v2 copy];

  return v3;
}

void sub_29C8C97C8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C8C7000, a2, OS_LOG_TYPE_ERROR, "Error fetching the FMIP state to decide if iCloud account can be deleted : %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}