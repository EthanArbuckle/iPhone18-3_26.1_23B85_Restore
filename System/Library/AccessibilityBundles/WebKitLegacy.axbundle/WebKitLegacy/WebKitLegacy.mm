void sendNotificationAfterHandlingWebKeyEventIfNeeded(void *a1)
{
  v5 = a1;
  if (_AXSAutomationEnabled())
  {
    v1 = [v5 characters];
    v2 = [v5 charactersIgnoringModifiers];
    v3 = [v5 modifierFlags];
    v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v3];
    AXUIAutomationHandleKeyComplete();
  }
}

void sub_29C7AF99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C7AFDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t axIsSafari()
{
  if ((axIsSafari_DidCheck & 1) == 0)
  {
    v0 = [*MEMORY[0x29EDC8008] _accessibilityBundleIdentifier];
    axIsSafari_IsSafari = [v0 isEqualToString:@"com.apple.mobilesafari"];

    axIsSafari_DidCheck = 1;
  }

  return axIsSafari_IsSafari;
}

void sub_29C7B0038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getWebThreadLockSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!WebKitLegacyLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __WebKitLegacyLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F3216C8;
    v6 = 0;
    WebKitLegacyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = WebKitLegacyLibraryCore_frameworkLibrary;
  if (!WebKitLegacyLibraryCore_frameworkLibrary)
  {
    __getWebThreadLockSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "WebThreadLock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWebThreadLockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WebKitLegacyLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WebKitLegacyLibraryCore_frameworkLibrary = result;
  return result;
}

void insertChar(__int16 a1, _WORD **a2, void **a3, CGRect **a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = *a2;
  *v9 = a1;
  *a2 = v9 + 1;
  v10 = *a3;
  *v10 = a7;
  *a3 = v10 + 1;
  x = (*a4)[-1].origin.x;
  y = (*a4)[-1].origin.y;
  width = (*a4)[-1].size.width;
  height = (*a4)[-1].size.height;
  v16 = x - width;
  v17 = y - height;
  v18 = width * 0.5;
  if (a6 == 270)
  {
    v19 = width * 0.5;
  }

  else
  {
    v19 = (*a4)[-1].size.height;
  }

  if (a6 != 270)
  {
    v17 = (*a4)[-1].origin.y;
  }

  if (a6 == 180)
  {
    v19 = (*a4)[-1].size.height;
    v20 = height * 0.5;
  }

  else
  {
    v20 = (*a4)[-1].size.width;
  }

  if (a6 == 180)
  {
    v17 = (*a4)[-1].origin.y;
  }

  else
  {
    v16 = (*a4)[-1].origin.x;
  }

  v21 = x + width;
  v22 = y + height;
  if (a6 != 90)
  {
    v18 = (*a4)[-1].size.height;
    v22 = (*a4)[-1].origin.y;
  }

  if (a6)
  {
    height = v18;
  }

  else
  {
    width = height * 0.5;
  }

  if (a6)
  {
    y = v22;
  }

  else
  {
    x = v21;
  }

  if (a6 > 179)
  {
    height = v19;
    width = v20;
    y = v17;
    x = v16;
  }

  v11 = *a4;
  *v11 = CGRectIntegral(*&x);
  ++*a4;
  ++*a5;
}

void __getWebThreadLockSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *WebKitLegacyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"UIWebDocumentViewAccessibility.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x2A1C599E8](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x2A1C59AE0](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2A1C59B58](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}