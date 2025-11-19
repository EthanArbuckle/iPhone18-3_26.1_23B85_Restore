void sub_19BC7C7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC7E924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMAccessoryAllowedHostPurposeAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!a1)
  {
    goto LABEL_42;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_38;
    }

    if (v3 > 127)
    {
      if (v3 <= 1023)
      {
        switch(v3)
        {
          case 128:
            v5 = @"UsageMetrics";
            break;
          case 256:
            v5 = @"Diagnostics";
            break;
          case 512:
            v5 = @"RemoteAccess";
            break;
          default:
            goto LABEL_38;
        }
      }

      else if (v3 > 4095)
      {
        if (v3 == 4096)
        {
          v5 = @"ConnectivityChecks";
        }

        else
        {
          if (v3 != 0x2000)
          {
            goto LABEL_38;
          }

          v5 = @"EmergencyNotifications";
        }
      }

      else if (v3 == 1024)
      {
        v5 = @"HomeEcosystem";
      }

      else
      {
        if (v3 != 2048)
        {
          goto LABEL_38;
        }

        v5 = @"TimeSynchronization";
      }
    }

    else if (v3 <= 7)
    {
      switch(v3)
      {
        case 1:
          v5 = @"Other";
          break;
        case 2:
          v5 = @"FirmwareUpdate";
          break;
        case 4:
          v5 = @"AccountManagement";
          break;
        default:
          goto LABEL_38;
      }
    }

    else if (v3 > 31)
    {
      if (v3 == 32)
      {
        v5 = @"UserStorage";
      }

      else
      {
        if (v3 != 64)
        {
          goto LABEL_38;
        }

        v5 = @"Notifications";
      }
    }

    else if (v3 == 8)
    {
      v5 = @"PeerToPeer";
    }

    else
    {
      if (v3 != 16)
      {
        goto LABEL_38;
      }

      v5 = @"UserEvents";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_38:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if ((a1 & 1) == 0 && v4)
  {
    [v2 addObject:@"Other"];
  }

LABEL_42:
  if ([v2 count])
  {
    v6 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"none";
  }

  return v6;
}

void sub_19BC81B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __handleAccessoryRuntimeStateUpdate(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 homeManager];
  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = [v6 allKeys];
    v11 = [v9 setWithArray:v10];

    v22 = v7;
    [v8 notifyDelegateOfBatchNotificationsStartWithReason:v7];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v5;
    v12 = [v5 accessories];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v17 uuid];
          v19 = [v18 UUIDString];

          if ([v11 containsObject:v19])
          {
            v20 = [v6 hmf_dictionaryForKey:v19];
            [v17 handleRuntimeStateUpdate:v20];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v7 = v22;
    [v8 notifyDelegateOfBatchNotificationsEndWithReason:v22];

    v5 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
}

__CFString *HMHomeActivityStateToString(unint64_t a1)
{
  if (a1 < 8 && ((0xD7u >> a1) & 1) != 0)
  {
    v2 = off_1E754A220[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMHomeActivityState %tu", a1];
  }

  return v2;
}

void sub_19BC98D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCAA460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19BCAB0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCAB8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCABE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCAD284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCADF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCAE894(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_19BCAF220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCAFBDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_19BCB0188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCB08A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCB0E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCB1798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCB69F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCB7510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31767(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BCB7F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCB85A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCB9B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCBA58C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_19BCBCB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCBD160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCBD738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCBE0FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id _dictionaryRepresentationForReportContext(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [v1 reportDomain];
  [v2 setObject:v3 forKeyedSubscript:@"HMHomeReportDomainMessageKey"];

  v4 = [v1 requestInfo];
  [v2 setObject:v4 forKeyedSubscript:@"HMHomeRequestInfoMessageKey"];

  [v1 reportTimeout];
  if (v5 > 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [v1 reportTimeout];
    v7 = [v6 numberWithDouble:?];
    [v2 setObject:v7 forKeyedSubscript:@"HMHomeReportTimeoutMessageKey"];
  }

  v8 = [v2 copy];

  return v8;
}

void sub_19BCBEB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCBF44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCC3944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

__CFString *HMUserPrivilegeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E754A200[a1];
  }
}

__CFString *HMStringFromHomeLocation(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"HMHomeLocationAway";
  }

  else
  {
    return off_1E754A260[a1];
  }
}

__CFString *userConsentAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"HMUserConsentResponseNoForAccessoryDetailConfirmation";
  }

  else
  {
    return off_1E754A1E8[a1 - 1];
  }
}

__CFString *HMHomeSupportedFeatureAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Supports Add Network Router";
  }

  else
  {
    return @"Unknown";
  }
}

__CFString *HMNetworkProtectionModeAsString(uint64_t a1)
{
  v1 = @"Unknown";
  if (!a1)
  {
    v1 = @"Not Protected";
  }

  if (a1 == 1)
  {
    return @"Protected";
  }

  else
  {
    return v1;
  }
}

__CFString *HMNetworkRouterSupportAsString(unint64_t a1)
{
  if (!a1)
  {
    v6 = @"Enabled";
    goto LABEL_12;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v3 = v2;
  v4 = a1;
  if (a1)
  {
    [v2 addObject:@"Home Protection Mode Updates disabled"];
    v4 = a1 & 0xFFFFFFFFFFFFFFFELL;
    if ((a1 & 2) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"Accessory Protection Mode Updates disabled"];
  v4 &= ~2uLL;
  if ((a1 & 4) != 0)
  {
LABEL_5:
    [v3 addObject:@"Add Network Router disabled"];
    v4 &= ~4uLL;
  }

LABEL_6:
  v5 = [v3 count];
  if (!v4 || v5)
  {
    v6 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"Unknown";
  }

LABEL_12:

  return v6;
}

__CFString *HMNetworkRouterSupportDisableReasonAsString(unint64_t a1)
{
  if (!a1)
  {
    v5 = @"None";
    goto LABEL_14;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v3 = v2;
  v4 = a1;
  if ((a1 & 8) != 0)
  {
    [v2 addObject:@"No Active Network Router in home"];
    v4 = a1 & 0xFFFFFFFFFFFFFFF7;
    if ((a1 & 1) == 0)
    {
LABEL_4:
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"No HomeHub or incompatible OS version on HomeHub"];
  v4 &= ~1uLL;
  if ((a1 & 2) == 0)
  {
LABEL_5:
    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 addObject:@"Incompatible OS version"];
  v4 &= ~2uLL;
  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  [v3 addObject:@"Insufficient Privileges"];
  v4 &= ~4uLL;
  if ((a1 & 0x10) != 0)
  {
LABEL_7:
    [v3 addObject:@"Incompatible OS version to change accessory protection"];
    v4 &= ~0x10uLL;
  }

LABEL_8:
  if ([v3 count] || !v4)
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"Unknown";
  }

LABEL_14:

  return v5;
}

BOOL HMIsValidHMHomeActivityStateType(void *a1)
{
  v1 = a1;
  [v1 unsignedIntegerValue];
  v2 = [v1 unsignedIntegerValue];

  return v2 < 8;
}

uint64_t HMHomeActivityStateToTopLevelState(unint64_t a1)
{
  if (a1 > 7)
  {
    return 1;
  }

  else
  {
    return qword_19BE37790[a1];
  }
}

void sub_19BCC7A70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_19BCC7E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCC82B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCC8570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMUserPresenceComputeStatusAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMUserPresenceComputeStatus %tu", a1];
  }

  else
  {
    v2 = off_1E754A2D8[a1];
  }

  return v2;
}

__CFString *HMSiriEndpointOnboardingResultAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown result (%@)", v3];
  }

  else
  {
    v1 = off_1E754A328[a1];
  }

  return v1;
}

__CFString *HMAccessorySettingsDataSourceSubscribeOptionsAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = &stru_1F0E92498;
    if (v2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", &stru_1F0E92498, @"SubscribeToOnlyLiveSettings"];
      v1 = vars8;
    }
  }

  else
  {
    v3 = @"SubscribeWithNoOptions";
  }

  return v3;
}

void sub_19BCD14D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getHAPSystemKeychainStoreClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreHAPLibraryCore_frameworkLibrary_33288)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreHAPLibraryCore_block_invoke_33289;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E754ABD8;
    v7 = 0;
    CoreHAPLibraryCore_frameworkLibrary_33288 = _sl_dlopen();
    v2 = v5[0];
    if (CoreHAPLibraryCore_frameworkLibrary_33288)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HAPSystemKeychainStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getHAPSystemKeychainStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreHAPLibraryCore_block_invoke_33289(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreHAPLibraryCore_frameworkLibrary_33288 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BCDD9F0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMHomeManagerDataSyncStateToString(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown value: %lu>", a1];
  }

  else
  {
    v2 = off_1E754ABF0[a1];
  }

  return v2;
}

__CFString *HMHomeManagerStatusToString(unint64_t a1)
{
  if (!a1)
  {
    v8 = @"None";
    goto LABEL_11;
  }

  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Busy"];
    if ((a1 & 0x10) == 0)
    {
LABEL_4:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"Needs Device Setup"];
  if ((a1 & 0x20) != 0)
  {
LABEL_5:
    [v3 addObject:@"No Account"];
  }

LABEL_6:
  v4 = [v3 count];
  if (a1 > 0x3F || !v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
    v7 = [v5 stringWithFormat:@"Unknown (%@)", v6];
    [v3 addObject:v7];
  }

  v8 = [v3 componentsJoinedByString:{@", "}];

LABEL_11:

  return v8;
}

void sub_19BCE26B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE33F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE42B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE4500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE4710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE4920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE4B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE4D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE4FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE5240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE54A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE5708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE5998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE5BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE5F1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_19BCE63DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE6720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE6E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BCE8A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_19BCED0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HMHomeManagerNameValidationOptionsToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"HMHomeManagerNameValidationOptionsNotSupported";
  }

  else
  {
    return off_1E754AC30[a1 - 1];
  }
}

__CFString *HMHomeManagerMultiUserStatusToString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"HMHomeManagerMultiUserStatusReady";
  }

  else if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HMHomeManagerMultiUserStatus(%ld)", a1];
  }

  else
  {
    v2 = @"HMHomeManagerMultiUserStatusUninitialized";
  }

  return v2;
}

uint64_t HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v49) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v49 & 0x7F) << v5;
      if ((v49 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_86;
      case 2u:
        v15 = objc_alloc_init(HMAccessoryInfoProtoWifiNetworkInfoEvent);
        objc_storeStrong((a1 + 176), v15);
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMAccessoryInfoProtoWifiNetworkInfoEventReadFrom(v15, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 3u:
        v15 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo);
        objc_storeStrong((a1 + 48), v15);
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfoReadFrom(v15, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 4u:
        v15 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoCloudInfo);
        objc_storeStrong((a1 + 40), v15);
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMAccessoryDiagnosticInfoProtoCloudInfoReadFrom(v15, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 5u:
        v15 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoIdsInfo);
        objc_storeStrong((a1 + 64), v15);
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMAccessoryDiagnosticInfoProtoIdsInfoReadFrom(v15, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 6u:
        v15 = objc_alloc_init(HMRemoteEventRouterProtoServerDiagnosticInfo);
        objc_storeStrong((a1 + 56), v15);
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMRemoteEventRouterProtoServerDiagnosticInfoReadFrom(v15, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 7u:
        *(a1 + 184) |= 1u;
        v49 = 0;
        v36 = [a2 position] + 8;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:&v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v49;
        goto LABEL_117;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 144;
        goto LABEL_86;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_86;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 168;
        goto LABEL_86;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_86;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 72;
LABEL_86:
        v38 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_117;
      case 0xDu:
        v15 = objc_alloc_init(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor);
        objc_storeStrong((a1 + 152), v15);
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMSoftwareUpdateEventProtoSoftwareUpdateDescriptorReadFrom(v15, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 0xEu:
        v15 = objc_alloc_init(HMSoftwareUpdateEventProtoSoftwareUpdateProgress);
        objc_storeStrong((a1 + 160), v15);
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMSoftwareUpdateEventProtoSoftwareUpdateProgressReadFrom(v15, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 0xFu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 184) |= 8u;
        while (1)
        {
          LOBYTE(v49) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v49 & 0x7F) << v16;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_101;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_101:
        v45 = 32;
        goto LABEL_114;
      case 0x10u:
        v15 = objc_alloc_init(HMAccessoryInfoProtoNetworkInfoEvent);
        [a1 addNetworkInfo:v15];
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMAccessoryInfoProtoNetworkInfoEventReadFrom(&v15->super.super.isa, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 0x11u:
        v15 = objc_alloc_init(HMAccessoryInfoProtoNetworkServiceEvent);
        [a1 addNetworkServiceInfo:v15];
        v49 = 0;
        v50 = 0;
        if (!PBReaderPlaceMark() || !HMAccessoryInfoProtoNetworkServiceEventReadFrom(v15, a2))
        {
          goto LABEL_119;
        }

        goto LABEL_83;
      case 0x12u:
        v15 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo);
        [a1 addNetworkVisibleDeviceInfos:v15];
        goto LABEL_81;
      case 0x13u:
        v15 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo);
        [a1 addNearbyVisibleDeviceInfos:v15];
LABEL_81:
        v49 = 0;
        v50 = 0;
        if (PBReaderPlaceMark() && HMAccessoryDiagnosticInfoProtoVisibleDeviceInfoReadFrom(v15, a2))
        {
LABEL_83:
          PBReaderRecallMark();

LABEL_117:
          v47 = [a2 position];
          if (v47 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_119:

        return 0;
      case 0x14u:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 184) |= 2u;
        while (1)
        {
          LOBYTE(v49) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v49 & 0x7F) << v39;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_113;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v41;
        }

LABEL_113:
        v45 = 16;
        goto LABEL_114;
      case 0x15u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 184) |= 4u;
        while (1)
        {
          LOBYTE(v49) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v49 & 0x7F) << v23;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_105:
        v45 = 24;
LABEL_114:
        *(a1 + v45) = v22;
        goto LABEL_117;
      case 0x16u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 184) |= 0x10u;
        while (1)
        {
          LOBYTE(v49) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v49 & 0x7F) << v29;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_109:
        *(a1 + 128) = v35;
        goto LABEL_117;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_117;
    }
  }
}

uint64_t HMProtoAccessoryCapabilitiesReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v283 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v283 & 0x7F) << v6;
      if ((v283 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;

        continue;
      case 4u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 60) |= 0x2000000uLL;
        while (1)
        {
          v283 = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v283 & 0x7F) << v125;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_455;
          }
        }

        v22 = (v127 != 0) & ~[a2 hasError];
LABEL_455:
        v282 = 41;
        goto LABEL_506;
      case 5u:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 60) |= 0x10000uLL;
        while (1)
        {
          v283 = 0;
          v189 = [a2 position] + 1;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
          {
            v191 = [a2 data];
            [v191 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v188 |= (v283 & 0x7F) << v186;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v12 = v187++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_475;
          }
        }

        v22 = (v188 != 0) & ~[a2 hasError];
LABEL_475:
        v282 = 32;
        goto LABEL_506;
      case 6u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 60) |= 0x800000uLL;
        while (1)
        {
          v283 = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v283 & 0x7F) << v119;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_453;
          }
        }

        v22 = (v121 != 0) & ~[a2 hasError];
LABEL_453:
        v282 = 39;
        goto LABEL_506;
      case 7u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 60) |= 0x1000000uLL;
        while (1)
        {
          v283 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v283 & 0x7F) << v161;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_467;
          }
        }

        v22 = (v163 != 0) & ~[a2 hasError];
LABEL_467:
        v282 = 40;
        goto LABEL_506;
      case 8u:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 60) |= 0x400000000uLL;
        while (1)
        {
          v283 = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            v185 = [a2 data];
            [v185 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v283 & 0x7F) << v180;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_473;
          }
        }

        v22 = (v182 != 0) & ~[a2 hasError];
LABEL_473:
        v282 = 50;
        goto LABEL_506;
      case 9u:
        v222 = 0;
        v223 = 0;
        v224 = 0;
        *(a1 + 60) |= 0x800uLL;
        while (1)
        {
          v283 = 0;
          v225 = [a2 position] + 1;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
          {
            v227 = [a2 data];
            [v227 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v224 |= (v283 & 0x7F) << v222;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v222 += 7;
          v12 = v223++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_487;
          }
        }

        v22 = (v224 != 0) & ~[a2 hasError];
LABEL_487:
        v282 = 27;
        goto LABEL_506;
      case 0xAu:
        v228 = 0;
        v229 = 0;
        v230 = 0;
        *(a1 + 60) |= 0x20000000000uLL;
        while (1)
        {
          v283 = 0;
          v231 = [a2 position] + 1;
          if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 1, v232 <= objc_msgSend(a2, "length")))
          {
            v233 = [a2 data];
            [v233 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v230 |= (v283 & 0x7F) << v228;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v228 += 7;
          v12 = v229++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_489;
          }
        }

        v22 = (v230 != 0) & ~[a2 hasError];
LABEL_489:
        v282 = 57;
        goto LABEL_506;
      case 0xBu:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 60) |= 0x100uLL;
        while (1)
        {
          v283 = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v283 & 0x7F) << v89;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v12 = v90++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_443;
          }
        }

        v22 = (v91 != 0) & ~[a2 hasError];
LABEL_443:
        v282 = 24;
        goto LABEL_506;
      case 0xCu:
        v234 = 0;
        v235 = 0;
        v236 = 0;
        *(a1 + 60) |= 0x80000uLL;
        while (1)
        {
          v283 = 0;
          v237 = [a2 position] + 1;
          if (v237 >= [a2 position] && (v238 = objc_msgSend(a2, "position") + 1, v238 <= objc_msgSend(a2, "length")))
          {
            v239 = [a2 data];
            [v239 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v236 |= (v283 & 0x7F) << v234;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v234 += 7;
          v12 = v235++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_491;
          }
        }

        v22 = (v236 != 0) & ~[a2 hasError];
LABEL_491:
        v282 = 35;
        goto LABEL_506;
      case 0xDu:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 60) |= 0x2000000000uLL;
        while (1)
        {
          v283 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v283 & 0x7F) << v107;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_449;
          }
        }

        v22 = (v109 != 0) & ~[a2 hasError];
LABEL_449:
        v282 = 53;
        goto LABEL_506;
      case 0xEu:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 60) |= 0x20000000uLL;
        while (1)
        {
          v283 = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v283 & 0x7F) << v167;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v12 = v168++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_469;
          }
        }

        v22 = (v169 != 0) & ~[a2 hasError];
LABEL_469:
        v282 = 45;
        goto LABEL_506;
      case 0xFu:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 60) |= 0x200000uLL;
        while (1)
        {
          v283 = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v283 & 0x7F) << v149;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_463;
          }
        }

        v22 = (v151 != 0) & ~[a2 hasError];
LABEL_463:
        v282 = 37;
        goto LABEL_506;
      case 0x10u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 60) |= 0x100000uLL;
        while (1)
        {
          v283 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v283 & 0x7F) << v77;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_439;
          }
        }

        v22 = (v79 != 0) & ~[a2 hasError];
LABEL_439:
        v282 = 36;
        goto LABEL_506;
      case 0x11u:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(a1 + 60) |= 0x2000uLL;
        while (1)
        {
          v283 = 0;
          v213 = [a2 position] + 1;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
          {
            v215 = [a2 data];
            [v215 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v212 |= (v283 & 0x7F) << v210;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v12 = v211++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_483;
          }
        }

        v22 = (v212 != 0) & ~[a2 hasError];
LABEL_483:
        v282 = 29;
        goto LABEL_506;
      case 0x12u:
        v216 = 0;
        v217 = 0;
        v218 = 0;
        *(a1 + 60) |= 0x40000000uLL;
        while (1)
        {
          v283 = 0;
          v219 = [a2 position] + 1;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
          {
            v221 = [a2 data];
            [v221 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v218 |= (v283 & 0x7F) << v216;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v216 += 7;
          v12 = v217++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_485;
          }
        }

        v22 = (v218 != 0) & ~[a2 hasError];
LABEL_485:
        v282 = 46;
        goto LABEL_506;
      case 0x13u:
        v252 = 0;
        v253 = 0;
        v254 = 0;
        *(a1 + 60) |= 0x80uLL;
        while (1)
        {
          v283 = 0;
          v255 = [a2 position] + 1;
          if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 1, v256 <= objc_msgSend(a2, "length")))
          {
            v257 = [a2 data];
            [v257 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v254 |= (v283 & 0x7F) << v252;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v252 += 7;
          v12 = v253++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_497;
          }
        }

        v22 = (v254 != 0) & ~[a2 hasError];
LABEL_497:
        v282 = 23;
        goto LABEL_506;
      case 0x14u:
        v246 = 0;
        v247 = 0;
        v248 = 0;
        *(a1 + 60) |= 0x80000000000uLL;
        while (1)
        {
          v283 = 0;
          v249 = [a2 position] + 1;
          if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
          {
            v251 = [a2 data];
            [v251 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v248 |= (v283 & 0x7F) << v246;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v246 += 7;
          v12 = v247++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_495;
          }
        }

        v22 = (v248 != 0) & ~[a2 hasError];
LABEL_495:
        v282 = 59;
        goto LABEL_506;
      case 0x15u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 60) |= 0x4000000000uLL;
        while (1)
        {
          v283 = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v283 & 0x7F) << v59;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_433;
          }
        }

        v22 = (v61 != 0) & ~[a2 hasError];
LABEL_433:
        v282 = 54;
        goto LABEL_506;
      case 0x16u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 60) |= 0x100000000uLL;
        while (1)
        {
          v283 = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v283 & 0x7F) << v155;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_465;
          }
        }

        v22 = (v157 != 0) & ~[a2 hasError];
LABEL_465:
        v282 = 48;
        goto LABEL_506;
      case 0x17u:
        v264 = 0;
        v265 = 0;
        v266 = 0;
        *(a1 + 60) |= 0x8000000000uLL;
        while (1)
        {
          v283 = 0;
          v267 = [a2 position] + 1;
          if (v267 >= [a2 position] && (v268 = objc_msgSend(a2, "position") + 1, v268 <= objc_msgSend(a2, "length")))
          {
            v269 = [a2 data];
            [v269 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v266 |= (v283 & 0x7F) << v264;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v264 += 7;
          v12 = v265++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_501;
          }
        }

        v22 = (v266 != 0) & ~[a2 hasError];
LABEL_501:
        v282 = 55;
        goto LABEL_506;
      case 0x18u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 60) |= 0x20000uLL;
        while (1)
        {
          v283 = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v283 & 0x7F) << v71;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_437;
          }
        }

        v22 = (v73 != 0) & ~[a2 hasError];
LABEL_437:
        v282 = 33;
        goto LABEL_506;
      case 0x19u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 60) |= 0x10000000000uLL;
        while (1)
        {
          v283 = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v283 & 0x7F) << v143;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_461;
          }
        }

        v22 = (v145 != 0) & ~[a2 hasError];
LABEL_461:
        v282 = 56;
        goto LABEL_506;
      case 0x1Au:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 60) |= 0x4000uLL;
        while (1)
        {
          v283 = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v283 & 0x7F) << v95;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_445;
          }
        }

        v22 = (v97 != 0) & ~[a2 hasError];
LABEL_445:
        v282 = 30;
        goto LABEL_506;
      case 0x1Bu:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        *(a1 + 60) |= 0x40000uLL;
        while (1)
        {
          v283 = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            v197 = [a2 data];
            [v197 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v194 |= (v283 & 0x7F) << v192;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v192 += 7;
          v12 = v193++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_477;
          }
        }

        v22 = (v194 != 0) & ~[a2 hasError];
LABEL_477:
        v282 = 34;
        goto LABEL_506;
      case 0x1Cu:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 60) |= 0x200uLL;
        while (1)
        {
          v283 = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v283 & 0x7F) << v83;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_441;
          }
        }

        v22 = (v85 != 0) & ~[a2 hasError];
LABEL_441:
        v282 = 25;
        goto LABEL_506;
      case 0x1Du:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 60) |= 0x4000000uLL;
        while (1)
        {
          v283 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v283 & 0x7F) << v47;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_429;
          }
        }

        v22 = (v49 != 0) & ~[a2 hasError];
LABEL_429:
        v282 = 42;
        goto LABEL_506;
      case 0x1Eu:
        v270 = 0;
        v271 = 0;
        v272 = 0;
        *(a1 + 60) |= 0x400uLL;
        while (1)
        {
          v283 = 0;
          v273 = [a2 position] + 1;
          if (v273 >= [a2 position] && (v274 = objc_msgSend(a2, "position") + 1, v274 <= objc_msgSend(a2, "length")))
          {
            v275 = [a2 data];
            [v275 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v272 |= (v283 & 0x7F) << v270;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v270 += 7;
          v12 = v271++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_503;
          }
        }

        v22 = (v272 != 0) & ~[a2 hasError];
LABEL_503:
        v282 = 26;
        goto LABEL_506;
      case 0x1Fu:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 60) |= 0x10000000uLL;
        while (1)
        {
          v283 = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v283 & 0x7F) << v113;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_451;
          }
        }

        v22 = (v115 != 0) & ~[a2 hasError];
LABEL_451:
        v282 = 44;
        goto LABEL_506;
      case 0x20u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 60) |= 0x8000000uLL;
        while (1)
        {
          v283 = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v283 & 0x7F) << v131;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v12 = v132++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_457;
          }
        }

        v22 = (v133 != 0) & ~[a2 hasError];
LABEL_457:
        v282 = 43;
        goto LABEL_506;
      case 0x21u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        *(a1 + 60) |= 0x40uLL;
        while (1)
        {
          v283 = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            v209 = [a2 data];
            [v209 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v283 & 0x7F) << v204;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v12 = v205++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_481;
          }
        }

        v22 = (v206 != 0) & ~[a2 hasError];
LABEL_481:
        v282 = 22;
        goto LABEL_506;
      case 0x22u:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 60) |= 0x20uLL;
        while (1)
        {
          v283 = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v283 & 0x7F) << v137;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_459;
          }
        }

        v22 = (v139 != 0) & ~[a2 hasError];
LABEL_459:
        v282 = 21;
        goto LABEL_506;
      case 0x23u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 60) |= 8uLL;
        while (1)
        {
          v283 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v283 & 0x7F) << v23;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_421;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_421:
        v282 = 19;
        goto LABEL_506;
      case 0x24u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 60) |= 0x400000uLL;
        while (1)
        {
          v283 = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v283 & 0x7F) << v65;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_435;
          }
        }

        v22 = (v67 != 0) & ~[a2 hasError];
LABEL_435:
        v282 = 38;
        goto LABEL_506;
      case 0x25u:
        v240 = 0;
        v241 = 0;
        v242 = 0;
        *(a1 + 60) |= 0x8000uLL;
        while (1)
        {
          v283 = 0;
          v243 = [a2 position] + 1;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 1, v244 <= objc_msgSend(a2, "length")))
          {
            v245 = [a2 data];
            [v245 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v242 |= (v283 & 0x7F) << v240;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v12 = v241++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_493;
          }
        }

        v22 = (v242 != 0) & ~[a2 hasError];
LABEL_493:
        v282 = 31;
        goto LABEL_506;
      case 0x26u:
        v276 = 0;
        v277 = 0;
        v278 = 0;
        *(a1 + 60) |= 0x1000uLL;
        while (1)
        {
          v283 = 0;
          v279 = [a2 position] + 1;
          if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 1, v280 <= objc_msgSend(a2, "length")))
          {
            v281 = [a2 data];
            [v281 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v278 |= (v283 & 0x7F) << v276;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v276 += 7;
          v12 = v277++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_505;
          }
        }

        v22 = (v278 != 0) & ~[a2 hasError];
LABEL_505:
        v282 = 28;
        goto LABEL_506;
      case 0x27u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 60) |= 0x10uLL;
        while (1)
        {
          v283 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v283 & 0x7F) << v41;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_427;
          }
        }

        v22 = (v43 != 0) & ~[a2 hasError];
LABEL_427:
        v282 = 20;
        goto LABEL_506;
      case 0x28u:
        v198 = 0;
        v199 = 0;
        v200 = 0;
        *(a1 + 60) |= 0x1000000000uLL;
        while (1)
        {
          v283 = 0;
          v201 = [a2 position] + 1;
          if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 1, v202 <= objc_msgSend(a2, "length")))
          {
            v203 = [a2 data];
            [v203 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v200 |= (v283 & 0x7F) << v198;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v198 += 7;
          v12 = v199++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_479;
          }
        }

        v22 = (v200 != 0) & ~[a2 hasError];
LABEL_479:
        v282 = 52;
        goto LABEL_506;
      case 0x29u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 60) |= 0x40000000000uLL;
        while (1)
        {
          v283 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v283 & 0x7F) << v35;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_425;
          }
        }

        v22 = (v37 != 0) & ~[a2 hasError];
LABEL_425:
        v282 = 58;
        goto LABEL_506;
      case 0x2Au:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 60) |= 0x200000000uLL;
        while (1)
        {
          v283 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v283 & 0x7F) << v29;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_423;
          }
        }

        v22 = (v31 != 0) & ~[a2 hasError];
LABEL_423:
        v282 = 49;
        goto LABEL_506;
      case 0x2Bu:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 60) |= 0x800000000uLL;
        while (1)
        {
          v283 = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v283 & 0x7F) << v101;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_447;
          }
        }

        v22 = (v103 != 0) & ~[a2 hasError];
LABEL_447:
        v282 = 51;
        goto LABEL_506;
      case 0x2Cu:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 60) |= 0x80000000uLL;
        while (1)
        {
          v283 = 0;
          v176 = [a2 position] + 1;
          if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
          {
            v178 = [a2 data];
            [v178 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v175 |= (v283 & 0x7F) << v173;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v173 += 7;
          v12 = v174++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_471;
          }
        }

        v22 = (v175 != 0) & ~[a2 hasError];
LABEL_471:
        v282 = 47;
        goto LABEL_506;
      case 0x2Du:
        v258 = 0;
        v259 = 0;
        v260 = 0;
        *(a1 + 60) |= 2uLL;
        while (1)
        {
          v283 = 0;
          v261 = [a2 position] + 1;
          if (v261 >= [a2 position] && (v262 = objc_msgSend(a2, "position") + 1, v262 <= objc_msgSend(a2, "length")))
          {
            v263 = [a2 data];
            [v263 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v260 |= (v283 & 0x7F) << v258;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v258 += 7;
          v12 = v259++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_499;
          }
        }

        v22 = (v260 != 0) & ~[a2 hasError];
LABEL_499:
        v282 = 17;
        goto LABEL_506;
      case 0x2Eu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 60) |= 4uLL;
        while (1)
        {
          v283 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v283 & 0x7F) << v16;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_419;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_419:
        v282 = 18;
        goto LABEL_506;
      case 0x2Fu:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 60) |= 1uLL;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v283 = 0;
      v56 = [a2 position] + 1;
      if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
      {
        v58 = [a2 data];
        [v58 getBytes:&v283 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v55 |= (v283 & 0x7F) << v53;
      if ((v283 & 0x80) == 0)
      {
        break;
      }

      v53 += 7;
      v12 = v54++ >= 9;
      if (v12)
      {
        LOBYTE(v22) = 0;
        goto LABEL_431;
      }
    }

    v22 = (v55 != 0) & ~[a2 hasError];
LABEL_431:
    v282 = 16;
LABEL_506:
    *(a1 + v282) = v22;
  }

  return [a2 hasError] ^ 1;
}

void sub_19BD02078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35562(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BD062B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD0B634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_19BD0CB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD1D3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 144));
  _Unwind_Resume(a1);
}

void sub_19BD1EE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 160));
  _Unwind_Resume(a1);
}

void sub_19BD20578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD2416C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD247C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD24CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD2565C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD2BE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMAccessoryTransportTypesToString(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"IP"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"BluetoothLE"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"WAC"];
  if ((a1 & 0x10) != 0)
  {
LABEL_5:
    [v3 addObject:@"AirPlay"];
  }

LABEL_6:
  v4 = [v3 componentsJoinedByString:@""];;

  return v4;
}

__CFString *HMAccessoryCertificationStatusToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Not Certified";
  }

  if (a1 == 2)
  {
    return @"Certified";
  }

  else
  {
    return v1;
  }
}

__CFString *HMAccessoryLinkQualityToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E754B5E0[a1 - 1];
  }
}

uint64_t HMAccessoryInfoProtoWifiNetworkInfoEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 32;
        }

LABEL_51:
        v31 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_52;
      }

      if (v13 == 6)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 60) |= 1u;
        while (1)
        {
          v34 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v34 & 0x7F) << v24;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_57:
        *(a1 + 40) = v30;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_38:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_52;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 60) |= 2u;
        while (1)
        {
          v35 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v35 & 0x7F) << v16;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_59;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_59:
        *(a1 + 56) = v22;
      }

LABEL_52:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v14 = PBReaderReadString();
        v15 = 8;
        break;
      case 2:
        v14 = PBReaderReadString();
        v15 = 48;
        break;
      case 3:
        v14 = PBReaderReadString();
        v15 = 24;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMAccessoryInfoProtoSoftwareVersionInfoEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v39 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v39 & 0x7F) << v30;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v32;
        }

LABEL_63:
        v36 = 24;
LABEL_64:
        *(a1 + v36) = v20;
        goto LABEL_65;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_65;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 32);
      *(a1 + 32) = v21;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v41 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v41 & 0x7F) << v24;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }

LABEL_59:
      v36 = 8;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        v40 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v40 & 0x7F) << v14;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_55:
      v36 = 16;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

void sub_19BD33754(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_19BD33A58(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_19BD33DE0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_19BD340E4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMAccessorySettingsPartialFetchFailureTypeToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown type (%@)", v3];
  }

  else
  {
    v1 = off_1E754B800[a1];
  }

  return v1;
}

__CFString *HMCameraHomePresenceAsString(uint64_t a1)
{
  if (a1 == 3)
  {
    v2 = @"HMCameraHomePresenceHome";
  }

  else if (a1 == 4)
  {
    v2 = @"HMCameraHomePresenceNotAtHome";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMCameraHomePresence %tu", a1];
  }

  return v2;
}

__CFString *HMCameraAccessModeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid value: %lu", a1];
  }

  else
  {
    v2 = off_1E754B9A0[a1];
  }

  return v2;
}

uint64_t HMCameraSignificantEventTypesFromReasons(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) unsignedIntegerValue];
        if (v7 <= 2)
        {
          if (v7 == 1)
          {
            v4 |= 1uLL;
          }

          else if (v7 == 2)
          {
            v4 |= 2uLL;
          }
        }

        else
        {
          switch(v7)
          {
            case 3:
              v4 |= 4uLL;
              break;
            case 4:
              v4 |= 8uLL;
              break;
            case 5:
              v4 |= 0x10uLL;
              break;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t HMUserActionPredictionDuetPredictionStoreReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3))
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v13 = objc_alloc_init(HMUserActionPredictionDuetPredictionValue);
        [a1 addPrediction:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMUserActionPredictionDuetPredictionValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMPresenceEventActivationGranularityAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"HMPresenceEventActivationGranularityUser";
  }

  else if (a1 == 2)
  {
    v2 = @"HMPresenceEventActivationGranularityHome";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMPresenceEventActivationGranularity %tu", a1];
  }

  return v2;
}

uint64_t HMRemoteEventRouterProtoServerDiagnosticInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41[0] & 0x7F) << v5;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v41[0] & 0x7F) << v22;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
        }

LABEL_61:
        v37 = 32;
LABEL_70:
        *(a1 + v37) = v21;
        goto LABEL_73;
      }

      if (v13 == 4)
      {
        *(a1 + 40) |= 1u;
        v41[0] = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v41[0];
        goto LABEL_73;
      }

      if (v13 != 11)
      {
        goto LABEL_56;
      }

      v14 = objc_alloc_init(HMRemoteEventRouterProtoConnectedClientInfo);
      [a1 addConnectedClients:v14];
      v41[0] = 0;
      v41[1] = 0;
      if (!PBReaderPlaceMark() || !HMRemoteEventRouterProtoConnectedClientInfoReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_73:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v41[0] & 0x7F) << v30;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v36 = 0;
      }

      else
      {
        v36 = v32;
      }

LABEL_65:
      *(a1 + 16) = v36;
      goto LABEL_73;
    }

    if (v13 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 40) |= 8u;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v41[0] & 0x7F) << v15;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_69;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_69:
      v37 = 36;
      goto LABEL_70;
    }

LABEL_56:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_73;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMPBHomeReferenceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_19BD45D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40884(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke_40995(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary_40997)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke_40998;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E754BB88;
    v8 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary_40997 = _sl_dlopen();
    v3 = v6[0];
    v2 = CoreAnalyticsLibraryCore_frameworkLibrary_40997;
    if (CoreAnalyticsLibraryCore_frameworkLibrary_40997)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary_40997;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr_40994 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_40998(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary_40997 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BD4BBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD4C06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD4C27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD4C680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD4CF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD4F4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD4F854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSFDeviceClass_block_invoke(uint64_t a1)
{
  SharingLibrary();
  result = objc_getClass("SFDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __28__HMSymptomFixSession_start__block_invoke(v3);
  }

  return result;
}

void SharingLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!SharingLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __SharingLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E754BD50;
    v4 = 0;
    SharingLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (SharingLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __SharingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SharingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BD51A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSFDeviceRepairSessionClass_block_invoke(uint64_t a1)
{
  SharingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFDeviceRepairSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFDeviceRepairSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(HMSetting *)v2 .cxx_destruct];
  }
}

uint64_t HMImmutableSettingsProtoBoundedIntegerSettingEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v37[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v37[0] & 0x7F) << v14;
            if ((v37[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_57;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_57:
          v34 = 16;
LABEL_66:
          *(a1 + v34) = v20;
          goto LABEL_67;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_67;
      }

      v27 = objc_alloc_init(HMImmutableSettingsProtoIntegerValueEvent);
      objc_storeStrong((a1 + 32), v27);
      v37[0] = 0;
      v37[1] = 0;
      if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoIntegerValueEventReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v37[0] & 0x7F) << v28;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v30;
      }

LABEL_65:
      v34 = 8;
      goto LABEL_66;
    }

    if (v13 == 4)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v37[0] & 0x7F) << v21;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v23;
      }

LABEL_61:
      v34 = 24;
      goto LABEL_66;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMPBCommandContainerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadData();
            v15 = 24;
            goto LABEL_34;
          case 5:
            v14 = PBReaderReadData();
            v15 = 48;
            goto LABEL_34;
          case 6:
            v16 = objc_alloc_init(HMPBAccessoryReference);
            objc_storeStrong((a1 + 8), v16);
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !HMPBAccessoryReferenceReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadData();
            v15 = 32;
            goto LABEL_34;
          case 2:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_34;
          case 3:
            v14 = PBReaderReadData();
            v15 = 16;
LABEL_34:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;
LABEL_35:

            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMAccessoryInfoProtoAirportInfoEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___HMAccessoryInfoProtoAirportInfoEvent__bssid;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HMAccessoryInfoProtoAirportInfoEvent__ssid;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMStringFromIntentRequestType(uint64_t a1)
{
  v1 = @"execute";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"confirm";
  }
}

void sub_19BD5C570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD5EBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  os_unfair_lock_unlock(v7 + 2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44336(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMImmutableSettingTypeAsString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"UnknownType(%@)", v3];
  }

  else
  {
    v1 = off_1E754BF28[a1];
  }

  return v1;
}

void sub_19BD69CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD6C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IDSFoundationLibraryCore_45308()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!IDSFoundationLibraryCore_frameworkLibrary_45310)
  {
    IDSFoundationLibraryCore_frameworkLibrary_45310 = _sl_dlopen();
  }

  result = IDSFoundationLibraryCore_frameworkLibrary_45310;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getIDSURIClass_block_invoke(uint64_t a1)
{
  if (!IDSFoundationLibraryCore_45308())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("IDSURI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIDSURIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = abort_report_np();
    return __IDSFoundationLibraryCore_block_invoke_45311(v4);
  }

  return result;
}

uint64_t __IDSFoundationLibraryCore_block_invoke_45311(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IDSFoundationLibraryCore_frameworkLibrary_45310 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BD6D0EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_19BD6DC04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_19BD6E8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD703CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD71E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BD726B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIKitLibraryCore_45531()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!UIKitLibraryCore_frameworkLibrary_45544)
  {
    UIKitLibraryCore_frameworkLibrary_45544 = _sl_dlopen();
  }

  result = UIKitLibraryCore_frameworkLibrary_45544;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getNSDocumentTypeDocumentAttributeSymbolLoc_block_invoke_45534(uint64_t a1)
{
  v2 = UIKitLibrary_45535();
  result = dlsym(v2, "NSDocumentTypeDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_45533 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibrary_45535()
{
  v0 = UIKitLibraryCore_45531();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getNSHTMLTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_45535();
  result = dlsym(v2, "NSHTMLTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSHTMLTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSCharacterEncodingDocumentAttributeSymbolLoc_block_invoke_45540(uint64_t a1)
{
  v2 = UIKitLibrary_45535();
  result = dlsym(v2, "NSCharacterEncodingDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_45539 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_45545(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_45544 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *HMStringFromCameraSignificantEventConfidenceLevel(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = @"low";

      break;
    case 100:
      v2 = @"high";

      break;
    case 50:
      v2 = @"medium";

      break;
    default:
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown type: %lu", a1];

      break;
  }

  return v2;
}

__CFString *HMStringFromCameraSignificantEventReason(uint64_t a1)
{
  if ((a1 - 1) >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown type: %lu", a1];
  }

  else
  {
    v2 = off_1E754C220[a1 - 1];
  }

  return v2;
}

uint64_t HMAccessoryInfoProtoSleepWakeStateEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMPBMetadataCharacteristicReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___HMPBMetadataCharacteristic__chrDescription;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HMPBMetadataCharacteristic__uuidStr;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 11)
      {
        if (v13 <= 13)
        {
          if (v13 == 12)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addVisibleIDSDevices:v14];
            }

            goto LABEL_61;
          }

          if (v13 == 13)
          {
            v14 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo);
            [a1 addNetworkVisibleDeviceInfos:v14];
            goto LABEL_55;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xE:
              v14 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo);
              [a1 addProximityVisibleDeviceInfos:v14];
LABEL_55:
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !HMAccessoryDiagnosticInfoProtoVisibleDeviceInfoReadFrom(v14, a2))
              {
LABEL_84:

                return 0;
              }

              goto LABEL_60;
            case 0xF:
              v22 = 0;
              v23 = 0;
              v24 = 0;
              *(a1 + 88) |= 1u;
              while (1)
              {
                LOBYTE(v31) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v31 & 0x7F) << v22;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_80;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v24;
              }

LABEL_80:
              v28 = 8;
              goto LABEL_81;
            case 0x10:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              *(a1 + 88) |= 2u;
              while (1)
              {
                LOBYTE(v31) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v31 & 0x7F) << v15;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_76;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v17;
              }

LABEL_76:
              v28 = 16;
LABEL_81:
              *(a1 + v28) = v21;
              goto LABEL_82;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(HMAccessoryInfoProtoWifiNetworkInfoEvent);
          objc_storeStrong((a1 + 80), v14);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !HMAccessoryInfoProtoWifiNetworkInfoEventReadFrom(v14, a2))
          {
            goto LABEL_84;
          }

          goto LABEL_60;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(HMAccessoryInfoProtoNetworkInfoEvent);
          [a1 addNetworkInfo:v14];
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !HMAccessoryInfoProtoNetworkInfoEventReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_84;
          }

          goto LABEL_60;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(HMAccessoryInfoProtoNetworkServiceEvent);
            [a1 addNetworkServiceInfo:v14];
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HMAccessoryInfoProtoNetworkServiceEventReadFrom(v14, a2))
            {
              goto LABEL_84;
            }

            goto LABEL_60;
          case 6:
            v14 = objc_alloc_init(HMRemoteEventRouterProtoServerDiagnosticInfo);
            objc_storeStrong((a1 + 24), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HMRemoteEventRouterProtoServerDiagnosticInfoReadFrom(v14, a2))
            {
              goto LABEL_84;
            }

            goto LABEL_60;
          case 0xB:
            v14 = objc_alloc_init(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo);
            [a1 addVisibleAccessoriesInfo:v14];
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfoReadFrom(v14, a2))
            {
              goto LABEL_84;
            }

LABEL_60:
            PBReaderRecallMark();
LABEL_61:

            goto LABEL_82;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMXPCEventRouterProtoEventsMessageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69A4608]);
        [a1 addCachedEvents:v13];
      }

      else
      {
        if ((v12 >> 3) != 2)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(MEMORY[0x1E69A4608]);
        [a1 addEvents:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMSoftwareUpdateEventProtoSoftwareUpdateDescriptorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v64 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v64 & 0x7F) << v5;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          if (v13 != 10)
          {
            if (v13 == 11)
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              *(a1 + 100) |= 0x40u;
              while (1)
              {
                v71 = 0;
                v57 = [a2 position] + 1;
                if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
                {
                  v59 = [a2 data];
                  [v59 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v56 |= (v71 & 0x7F) << v54;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v11 = v55++ >= 9;
                if (v11)
                {
                  LOBYTE(v60) = 0;
                  goto LABEL_131;
                }
              }

              v60 = (v56 != 0) & ~[a2 hasError];
LABEL_131:
              *(a1 + 96) = v60;
              goto LABEL_128;
            }

            if (v13 != 12)
            {
LABEL_101:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_128;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 100) |= 2u;
            while (1)
            {
              v65 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v65 & 0x7F) << v29;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v31;
            }

LABEL_114:
            v62 = 16;
            goto LABEL_127;
          }

          v14 = PBReaderReadString();
          v15 = 64;
        }

        else
        {
          if (v13 == 7)
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 100) |= 0x20u;
            while (1)
            {
              v67 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v67 & 0x7F) << v41;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_122;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v43;
            }

LABEL_122:
            v62 = 48;
            goto LABEL_127;
          }

          if (v13 != 8)
          {
            if (v13 != 9)
            {
              goto LABEL_101;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 100) |= 1u;
            while (1)
            {
              v66 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v66 & 0x7F) << v16;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_106;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_106:
            v62 = 8;
            goto LABEL_127;
          }

          v14 = PBReaderReadString();
          v15 = 56;
        }
      }

      else if (v13 > 3)
      {
        if (v13 != 4)
        {
          if (v13 == 5)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 100) |= 4u;
            while (1)
            {
              v69 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v69 & 0x7F) << v48;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_126;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v50;
            }

LABEL_126:
            v62 = 24;
          }

          else
          {
            if (v13 != 6)
            {
              goto LABEL_101;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 100) |= 8u;
            while (1)
            {
              v68 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v68 & 0x7F) << v23;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_110;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_110:
            v62 = 32;
          }

          goto LABEL_127;
        }

        v14 = PBReaderReadData();
        v15 = 80;
      }

      else
      {
        switch(v13)
        {
          case 1:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 100) |= 0x10u;
            while (1)
            {
              v70 = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v70 & 0x7F) << v35;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v37;
            }

LABEL_118:
            v62 = 40;
LABEL_127:
            *(a1 + v62) = v22;
            goto LABEL_128;
          case 2:
            v14 = PBReaderReadString();
            v15 = 88;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 72;
            break;
          default:
            goto LABEL_101;
        }
      }

      v47 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_128:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMMediaGroupProtoMediaGroupDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_47;
          case 2:
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_47;
          case 3:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_47;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v23 = objc_alloc_init(HMMediaGroupProtoMediaGroupRole);
          objc_storeStrong((a1 + 24), v23);
          v27[0] = 0;
          v27[1] = 0;
          if (!PBReaderPlaceMark() || !HMMediaGroupProtoMediaGroupRoleReadFrom(v23, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_45;
        }

        if (v13 == 7)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27[0] & 0x7F) << v16;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_51;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_51:
          *(a1 + 56) = v22;
          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v23 = PBReaderReadString();
          if (v23)
          {
            [a1 addDestinationIdentifiers:v23];
          }

LABEL_45:

          goto LABEL_48;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 8;
LABEL_47:
          v24 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __secureDescription(void *a1, char a2)
{
  v3 = a1;
  v15 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v17 = a2;
  if (a2)
  {
    v18 = &stru_1F0E92498;
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %p", v3];
  }

  v16 = [v3 releaseNotesSummary];
  v5 = HMFBooleanToString();
  v6 = [v3 releaseNotes];
  v7 = HMFBooleanToString();
  v8 = [v3 textReleaseNotes];
  v9 = HMFBooleanToString();
  v10 = [v3 licenseAgreement];
  v11 = HMFBooleanToString();
  v12 = [v3 licenseAgreementVersion];
  v13 = [v15 stringWithFormat:@"<%@%@, Summary = %@, Release Notes = %@, Text Release Notes = %@, License = %@, License Version = %@>", v4, v18, v5, v7, v9, v11, v12];

  if ((v17 & 1) == 0)
  {
  }

  return v13;
}

void sub_19BD934E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMAccessoryInfoProtoNetworkInfoEventReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addIpv4Addresses:v16];
            }

            goto LABEL_35;
          case 5:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addIpv6Addresses:v16];
            }

            goto LABEL_35;
          case 6:
            v16 = objc_alloc_init(HMAccessoryInfoProtoAirportInfoEvent);
            objc_storeStrong(a1 + 6, v16);
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !HMAccessoryInfoProtoAirportInfoEventReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 1;
            goto LABEL_34;
          case 2:
            v14 = PBReaderReadString();
            v15 = 4;
            goto LABEL_34;
          case 3:
            v14 = PBReaderReadString();
            v15 = 5;
LABEL_34:
            v16 = a1[v15];
            a1[v15] = v14;
LABEL_35:

            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMImmutableSettingsProtoLanguageValueEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E754C788[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMImmutableSettingsProtoValueEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 1)
      {
        if (!v13)
        {
          v15 = 0;
          while (1)
          {
            LOBYTE(v22) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v22 & 0x80000000) == 0)
            {
              break;
            }

            if (v15++ > 8)
            {
              goto LABEL_47;
            }
          }

          [a2 hasError];
          goto LABEL_47;
        }

        if (v13 == 1)
        {
          [a1 clearOneofValuesForSettingValueEvent];
          *(a1 + 48) |= 1u;
          *(a1 + 32) = 1;
          v14 = objc_alloc_init(HMImmutableSettingsProtoStringValueEvent);
          objc_storeStrong((a1 + 40), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoStringValueEventReadFrom(v14, a2))
          {
LABEL_49:

            return 0;
          }

          goto LABEL_34;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            [a1 clearOneofValuesForSettingValueEvent];
            *(a1 + 48) |= 1u;
            *(a1 + 32) = 2;
            v14 = objc_alloc_init(HMImmutableSettingsProtoIntegerValueEvent);
            objc_storeStrong((a1 + 16), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoIntegerValueEventReadFrom(v14, a2))
            {
              goto LABEL_49;
            }

            goto LABEL_34;
          case 3:
            [a1 clearOneofValuesForSettingValueEvent];
            *(a1 + 48) |= 1u;
            *(a1 + 32) = 3;
            v14 = objc_alloc_init(HMImmutableSettingsProtoBoolValueEvent);
            objc_storeStrong((a1 + 8), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoBoolValueEventReadFrom(v14, a2))
            {
              goto LABEL_49;
            }

            goto LABEL_34;
          case 4:
            [a1 clearOneofValuesForSettingValueEvent];
            *(a1 + 48) |= 1u;
            *(a1 + 32) = 4;
            v14 = objc_alloc_init(HMImmutableSettingsProtoLanguageValueEvent);
            objc_storeStrong((a1 + 24), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoLanguageValueEventReadFrom(v14, a2))
            {
              goto LABEL_49;
            }

LABEL_34:
            PBReaderRecallMark();

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMSettingConstraintTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E754C8F0[a1 - 1];
  }
}

void sub_19BDA4DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMLocationAuthorizationAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown auth: %ld", a1];
  }

  else
  {
    v2 = off_1E754CA08[a1];
  }

  return v2;
}

__CFString *HMRegionStateString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown region state: %ld", a1];
  }

  else
  {
    v2 = off_1E754CA20[a1];
  }

  return v2;
}

__CFString *HMCLAuthorizationStatusAsString(unsigned int a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown location authorization: %ld", a1];
  }

  else
  {
    v2 = off_1E754CA38[a1];
  }

  return v2;
}

__CFString *HMCLRegionStateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown region state: %ld", a1];
  }

  else
  {
    v2 = off_1E754CA60[a1];
  }

  return v2;
}

uint64_t HMIsValidRegion(void *a1)
{
  v1 = a1;
  if (v1 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    if ([v1 notifyOnEntry])
    {
      v2 = 1;
    }

    else
    {
      v2 = [v1 notifyOnExit];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t HMSoftwareUpdateEventProtoSoftwareUpdateProgressReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v22 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v22;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 20) |= 2u;
        v21 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v21 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v21;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_19BDABA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock((v7 + v8));
  _Unwind_Resume(a1);
}

uint64_t WorkflowKitLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = WorkflowKitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getWFHomeWorkflowClass_block_invoke(uint64_t a1)
{
  if (!WorkflowKitLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("WFHomeWorkflow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeWorkflowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = abort_report_np();
    return __WorkflowKitLibraryCore_block_invoke(v4);
  }

  return result;
}

uint64_t __WorkflowKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t scheduleEntryComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 weekday];
  if (v6 > [v5 weekday])
  {
    goto LABEL_2;
  }

  v8 = [v4 weekday];
  if (v8 < [v5 weekday])
  {
LABEL_4:
    v7 = -1;
    goto LABEL_5;
  }

  v10 = [v4 hour];
  if (v10 > [v5 hour])
  {
    goto LABEL_2;
  }

  v11 = [v4 hour];
  if (v11 < [v5 hour])
  {
    goto LABEL_4;
  }

  v12 = [v4 minute];
  if (v12 > [v5 minute])
  {
LABEL_2:
    v7 = 1;
    goto LABEL_5;
  }

  v13 = [v4 minute];
  if (v13 >= [v5 minute])
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

LABEL_5:

  return v7;
}

__CFString *HMAccessoryBatteryStatusToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Low";
  }

  if (a1 == 2)
  {
    return @"Normal";
  }

  else
  {
    return v1;
  }
}

__CFString *HMDeviceSetupSessionStateAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state (%@)", v3];
  }

  else
  {
    v1 = off_1E754CDB8[a1];
  }

  return v1;
}

void sub_19BDB7BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMImmutableSettingsProtoLanguageSettingEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HMImmutableSettingsProtoLanguageValueEvent);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoLanguageValueEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __validateAccessories(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

__CFString *HMAssistantAccessControlOptionsToString(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Allow Unauthenticated Requests"];
    }

    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"None";
  }

  return v4;
}

void sub_19BDC1D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDC2448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDC37E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDC44AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL HMActionSetTypeIsHomeOwned(void *a1)
{
  v1 = a1;
  v2 = ([@"HMActionSetTypeUserDefined" isEqualToString:v1] & 1) != 0 || +[HMActionSet isBuiltinActionSetType:](HMActionSet, "isBuiltinActionSetType:", v1);

  return v2;
}

void HMProxify(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_9;
  }

  if (HMProxify_once != -1)
  {
    dispatch_once(&HMProxify_once, &__block_literal_global_56092);
  }

  v2 = objc_opt_self();
  Class = object_getClass(a1);
  v4 = [(objc_class *)Class instanceMethodForSelector:sel_dealloc];
  if (v4 != HMProxify_defaultDealloc)
  {
    if (isInternalBuild())
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be safely proxified, has custom dealloc method", Class, v14, v15];
      goto LABEL_20;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v17 = HMFGetLogIdentifier();
      v18 = 2112;
      v19 = Class;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_FAULT, "%{public}@%@ cannot be safely proxified, has custom dealloc method (proceeding anyway)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  InstanceSize = class_getInstanceSize(Class);
  if (InstanceSize >= HMProxify_proxyClassIVarSize)
  {
    objc_destructInstance(a1);
    object_setClass(a1, HMProxify_proxyClassIVar);
    a1[1] = v2;
    goto LABEL_9;
  }

  if (InstanceSize >= HMProxify_proxyClassAssocSize)
  {
    objc_destructInstance(a1);
    object_setClass(a1, HMProxify_proxyClassAssoc);
    objc_setAssociatedObject(a1, &HMProxyObjectAssocTargetKey, v2, 1);
    goto LABEL_9;
  }

  v9 = InstanceSize;
  if (isInternalBuild())
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be proxified, instance size too small (%zu < %zu)", Class, v9, HMProxify_proxyClassAssocSize];
LABEL_20:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  v10 = objc_autoreleasePoolPush();
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138544130;
    v17 = v12;
    v18 = 2112;
    v19 = Class;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = HMProxify_proxyClassAssocSize;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_FAULT, "%{public}@%@ cannot be proxified, instance size too small (%zu < %zu)", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __HMProxify_block_invoke()
{
  HMProxify_proxyClassIVar = objc_opt_class();
  HMProxify_proxyClassIVarSize = class_getInstanceSize(HMProxify_proxyClassIVar);
  HMProxify_proxyClassAssoc = objc_opt_class();
  HMProxify_proxyClassAssocSize = class_getInstanceSize(HMProxify_proxyClassAssoc);
  result = [MEMORY[0x1E69E58C0] instanceMethodForSelector:sel_dealloc];
  HMProxify_defaultDealloc = result;
  return result;
}

uint64_t HMAccessoryDiagnosticInfoProtoCloudInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_54;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_54:
        *(a1 + 16) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_52:
          v35 = 12;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_60;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_58:
          v35 = 8;
        }

        *(a1 + v35) = v20;
      }

LABEL_60:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMImmutableSettingsProtoSettingChangeEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 11)
      {
        if (v13 > 13)
        {
          if (v13 == 14)
          {
            [a1 clearOneofValuesForSettingChangeEvent];
            *(a1 + 68) |= 1u;
            *(a1 + 48) = 4;
            v16 = objc_alloc_init(HMImmutableSettingsProtoLanguageSettingEvent);
            objc_storeStrong((a1 + 40), v16);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoLanguageSettingEventReadFrom(v16, a2))
            {
LABEL_70:

              return 0;
            }

            goto LABEL_61;
          }

          if (v13 == 15)
          {
            [a1 clearOneofValuesForSettingChangeEvent];
            *(a1 + 68) |= 1u;
            *(a1 + 48) = 5;
            v16 = objc_alloc_init(HMImmutableSettingsProtoAvailableLanguageListEvent);
            objc_storeStrong((a1 + 8), v16);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoAvailableLanguageListEventReadFrom(v16, a2))
            {
              goto LABEL_70;
            }

            goto LABEL_61;
          }
        }

        else
        {
          if (v13 == 12)
          {
            [a1 clearOneofValuesForSettingChangeEvent];
            *(a1 + 68) |= 1u;
            *(a1 + 48) = 2;
            v16 = objc_alloc_init(HMImmutableSettingsProtoBoundedIntegerSettingEvent);
            objc_storeStrong((a1 + 24), v16);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoBoundedIntegerSettingEventReadFrom(v16, a2))
            {
              goto LABEL_70;
            }

            goto LABEL_61;
          }

          if (v13 == 13)
          {
            [a1 clearOneofValuesForSettingChangeEvent];
            *(a1 + 68) |= 1u;
            *(a1 + 48) = 3;
            v16 = objc_alloc_init(HMImmutableSettingsProtoBoolSettingEvent);
            objc_storeStrong((a1 + 16), v16);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoBoolSettingEventReadFrom(v16, a2))
            {
              goto LABEL_70;
            }

            goto LABEL_61;
          }
        }
      }

      else if (v13 > 1)
      {
        if (v13 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31 & 0x7F) << v22;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_68;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_68:
          *(a1 + 64) = v28;
          goto LABEL_62;
        }

        if (v13 == 11)
        {
          [a1 clearOneofValuesForSettingChangeEvent];
          *(a1 + 68) |= 1u;
          *(a1 + 48) = 1;
          v16 = objc_alloc_init(HMImmutableSettingsProtoStringSettingEvent);
          objc_storeStrong((a1 + 56), v16);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoStringSettingEventReadFrom(v16, a2))
          {
            goto LABEL_70;
          }

LABEL_61:
          PBReaderRecallMark();

          goto LABEL_62;
        }
      }

      else
      {
        if (!v13)
        {
          v17 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v31 & 0x80000000) == 0)
            {
              break;
            }

            if (v17++ > 8)
            {
              goto LABEL_62;
            }
          }

          [a2 hasError];
          goto LABEL_62;
        }

        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 32);
          *(a1 + 32) = v14;

          goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMAccessoryInfoProtoMediaStateEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v42 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v43 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v43 & 0x7F) << v23;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_59:
          v38 = 16;
LABEL_68:
          *(a1 + v38) = v22;
          break;
        case 4:
          *(a1 + 48) |= 8u;
          v41 = 0;
          v29 = [a2 position] + 8;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 32) = v41;
          break;
        case 5:
          v14 = PBReaderReadString();
          v15 = *(a1 + 40);
          *(a1 + 40) = v14;

          break;
        default:
          goto LABEL_54;
      }

LABEL_71:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 48) |= 1u;
      while (1)
      {
        v45 = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v45 & 0x7F) << v31;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v33;
      }

LABEL_63:
      v38 = 8;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_54:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_71;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 48) |= 4u;
      while (1)
      {
        v44 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v44 & 0x7F) << v16;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_67;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_67:
      v38 = 24;
    }

    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMImmutableSettingsProtoStringValueEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HMAccessoryInfoProtoPublicPairingIdentity);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HMAccessoryInfoProtoPublicPairingIdentityReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMHomeAddWalletKeyErrorCodeAsString(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown add wallet key error code: %ld", a1];
  }

  else
  {
    v2 = off_1E754D180[a1];
  }

  return v2;
}

uint64_t HMPBCharacteristicWriteActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 6)
      {
        break;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadData();
        v15 = 24;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = 8;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(HMPBCharacteristicReference);
    objc_storeStrong((a1 + 16), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !HMPBCharacteristicReferenceReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMAccessoryDiagnosticInfoProtoVisibleDeviceInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo__mediaRouteIdString;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo__idsIdentifierString;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_19BDD4B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDD53CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDD5FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak((v30 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDD6CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDD7888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDD868C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDDBA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDDBCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_19BDDD904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __validateItem(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 1;
  if (v5 && v6)
  {
    v9 = [v6 value];
    [v5 itemValueClasses];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v25 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          if (objc_opt_isKindOfClass())
          {
            v8 = 1;
            v18 = v10;
            goto LABEL_14;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if (a3)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = MEMORY[0x1E696AEC0];
      v18 = [v7 value];
      v19 = [v17 stringWithFormat:@"Item value class, %@, is not in expected classes: %@", objc_opt_class(), v10, v22];
      *a3 = [v16 hmErrorWithCode:22 description:@"Invalid value class." reason:v19 suggestion:0];

      v8 = 0;
LABEL_14:
    }

    else
    {
      v8 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

id __constraintsForItems(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DFD8];
  v5 = [a1 internal];
  v6 = [v5 constraints];
  v7 = [v4 setWithArray:v6];

  v8 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [HMAccessorySettingConstraint alloc];
        v16 = [(HMAccessorySettingConstraint *)v15 initWithType:4 value:v14, v22];
        v17 = [v7 member:v16];
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        [v8 addObject:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = [v8 array];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void sub_19BDDE7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id location)
{
  objc_destroyWeak((v53 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BDDEEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void sub_19BDDF40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, id a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

uint64_t HMAccessorySettingTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"data"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"number"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"string"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"selection"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"collection"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *HMAccessorySettingTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E754D9A8[a1 - 1];
  }
}

uint64_t HMAccessorySettingPropertiesFromString(void *a1)
{
  v1 = a1;
  v2 = [v1 containsString:@"r"];
  v3 = [v1 containsString:@"w"];

  if (v3)
  {
    return v2 | 2;
  }

  else
  {
    return v2;
  }
}

id HMAccessorySettingPropertiesToString(char a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"r"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 appendString:@"w"];
  }

  return v3;
}

__CFString *HMServiceConfigurationStateAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown value: %ld>", a1];
  }

  else
  {
    v2 = off_1E754DB88[a1];
  }

  return v2;
}

__CFString *HMServiceOperatingStateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMServiceOperatingState %ld", a1];
  }

  else
  {
    v2 = off_1E754DB70[a1];
  }

  return v2;
}

__CFString *HMServiceOperatingStateAbnormalReasonsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_11;
    }

    switch(v3)
    {
      case 1:
        v5 = @"HMServiceOperatingStateAbnormalReasonOther";
        break;
      case 4:
        v5 = @"HMServiceOperatingStateAbnormalReasonHighTemperature";
        break;
      case 2:
        v5 = @"HMServiceOperatingStateAbnormalReasonLowTemperature";
        break;
      default:
        goto LABEL_11;
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_11:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMServiceOperatingStateAbnormalReasons %lu", v4];
    [v2 addObject:v6];
  }

LABEL_14:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HMSiriEndpointProfileSessionStateTypeToString(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown (%@)", v3];
  }

  else
  {
    v1 = off_1E754DC90[a1 + 1];
  }

  return v1;
}

__CFString *HMSiriEndpointProfileCapabilityToString(unint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = v2;
    if (a1)
    {
      [v2 addObject:@"Needs Onboarding"];
    }

    if ((a1 & 2) != 0)
    {
      [v3 addObject:@"Supports Onboarding"];
    }

    v4 = [v3 count];
    if (a1 > 3 || !v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
      v7 = [v5 stringWithFormat:@"Unknown (%@)", v6];
      [v3 addObject:v7];
    }

    v8 = [v3 componentsJoinedByString:@"/"];
  }

  else
  {
    v8 = @"None";
  }

  return v8;
}

__CFString *HMSiriEndpointProfileMultifunctionButtonTypeToString(uint64_t a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown (%@)", v3];
  }

  else
  {
    v1 = off_1E754DCB8[a1 + 1];
  }

  return v1;
}

__CFString *HMActionTypeAsString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown action type: %lu", a1];
  }

  else
  {
    v2 = off_1E754DCD0[a1];
  }

  return v2;
}

id HMClassForActionType(unint64_t a1)
{
  if (a1 > 5)
  {
    v3 = 0;
  }

  else
  {
    v2 = *off_1E754DD00[a1];
    v3 = objc_opt_class();
  }

  return v3;
}

uint64_t HMImmutableSettingsProtoStringSettingEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HMImmutableSettingsProtoStringValueEvent);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMImmutableSettingsProtoStringValueEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMPBActionContainerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_49;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_49:
          *(a1 + 40) = v21;
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(HMPBCharacteristicWriteAction);
          objc_storeStrong((a1 + 8), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !HMPBCharacteristicWriteActionReadFrom(v14, a2))
          {
LABEL_52:

            return 0;
          }

          goto LABEL_34;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(HMPBMediaPlaybackAction);
            objc_storeStrong((a1 + 16), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !HMPBMediaPlaybackActionReadFrom(v14, a2))
            {
              goto LABEL_52;
            }

            goto LABEL_34;
          case 4:
            v14 = objc_alloc_init(HMPBNaturalLightingAction);
            objc_storeStrong((a1 + 32), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !HMPBNaturalLightingActionReadFrom(v14, a2))
            {
              goto LABEL_52;
            }

            goto LABEL_34;
          case 5:
            v14 = objc_alloc_init(HMPBMatterCommandAction);
            objc_storeStrong((a1 + 24), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !HMPBMatterCommandActionReadFrom(v14, a2))
            {
              goto LABEL_52;
            }

LABEL_34:
            PBReaderRecallMark();

            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMStringFromAccessoryCommunicationProtocol(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"HAP";
  }

  else if (a1 == 2)
  {
    v2 = @"CHIP";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown type: %lu", a1];
  }

  return v2;
}

uint64_t base36Decode(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v28 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v8 = *(a1 + v7);
    if ((v8 - 48) < 0xA)
    {
      v9 = -48;
      goto LABEL_5;
    }

    v9 = -55;
    if ((v8 - 65) >= 0x1A)
    {
      break;
    }

LABEL_5:
    v12 = (v9 + v8) + 36 * v5;
    v11 = (__PAIR128__(36 * v6, (v9 + v8)) + v5 * 0x24uLL) >> 64;
    result = v12;
    if (__PAIR128__(v11, v12) < __PAIR128__(v6, v5))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v15;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Decoding base-36 encoded string overflowed 128 bits", &v24, 0xCu);
      }

      v16 = v13;
      goto LABEL_14;
    }

    ++v7;
    v5 = v12;
    v6 = v11;
    if (a2 == v7)
    {
      goto LABEL_17;
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(a1 + v7);
    v24 = 138543618;
    v25 = v19;
    v26 = 1024;
    v27 = v20;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Decoding base-36 encoded string encountered an invalid character - 0x%02x", &v24, 0x12u);
  }

  v16 = v17;
LABEL_14:
  objc_autoreleasePoolPop(v16);
  if (a3)
  {
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    v22 = v21;
    result = 0;
    *a3 = v21;
  }

  else
  {
    result = 0;
  }

LABEL_17:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__64154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMPBMetadataServiceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___HMPBMetadataService__svcDescription;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HMPBMetadataService__uuidStr;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMHomeManagerCachePolicyToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown cache policy: %lu>", a1];
  }

  else
  {
    v2 = off_1E754E1D0[a1];
  }

  return v2;
}

__CFString *HMHomeManagerInactiveUpdatingLevelToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown inactive updating level: %lu>", a1];
  }

  else
  {
    v2 = off_1E754E1F0[a1];
  }

  return v2;
}

__CFString *HMHomeManagerOptionsShortDescription(unint64_t a1)
{
  if (!a1)
  {
    v2 = @"None";
    goto LABEL_56;
  }

  if (a1 == -1)
  {
    v2 = @"All";
    goto LABEL_56;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = 1;
  do
  {
    if ((v4 & a1) == 0)
    {
      goto LABEL_54;
    }

    if (v4 > 255)
    {
      if (v4 > 4095)
      {
        if (v4 >= 0x8000)
        {
          if (v4 == 0x8000)
          {
            goto LABEL_52;
          }

          if (v4 == 0x10000)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v4 == 4096)
          {
            goto LABEL_50;
          }

          if (v4 == 0x4000)
          {
            goto LABEL_51;
          }
        }
      }

      else if (v4 > 1023)
      {
        if (v4 == 1024)
        {
          goto LABEL_48;
        }

        if (v4 == 2048)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v4 == 256)
        {
          goto LABEL_46;
        }

        if (v4 == 512)
        {
          goto LABEL_47;
        }
      }
    }

    else if (v4 > 15)
    {
      if (v4 > 63)
      {
        if (v4 == 64)
        {
          goto LABEL_44;
        }

        if (v4 == 128)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v4 == 16)
        {
          goto LABEL_42;
        }

        if (v4 == 32)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v4 > 3)
    {
      if (v4 == 4)
      {
        goto LABEL_40;
      }

      if (v4 == 8)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v4 == 1)
      {
        [v3 addObject:@"HM"];
LABEL_39:
        [v3 addObject:@"PI"];
LABEL_40:
        [v3 addObject:@"RM"];
LABEL_41:
        [v3 addObject:@"USR"];
LABEL_42:
        [v3 addObject:@"CA"];
LABEL_43:
        [v3 addObject:@"SET"];
LABEL_44:
        [v3 addObject:@"AMA"];
LABEL_45:
        [v3 addObject:@"MS"];
LABEL_46:
        [v3 addObject:@"APA"];
LABEL_47:
        [v3 addObject:@"HAP"];
LABEL_48:
        [v3 addObject:@"TVA"];
LABEL_49:
        [v3 addObject:@"DEV"];
LABEL_50:
        [v3 addObject:@"WRA"];
LABEL_51:
        [v3 addObject:@"UAP"];
LABEL_52:
        [v3 addObject:@"SEA"];
LABEL_53:
        [v3 addObject:@"HO"];
        goto LABEL_54;
      }

      if (v4 == 2)
      {
        goto LABEL_39;
      }
    }

LABEL_54:
    v4 *= 2;
  }

  while (v4 - 1 < a1);
  v2 = [v3 componentsJoinedByString:{@", "}];

LABEL_56:

  return v2;
}

uint64_t isValidPresenceType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HMPresenceTypeCurrentUserAtHome"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HMPresenceTypeCurrentUserNotAtHome") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HMPresenceTypeAnyUserAtHome") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HMPresenceTypeNoUserAtHome") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HMPresenceTypeUsersAtHome"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"HMPresenceTypeUsersNotAtHome"];
  }

  return v2;
}

uint64_t usersListApplicable(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HMPresenceTypeUsersAtHome"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"HMPresenceTypeUsersNotAtHome"];
  }

  return v2;
}

void sub_19BDFFC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleFinishedUnarchive_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) state];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2 == 3)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v54 = v7;
      v55 = 2112;
      v56 = v8;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finished unarchive with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = *(a1 + 32);
    if (*(a1 + 40))
    {
      [v9 setState:2];
    }

    else
    {
      v11 = v9;
      v12 = [objc_alloc(MEMORY[0x1E69A2A18]) initWithName:@"HMSoftwareUpdateDocumentationAsset.validation"];
      v13 = objc_autoreleasePoolPush();
      v14 = MEMORY[0x1E696AAE8];
      v15 = [v11 bundleURL];
      v16 = [v14 bundleWithURL:v15];

      if (v16)
      {
        v51 = v13;
        v52 = v12;
        v17 = [HMSoftwareUpdateDocumentation localizationsForBundle:v16];
        v18 = [(HMSoftwareUpdateDocumentation *)v17 count];
        v19 = objc_autoreleasePoolPush();
        v20 = v11;
        v21 = HMFGetOSLogHandle();
        v22 = v21;
        if (v18)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543618;
            v54 = v23;
            v55 = 2112;
            v56 = v17;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Available localizations: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          v24 = [[HMSoftwareUpdateDocumentation alloc] initWithBundle:v16];
          v25 = v24 != 0;
          v26 = objc_autoreleasePoolPush();
          v27 = v20;
          v28 = HMFGetOSLogHandle();
          v29 = v28;
          if (v24)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v30 = HMFGetLogIdentifier();
              *buf = 138543618;
              v54 = v30;
              v55 = 2112;
              v56 = v24;
              _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@Cached documentation: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v26);
            v31 = 0;
          }

          else
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v54 = v39;
              v55 = 2112;
              v56 = v16;
              _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse documentation for asset bundle: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v26);
            v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
          }

          v12 = v52;
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543618;
            v54 = v38;
            v55 = 2112;
            v56 = v16;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@No available localization for asset bundle: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
          v25 = 0;
        }

        v13 = v51;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v11;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v36 = v35 = v13;
          v37 = [v33 bundleURL];
          *buf = 138543618;
          v54 = v36;
          v55 = 2112;
          v56 = v37;
          _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to create bundle from: %@", buf, 0x16u);

          v13 = v35;
        }

        objc_autoreleasePoolPop(v32);
        v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
        v25 = 0;
      }

      objc_autoreleasePoolPop(v13);
      v40 = v31;

      v41 = v31;
      if (v25)
      {
        [*(a1 + 32) setState:4];
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        v43 = *(a1 + 32);
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v54 = v45;
          v55 = 2112;
          v56 = v41;
          _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to validate asset with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        [*(a1 + 32) setError:v41];
        [*(a1 + 32) setState:5];
        v46 = [MEMORY[0x1E696AC08] defaultManager];
        v47 = [*(a1 + 32) bundleURL];
        [v46 removeItemAtURL:v47 error:0];
      }

      v48 = [MEMORY[0x1E696AC08] defaultManager];
      v49 = [*(a1 + 32) archiveURL];
      [v48 removeItemAtURL:v49 error:0];
    }

    [*(a1 + 32) setExtractor:0];
  }

  else
  {
    if (v6)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v10;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to finish unarchive, not currently unarchiving", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v50 = *MEMORY[0x1E69E9840];
}

void sub_19BE009B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __processNextArchivedData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ____processNextArchivedData_block_invoke;
    block[3] = &unk_1E754E2A8;
    v5 = v1;
    dispatch_async(v3, block);
  }
}

void ____processNextArchivedData_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) archivedFileStream];
  v4 = [v3 hasBytesAvailable];

  v5 = objc_autoreleasePoolPush();
  v6 = *v2;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Reading next chunk from the archive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    v12 = [v11 archivedFileStream];
    v13 = [v12 read:buf maxLength:4096];

    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:v13];
    objc_initWeak(&location, *v10);
    v15 = [*v10 extractor];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ____processNextArchivedData_block_invoke_308;
    v18[3] = &unk_1E754E320;
    objc_copyWeak(&v19, &location);
    [v15 supplyBytes:v14 withCompletionBlock:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Reached end of input stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) finishUnarchive];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19BE00EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____processNextArchivedData_block_invoke_308(uint64_t a1, void *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v7;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to append data with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 cancelUnarchiveWithError:v5];
  }

  else if (a3)
  {
    [WeakRetained finishUnarchive];
  }

  else
  {
    __processNextArchivedData();
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __resourceBundleForBundle(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 URLForResource:@"AssetData" withExtension:0];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithURL:v2];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find resource bundle", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

HMHTMLDocument *__htmlDocumentForResource(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 URLForResource:v7 withExtension:@"html" subdirectory:0 localization:*(*(&v24 + 1) + 8 * i)];
        if (v13)
        {
          v15 = v13;
          v23 = 0;
          v14 = [[HMHTMLDocument alloc] initWithURL:v13 error:&v23];
          v16 = v23;
          if (!v14)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              v20 = [v15 path];
              *buf = 138543874;
              v29 = v19;
              v30 = 2112;
              v31 = v20;
              v32 = 2112;
              v33 = v16;
              _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Unable to load document, %@, with error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v17);
          }

          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

__CFString *HMSiriEndpointProfileAssistantActiveTypeToString(uint64_t a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown (%@)", v3];
  }

  else
  {
    v1 = off_1E754E3C0[a1 + 1];
  }

  return v1;
}

uint64_t HMUserActionPredictionDuetPredictionValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v48 & 0x7F) << v28;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_72:
          *(a1 + 32) = v34;
          goto LABEL_83;
        }

        if (v13 != 6)
        {
LABEL_67:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_83;
        }

        v21 = PBReaderReadString();
        v22 = 40;
LABEL_45:
        v25 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_83;
      }

      switch(v13)
      {
        case 7:
          *(a1 + 68) |= 1u;
          v48 = 0;
          v26 = [a2 position] + 8;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v48;
          v45 = 8;
LABEL_82:
          *(a1 + v45) = v44;
          goto LABEL_83;
        case 8:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v48 & 0x7F) << v35;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_76;
            }
          }

          v20 = (v37 != 0) & ~[a2 hasError];
LABEL_76:
          v42 = 65;
          break;
        case 9:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v48 & 0x7F) << v14;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_74;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_74:
          v42 = 64;
          break;
        default:
          goto LABEL_67;
      }

      *(a1 + v42) = v20;
LABEL_83:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 != 3)
      {
        if (v13 != 4)
        {
          goto LABEL_67;
        }

        *(a1 + 68) |= 2u;
        v48 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v44 = v48;
        v45 = 16;
        goto LABEL_82;
      }

      v21 = PBReaderReadString();
      v22 = 48;
    }

    else if (v13 == 1)
    {
      v21 = PBReaderReadString();
      v22 = 24;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_67;
      }

      v21 = PBReaderReadString();
      v22 = 56;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMUserDefaultCamerasAccessLevel(int a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

__CFString *HMUserCameraAccessLevelAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMUserCameraAccessLevel %tu", a1];
  }

  else
  {
    v2 = off_1E754E4B8[a1];
  }

  return v2;
}

__CFString *HMUserPresenceAuthorizationStatusAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown HMUserPresenceAuthorizationStatus %tu", a1];
  }

  else
  {
    v2 = off_1E754E4D0[a1];
  }

  return v2;
}

void sub_19BE093E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66567(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19BE0C108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}