@interface MKRAPCheckEntitlements
@end

@implementation MKRAPCheckEntitlements

void ___MKRAPCheckEntitlements_block_invoke()
{
  v0 = [MEMORY[0x1E69A2398] sharedPlatform];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    _MKRAPCheckEntitlements_entitlementCheckPassed = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v2 = getSecTaskCreateFromSelfSymbolLoc_ptr;
    v20 = getSecTaskCreateFromSelfSymbolLoc_ptr;
    if (!getSecTaskCreateFromSelfSymbolLoc_ptr)
    {
      cf[0] = MEMORY[0x1E69E9820];
      cf[1] = 3221225472;
      cf[2] = __getSecTaskCreateFromSelfSymbolLoc_block_invoke;
      cf[3] = &unk_1E76CD7B0;
      v16 = &v17;
      v3 = SecurityLibrary();
      v18[3] = dlsym(v3, "SecTaskCreateFromSelf");
      getSecTaskCreateFromSelfSymbolLoc_ptr = *(v16[1] + 24);
      v2 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v2)
    {
      dlerror();
      v14 = abort_report_np();
      _Block_object_dispose(&v17, 8);
      _Unwind_Resume(v14);
    }

    v4 = v2(0);
    if (v4)
    {
      v5 = v4;
      cf[0] = 0;
      v6 = mk_SecTaskCopyValueForEntitlement(v4, @"com.apple.accounts.appleaccount.fullaccess", cf);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        v9 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
        _MKRAPCheckEntitlements_entitlementCheckPassed = v9;
        CFRelease(v7);
      }

      if ((_MKRAPCheckEntitlements_entitlementCheckPassed & 1) == 0)
      {
        v10 = mk_SecTaskCopyValueForEntitlement(v5, @"com.apple.private.accounts.allaccounts", cf);
        if (v10)
        {
          v11 = v10;
          v12 = CFGetTypeID(v10);
          v13 = v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11) != 0;
          _MKRAPCheckEntitlements_entitlementCheckPassed = v13;
          CFRelease(v11);
        }
      }

      CFRelease(v5);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    if ((_MKRAPCheckEntitlements_entitlementCheckPassed & 1) == 0)
    {
      NSLog(&cfstr_MapsPlaceViewC.isa, @"com.apple.accounts.appleaccount.fullaccess", @"com.apple.private.accounts.allaccounts");
    }
  }
}

@end