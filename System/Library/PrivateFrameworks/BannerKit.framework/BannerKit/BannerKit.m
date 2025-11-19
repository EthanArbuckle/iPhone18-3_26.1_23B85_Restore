void BNRegisterBannerKitLogging()
{
  if (BNRegisterBannerKitLogging_onceToken != -1)
  {
    BNRegisterBannerKitLogging_cold_1();
  }
}

uint64_t __BNRegisterBannerKitLogging_block_invoke()
{
  v0 = os_log_create(BNLogSubsystem, "Presentable");
  v1 = BNLogPresentable;
  BNLogPresentable = v0;

  v2 = os_log_create(BNLogSubsystem, "Posting");
  v3 = BNLogPosting;
  BNLogPosting = v2;

  v4 = os_log_create(BNLogSubsystem, "Considering");
  v5 = BNLogConsidering;
  BNLogConsidering = v4;

  v6 = os_log_create(BNLogSubsystem, "Pending");
  v7 = BNLogPending;
  BNLogPending = v6;

  v8 = os_log_create(BNLogSubsystem, "Presenting");
  v9 = BNLogPresenting;
  BNLogPresenting = v8;

  v10 = os_log_create(BNLogSubsystem, "Suspending");
  v11 = BNLogSuspending;
  BNLogSuspending = v10;

  v12 = os_log_create(BNLogSubsystem, "Hosting-service");
  v13 = BNLogHostingService;
  BNLogHostingService = v12;

  v14 = os_log_create(BNLogSubsystem, "Hosting-host");
  v15 = BNLogHostingHost;
  BNLogHostingHost = v14;

  v16 = os_log_create(BNLogSubsystem, "Context-service");
  v17 = BNLogContextService;
  BNLogContextService = v16;

  BNLogContextHost = os_log_create(BNLogSubsystem, "Context-host");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *_MachNameForDestination(unint64_t a1)
{
  if (a1 >= 2)
  {
    _MachNameForDestination_cold_1();
  }

  else if (a1 == 1)
  {
    v1 = @"com.apple.CarPlayApp.service";
    goto LABEL_6;
  }

  v1 = [MEMORY[0x1E698F498] defaultShellMachName];
LABEL_6:

  return v1;
}

id BNPresentableDescription(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = MEMORY[0x1E696AD60];
    v6 = objc_opt_class();
    v7 = [v3 requesterIdentifier];
    v8 = [v3 requestIdentifier];
    v9 = [v5 stringWithFormat:@"<%@: %p requesterIdentifier: %@; requestIdentifier: %@", v6, v3, v7, v8];;

    if (objc_opt_respondsToSelector())
    {
      v10 = [v3 uniquePresentableIdentifier];
      [v9 appendFormat:@"; uniquePresentableIdentifier: %@", v10];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v3 viewController];
      if (v11 == v3)
      {
        [v9 appendFormat:@"; viewController: %@", @"self"];
      }

      else
      {
        v12 = [v3 viewController];
        [v9 appendFormat:@"; viewController: %@", v12];
      }
    }

    if ([v4 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = v4;
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            v19 = [v13 objectForKeyedSubscript:v18];
            [v9 appendFormat:@"; %@: %@", v18, v19];
          }

          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }
    }

    [v9 appendString:@">"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1C42DDC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UIViewControllerFromPresentable(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 viewController];
  }

  else
  {
    v3 = objc_opt_class();
    v4 = v1;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v2 = v5;
  }

  return v2;
}

id BNEffectivePresentableDescription(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 presentableDescription];
  }

  else
  {
    BNPresentableDescription(v1, 0);
  }
  v2 = ;

  return v2;
}

void sub_1C42DE528(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id BNPresentableIdentificationDescription(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  v4 = [v1 requesterIdentifier];
  v5 = [v1 requestIdentifier];
  v6 = [v2 stringWithFormat:@"<%@: %p requesterIdentifier: %@; requestIdentifier: %@", v3, v1, v4, v5];;

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 uniquePresentableIdentifier];
    [v6 appendFormat:@"; uniqueIdentifier: %@", v7];
  }

  [v6 appendString:@">"];

  return v6;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t BNIsPresentableIdentifiedByIdentification(void *a1, void *a2, char a3)
{
  v7 = a1;
  v8 = a2;
  v9 = [v7 requesterIdentifier];
  v10 = [v8 requesterIdentifier];
  if (![v9 isEqualToString:v10])
  {
    v12 = 0;
    goto LABEL_32;
  }

  if ((a3 & 1) != 0 || ([v8 requestIdentifier], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "length")))
  {
    v3 = [v7 requestIdentifier];
    v4 = [v8 requestIdentifier];
    if (([v3 isEqualToString:v4] & 1) == 0)
    {

      v12 = 0;
      if (a3)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (a3)
    {
      v11 = 0;
      if (objc_opt_respondsToSelector())
      {
        v20 = 1;
        v21 = 0;
        goto LABEL_18;
      }

      v22 = v3;
      goto LABEL_30;
    }

    v13 = 1;
    v11 = 1;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_29:

      v4 = v3;
LABEL_30:

      v12 = v11;
      goto LABEL_31;
    }
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = 1;
      goto LABEL_31;
    }

    v13 = 0;
  }

  v14 = [v8 uniquePresentableIdentifier];
  if (!v14)
  {
    v11 = 1;
    v12 = 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v15 = v14;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v11 = 0;
    v12 = 0;
    if (v13)
    {
      goto LABEL_29;
    }

LABEL_31:

    goto LABEL_32;
  }

  v19 = v15;
  v20 = v13;
  v21 = 1;
LABEL_18:
  v16 = [v7 uniquePresentableIdentifier];
  v17 = [v8 uniquePresentableIdentifier];
  v12 = [v16 isEqual:v17];

  if ((a3 & 1) == 0)
  {
  }

  if (v20)
  {
  }

  if (v21)
  {
    goto LABEL_31;
  }

LABEL_32:

  return v12;
}

id BNUniqueIdentifierForSceneIdentifier(void *a1)
{
  v1 = MEMORY[0x1E696AFB0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 componentsSeparatedByString:@"."];

  v5 = [v4 lastObject];
  v6 = [v3 initWithUUIDString:v5];

  return v6;
}

id BNBundleIdentifier()
{
  if (BNBundleIdentifier_onceToken != -1)
  {
    BNBundleIdentifier_cold_1();
  }

  v1 = BNBundleIdentifier___bundleID;

  return v1;
}

void __BNBundleIdentifier_block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v2 bundleIdentifier];
  v1 = BNBundleIdentifier___bundleID;
  BNBundleIdentifier___bundleID = v0;
}

id BNSceneIdentifierForRequest(void *a1, void *a2, void *a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    BNSceneIdentifierForRequest_cold_2();
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  BNSceneIdentifierForRequest_cold_1();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_9:
  BNSceneIdentifierForRequest_cold_3();
LABEL_4:
  v8 = [v7 UUIDString];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v10 = [v9 componentsJoinedByString:@"."];

  return v10;
}

__CFString *BNStringFromUIInterfaceOrientation(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"[invalid]";
  }

  else
  {
    return off_1E81E4388[a1];
  }
}

uint64_t BNInterfaceOrientationFromTransform(_OWORD *a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = a1[1];
    *&t2.a = *a1;
    *&t2.c = v4;
    *&t2.tx = a1[2];
    UIIntegralTransform();
    v5 = 3.14159265;
    if (v2 <= 2)
    {
      v5 = dbl_1C430F548[v2];
    }

    CGAffineTransformMakeRotation(&v7, v5);
    UIIntegralTransform();
    if (CGAffineTransformEqualToTransform(&t1, &t2))
    {
      v3 = qword_1C430F528[v2];
    }

    ++v2;
  }

  while (v2 != 4);
  return v3;
}

__CFString *BNStringFromBNPresentableBehavior(uint64_t a1)
{
  v1 = @"[invalid]";
  if (a1 == 1)
  {
    v1 = @"Notice";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Default";
  }
}

__CFString *BNStringFromBNPresentableType(uint64_t a1)
{
  v1 = @"[invalid]";
  if (a1 == 1)
  {
    v1 = @"HUD";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Custom";
  }
}

__CFString *BNStringForAppearState(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"[Invalid]";
  }

  else
  {
    return off_1E81E43B0[a1];
  }
}

uint64_t BNIsPrototypeFeatureDevelopmentEnabled()
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.bannerkit"];
  v1 = [v0 BOOLForKey:@"BNBannerKitPrototypeFeaturesEnabled"];
  if (v1)
  {
    v2 = BNLogHostingHost;
    if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C42DC000, v2, OS_LOG_TYPE_DEFAULT, "Prototype features enabled", v4, 2u);
    }
  }

  return v1;
}

void sub_1C42E256C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C42E2FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose((v34 - 144), 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1C42E3990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C42E4374(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1C42E5410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1C42E9C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_4_0()
{

  return objc_loadWeakRetained((v0 + 32));
}

void sub_1C42EA808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1C42EB94C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C42EBBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C42EBE28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C42EC6A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1C42ED090(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C42EE834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C42EEA44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C42EF210(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C42EF5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C42EF948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C42EFF2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C42F0390(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C42F7508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C42F7A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C42F87D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&location);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C42F9928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v32 - 144));
  _Unwind_Resume(a1);
}

uint64_t _RubberBandedTranslationInContainerView(void *a1)
{
  v1 = a1;
  [v1 bounds];
  CGRectGetHeight(v11);
  BSUIConstrainValueWithRubberBand();
  v3 = v2;
  [v1 contentScaleFactor];
  v5 = v4;

  v6.n128_u64[0] = 0;
  v7.n128_u64[0] = v3;
  v8.n128_u64[0] = v5;

  return MEMORY[0x1EEE4DFA8](v6, v7, v8);
}

void sub_1C42FC300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v32 - 168));
  _Unwind_Resume(a1);
}

void sub_1C42FDA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_3_1(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1C42FE928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C42FF8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C42FFD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C4300898(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1C4301BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C4304720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_1C430601C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C4306294(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C4307078(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void BNSceneIdentifierForRequest_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *BNSceneIdentifierForRequest(NSString *__strong, NSString *__strong, NSUUID *__strong)"}];
  [OUTLINED_FUNCTION_0(v0 v1];
}

void BNSceneIdentifierForRequest_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *BNSceneIdentifierForRequest(NSString *__strong, NSString *__strong, NSUUID *__strong)"}];
  [OUTLINED_FUNCTION_0(v0 v1];
}

void BNSceneIdentifierForRequest_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *BNSceneIdentifierForRequest(NSString *__strong, NSString *__strong, NSUUID *__strong)"}];
  [OUTLINED_FUNCTION_0(v0 v1];
}

void _MachNameForDestination_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_MachNameForDestination(BNBannerDestination)"];
  [v1 handleFailureInFunction:v0 file:@"BNBannerSource.m" lineNumber:76 description:{@"Invalid destination: %@", @"[INVALID]"}];
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}