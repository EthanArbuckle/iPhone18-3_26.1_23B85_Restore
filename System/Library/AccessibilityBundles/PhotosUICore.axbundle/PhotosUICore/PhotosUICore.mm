uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C119B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C11BA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C11C704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C11C954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id accessibilityPULocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityPULocalizedString_axBundle;
  if (accessibilityPULocalizedString_axBundle)
  {
    goto LABEL_4;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = AXAccessibilityBundlesDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"PhotosUIFramework.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityPULocalizedString_axBundle;
  accessibilityPULocalizedString_axBundle = v6;

  v2 = accessibilityPULocalizedString_axBundle;
  if (accessibilityPULocalizedString_axBundle || (_AXAssert(), (v2 = accessibilityPULocalizedString_axBundle) != 0))
  {
LABEL_4:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A2280A60 table:@"PhotosUIAccessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id accessibilityPhotoLibraryServicesLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityPhotoLibraryServicesLocalizedString_axBundle;
  if (accessibilityPhotoLibraryServicesLocalizedString_axBundle)
  {
    goto LABEL_4;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = AXAccessibilityBundlesDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"PhotoLibraryServices.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityPhotoLibraryServicesLocalizedString_axBundle;
  accessibilityPhotoLibraryServicesLocalizedString_axBundle = v6;

  v2 = accessibilityPhotoLibraryServicesLocalizedString_axBundle;
  if (accessibilityPhotoLibraryServicesLocalizedString_axBundle || (_AXAssert(), (v2 = accessibilityPhotoLibraryServicesLocalizedString_axBundle) != 0))
  {
LABEL_4:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A2280A60 table:@"PhotoLibraryServicesStrings"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id accessibilityPhotosUICoreLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityPhotosUICoreLocalizedString_axBundle;
  if (accessibilityPhotosUICoreLocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = AXAccessibilityBundlesDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"PhotosUICore.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityPhotosUICoreLocalizedString_axBundle;
  accessibilityPhotosUICoreLocalizedString_axBundle = v6;

  v2 = accessibilityPhotosUICoreLocalizedString_axBundle;
  if (accessibilityPhotosUICoreLocalizedString_axBundle)
  {
LABEL_3:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A2280A60 table:@"PhotosUICoreStrings"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_29C1214CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C12169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C121944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C121D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_29C122078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C1226E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_29C122840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C125230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C127174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C127748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C127FA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 136));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_29C12816C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak((v7 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C128DE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 136));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_29C128FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak((v7 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C129AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_29C129C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak((v7 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C12B6AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_29C12B82C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_29C12CDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C12E0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C12E328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C13027C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C1305B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}