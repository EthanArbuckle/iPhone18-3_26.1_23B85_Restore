BOOL __CGSizeEqualToSize(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

double _interiorPointForCorner(uint64_t a1, double a2)
{
  if (a1 == 1 || a1 == 2 || a1 == 4)
  {
    CGPointMake();
    return v2;
  }

  else
  {
    if (a1 == 8)
    {
      CGPointMake();
    }

    return a2;
  }
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

id getLARatchetViewControllerClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getLARatchetViewControllerClass_softClass;
  v13 = getLARatchetViewControllerClass_softClass;
  if (!getLARatchetViewControllerClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getLARatchetViewControllerClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getLARatchetViewControllerClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t LocalAuthenticationEmbeddedUILibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = LocalAuthenticationEmbeddedUILibraryCore_frameworkLibrary;
  v9 = LocalAuthenticationEmbeddedUILibraryCore_frameworkLibrary;
  if (!LocalAuthenticationEmbeddedUILibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __LocalAuthenticationEmbeddedUILibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __LocalAuthenticationEmbeddedUILibraryCore_block_invoke(&v2);
  }

  return LocalAuthenticationEmbeddedUILibraryCore_frameworkLibrary;
}

uint64_t __LocalAuthenticationEmbeddedUILibraryCore_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationEmbeddedUILibraryCore_frameworkLibrary = result;
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __getLARatchetViewControllerClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationEmbeddedUILibraryCore(0);
  Class = objc_getClass("LARatchetViewController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  getLARatchetViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_222382F2C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id *location)
{
  *(v18 - 80) = a1;
  *(v18 - 84) = a2;
  objc_destroyWeak((v18 - 72));
  _Unwind_Resume(*(v18 - 80));
}

void sub_222383AA0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  *(v11 - 40) = a1;
  *(v11 - 44) = a2;
  objc_destroyWeak((v11 - 24));
  _Unwind_Resume(*(v11 - 40));
}

void sub_222383DE0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *location)
{
  *(v12 - 40) = a1;
  *(v12 - 44) = a2;
  objc_destroyWeak((v12 - 24));
  _Unwind_Resume(*(v12 - 40));
}

uint64_t CoreFollowUpLibraryCore(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = CoreFollowUpLibraryCore_frameworkLibrary;
  v15 = CoreFollowUpLibraryCore_frameworkLibrary;
  if (!CoreFollowUpLibraryCore_frameworkLibrary)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __CoreFollowUpLibraryCore_block_invoke;
    v7 = &unk_2784A5F48;
    v8 = &v11;
    v9 = v16;
    __CoreFollowUpLibraryCore_block_invoke(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t __CoreFollowUpLibraryCore_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_2784A5F18, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  CoreFollowUpLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CoreFollowUpLibrary()
{
  v2 = 0;
  v1 = CoreFollowUpLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id getFLFollowUpActionClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getFLFollowUpActionClass_softClass;
  v13 = getFLFollowUpActionClass_softClass;
  if (!getFLFollowUpActionClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLFollowUpActionClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLFollowUpActionClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getFLFollowUpActionClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  Class = objc_getClass("FLFollowUpAction");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getFLFollowUpActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLFollowUpControllerClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getFLFollowUpControllerClass_softClass;
  v13 = getFLFollowUpControllerClass_softClass;
  if (!getFLFollowUpControllerClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLFollowUpControllerClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLFollowUpControllerClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getFLFollowUpControllerClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  Class = objc_getClass("FLFollowUpController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getFLFollowUpControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLFollowUpItemClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getFLFollowUpItemClass_softClass;
  v13 = getFLFollowUpItemClass_softClass;
  if (!getFLFollowUpItemClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLFollowUpItemClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLFollowUpItemClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getFLFollowUpItemClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  Class = objc_getClass("FLFollowUpItem");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getFLFollowUpItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLFollowUpNotificationClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getFLFollowUpNotificationClass_softClass;
  v13 = getFLFollowUpNotificationClass_softClass;
  if (!getFLFollowUpNotificationClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLFollowUpNotificationClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLFollowUpNotificationClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getFLFollowUpNotificationClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  Class = objc_getClass("FLFollowUpNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getFLFollowUpNotificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLHSA2LoginNotificationClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getFLHSA2LoginNotificationClass_softClass;
  v13 = getFLHSA2LoginNotificationClass_softClass;
  if (!getFLHSA2LoginNotificationClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLHSA2LoginNotificationClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLHSA2LoginNotificationClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getFLHSA2LoginNotificationClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  Class = objc_getClass("FLHSA2LoginNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getFLHSA2LoginNotificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLHSA2PasswordResetNotificationClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getFLHSA2PasswordResetNotificationClass_softClass;
  v13 = getFLHSA2PasswordResetNotificationClass_softClass;
  if (!getFLHSA2PasswordResetNotificationClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLHSA2PasswordResetNotificationClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLHSA2PasswordResetNotificationClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getFLHSA2PasswordResetNotificationClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  Class = objc_getClass("FLHSA2PasswordResetNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getFLHSA2PasswordResetNotificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getFLGroupIdentifierAccountSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLGroupIdentifierAccountSymbolLoc_ptr;
  v13 = getFLGroupIdentifierAccountSymbolLoc_ptr;
  if (!getFLGroupIdentifierAccountSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLGroupIdentifierAccountSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLGroupIdentifierAccountSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLGroupIdentifierAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLGroupIdentifierAccount");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLGroupIdentifierAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLGroupIdentifierAccount()
{
  FLGroupIdentifierAccountSymbolLoc = getFLGroupIdentifierAccountSymbolLoc();
  if (!FLGroupIdentifierAccountSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *FLGroupIdentifierAccountSymbolLoc;

  return v0;
}

uint64_t getFLGroupIdentifierNoGroupSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLGroupIdentifierNoGroupSymbolLoc_ptr;
  v13 = getFLGroupIdentifierNoGroupSymbolLoc_ptr;
  if (!getFLGroupIdentifierNoGroupSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLGroupIdentifierNoGroupSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLGroupIdentifierNoGroupSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLGroupIdentifierNoGroupSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLGroupIdentifierNoGroup");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLGroupIdentifierNoGroupSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLGroupIdentifierNoGroup()
{
  FLGroupIdentifierNoGroupSymbolLoc = getFLGroupIdentifierNoGroupSymbolLoc();
  if (!FLGroupIdentifierNoGroupSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *FLGroupIdentifierNoGroupSymbolLoc;

  return v0;
}

uint64_t getFLNotificationOptionForceSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLNotificationOptionForceSymbolLoc_ptr;
  v13 = getFLNotificationOptionForceSymbolLoc_ptr;
  if (!getFLNotificationOptionForceSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLNotificationOptionForceSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLNotificationOptionForceSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLNotificationOptionForceSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLNotificationOptionForce");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLNotificationOptionForceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLNotificationOptionForce()
{
  FLNotificationOptionForceSymbolLoc = getFLNotificationOptionForceSymbolLoc();
  if (!FLNotificationOptionForceSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *FLNotificationOptionForceSymbolLoc;

  return v0;
}

uint64_t getFLNotificationOptionSpringboardAlertSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLNotificationOptionSpringboardAlertSymbolLoc_ptr;
  v13 = getFLNotificationOptionSpringboardAlertSymbolLoc_ptr;
  if (!getFLNotificationOptionSpringboardAlertSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLNotificationOptionSpringboardAlertSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLNotificationOptionSpringboardAlertSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLNotificationOptionSpringboardAlertSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLNotificationOptionSpringboardAlert");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLNotificationOptionSpringboardAlertSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLNotificationOptionSpringboardAlert()
{
  FLNotificationOptionSpringboardAlertSymbolLoc = getFLNotificationOptionSpringboardAlertSymbolLoc();
  if (!FLNotificationOptionSpringboardAlertSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *FLNotificationOptionSpringboardAlertSymbolLoc;

  return v0;
}

uint64_t getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc_ptr;
  v13 = getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc_ptr;
  if (!getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLNotificationOptionSpringboardAlertActionOnly");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLNotificationOptionSpringboardAlertActionOnly()
{
  FLNotificationOptionSpringboardAlertActionOnlySymbolLoc = getFLNotificationOptionSpringboardAlertActionOnlySymbolLoc();
  if (!FLNotificationOptionSpringboardAlertActionOnlySymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *FLNotificationOptionSpringboardAlertActionOnlySymbolLoc;

  return v0;
}

uint64_t getFLHSA2ActionChangePasswordSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLHSA2ActionChangePasswordSymbolLoc_ptr;
  v13 = getFLHSA2ActionChangePasswordSymbolLoc_ptr;
  if (!getFLHSA2ActionChangePasswordSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLHSA2ActionChangePasswordSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLHSA2ActionChangePasswordSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLHSA2ActionChangePasswordSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLHSA2ActionChangePassword");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLHSA2ActionChangePasswordSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLHSA2ActionChangePassword()
{
  v2 = getFLHSA2ActionChangePasswordSymbolLoc();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t getFLNotificationOptionExtensionForNotificationSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLNotificationOptionExtensionForNotificationSymbolLoc_ptr;
  v13 = getFLNotificationOptionExtensionForNotificationSymbolLoc_ptr;
  if (!getFLNotificationOptionExtensionForNotificationSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLNotificationOptionExtensionForNotificationSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLNotificationOptionExtensionForNotificationSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLNotificationOptionExtensionForNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLNotificationOptionExtensionForNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLNotificationOptionExtensionForNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLNotificationOptionExtensionForNotification()
{
  FLNotificationOptionExtensionForNotificationSymbolLoc = getFLNotificationOptionExtensionForNotificationSymbolLoc();
  if (!FLNotificationOptionExtensionForNotificationSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *FLNotificationOptionExtensionForNotificationSymbolLoc;

  return v0;
}

uint64_t getFLNotificationOptionExtensionActionsSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLNotificationOptionExtensionActionsSymbolLoc_ptr;
  v13 = getFLNotificationOptionExtensionActionsSymbolLoc_ptr;
  if (!getFLNotificationOptionExtensionActionsSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLNotificationOptionExtensionActionsSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLNotificationOptionExtensionActionsSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLNotificationOptionExtensionActionsSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLNotificationOptionExtensionActions");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLNotificationOptionExtensionActionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLNotificationOptionExtensionActions()
{
  FLNotificationOptionExtensionActionsSymbolLoc = getFLNotificationOptionExtensionActionsSymbolLoc();
  if (!FLNotificationOptionExtensionActionsSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *FLNotificationOptionExtensionActionsSymbolLoc;

  return v0;
}

uint64_t getFLNotificationOptionBannerAlertSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getFLNotificationOptionBannerAlertSymbolLoc_ptr;
  v13 = getFLNotificationOptionBannerAlertSymbolLoc_ptr;
  if (!getFLNotificationOptionBannerAlertSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getFLNotificationOptionBannerAlertSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getFLNotificationOptionBannerAlertSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getFLNotificationOptionBannerAlertSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = CoreFollowUpLibrary();
  v2 = dlsym(v1, "FLNotificationOptionBannerAlert");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getFLNotificationOptionBannerAlertSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getFLNotificationOptionBannerAlert()
{
  FLNotificationOptionBannerAlertSymbolLoc = getFLNotificationOptionBannerAlertSymbolLoc();
  if (!FLNotificationOptionBannerAlertSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *FLNotificationOptionBannerAlertSymbolLoc;

  return v0;
}

uint64_t ProximityAppleIDSetupUILibraryCore(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = ProximityAppleIDSetupUILibraryCore_frameworkLibrary;
  v15 = ProximityAppleIDSetupUILibraryCore_frameworkLibrary;
  if (!ProximityAppleIDSetupUILibraryCore_frameworkLibrary)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __ProximityAppleIDSetupUILibraryCore_block_invoke;
    v7 = &unk_2784A5F48;
    v8 = &v11;
    v9 = v16;
    __ProximityAppleIDSetupUILibraryCore_block_invoke(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t __ProximityAppleIDSetupUILibraryCore_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_2784A5FC8, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  ProximityAppleIDSetupUILibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProximityAppleIDSetupUILibrary()
{
  v2 = 0;
  v1 = ProximityAppleIDSetupUILibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id getPASUIDependentViewPresenterClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getPASUIDependentViewPresenterClass_softClass;
  v13 = getPASUIDependentViewPresenterClass_softClass;
  if (!getPASUIDependentViewPresenterClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getPASUIDependentViewPresenterClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getPASUIDependentViewPresenterClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getPASUIDependentViewPresenterClass_block_invoke(uint64_t a1)
{
  ProximityAppleIDSetupUILibrary();
  Class = objc_getClass("PASUIDependentViewPresenter");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getPASUIDependentViewPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_222391654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id *location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, uint64_t a59)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v59 - 224));
  _Unwind_Resume(a1);
}

id _AKSafeCast(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_222392708(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id *location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  *(v53 - 256) = a1;
  objc_destroyWeak(location);
  objc_destroyWeak((v53 - 200));
  _Unwind_Resume(*(v53 - 256));
}

double AKSizeAlignedInRectWithScale(uint64_t a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  rect.origin.x = a5;
  rect.origin.y = a6;
  rect.size.width = a7;
  rect.size.height = a8;
  v10 = 0.0;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v10 = AKFloatRoundToPixelWithScale(a5 + 0.5 * (a7 - a3), a9);
        break;
      case 2:
        v16.origin.x = a5;
        v16.origin.y = a6;
        v16.size.width = a7;
        v16.size.height = a8;
        v10 = CGRectGetMaxX(v16) - a3;
        break;
      case 3:
        v10 = a5;
        break;
    }
  }

  else
  {
    v10 = a5;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      AKFloatRoundToPixelWithScale(rect.origin.y + 0.5 * (rect.size.height - a4), a9);
    }

    else if (a2 == 2)
    {
      CGRectGetMaxY(rect);
    }
  }

  return v10;
}

double AKFloatRoundToPixelWithScale(double a1, double a2)
{
  if (a2 == 0.0)
  {
    v4 = _ASScreenScale();
  }

  else
  {
    v4 = a2;
  }

  if (v4 == 0.0)
  {
    return CGRound(a1);
  }

  else
  {
    return CGRound(a1 * v4) / v4;
  }
}

double AKSizeScaleAspectFit(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = a3 / a1;
  }

  if (a2 == 0.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = a4 / a2;
  }

  v7 = a1;
  if (fmin(v6, v5) != 1.0)
  {
    if (v6 >= v5)
    {
      return a4 * (a1 / a2);
    }

    else
    {
      return a3;
    }
  }

  return v7;
}

double AKRectRoundToPixelWithScale(double a1, double a2, double a3, double a4, double a5)
{
  v9 = AKPointRoundToPixelWithScale(a1, a2, a5);
  AKSizeRoundToPixelWithScale(a3, a4, a5);
  return v9;
}

double AKPointRoundToPixelWithScale(double a1, double a2, double a3)
{
  v6 = AKFloatRoundToPixelWithScale(a1, a3);
  AKFloatRoundToPixelWithScale(a2, a3);
  return v6;
}

double AKSizeRoundToPixelWithScale(double a1, double a2, double a3)
{
  v6 = AKFloatRoundToPixelWithScale(a1, a3);
  AKFloatRoundToPixelWithScale(a2, a3);
  return v6;
}

double _ASScreenScale()
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v3 = v0;
  MEMORY[0x277D82BD8](v2);
  return v3;
}

void _AKAuthorizationContainerViewControllerInitialize(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  [location setModalPresentationStyle:4];
  [location setTransitioningDelegate:location];
  v1 = objc_alloc(MEMORY[0x277D75B80]);
  v2 = [v1 initWithTarget:location action:sel__handleTapGesture_];
  v3 = *(location + 128);
  *(location + 128) = v2;
  MEMORY[0x277D82BD8](v3);
  [*(location + 128) setCancelsTouchesInView:0];
  objc_storeStrong(&location, 0);
}

BOOL __CGSizeEqualToSize_0(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

uint64_t BridgePreferencesLibraryCore(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = BridgePreferencesLibraryCore_frameworkLibrary;
  v15 = BridgePreferencesLibraryCore_frameworkLibrary;
  if (!BridgePreferencesLibraryCore_frameworkLibrary)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __BridgePreferencesLibraryCore_block_invoke;
    v7 = &unk_2784A5F48;
    v8 = &v11;
    v9 = v16;
    __BridgePreferencesLibraryCore_block_invoke(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t __BridgePreferencesLibraryCore_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_2784A6330, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  BridgePreferencesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BridgePreferencesLibrary()
{
  v2 = 0;
  v1 = BridgePreferencesLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id getBPSRemoteUISetupStyleClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getBPSRemoteUISetupStyleClass_softClass;
  v13 = getBPSRemoteUISetupStyleClass_softClass;
  if (!getBPSRemoteUISetupStyleClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getBPSRemoteUISetupStyleClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getBPSRemoteUISetupStyleClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getBPSRemoteUISetupStyleClass_block_invoke(uint64_t a1)
{
  BridgePreferencesLibrary();
  Class = objc_getClass("BPSRemoteUISetupStyle");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getBPSRemoteUISetupStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getBPSApplyStyleToNavBarSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getBPSApplyStyleToNavBarSymbolLoc_ptr;
  v13 = getBPSApplyStyleToNavBarSymbolLoc_ptr;
  if (!getBPSApplyStyleToNavBarSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getBPSApplyStyleToNavBarSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getBPSApplyStyleToNavBarSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getBPSApplyStyleToNavBarSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = BridgePreferencesLibrary();
  v2 = dlsym(v1, "BPSApplyStyleToNavBar");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getBPSApplyStyleToNavBarSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SBPSApplyStyleToNavBar(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  BPSApplyStyleToNavBarSymbolLoc = getBPSApplyStyleToNavBarSymbolLoc();
  if (!BPSApplyStyleToNavBarSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  BPSApplyStyleToNavBarSymbolLoc(location);
  objc_storeStrong(&location, 0);
}

uint64_t SafariFoundationLibraryCore(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = SafariFoundationLibraryCore_frameworkLibrary;
  v15 = SafariFoundationLibraryCore_frameworkLibrary;
  if (!SafariFoundationLibraryCore_frameworkLibrary)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __SafariFoundationLibraryCore_block_invoke;
    v7 = &unk_2784A5F48;
    v8 = &v11;
    v9 = v16;
    __SafariFoundationLibraryCore_block_invoke(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t __SafariFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_2784A65A0, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  SafariFoundationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SafariFoundationLibrary()
{
  v2 = 0;
  v1 = SafariFoundationLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id getSFStrongPasswordGeneratorClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getSFStrongPasswordGeneratorClass_softClass;
  v13 = getSFStrongPasswordGeneratorClass_softClass;
  if (!getSFStrongPasswordGeneratorClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getSFStrongPasswordGeneratorClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getSFStrongPasswordGeneratorClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getSFStrongPasswordGeneratorClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  Class = objc_getClass("SFStrongPasswordGenerator");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getSFStrongPasswordGeneratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t AVKitLibraryCore(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = AVKitLibraryCore_frameworkLibrary;
  v15 = AVKitLibraryCore_frameworkLibrary;
  if (!AVKitLibraryCore_frameworkLibrary)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __AVKitLibraryCore_block_invoke;
    v7 = &unk_2784A5F48;
    v8 = &v11;
    v9 = v16;
    __AVKitLibraryCore_block_invoke(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t __AVKitLibraryCore_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_2784A66C0, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  AVKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AVKitLibrary()
{
  v2 = 0;
  v1 = AVKitLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id getAVPlayerViewControllerClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getAVPlayerViewControllerClass_softClass;
  v13 = getAVPlayerViewControllerClass_softClass;
  if (!getAVPlayerViewControllerClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getAVPlayerViewControllerClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getAVPlayerViewControllerClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getAVPlayerViewControllerClass_block_invoke(uint64_t a1)
{
  AVKitLibrary();
  Class = objc_getClass("AVPlayerViewController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getAVPlayerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __os_log_helper_16_2_2_8_112_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 112;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_2223B1A2C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 40) = a1;
  *(v10 - 44) = a2;
  objc_destroyWeak((v10 - 32));
  _Unwind_Resume(*(v10 - 40));
}

uint64_t __os_log_helper_16_2_2_8_32_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_1_4_0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

void sub_2223C4288(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, id a11, id a12)
{
  *(v12 - 64) = a1;
  *(v12 - 68) = a2;
  if (*(v12 - 68) == 1)
  {
    v13 = objc_begin_catch(*(v12 - 64));
    v14 = MEMORY[0x277D82BE0](v13);
    v15 = *(v12 - 128);
    *(v12 - 96) = v14;
    a12 = [*(v12 - 96) description];
    a11 = a12;
    a9 = a11;
    NSLog(&cfstr_UnableToCopyAk.isa);
    MEMORY[0x277D82BD8](a11);
    obj = 0;
    objc_storeStrong((v12 - 48), 0);
    objc_storeStrong((v12 - 96), obj);
    objc_end_catch();
    JUMPOUT(0x2223C4248);
  }

  _Unwind_Resume(*(v12 - 64));
}

uint64_t AuthenticationServicesLibraryCore(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = AuthenticationServicesLibraryCore_frameworkLibrary;
  v15 = AuthenticationServicesLibraryCore_frameworkLibrary;
  if (!AuthenticationServicesLibraryCore_frameworkLibrary)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __AuthenticationServicesLibraryCore_block_invoke;
    v7 = &unk_2784A5F48;
    v8 = &v11;
    v9 = v16;
    __AuthenticationServicesLibraryCore_block_invoke(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t __AuthenticationServicesLibraryCore_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_2784A6B08, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  AuthenticationServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AuthenticationServicesLibrary()
{
  v2 = 0;
  v1 = AuthenticationServicesLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id getASWebAuthenticationSessionClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getASWebAuthenticationSessionClass_softClass;
  v13 = getASWebAuthenticationSessionClass_softClass;
  if (!getASWebAuthenticationSessionClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getASWebAuthenticationSessionClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getASWebAuthenticationSessionClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getASWebAuthenticationSessionClass_block_invoke(uint64_t a1)
{
  AuthenticationServicesLibrary();
  Class = objc_getClass("ASWebAuthenticationSession");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getASWebAuthenticationSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getASWebAuthenticationSessionErrorDomainSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getASWebAuthenticationSessionErrorDomainSymbolLoc_ptr;
  v13 = getASWebAuthenticationSessionErrorDomainSymbolLoc_ptr;
  if (!getASWebAuthenticationSessionErrorDomainSymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getASWebAuthenticationSessionErrorDomainSymbolLoc_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getASWebAuthenticationSessionErrorDomainSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getASWebAuthenticationSessionErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = AuthenticationServicesLibrary();
  v2 = dlsym(v1, "ASWebAuthenticationSessionErrorDomain");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getASWebAuthenticationSessionErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getASWebAuthenticationSessionErrorDomain()
{
  ASWebAuthenticationSessionErrorDomainSymbolLoc = getASWebAuthenticationSessionErrorDomainSymbolLoc();
  if (!ASWebAuthenticationSessionErrorDomainSymbolLoc)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *ASWebAuthenticationSessionErrorDomainSymbolLoc;

  return v0;
}

id _AKSafeCast_0(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

id _AKSafeCast_1(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_2223D6E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, _Unwind_Exception *exception_object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak((v21 - 80));
  _Unwind_Resume(a1);
}

void sub_2223E3648(uint64_t a1, int a2)
{
  *(v2 - 96) = a1;
  *(v2 - 100) = a2;
  _Block_object_dispose((v2 - 88), 8);
  _Block_object_dispose((v2 - 56), 8);
  _Unwind_Resume(*(v2 - 96));
}

void sub_2223E4BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, _Unwind_Exception *exception_object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v23 - 40));
  objc_destroyWeak((v23 - 24));
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id _AKSafeCast_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id _AKSafeCast_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

uint64_t VisualPairingLibraryCore(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = VisualPairingLibraryCore_frameworkLibrary;
  v15 = VisualPairingLibraryCore_frameworkLibrary;
  if (!VisualPairingLibraryCore_frameworkLibrary)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __VisualPairingLibraryCore_block_invoke;
    v7 = &unk_2784A5F48;
    v8 = &v11;
    v9 = v16;
    __VisualPairingLibraryCore_block_invoke(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t __VisualPairingLibraryCore_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_2784A7248, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  VisualPairingLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VisualPairingLibrary()
{
  v2 = 0;
  v1 = VisualPairingLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id getVPPresenterViewClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getVPPresenterViewClass_softClass;
  v13 = getVPPresenterViewClass_softClass;
  if (!getVPPresenterViewClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getVPPresenterViewClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getVPPresenterViewClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getVPPresenterViewClass_block_invoke(uint64_t a1)
{
  VisualPairingLibrary();
  Class = objc_getClass("VPPresenterView");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getVPPresenterViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleAccountUILibraryCore(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = AppleAccountUILibraryCore_frameworkLibrary;
  v15 = AppleAccountUILibraryCore_frameworkLibrary;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __AppleAccountUILibraryCore_block_invoke;
    v7 = &unk_2784A5F48;
    v8 = &v11;
    v9 = v16;
    __AppleAccountUILibraryCore_block_invoke(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t __AppleAccountUILibraryCore_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_2784A72D0, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  AppleAccountUILibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AppleAccountUILibrary()
{
  v2 = 0;
  v1 = AppleAccountUILibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id getAAUICDPStingrayRemoteUIControllerClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getAAUICDPStingrayRemoteUIControllerClass_softClass;
  v13 = getAAUICDPStingrayRemoteUIControllerClass_softClass;
  if (!getAAUICDPStingrayRemoteUIControllerClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getAAUICDPStingrayRemoteUIControllerClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __getAAUICDPStingrayRemoteUIControllerClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getAAUICDPStingrayRemoteUIControllerClass_block_invoke(uint64_t a1)
{
  AppleAccountUILibrary();
  Class = objc_getClass("AAUICDPStingrayRemoteUIController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getAAUICDPStingrayRemoteUIControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _AKSafeCast_4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

void sub_2223F9F20(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *a11, uint64_t a12, id *a13, uint64_t a14, id *location)
{
  *(v15 - 128) = a1;
  *(v15 - 132) = a2;
  objc_destroyWeak((v15 - 88));
  objc_destroyWeak((v15 - 64));
  _Unwind_Resume(*(v15 - 128));
}

void sub_222401524(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *a13, uint64_t a14, uint64_t a15, id *a16, uint64_t a17, uint64_t a18, id *a19, uint64_t a20, uint64_t a21, id *a22, uint64_t a23, uint64_t a24, id *location)
{
  *(v25 - 64) = a1;
  *(v25 - 68) = a2;
  objc_destroyWeak((v25 - 48));
  _Unwind_Resume(*(v25 - 64));
}

void sub_222402334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, _Unwind_Exception *exception_object, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 144));
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_2_2_8_64_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void _AKBasicLoginAlertControllerInitialize(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  [location _beginObservingDidEnterCodeNotifications];
  objc_storeStrong(&location, 0);
}

void sub_22240FD20(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  *(v11 - 56) = a1;
  *(v11 - 60) = a2;
  objc_destroyWeak((v11 - 40));
  _Unwind_Resume(*(v11 - 56));
}

void sub_222411224(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 224) = a1;
  *(v10 - 228) = a2;
  objc_destroyWeak((v10 - 168));
  _Unwind_Resume(*(v10 - 224));
}

void sub_222411C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *location, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v39 - 192));
  _Unwind_Resume(a1);
}

void sub_222412430(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id *location)
{
  *(v27 - 112) = a1;
  *(v27 - 116) = a2;
  objc_destroyWeak((v27 - 96));
  _Unwind_Resume(*(v27 - 112));
}

void sub_222412CCC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id *location)
{
  *(v38 - 88) = a1;
  *(v38 - 92) = a2;
  objc_destroyWeak((v38 - 72));
  _Unwind_Resume(*(v38 - 88));
}

void sub_222413414(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id *location)
{
  *(v17 - 96) = a1;
  *(v17 - 100) = a2;
  objc_destroyWeak((v17 - 80));
  _Unwind_Resume(*(v17 - 96));
}

id _AKSafeCast_5(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

void sub_222414EF4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 32) = a1;
  *(v10 - 36) = a2;
  objc_destroyWeak((v10 - 24));
  _Unwind_Resume(*(v10 - 32));
}

uint64_t __os_log_helper_16_3_1_8_65(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 1) = 1;
  *(result + 2) = 65;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_3_2_8_65_8_65(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 65;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 65;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id _AKUIMainBundle()
{
  predicate = &_AKUIMainBundle_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_7);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = _AKUIMainBundle_mainBundle;

  return v0;
}

CGImageRef AKCreateAppleIDButtonImage(uint64_t a1, uint64_t a2, id obj, double a4, double a5, double a6)
{
  v12 = a4;
  v13 = a5;
  v11 = a6;
  v10 = a1;
  *v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = AKCreateAppleIDButtonImageWithCornerRadius(v10, *v9, location, v12, v13, v11, 4.0);
  objc_storeStrong(&location, 0);
  return v7;
}

CGImageRef AKCreateAppleIDButtonImageWithCornerRadius(uint64_t a1, uint64_t a2, id obj, double a4, double a5, double a6, double a7)
{
  v25 = a4;
  v26 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a1;
  v21 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v19 = _ColorSpaceStandardRGB();
  CGSizeMake_7();
  v17 = AKSizeRoundToPixelWithScale(v7, v8, 1.0);
  v18 = v9;
  c = CGBitmapContextCreate(0, v17, v9, 8uLL, 0, v19, 1u);
  CGContextTranslateCTM(c, 0.0, v18);
  CGContextScaleCTM(c, 1.0, -1.0);
  CGRectMake_7();
  AKDrawAppleIDButtonWithCornerRadius(c, v22, v21, location, v10, v11, v12, v13, v24, v23);
  Image = CGBitmapContextCreateImage(c);
  CGContextRelease(c);
  objc_storeStrong(&location, 0);
  return Image;
}

void AKDrawAppleIDButtonWithCornerRadius(CGContext *a1, uint64_t a2, uint64_t a3, id obj, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v125 = a5;
  v126 = a6;
  v127 = a7;
  v128 = a8;
  v124 = a1;
  v123 = a9;
  v122 = a10;
  v121 = a2;
  v120 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  _DrawBorder(v124, v120, v125, v126, v127, v128, v123, v122);
  v118 = 0;
  v117 = 0;
  switch(v121)
  {
    case 0:
      goto LABEL_4;
    case 1:
      v81 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
      v13 = [v81 localizedStringForKey:@"SIGN_UP_WITH_APPLE" value:&stru_28358EF68 table:@"Localizable"];
      v14 = v117;
      v117 = v13;
      MEMORY[0x277D82BD8](v14);
      v12 = MEMORY[0x277D82BD8](v81).n128_u64[0];
      break;
    case 2:
      v80 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
      v15 = [v80 localizedStringForKey:@"CONTINUE_WITH_APPLE" value:&stru_28358EF68 table:@"Localizable"];
      v16 = v117;
      v117 = v15;
      MEMORY[0x277D82BD8](v16);
      v12 = MEMORY[0x277D82BD8](v80).n128_u64[0];
      break;
    default:
LABEL_4:
      v82 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
      v10 = [v82 localizedStringForKey:@"SIGN_IN_WITH_APPLE" value:&stru_28358EF68 table:@"Localizable"];
      v11 = v117;
      v117 = v10;
      MEMORY[0x277D82BD8](v11);
      v12 = MEMORY[0x277D82BD8](v82).n128_u64[0];
      break;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", *&v12, @"%@", v117];
  v18 = v117;
  v117 = v17;
  *&v19 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v76 = MEMORY[0x277CBEAF8];
  v79 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKitUI", v19}];
  v78 = [v79 preferredLocalizations];
  v77 = [v78 firstObject];
  v116 = [v76 localeWithLocaleIdentifier:?];
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  v20 = [v116 languageCode];
  v21 = v118;
  v118 = v20;
  v114 = [v117 rangeOfString:{@"%@", MEMORY[0x277D82BD8](v21).n128_f64[0]}];
  v115 = v22;
  v113 = v114 == 0;
  v112 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v118] == 2;
  if (v112)
  {
    v113 = v114 == [v117 length] - 2;
  }

  v111 = [v117 componentsSeparatedByString:@"%@"];
  v110 = 0;
  v109 = 0;
  if ([v111 count] == 2)
  {
    v23 = [v111 objectAtIndex:v112];
    v24 = v110;
    v110 = v23;
    v25 = [v111 objectAtIndex:{!v112, MEMORY[0x277D82BD8](v24).n128_f64[0]}];
    v26 = v109;
    v109 = v25;
    *&v27 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  }

  else if (v113)
  {
    v28 = [v111 firstObject];
    v29 = v109;
    v109 = v28;
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v110, &stru_28358EF68);
  }

  else
  {
    v30 = [v111 firstObject];
    v31 = v110;
    v110 = v30;
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v109, &stru_28358EF68);
  }

  v108 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  if ([v109 length])
  {
    v32 = [v109 stringByTrimmingCharactersInSet:v108];
    v33 = v109;
    v109 = v32;
    *&v34 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"\u200E %@", v34, v109];
    v36 = v109;
    v109 = v35;
    MEMORY[0x277D82BD8](v36);
  }

  if ([v110 length])
  {
    v37 = [v110 stringByTrimmingCharactersInSet:v108];
    v38 = v110;
    v110 = v37;
    *&v39 = MEMORY[0x277D82BD8](v38).n128_u64[0];
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\u200E ", v39, v110];
    v41 = v110;
    v110 = v40;
    MEMORY[0x277D82BD8](v41);
  }

  v107 = v127 - v127 * 0.16;
  CGSizeMake_7();
  v104 = v42;
  v105 = v43;
  CGSizeMake_7();
  v102 = v44;
  v103 = v45;
  v106[0] = AKSizeScaleAspectFit(v104, v105, v44, v45);
  *&v101 = AKSizeRoundToPixelWithScale(v106[0], v46, 1.0);
  *(&v101 + 1) = v47;
  *v106 = v101;
  v100 = 0.0;
  v99 = [v110 stringByAppendingString:v109];
  if ([v99 length])
  {
    CGRectMake_7();
    v98 = AKRectRoundToPixelWithScale(v48, v49, v50, v51, 1.0);
    v100 = _MaximumFontSizeForStringInRect(v99, v98, v52, v53, v54, v123);
  }

  if (v100 == 0.0)
  {
    CGSizeMake_7();
    v97 = AKSizeAlignedInRectWithScale(1, 1, v55, v56, v125, v126, v127, v128, 1.0);
    _DrawLogoPDFIntoContext(v120, v124, v97, v57, v58, v59);
  }

  else
  {
    v96 = *MEMORY[0x277CBF3A8];
    v95 = *MEMORY[0x277CBF3A8];
    line = 0;
    v93 = 0;
    if ([v109 length])
    {
      attrString = _CreateAttributedStringWithFontSize(v109, v120, v100);
      line = CTLineCreateWithAttributedString(attrString);
      BoundsWithOptions = CTLineGetBoundsWithOptions(line, 0);
      *(&v95 + 1) = *&BoundsWithOptions.size.height;
      CFRelease(attrString);
    }

    if ([v110 length])
    {
      AttributedStringWithFontSize = _CreateAttributedStringWithFontSize(v110, v120, v100);
      v93 = CTLineCreateWithAttributedString(AttributedStringWithFontSize);
      v130 = CTLineGetBoundsWithOptions(v93, 0);
      *(&v96 + 1) = *&v130.size.height;
      CFRelease(AttributedStringWithFontSize);
    }

    if (*(&v95 + 1) >= *(&v96 + 1))
    {
      v75 = *(&v95 + 1);
    }

    else
    {
      v75 = *(&v96 + 1);
    }

    if (v106[1] * 1.38 > v75)
    {
      CGSizeMake_7();
      v90 = AKSizeScaleAspectFit(v106[0], v106[1], v60, v61);
      *&v89 = AKSizeRoundToPixelWithScale(v90, v62, 1.0);
      *(&v89 + 1) = v63;
      *v106 = v89;
    }

    CGSizeMake_7();
    v87 = AKSizeAlignedInRectWithScale(1, 1, v64, v65, v125, v126, v127, v128, 1.0);
    v88 = v66 - AKFloatRoundToPixelWithScale(v106[1] * 0.085 / 2.0, 1.0);
    CGRectMake_7();
    v83 = v67;
    v84 = v68;
    v85 = v69;
    v86 = v70;
    if (v93)
    {
      c = v124;
      v71 = AKFloatRoundToPixelWithScale(v88 + v106[1] * 0.135, 1.0);
      CGContextSetTextPosition(c, v87, v71);
      CTLineDraw(v93, v124);
      CFRelease(v93);
    }

    if (line)
    {
      v73 = v124;
      v72 = AKFloatRoundToPixelWithScale(v88 + v106[1] * 0.135, 1.0);
      CGContextSetTextPosition(v73, v83 + v85, v72);
      CTLineDraw(line, v124);
      CFRelease(line);
    }

    _DrawLogoPDFIntoContext(v120, v124, v83, v84, v85, v86);
  }

  objc_storeStrong(&v99, 0);
  objc_storeStrong(&v108, 0);
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&v111, 0);
  objc_storeStrong(&v116, 0);
  objc_storeStrong(&v117, 0);
  objc_storeStrong(&v118, 0);
  objc_storeStrong(&location, 0);
}

void AKDrawAppleIDButton(CGContext *a1, uint64_t a2, uint64_t a3, id obj, double a5, double a6, double a7, double a8, double a9)
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v13 = a1;
  v12 = a9;
  *v11 = a2;
  *v10 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  AKDrawAppleIDButtonWithCornerRadius(v13, *v11, *v10, location, v14, v15, v16, v17, v12, 4.0);
  objc_storeStrong(&location, 0);
}

void _DrawBorder(CGContext *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v10 = AKFloatRoundToPixelWithScale(0.5 * a7, 1.0);
  v19.origin.x = AKRectRoundToPixelWithScale(a3, a4, a5, a6, 1.0);
  v20 = CGRectInset(v19, v10 * 0.5, v10 * 0.5);
  v8 = [AKRoundedPath pathWithRoundedRect:v20.origin.x cornerRadius:v20.origin.y, v20.size.width, v20.size.height, a8 * a7];
  v9 = [(AKRoundedPath *)v8 CGPath];
  MEMORY[0x277D82BD8](v8);
  CGContextBeginPath(a1);
  CGContextAddPath(a1, v9);
  CGContextClosePath(a1);
  if (a2)
  {
    if (a2 == 1)
    {
      CGContextSetRGBFillColor(a1, 1.0, 1.0, 1.0, 1.0);
      CGContextSetRGBStrokeColor(a1, 0.0, 0.0, 0.0, 1.0);
    }

    else if (a2 == 2)
    {
      CGContextSetRGBFillColor(a1, 0.0, 0.0, 0.0, 1.0);
      CGContextSetRGBStrokeColor(a1, 0.0, 0.0, 0.0, 1.0);
    }
  }

  else
  {
    CGContextSetRGBFillColor(a1, 1.0, 1.0, 1.0, 1.0);
    CGContextSetRGBStrokeColor(a1, 1.0, 1.0, 1.0, 1.0);
  }

  CGContextSetLineWidth(a1, v10);
  CGContextDrawPath(a1, kCGPathFillStroke);
}

double _MaximumFontSizeForStringInRect(const __CFString *a1, double a2, double a3, CGFloat a4, CGFloat a5, double a6)
{
  v10 = 10.0 * a6;
  v9 = 0;
  do
  {
    attrString = _CreateAttributedStringWithFontSize(a1, 2, v10);
    line = CTLineCreateWithAttributedString(attrString);
    BoundsWithOptions = CTLineGetBoundsWithOptions(line, 0);
    if (BoundsWithOptions.size.width <= a4 && BoundsWithOptions.size.height <= a5)
    {
      v10 = v10 + 1.0;
    }

    else
    {
      v9 = 1;
    }

    CFRelease(line);
    CFRelease(attrString);
  }

  while ((v9 & 1) == 0);
  if (v10 == 10.0 * a6)
  {
    v10 = 0.0;
  }

  return floor(v10);
}

void _DrawLogoPDFIntoContext(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v20 = a1;
  v19 = a2;
  CGContextSaveGState(a2);
  location = 0;
  if (v20 == 2 || v20 == 100)
  {
    objc_storeStrong(&location, @"AKAppleLogoWhite");
  }

  else
  {
    objc_storeStrong(&location, @"AKAppleLogoBlack");
  }

  v17 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v16 = [v17 URLForResource:location withExtension:@"pdf"];
  v15 = CGPDFDocumentCreateWithURL(v16);
  v14 = 0;
  if (v15 && CGPDFDocumentGetNumberOfPages(v15))
  {
    Page = CGPDFDocumentGetPage(v15, 1uLL);
    v14 = CGPDFPageRetain(Page);
  }

  if (!v14)
  {
    __assert_rtn("_DrawLogoPDFIntoContext", "AKAuthorizationAppleIDButtonDrawing.m", 365, "page");
  }

  BoxRect = CGPDFPageGetBoxRect(v14, kCGPDFCropBox);
  v13 = BoxRect;
  v12 = v23 / BoxRect.size.width;
  v11 = v24 / BoxRect.size.height;
  if (v23 / BoxRect.size.width >= v24 / BoxRect.size.height)
  {
    v8 = v11;
  }

  else
  {
    v8 = v12;
  }

  sy = v8;
  CGContextTranslateCTM(v19, v21, v22);
  c = v19;
  CGAffineTransformMakeScale(&v9, sy, sy);
  CGContextConcatCTM(c, &v9);
  CGContextDrawPDFPage(v19, v14);
  CGPDFDocumentRelease(v15);
  CGPDFPageRelease(v14);
  CGContextRestoreGState(v19);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

CFAttributedStringRef _CreateAttributedStringWithFontSize(const __CFString *a1, uint64_t a2, double a3)
{
  v27[2] = *MEMORY[0x277D85DE8];
  str = a1;
  v15 = a3;
  v14 = a2;
  v26[0] = *MEMORY[0x277CC4950];
  v24[0] = *MEMORY[0x277CC4980];
  v25[0] = *MEMORY[0x277CC4968];
  v24[1] = *MEMORY[0x277CC49B8];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CC49A0]];
  v25[1] = v6;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:?];
  v27[0] = v5;
  v26[1] = *MEMORY[0x277CC4938];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v27[1] = v4;
  attributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  descriptor = CTFontDescriptorCreateWithAttributes(attributes);
  cf = CTFontCreateWithFontDescriptor(descriptor, 0.0, 0);
  space = _ColorSpaceStandardRGB();
  if (v14 == 2 || v14 == 100)
  {
    *components = xmmword_222448380;
    v23 = xmmword_222448390;
    color = CGColorCreate(space, components);
  }

  else
  {
    *v20 = xmmword_2224483A0;
    v21 = xmmword_2224483B0;
    color = CGColorCreate(space, v20);
  }

  keys = 0;
  v19 = 0;
  keys = *MEMORY[0x277CC4838];
  v19 = *MEMORY[0x277CC49C0];
  values[0] = cf;
  values[1] = color;
  v8 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = CFAttributedStringCreate(0, str, v8);
  CFRelease(descriptor);
  CFRelease(v8);
  CFRelease(cf);
  CGColorRelease(color);
  objc_storeStrong(&attributes, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

void _InitializeRGBColorSpace()
{
  predicate = &_InitializeRGBColorSpace_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_8);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
}

void sub_22242DA48(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id *location)
{
  *(v16 - 192) = a1;
  *(v16 - 196) = a2;
  objc_destroyWeak((v16 - 184));
  _Unwind_Resume(*(v16 - 192));
}

void sub_22242EB44(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, id *location)
{
  *(v13 - 240) = a1;
  *(v13 - 244) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v13 - 192));
  _Unwind_Resume(*(v13 - 240));
}

void __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

id _AKSafeCast_6(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id get_ASAccountSharingGroupMemberDataManagerClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = get_ASAccountSharingGroupMemberDataManagerClass_softClass;
  v13 = get_ASAccountSharingGroupMemberDataManagerClass_softClass;
  if (!get_ASAccountSharingGroupMemberDataManagerClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __get_ASAccountSharingGroupMemberDataManagerClass_block_invoke;
    v6 = &unk_2784A5D60;
    v7 = &v9;
    __get_ASAccountSharingGroupMemberDataManagerClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

void sub_22243E054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, _Unwind_Exception *exception_object)
{
  _Block_object_dispose((v24 - 128), 8);
  os_activity_scope_leave((v24 - 80));
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_2_8_32_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_22243E61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, _Unwind_Exception *exception_object)
{
  _Block_object_dispose((v24 - 128), 8);
  os_activity_scope_leave((v24 - 80));
  _Unwind_Resume(a1);
}

void sub_22243EB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, _Unwind_Exception *exception_object)
{
  _Block_object_dispose((v24 - 128), 8);
  os_activity_scope_leave((v24 - 80));
  _Unwind_Resume(a1);
}

void sub_22243F048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, _Unwind_Exception *exception_object)
{
  _Block_object_dispose((v25 - 136), 8);
  os_activity_scope_leave((v25 - 88));
  _Unwind_Resume(a1);
}

id sub_22243F3D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModalSignInViewControllerDelegateForPreviews();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22243F444(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x2821FEB80](a2);
  }

  return result;
}

uint64_t sub_22243F454(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x2821FEB70](a2);
  }

  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}