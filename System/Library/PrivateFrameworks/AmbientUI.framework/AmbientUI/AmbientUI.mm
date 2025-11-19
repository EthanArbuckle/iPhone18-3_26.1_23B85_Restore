void sub_23F38D328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_0()
{

  return 0;
}

void sub_23F3904C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F3916BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRMutablePosterTitleStyleConfigurationClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRMutablePosterTitleStyleConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRMutablePosterTitleStyleConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPRMutablePosterTitleStyleConfigurationClass_block_invoke_cold_1();
    PosterKitLibrary();
  }
}

void PosterKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __PosterKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278C75E90;
    v4 = 0;
    PosterKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __PosterKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

double __getPRPosterColorClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRPosterColor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRPosterColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRPosterColorClass_block_invoke_cold_1();
    return AMUIConvertSpringDampingRatioAndResponseToTensionAndFriction(v3, v4, v5, v6);
  }

  return result;
}

double AMUIConvertSpringDampingRatioAndResponseToTensionAndFriction(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

void sub_23F392B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPRUISAmbientPosterViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISAmbientPosterViewControllerClass_softClass;
  v7 = getPRUISAmbientPosterViewControllerClass_softClass;
  if (!getPRUISAmbientPosterViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRUISAmbientPosterViewControllerClass_block_invoke;
    v3[3] = &unk_278C75E70;
    v3[4] = &v4;
    __getPRUISAmbientPosterViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23F39358C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F393ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRUISAmbientPosterViewControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISAmbientPosterViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISAmbientPosterViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPRUISAmbientPosterViewControllerClass_block_invoke_cold_1();
    PosterBoardUIServicesLibrary();
  }
}

void PosterBoardUIServicesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __PosterBoardUIServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278C75F18;
    v4 = 0;
    PosterBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterBoardUIServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getPRUISPosterSnapshotControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISPosterSnapshotController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterSnapshotControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPRUISPosterSnapshotControllerClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_0();
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23F395F5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_23F398C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return objc_opt_class();
}

void sub_23F39A270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F39B87C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23F39BA80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23F39BCE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23F39D038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F3A1780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AMUIRingColorForPowerStatus(void *a1)
{
  v1 = a1;
  v2 = [v1 powerStatus];
  v3 = UIAccessibilityDarkerSystemColorsEnabled();
  if ((v2 & 4) != 0)
  {
    v5 = MEMORY[0x277D75348];
    if (v3)
    {
      v7 = 0.0431372549;
      v8 = 1.0;
      v6 = 1.0;
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277D75348] systemYellowColor];
  }

  else if ((v2 & 2) != 0)
  {
    v5 = MEMORY[0x277D75348];
    if (v3)
    {
      v8 = 0.984313725;
      v7 = 0.0274509804;
      v6 = 0.0;
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    v4 = [v1 chargeState];
    v5 = MEMORY[0x277D75348];
    if (((v2 & 1) != 0 || v4 == 2) && v3)
    {
      v6 = 0.862745098;
      v7 = 0.392156863;
      v8 = 0.0;
LABEL_11:
      v9 = [v5 colorWithRed:v8 green:v6 blue:v7 alpha:1.0];
      goto LABEL_15;
    }

    v9 = [MEMORY[0x277D75348] systemGreenColor];
  }

LABEL_15:
  v10 = v9;

  return v10;
}

AMUIPowerStatus *AMUIPowerStatusForBatteryState(char a1, unsigned int a2, double a3)
{
  v6 = objc_alloc_init(AMUIPowerStatus);
  if (a1)
  {
    v7 = 4;
  }

  else if ([MEMORY[0x277D75A78] lowBatteryLevel] >= a3)
  {
    v7 = 2;
  }

  else
  {
    v7 = a2;
  }

  [(AMUIPowerStatus *)v6 setPowerStatus:v7];
  [(AMUIPowerStatus *)v6 setPowerPercent:a3];

  return v6;
}

uint64_t AMUIRingPowerStatusForBatteryState(char a1, unsigned int a2, double a3)
{
  if (a1)
  {
    return 4;
  }

  if ([MEMORY[0x277D75A78] lowBatteryLevel] >= a3)
  {
    return 2;
  }

  return a2;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id AMUILogGeneral()
{
  if (AMUILogGeneral_onceToken != -1)
  {
    AMUILogGeneral_cold_1();
  }

  v1 = AMUILogGeneral___logObj;

  return v1;
}

uint64_t __AMUILogGeneral_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.AmbientUI", "General");
  v1 = AMUILogGeneral___logObj;
  AMUILogGeneral___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMUILogDataLayer()
{
  if (AMUILogDataLayer_onceToken != -1)
  {
    AMUILogDataLayer_cold_1();
  }

  v1 = AMUILogDataLayer___logObj;

  return v1;
}

uint64_t __AMUILogDataLayer_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.AmbientUI", "DataLayer");
  v1 = AMUILogDataLayer___logObj;
  AMUILogDataLayer___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMUILogInfograph()
{
  if (AMUILogInfograph_onceToken != -1)
  {
    AMUILogInfograph_cold_1();
  }

  v1 = AMUILogInfograph___logObj;

  return v1;
}

uint64_t __AMUILogInfograph_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.AmbientUI", "Infograph");
  v1 = AMUILogInfograph___logObj;
  AMUILogInfograph___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMUILogWidgets()
{
  if (AMUILogWidgets_onceToken != -1)
  {
    AMUILogWidgets_cold_1();
  }

  v1 = AMUILogWidgets___logObj;

  return v1;
}

uint64_t __AMUILogWidgets_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.AmbientUI", "Widgets");
  v1 = AMUILogWidgets___logObj;
  AMUILogWidgets___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMUILogSwitcher()
{
  if (AMUILogSwitcher_onceToken != -1)
  {
    AMUILogSwitcher_cold_1();
  }

  v1 = AMUILogSwitcher___logObj;

  return v1;
}

uint64_t __AMUILogSwitcher_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.AmbientUI", "Switcher");
  v1 = AMUILogSwitcher___logObj;
  AMUILogSwitcher___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMUILogEditingSwitcher()
{
  if (AMUILogEditingSwitcher_onceToken != -1)
  {
    AMUILogEditingSwitcher_cold_1();
  }

  v1 = AMUILogEditingSwitcher___logObj;

  return v1;
}

uint64_t __AMUILogEditingSwitcher_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.AmbientUI", "EditingSwitcher");
  v1 = AMUILogEditingSwitcher___logObj;
  AMUILogEditingSwitcher___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMUILogProactive()
{
  if (AMUILogProactive_onceToken != -1)
  {
    AMUILogProactive_cold_1();
  }

  v1 = AMUILogProactive___logObj;

  return v1;
}

uint64_t __AMUILogProactive_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.AmbientUI", "Proactive");
  v1 = AMUILogProactive___logObj;
  AMUILogProactive___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_23F3A486C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23F3A4D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_23F3A6230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_23F3A6740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id AMUIAmbientUIFrameworkBundle()
{
  if (AMUIAmbientUIFrameworkBundle___once != -1)
  {
    AMUIAmbientUIFrameworkBundle_cold_1();
  }

  v1 = AMUIAmbientUIFrameworkBundle___bundle;

  return v1;
}

uint64_t __AMUIAmbientUIFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = AMUIAmbientUIFrameworkBundle___bundle;
  AMUIAmbientUIFrameworkBundle___bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_23F3A90E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__BSSafeCast(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

void sub_23F3AB498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23F3ACCA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_23F3AE928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F3AECA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23F3B4F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F3B525C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_23F3B615C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_23F3B893C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}