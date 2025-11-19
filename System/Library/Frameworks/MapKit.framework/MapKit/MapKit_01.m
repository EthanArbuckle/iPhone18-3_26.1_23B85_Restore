void __geoAddressDictionaryFromContactsAddressDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v5 length])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v9;
    }

    v8 = v7;

    [*(a1 + 40) setObject:v5 forKeyedSubscript:v8];
  }
}

id MKAddressDictionaryFromContactsDictionary(void *a1)
{
  if (a1)
  {
    a1 = geoAddressDictionaryFromContactsAddressDictionary(a1);
    v1 = vars8;
  }

  return a1;
}

id MKAddressDictionaryFromCLPlacemark(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DF90];
    v2 = a1;
    v3 = [v1 dictionary];
    v4 = [v2 thoroughfare];
    [v3 setObject:v4 forKeyedSubscript:@"street"];

    v5 = [v2 subLocality];
    [v3 setObject:v5 forKeyedSubscript:@"subLocality"];

    v6 = [v2 locality];
    [v3 setObject:v6 forKeyedSubscript:@"city"];

    v7 = [v2 subAdministrativeArea];
    [v3 setObject:v7 forKeyedSubscript:@"subAdministrativeArea"];

    v8 = [v2 administrativeArea];
    [v3 setObject:v8 forKeyedSubscript:@"state"];

    v9 = [v2 postalCode];
    [v3 setObject:v9 forKeyedSubscript:@"postalCode"];

    v10 = [v2 country];
    [v3 setObject:v10 forKeyedSubscript:@"country"];

    v11 = [v2 ISOcountryCode];

    [v3 setObject:v11 forKeyedSubscript:@"ISOCountryCode"];
    if ([v3 count] && (v12 = objc_msgSend(v3, "copy")) != 0)
    {
      v13 = v12;
      v14 = geoAddressDictionaryFromContactsAddressDictionary(v12);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1A2FA2C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _breadthFirstApply(const void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a2;
  Mutable = CFArrayCreateMutable(0, 0, 0);
  CFArrayAppendValue(Mutable, a1);
  while (CFArrayGetCount(Mutable) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
    CFArrayRemoveValueAtIndex(Mutable, 0);
    v10 = 0u;
    v11 = 0u;
    v5 = ValueAtIndex[5];
    if (v5)
    {
      v6 = v5[1];
      v10 = *v5;
      v11 = v6;
    }

    v7 = v9[2](v9, ValueAtIndex);
    if (!v5 || v7)
    {
      if (v7 == 2)
      {
        break;
      }
    }

    else
    {
      for (i = 0; i != 32; i += 8)
      {
        CFArrayAppendValue(Mutable, *(&v10 + i));
      }
    }
  }

  CFRelease(Mutable);
}

void sub_1A2FA3F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A2FA40F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 64), 8);
  _Unwind_Resume(a1);
}

void MKQuadTrieNodeFree(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = a1[4];
      std::vector<VKRouteInfo * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v4);
      MEMORY[0x1A58E9730](v3, 0x80C40D6874129);
    }

    free(a1);
  }
}

void sub_1A2FA4454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2FA5074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2FA52F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MKQuadTrie;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t MKCompassPointFromLocationDirection(double a1)
{
  result = 0;
  if (a1 >= 0.0 && a1 < 360.0)
  {
    v2 = llround(a1 / 360.0 * 8.0);
    v3 = v2 & 7;
    v5 = -v2;
    v4 = v5 < 0;
    v6 = v5 & 7;
    if (v4)
    {
      v7 = v3;
    }

    else
    {
      v7 = -v6;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    else
    {
      return dword_1A30F76B0[v7];
    }
  }

  return result;
}

id MKLocalizedAbbreviationForCompassPoint(int a1)
{
  if ((a1 - 1) > 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = _MKLocalizedStringFromThisBundle(off_1E76C8B88[a1 - 1]);
  }

  return v2;
}

uint64_t MKCompassPointNEWSFromLocationDirection(double a1)
{
  result = 0;
  if (a1 >= 0.0 && a1 < 360.0)
  {
    v2 = llround(a1 / 360.0 * 4.0);
    v3 = v2 & 3;
    v5 = -v2;
    v4 = v5 < 0;
    v6 = v5 & 3;
    if (v4)
    {
      v7 = v3;
    }

    else
    {
      v7 = -v6;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    else
    {
      return dword_1A30F7370[v7];
    }
  }

  return result;
}

void sub_1A2FA796C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2FAC060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2FB0610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18536(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2FB160C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MKCompareLocatableObjects(void *a1, void *a2)
{
  [a1 coordinate];
  v4 = v3;
  [a2 coordinate];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

id _CreateCoordinateComponentString(int a1, double a2, double a3)
{
  if (a1)
  {
    a2 = a3;
  }

  v3 = (a2 * 3600.0);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = @"N";
  }

  else
  {
    v5 = @"S";
  }

  v6 = @"E";
  if (v4)
  {
    v6 = @"W";
  }

  v7 = a2;
  v8 = fabs((a2 - a2) * 60.0);
  v9 = v8;
  v10 = (v8 - v8) * 60.0;
  if (a1)
  {
    v11 = v6;
  }

  else
  {
    v11 = v5;
  }

  if (v7 >= 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = -v7;
  }

  v13 = _MKLocalizedStringFromThisBundle(v11);
  v14 = v13;

  v15 = v13;
  v16 = MEMORY[0x1E696ADA0];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  v18 = [v16 localizedStringFromNumber:v17 numberStyle:0];

  v19 = MEMORY[0x1E696ADA0];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v21 = [v19 localizedStringFromNumber:v20 numberStyle:0];

  v22 = MEMORY[0x1E696ADA0];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v24 = [v22 localizedStringFromNumber:v23 numberStyle:0];

  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
  v26 = _MKLocalizedStringFromThisBundle(@"%1$@°%2$@′%3$@″ %4$@");
  v27 = [v25 initWithFormat:v26, v18, v21, v24, v15, 0];

  return v27;
}

id _MKLocalizedStringFromThisBundleFromTable(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 _mapkitBundle];
  v7 = [v6 _mapkit_localizedStringForKey:v5 value:@"<unlocalized>" table:v4];

  return v7;
}

id MKLocalizedStringForApproximateLocation()
{
  if (MKLocalizedStringForApproximateLocation_s_onceToken != -1)
  {
    dispatch_once(&MKLocalizedStringForApproximateLocation_s_onceToken, &__block_literal_global_18813);
  }

  v1 = MKLocalizedStringForApproximateLocation_s_value;

  return v1;
}

void __MKLocalizedStringForApproximateLocation_block_invoke()
{
  v0 = _MKLocalizedStringFromThisBundle(@"Approximate Location");
  v1 = MKLocalizedStringForApproximateLocation_s_value;
  MKLocalizedStringForApproximateLocation_s_value = v0;
}

id MKLocalizedStringForUnknownLocation()
{
  if (MKLocalizedStringForUnknownLocation_s_onceToken != -1)
  {
    dispatch_once(&MKLocalizedStringForUnknownLocation_s_onceToken, &__block_literal_global_20);
  }

  v1 = MKLocalizedStringForUnknownLocation_s_value;

  return v1;
}

void __MKLocalizedStringForUnknownLocation_block_invoke()
{
  v0 = _MKLocalizedStringFromThisBundle(@"Unknown Location");
  v1 = MKLocalizedStringForUnknownLocation_s_value;
  MKLocalizedStringForUnknownLocation_s_value = v0;
}

void sub_1A2FB4944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __SecurityLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SecurityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SecurityLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = SecurityLibraryCore_frameworkLibrary;
  v9 = SecurityLibraryCore_frameworkLibrary;
  if (!SecurityLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SecurityLibraryCore_block_invoke;
    v3[4] = &unk_1E76CD5E0;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E76C8EA0;
    v11 = *off_1E76C8EB0;
    v12 = 0;
    v7[3] = _sl_dlopen();
    SecurityLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A2FB8F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSecTaskCreateFromSelfSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecTaskCreateFromSelf");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecTaskCreateFromSelfSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSecTaskCopyValueForEntitlementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecTaskCopyValueForEntitlement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecTaskCopyValueForEntitlementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t mk_SecTaskCopyValueForEntitlement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getSecTaskCopyValueForEntitlementSymbolLoc_ptr;
  v14 = getSecTaskCopyValueForEntitlementSymbolLoc_ptr;
  if (!getSecTaskCopyValueForEntitlementSymbolLoc_ptr)
  {
    v7 = SecurityLibrary();
    v12[3] = dlsym(v7, "SecTaskCopyValueForEntitlement");
    getSecTaskCopyValueForEntitlementSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  v10 = v6;
  _Block_object_dispose(&v11, 8);
  if (!v10)
  {
    dlerror();
    v9 = abort_report_np();
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v9);
  }

  return v10(a1, a2, a3);
}

uint64_t _MKRAPIsAvailable()
{
  if (GEOConfigGetBOOL())
  {
    return 0;
  }

  if (!GEOIsBAASupported())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E69A26F8] primaryICloudAccount];
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x1E69A26F8] isCurrentICloudAccountUnderage];

    if (v2)
    {
      return 0;
    }
  }

  v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([v5 userMode] == 1 || (objc_msgSend(v5, "isEphemeralMultiUser") & 1) != 0)
  {
    goto LABEL_18;
  }

  if (_MKRAPIsAvailable_onceToken != -1)
  {
    dispatch_once(&_MKRAPIsAvailable_onceToken, &__block_literal_global_19233);
  }

  if ((_MKRAPIsAvailable_validManagedAppleIDState & 1) == 0)
  {
    v6 = [_MKRAPIsAvailable_accountStore aa_primaryAppleAccount];
    _MKRAPIsAvailable_isManagedAppleID = [v6 aa_isManagedAppleID];
    if (v6)
    {
      _MKRAPIsAvailable_validManagedAppleIDState = 1;
    }

    else if (_MKRAPCheckEntitlements_onceToken != -1)
    {
      dispatch_once(&_MKRAPCheckEntitlements_onceToken, &__block_literal_global_18);
    }

    if ((_MKRAPIsAvailable_validManagedAppleIDState & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (_MKRAPIsAvailable_isManagedAppleID)
  {
LABEL_18:
    v3 = 0;
  }

  else
  {
LABEL_20:
    v3 = 1;
  }

  return v3;
}

id getFBSOpenApplicationOptionKeyPromptUnlockDevice()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  v8 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr)
  {
    v1 = FrontBoardServicesLibrary();
    v6[3] = dlsym(v1, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *__getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FrontBoardServicesLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  v9 = FrontBoardServicesLibraryCore_frameworkLibrary;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &unk_1E76CD5E0;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E76C8EF0;
    v11 = *off_1E76C8F00;
    v12 = 0;
    v7[3] = _sl_dlopen();
    FrontBoardServicesLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A2FBA574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  FrontBoardServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUCallCenterClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUCallCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUCallCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return TelephonyUtilitiesLibrary();
  }

  return result;
}

uint64_t TelephonyUtilitiesLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = TelephonyUtilitiesLibraryCore_frameworkLibrary;
  v9 = TelephonyUtilitiesLibraryCore_frameworkLibrary;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v3[4] = &unk_1E76CD5E0;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E76C8F40;
    v11 = *off_1E76C8F50;
    v12 = 0;
    v7[3] = _sl_dlopen();
    TelephonyUtilitiesLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A2FBAE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  TelephonyUtilitiesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBSGetScreenLockStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSGetScreenLockStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSGetScreenLockStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpringBoardServicesLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = SpringBoardServicesLibraryCore_frameworkLibrary;
  v9 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v3[4] = &unk_1E76CD5E0;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E76C8F18;
    v11 = *off_1E76C8F28;
    v12 = 0;
    v7[3] = _sl_dlopen();
    SpringBoardServicesLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A2FBB0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SpringBoardServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2FBC4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2FBFA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__635(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2FC1FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t mk_CFPhoneNumberCreateString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getCFPhoneNumberCreateStringSymbolLoc_ptr;
  v14 = getCFPhoneNumberCreateStringSymbolLoc_ptr;
  if (!getCFPhoneNumberCreateStringSymbolLoc_ptr)
  {
    v7 = PhoneNumbersLibrary();
    v12[3] = dlsym(v7, "CFPhoneNumberCreateString");
    getCFPhoneNumberCreateStringSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  v10 = v6;
  _Block_object_dispose(&v11, 8);
  if (!v10)
  {
    dlerror();
    v9 = abort_report_np();
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v9);
  }

  return v10(a1, a2, a3);
}

void *__getCFPhoneNumberCreateStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhoneNumbersLibrary();
  result = dlsym(v2, "CFPhoneNumberCreateString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCFPhoneNumberCreateStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhoneNumbersLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PhoneNumbersLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCFPhoneNumberCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhoneNumbersLibrary();
  result = dlsym(v2, "CFPhoneNumberCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCFPhoneNumberCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2FC3FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2FC411C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2FC782C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20764(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1A58E9F30](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id -[MKTransitItemIncidentView _blockingImage](MKTransitItemIncidentView *self, SEL a2)
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [MEMORY[0x1E69DF430] sharedManager];
  v6 = [v5 trafficIncidentTypeKey];

  v7 = [MEMORY[0x1E69DF430] sharedManager];
  *&v8 = v4;
  v9 = [v7 imageForKey:v6 value:3 contentScale:7 sizeGroup:0 modifiers:v8];

  if (v9 && (v10 = CGImageRetain([v9 image])) != 0)
  {
    v11 = v10;
    v12 = MEMORY[0x1E69DCAB8];
    [v9 contentScale];
    v14 = [v12 imageWithCGImage:v11 scale:0 orientation:v13];
    CGImageRelease(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1A2FCD33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2FCE838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MKGetMKMapCameraLog()
{
  if (MKGetMKMapCameraLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKMapCameraLog_onceToken, &__block_literal_global_132);
  }

  v1 = MKGetMKMapCameraLog_log;

  return v1;
}

void __MKGetMKMapCameraLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKMapCamera");
  v1 = MKGetMKMapCameraLog_log;
  MKGetMKMapCameraLog_log = v0;
}

void sub_1A2FD1520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21563(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22635(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1A58E9F30](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A2FD9294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2FD9AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2FDDE8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_1A2FDECA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(v38);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MKGetMKRemoteUILog_23452()
{
  if (MKGetMKRemoteUILog_onceToken_23454 != -1)
  {
    dispatch_once(&MKGetMKRemoteUILog_onceToken_23454, &__block_literal_global_104);
  }

  v1 = MKGetMKRemoteUILog_log_23455;

  return v1;
}

void __MKGetMKRemoteUILog_block_invoke_23457()
{
  v0 = os_log_create("com.apple.MapKit", "MKRemoteUI");
  v1 = MKGetMKRemoteUILog_log_23455;
  MKGetMKRemoteUILog_log_23455 = v0;
}

void sub_1A2FE0060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2FE0428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _mk_layoutFragmentForLocationInFragments(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 rangeInElement];
        v10 = [v9 location];
        v11 = [v10 compare:v3];

        v12 = v11 + 1;
        v13 = [v8 rangeInElement];
        v14 = [v13 endLocation];
        v15 = [v14 compare:v3];

        if (v12 <= 1 && v15 == 1)
        {
          v5 = v8;
          goto LABEL_14;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

void sub_1A2FE4CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24002(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2FE6B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1A2FE6D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1A2FE6E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

double MKCGRectFittingImageWithinSize(void *a1, double a2, double a3)
{
  [a1 size];
  v7 = v6;
  v8 = v5;
  v9 = v5 > a3;
  for (i = v6 > a2; v7 > a2 || v8 > a3; i = v7 > a2)
  {
    if (i)
    {
      v8 = a2 * (v8 / v7);
      v7 = a2;
    }

    else if (v9)
    {
      v7 = a3 * (v7 / v8);
      v8 = a3;
    }

    v9 = v8 > a3;
  }

  return (a2 - v7) * 0.5;
}

id MKManeuverArrowImage(int a1, int a2, double *a3, void *a4, void *a5, float64x2_t *a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v107 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a5;
  v19 = a1 - 41;
  if ((a1 - 41) <= 0x2F)
  {
    if (((1 << v19) & 0x800003FFFFFFLL) != 0)
    {
LABEL_11:
      v27 = *MEMORY[0x1E695EFF8];
      v28 = *(MEMORY[0x1E695EFF8] + 8);
      v29 = a3[1];
      v30 = a3[2];
      v103 = 0;
      v101 = 0;
      v102 = 0;
      v99 = 0;
      v100 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKManeuverArrowPaths(a1, a2, __dst, a6, &v102, &v101, &v100, &v99, &v103);
      v31 = v102;
      v32 = v101;
      v26 = v100;
      v33 = v99;
      if ([v26 count] || v31 && (objc_msgSend(v31, "isEmpty") & 1) == 0)
      {
        v86 = v30;
        v87 = v29;
        v88 = v33;
        v34 = v18;
        v35 = v17;
        v36 = a7;
        v109.width = a7;
        v37 = a8;
        v109.height = a8;
        UIGraphicsBeginImageContextWithOptions(v109, 0, a9);
        CurrentContext = UIGraphicsGetCurrentContext();
        [v31 bounds];
        x = v39;
        y = v41;
        width = v43;
        height = v45;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v89 = v26;
        v47 = v26;
        v48 = [v47 countByEnumeratingWithState:&v95 objects:v105 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v96;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v96 != v50)
              {
                objc_enumerationMutation(v47);
              }

              [*(*(&v95 + 1) + 8 * i) bounds];
              v116.origin.x = v52;
              v116.origin.y = v53;
              v116.size.width = v54;
              v116.size.height = v55;
              v111.origin.x = x;
              v111.origin.y = y;
              v111.size.width = width;
              v111.size.height = height;
              v112 = CGRectUnion(v111, v116);
              x = v112.origin.x;
              y = v112.origin.y;
              width = v112.size.width;
              height = v112.size.height;
            }

            v49 = [v47 countByEnumeratingWithState:&v95 objects:v105 count:16];
          }

          while (v49);
        }

        memset(__dst, 0, 48);
        _transformForFrames(__dst, v27, v28, v87, v86, x, y, width, height, v36, v37);
        if (a6)
        {
          *a6 = vaddq_f64(*&__dst[32], vmlaq_n_f64(vmulq_n_f64(*&__dst[16], a6->f64[1]), *__dst, a6->f64[0]));
          if ((v103 & 1) == 0)
          {
            v113.origin.x = 0.0;
            v113.origin.y = 0.0;
            v113.size.width = v36;
            v113.size.height = v37;
            a6->f64[1] = CGRectGetMidY(v113);
          }
        }

        transform = *__dst;
        CGContextConcatCTM(CurrentContext, &transform);
        v17 = v35;
        v18 = v34;
        if (v32)
        {
          v56 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, v36, v37}];
          [v56 appendPath:v31];
          [v56 setUsesEvenOddFillRule:1];
          CGContextSaveGState(CurrentContext);
          [v56 addClip];
          [v34 set];
          [v32 fill];
          CGContextRestoreGState(CurrentContext);
        }

        [v17 set];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v57 = v47;
        v58 = [v57 countByEnumeratingWithState:&v90 objects:v104 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v91;
          do
          {
            for (j = 0; j != v59; ++j)
            {
              if (*v91 != v60)
              {
                objc_enumerationMutation(v57);
              }

              [*(*(&v90 + 1) + 8 * j) fill];
            }

            v59 = [v57 countByEnumeratingWithState:&v90 objects:v104 count:16];
          }

          while (v59);
        }

        [v31 fill];
        v23 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v33 = v88;
        v26 = v89;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_36;
    }

    if (((1 << v19) & 0xF8000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  v23 = 0;
  if (a1 > 0x27)
  {
    goto LABEL_38;
  }

  if (((1 << a1) & 0x8E7FB718FFLL) != 0)
  {
    goto LABEL_11;
  }

  if (a1 == 22)
  {
LABEL_4:
    v20 = *a3;
    v21 = v17;
    v22 = v21;
    v23 = 0;
    if (a1 > 81)
    {
      switch(a1)
      {
        case 'R':
          v24 = v18;
          BOOL = GEOConfigGetBOOL();
          if (v20)
          {
            v66 = 327633261;
          }

          else
          {
            v66 = 603924167;
          }

          if (BOOL)
          {
            v25 = v66;
          }

          else
          {
            v25 = 101625;
          }

          break;
        case 'S':
          v24 = v18;
          v67 = GEOConfigGetBOOL();
          if (v20)
          {
            v68 = 146083830;
          }

          else
          {
            v68 = 179594842;
          }

          if (v67)
          {
            v25 = v68;
          }

          else
          {
            v25 = 101626;
          }

          break;
        case 'T':
          v24 = v18;
          v63 = GEOConfigGetBOOL();
          if (v20)
          {
            v64 = 830247085;
          }

          else
          {
            v64 = 316321895;
          }

          if (v63)
          {
            v25 = v64;
          }

          else
          {
            v25 = 101627;
          }

          break;
        default:
          v26 = v21;
          goto LABEL_37;
      }
    }

    else
    {
      v24 = v18;
      v25 = 310002;
      if (a1 != 22)
      {
        v26 = v21;
        if (a1 != 80)
        {
          if (a1 != 81)
          {
            v18 = v24;
            goto LABEL_37;
          }

          v25 = 310003;
        }

        goto LABEL_66;
      }

      v25 = 310004;
    }

    v26 = v22;
LABEL_66:
    v69 = [MEMORY[0x1E69DF430] sharedManager];
    *&v70 = a9;
    v31 = [v69 imageForDataID:v25 text:0 contentScale:4 sizeGroup:0 modifiers:v70];

    if (v31)
    {
      v71 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v31, "image")}];
      MKCGRectFittingImageWithinSize(v71, a7, a8);
      v73 = v72;
      v75 = v74;
      v76 = *MEMORY[0x1E695EFF8];
      v77 = *(MEMORY[0x1E695EFF8] + 8);
      v110.width = v72;
      v110.height = v74;
      UIGraphicsBeginImageContextWithOptions(v110, 0, 0.0);
      v78 = UIGraphicsGetCurrentContext();
      CGContextSetInterpolationQuality(v78, kCGInterpolationHigh);
      [v26 setFill];
      CGContextTranslateCTM(v78, 0.0, v75);
      CGContextScaleCTM(v78, 1.0, -1.0);
      v79 = [v71 CGImage];
      v114.origin.x = v76;
      v114.origin.y = v77;
      v114.size.width = v73;
      v114.size.height = v75;
      CGContextClipToMask(v78, v114, v79);
      v115.origin.x = v76;
      v115.origin.y = v77;
      v115.size.width = v73;
      v115.size.height = v75;
      CGContextFillRect(v78, v115);
      v80 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v81 = v80;
      v82 = v81;
      v23 = v81;
      if (a2 == 1)
      {
        v83 = MEMORY[0x1E69DCAB8];
        v84 = [v81 CGImage];
        [v82 scale];
        v23 = [v83 imageWithCGImage:v84 scale:4 orientation:?];
      }
    }

    else
    {
      v85 = MKGetMKDefaultLog();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *__dst = 134217984;
        *&__dst[4] = v25;
        _os_log_impl(&dword_1A2EA0000, v85, OS_LOG_TYPE_ERROR, "Could not find icon image for id: %lu", __dst, 0xCu);
      }

      v23 = 0;
    }

    v18 = v24;
LABEL_36:

LABEL_37:
  }

LABEL_38:

  return v23;
}

void MKManeuverArrowPaths(int a1, int a2, double *a3, float64x2_t *a4, void *a5, void *a6, void *a7, void *a8, char *a9)
{
  v86 = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  v16 = a3[1];
  v15 = a3[2];
  v17 = [MEMORY[0x1E69DC728] bezierPath];
  v18 = v17;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  switch(a1)
  {
    case 0:
    case 7:
    case 17:
    case 22:
    case 24:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
      goto LABEL_30;
    case 1:
    case 27:
    case 60:
      v82 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKArrowAppendLeftTurnToPathInRect(v18, __dst, v14, v13, v16, v15, v34, &v82);
      v23 = v82;
      goto LABEL_11;
    case 2:
    case 28:
    case 61:
      v81 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKArrowAppendRightTurnToPathInRect(v18, __dst, 0, &v81, v14, v13, v16, v15);
      v23 = v81;
      goto LABEL_11;
    case 3:
    case 5:
    case 6:
    case 12:
    case 23:
    case 64:
      v83 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKArrowAppendStraightArrowToPathInRect(v18, __dst, &v83, v14, v13, v16, v15);
      v23 = v83;
      goto LABEL_11;
    case 4:
    case 25:
    case 26:
    case 35:
    case 88:
      v78 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKArrowAppendUTurnToPathInRect(v18, a2, __dst, &v78, v14, v13, v16, v15);
      v23 = v78;
      goto LABEL_11;
    case 8:
    case 9:
    case 10:
    case 13:
    case 14:
    case 15:
    case 19:
    case 31:
    case 32:
    case 36:
    case 37:
    case 38:
    case 40:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
      goto LABEL_13;
    case 11:
      if (a2)
      {
        v74 = 0;
        memcpy(__dst, a3, sizeof(__dst));
        MKArrowAppendMergeLeftToPathInRect(v18, __dst, &v74, v14, v13, v16, v15);
        v23 = v74;
      }

      else
      {
        v75 = 0;
        memcpy(__dst, a3, sizeof(__dst));
        MKArrowAppendMergeRightToPathInRect(v18, __dst, &v75, v14, v13, v16, v15);
        v23 = v75;
      }

      goto LABEL_11;
    case 16:
    case 18:
    case 33:
    case 34:
    case 39:
      v72 = v17;
      v73 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      v24 = MKArrowCreateBezierPathsForEitherProceedToRouteOrArrivalWithSizeAndReturnCenter(&v73, &v72, __dst, 0, v16, v15);
      v55 = v25;
      v56 = v24;
      v22 = v73;
      v26 = v72;

      v28 = *MEMORY[0x1E695EFD0];
      v27 = *(MEMORY[0x1E695EFD0] + 16);
      v29 = *(MEMORY[0x1E695EFD0] + 32);
      if (a1 == 34)
      {
        v33 = 1.57079633;
      }

      else
      {
        v30 = *MEMORY[0x1E695EFD0];
        v31 = *(MEMORY[0x1E695EFD0] + 16);
        v32 = *(MEMORY[0x1E695EFD0] + 32);
        if (a1 != 33)
        {
          goto LABEL_33;
        }

        v33 = -1.57079633;
      }

      v63 = *(MEMORY[0x1E695EFD0] + 32);
      v65 = *(MEMORY[0x1E695EFD0] + 16);
      v61 = *MEMORY[0x1E695EFD0];
      CGAffineTransformMakeRotation(__dst, v33);
      v28 = v61;
      v29 = v63;
      v27 = v65;
      v30 = *__dst;
      v31 = *&__dst[16];
      v32 = *&__dst[32];
LABEL_33:
      v64 = v31;
      v66 = v30;
      *__dst = v30;
      *&__dst[16] = v31;
      v62 = v32;
      *&__dst[32] = v32;
      *&t2.a = v28;
      *&t2.c = v27;
      *&t2.tx = v29;
      if (!CGAffineTransformEqualToTransform(__dst, &t2))
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v48 = v22;
        v49 = [v48 countByEnumeratingWithState:&v67 objects:v85 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v68;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v68 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v67 + 1) + 8 * i);
              *__dst = v66;
              *&__dst[16] = v64;
              *&__dst[32] = v62;
              [v53 applyTransform:{__dst, v55}];
            }

            v50 = [v48 countByEnumeratingWithState:&v67 objects:v85 count:16];
          }

          while (v50);
        }

        *__dst = v66;
        *&__dst[16] = v64;
        *&__dst[32] = v62;
        [v26 applyTransform:__dst];
      }

      if (!a4)
      {
        v21 = 0;
        v19 = 0;
        v20 = 0;
        goto LABEL_18;
      }

      v20 = 0;
      v21 = 0;
      *a4 = vaddq_f64(v62, vmlaq_n_f64(vmulq_n_f64(v64, *&v55), v66, v56));
      v19 = 1;
      v18 = v26;
LABEL_13:
      if (!a4)
      {
        v26 = v18;
LABEL_18:
        v36 = a7;
        v35 = a8;
        v37 = a6;
        goto LABEL_19;
      }

      v36 = a7;
      v35 = a8;
      v37 = a6;
      if (!v22)
      {
        BoundingBox = CGPathGetBoundingBox([v20 CGPath]);
        x = BoundingBox.origin.x;
        y = BoundingBox.origin.y;
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
        MidX = CGRectGetMidX(BoundingBox);
        v88.origin.x = x;
        v88.origin.y = y;
        v88.size.width = width;
        v88.size.height = height;
        MidY = CGRectGetMidY(v88);
        a4->f64[0] = MidX;
        a4->f64[1] = MidY;
      }

      v26 = v18;
LABEL_19:
      if (a5)
      {
        v44 = v26;
        *a5 = v26;
      }

      if (v37)
      {
        v45 = v21;
        *v37 = v21;
      }

      if (v36)
      {
        v46 = v22;
        *v36 = v22;
      }

      if (v35)
      {
        v47 = v20;
        *v35 = v20;
      }

      if (a9)
      {
        *a9 = v19;
      }

      v18 = v26;
LABEL_30:

      return;
    case 20:
    case 62:
    case 65:
      v80 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKArrowAppendMergeLeftToPathInRect(v18, __dst, &v80, v14, v13, v16, v15);
      v23 = v80;
      goto LABEL_11;
    case 21:
    case 63:
    case 66:
      v79 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKArrowAppendMergeRightToPathInRect(v18, __dst, &v79, v14, v13, v16, v15);
      v23 = v79;
LABEL_11:
      v20 = v23;
      v19 = 0;
      v21 = 0;
      goto LABEL_12;
    case 29:
      v21 = [MEMORY[0x1E69DC728] bezierPath];
      v76 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKArrowAppendExitRoadLeftToPathInRect(v18, v21, __dst, &v76, v14, v13, v16, v15);
      v54 = v76;
      goto LABEL_49;
    case 30:
      v21 = [MEMORY[0x1E69DC728] bezierPath];
      v77 = 0;
      memcpy(__dst, a3, sizeof(__dst));
      MKArrowAppendExitRoadRightToPathInRect(v18, v21, __dst, &v77, v14, v13, v16, v15);
      v54 = v77;
LABEL_49:
      v20 = v54;
      v19 = 0;
LABEL_12:
      v22 = 0;
      goto LABEL_13;
    default:
      v21 = 0;
      v22 = 0;
      goto LABEL_13;
  }
}

CGFloat _transformForFrames(CGAffineTransform *retstr, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v23 = 1.0;
  v24 = a4 / a8;
  if (a4 / a8 >= a5 / a9)
  {
    v24 = a5 / a9;
  }

  if (a8 > a4 || a9 > a5)
  {
    v23 = v24;
  }

  v26 = a10 / a4;
  if (a10 / a4 >= a11 / a5)
  {
    v26 = a11 / a5;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeScale(retstr, v26 * v23, v26 * v23);
  v27 = *&retstr->c;
  *&v30.a = *&retstr->a;
  *&v30.c = v27;
  *&v30.tx = *&retstr->tx;
  CGAffineTransformInvert(&v31, &v30);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = a10;
  v32.size.height = a11;
  v33 = CGRectApplyAffineTransform(v32, &v31);
  v33.origin.y = v33.origin.y + (v33.size.height - a9) * 0.5 - a7;
  *&v33.size.height = *&retstr->c;
  *&v30.a = *&retstr->a;
  *&v30.c = *&v33.size.height;
  *&v30.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v31, &v30, v33.origin.x + (v33.size.width - a8) * 0.5 - a6, v33.origin.y);
  v28 = *&v31.c;
  *&retstr->a = *&v31.a;
  *&retstr->c = v28;
  result = v31.tx;
  *&retstr->tx = *&v31.tx;
  return result;
}

id MKJunctionArrowImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, void *a7, void *a8, CGFloat a9, CGFloat a10, CGFloat a11, double *a12)
{
  v22 = a7;
  v23 = a8;
  v24 = [[MKJunction alloc] initWithType:a1 maneuver:a2 drivingSide:a3 elements:a4 count:a5];
  if (v24)
  {
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v25 = a6[5];
    if (v25 > 0.0)
    {
      v26 = &v57;
    }

    else
    {
      v26 = 0;
    }

    if (v25 > 0.0)
    {
      v57 = 0;
    }

    v27 = a6[1];
    v28 = a6[2];
    memcpy(__dst, a6, sizeof(__dst));
    [(MKJunction *)v24 getArrowPath:&v60 arrowStrokePath:&v59 intersectionBackgroundPath:&v58 strokePath:v26 withSize:__dst metrics:a3 drivingSide:v27 visualCenter:v28, a12];
    v29 = v60;
    v30 = v59;
    v31 = v58;
    if (v25 > 0.0)
    {
      v32 = v57;
    }

    else
    {
      v32 = 0;
    }

    v34 = *MEMORY[0x1E695EFF8];
    v35 = *(MEMORY[0x1E695EFF8] + 8);
    v53 = a6[2];
    v54 = a6[1];
    v36 = a9;
    v62.width = a9;
    v37 = a10;
    v62.height = a10;
    UIGraphicsBeginImageContextWithOptions(v62, 0, a11);
    CurrentContext = UIGraphicsGetCurrentContext();
    [v29 bounds];
    x = v39;
    y = v41;
    width = v43;
    height = v45;
    if (v31)
    {
      [v31 bounds];
      v66.origin.x = v47;
      v66.origin.y = v48;
      v66.size.width = v49;
      v66.size.height = v50;
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      v64 = CGRectUnion(v63, v66);
      x = v64.origin.x;
      y = v64.origin.y;
      width = v64.size.width;
      height = v64.size.height;
    }

    memset(__dst, 0, 48);
    _transformForFrames(__dst, v34, v35, v54, v53, x, y, width, height, v36, v37);
    if (a12)
    {
      *a12 = vaddq_f64(*&__dst[32], vmlaq_n_f64(vmulq_n_f64(*&__dst[16], a12[1]), *__dst, *a12));
      if ([(MKJunction *)v24 type]!= 1)
      {
        v65.origin.x = v34;
        v65.origin.y = v35;
        v65.size.width = v36;
        v65.size.height = v37;
        a12[1] = CGRectGetMidY(v65);
      }
    }

    transform = *__dst;
    CGContextConcatCTM(CurrentContext, &transform);
    if (v31)
    {
      v51 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v34, v35, v54, v53}];
      [v51 appendPath:v29];
      [v51 setUsesEvenOddFillRule:1];
      CGContextSaveGState(CurrentContext);
      [v51 addClip];
      [v23 set];
      [v31 fill];
      CGContextRestoreGState(CurrentContext);
    }

    [v22 set];
    [v29 fill];
    v33 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

uint64_t annotatedItemListIsValidWithDisplayStyle(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 annotatedItemStyle])
  {
    if (a2 == 2)
    {
      v18 = 0uLL;
      v19 = 0uLL;
      *(&v16 + 1) = 0;
      v17 = 0uLL;
      v4 = [v3 textItemContainer];
      v5 = [v4 textItems];

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v6)
      {
        v7 = *v17;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v17 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [*(*(&v16 + 1) + 8 * i) primaryText];
            v10 = [v9 length];

            if (v10)
            {

              v14 = [v3 textItemContainer];
              v5 = [v14 displayConfig];

              if ([v5 maxRowCount])
              {
                v6 = [v5 maxItemsPerRow] != 0;
              }

              else
              {
                v6 = 0;
              }

              goto LABEL_26;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v11 = [v3 pictureItemContainer];
      v5 = [v11 pictureItems];

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        v12 = *v21;
        while (2)
        {
          for (j = 0; j != v6; ++j)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v20 + 1) + 8 * j) pictureItemPhotoType])
            {
              v6 = 1;
              goto LABEL_26;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_26:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t displayStyleForAnnotatedItemList(void *a1, int a2)
{
  v3 = a1;
  BOOL = GEOConfigGetBOOL();
  v5 = 2;
  IsValidWithDisplayStyle = annotatedItemListIsValidWithDisplayStyle(v3, 2);
  v7 = IsValidWithDisplayStyle;
  if (!BOOL || (IsValidWithDisplayStyle & 1) == 0)
  {
    if (!a2 || (v5 = 1, (annotatedItemListIsValidWithDisplayStyle(v3, 1) & 1) == 0))
    {
      if (v7)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

_MKMapItemAttribution *mkAttributionForAnnotatedList(void *a1)
{
  v1 = a1;
  v2 = [_MKMapItemAttribution alloc];
  v3 = [v1 attribution];

  v4 = [(_MKMapItemAttribution *)v2 initWithGEOMapItemAttribution:v3];

  return v4;
}

void sub_1A2FF037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

id MKGetMKMapItemViewLog()
{
  if (MKGetMKMapItemViewLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKMapItemViewLog_onceToken, &__block_literal_global_223);
  }

  v1 = MKGetMKMapItemViewLog_log;

  return v1;
}

void __MKGetMKMapItemViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKMapItemView");
  v1 = MKGetMKMapItemViewLog_log;
  MKGetMKMapItemViewLog_log = v0;
}

void sub_1A2FF18FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id _MKDebugNameForMapItem(void *a1)
{
  v1 = a1;
  v2 = [v1 name];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [v1 name];
  }

  else
  {
    v5 = [v1 _addressFormattedAsSinglelineAddress];
    v6 = [v5 length];

    if (v6)
    {
      [v1 _addressFormattedAsSinglelineAddress];
    }

    else
    {
      [v1 _coordinate];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v7, v8];
    }
    v4 = ;
  }

  v9 = v4;

  return v9;
}

void sub_1A2FF38F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2FF3EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double searchNextRequestInterval()
{
  if (searchNextRequestInterval_onceToken != -1)
  {
    dispatch_once(&searchNextRequestInterval_onceToken, &__block_literal_global_451);
  }

  v0 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  v1 = [v0 isCellConnection];
  v2 = &searchNextRequestInterval_searchRequestIntervalCellular;
  if (!v1)
  {
    v2 = &searchNextRequestInterval_searchRequestInterval;
  }

  v3 = *v2;

  return v3;
}

double __searchNextRequestInterval_block_invoke()
{
  GEOConfigGetDouble();
  searchNextRequestInterval_searchRequestIntervalCellular = fmin(fmax(v0, 0.01), 5.0);
  GEOConfigGetDouble();
  result = fmin(fmax(v1, 0.01), 5.0);
  searchNextRequestInterval_searchRequestInterval = *&result;
  return result;
}

uint64_t __searchReplaceRequestInterval_block_invoke()
{
  result = GEOConfigGetDouble();
  searchReplaceRequestInterval_searchRequestInterval = v1;
  return result;
}

void sub_1A302A5C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_1A302C508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MKAnnotationView *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t std::hash<_MKAnnotationViewPair>::operator()(unint64_t a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  return (0x77FA823ACE0B5A40 * (v3 ^ (v3 >> 47)) + ((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47))) >> 2) - 0x622015F714C7D297 * (v5 ^ (v5 >> 47)) - 0x61C8864680B583EBLL) ^ (0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47)));
}

void sub_1A302CBB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__introsort<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, double result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v143 = *v9;
      result = *(*v9 + 664);
      v144 = *v10;
      v145 = *(*v10 + 664);
      if (result < v145 || v143 < v144 && result == v145)
      {
        *v10 = v143;
LABEL_343:
        *v9 = v144;
        return result;
      }

      return result;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v162 = v10 + 1;
      v164 = v10 == a2 || v162 == a2;
      if (a4)
      {
        if (!v164)
        {
          v165 = 0;
          v166 = v10;
          do
          {
            v167 = v162;
            v169 = *v166;
            v168 = v166[1];
            result = *(v168 + 664);
            v170 = *(*v166 + 664);
            if (result < v170 || (v168 < v169 ? (v171 = result == v170) : (v171 = 0), v171))
            {
              v166[1] = v169;
              v172 = v10;
              if (v166 != v10)
              {
                v173 = v165;
                do
                {
                  result = *(v168 + 664);
                  v174 = *(v10 + v173 - 8);
                  v175 = *(v174 + 664);
                  if (result >= v175 && (v168 >= v174 || result != v175))
                  {
                    v172 = (v10 + v173);
                    goto LABEL_271;
                  }

                  *(v10 + v173) = v174;
                  v173 -= 8;
                }

                while (v173);
                v172 = v10;
              }

LABEL_271:
              *v172 = v168;
            }

            v162 = v167 + 1;
            v165 += 8;
            v166 = v167;
          }

          while (v167 + 1 != a2);
        }
      }

      else if (!v164)
      {
        do
        {
          v228 = v162;
          v230 = *a1;
          v229 = a1[1];
          result = *(v229 + 664);
          v231 = *(*a1 + 664);
          if (result < v231 || (v229 < v230 ? (v232 = result == v231) : (v232 = 0), v232))
          {
            do
            {
              do
              {
                v233 = a1;
                v234 = v230;
                v235 = *--a1;
                v230 = v235;
                a1[2] = v234;
                result = *(v229 + 664);
                v236 = *(v235 + 664);
              }

              while (result < v236);
            }

            while (v229 < v230 && result == v236);
            *v233 = v229;
          }

          v162 = v228 + 1;
          a1 = v228;
        }

        while (v228 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v10 != a2)
      {
        v177 = (v11 - 2) >> 1;
        v178 = v177;
        do
        {
          v179 = v178;
          if (v177 >= v178)
          {
            v180 = (2 * v178) | 1;
            v181 = &v10[v180];
            if (2 * v178 + 2 < v11)
            {
              v182 = v181[1];
              v183 = *(*v181 + 664);
              v184 = *(v182 + 664);
              if (v183 < v184 || (*v181 < v182 ? (v185 = v183 == v184) : (v185 = 0), v185))
              {
                ++v181;
                v180 = 2 * v178 + 2;
              }
            }

            v186 = &v10[v178];
            v187 = *v181;
            result = *(*v181 + 664);
            v188 = *v186;
            v189 = *(*v186 + 664);
            if (result >= v189 && (v187 >= v188 || result != v189))
            {
              do
              {
                *v186 = v187;
                v186 = v181;
                if (v177 < v180)
                {
                  break;
                }

                v191 = 2 * v180;
                v180 = (2 * v180) | 1;
                v181 = &v10[v180];
                v192 = v191 + 2;
                if (v192 < v11)
                {
                  v193 = v181[1];
                  v194 = *(*v181 + 664);
                  v195 = *(v193 + 664);
                  if (v194 < v195 || (*v181 < v193 ? (v196 = v194 == v195) : (v196 = 0), v196))
                  {
                    ++v181;
                    v180 = v192;
                  }
                }

                v187 = *v181;
                result = *(*v181 + 664);
                v197 = *(v188 + 664);
                if (result < v197)
                {
                  break;
                }
              }

              while (v187 >= v188 || result != v197);
              *v186 = v188;
            }
          }

          --v178;
        }

        while (v179);
        do
        {
          v199 = 0;
          v200 = *v10;
          v201 = v10;
          do
          {
            v202 = v201;
            v203 = &v201[v199];
            v201 = v203 + 1;
            v204 = 2 * v199;
            v199 = (2 * v199) | 1;
            v205 = v204 + 2;
            if (v205 < v11)
            {
              v208 = v203[2];
              v206 = v203 + 2;
              v207 = v208;
              v209 = *(v206 - 1);
              result = *(v209 + 664);
              v210 = *(v208 + 664);
              if (result < v210 || (v209 < v207 ? (v211 = result == v210) : (v211 = 0), v211))
              {
                v201 = v206;
                v199 = v205;
              }
            }

            *v202 = *v201;
          }

          while (v199 <= (v11 - 2) / 2);
          if (v201 == --a2)
          {
            *v201 = v200;
          }

          else
          {
            *v201 = *a2;
            *a2 = v200;
            v212 = (v201 - v10 + 8) >> 3;
            v213 = v212 - 2;
            if (v212 >= 2)
            {
              v214 = v213 >> 1;
              v215 = &v10[v213 >> 1];
              v216 = *v215;
              result = *(*v215 + 664);
              v217 = *v201;
              v218 = *(*v201 + 664);
              if (result < v218 || (v216 < v217 ? (v219 = result == v218) : (v219 = 0), v219))
              {
                *v201 = v216;
                if (v213 >= 2)
                {
                  while (1)
                  {
                    v221 = v214 - 1;
                    v214 = (v214 - 1) >> 1;
                    v220 = &v10[v214];
                    v222 = *v220;
                    result = *(*v220 + 664);
                    v223 = *(v217 + 664);
                    if (result >= v223 && (v222 >= v217 || result != v223))
                    {
                      break;
                    }

                    *v215 = v222;
                    v215 = &v10[v214];
                    if (v221 <= 1)
                    {
                      goto LABEL_335;
                    }
                  }
                }

                v220 = v215;
LABEL_335:
                *v220 = v217;
              }
            }
          }
        }

        while (v11-- > 2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v10[v11 >> 1];
    v14 = v13;
    if (v11 >= 0x81)
    {
      v15 = *v13;
      v16 = *(*v13 + 664);
      v17 = *v10;
      v18 = *v10 + 656;
      v19 = *(*v10 + 664);
      if (v16 < v19 || (v15 < v17 ? (v20 = v16 == v19) : (v20 = 0), v20))
      {
        v39 = *v9;
        v40 = *(*v9 + 664);
        if (v40 < v16 || (v39 < v15 ? (v41 = v40 == v16) : (v41 = 0), v41))
        {
          *v10 = v39;
        }

        else
        {
          *v10 = v15;
          *v13 = v17;
          v42 = *v9;
          v43 = *(*v9 + 664);
          v44 = *(v18 + 8);
          if (v43 >= v44 && (v42 >= v17 || v43 != v44))
          {
            goto LABEL_52;
          }

          *v13 = v42;
        }

        *v9 = v17;
        goto LABEL_52;
      }

      v21 = *v9;
      v22 = *(*v9 + 664);
      if (v22 < v16 || v21 < v15 && v22 == v16)
      {
        *v13 = v21;
        *v9 = v15;
        v23 = *v13;
        v24 = *(*v13 + 664);
        v25 = *v10;
        v26 = *(*v10 + 664);
        if (v24 < v26 || v23 < v25 && v24 == v26)
        {
          *v10 = v23;
          *v13 = v25;
        }
      }

LABEL_52:
      v47 = v12 - 1;
      v48 = v10[v12 - 1];
      v49 = *(v48 + 664);
      v50 = v10[1];
      v51 = *(v50 + 664);
      if (v49 < v51 || v48 < v50 && v49 == v51)
      {
        v52 = *(a2 - 2);
        v53 = *(v52 + 664);
        if (v53 < v49 || v52 < v48 && v53 == v49)
        {
          v10[1] = v52;
          goto LABEL_59;
        }

        v10[1] = v48;
        v10[v47] = v50;
        v114 = *(a2 - 2);
        v115 = *(v114 + 664);
        v116 = *(v50 + 664);
        if (v115 < v116 || v114 < v50 && v115 == v116)
        {
          v10[v47] = v114;
LABEL_59:
          *(a2 - 2) = v50;
        }
      }

      else
      {
        v96 = *(a2 - 2);
        v97 = *(v96 + 664);
        if (v97 < v49 || v96 < v48 && v97 == v49)
        {
          v10[v47] = v96;
          *(a2 - 2) = v48;
          v98 = v10[v47];
          v99 = *(v98 + 664);
          v100 = v10[1];
          v101 = *(v100 + 664);
          if (v99 < v101 || v98 < v100 && v99 == v101)
          {
            v10[1] = v98;
            v10[v47] = v100;
          }
        }
      }

      v56 = v13[1];
      v54 = v13 + 1;
      v55 = v56;
      v57 = *(v56 + 664);
      v58 = v10[2];
      v59 = *(v58 + 664);
      if (v57 < v59 || v55 < v58 && v57 == v59)
      {
        v60 = *(a2 - 3);
        v61 = *(v60 + 664);
        if (v61 < v57 || v60 < v55 && v61 == v57)
        {
          v10[2] = v60;
          goto LABEL_67;
        }

        v10[2] = v55;
        *v54 = v58;
        v117 = *(a2 - 3);
        v118 = *(v117 + 664);
        v119 = *(v58 + 664);
        if (v118 < v119 || v117 < v58 && v118 == v119)
        {
          *v54 = v117;
LABEL_67:
          *(a2 - 3) = v58;
        }
      }

      else
      {
        v102 = *(a2 - 3);
        v103 = *(v102 + 664);
        if (v103 < v57 || v102 < v55 && v103 == v57)
        {
          *v54 = v102;
          *(a2 - 3) = v55;
          v104 = *v54;
          v105 = *(*v54 + 664);
          v106 = v10[2];
          v107 = *(v106 + 664);
          if (v105 < v107 || v104 < v106 && v105 == v107)
          {
            v10[2] = v104;
            *v54 = v106;
          }
        }
      }

      v62 = *v14;
      v63 = *(*v14 + 664);
      v64 = v10[v47];
      v65 = *(v64 + 664);
      if (v63 < v65)
      {
        v66 = *v54;
        goto LABEL_72;
      }

      v66 = *v54;
      if (v62 < v64 && v63 == v65)
      {
LABEL_72:
        v67 = *(v66 + 664);
        if (v67 < v63 || v66 < v62 && v67 == v63)
        {
          v10[v47] = v66;
          goto LABEL_76;
        }

        v10[v47] = v62;
        *v14 = v64;
        v120 = *(v66 + 664);
        v121 = *(v64 + 664);
        if (v120 < v121 || v66 < v64 && v120 == v121)
        {
          *v14 = v66;
          v62 = v66;
LABEL_76:
          *v54 = v64;
        }

        else
        {
          v62 = v64;
        }
      }

      else
      {
        v108 = *(v66 + 664);
        if (v108 < v63 || v66 < v62 && v108 == v63)
        {
          *v14 = v66;
          *v54 = v62;
          v109 = *(v66 + 664);
          v110 = *(v64 + 664);
          if (v109 < v110 || v66 < v64 && v109 == v110)
          {
            v10[v47] = v66;
            v54 = v14;
            v62 = v64;
            goto LABEL_76;
          }

          v62 = v66;
        }
      }

      v68 = *v10;
      *v10 = v62;
      *v14 = v68;
      goto LABEL_78;
    }

    v27 = *v10;
    v28 = *(*v10 + 664);
    v29 = *v13;
    v30 = *v14 + 656;
    v31 = *(*v14 + 664);
    if (v28 >= v31 && (v27 >= v29 || v28 != v31))
    {
      v33 = *v9;
      v34 = *(*v9 + 664);
      if (v34 < v28 || v33 < v27 && v34 == v28)
      {
        *v10 = v33;
        *v9 = v27;
        v35 = *v10;
        v36 = *(*v10 + 664);
        v37 = *v14;
        v38 = *(*v14 + 664);
        if (v36 < v38 || v35 < v37 && v36 == v38)
        {
          *v14 = v35;
          *v10 = v37;
        }
      }

      goto LABEL_78;
    }

    v45 = *v9;
    v46 = *(*v9 + 664);
    if (v46 < v28 || v45 < v27 && v46 == v28)
    {
      *v14 = v45;
    }

    else
    {
      *v14 = v27;
      *v10 = v29;
      v111 = *v9;
      v112 = *(*v9 + 664);
      v113 = *(v30 + 8);
      if (v112 >= v113 && (v111 >= v29 || v112 != v113))
      {
        goto LABEL_78;
      }

      *v10 = v111;
    }

    *v9 = v29;
LABEL_78:
    --a3;
    v69 = *v10;
    if (a4)
    {
      result = *(v69 + 664);
LABEL_83:
      for (i = v10 + 1; ; ++i)
      {
        v74 = i - 1;
        v73 = *i;
        v75 = *(*i + 664);
        if (v75 >= result && (v73 >= v69 || v75 != result))
        {
          break;
        }
      }

      v77 = a2 - 1;
      if (v74 == v10)
      {
        v82 = a2 - 1;
        while (1)
        {
          v78 = v82;
          v83 = v82 + 1;
          if (i >= v83)
          {
            break;
          }

          v84 = *(*v78 + 664);
          if (v84 >= result)
          {
            v82 = v78 - 1;
            if (*v78 >= v69 || v84 != result)
            {
              continue;
            }
          }

          goto LABEL_109;
        }

        v78 = v83;
      }

      else
      {
        do
        {
          v78 = v77;
          v79 = *v77;
          v80 = *(*v77 + 664);
          if (v80 < result)
          {
            break;
          }

          --v77;
        }

        while (v79 >= v69 || v80 != result);
      }

LABEL_109:
      if (i < v78)
      {
        v86 = *v78;
        v87 = i;
        v88 = v78;
        do
        {
          *v87 = v86;
          v87 += 8;
          *v88 = v73;
          v89 = *(v69 + 664);
          while (1)
          {
            v74 = (v87 - 8);
            v73 = *v87;
            v90 = *(*v87 + 664);
            if (v90 >= v89 && (v73 >= v69 || v90 != v89))
            {
              break;
            }

            v87 += 8;
          }

          v92 = v88 - 1;
          do
          {
            v88 = v92;
            v86 = *v92;
            v93 = *(*v92 + 664);
            if (v93 < v89)
            {
              break;
            }

            --v92;
          }

          while (v86 >= v69 || v93 != v89);
        }

        while (v87 < v88);
      }

      if (v74 != v10)
      {
        *v10 = *v74;
      }

      *v74 = v69;
      if (i < v78)
      {
        goto LABEL_131;
      }

      v95 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **>(v10, v74);
      v10 = v74 + 1;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **>(v74 + 1, a2))
      {
        a2 = v74;
        if (!v95)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v95)
      {
LABEL_131:
        std::__introsort<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **,false>(a1, v74, a3, a4 & 1);
        a4 = 0;
        v10 = v74 + 1;
      }
    }

    else
    {
      v70 = *(v10 - 1);
      v71 = *(v70 + 664);
      result = *(v69 + 664);
      if (v71 < result || v70 < v69 && v71 == result)
      {
        goto LABEL_83;
      }

      v122 = *v9;
      v123 = *(*v9 + 664);
      if (result < v123 || v69 < v122 && result == v123)
      {
        v124 = v10 + 1;
        do
        {
          v10 = v124;
          v125 = *v124;
          v126 = *(*v124 + 664);
          if (result < v126)
          {
            break;
          }

          ++v124;
        }

        while (v69 >= v125 || result != v126);
      }

      else
      {
        v139 = v10 + 1;
        do
        {
          v10 = v139;
          if (v139 >= a2)
          {
            break;
          }

          v140 = *v139;
          v141 = *(*v139 + 664);
          if (result < v141)
          {
            break;
          }

          ++v139;
        }

        while (v69 >= v140 || result != v141);
      }

      v128 = a2;
      if (v10 < a2)
      {
        v128 = a2 - 1;
        while (result < v123 || v69 < v122 && result == v123)
        {
          v129 = *--v128;
          v122 = v129;
          v123 = *(v129 + 664);
        }
      }

      if (v10 < v128)
      {
        v130 = *v10;
        v131 = *v128;
        do
        {
          *v10 = v131;
          *v128 = v130;
          result = *(v69 + 664);
          v132 = v10 + 1;
          do
          {
            v10 = v132;
            v130 = *v132;
            v133 = *(*v132 + 664);
            if (result < v133)
            {
              break;
            }

            ++v132;
          }

          while (v69 >= v130 || result != v133);
          do
          {
            do
            {
              v135 = *--v128;
              v131 = v135;
              v136 = *(v135 + 664);
            }

            while (result < v136);
          }

          while (v69 < v131 && result == v136);
        }

        while (v10 < v128);
      }

      v138 = v10 - 1;
      if (v10 - 1 != a1)
      {
        *a1 = *v138;
      }

      a4 = 0;
      *v138 = v69;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **,0>(v10, v10 + 1, v10 + 2, a2 - 1);
      return result;
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **,0>(v10, v10 + 1, v10 + 2, v10 + 3);
      v154 = *v9;
      result = *(*v9 + 664);
      v155 = v10[3];
      v156 = *(v155 + 664);
      if (result >= v156 && (v154 >= v155 || result != v156))
      {
        return result;
      }

      v10[3] = v154;
      *v9 = v155;
      v157 = v10[2];
      v152 = v10[3];
      result = *(v152 + 664);
      v158 = *(v157 + 664);
      if (result >= v158 && (v152 >= v157 || result != v158))
      {
        return result;
      }

      v10[2] = v152;
      v10[3] = v157;
      result = *(v152 + 664);
      v159 = v10[1];
      v160 = *(v159 + 664);
      if (result >= v160 && (v152 >= v159 || result != v160))
      {
        return result;
      }

      v10[1] = v152;
      v10[2] = v159;
      result = *(v152 + 664);
      v153 = *v10;
      goto LABEL_239;
    }

    goto LABEL_9;
  }

  v144 = *v10;
  v146 = v10[1];
  result = *(v146 + 664);
  v147 = *v10 + 656;
  v148 = *(*v10 + 664);
  if (result >= v148 && (v146 >= v144 || result != v148))
  {
    v150 = *v9;
    v151 = *(*v9 + 664);
    if (v151 >= result && (v150 >= v146 || v151 != result))
    {
      return result;
    }

    v10[1] = v150;
    *v9 = v146;
    v153 = *v10;
    v152 = v10[1];
    result = *(v152 + 664);
LABEL_239:
    v161 = *(v153 + 664);
    if (result < v161 || v152 < v153 && result == v161)
    {
      *v10 = v152;
      v10[1] = v153;
    }

    return result;
  }

  v226 = *v9;
  v227 = *(*v9 + 664);
  if (v227 < result || v226 < v146 && v227 == result)
  {
    *v10 = v226;
    goto LABEL_343;
  }

  *v10 = v146;
  v10[1] = v144;
  v238 = *v9;
  result = *(*v9 + 664);
  v239 = *(v147 + 8);
  if (result < v239 || v238 < v144 && result == v239)
  {
    v10[1] = v238;
    goto LABEL_343;
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 656);
  v6 = *result;
  v7 = *(*result + 656);
  if (v5 < v7 || (v4 < v6 ? (v8 = v5 == v7) : (v8 = 0), v8))
  {
    v15 = *a3;
    v16 = *(*a3 + 656);
    if (v16 < v5 || (v15 < v4 ? (v17 = v16 == v5) : (v17 = 0), v17))
    {
      *result = v15;
    }

    else
    {
      *result = v4;
      *a2 = v6;
      v4 = *a3;
      v18 = *(*a3 + 656);
      v19 = *(v6 + 656);
      if (v18 >= v19 && (v4 >= v6 || v18 != v19))
      {
        goto LABEL_28;
      }

      *a2 = v4;
    }

    *a3 = v6;
    goto LABEL_27;
  }

  v6 = *a3;
  v9 = *(*a3 + 656);
  if (v9 >= v5 && (v6 >= v4 || v9 != v5))
  {
LABEL_27:
    v4 = v6;
    goto LABEL_28;
  }

  *a2 = v6;
  *a3 = v4;
  v11 = *a2;
  v12 = *(*a2 + 656);
  v13 = *result;
  v14 = *(*result + 656);
  if (v12 < v14 || v11 < v13 && v12 == v14)
  {
    *result = v11;
    *a2 = v13;
    v4 = *a3;
  }

LABEL_28:
  v20 = *a4;
  v21 = *(*a4 + 656);
  v22 = *(v4 + 656);
  if (v21 < v22 || v20 < v4 && v21 == v22)
  {
    *a3 = v20;
    *a4 = v4;
    v23 = *a3;
    v24 = *(*a3 + 656);
    v25 = *a2;
    v26 = *(*a2 + 656);
    if (v24 < v26 || v23 < v25 && v24 == v26)
    {
      *a2 = v23;
      *a3 = v25;
      v27 = *a2;
      v28 = *(*a2 + 656);
      v29 = *result;
      v30 = *(*result + 656);
      if (v28 < v30 || v27 < v29 && v28 == v30)
      {
        *result = v27;
        *a2 = v29;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *(v5 + 656);
      v7 = *a1;
      v8 = *(*a1 + 656);
      if (v6 < v8 || (result = 1, v5 < v7) && v6 == v8)
      {
        *a1 = v5;
LABEL_68:
        *(a2 - 1) = v7;
        return 1;
      }

      return result;
    }

LABEL_34:
    v30 = a1 + 2;
    v31 = *a1;
    v32 = a1 + 1;
    v33 = a1[1];
    v34 = *(v33 + 656);
    v35 = *(*a1 + 656);
    if (v34 < v35 || v33 < v31 && v34 == v35)
    {
      v36 = *v30;
      v37 = *(*v30 + 656);
      if (v37 < v34 || v36 < v33 && v37 == v34)
      {
        *a1 = v36;
LABEL_41:
        v32 = a1 + 2;
LABEL_42:
        *v32 = v31;
        goto LABEL_43;
      }

      *a1 = v33;
      a1[1] = v31;
      v61 = *(v36 + 656);
      v62 = *(v31 + 656);
      if (v61 < v62 || v36 < v31 && v61 == v62)
      {
        *v32 = v36;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = *v30;
      v55 = *(*v30 + 656);
      if (v55 < v34 || v54 < v33 && v55 == v34)
      {
        *v32 = v54;
        *v30 = v33;
        v56 = *(v54 + 656);
        v57 = *(v31 + 656);
        if (v56 < v57 || v54 < v31 && v56 == v57)
        {
          *a1 = v54;
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    v38 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v39 = 0;
      v40 = 0;
      while (1)
      {
        v41 = *v38;
        v42 = *(*v38 + 656);
        v43 = *v30;
        v44 = *(v43 + 656);
        if (v42 < v44 || (v41 < v43 ? (v45 = v42 == v44) : (v45 = 0), v45))
        {
          *v38 = v43;
          v46 = v39;
          do
          {
            v47 = *(v41 + 656);
            v48 = *(a1 + v46 + 8);
            v49 = *(v48 + 656);
            if (v47 >= v49 && (v41 >= v48 || v47 != v49))
            {
              v51 = (a1 + v46 + 16);
              goto LABEL_60;
            }

            *(a1 + v46 + 16) = v48;
            v46 -= 8;
          }

          while (v46 != -16);
          v51 = a1;
LABEL_60:
          *v51 = v41;
          if (++v40 == 8)
          {
            return v38 + 1 == a2;
          }
        }

        v30 = v38;
        v39 += 8;
        if (++v38 == a2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    }

    if (v4 != 5)
    {
      goto LABEL_34;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
    v10 = *(a2 - 1);
    v11 = *(v10 + 656);
    v12 = a1[3];
    v13 = *(v12 + 656);
    if (v11 >= v13)
    {
      result = 1;
      if (v10 >= v12 || v11 != v13)
      {
        return result;
      }
    }

    a1[3] = v10;
    *(a2 - 1) = v12;
    v15 = a1[2];
    v14 = a1[3];
    v16 = *(v14 + 656);
    v17 = *(v15 + 656);
    if (v16 >= v17)
    {
      result = 1;
      if (v14 >= v15 || v16 != v17)
      {
        return result;
      }
    }

    a1[2] = v14;
    a1[3] = v15;
    v18 = *(v14 + 656);
    v19 = a1[1];
    v20 = *(v19 + 656);
    if (v18 >= v20)
    {
      result = 1;
      if (v14 >= v19 || v18 != v20)
      {
        return result;
      }
    }

    a1[1] = v14;
    a1[2] = v19;
    v21 = *(v14 + 656);
    v22 = *a1;
LABEL_30:
    v29 = *(v22 + 656);
    if (v21 >= v29)
    {
      result = 1;
      if (v14 >= v22 || v21 != v29)
      {
        return result;
      }
    }

    *a1 = v14;
    a1[1] = v22;
    return 1;
  }

  v7 = *a1;
  v23 = a1[1];
  v24 = *(v23 + 656);
  v25 = *(*a1 + 656);
  if (v24 >= v25 && (v23 >= v7 || v24 != v25))
  {
    v27 = *(a2 - 1);
    v28 = *(v27 + 656);
    if (v28 >= v24)
    {
      result = 1;
      if (v27 >= v23 || v28 != v24)
      {
        return result;
      }
    }

    a1[1] = v27;
    *(a2 - 1) = v23;
    v22 = *a1;
    v14 = a1[1];
    v21 = *(v14 + 656);
    goto LABEL_30;
  }

  v52 = *(a2 - 1);
  v53 = *(v52 + 656);
  if (v53 < v24 || v52 < v23 && v53 == v24)
  {
    *a1 = v52;
    goto LABEL_68;
  }

  *a1 = v23;
  a1[1] = v7;
  v58 = *(a2 - 1);
  v59 = *(v58 + 656);
  v60 = *(v7 + 656);
  if (v59 < v60 || (result = 1, v58 < v7) && v59 == v60)
  {
    a1[1] = v58;
    goto LABEL_68;
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 664);
  v6 = *result;
  v7 = *result + 656;
  v8 = *(*result + 664);
  if (v5 < v8 || (v4 < v6 ? (v9 = v5 == v8) : (v9 = 0), v9))
  {
    v16 = *a3;
    v17 = *(*a3 + 664);
    if (v17 < v5 || (v16 < v4 ? (v18 = v17 == v5) : (v18 = 0), v18))
    {
      *result = v16;
    }

    else
    {
      *result = v4;
      *a2 = v6;
      v4 = *a3;
      v19 = *(*a3 + 664);
      v20 = *(v7 + 8);
      if (v19 >= v20 && (v4 >= v6 || v19 != v20))
      {
        goto LABEL_28;
      }

      *a2 = v4;
    }

    *a3 = v6;
    goto LABEL_27;
  }

  v6 = *a3;
  v10 = *(*a3 + 664);
  if (v10 >= v5 && (v6 >= v4 || v10 != v5))
  {
LABEL_27:
    v4 = v6;
    goto LABEL_28;
  }

  *a2 = v6;
  *a3 = v4;
  v12 = *a2;
  v13 = *(*a2 + 664);
  v14 = *result;
  v15 = *(*result + 664);
  if (v13 < v15 || v12 < v14 && v13 == v15)
  {
    *result = v12;
    *a2 = v14;
    v4 = *a3;
  }

LABEL_28:
  v21 = *a4;
  v22 = *(*a4 + 664);
  v23 = *(v4 + 664);
  if (v22 < v23 || v21 < v4 && v22 == v23)
  {
    *a3 = v21;
    *a4 = v4;
    v24 = *a3;
    v25 = *(*a3 + 664);
    v26 = *a2;
    v27 = *(*a2 + 664);
    if (v25 < v27 || v24 < v26 && v25 == v27)
    {
      *a2 = v24;
      *a3 = v26;
      v28 = *a2;
      v29 = *(*a2 + 664);
      v30 = *result;
      v31 = *(*result + 664);
      if (v29 < v31 || v28 < v30 && v29 == v31)
      {
        *result = v28;
        *a2 = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *(v5 + 664);
      v7 = *a1;
      v8 = *(*a1 + 664);
      if (v6 < v8 || (result = 1, v5 < v7) && v6 == v8)
      {
        *a1 = v5;
LABEL_68:
        *(a2 - 1) = v7;
        return 1;
      }

      return result;
    }

LABEL_34:
    v31 = a1 + 2;
    v32 = *a1;
    v33 = a1 + 1;
    v34 = a1[1];
    v35 = *(v34 + 664);
    v36 = *a1 + 656;
    v37 = *(*a1 + 664);
    if (v35 < v37 || v34 < v32 && v35 == v37)
    {
      v38 = *v31;
      v39 = *v31 + 656;
      v40 = *(*v31 + 664);
      if (v40 < v35 || v38 < v34 && v40 == v35)
      {
        *a1 = v38;
LABEL_41:
        v33 = a1 + 2;
LABEL_42:
        *v33 = v32;
        goto LABEL_43;
      }

      *a1 = v34;
      a1[1] = v32;
      v65 = *(v39 + 8);
      v66 = *(v36 + 8);
      if (v65 < v66 || v38 < v32 && v65 == v66)
      {
        *v33 = v38;
        goto LABEL_41;
      }
    }

    else
    {
      v57 = *v31;
      v58 = *v31 + 656;
      v59 = *(*v31 + 664);
      if (v59 < v35 || v57 < v34 && v59 == v35)
      {
        *v33 = v57;
        *v31 = v34;
        v60 = *(v58 + 8);
        v61 = *(v36 + 8);
        if (v60 < v61 || v57 < v32 && v60 == v61)
        {
          *a1 = v57;
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    v41 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v42 = 0;
      v43 = 0;
      while (1)
      {
        v44 = *v41;
        v45 = *(*v41 + 664);
        v46 = *v31;
        v47 = *(*v31 + 664);
        if (v45 < v47 || (v44 < v46 ? (v48 = v45 == v47) : (v48 = 0), v48))
        {
          *v41 = v46;
          v49 = v42;
          do
          {
            v50 = *(v44 + 664);
            v51 = *(a1 + v49 + 8);
            v52 = *(v51 + 664);
            if (v50 >= v52 && (v44 >= v51 || v50 != v52))
            {
              v54 = (a1 + v49 + 16);
              goto LABEL_60;
            }

            *(a1 + v49 + 16) = v51;
            v49 -= 8;
          }

          while (v49 != -16);
          v54 = a1;
LABEL_60:
          *v54 = v44;
          if (++v43 == 8)
          {
            return v41 + 1 == a2;
          }
        }

        v31 = v41;
        v42 += 8;
        if (++v41 == a2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    }

    if (v4 != 5)
    {
      goto LABEL_34;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
    v10 = *(a2 - 1);
    v11 = *(v10 + 664);
    v12 = a1[3];
    v13 = *(v12 + 664);
    if (v11 >= v13)
    {
      result = 1;
      if (v10 >= v12 || v11 != v13)
      {
        return result;
      }
    }

    a1[3] = v10;
    *(a2 - 1) = v12;
    v15 = a1[2];
    v14 = a1[3];
    v16 = *(v14 + 664);
    v17 = *(v15 + 664);
    if (v16 >= v17)
    {
      result = 1;
      if (v14 >= v15 || v16 != v17)
      {
        return result;
      }
    }

    a1[2] = v14;
    a1[3] = v15;
    v18 = *(v14 + 664);
    v19 = a1[1];
    v20 = *(v19 + 664);
    if (v18 >= v20)
    {
      result = 1;
      if (v14 >= v19 || v18 != v20)
      {
        return result;
      }
    }

    a1[1] = v14;
    a1[2] = v19;
    v21 = *(v14 + 664);
    v22 = *a1;
LABEL_30:
    v30 = *(v22 + 664);
    if (v21 >= v30)
    {
      result = 1;
      if (v14 >= v22 || v21 != v30)
      {
        return result;
      }
    }

    *a1 = v14;
    a1[1] = v22;
    return 1;
  }

  v7 = *a1;
  v23 = a1[1];
  v24 = *(v23 + 664);
  v25 = *a1 + 656;
  v26 = *(*a1 + 664);
  if (v24 >= v26 && (v23 >= v7 || v24 != v26))
  {
    v28 = *(a2 - 1);
    v29 = *(v28 + 664);
    if (v29 >= v24)
    {
      result = 1;
      if (v28 >= v23 || v29 != v24)
      {
        return result;
      }
    }

    a1[1] = v28;
    *(a2 - 1) = v23;
    v22 = *a1;
    v14 = a1[1];
    v21 = *(v14 + 664);
    goto LABEL_30;
  }

  v55 = *(a2 - 1);
  v56 = *(v55 + 664);
  if (v56 < v24 || v55 < v23 && v56 == v24)
  {
    *a1 = v55;
    goto LABEL_68;
  }

  *a1 = v23;
  a1[1] = v7;
  v62 = *(a2 - 1);
  v63 = *(v62 + 664);
  v64 = *(v25 + 8);
  if (v63 < v64 || (result = 1, v62 < v7) && v63 == v64)
  {
    a1[1] = v62;
    goto LABEL_68;
  }

  return result;
}

__CFString *MKPlaceCardActionTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 0x31)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E76C9F28[a1 - 1];
  }
}

__CFString *MKPlaceItemOptionsAsString(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"MKPlaceItemOptionUserLocation"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"MKPlaceItemOptionDroppedPin"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"MKPlaceItemOptionSuggestedFavorite"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"MKPlaceItemOptionMeCard"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 addObject:@"MKPlaceItemOptionContactOnly"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_16:
  [v3 addObject:@"MKPlaceItemOptionPersonCard"];
  if ((a1 & 0x40) != 0)
  {
LABEL_8:
    [v3 addObject:@"MKPlaceItemOptionHomeWorkSchoolShortcut"];
  }

LABEL_9:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@" | "];
  }

  else
  {
    v4 = @"MKPlaceItemOptionNone";
  }

  return v4;
}

void sub_1A3034A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A303B02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MKURLGetSchemeType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = 0;
    goto LABEL_22;
  }

  v3 = [v1 scheme];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"maps"])
  {
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"map"])
  {
    v5 = 2;
    goto LABEL_21;
  }

  if ([v4 isEqualToString:@"mapitem"])
  {
    v5 = 3;
    goto LABEL_21;
  }

  if ([v4 isEqualToString:@"x-maps-mapitemhandles"])
  {
    v5 = 4;
    goto LABEL_21;
  }

  if ([v4 isEqualToString:@"geo-navigation"])
  {
    v5 = 7;
    goto LABEL_21;
  }

  if (([v4 isEqualToString:@"http"] & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"https"))
  {
LABEL_20:
    v5 = 0;
    goto LABEL_21;
  }

  v6 = [v2 host];
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"maps.apple.com"];

  if ((v8 & 1) == 0)
  {
    v9 = [v2 host];
    v10 = [v9 lowercaseString];
    v11 = [v10 isEqualToString:@"collections.apple.com"];

    if (v11 & 1) != 0 || ([v2 host], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "lowercaseString"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"guides.apple.com"), v13, v12, (v14))
    {
      v5 = 5;
      goto LABEL_21;
    }

    v15 = [v2 host];
    v16 = [v15 lowercaseString];
    v17 = [&unk_1F16122B8 containsObject:v16];

    if (v17)
    {
      v5 = 6;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_3:
  v5 = 1;
LABEL_21:

LABEL_22:
  return v5;
}

id _MKPerformShortURLTransformationIfNeeded(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  BOOL = GEOConfigGetBOOL();
  v3 = MKGetURLTransformationLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (BOOL)
  {
    if (v4)
    {
      v5 = [v1 absoluteString];
      v19 = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "Transforming URL... %@", &v19, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v1 resolvingAgainstBaseURL:1];
    v7 = [v6 host];
    v8 = [v7 isEqual:@"maps.apple"];

    if (v8)
    {
      v9 = [v6 path];
      v10 = [@"/_shortened" stringByAppendingString:v9];
      [v6 setPath:v10];

      [v6 setHost:@"maps.apple.com"];
      v11 = [v6 URL];
      v12 = [v11 absoluteString];
      v13 = [v12 length];

      v14 = MKGetURLTransformationLog();
      v15 = v14;
      if (v13)
      {
        v16 = v11;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = v11;
          _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "Short URL transformation succeeded, new URL is %@", &v19, 0xCu);
          v16 = v11;
        }
      }

      else
      {
        v16 = v1;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_ERROR, "Short URL has a length of 0, an error has occured.", &v19, 2u);
          v16 = v1;
        }
      }

      v17 = v16;
    }

    else
    {
      v17 = v1;
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "Short URL transformation disabled, returning original URL.", &v19, 2u);
    }

    v17 = v1;
  }

  return v17;
}

id MKGetURLTransformationLog()
{
  if (MKGetURLTransformationLog_onceToken != -1)
  {
    dispatch_once(&MKGetURLTransformationLog_onceToken, &__block_literal_global_29833);
  }

  v1 = MKGetURLTransformationLog_log;

  return v1;
}

void __MKGetURLTransformationLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "URLTransformation");
  v1 = MKGetURLTransformationLog_log;
  MKGetURLTransformationLog_log = v0;
}

id overlayRendererKVOKeys()
{
  if (overlayRendererKVOKeys_once != -1)
  {
    dispatch_once(&overlayRendererKVOKeys_once, &__block_literal_global_350);
  }

  v1 = overlayRendererKVOKeys_keys;

  return v1;
}

void __overlayRendererKVOKeys_block_invoke()
{
  v0 = overlayRendererKVOKeys_keys;
  overlayRendererKVOKeys_keys = &unk_1F16122D0;
}

void sub_1A303F5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A303F898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A303FBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MKGetMKSearchFoundationResultLog()
{
  if (MKGetMKSearchFoundationResultLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKSearchFoundationResultLog_onceToken, &__block_literal_global_30716);
  }

  v1 = MKGetMKSearchFoundationResultLog_log;

  return v1;
}

void __MKGetMKSearchFoundationResultLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKSearchFoundationResult");
  v1 = MKGetMKSearchFoundationResultLog_log;
  MKGetMKSearchFoundationResultLog_log = v0;
}

void sub_1A304487C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3047B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A304E088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AddPathForPolygon(CGPath *a1, void *a2, double a3, double a4)
{
  v13 = a2;
  v7 = [v13 pointCount];
  v8 = v13;
  v9 = [v13 points];
  if (v7 >= 3)
  {
    v10 = v9;
    CGPathMoveToPoint(a1, 0, *v9 - a3, v9[1] - a4);
    v11 = v7 - 1;
    v12 = v10 + 3;
    do
    {
      CGPathAddLineToPoint(a1, 0, *(v12 - 1) - a3, *v12 - a4);
      v12 += 2;
      --v11;
    }

    while (v11);
    CGPathCloseSubpath(a1);
  }
}

void sub_1A3055208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A3055FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v35 - 176));
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1A30575E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A305B164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<gm::Matrix<double,2,1>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<gm::Matrix<double,2,1>>>(a2);
    }

    std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t geo::Intersect::isSelfIntersecting<double>(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  if (v1 >= 3)
  {
    if (v1 <= 0xAAAAAAAAAAAAAAALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo>>(v1);
    }

    std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

void sub_1A305BA08(_Unwind_Exception *a1)
{
  std::__tree<gm::LineSegment<double,2>,geo::Intersect::SHSegmentComparator<double>,std::allocator<gm::LineSegment<double,2>>>::destroy(*(v2 - 104));
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gm::Matrix<double,2,1>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,false>(uint64_t *a1, unint64_t a2, uint64_t **a3, uint64_t a4, char a5)
{
LABEL_1:
  v10 = (a2 - 24);
  v215 = (a2 - 16);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, (v11 + 24), (a2 - 24), a3);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, v11 + 24, (v11 + 48), (a2 - 24), a3);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, v11 + 24, v11 + 48, (v11 + 72), (a2 - 24), a3);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v94 = *(a2 - 24);
        if (*(a2 - 8) == *(v11 + 16))
        {
          v95 = *v11;
LABEL_184:
          v96 = **a3;
          v97 = (v96 + 16 * v94);
          v98 = (v96 + 16 * v95);
          if (*v97 >= *v98 && (*v97 != *v98 || v97[1] >= v98[1]))
          {
            return;
          }
        }

        else
        {
          v95 = *v11;
          if (v94 != *(v11 + 8) || *v215 != v95)
          {
            goto LABEL_184;
          }

          if (!*(a2 - 8))
          {
            return;
          }
        }

        v225 = *(v11 + 16);
        v220 = *v11;
        v199 = *v10;
        *(v11 + 16) = *(a2 - 8);
        *v11 = v199;
        *(a2 - 8) = v225;
        *v10 = v220;
        return;
      }
    }

    if (v12 <= 575)
    {
      break;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return;
      }

      v122 = (v13 - 2) >> 1;
      v123 = v122;
      while (1)
      {
        v124 = v123;
        if (v122 < v123)
        {
          goto LABEL_288;
        }

        v125 = (2 * v123) | 1;
        v126 = v11 + 24 * v125;
        if (2 * v124 + 2 < v13)
        {
          v127 = *v126;
          if (*(v126 + 16) == *(v126 + 40))
          {
            v128 = *(v126 + 24);
          }

          else
          {
            v128 = *(v126 + 24);
            if (v127 == *(v126 + 32) && *(v126 + 8) == v128)
            {
              if (!*(v126 + 16))
              {
                goto LABEL_250;
              }

LABEL_249:
              v126 += 24;
              v125 = 2 * v124 + 2;
              goto LABEL_250;
            }
          }

          v130 = **a3;
          v131 = (v130 + 16 * v127);
          v132 = (v130 + 16 * v128);
          if (*v131 < *v132 || *v131 == *v132 && v131[1] < v132[1])
          {
            goto LABEL_249;
          }
        }

LABEL_250:
        v133 = v11 + 24 * v124;
        v134 = *(v126 + 16);
        v135 = *(v133 + 16);
        v136 = *v126;
        if (v134 == v135)
        {
          v137 = *v133;
LABEL_256:
          v139 = **a3;
          v140 = (v139 + 16 * v136);
          v141 = (v139 + 16 * v137);
          if (*v140 < *v141 || *v140 == *v141 && v140[1] < v141[1])
          {
            goto LABEL_288;
          }

          goto LABEL_261;
        }

        v137 = *v133;
        if (v136 != *(v133 + 8) || *(v126 + 8) != v137)
        {
          goto LABEL_256;
        }

        if (v134)
        {
          goto LABEL_288;
        }

LABEL_261:
        v142 = *(v133 + 8);
        do
        {
          while (1)
          {
            v143 = *v126;
            *(v133 + 16) = *(v126 + 16);
            *v133 = v143;
            if (v122 < v125)
            {
              goto LABEL_287;
            }

            v133 = v126;
            v144 = 2 * v125;
            v125 = (2 * v125) | 1;
            v126 = v11 + 24 * v125;
            v145 = v144 + 2;
            if (v145 < v13)
            {
              v146 = *v126;
              if (*(v126 + 16) == *(v126 + 40))
              {
                v147 = *(v126 + 24);
LABEL_270:
                v149 = **a3;
                v150 = (v149 + 16 * v146);
                v151 = (v149 + 16 * v147);
                if (*v150 >= *v151 && (*v150 != *v151 || v150[1] >= v151[1]))
                {
                  goto LABEL_276;
                }

LABEL_275:
                v126 += 24;
                v125 = v145;
                goto LABEL_276;
              }

              v147 = *(v126 + 24);
              if (v146 != *(v126 + 32) || *(v126 + 8) != v147)
              {
                goto LABEL_270;
              }

              if (*(v126 + 16))
              {
                goto LABEL_275;
              }
            }

LABEL_276:
            v152 = *(v126 + 16);
            v153 = *v126;
            if (v152 == v135)
            {
              break;
            }

            if (v153 != v142 || *(v126 + 8) != v137)
            {
              break;
            }

            if (v152)
            {
              goto LABEL_286;
            }
          }

          v155 = **a3;
          v156 = (v155 + 16 * v153);
          v157 = (v155 + 16 * v137);
        }

        while (*v156 >= *v157 && (*v156 != *v157 || v156[1] >= v157[1]));
LABEL_286:
        v126 = v133;
LABEL_287:
        *v126 = v137;
        *(v126 + 8) = v142;
        *(v126 + 16) = v135;
LABEL_288:
        v123 = v124 - 1;
        if (!v124)
        {
          v158 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
          while (1)
          {
            v159 = 0;
            v224 = *(v11 + 16);
            v219 = *v11;
            v160 = v11;
            do
            {
              v161 = v160;
              v162 = &v160[3 * v159];
              v160 = v162 + 3;
              v163 = 2 * v159;
              v159 = (2 * v159) | 1;
              v164 = v163 + 2;
              if (v164 >= v158)
              {
                goto LABEL_304;
              }

              v165 = v162 + 6;
              v166 = *(v162 + 40);
              v167 = v162[3];
              if (v166 == *(v162 + 64))
              {
                v168 = *v165;
              }

              else
              {
                v168 = v162[6];
                v169 = v162[7];
                v170 = v162[4];
                if (v167 == v169 && v170 == v168)
                {
                  if (!v166)
                  {
                    goto LABEL_304;
                  }

LABEL_303:
                  v160 = v165;
                  v159 = v164;
                  goto LABEL_304;
                }
              }

              v172 = **a3;
              v173 = (v172 + 16 * v167);
              v174 = (v172 + 16 * v168);
              if (*v173 < *v174 || *v173 == *v174 && v173[1] < v174[1])
              {
                goto LABEL_303;
              }

LABEL_304:
              v175 = *v160;
              *(v161 + 16) = *(v160 + 16);
              *v161 = v175;
            }

            while (v159 <= (v158 - 2) / 2);
            a2 -= 24;
            if (v160 == a2)
            {
              *(v160 + 16) = v224;
              *v160 = v219;
              goto LABEL_334;
            }

            v176 = *a2;
            *(v160 + 16) = *(a2 + 16);
            *v160 = v176;
            *(a2 + 16) = v224;
            *a2 = v219;
            v177 = v160 - v11 + 24;
            if (v177 < 25)
            {
              goto LABEL_334;
            }

            v178 = 0xAAAAAAAAAAAAAAABLL * (v177 >> 3) - 2;
            v179 = v178 >> 1;
            v180 = v11 + 24 * (v178 >> 1);
            v181 = *(v160 + 16);
            v182 = *v180;
            if (*(v180 + 16) == v181)
            {
              v183 = *v160;
LABEL_314:
              v185 = **a3;
              v186 = (v185 + 16 * v182);
              v187 = (v185 + 16 * v183);
              if (*v186 >= *v187 && (*v186 != *v187 || v186[1] >= v187[1]))
              {
                goto LABEL_334;
              }
            }

            else
            {
              v183 = *v160;
              if (v182 != v160[1] || *(v180 + 8) != v183)
              {
                goto LABEL_314;
              }

              if (!*(v180 + 16))
              {
                goto LABEL_334;
              }
            }

            v188 = v160[1];
            v189 = *v180;
            *(v160 + 16) = *(v180 + 16);
            *v160 = v189;
            if (v178 < 2)
            {
              goto LABEL_333;
            }

            while (2)
            {
              v190 = v180;
              v191 = v179 - 1;
              v179 = (v179 - 1) >> 1;
              v180 = v11 + 24 * v179;
              v192 = *v180;
              if (*(v180 + 16) != v181 && v192 == v188 && *(v180 + 8) == v183)
              {
                if (!*(v180 + 16))
                {
                  goto LABEL_332;
                }

LABEL_330:
                v197 = *v180;
                *(v190 + 16) = *(v180 + 16);
                *v190 = v197;
                if (v191 <= 1)
                {
                  goto LABEL_333;
                }

                continue;
              }

              break;
            }

            v194 = **a3;
            v195 = (v194 + 16 * v192);
            v196 = (v194 + 16 * v183);
            if (*v195 < *v196 || *v195 == *v196 && v195[1] < v196[1])
            {
              goto LABEL_330;
            }

LABEL_332:
            v180 = v190;
LABEL_333:
            *v180 = v183;
            *(v180 + 8) = v188;
            *(v180 + 16) = v181;
LABEL_334:
            if (v158-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v14 = v13 >> 1;
    v15 = v11 + 24 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(&a1[3 * v14], a1, (a2 - 24), a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, &a1[3 * v14], (a2 - 24), a3);
      v16 = 3 * v14;
      v17 = &a1[3 * v14 - 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1 + 3, v17, (a2 - 48), a3);
      v18 = &a1[v16 + 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1 + 6, v18, (a2 - 72), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v17, v15, v18, a3);
      v221 = a1[2];
      v216 = *a1;
      v19 = *(v15 + 16);
      *a1 = *v15;
      *(a1 + 16) = v19;
      *(v15 + 16) = v221;
      *v15 = v216;
    }

    --a4;
    if (a5)
    {
      v20 = *a1;
      v21 = *(a1 + 16);
LABEL_21:
      v27 = a1[1];
      v28 = *a3;
      for (i = a1 + 3; ; i += 3)
      {
        v30 = *i;
        if (*(i + 16) == v21)
        {
          break;
        }

        if (v30 != v27 || i[1] != v20)
        {
          break;
        }

        if (!*(i + 16))
        {
          goto LABEL_33;
        }

LABEL_32:
        ;
      }

      v32 = (*v28 + 16 * v30);
      v33 = (*v28 + 16 * v20);
      if (*v32 < *v33 || *v32 == *v33 && v32[1] < v33[1])
      {
        goto LABEL_32;
      }

LABEL_33:
      j = a2 - 24;
      if (i - 3 != a1)
      {
        while (1)
        {
          v35 = *(j + 16);
          v36 = *j;
          if (v35 != v21 && (v36 == v27 ? (v37 = *(j + 8) == v20) : (v37 = 0), v37))
          {
            if (v35)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v38 = (*v28 + 16 * v36);
            v39 = (*v28 + 16 * v20);
            if (*v38 < *v39 || *v38 == *v39 && v38[1] < v39[1])
            {
              goto LABEL_65;
            }
          }

          j -= 24;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 24; ; j -= 24)
        {
          v40 = *(j + 16);
          v41 = *j;
          if (v40 != v21 && (v41 == v27 ? (v42 = *(j + 8) == v20) : (v42 = 0), v42))
          {
            if (i >= j || (v40 & 1) != 0)
            {
              break;
            }
          }

          else
          {
            v43 = (*v28 + 16 * v41);
            v44 = (*v28 + 16 * v20);
            if (*v43 < *v44)
            {
              break;
            }

            if (*v43 == *v44)
            {
              if (v43[1] < v44[1] || i >= j)
              {
                break;
              }
            }

            else if (i >= j)
            {
              break;
            }
          }
        }
      }

LABEL_65:
      v11 = i;
      if (i < j)
      {
        v11 = i;
        v46 = j;
        do
        {
          v222 = *(v11 + 16);
          v217 = *v11;
          v47 = *v46;
          *(v11 + 16) = *(v46 + 16);
          *v11 = v47;
          *(v46 + 16) = v222;
          *v46 = v217;
          v48 = *a3;
          do
          {
            while (1)
            {
              v11 += 24;
              v49 = *v11;
              if (*(v11 + 16) != v21 && v49 == v27 && *(v11 + 8) == v20)
              {
                break;
              }

              v51 = (*v48 + 16 * v49);
              v52 = (*v48 + 16 * v20);
              if (*v51 >= *v52 && (*v51 != *v52 || v51[1] >= v52[1]))
              {
                goto LABEL_80;
              }
            }
          }

          while (*(v11 + 16));
          do
          {
LABEL_80:
            while (1)
            {
              v46 -= 24;
              v53 = *(v46 + 16);
              v54 = *v46;
              if (v53 == v21)
              {
                break;
              }

              if (v54 != v27 || *(v46 + 8) != v20)
              {
                break;
              }

              if (v53)
              {
                goto LABEL_88;
              }
            }

            v56 = (*v48 + 16 * v54);
            v57 = (*v48 + 16 * v20);
          }

          while (*v56 >= *v57 && (*v56 != *v57 || v56[1] >= v57[1]));
LABEL_88:
          ;
        }

        while (v11 < v46);
      }

      if ((v11 - 24) != a1)
      {
        v58 = *(v11 - 24);
        *(a1 + 16) = *(v11 - 8);
        *a1 = v58;
      }

      *(v11 - 24) = v20;
      *(v11 - 16) = v27;
      *(v11 - 8) = v21;
      if (i < j)
      {
LABEL_94:
        std::__introsort<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,false>(a1, v11 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v59 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*>(a1, v11 - 24, a3);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*>(v11, a2, a3))
        {
          a2 = v11 - 24;
          if (v59)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v59)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      v22 = *(a1 - 8);
      v21 = *(a1 + 16);
      v23 = *(a1 - 3);
      if (v22 == v21)
      {
        v20 = *a1;
LABEL_18:
        v24 = **a3;
        v25 = (v24 + 16 * v23);
        v26 = (v24 + 16 * v20);
        if (*v25 < *v26 || *v25 == *v26 && v25[1] < v26[1])
        {
          goto LABEL_21;
        }

        goto LABEL_98;
      }

      v20 = *a1;
      if (v23 != a1[1] || *(a1 - 2) != v20)
      {
        goto LABEL_18;
      }

      if (v22)
      {
        goto LABEL_21;
      }

LABEL_98:
      v60 = a1[1];
      v61 = *(a2 - 8);
      if (v21 == v61)
      {
        v62 = *v10;
      }

      else
      {
        v62 = *v10;
        if (v20 == *v215 && v60 == v62)
        {
          if (*(a1 + 16))
          {
            v63 = *a3;
LABEL_108:
            v11 = (a1 + 3);
            while (2)
            {
              if (v21 == *(v11 + 16))
              {
                v67 = *v11;
LABEL_115:
                v69 = (*v63 + 16 * v20);
                v70 = (*v63 + 16 * v67);
                if (*v69 < *v70 || *v69 == *v70 && v69[1] < v70[1])
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v67 = *v11;
                if (v20 != *(v11 + 8) || v60 != v67)
                {
                  goto LABEL_115;
                }

                if (v21)
                {
                  goto LABEL_135;
                }
              }

              v11 += 24;
              continue;
            }
          }

          goto LABEL_121;
        }
      }

      v63 = *a3;
      v64 = **a3;
      v65 = (v64 + 16 * v20);
      v66 = (v64 + 16 * v62);
      if (*v65 < *v66 || *v65 == *v66 && v65[1] < v66[1])
      {
        goto LABEL_108;
      }

LABEL_121:
      v11 = (a1 + 3);
      if ((a1 + 3) < a2)
      {
        v71 = *a3;
        do
        {
          if (v21 == *(v11 + 16))
          {
            v72 = *v11;
          }

          else
          {
            v72 = *v11;
            if (v20 == *(v11 + 8) && v60 == v72)
            {
              if (v21)
              {
                break;
              }

              goto LABEL_134;
            }
          }

          v74 = (*v71 + 16 * v20);
          v75 = (*v71 + 16 * v72);
          if (*v74 < *v75 || *v74 == *v75 && v74[1] < v75[1])
          {
            break;
          }

LABEL_134:
          v11 += 24;
        }

        while (v11 < a2);
      }

LABEL_135:
      v76 = a2;
      if (v11 >= a2)
      {
        goto LABEL_173;
      }

      v77 = *a3;
      v78 = (a2 - 16);
      while (v21 != v61)
      {
        v79 = *(v78 - 1);
        if (v20 != *v78 || v60 != v79)
        {
          goto LABEL_143;
        }

        if (!*(a1 + 16))
        {
          goto LABEL_149;
        }

LABEL_148:
        LOBYTE(v61) = *(v78 - 16);
        v78 -= 3;
      }

      v79 = *(v78 - 1);
LABEL_143:
      v81 = (*v77 + 16 * v20);
      v82 = (*v77 + 16 * v79);
      if (*v81 < *v82 || *v81 == *v82 && v81[1] < v82[1])
      {
        goto LABEL_148;
      }

LABEL_149:
      v76 = v78 - 1;
LABEL_173:
      if (v11 < v76)
      {
        v223 = *(v11 + 16);
        v218 = *v11;
        v83 = *v76;
        *(v11 + 16) = *(v76 + 16);
        *v11 = v83;
        *(v76 + 16) = v223;
        *v76 = v218;
        v84 = *a3;
        while (1)
        {
          v11 += 24;
          if (v21 == *(v11 + 16))
          {
            v85 = *v11;
LABEL_157:
            v87 = (*v84 + 16 * v20);
            v88 = (*v84 + 16 * v85);
            if (*v87 < *v88 || *v87 == *v88 && v87[1] < v88[1])
            {
              while (1)
              {
LABEL_164:
                v76 -= 3;
                if (v21 == *(v76 + 16))
                {
                  v89 = *v76;
LABEL_170:
                  v91 = (*v84 + 16 * v20);
                  v92 = (*v84 + 16 * v89);
                  if (*v91 >= *v92 && (*v91 != *v92 || v91[1] >= v92[1]))
                  {
                    goto LABEL_173;
                  }
                }

                else
                {
                  v89 = *v76;
                  if (v20 != v76[1] || v60 != v89)
                  {
                    goto LABEL_170;
                  }

                  if (!v21)
                  {
                    goto LABEL_173;
                  }
                }
              }
            }
          }

          else
          {
            v85 = *v11;
            if (v20 != *(v11 + 8) || v60 != v85)
            {
              goto LABEL_157;
            }

            if (v21)
            {
              goto LABEL_164;
            }
          }
        }
      }

      if ((v11 - 24) != a1)
      {
        v93 = *(v11 - 24);
        *(a1 + 16) = *(v11 - 8);
        *a1 = v93;
      }

      a5 = 0;
      *(v11 - 24) = v20;
      *(v11 - 16) = v60;
      *(v11 - 8) = v21;
    }
  }

  v99 = (v11 + 24);
  v101 = v11 == a2 || v99 == a2;
  if ((a5 & 1) == 0)
  {
    if (v101)
    {
      return;
    }

    while (1)
    {
      v200 = a1;
      a1 = v99;
      v201 = *(v200 + 40);
      v202 = v200[3];
      if (v201 == *(v200 + 16))
      {
        break;
      }

      v203 = *v200;
      if (v202 != v200[1] || v200[4] != v203)
      {
        goto LABEL_348;
      }

      if (*(v200 + 40))
      {
        goto LABEL_353;
      }

LABEL_366:
      v99 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return;
      }
    }

    v203 = *v200;
LABEL_348:
    v205 = **a3;
    v206 = (v205 + 16 * v202);
    v207 = (v205 + 16 * v203);
    if (*v206 >= *v207 && (*v206 != *v207 || v206[1] >= v207[1]))
    {
      goto LABEL_366;
    }

LABEL_353:
    v208 = v200[4];
    while (1)
    {
      v209 = v200;
      *(v200 + 3) = *v200;
      *(v200 + 40) = *(v200 + 16);
      v200 -= 3;
      if (v201 == *(v209 - 8))
      {
        v210 = *v200;
LABEL_360:
        v212 = **a3;
        v213 = (v212 + 16 * v202);
        v214 = (v212 + 16 * v210);
        if (*v213 >= *v214 && (*v213 != *v214 || v213[1] >= v214[1]))
        {
LABEL_365:
          *v209 = v202;
          v209[1] = v208;
          *(v209 + 16) = v201;
          goto LABEL_366;
        }
      }

      else
      {
        v210 = *(v209 - 3);
        if (v202 != *(v209 - 2) || v208 != v210)
        {
          goto LABEL_360;
        }

        if ((v201 & 1) == 0)
        {
          goto LABEL_365;
        }
      }
    }
  }

  if (v101)
  {
    return;
  }

  v102 = 0;
  v103 = v11;
  while (2)
  {
    v104 = v103;
    v103 = v99;
    v105 = *(v104 + 40);
    v106 = *(v104 + 24);
    if (v105 == *(v104 + 16))
    {
      v107 = *v104;
LABEL_209:
      v109 = **a3;
      v110 = (v109 + 16 * v106);
      v111 = (v109 + 16 * v107);
      if (*v110 >= *v111 && (*v110 != *v111 || v110[1] >= v111[1]))
      {
        goto LABEL_232;
      }
    }

    else
    {
      v107 = *v104;
      if (v106 != *(v104 + 8) || *(v104 + 32) != v107)
      {
        goto LABEL_209;
      }

      if (!*(v104 + 40))
      {
        goto LABEL_232;
      }
    }

    v112 = *(v104 + 32);
    *v103 = *v104;
    *(v103 + 16) = *(v104 + 16);
    v113 = v11;
    if (v104 == v11)
    {
      goto LABEL_231;
    }

    v114 = v102;
    while (2)
    {
      v115 = v11 + v114;
      v116 = (v11 + v114 - 24);
      if (v105 == *(v11 + v114 - 8))
      {
        v117 = *v116;
LABEL_222:
        v119 = **a3;
        v120 = (v119 + 16 * v106);
        v121 = (v119 + 16 * v117);
        if (*v120 >= *v121 && (*v120 != *v121 || v120[1] >= v121[1]))
        {
          v113 = v104;
          goto LABEL_231;
        }

        goto LABEL_227;
      }

      v117 = *v116;
      if (v106 != *(v115 - 16) || v112 != v117)
      {
        goto LABEL_222;
      }

      if (v105)
      {
LABEL_227:
        v104 -= 24;
        *v115 = *v116;
        *(v115 + 16) = *(v11 + v114 - 8);
        v114 -= 24;
        if (!v114)
        {
          v113 = v11;
          goto LABEL_231;
        }

        continue;
      }

      break;
    }

    v113 = v11 + v114;
LABEL_231:
    *v113 = v106;
    *(v113 + 8) = v112;
    *(v113 + 16) = v105;
LABEL_232:
    v99 = (v103 + 24);
    v102 += 24;
    if (v103 + 24 != a2)
    {
      continue;
    }

    break;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t gm::LineSegment<double,2>::intersects<double,void>(uint64_t a1, double *a2)
{
  _Q0 = *(a1 + 16);
  _D1 = a2[2];
  __asm { FMLS            D3, D1, V0.D[1] }

  if (_D3 == 0.0)
  {
    return 0;
  }

  v9 = *&_Q0 + *a1 - *a2;
  v10 = 1.0 / _D3;
  v11 = *(&_Q0 + 1) + *(a1 + 8) - a2[1];
  v12 = v10 * (v9 * a2[3] - v11 * _D1);
  v13 = v10 * (*&_Q0 * v11 + v9 * -*(&_Q0 + 1));
  v14 = v12 >= 0.0;
  if (v12 > 1.0)
  {
    v14 = 0;
  }

  v15 = v13 >= 0.0;
  if (v13 > 1.0)
  {
    v15 = 0;
  }

  return v14 & v15;
}

void std::__tree<gm::LineSegment<double,2>,geo::Intersect::SHSegmentComparator<double>,std::allocator<gm::LineSegment<double,2>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<gm::LineSegment<double,2>,geo::Intersect::SHSegmentComparator<double>,std::allocator<gm::LineSegment<double,2>>>::destroy(*a1);
    std::__tree<gm::LineSegment<double,2>,geo::Intersect::SHSegmentComparator<double>,std::allocator<gm::LineSegment<double,2>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

BOOL geo::Intersect::SHSegmentComparator<double>::operator()(float64x2_t *a1, float64x2_t *a2)
{
  if (*&a1->f64[0] == *&a2->f64[0] && *&a1->f64[1] == *&a2->f64[1])
  {
    v3 = *a1;
    v5 = vaddq_f64(*a1, a1[1]);
    v4 = *a2;
    v6 = vaddq_f64(*a2, a2[1]);
    if (*&v5.f64[0] == *&v6.f64[0] && *&v5.f64[1] == *&v6.f64[1])
    {
      return 0;
    }
  }

  else
  {
    v3.f64[0] = a1->f64[0];
    v4.f64[0] = a2->f64[0];
  }

  if (v3.f64[0] > v4.f64[0])
  {
    v8 = a2->f64[1];
    v9 = v4.f64[0] + a2[1].f64[0] - v4.f64[0];
    v10 = v8 + a2[1].f64[1] - v8;
    v11 = a1->f64[1];
    v12 = v9 * (v11 - v8) - (v3.f64[0] - v4.f64[0]) * v10;
    v13 = v12 < 0.0;
    if (v12 == 0.0)
    {
      return v9 * (v11 + a1[1].f64[1] - v8) - (v3.f64[0] + a1[1].f64[0] - v4.f64[0]) * v10 <= 0.0;
    }

    return v13;
  }

  v15 = a1->f64[1];
  v16 = v3.f64[0] + a1[1].f64[0];
  v17 = v15 + a1[1].f64[1] - v15;
  v18 = a2->f64[1];
  v19 = (v16 - v3.f64[0]) * (v18 - v15) - (v4.f64[0] - v3.f64[0]) * v17;
  v20 = v19 <= 0.0;
  if (v19 == 0.0)
  {
    if (v3.f64[0] == v16)
    {
      return v15 < v18;
    }

    v20 = (v16 - v3.f64[0]) * (v18 + a2[1].f64[1] - v15) - (v4.f64[0] + a2[1].f64[0] - v3.f64[0]) * v17 <= 0.0;
  }

  return !v20;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v4 = *(a2 + 16);
  v5 = *a2;
  if (v4 == *(result + 16))
  {
    v6 = *result;
    goto LABEL_7;
  }

  v6 = *result;
  if (v5 != result[1] || a2[1] != v6)
  {
LABEL_7:
    v8 = **a4;
    v9 = (v8 + 16 * v5);
    v10 = (v8 + 16 * v6);
    if (*v9 >= *v10 && (*v9 != *v10 || v9[1] >= v10[1]))
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = *a3;
    if (*(a3 + 16) != v4 && v15 == a2[1] && a3[1] == v5)
    {
      if (*(a3 + 16))
      {
LABEL_29:
        v28 = *result;
        v29 = result[2];
        v30 = *(a3 + 16);
        *result = *a3;
        *(result + 16) = v30;
LABEL_47:
        *(a3 + 16) = v29;
        *a3 = v28;
        return result;
      }
    }

    else
    {
      v16 = **a4;
      v17 = (v16 + 16 * v15);
      v18 = (v16 + 16 * v5);
      if (*v17 < *v18 || *v17 == *v18 && v17[1] < v18[1])
      {
        goto LABEL_29;
      }
    }

    v19 = *result;
    v20 = result[2];
    v21 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v21;
    *(a2 + 16) = v20;
    *a2 = v19;
    v22 = v20;
    v23 = *a3;
    if (*(a3 + 16) == v22)
    {
      v24 = *a2;
    }

    else
    {
      v24 = *a2;
      if (v23 == a2[1] && a3[1] == v24)
      {
        if (!*(a3 + 16))
        {
          return result;
        }

LABEL_46:
        v28 = *a2;
        v29 = a2[2];
        v42 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v42;
        goto LABEL_47;
      }
    }

    v25 = **a4;
    v26 = (v25 + 16 * v23);
    v27 = (v25 + 16 * v24);
    if (*v26 >= *v27 && (*v26 != *v27 || v26[1] >= v27[1]))
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v4)
  {
    goto LABEL_16;
  }

LABEL_10:
  v11 = *a3;
  if (*(a3 + 16) != v4 && v11 == a2[1] && a3[1] == v5)
  {
    if (!*(a3 + 16))
    {
      return result;
    }

LABEL_33:
    v31 = *a2;
    v32 = a2[2];
    v33 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v33;
    *(a3 + 16) = v32;
    *a3 = v31;
    v34 = *a2;
    if (*(a2 + 16) == *(result + 16))
    {
      v35 = *result;
    }

    else
    {
      v35 = *result;
      if (v34 == result[1] && a2[1] == v35)
      {
        if (!*(a2 + 16))
        {
          return result;
        }

        goto LABEL_42;
      }
    }

    v36 = **a4;
    v37 = (v36 + 16 * v34);
    v38 = (v36 + 16 * v35);
    if (*v37 >= *v38 && (*v37 != *v38 || v37[1] >= v38[1]))
    {
      return result;
    }

LABEL_42:
    v39 = *result;
    v40 = result[2];
    v41 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v41;
    *(a2 + 16) = v40;
    *a2 = v39;
    return result;
  }

  v12 = **a4;
  v13 = (v12 + 16 * v11);
  v14 = (v12 + 16 * v5);
  if (*v13 < *v14 || *v13 == *v14 && v13[1] < v14[1])
  {
    goto LABEL_33;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, a2, a3, a5);
  v11 = *a4;
  if (*(a4 + 16) == *(a3 + 16))
  {
    v12 = *a3;
  }

  else
  {
    v12 = *a3;
    if (v11 == a3[1] && a4[1] == v12)
    {
      if (!*(a4 + 16))
      {
        return result;
      }

LABEL_12:
      result = *a3;
      v17 = a3[2];
      v18 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v18;
      *(a4 + 16) = v17;
      *a4 = result;
      v19 = *a3;
      if (*(a3 + 16) == *(a2 + 16))
      {
        v20 = *a2;
      }

      else
      {
        v20 = *a2;
        if (v19 == *(a2 + 8) && a3[1] == v20)
        {
          if (!*(a3 + 16))
          {
            return result;
          }

          goto LABEL_21;
        }
      }

      v21 = **a5;
      v22 = (v21 + 16 * v19);
      v23 = (v21 + 16 * v20);
      result.n128_u64[0] = *v22;
      if (*v22 >= *v23)
      {
        if (*v22 != *v23)
        {
          return result;
        }

        result.n128_u64[0] = v22[1];
        if (result.n128_f64[0] >= v23[1])
        {
          return result;
        }
      }

LABEL_21:
      result = *a2;
      v24 = *(a2 + 16);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a3 + 16) = v24;
      *a3 = result;
      v26 = *a2;
      if (*(a2 + 16) == *(a1 + 16))
      {
        v27 = *a1;
      }

      else
      {
        v27 = *a1;
        if (v26 == *(a1 + 8) && *(a2 + 8) == v27)
        {
          if (!*(a2 + 16))
          {
            return result;
          }

          goto LABEL_30;
        }
      }

      v28 = **a5;
      v29 = (v28 + 16 * v26);
      v30 = (v28 + 16 * v27);
      result.n128_u64[0] = *v29;
      if (*v29 >= *v30)
      {
        if (*v29 != *v30)
        {
          return result;
        }

        result.n128_u64[0] = v29[1];
        if (result.n128_f64[0] >= v30[1])
        {
          return result;
        }
      }

LABEL_30:
      result = *a1;
      v31 = *(a1 + 16);
      v32 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v32;
      *(a2 + 16) = v31;
      *a2 = result;
      return result;
    }
  }

  v14 = **a5;
  v15 = (v14 + 16 * v11);
  v16 = (v14 + 16 * v12);
  result.n128_u64[0] = *v15;
  if (*v15 < *v16)
  {
    goto LABEL_12;
  }

  if (*v15 == *v16)
  {
    result.n128_u64[0] = v15[1];
    if (result.n128_f64[0] < v16[1])
    {
      goto LABEL_12;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *a5;
  if (*(a5 + 16) == *(a4 + 16))
  {
    v14 = *a4;
  }

  else
  {
    v14 = *a4;
    if (v13 == a4[1] && a5[1] == v14)
    {
      if (!*(a5 + 16))
      {
        return result;
      }

LABEL_12:
      result = *a4;
      v19 = a4[2];
      v20 = *(a5 + 16);
      *a4 = *a5;
      *(a4 + 16) = v20;
      *(a5 + 16) = v19;
      *a5 = result;
      v21 = *a4;
      if (*(a4 + 16) == *(a3 + 16))
      {
        v22 = *a3;
      }

      else
      {
        v22 = *a3;
        if (v21 == *(a3 + 8) && a4[1] == v22)
        {
          if (!*(a4 + 16))
          {
            return result;
          }

          goto LABEL_21;
        }
      }

      v23 = **a6;
      v24 = (v23 + 16 * v21);
      v25 = (v23 + 16 * v22);
      result.n128_u64[0] = *v24;
      if (*v24 >= *v25)
      {
        if (*v24 != *v25)
        {
          return result;
        }

        result.n128_u64[0] = v24[1];
        if (result.n128_f64[0] >= v25[1])
        {
          return result;
        }
      }

LABEL_21:
      result = *a3;
      v26 = *(a3 + 16);
      v27 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v27;
      *(a4 + 16) = v26;
      *a4 = result;
      v28 = *a3;
      if (*(a3 + 16) == *(a2 + 16))
      {
        v29 = *a2;
      }

      else
      {
        v29 = *a2;
        if (v28 == *(a2 + 8) && *(a3 + 8) == v29)
        {
          if (!*(a3 + 16))
          {
            return result;
          }

          goto LABEL_30;
        }
      }

      v30 = **a6;
      v31 = (v30 + 16 * v28);
      v32 = (v30 + 16 * v29);
      result.n128_u64[0] = *v31;
      if (*v31 >= *v32)
      {
        if (*v31 != *v32)
        {
          return result;
        }

        result.n128_u64[0] = v31[1];
        if (result.n128_f64[0] >= v32[1])
        {
          return result;
        }
      }

LABEL_30:
      result = *a2;
      v33 = *(a2 + 16);
      v34 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v34;
      *(a3 + 16) = v33;
      *a3 = result;
      v35 = *a2;
      if (*(a2 + 16) == *(a1 + 16))
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a1;
        if (v35 == *(a1 + 8) && *(a2 + 8) == v36)
        {
          if (!*(a2 + 16))
          {
            return result;
          }

          goto LABEL_39;
        }
      }

      v37 = **a6;
      v38 = (v37 + 16 * v35);
      v39 = (v37 + 16 * v36);
      result.n128_u64[0] = *v38;
      if (*v38 >= *v39)
      {
        if (*v38 != *v39)
        {
          return result;
        }

        result.n128_u64[0] = v38[1];
        if (result.n128_f64[0] >= v39[1])
        {
          return result;
        }
      }

LABEL_39:
      result = *a1;
      v40 = *(a1 + 16);
      v41 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v41;
      *(a2 + 16) = v40;
      *a2 = result;
      return result;
    }
  }

  v16 = **a6;
  v17 = (v16 + 16 * v13);
  v18 = (v16 + 16 * v14);
  result.n128_u64[0] = *v17;
  if (*v17 < *v18)
  {
    goto LABEL_12;
  }

  if (*v17 == *v18)
  {
    result.n128_u64[0] = v17[1];
    if (result.n128_f64[0] < v18[1])
    {
      goto LABEL_12;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, (a1 + 24), (a2 - 24), a3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, a1 + 24, (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, a1 + 24, a1 + 48, (a1 + 72), (a2 - 24), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = (a2 - 24);
      v8 = *(a2 - 24);
      if (*(a2 - 8) == *(a1 + 16))
      {
        v9 = *a1;
      }

      else
      {
        v9 = *a1;
        if (v8 == *(a1 + 8) && *(a2 - 16) == v9)
        {
          if (!*(a2 - 8))
          {
            return 1;
          }

          goto LABEL_50;
        }
      }

      v10 = **a3;
      v11 = (v10 + 16 * v8);
      v12 = (v10 + 16 * v9);
      if (*v11 >= *v12 && (*v11 != *v12 || v11[1] >= v12[1]))
      {
        return 1;
      }

LABEL_50:
      v32 = *a1;
      v33 = *(a1 + 16);
      v34 = *(a2 - 8);
      *a1 = *v7;
      *(a1 + 16) = v34;
      *(a2 - 8) = v33;
      *v7 = v32;
      return 1;
    }
  }

  v13 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, (a1 + 24), (a1 + 48), a3);
  v14 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = *(v14 + 16);
    v18 = *v14;
    if (v17 == *(v13 + 16))
    {
      v19 = *v13;
      goto LABEL_23;
    }

    v19 = *v13;
    if (v18 != *(v13 + 8) || *(v14 + 8) != v19)
    {
LABEL_23:
      v21 = **a3;
      v22 = (v21 + 16 * v18);
      v23 = (v21 + 16 * v19);
      if (*v22 >= *v23 && (*v22 != *v23 || v22[1] >= v23[1]))
      {
        goto LABEL_44;
      }

      goto LABEL_28;
    }

    if (!*(v14 + 16))
    {
      goto LABEL_44;
    }

LABEL_28:
    v24 = *(v14 + 8);
    *v14 = *v13;
    *(v14 + 16) = *(v13 + 16);
    v25 = v15;
    do
    {
      v26 = a1 + v25;
      if (v17 == *(a1 + v25 + 40))
      {
        v27 = *(v26 + 24);
      }

      else
      {
        v27 = *(v26 + 24);
        if (v18 == *(v26 + 32) && v24 == v27)
        {
          if (!v17)
          {
            goto LABEL_43;
          }

          goto LABEL_41;
        }
      }

      v29 = **a3;
      v30 = (v29 + 16 * v18);
      v31 = (v29 + 16 * v27);
      if (*v30 >= *v31)
      {
        if (*v30 != *v31)
        {
          v13 = a1 + v25 + 48;
          goto LABEL_43;
        }

        if (v30[1] >= v31[1])
        {
          goto LABEL_43;
        }
      }

LABEL_41:
      v13 -= 24;
      *(v26 + 48) = *(v26 + 24);
      *(v26 + 64) = *(v26 + 40);
      v25 -= 24;
    }

    while (v25 != -48);
    v13 = a1;
LABEL_43:
    *v13 = v18;
    *(v13 + 8) = v24;
    *(v13 + 16) = v17;
    if (++v16 != 8)
    {
LABEL_44:
      v13 = v14;
      v15 += 24;
      v14 += 24;
      if (v14 == a2)
      {
        return 1;
      }

      continue;
    }

    return v14 + 24 == a2;
  }
}

void sub_1A305E118(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1A305F31C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A30621C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MKSeparatingAxisExistsBetweenPolygonsWithPoints(MKMapPoint *a1, unint64_t a2, MKMapPoint *a3, unint64_t a4)
{
  if (a2)
  {
    v4 = 1;
    while (2)
    {
      v5 = &a1[v4];
      x = v5[-1].x;
      y = v5[-1].y;
      if (v4 == a2)
      {
        v5 = a1;
      }

      v8 = v5->x - x;
      v9 = v5->y - y;
      v10 = a2;
      p_y = &a1->y;
      do
      {
        v12 = v8 * (*p_y - y) - (*(p_y - 1) - x) * v9;
        if (v12 != 0.0)
        {
          v13 = v12 >= 0.0;
          if (v12 > 0.0)
          {
            v13 = 2;
          }

          if (!a4)
          {
            return 1;
          }

          goto LABEL_13;
        }

        p_y += 2;
        --v10;
      }

      while (v10);
      v13 = 1;
      if (!a4)
      {
        return 1;
      }

LABEL_13:
      v14 = 1;
      v15 = &a3->y;
      v16 = 1;
      do
      {
        v17 = v8 * (*v15 - y) - (*(v15 - 1) - x) * v9;
        v18 = v17 >= 0.0;
        if (v17 > 0.0)
        {
          v18 = 2;
        }

        v19 = v17 < 0.0;
        if (v17 > 0.0)
        {
          v19 = 1;
        }

        v20 = v18 != v13 && v19;
        v16 &= v20;
        v21 = !v20 || v14++ >= a4;
        v15 += 2;
      }

      while (!v21);
      if (v16)
      {
        return 1;
      }

      if (++v4 <= a2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ContactsUILibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNAvatarImageRendererClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAvatarImageRendererClass_softClass;
  v7 = getCNAvatarImageRendererClass_softClass;
  if (!getCNAvatarImageRendererClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNAvatarImageRendererClass_block_invoke;
    v3[3] = &unk_1E76CD7B0;
    v3[4] = &v4;
    __getCNAvatarImageRendererClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A3063D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRendererClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCNAvatarImageRenderingScopeClass_block_invoke(v3);
  }

  return result;
}

void __getCNAvatarImageRenderingScopeClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNAvatarImageRenderingScope");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(MKPlaceCollectionViewModel *)v2 .cxx_destruct];
  }
}

void sub_1A3065114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A306652C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL13_makePolylineI22CLLocationCoordinate2DEP18MKGeodesicPolylinePKT_m_block_invoke(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v3 = *(a1 + 32);
  v4 = CLLocationCoordinate2DMake(a2, a3);
  std::vector<CLLocationCoordinate2D>::push_back[abi:ne200100](v3, &v4);
}

void std::vector<CLLocationCoordinate2D>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1A3066820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL13_makePolylineI10MKMapPointEP18MKGeodesicPolylinePKT_m_block_invoke(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v3 = *(a1 + 32);
  v4 = CLLocationCoordinate2DMake(a2, a3);
  std::vector<CLLocationCoordinate2D>::push_back[abi:ne200100](v3, &v4);
}

void __71___mkMapServiceWalletMerchantTicket_submitWithCompletionQueue_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];

  if (v7)
  {
    v8 = [MKWalletMerchantResponse alloc];
    v9 = [v5 firstObject];
    v10 = [(MKWalletMerchantResponse *)v8 initWithGEOMapItem:v9];
LABEL_3:
    v11 = v10;

    goto LABEL_6;
  }

  if (!v6)
  {
    v13 = [MKWalletMerchantResponse alloc];
    v9 = [*(*(a1 + 32) + 8) merchantLookupResult];
    v10 = [(MKWalletMerchantResponse *)v13 initWithMerchantLookupResult:v9];
    goto LABEL_3;
  }

  v11 = 0;
LABEL_6:
  v12 = *(a1 + 40);
  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71___mkMapServiceWalletMerchantTicket_submitWithCompletionQueue_handler___block_invoke_2;
    block[3] = &unk_1E76CAA70;
    v17 = *(a1 + 48);
    v15 = v11;
    v16 = v6;
    dispatch_async(v12, block);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

double MKDefaultCompactManeuverMetrics@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = MKDefaultCompactManeuverMetrics_referenceSize;
  *(a1 + 24) = xmmword_1A30F7200;
  *(a1 + 40) = xmmword_1A30F7210;
  *(a1 + 56) = xmmword_1A30F7220;
  *(a1 + 72) = xmmword_1A30F7230;
  *(a1 + 88) = xmmword_1A30F7190;
  *(a1 + 104) = 0x401C000000000000;
  *(a1 + 112) = 3;
  *(a1 + 120) = xmmword_1A30F7240;
  *(a1 + 136) = xmmword_1A30F7250;
  *(a1 + 152) = xmmword_1A30F7260;
  *(a1 + 168) = xmmword_1A30F7270;
  *(a1 + 184) = xmmword_1A30F7280;
  *(a1 + 200) = xmmword_1A30F7290;
  *(a1 + 216) = xmmword_1A30F72A0;
  *(a1 + 232) = xmmword_1A30F72B0;
  *(a1 + 248) = xmmword_1A30F72C0;
  *(a1 + 264) = 0x40305D174E000000;
  *(a1 + 272) = xmmword_1A30F72D0;
  *(a1 + 288) = 0x4014000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = xmmword_1A30F72C0;
  *(a1 + 320) = xmmword_1A30F72E0;
  *(a1 + 336) = 16842753;
  *(a1 + 488) = 0;
  result = 0.0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  return result;
}

void MKArrowAppendSegmentToPath(void *a1, uint64_t a2, _OWORD *a3, double a4)
{
  v7 = a1;
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, -a4, *(a2 + 24), a4}];
  v9 = a3[1];
  *&v13.a = *a3;
  *&v13.c = v9;
  *&v13.tx = a3[2];
  [v8 applyTransform:&v13];
  [v7 appendPath:v8];
  v10 = a3[1];
  *&v12.a = *a3;
  *&v12.c = v10;
  *&v12.tx = a3[2];
  CGAffineTransformTranslate(&v13, &v12, 0.0, -a4);
  v11 = *&v13.c;
  *a3 = *&v13.a;
  a3[1] = v11;
  a3[2] = *&v13.tx;
}

void MKArrowAppendRightAngleCurveToPath(void *a1, double *a2, _OWORD *a3)
{
  v5 = a1;
  v6 = a2[3];
  v7 = [MEMORY[0x1E69DC728] bezierPath];
  v8 = v7;
  v9 = a2[15];
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = a2[15];
  }

  v11 = v9 + 0.0;
  v12 = 0.0 - v10;
  v13 = v9 + 0.0 - v9;
  [v7 moveToPoint:{0.0, 0.0}];
  [v8 addQuadCurveToPoint:v11 controlPoint:{v12, v13, v12}];
  v14 = a2[15];
  if (v6 > v14)
  {
    [v8 addLineToPoint:{v6 + 0.0, v12}];
    v14 = a2[15];
  }

  v15 = v6 + v12;
  if (v6 > v14)
  {
    [v8 addLineToPoint:{v6 + 0.0, v15}];
  }

  [v8 addLineToPoint:{v11, v15}];
  v16 = a2[16];
  if (v16 <= 0.0)
  {
    [v8 addLineToPoint:{v6 + 0.0, v15}];
  }

  else
  {
    v17 = v15 + v16;
    [v8 addLineToPoint:{v6 + 0.0 + v16, v15}];
    [v8 addQuadCurveToPoint:v6 + 0.0 controlPoint:{v17, v6 + 0.0, v15}];
  }

  [v8 addLineToPoint:{v6 + 0.0, 0.0}];
  [v8 closePath];
  v18 = a3[1];
  *&v24.a = *a3;
  *&v24.c = v18;
  *&v24.tx = a3[2];
  [v8 applyTransform:&v24];
  [v5 appendPath:v8];
  v19 = a3[1];
  *&v24.a = *a3;
  *&v24.c = v19;
  *&v24.tx = a3[2];
  *&v23.a = *&v24.a;
  *&v23.c = v19;
  *&v23.tx = a3[2];
  CGAffineTransformTranslate(&v24, &v23, v10, -v10);
  v22 = v24;
  CGAffineTransformRotate(&v23, &v22, 1.57079633);
  v21 = *&v23.c;
  v20 = *&v23.tx;
  v24 = v23;
  *a3 = *&v23.a;
  a3[1] = v21;
  a3[2] = v20;
}

void MKArrowAppendCurveToPathWithOptions(void *a1, char a2, double *__src, _OWORD *a4, double *a5, double a6)
{
  if (fabs(a6 + 0.785398163) >= 0.000001 && fabs(a6 + 2.35619449) >= 0.000001)
  {
    if (fabs(a6 + -0.785398163) >= 0.000001 && fabs(a6 + 3.92699082) >= 0.000001)
    {
      v12 = __src[9];
      goto LABEL_5;
    }

    v11 = 26;
  }

  else
  {
    v11 = 30;
  }

  v12 = __src[v11];
LABEL_5:
  memcpy(v13, __src, sizeof(v13));
  MKArrowAppendCurveToPathWithOptionsAndRadius(a1, a2, v13, a4, a5, a6, v12);
}

void MKArrowAppendCurveToPathWithOptionsAndRadius(void *a1, char a2, uint64_t a3, _OWORD *a4, double *a5, double a6, double a7)
{
  v13 = a1;
  if (a6 == -1.57079633)
  {
    goto LABEL_15;
  }

  v14 = *(a3 + 24);
  v57 = fmax(a7 - v14, 0.0);
  v15 = fmax(v14 - a7, 0.0);
  v16 = [MEMORY[0x1E69DC728] bezierPath];
  v17 = v16;
  v18 = a4[1];
  *&v60.a = *a4;
  *&v60.c = v18;
  *&v60.tx = a4[2];
  if (a6 <= -1.57079633)
  {
    v33 = a6 + 1.57079633;
    [v16 moveToPoint:{v14 + 0.0, 0.0}];
    v34 = v14 + 0.0 - a7;
    v35 = 0.0 - v15;
    [v17 addArcWithCenter:0 radius:v34 startAngle:0.0 - v15 endAngle:a7 clockwise:{0.0, v33 * 0.5}];
    [v17 currentPoint];
    v55 = v37;
    v56 = v36;
    [v17 addArcWithCenter:0 radius:v34 startAngle:0.0 - v15 endAngle:a7 clockwise:{v33 * 0.5, v33}];
    [v17 currentPoint];
    v39 = v38;
    v41 = v40;
    v42 = __sincos_stret(v33 + 3.14159265);
    v43 = v39 + v14 * v42.__cosval;
    v44 = v41 + v14 * v42.__sinval;
    [v17 addLineToPoint:{v43, v44}];
    [v17 addArcWithCenter:1 radius:v34 startAngle:v35 endAngle:v57 clockwise:{v33, v33 * 0.5}];
    [v17 currentPoint];
    v46 = v45;
    v53 = v47;
    [v17 addArcWithCenter:1 radius:v34 startAngle:v35 endAngle:v57 clockwise:{v33 * 0.5, 0.0}];
    if ((a2 & 1) == 0)
    {
      [v17 addLineToPoint:{0.0, 0.0}];
    }

    v59 = v60;
    CGAffineTransformTranslate(&v60, &v59, v43, v44);
    v58 = v60;
    CGAffineTransformRotate(&v59, &v58, v33);
    v60 = v59;
    if (!a5)
    {
      goto LABEL_12;
    }

    v31 = v56 + v46;
    v32 = v55 + v53;
  }

  else
  {
    v19 = a6 + -1.57079633;
    [v16 moveToPoint:{0.0, 0.0}];
    v52 = a7 + 0.0;
    [v17 addArcWithCenter:1 radius:a7 + 0.0 startAngle:0.0 - v15 endAngle:a7 clockwise:{3.14159265, (a6 + -1.57079633 + -3.14159265) * 0.5}];
    [v17 currentPoint];
    v50 = v21;
    v51 = v20;
    [v17 addArcWithCenter:1 radius:a7 + 0.0 startAngle:0.0 - v15 endAngle:a7 clockwise:{(v19 + -3.14159265) * 0.5, v19}];
    [v17 currentPoint];
    v23 = v22;
    v25 = v24;
    v26 = __sincos_stret(a6 + -1.57079633 + 3.14159265);
    v54 = v23;
    [v17 addLineToPoint:{v23 + v14 * v26.__cosval, v25 + v14 * v26.__sinval}];
    [v17 addArcWithCenter:0 radius:v52 startAngle:0.0 - v15 endAngle:v57 clockwise:{v19, (v19 + -3.14159265) * 0.5}];
    [v17 currentPoint];
    v28 = v27;
    v30 = v29;
    [v17 addArcWithCenter:0 radius:v52 startAngle:0.0 - v15 endAngle:v57 clockwise:{(a6 + -1.57079633 + -3.14159265) * 0.5, 3.14159265}];
    if ((a2 & 1) == 0)
    {
      [v17 addLineToPoint:{v14 + 0.0, 0.0}];
    }

    v59 = v60;
    CGAffineTransformTranslate(&v60, &v59, v54, v25);
    v58 = v60;
    CGAffineTransformRotate(&v59, &v58, a6 + 1.57079633);
    v60 = v59;
    if (!a5)
    {
      goto LABEL_12;
    }

    v31 = v51 + v28;
    v32 = v50 + v30;
  }

  *a5 = v31 * 0.5;
  a5[1] = v32 * 0.5;
LABEL_12:
  if ((a2 & 1) == 0)
  {
    [v17 closePath];
  }

  v48 = a4[1];
  *&v59.a = *a4;
  *&v59.c = v48;
  *&v59.tx = a4[2];
  [v17 applyTransform:&v59];
  [v13 appendPath:v17];
  v49 = *&v60.c;
  *a4 = *&v60.a;
  a4[1] = v49;
  a4[2] = *&v60.tx;

LABEL_15:
}

void MKArrowAppendUTurnCurveToPath(void *a1, _OWORD *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E69DC728];
  v8 = a1;
  v9 = [v7 bezierPath];
  v10 = v9;
  v11 = a2[1];
  *&v18.a = *a2;
  *&v18.c = v11;
  *&v18.tx = a2[2];
  if (a3 >= 0.0)
  {
    [v9 moveToPoint:{a4 + 0.0, 0.0}];
    [v10 addArcWithCenter:1 radius:a4 + 0.0 + a3 startAngle:0.0 endAngle:a3 clockwise:{3.14159265, 0.0}];
    v13 = a4 + 0.0 + a3 * 2.0 + a4;
    [v10 addLineToPoint:{v13, 0.0}];
    [v10 addArcWithCenter:0 radius:a4 + 0.0 + a3 startAngle:0.0 endAngle:a4 + a3 clockwise:{0.0, 3.14159265}];
    v17 = v18;
    CGAffineTransformTranslate(&v18, &v17, v13, 0.0);
    v16 = v18;
    v12 = -3.14159265;
  }

  else
  {
    [v9 moveToPoint:{0.0, 0.0}];
    [v10 addArcWithCenter:0 radius:a3 startAngle:0.0 endAngle:-a3 clockwise:{0.0, -3.14159265}];
    [v10 addLineToPoint:{-(a4 - a3 * 2.0), 0.0}];
    [v10 addArcWithCenter:1 radius:a3 startAngle:0.0 endAngle:a4 - a3 clockwise:{3.14159265, 0.0}];
    v17 = v18;
    CGAffineTransformTranslate(&v18, &v17, a4 - (a4 - a3 * 2.0), 0.0);
    v16 = v18;
    v12 = 3.14159265;
  }

  CGAffineTransformRotate(&v17, &v16, v12);
  v18 = v17;
  [v10 closePath];
  v14 = a2[1];
  *&v17.a = *a2;
  *&v17.c = v14;
  *&v17.tx = a2[2];
  [v10 applyTransform:&v17];
  [v8 appendPath:v10];

  v15 = *&v18.c;
  *a2 = *&v18.a;
  a2[1] = v15;
  a2[2] = *&v18.tx;
}

void MKArrowAppendRightTurnToPathInRect(void *a1, double *a2, double *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = a2[7];
  v17 = a2[3];
  v18 = fmax(a2[15] - v17, 0.0);
  v19 = ceil(a2[18] - v18);
  v20 = ceil(a2[17] - v18);
  if (a3)
  {
    *a3 = v17 + v19 + -1.0;
  }

  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeTranslation(&v21, a5 + a7 - v19, a6 + a8);
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v15, __dst, &v21, 0, v20);
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendRightAngleCurveToPath(v15, __dst, &v21);
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendSegmentToPath(v15, __dst, &v21, v19 - v16);
  if (a4)
  {
    *a4 = [v15 copy];
  }

  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v15, __dst, 0, &v21, 0.0);
}

void MKArrowAppendLeftTurnToPathInRect(void *a1, const void *a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8)
{
  v14 = a1;
  v15 = [MEMORY[0x1E69DC728] bezierPath];
  v22 = 0.0;
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendRightTurnToPathInRect(v15, __dst, &v22, a8, a3, a4, a5, a6);
  memset(__dst, 0, 48);
  CGAffineTransformMakeScale(__dst, -1.0, 1.0);
  v19 = *__dst;
  CGAffineTransformTranslate(&v20, &v19, -v22, 0.0);
  *__dst = v20;
  if (a8)
  {
    v16 = *a8;
    v20 = *__dst;
    [v16 applyTransform:&v20];
    v17 = [v14 copy];
    [v17 appendPath:*a8];
    v18 = v17;
    *a8 = v17;
  }

  v20 = *__dst;
  [v15 applyTransform:&v20];
  [v14 appendPath:v15];
}

void MKArrowAppendMergeLeftToPathInRect(void *a1, const void *a2, void *a3, double a4, CGFloat a5, double a6, double a7)
{
  v13 = a1;
  v14 = [MEMORY[0x1E69DC728] bezierPath];
  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendMergeRightToPathInRect(v14, __dst, a3, v15, v16, a6, a7);
  memset(__dst, 0, 48);
  CGAffineTransformMakeScale(__dst, -1.0, 1.0);
  v20 = *__dst;
  CGAffineTransformTranslate(&v21, &v20, -a4 - a6, a5);
  *__dst = v21;
  if (a3)
  {
    v17 = *a3;
    v21 = *__dst;
    [v17 applyTransform:&v21];
    v18 = [v13 copy];
    [v18 appendPath:*a3];
    v19 = v18;
    *a3 = v18;
  }

  v21 = *__dst;
  [v14 applyTransform:&v21];
  [v13 appendPath:v14];
}

void MKArrowAppendMergeRightToPathInRect(void *a1, double *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = (a6 + a2[3] * -2.79999995) * 0.5;
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeTranslation(&v19, a4 + v14, a5 + a7);
  v15 = a2[38];
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v13, __dst, &v19, 0, v15);
  v16 = a2[40];
  v17 = a2[41] * -0.0174532925;
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendCurveToPathWithOptionsAndRadius(v13, 0, __dst, &v19, 0, v17, v16);
  v18 = a2[39];
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendSegmentToPath(v13, __dst, &v19, v18);
  if (a3)
  {
    *a3 = [v13 copy];
  }

  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v13, __dst, 0, &v19, 0.0);
}

void MKArrowAppendUTurnToPathInRect(void *a1, int a2, double *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = a3[7];
  v17 = a3[3];
  v18 = a3[10];
  v19 = (a3[6] - v17) * 0.5 + v17 + v17 + v18 * 2.0;
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeTranslation(&v24, a5 + v19 - v17, a6 + a8);
  if (a2 == 1)
  {
    v23 = v24;
    CGAffineTransformScale(__dst, &v23, -1.0, 1.0);
    v24 = *__dst;
    v23 = *__dst;
    CGAffineTransformTranslate(__dst, &v23, -a7, 0.0);
    v24 = *__dst;
  }

  v20 = a8 * 0.522222221;
  v21 = a8 * 0.522222221 - a3[12];
  v22 = v20 - a3[13];
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v15, __dst, &v24, 0, v21);
  MKArrowAppendUTurnCurveToPath(v15, &v24, -v18, a3[3]);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendSegmentToPath(v15, __dst, &v24, v22 - v16);
  if (a4)
  {
    *a4 = [v15 copy];
  }

  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v15, __dst, 0, &v24, 0.0);
}

void MKArrowAppendStraightArrowToPathInRect(void *a1, double *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = a2[7];
  v15 = a2[19];
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeTranslation(&v16, a4 + ceil((a6 - a2[3]) * 0.5), a5 + a7);
  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v13, __dst, &v16, 0, a7 - v14 - v15);
  if (a3)
  {
    *a3 = [v13 copy];
  }

  memcpy(__dst, a2, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v13, __dst, 0, &v16, 0.0);
}

void MKArrowAppendExitRoadRightToPathInRect(void *a1, void *a2, _OWORD *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = MEMORY[0x1E69DC728];
  v17 = a2;
  v18 = [v16 bezierPath];
  v19 = [MEMORY[0x1E69DC728] bezierPath];
  v20 = *(MEMORY[0x1E695EFD0] + 16);
  v54 = *MEMORY[0x1E695EFD0];
  v55 = v20;
  v56 = *(MEMORY[0x1E695EFD0] + 32);
  v21 = *(a3 + 31);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v18, __dst, &v54, 0, v21);
  v22 = *(a3 + 33);
  v23 = *(a3 + 3);
  v24 = *(a3 + 8);
  v25 = v19;
  v26 = -v22;
  if (v24 >= v23 * 0.5)
  {
    v27 = v23 * 0.5;
  }

  else
  {
    v27 = v24;
  }

  if (v27 <= 0.0)
  {
    [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, v26, v23, v22}];
  }

  else
  {
    [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:15 byRoundingCorners:0.0 cornerRadii:{v26, v23, v22, v27, v27}];
  }
  v28 = ;
  *__dst = v54;
  *&__dst[16] = v55;
  *&__dst[32] = v56;
  [v28 applyTransform:{__dst, v54, v55, v56}];
  [v25 appendPath:v28];

  v29 = a3[3];
  *&__dst[32] = a3[2];
  *&__dst[48] = v29;
  *&__dst[64] = *(a3 + 8);
  v30 = a3[1];
  *__dst = *a3;
  *&__dst[16] = v30;
  v31 = a3[12];
  *&__dst[176] = a3[11];
  *&__dst[192] = v31;
  v32 = a3[14];
  *&__dst[208] = a3[13];
  *&__dst[224] = v32;
  v33 = a3[8];
  *&__dst[112] = a3[7];
  *&__dst[128] = v33;
  v34 = a3[10];
  *&__dst[144] = a3[9];
  *&__dst[160] = v34;
  v35 = a3[6];
  *&__dst[80] = a3[5];
  *&__dst[96] = v35;
  v36 = *(a3 + 440);
  v37 = *(a3 + 472);
  *&__dst[456] = *(a3 + 456);
  *&__dst[472] = v37;
  v38 = *(a3 + 376);
  v39 = *(a3 + 408);
  v40 = *(a3 + 424);
  *&__dst[392] = *(a3 + 392);
  *&__dst[408] = v39;
  *&__dst[424] = v40;
  *&__dst[440] = v36;
  v41 = *(a3 + 312);
  v42 = *(a3 + 344);
  v43 = *(a3 + 360);
  *&__dst[328] = *(a3 + 328);
  *&__dst[344] = v42;
  *&__dst[360] = v43;
  *&__dst[376] = v38;
  v44 = *(a3 + 280);
  v45 = *(a3 + 296);
  v46 = *(a3 + 248);
  *&__dst[264] = *(a3 + 264);
  *&__dst[280] = v44;
  *&v42 = *(a3 + 9);
  *&__dst[296] = v45;
  *&__dst[312] = v41;
  *&v44 = *(a3 + 30);
  *&__dst[488] = *(a3 + 61);
  *&__dst[248] = v46;
  *&__dst[72] = v42;
  *&__dst[240] = v44;
  MKArrowAppendCurveToPathWithOptionsAndRadius(v18, 0, __dst, &v54, 0, -0.785398163, *&v44);
  v47 = *(a3 + 32);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendSegmentToPath(v18, __dst, &v54, v47);
  if (a4)
  {
    v48 = [v18 copy];
  }

  else
  {
    v48 = 0;
  }

  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v18, __dst, 0, &v54, 0.0);
  [v18 bounds];
  v50 = a5 + (a7 - v49) * 0.5;
  v51 = a6 + a8;
  if (a4)
  {
    CGAffineTransformMakeTranslation(__dst, v50, v51);
    [v48 applyTransform:__dst];
    v52 = [v15 copy];
    [v52 appendPath:v48];
    v53 = v52;
    *a4 = v52;
  }

  CGAffineTransformMakeTranslation(__dst, v50, v51);
  [v18 applyTransform:__dst];
  [v15 appendPath:v18];
  CGAffineTransformMakeTranslation(__dst, v50, v51);
  [v25 applyTransform:__dst];
  [v17 appendPath:v25];
}

void MKArrowAppendExitRoadLeftToPathInRect(void *a1, void *a2, const void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = MEMORY[0x1E69DC728];
  v17 = a2;
  v18 = [v16 bezierPath];
  v19 = [MEMORY[0x1E69DC728] bezierPath];
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendExitRoadRightToPathInRect(v18, v19, __dst, a4, a5, a6, a7, a8);
  memset(__dst, 0, 48);
  CGAffineTransformMakeScale(__dst, -1.0, 1.0);
  v23 = *__dst;
  CGAffineTransformTranslate(&v24, &v23, -a7, 0.0);
  *__dst = v24;
  if (a4)
  {
    v20 = *a4;
    v24 = *__dst;
    [v20 applyTransform:&v24];
    v21 = [v15 copy];
    [v21 appendPath:*a4];
    v22 = v21;
    *a4 = v21;
  }

  v24 = *__dst;
  [v18 applyTransform:&v24];
  v24 = *__dst;
  [v19 applyTransform:&v24];
  [v15 appendPath:v18];
  [v17 appendPath:v19];
}

void sub_1A306CEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A30725FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3072AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A3075E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3077E7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id _routeAttributesForMKDirectionsRequest(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E69A2500]);
  v3 = _MKLinkedOnOrAfterReleaseSet(1283);
  BOOL = GEOConfigGetBOOL();
  if (v3 && BOOL)
  {
    v5 = [v1 transportType];
    v6 = [MEMORY[0x1E695DF70] array];
    if (v5 == 0xFFFFFFF)
    {
      v7 = GEOGetUserTransportTypePreference();
      if (v7 < 5)
      {
        [v6 addObject:qword_1E76CCA50[v7]];
      }
    }

    else if ((v5 & 1) == 0)
    {
LABEL_13:
      if ((v5 & 2) != 0 && ([v6 containsObject:&unk_1F1611BC0] & 1) == 0)
      {
        [v6 addObject:&unk_1F1611BC0];
      }

      if ((v5 & 4) != 0 && ([v6 containsObject:&unk_1F1611BD8] & 1) == 0)
      {
        [v6 addObject:&unk_1F1611BD8];
      }

      if ((v5 & 8) != 0 && ([v6 containsObject:&unk_1F1611BA8] & 1) == 0)
      {
        [v6 addObject:&unk_1F1611BA8];
      }

      if (![v6 count])
      {
        [v6 addObject:&unk_1F1611BF0];
      }

      v8 = [v6 mutableCopy];

      goto LABEL_29;
    }

    if (([v6 containsObject:&unk_1F1611BF0] & 1) == 0)
    {
      [v6 addObject:&unk_1F1611BF0];
    }

    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [v1 transportType];
  switch(v9)
  {
    case 2:
      v10 = &unk_1F1611BC0;
      break;
    case 4:
      v10 = &unk_1F1611BD8;
      break;
    case 8:
      v10 = &unk_1F1611BA8;
      break;
    default:
      v10 = &unk_1F1611BF0;
      break;
  }

  [v8 addObject:v10];
LABEL_29:
  [v8 removeObject:&unk_1F1611BD8];
  v11 = [v8 firstObject];
  v12 = [v11 intValue];

  [v2 setMainTransportType:v12];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v14)
  {
    goto LABEL_49;
  }

  v15 = v14;
  v16 = *v37;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v37 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = [*(*(&v36 + 1) + 8 * i) intValue];
      if (v18 != v12)
      {
        [v2 addAdditionalTransportType:v18];
      }

      if (v18 == 3)
      {
        v22 = objc_alloc_init(MEMORY[0x1E69A1CE0]);
        [v2 setCyclingOptions:v22];
      }

      else if (v18 == 2)
      {
        v22 = objc_alloc_init(MEMORY[0x1E69A2768]);
        [v2 setWalkingOptions:v22];
      }

      else
      {
        if (v18)
        {
          continue;
        }

        v19 = objc_alloc_init(MEMORY[0x1E69A1B90]);
        [v2 setAutomobileOptions:v19];

        v20 = [v2 automobileOptions];
        [v20 setIncludeHistoricTravelTime:1];

        v21 = [v2 automobileOptions];
        [v21 setTrafficType:3];

        v22 = objc_alloc_init(MEMORY[0x1E69A2708]);
        if ([v1 tollPreference] == 1)
        {
          [v22 setAvoidTolls:1];
        }

        if ([v1 highwayPreference] == 1)
        {
          [v22 setAvoidHighways:1];
        }

        v23 = [v2 automobileOptions];
        [v23 setUserPreferences:v22];
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v15);
LABEL_49:

  [v2 setTrafficType:3];
  [v2 setIncludeTrafficAlongRoute:1];
  if ([v1 _includeRoutePoints])
  {
    [v2 setRoutePointTypeForTransportType:v12];
  }

  [v2 setIncludeHistoricTravelTime:{objc_msgSend(v1, "_includeTravelTimes")}];
  [v2 setIncludeTrafficIncidents:{objc_msgSend(v1, "_includeTrafficIncidents")}];
  v24 = [v1 _arrivalDate];
  v25 = [v1 _departureDate];
  v26 = v25;
  if ((v24 == 0) == (v25 != 0))
  {
    if (v24)
    {
      [v24 timeIntervalSinceReferenceDate];
      v30 = 0;
      v31 = v27;
      v32 = 1;
      goto LABEL_56;
    }

    if (v25)
    {
      [v25 timeIntervalSinceReferenceDate];
      v30 = 0;
      v31 = v28;
      v32 = 0;
LABEL_56:
      v33 = 6;
      v34 = 0;
      v35 = 0;
      [v2 setTimepoint:&v30];
    }
  }

  [v2 addUiContext:3];

  return v2;
}

void sub_1A307ADB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37655(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A307C5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A307D888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1A307F5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A30819F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _MKOverlayTileRequester;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id RequesterRegistry::lookup(RequesterRegistry *this, unsigned int a2)
{
  v12 = a2;
  std::mutex::lock((this + 24));
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = (this + 8);
  do
  {
    v6 = v4[8];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * v8];
  }

  while (v4);
  if (v5 != (this + 8) && v5[8] <= a2)
  {
    v13 = &v12;
    v11 = std::__tree<std::__value_type<unsigned int,objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak}>,std::__map_value_compare<unsigned int,objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak},std::less<unsigned int>,true>,std::allocator<objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak}>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::piecewise_construct_t const&<>>(this, a2);
    WeakRetained = objc_loadWeakRetained(v11 + 5);
  }

  else
  {
LABEL_9:
    WeakRetained = 0;
  }

  std::mutex::unlock((this + 24));

  return WeakRetained;
}

uint64_t *std::__tree<std::__value_type<unsigned int,objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak}>,std::__map_value_compare<unsigned int,objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak},std::less<unsigned int>,true>,std::allocator<objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak}>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

id _MKOverlayTileLoader()
{
  if (_MKOverlayTileLoader::onceToken != -1)
  {
    dispatch_once(&_MKOverlayTileLoader::onceToken, &__block_literal_global_38166);
  }

  v1 = _MKOverlayTileLoader::_loader;

  return v1;
}

void sub_1A30829BC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void ___ZL30_tileRequesterCallbackWorkloopv_block_invoke()
{
  v0 = dispatch_workloop_create("com.apple.MapKit.MKTileOverlay.Callback");
  v1 = _tileRequesterCallbackWorkloop(void)::workloop;
  _tileRequesterCallbackWorkloop(void)::workloop = v0;
}

void ___ZL22_tileRequesterWorkloopv_block_invoke()
{
  v0 = dispatch_workloop_create("com.apple.MapKit.MKTileOverlay.Requester");
  v1 = _tileRequesterWorkloop(void)::workloop;
  _tileRequesterWorkloop(void)::workloop = v0;
}

void sub_1A308558C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1A3088504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_MKPlaceCardFormattedStringForTimeInterval()
{
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
  }

  if (_MKPlaceCardUseSmallerFont_smallerFont == 1)
  {
    v0 = MEMORY[0x1E69DB878];
    v1 = MEMORY[0x1E69DDD28];
    if (!_MKPlaceCardUseSmallerFont_smallerFont)
    {
      v1 = MEMORY[0x1E69DDD78];
    }

    v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*v1 addingSymbolicTraits:2 options:0];
    v3 = [v0 fontWithDescriptor:v2 size:0.0];

    [v3 pointSize];
    if (_MKPlaceCardUseSmallerFont_onceToken != -1)
    {
      dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
    }
  }

  v4 = [MEMORY[0x1E696AEC0] _navigation_stringWithSeconds:? andAbbreviationType:?];
  if (!v4)
  {
    v4 = &stru_1F15B23C0;
  }

  return v4;
}

void sub_1A308F014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A308F2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39534(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A308FEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGFloat MKRoadWidthAtZoomScale(MKZoomScale zoomScale)
{
  v2 = vcvtmd_s64_f64(log2(zoomScale) + 0.5);
  if (v2 >= -21)
  {
    v3 = (v2 & (v2 >> 63)) + 21;
  }

  else
  {
    v3 = 0;
  }

  return dbl_1A30F7B28[v3] / zoomScale;
}

uint64_t __Block_byref_object_copy__39689(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A30926E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__39884(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__39885(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<GEOPosition2d>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<gm::Matrix<double,2,1>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *std::vector<GEOPosition2d>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<gm::Matrix<double,2,1>>>(a2);
    }

    std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CGPath *_MKPolygonRendererCreateStrokeClipPathForPolygon(void *a1, double a2, double a3, double a4, double a5)
{
  v8 = a1;
  v9 = [v8 pointCount];
  v10 = [v8 points];
  if (v9 < 3)
  {
    Mutable = 0;
    goto LABEL_18;
  }

  v12 = v10;
  [v8 _mapPointsLength];
  v14 = v13;
  Mutable = CGPathCreateMutable();
  v15 = *v12 - a2;
  v16 = v12[1] - a3;
  CGPathMoveToPoint(Mutable, 0, v15, v16);
  v18 = &v12[2 * v9];
  v17 = *(v18 - 8);
  LODWORD(v18) = *v12 != *(v18 - 16);
  if (v12[1] == v17)
  {
    v18 = v18;
  }

  else
  {
    v18 = 1;
  }

  v19 = v9 + v18;
  if (v9 + v18 >= 2)
  {
    v32 = v14 * a4;
    v31 = v14 * a5;
    v20 = a4 == 0.0;
    v21 = 0.0;
    v22 = 1;
    v34 = a2;
    v35 = a3;
    do
    {
      v23 = &v12[2 * (v22 % v9)];
      v24 = *v23 - a2;
      v25 = v23[1] - a3;
      v26 = v24 - v15;
      v27 = v25 - v16;
      v28 = sqrt(v26 * v26 + v27 * v27);
      v29 = v21 + v28;
      if (!v20)
      {
        if (v29 <= v32)
        {
          v20 = 0;
          goto LABEL_15;
        }

        CGPathMoveToPoint(Mutable, 0, v15 + v26 * ((v32 - v21) / v28), v16 + v27 * ((v32 - v21) / v28));
        v26 = v24 - v15;
      }

      if (a5 < 1.0 && v29 >= v31)
      {
        CGPathAddLineToPoint(Mutable, 0, v15 + v26 * ((v31 - v21) / v28), v16 + v27 * ((v31 - v21) / v28));
        break;
      }

      CGPathAddLineToPoint(Mutable, 0, v24, v25);
      v20 = 1;
LABEL_15:
      ++v22;
      v21 = v21 + v28;
      v15 = v24;
      v16 = v25;
      a2 = v34;
      a3 = v35;
    }

    while (v19 != v22);
  }

LABEL_18:

  return Mutable;
}

void sub_1A309A5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40845(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A309C808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A309C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

long double MKCoordinateForTilePoint(double a1, double a2, double a3)
{
  v3 = a2 * 0.0078125;
  v4 = ldexp(1.0, a3);
  v5 = exp((v3 + v4 * -0.5) / (v4 / 6.28318531));
  return (atan(v5) * -2.0 + 1.57079633) * 57.2957795;
}

void MKDistanceBetweenPointAndRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  v12.x = a1;
  v12.y = a2;
  if (!CGRectContainsPoint(v13, v12))
  {
    v14.origin.x = a3;
    v14.origin.y = a4;
    v14.size.width = a5;
    v14.size.height = a6;
    CGRectGetMaxX(v14);
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    CGRectGetMaxY(v15);
  }
}

double MKClosestMapPointInLineSegmentFromMapPoint(double result, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - result;
  v7 = a4 - a2;
  if (a3 - result != 0.0 || v7 != 0.0)
  {
    v8 = (v7 * (a6 - a2) + (a5 - result) * v6) / (v7 * v7 + v6 * v6);
    if (v8 >= 0.0)
    {
      if (v8 <= 1.0)
      {
        return result + v8 * v6;
      }

      else
      {
        return a3;
      }
    }
  }

  return result;
}

void MKCoordinatesForRegion(CLLocationCoordinate2D *a1, CLLocationCoordinate2D *a2)
{
  GEOMapRectForCoordinateRegion();
  if (v4 == INFINITY && v5 == INFINITY)
  {
    *a1 = MKCoordinateInvalid;
    *a2 = MKCoordinateInvalid;
  }

  else
  {
    v9 = v4 + v6;
    v10 = v5 + v7;
    *a1 = MKCoordinateForMapPoint(*&v4);
    v11.x = v9;
    v11.y = v10;
    *a2 = MKCoordinateForMapPoint(v11);
  }
}

long double MKZoomLevelForScaleF(long double a1)
{
  result = log2(a1) + 21.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

MKMapRect MKMapRectInset(MKMapRect rect, double dx, double dy)
{
  y = rect.origin.y;
  v4 = INFINITY;
  if (rect.origin.x == INFINITY && y == INFINITY)
  {
    v6 = INFINITY;
  }

  else
  {
    v6 = rect.origin.x + dx;
    v4 = y + dy;
    rect.size.width = rect.size.width - dx * 2.0;
    rect.size.height = rect.size.height - dy * 2.0;
  }

  rect.origin.y = v4;
  rect.origin.x = v6;
  return rect;
}

MKMapRect MKMapRectOffset(MKMapRect rect, double dx, double dy)
{
  v3 = rect.origin.x + dx;
  v4 = rect.origin.y + dy;
  if (rect.origin.x != INFINITY || rect.origin.y != INFINITY)
  {
    rect.origin.x = v3;
    rect.origin.y = v4;
  }

  return rect;
}

void MKMapRectDivide(MKMapRect rect, MKMapRect *slice, MKMapRect *remainder, double amount, CGRectEdge edge)
{
  if (rect.origin.x == INFINITY && rect.origin.y == INFINITY)
  {
    *slice = MKMapRectNull;
    *remainder = MKMapRectNull;
  }

  else
  {
    *remainder = rect;
    size = remainder->size;
    slice->origin = remainder->origin;
    slice->size = size;
    width = 0.0;
    if (amount >= 0.0)
    {
      width = amount;
    }

    if ((edge | 2) == 2)
    {
      if (width > rect.size.width)
      {
        width = rect.size.width;
      }

      slice->size.width = width;
      v8 = remainder->size.width - width;
      remainder->size.width = v8;
      if (edge)
      {
        slice->origin.x = v8 + slice->origin.x;
      }

      else
      {
        remainder->origin.x = width + remainder->origin.x;
      }
    }

    else
    {
      if (width > rect.size.height)
      {
        width = rect.size.height;
      }

      slice->size.height = width;
      v9 = remainder->size.height - width;
      remainder->size.height = v9;
      if (edge == CGRectMinYEdge)
      {
        remainder->origin.y = width + remainder->origin.y;
      }

      else
      {
        slice->origin.y = v9 + slice->origin.y;
      }
    }
  }
}

BOOL MKMapRectSpans180thMeridian(MKMapRect rect)
{
  v1 = rect.origin.x + rect.size.width;
  if (rect.origin.x < 0.0 && v1 > 0.0)
  {
    return 1;
  }

  if (v1 <= 268435456.0)
  {
    return 0;
  }

  return rect.origin.x < 268435456.0;
}

MKMapRect MKMapRectRemainder(MKMapRect rect)
{
  x = rect.origin.x;
  if (rect.origin.x >= 0.0)
  {
    v4 = rect.origin.x + rect.size.width;
    if (v4 <= 268435456.0)
    {
      v3 = 0.0;
      v2 = INFINITY;
      rect.origin.y = INFINITY;
      rect.size.height = 0.0;
    }

    else
    {
      v3 = v4 + -268435456.0;
      v2 = 0.0;
    }
  }

  else
  {
    v2 = rect.origin.x + 268435456.0;
    v3 = fabs(x);
  }

  rect.size.width = v3;
  rect.origin.x = v2;
  return rect;
}

BOOL MKMapRectContainsRectWrappingMeridian(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a5 == INFINITY && a6 == INFINITY)
  {
    return 1;
  }

  if (a1 == INFINITY && a2 == INFINITY)
  {
    return 0;
  }

  v14 = a6;
  if (MKMapRectContainsRect(*&a1, *&a5))
  {
    return 1;
  }

  rect1 = a8;
  v19 = a1 + a3;
  if (a1 < 0.0 && v19 > 0.0 || (result = 0, a1 < 268435456.0) && v19 > 268435456.0)
  {
    v63.size.width = 268435456.0;
    v63.origin.x = 0.0;
    v63.origin.y = 0.0;
    v56.origin.x = a1;
    v56.origin.y = a2;
    v56.size.width = a3;
    v56.size.height = a4;
    v63.size.height = 268435456.0;
    v57 = MKMapRectIntersection(v56, v63);
    x = v57.origin.x;
    width = v57.size.width;
    y = v57.origin.y;
    height = v57.size.height;
    v20 = INFINITY;
    v21 = v19 + -268435456.0;
    v22 = 0.0;
    if (v19 > 268435456.0)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = INFINITY;
    }

    if (v19 <= 268435456.0)
    {
      v21 = 0.0;
    }

    else
    {
      v20 = a2;
    }

    if (v19 > 268435456.0)
    {
      v22 = a4;
    }

    v24 = fabs(a1);
    v25 = a1 < 0.0;
    if (a1 < 0.0)
    {
      v26 = a1 + 268435456.0;
    }

    else
    {
      v26 = v23;
    }

    if (v25)
    {
      v20 = a2;
    }

    v47 = v20;
    if (v25)
    {
      v27 = v24;
    }

    else
    {
      v27 = v21;
    }

    if (v25)
    {
      v28 = a4;
    }

    else
    {
      v28 = v22;
    }

    v64.size.width = 268435456.0;
    v49 = v27;
    rect2 = 0.0;
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v58.origin.x = a5;
    v58.origin.y = v14;
    v58.size.width = a7;
    v58.size.height = rect1;
    v64.size.height = 268435456.0;
    v59 = MKMapRectIntersection(v58, v64);
    v29 = v59.origin.x;
    v30 = v59.origin.y;
    v31 = v59.size.width;
    v32 = v59.size.height;
    if (a5 >= 0.0)
    {
      if (a5 + a7 <= 268435456.0)
      {
        v33 = INFINITY;
        v14 = INFINITY;
        rect1 = 0.0;
      }

      else
      {
        rect2 = a5 + a7 + -268435456.0;
        v33 = 0.0;
      }
    }

    else
    {
      v33 = a5 + 268435456.0;
      rect2 = fabs(a5);
    }

    v60.origin.x = x;
    v60.size.width = width;
    v60.origin.y = y;
    v60.size.height = height;
    v34 = v29;
    v35 = v30;
    v36 = v31;
    v46 = v32;
    v37 = MKMapRectContainsRect(v60, *&v29);
    if (v33 == INFINITY && v14 == INFINITY)
    {
      if (v37)
      {
        return 1;
      }

      v38 = v26;
      v40 = v46;
      v39 = v47;
      v41 = v49;
      v42 = v28;
      v43 = v34;
      v44 = v35;
      v45 = v36;
    }

    else
    {
      if (!v37)
      {
        v61.origin.x = x;
        v61.size.width = width;
        v61.origin.y = y;
        v65.size.width = rect2;
        v61.size.height = height;
        v65.origin.x = v33;
        v65.origin.y = v14;
        v65.size.height = rect1;
        result = MKMapRectContainsRect(v61, v65);
        if (!result)
        {
          return result;
        }
      }

      v62.origin.x = v26;
      v66.size.height = v46;
      v62.origin.y = v47;
      v62.size.width = v49;
      v62.size.height = v28;
      v66.origin.x = v34;
      v66.origin.y = v35;
      v66.size.width = v36;
      if (MKMapRectContainsRect(v62, v66))
      {
        return 1;
      }

      v38 = v26;
      v40 = rect1;
      v39 = v47;
      v41 = v49;
      v42 = v28;
      v43 = v33;
      v44 = v14;
      v45 = rect2;
    }

    return MKMapRectContainsRect(*&v38, *&v43);
  }

  return result;
}

BOOL MKMapRectIntersectsMapRectWrappingMeridian(double a1, double a2, double width, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1;
  v44[4] = *MEMORY[0x1E69E9840];
  if (a1 == INFINITY && a2 == INFINITY)
  {
    return 0;
  }

  v10 = a6;
  v11 = a5;
  if (a5 == INFINITY && a6 == INFINITY)
  {
    return 0;
  }

  v17 = a2;
  if (MKMapRectIntersectsRect(*&a1, *&a5))
  {
    return 1;
  }

  v19 = v8 + width;
  if ((v8 >= 0.0 || v19 <= 0.0) && (v8 >= 268435456.0 || v19 <= 268435456.0))
  {
    v23 = width;
    height = a4;
    y = v17;
    x = v8;
  }

  else
  {
    v39 = v8 + width;
    v50.size.width = 268435456.0;
    v50.origin.x = 0.0;
    v50.origin.y = 0.0;
    v45.origin.x = v8;
    v45.origin.y = v17;
    v45.size.width = width;
    v45.size.height = a4;
    v50.size.height = 268435456.0;
    v46 = MKMapRectIntersection(v45, v50);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    if (v8 >= 0.0)
    {
      if (v39 <= 268435456.0)
      {
        v17 = INFINITY;
        a4 = 0.0;
        v8 = INFINITY;
        v23 = 0.0;
      }

      else
      {
        v23 = v39 + -268435456.0;
        v8 = 0.0;
      }
    }

    else
    {
      v23 = fabs(v8);
      v8 = v8 + 268435456.0;
    }
  }

  v24 = v11 + a7;
  if ((v11 >= 0.0 || v24 <= 0.0) && (v11 >= 268435456.0 || v24 <= 268435456.0))
  {
    v48.size.height = a8;
    v48.size.width = a7;
    v48.origin.y = v10;
    v48.origin.x = v11;
  }

  else
  {
    v35 = v11 + a7;
    v36 = x;
    v37 = y;
    v38 = height;
    v40 = v23;
    v51.size.width = 268435456.0;
    v51.origin.x = 0.0;
    v51.origin.y = 0.0;
    v47.origin.x = v11;
    v47.origin.y = v10;
    v47.size.width = a7;
    v47.size.height = a8;
    v51.size.height = 268435456.0;
    v48 = MKMapRectIntersection(v47, v51);
    if (v11 >= 0.0)
    {
      if (v35 > 268435456.0)
      {
        a7 = v35 + -268435456.0;
      }

      else
      {
        a8 = 0.0;
        a7 = 0.0;
      }

      if (v35 > 268435456.0)
      {
        v11 = 0.0;
      }

      else
      {
        v10 = INFINITY;
        v11 = INFINITY;
      }
    }

    else
    {
      a7 = fabs(v11);
      v11 = v11 + 268435456.0;
    }

    height = v38;
    v23 = v40;
    x = v36;
    y = v37;
  }

  *v43 = x;
  *&v43[1] = y;
  *&v43[2] = width;
  *&v43[3] = height;
  *v44 = v8;
  *&v44[1] = v17;
  *&v44[2] = v23;
  *&v44[3] = a4;
  v41 = v48;
  *v42 = v11;
  *&v42[1] = v10;
  v25 = v43;
  v26 = 1;
  *&v42[2] = a7;
  *&v42[3] = a8;
LABEL_38:
  v27 = v26;
  v28 = *v25;
  v29 = v25[1];
  v30 = &v41;
  v31 = 1;
  v32 = v25[2];
  v33 = v25[3];
  while (1)
  {
    v34 = v31;
    v49.origin.x = v28;
    v49.origin.y = v29;
    v49.size.width = v32;
    v49.size.height = v33;
    result = MKMapRectIntersectsRect(v49, *v30);
    if (result)
    {
      return result;
    }

    v31 = 0;
    v30 = v42;
    if ((v34 & 1) == 0)
    {
      v26 = 0;
      v25 = v44;
      if (v27)
      {
        goto LABEL_38;
      }

      return result;
    }
  }
}

double MKMapRectBoundingMapPoints(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return INFINITY;
  }

  v2 = (a1 + 8);
  v3 = INFINITY;
  v4 = -INFINITY;
  v5 = -INFINITY;
  result = INFINITY;
  do
  {
    v7 = *(v2 - 1);
    v8 = *v2;
    if (v7 < result)
    {
      result = *(v2 - 1);
    }

    if (v8 < v3)
    {
      v3 = *v2;
    }

    if (v7 > v5)
    {
      v5 = *(v2 - 1);
    }

    if (v8 > v4)
    {
      v4 = *v2;
    }

    v2 += 2;
    --a2;
  }

  while (a2);
  return result;
}

void _MKPolylineAddToPath(CGPath *a1, double *a2, unint64_t a3, float64_t a4, float64_t a5, double a6, double a7, double a8, double a9)
{
  v9 = a3 - 2;
  if (a3 >= 2)
  {
    v17 = a7 == 0.0;
    v18 = a8 < 1.0 || a7 > 0.0;
    v19 = *a2 - a4;
    v20 = a2[1] - a5;
    CGPathMoveToPoint(a1, 0, v19, v20);
    v21 = a7 * a9;
    v22 = a8 * a9;
    v23 = a3 - 1;
    v24 = a8;
    v25 = 0.0;
    v48 = a9;
    v49 = v24;
    if (v23 >= 2)
    {
      v26 = 5.0 / a6 * (5.0 / a6);
      v27 = v24 >= 1.0;
      v28.f64[0] = a4;
      v28.f64[1] = a5;
      v29 = (a2 + 2);
      v30 = 0.0;
      v31 = 1.0;
      v52 = v28;
      while (1)
      {
        v32 = vsubq_f64(*v29, v28);
        if (v18)
        {
          v33 = vsubq_f64(v32, vsubq_f64(v29[-1], v28));
          v25 = v25 + sqrt(vaddvq_f64(vmulq_f64(v33, v33)));
        }

        v34 = v32.f64[0] - v19;
        v35 = v32.f64[1];
        v36 = v32.f64[1] - v20;
        if (v34 * v34 + v36 * v36 >= v26)
        {
          v53 = v32.f64[0];
          if (v17)
          {
            v17 = 1;
          }

          else if (v30 >= v21 || v25 < v21)
          {
            v17 = 0;
            if (v25 < v21)
            {
              v30 = v25;
              goto LABEL_24;
            }
          }

          else
          {
            v37 = (v21 - v30) / (v25 - v30);
            v19 = v19 + v34 * v37;
            v20 = v20 + v36 * v37;
            CGPathMoveToPoint(a1, 0, v19, v20);
            v32.f64[0] = v53;
            v17 = 1;
            v30 = v21;
          }

          v38 = v30 >= v22 || v27;
          if ((v38 & 1) == 0 && v25 >= v22)
          {
            v39 = (v22 - v30) / (v25 - v30);
            v54 = v19 + (v32.f64[0] - v19) * v39;
            v35 = v20 + (v35 - v20) * v39;
            CGPathAddLineToPoint(a1, 0, v54, v35);
            v32.f64[0] = v54;
            v25 = v22;
            goto LABEL_28;
          }

          CGPathAddLineToPoint(a1, 0, v32.f64[0], v35);
          v28 = v52;
          v32.f64[0] = v53;
          v30 = v25;
          v31 = 1.0;
        }

        else
        {
          v35 = v20;
          v32.f64[0] = v19;
        }

LABEL_24:
        ++v29;
        v19 = v32.f64[0];
        v20 = v35;
        if (!--v9)
        {
          goto LABEL_29;
        }
      }
    }

    v35 = v20;
    v32.f64[0] = v19;
LABEL_28:
    v31 = 1.0;
LABEL_29:
    v40 = &a2[2 * v23];
    v41 = *v40 - a4;
    v42 = v40[1] - a5;
    if (v49 >= v31)
    {
      if (!v17)
      {
        return;
      }

      v43 = a1;
      v44 = *v40 - a4;
      v45 = v40[1] - a5;
    }

    else
    {
      if (v25 >= v22)
      {
        return;
      }

      if (v17)
      {
        v21 = v25;
      }

      else
      {
        v46 = (v21 - v25) / (v48 - v25);
        v55 = v32.f64[0] + (v41 - v32.f64[0]) * v46;
        v35 = v35 + (v42 - v35) * v46;
        CGPathMoveToPoint(a1, 0, v55, v35);
        v32.f64[0] = v55;
      }

      v47 = (v22 - v21) / (v48 - v21);
      v44 = v32.f64[0] + (v41 - v32.f64[0]) * v47;
      v45 = v35 + (v42 - v35) * v47;
      v43 = a1;
    }

    CGPathAddLineToPoint(v43, 0, v44, v45);
  }
}

double MKCoordinateRegionMakeWithZoomLevel(double a1, double a2, double a3, double a4, double a5)
{
  v8 = MKTilePointForCoordinate(a1, a2, 21.0);
  v10 = v9;
  v11 = 1.0 / exp2(21.0 - a3);
  v12 = a4 / v11;
  v13 = a5 / v11;
  v14 = v8 - a4 / v11 * 0.5;

  v15 = v10 - v13 * 0.5;
  *&result = MKCoordinateRegionForMapRect(*&v14);
  return result;
}

void MKDirectionBetween(double a1, double a2, double a3, double a4)
{
  v6 = MKTilePointForCoordinate(a1, a2, 21.0);
  v8 = v7;
  v9 = MKTilePointForCoordinate(a3, a4, 21.0);
  v11 = v10;
  v12 = v9 - v6;
  if (vabdd_f64(v8, v11) >= 0.0000000037252903 && fabs(v12) >= 0.0000000037252903)
  {
    v13 = 1.57079633 - atan2(v8 - v11, v12);
    fmod(v13, 6.28318531);
  }
}

id _accuracyRadiusAnimation(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E6979390];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 animationWithKeyPath:a1];
  v14[0] = v10;
  v14[1] = v10;
  v14[2] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  [v11 setValues:v12];
  [v11 setKeyTimes:v8];

  return v11;
}

id MKTransitLiveDepartureColorForLiveStatus(uint64_t a1)
{
  v2 = +[MKInfoCardThemeManager currentTheme];
  v3 = MKTransitDepartureColorForThemeWithLiveStatus(v2, a1);

  return v3;
}

id MKTransitDepartureColorForThemeWithLiveStatus(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = v4;
  if ((a2 - 3) < 3)
  {
    v6 = [v4 transitDelayedTextColor];
  }

  else if ((a2 - 1) >= 2)
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v6 = [v4 lightTextColor];
  }

  else
  {
    v6 = [v4 transitOntimeTextColor];
  }

  v2 = v6;
LABEL_8:

  return v2;
}

id MKTransitLiveDepartureColorForViewWithLiveStatus(void *a1, uint64_t a2)
{
  v3 = [a1 mk_theme];
  v4 = MKTransitDepartureColorForThemeWithLiveStatus(v3, a2);

  return v4;
}

void sub_1A30A66AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42253(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A30A7128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A30A81DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A30A9464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void fillTemplate(NSMutableString *a1, NSString *a2, uint64_t a3)
{
  v7 = a1;
  v5 = a2;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a3];
  [(NSMutableString *)v7 replaceOccurrencesOfString:v5 withString:v6 options:0 range:0, [(NSMutableString *)v7 length]];
}

void sub_1A30A9D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MKTileOverlay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double mapRectContainingMapItems(void *a1, double a2, double a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    if ([v6 _venueFeatureType])
    {
      [v6 _coordinate];
      v8 = v7;
      v10 = v9;
      GEOConfigGetDouble();
      MKCoordinateRegionMakeWithZoomLevel(v8, v10, v11, a2, a3);
      GEOMapRectForCoordinateRegion();
LABEL_42:
      v16 = v12;
      goto LABEL_43;
    }

    v13 = [v6 _displayMapRegion];

    if (v13)
    {
      v14 = [v6 _displayMapRegion];
      GEOMapRectForMapRegion();
      v16 = v15;

LABEL_43:
      goto LABEL_44;
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    v21 = 0.0;
    v22 = 9.22337204e18;
    v23 = 0.0;
    v24 = 9.22337204e18;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v37 + 1) + 8 * i) _coordinate];
        v28 = MKTilePointForCoordinate(v26, v27, 21.0);
        if (v24 >= v28)
        {
          v24 = v28;
        }

        if (v22 >= v29)
        {
          v22 = v29;
        }

        if (v21 <= v28)
        {
          v21 = v28;
        }

        if (v23 <= v29)
        {
          v23 = v29;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v19);
  }

  else
  {
    v21 = 0.0;
    v22 = 9.22337204e18;
    v23 = 0.0;
    v24 = 9.22337204e18;
  }

  if (v24 <= v21)
  {
    v30 = v21;
  }

  else
  {
    v30 = v24;
  }

  if (v24 >= v21)
  {
    v31 = v21;
  }

  else
  {
    v31 = v24;
  }

  if (v30 - v31 <= 0.0 || (v22 <= v23 ? (v32 = v23) : (v32 = v22), v22 >= v23 ? (v33 = v23) : (v33 = v22), v32 - v33 <= 0.0))
  {
    v6 = [v17 firstObject];
    [v6 _coordinate];
    v12 = MKMapRectMakeWithRadialDistance(v34, v35, 100.0);
    goto LABEL_42;
  }

  if (v24 == INFINITY && v22 == INFINITY)
  {
    v16 = INFINITY;
  }

  else
  {
    v16 = v24 + 0.0;
  }

LABEL_44:

  return v16;
}