void sub_23702F0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a13, 8);
  _Unwind_Resume(a1);
}

id CLKLoggingObjectForDomain(uint64_t a1)
{
  if (CLKLoggingObjectForDomain_onceToken != -1)
  {
    CLKLoggingObjectForDomain_cold_1();
  }

  v2 = CLKLoggingObjectForDomain___logObjects;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  return v4;
}

void __CLKLoggingObjectForDomain_block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  for (i = -1; i != 10; ++i)
  {
    v2 = "default";
    if (i == 9)
    {
      v3 = "com.apple.runtime-issues";
    }

    else
    {
      v3 = "ClockKit";
    }

    if (i <= 9)
    {
      v2 = off_278A1F418[i];
    }

    v4 = os_log_create(v3, v2);
    if (v4)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:i + 1];
      [v0 setObject:v4 forKey:v5];
    }
  }

  v6 = CLKLoggingObjectForDomain___logObjects;
  CLKLoggingObjectForDomain___logObjects = v0;
}

void sub_2370301B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CLKInternalBuild()
{
  if (CLKInternalBuild_onceToken != -1)
  {
    CLKInternalBuild_cold_1();
  }

  return CLKInternalBuild_internal;
}

uint64_t CLKUnpairedDeviceSizeClass()
{
  if (!CLKInternalBuild())
  {
    return 7;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CLKUnpairedDeviceSizeClass_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = 7;
  if (CLKUnpairedDeviceSizeClass_onceToken != -1)
  {
    dispatch_once(&CLKUnpairedDeviceSizeClass_onceToken, block);
  }

  return CLKUnpairedDeviceSizeClass___sizeClass;
}

uint64_t __CLKInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  CLKInternalBuild_internal = result;
  return result;
}

unint64_t __CLKUnpairedDeviceSizeClass_block_invoke(uint64_t a1)
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"UnpairedDeviceSizeClass", @"com.apple.NanoTimeKit", &keyExistsAndHasValidFormat);
  CLKUnpairedDeviceSizeClass___sizeClass = result;
  if (keyExistsAndHasValidFormat)
  {
    v3 = result >= 0xA;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    CLKUnpairedDeviceSizeClass___sizeClass = *(a1 + 32);
  }

  return result;
}

uint64_t CLKDeviceCategoryForSizeClass(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_2370A4530[a1];
  }
}

void sub_2370307B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_237031114(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237031134(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

id CLKComplicationServerInterface()
{
  if (CLKComplicationServerInterface_onceToken != -1)
  {
    CLKComplicationServerInterface_cold_1();
  }

  v1 = CLKComplicationServerInterface_interface;

  return v1;
}

uint64_t __CLKComplicationServerInterface_block_invoke()
{
  CLKComplicationServerInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A3F1E0];

  return MEMORY[0x2821F96F8]();
}

id CLKComplicationClientInterface()
{
  if (CLKComplicationClientInterface_onceToken != -1)
  {
    CLKComplicationClientInterface_cold_1();
  }

  v1 = CLKComplicationClientInterface_interface;

  return v1;
}

void __CLKComplicationClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A42110];
  v1 = CLKComplicationClientInterface_interface;
  CLKComplicationClientInterface_interface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v19 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [CLKComplicationClientInterface_interface setClasses:v19 forSelector:sel_setActiveComplications_ argumentIndex:0 ofReply:0];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [CLKComplicationClientInterface_interface setClasses:v6 forSelector:sel_getTimelineEntriesForComplication_afterDate_limit_withHandler_ argumentIndex:0 ofReply:1];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
  [CLKComplicationClientInterface_interface setClasses:v12 forSelector:sel_getComplicationDescriptorsWithHandler_ argumentIndex:0 ofReply:1];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [CLKComplicationClientInterface_interface setClasses:v15 forSelector:sel_handleSharedComplicationDescriptors_ argumentIndex:0 ofReply:0];
  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [CLKComplicationClientInterface_interface setClasses:v18 forSelector:sel_getWidgetMigrationConfigurationFrom_withHandler_ argumentIndex:0 ofReply:1];
}

id CLKDateHandlerAssertionBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = objc_alloc_init(CLKAssertionBlockSentinel);
  [(CLKAssertionBlockSentinel *)v10 setMessage:v8];

  [(CLKAssertionBlockSentinel *)v10 setFatal:a3];
  [(CLKAssertionBlockSentinel *)v10 setFallbackBlock:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __CLKDateHandlerAssertionBlock_block_invoke;
  v15[3] = &unk_278A1E5B0;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v15 copy];

  return v13;
}

void __CLKDateHandlerAssertionBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 markCalled];
  (*(*(a1 + 40) + 16))();
}

id CLKComplicationPrivacyBehaviorAssertionBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = objc_alloc_init(CLKAssertionBlockSentinel);
  [(CLKAssertionBlockSentinel *)v10 setMessage:v8];

  [(CLKAssertionBlockSentinel *)v10 setFatal:a3];
  [(CLKAssertionBlockSentinel *)v10 setFallbackBlock:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __CLKComplicationPrivacyBehaviorAssertionBlock_block_invoke;
  v15[3] = &unk_278A1E5D8;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v15 copy];

  return v13;
}

uint64_t __CLKComplicationPrivacyBehaviorAssertionBlock_block_invoke(uint64_t a1)
{
  [*(a1 + 32) markCalled];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id CLKComplicationTemplateAssertionBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = objc_alloc_init(CLKAssertionBlockSentinel);
  [(CLKAssertionBlockSentinel *)v10 setMessage:v8];

  [(CLKAssertionBlockSentinel *)v10 setFatal:a3];
  [(CLKAssertionBlockSentinel *)v10 setFallbackBlock:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __CLKComplicationTemplateAssertionBlock_block_invoke;
  v15[3] = &unk_278A1E600;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v15 copy];

  return v13;
}

void __CLKComplicationTemplateAssertionBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 markCalled];
  (*(*(a1 + 40) + 16))();
}

id CLKComplicationTimeTravelDirectionsAssertionBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = objc_alloc_init(CLKAssertionBlockSentinel);
  [(CLKAssertionBlockSentinel *)v10 setMessage:v8];

  [(CLKAssertionBlockSentinel *)v10 setFatal:a3];
  [(CLKAssertionBlockSentinel *)v10 setFallbackBlock:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __CLKComplicationTimeTravelDirectionsAssertionBlock_block_invoke;
  v15[3] = &unk_278A1E5D8;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v15 copy];

  return v13;
}

uint64_t __CLKComplicationTimeTravelDirectionsAssertionBlock_block_invoke(uint64_t a1)
{
  [*(a1 + 32) markCalled];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id CLKComplicationTimelineAnimationBehaviorBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = objc_alloc_init(CLKAssertionBlockSentinel);
  [(CLKAssertionBlockSentinel *)v10 setMessage:v8];

  [(CLKAssertionBlockSentinel *)v10 setFatal:a3];
  [(CLKAssertionBlockSentinel *)v10 setFallbackBlock:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __CLKComplicationTimelineAnimationBehaviorBlock_block_invoke;
  v15[3] = &unk_278A1E5D8;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v15 copy];

  return v13;
}

uint64_t __CLKComplicationTimelineAnimationBehaviorBlock_block_invoke(uint64_t a1)
{
  [*(a1 + 32) markCalled];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id CLKComplicationTimelineEntryAssertionBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = objc_alloc_init(CLKAssertionBlockSentinel);
  [(CLKAssertionBlockSentinel *)v10 setMessage:v8];

  [(CLKAssertionBlockSentinel *)v10 setFatal:a3];
  [(CLKAssertionBlockSentinel *)v10 setFallbackBlock:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __CLKComplicationTimelineEntryAssertionBlock_block_invoke;
  v15[3] = &unk_278A1E628;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v15 copy];

  return v13;
}

void __CLKComplicationTimelineEntryAssertionBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 markCalled];
  (*(*(a1 + 40) + 16))();
}

id CLKComplicationTimelineEntryArrayAssertionBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = objc_alloc_init(CLKAssertionBlockSentinel);
  [(CLKAssertionBlockSentinel *)v10 setMessage:v8];

  [(CLKAssertionBlockSentinel *)v10 setFatal:a3];
  [(CLKAssertionBlockSentinel *)v10 setFallbackBlock:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __CLKComplicationTimelineEntryArrayAssertionBlock_block_invoke;
  v15[3] = &unk_278A1E650;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v15 copy];

  return v13;
}

void __CLKComplicationTimelineEntryArrayAssertionBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 markCalled];
  (*(*(a1 + 40) + 16))();
}

id CLKComplicationWidgetMigrationConfigurationAssertionBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = objc_alloc_init(CLKAssertionBlockSentinel);
  [(CLKAssertionBlockSentinel *)v10 setMessage:v8];

  [(CLKAssertionBlockSentinel *)v10 setFatal:a3];
  [(CLKAssertionBlockSentinel *)v10 setFallbackBlock:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __CLKComplicationWidgetMigrationConfigurationAssertionBlock_block_invoke;
  v15[3] = &unk_278A1E678;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v15 copy];

  return v13;
}

void __CLKComplicationWidgetMigrationConfigurationAssertionBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 markCalled];
  (*(*(a1 + 40) + 16))();
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_237032FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINIntentClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getINIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getINIntentClass_block_invoke_cold_1();
    return IntentsLibrary();
  }

  return result;
}

uint64_t IntentsLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IntentsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278A1E6C0;
    v5 = 0;
    IntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IntentsLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IntentsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getINIntentWithTypedIntentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IntentsLibrary();
  result = dlsym(v2, "INIntentWithTypedIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getINIntentWithTypedIntentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2370336BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_237034F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak(v5);
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_237036D7C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_237038F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose((v72 - 200), 8);
  _Block_object_dispose((v72 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23703BEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v12 reason];
      [CLKComplicationTemplate complicationTemplateWithJSONObjectRepresentation:v14 bundle:(v11 - 128) purpose:v13];
    }

    objc_end_catch();
    JUMPOUT(0x23703BB9CLL);
  }

  _Unwind_Resume(exception_object);
}

void _SquareImageSizeScaled(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6)
{
  v16 = a1;
  v11 = +[CLKRenderingContext sharedRenderingContext];
  v12 = [v11 device];
  v13 = [CLKDeviceMetrics metricsWithDevice:v12 identitySizeClass:2];

  [v13 setRoundingBehavior:a2];
  if (a5)
  {
    if (v16)
    {
      [v13 scaledValue:a6 withOverrides:?];
    }

    else
    {
      [v13 scaledValue:a6];
    }

    *a5 = v14;
    a5[1] = v14;
  }

  if (a4)
  {
    if (!a3)
    {
      [v13 setNewestAllowedSizeClass:&unk_284A34128];
    }

    if (v16)
    {
      [v13 scaledValue:a6 withOverrides:?];
    }

    else
    {
      [v13 scaledValue:a6];
    }

    *a4 = v15;
    a4[1] = v15;
  }
}

void _ModularLargeImageSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[CLKRenderingContext sharedRenderingContext];
  v7 = [v6 device];
  v12 = [CLKDeviceMetrics metricsWithDevice:v7 identitySizeClass:2];

  if (a3)
  {
    *a3 = ___ModularLargeImageSize_block_invoke(v8, v12);
    *(a3 + 8) = v9;
  }

  if (a2)
  {
    v10 = v12;
    if (!a1)
    {
      [v12 setNewestAllowedSizeClass:&unk_284A34128];
      v10 = v12;
    }

    *a2 = ___ModularLargeImageSize_block_invoke(v10, v10);
    *(a2 + 8) = v11;
  }
}

__n128 _UtilitarianFlatImageSizeForDevice(void *a1, uint64_t a2, __n128 *a3, _OWORD *a4)
{
  ___UtilitarianFlatImageSizeForDevice_block_invoke(a1, a1);
  if (a4)
  {
    result.n128_u64[0] = xmmword_27DE91920;
    *a4 = xmmword_27DE91920;
  }

  if (a3)
  {
    result = *&_UtilitarianFlatImageSizeForDevice__imageSize[2 * a2];
    *a3 = result;
  }

  return result;
}

void sub_237048E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23704C860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CLKComplicationGraphicExtraLargeCircularScalingFactor()
{
  v0 = +[CLKDevice currentDevice];
  __CLKComplicationGraphicExtraLargeCircularScalingFactor_block_invoke(v0, v0);

  return *&CLKComplicationGraphicExtraLargeCircularScalingFactor_scalingFactor;
}

uint64_t __CLKComplicationGraphicExtraLargeCircularScalingFactor_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_24_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_24___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_24___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_24___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_24_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_24___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_24___previousCLKDeviceVersion = [v2 version];
    __CLKComplicationGraphicExtraLargeCircularScalingFactor_block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_24___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_24_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_24_lock);

  return v5;
}

void __CLKComplicationGraphicExtraLargeCircularScalingFactor_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:0];
  v5[0] = &unk_284A34128;
  v5[1] = &unk_284A34158;
  v6[0] = &unk_284A34EC8;
  v6[1] = &unk_284A34ED8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 constantValue:v3 withOverrides:2.86];
  CLKComplicationGraphicExtraLargeCircularScalingFactor_scalingFactor = v4;
}

uint64_t ComplicationDisplayLibraryCore()
{
  if (!ComplicationDisplayLibraryCore_frameworkLibrary)
  {
    ComplicationDisplayLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return ComplicationDisplayLibraryCore_frameworkLibrary;
}

uint64_t __ComplicationDisplayLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ComplicationDisplayLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t ComplicationDisplayLibrary()
{
  v0 = ComplicationDisplayLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getCDCircularSmallComplicationDiameterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ComplicationDisplayLibrary();
  result = dlsym(v2, "CDCircularSmallComplicationDiameter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCDCircularSmallComplicationDiameterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCDGraphicLargeRectangularComplicationSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ComplicationDisplayLibrary();
  result = dlsym(v2, "CDGraphicLargeRectangularComplicationSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCDGraphicLargeRectangularComplicationSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCDGraphicLargeRectangularComplicationInsetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ComplicationDisplayLibrary();
  result = dlsym(v2, "CDGraphicLargeRectangularComplicationInset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCDGraphicLargeRectangularComplicationInsetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCDGraphicLargeRectangularComplicationLargeImageHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ComplicationDisplayLibrary();
  result = dlsym(v2, "CDGraphicLargeRectangularComplicationLargeImageHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCDGraphicLargeRectangularComplicationLargeImageHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCDCircularMediumComplicationDiameterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ComplicationDisplayLibrary();
  result = dlsym(v2, "CDCircularMediumComplicationDiameter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCDCircularMediumComplicationDiameterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t _GetNextSegment(void *a1, unint64_t a2, __CFString **a3, unint64_t *a4, void *a5)
{
  v9 = a1;
  v10 = [v9 rangeOfString:@"Ω-♨︎-Д-⚽︎-猫"];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    NextSegment = 0;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = [MEMORY[0x277CCAC80] scannerWithString:v9];
    [v15 setCharactersToBeSkipped:0];
    v26 = &stru_284A20458;
    [v15 scanUpToString:@"Ω-♨︎-Д-⚽︎-猫" intoString:&v26];
    v16 = v26;
    [v15 scanString:@"Ω-♨︎-Д-⚽︎-猫" intoString:0];
    v25 = 0;
    if ([v15 scanInteger:&v25] && (v25 & 0x8000000000000000) == 0 && v25 < a2 && objc_msgSend(v15, "scanString:intoString:", @"止", 0))
    {
      *a4 = v25;
      v17 = v16;
      *a3 = v16;
      *a5 = [v15 scanLocation];
      NextSegment = 1;
      v18 = v16;
    }

    else
    {
      v19 = v13 + v14;
      v24 = 0;
      v20 = [v9 substringFromIndex:v19];
      v23 = v16;
      NextSegment = _GetNextSegment(v20, a2, &v23, a4, &v24);
      v18 = v23;

      if (NextSegment)
      {
        v21 = [v9 substringToIndex:v19];
        *a3 = [v21 stringByAppendingString:v18];

        *a5 = v24 + v19;
      }
    }
  }

  return NextSegment;
}

void sub_237057C0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_0_1(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return objc_opt_class();
}

void sub_23705B714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23705BC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23705FEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_237060008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_237060F88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

double CLKValueForDeviceMetrics(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 sizeClass];
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      return a5;
    }

    a2 = a4;
    if (v9 != 7)
    {
      return a5;
    }
  }

  else
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        return a4;
      }

      if (v9 != 3)
      {
        return a4;
      }

      return a5;
    }

    if (v9)
    {
      a2 = a3;
      if (v9 != 1)
      {
        return a5;
      }
    }
  }

  return a2;
}

double CLKSizeForDeviceMetrics(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v12 = [a1 sizeClass];
  if (v12 > 4)
  {
    if (v12 != 7)
    {
      return a8;
    }
  }

  else
  {
    if (v12 > 1)
    {
      if (v12 != 3)
      {
        return a6;
      }

      return a8;
    }

    if (!v12)
    {
      return a2;
    }

    if (v12 != 1)
    {
      return a8;
    }

    return a4;
  }

  return a6;
}

double CLKPointForDeviceMetrics(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v12 = [a1 sizeClass];
  if (v12 > 4)
  {
    if (v12 != 7)
    {
      return a8;
    }
  }

  else
  {
    if (v12 > 1)
    {
      if (v12 != 3)
      {
        return a6;
      }

      return a8;
    }

    if (!v12)
    {
      return a2;
    }

    if (v12 != 1)
    {
      return a8;
    }

    return a4;
  }

  return a6;
}

uint64_t CLKScaledValueWithCompactLuxoDeviceMetrics(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 sizeClass];
  if (v4 <= 9)
  {
    if (((1 << v4) & 0x96) != 0)
    {
      goto LABEL_9;
    }

    if (!v4)
    {
      v5 = 0.839506173;
      goto LABEL_8;
    }

    if (v4 == 9)
    {
      a2 = a2 * 1.13580247 * 1.03;
      goto LABEL_9;
    }
  }

  v5 = 1.13580247;
LABEL_8:
  a2 = a2 * v5;
LABEL_9:
  [v3 screenScale];
  v7 = v6;

  v9.n128_f64[0] = a2;
  v10.n128_u64[0] = v7;

  return MEMORY[0x2821DE7E8](v8, v9, v10);
}

uint64_t CLKRoundForDevice(void *a1, double a2)
{
  v3 = [a1 screenScale];
  v4.n128_u64[0] = v5.n128_u64[0];
  v5.n128_f64[0] = a2;

  return MEMORY[0x2821DE7E8](v3, v5, v4);
}

uint64_t CLKScaledPointWithCompactLuxoDeviceMetrics(void *a1, double a2, double a3)
{
  v5 = a1;
  CLKScaledValueWithCompactLuxoDeviceMetrics(v5, a2);
  CLKScaledValueWithCompactLuxoDeviceMetrics(v5, a3);
  [v5 screenScale];

  return UIPointRoundToScale();
}

uint64_t CLKPointRoundForDevice(void *a1)
{
  [a1 screenScale];

  return UIPointRoundToScale();
}

uint64_t CLKRectCenteredAboutPointForDevice(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = [a1 screenScale];
  v14.n128_u64[0] = v15.n128_u64[0];
  v15.n128_f64[0] = a2;
  v16.n128_f64[0] = a3;
  v17.n128_f64[0] = a4;
  v18.n128_f64[0] = a5;
  v19.n128_f64[0] = a6;
  v20.n128_f64[0] = a7;

  return MEMORY[0x2821DE748](v13, v15, v16, v17, v18, v19, v20, v14);
}

uint64_t CLKRectIntegralForDevice(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 screenScale];
  v10.n128_u64[0] = v11.n128_u64[0];
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return MEMORY[0x2821DE7D0](v9, v11, v12, v13, v14, v10);
}

uint64_t CLKFloorForDevice(void *a1, double a2)
{
  v3 = [a1 screenScale];
  v4.n128_u64[0] = v5.n128_u64[0];
  v5.n128_f64[0] = a2;

  return MEMORY[0x2821DE4E8](v3, v5, v4);
}

uint64_t CLKCeilForDevice(void *a1, double a2)
{
  v3 = [a1 screenScale];
  v4.n128_u64[0] = v5.n128_u64[0];
  v5.n128_f64[0] = a2;

  return MEMORY[0x2821DE450](v3, v5, v4);
}

uint64_t CLKSizeRoundForDevice(void *a1)
{
  [a1 screenScale];

  return UISizeRoundToScale();
}

uint64_t CLKRectEqualsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (CGRectEqualToRect(*&a1, *&a5))
  {
    return 1;
  }

  v17 = vabdd_f64(a2, a6);
  if (vabdd_f64(a1, a5) >= 0.00000011920929 || v17 >= 0.00000011920929)
  {
    return 0;
  }

  v19 = vabdd_f64(a3, a7) < 0.00000011920929;
  return vabdd_f64(a4, a8) < 0.00000011920929 && v19;
}

double CLKInterpolateShortestPathBetweenAnglesUnclipped(double a1, double a2, double a3)
{
  v5 = fmod(a2 - a1 + 3.14159265, 6.28318531) + -3.14159265;
  if (v5 < -3.14159265)
  {
    v5 = v5 + 6.28318531;
  }

  return a1 + v5 * a3;
}

double CLKInterpolateShortestPathBetweenAnglesClipped(double a1, double a2, double a3)
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
  v5 = fmod(a2 - a1 + 3.14159265, 6.28318531) + -3.14159265;
  if (v5 < -3.14159265)
  {
    v5 = v5 + 6.28318531;
  }

  return a1 + v5 * v4;
}

double CLKCompressFraction(double a1, double a2, double a3)
{
  result = 0.0;
  v5 = fmin(fmax(a2, 0.0), 1.0);
  v6 = fmin(fmax(a3, 0.0), 1.0);
  if (v6 < v5)
  {
    v6 = v5;
  }

  v7 = v6 - v5;
  if (v7 != 0.0)
  {
    return fmin(fmax((fmin(fmax(a1, 0.0), 1.0) - v5) / v7, 0.0), 1.0);
  }

  return result;
}

double CLKInterpolateBetweenTransform@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  result = fmin(fmax(a4, 0.0), 1.0);
  v5 = vmlaq_n_f64(a1[1], vsubq_f64(a2[1], a1[1]), result);
  *a3 = vmlaq_n_f64(*a1, vsubq_f64(*a2, *a1), result);
  a3[1] = v5;
  a3[2] = vmlaq_n_f64(a1[2], vsubq_f64(a2[2], a1[2]), result);
  return result;
}

uint64_t CLKSizeCenteredAboutPointForDevice(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  v11 = [a1 screenScale];
  v12.n128_u64[0] = v13.n128_u64[0];
  v13.n128_u64[0] = v9;
  v14.n128_u64[0] = v10;
  v15.n128_f64[0] = a2;
  v16.n128_f64[0] = a3;
  v17.n128_f64[0] = a4;
  v18.n128_f64[0] = a5;

  return MEMORY[0x2821DE748](v11, v13, v14, v15, v16, v17, v18, v12);
}

uint64_t CLKSizeCenteredInRectForDevice(void *a1, double a2, double a3)
{
  v5 = a1;
  UIRectGetCenter();
  v7 = v6;
  v9 = v8;
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  [v5 screenScale];
  v13 = v12;

  v15.n128_u64[0] = v10;
  v16.n128_u64[0] = v11;
  v17.n128_f64[0] = a2;
  v18.n128_f64[0] = a3;
  v19.n128_u64[0] = v7;
  v20.n128_u64[0] = v9;
  v21.n128_u64[0] = v13;

  return MEMORY[0x2821DE748](v14, v15, v16, v17, v18, v19, v20, v21);
}

double CLKPixelAlignRectForDevice(void *a1, double a2)
{
  [a1 screenScale];
  if (v3 == 0.0)
  {
    v4 = 2.0;
  }

  else
  {
    v4 = v3;
  }

  return round(a2 * v4) / v4;
}

BOOL CLKRectIsPixelAlignedForDevice(void *a1, double a2, double a3, double a4, double a5)
{
  [a1 screenScale];
  if (v9 == 0.0)
  {
    v9 = 2.0;
  }

  return vabdd_f64(a2, round(a2 * v9) / v9) < 0.00000011920929 && vabdd_f64(a3, round(a3 * v9) / v9) < 0.00000011920929 && vabdd_f64(a4, round(a4 * v9) / v9) < 0.00000011920929 && vabdd_f64(a5, round(a5 * v9) / v9) < 0.00000011920929;
}

void CLKFrameFromCenterBoundsAndTransform(uint64_t a1, float64_t a2, float64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v24.origin.x = a4;
  v24.origin.y = a5;
  v24.size.width = a6;
  v24.size.height = a7;
  v12 = CGRectGetWidth(v24) * -0.5;
  v25.origin.x = a4;
  v25.origin.y = a5;
  v25.size.width = a6;
  v25.size.height = a7;
  Height = CGRectGetHeight(v25);
  v14 = *(a1 + 16);
  *&v22.a = *a1;
  *&v22.c = v14;
  *&v22.tx = *(a1 + 32);
  CGAffineTransformTranslate(&v23, &v22, v12, Height * -0.5);
  v15 = *&v23.c;
  *a1 = *&v23.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v23.tx;
  v16.f64[0] = a2;
  v16.f64[1] = a3;
  *(a1 + 32) = vaddq_f64(v16, *(a1 + 32));
  v17 = *(a1 + 16);
  *&v23.a = *a1;
  *&v23.c = v17;
  *&v23.tx = *(a1 + 32);
  v18 = a4;
  *&v17 = a5;
  v16.f64[0] = a6;
  v19 = a7;
  CGRectApplyAffineTransform(*(&v16 - 1), &v23);
}

id CLKInterpolateBetweenColors(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (CLKEqualObjects(v5, v6))
  {
    v7 = v5;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    [v5 getRed:&v18 green:&v17 blue:&v16 alpha:&v15];
    [v6 getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
    v8 = fmin(fmax(a3, 0.0), 1.0);
    v7 = [MEMORY[0x277D75348] colorWithRed:v18 + (v14 - v18) * v8 green:v17 + (v13 - v17) * v8 blue:v16 + (v12 - v16) * v8 alpha:v15 + (v11 - v15) * v8];
  }

  v9 = v7;

  return v9;
}

BOOL CLKDeviceIsNRDevicePaired(void *a1)
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D2BBB8]];
  v2 = v1 != 0;

  return v2;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _isWeekdayDayTemplate(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"EEE d"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"EEEE d"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"ccccc d"];
  }

  return v2;
}

void sub_23706B278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23706C1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINIntentClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __IntentsLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278A1F378;
    v6 = 0;
    IntentsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (IntentsLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("INIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINIntentClass_block_invoke_cold_1();
  }

  getINIntentClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntentsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCHSExtensionIdentityClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ChronoServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278A1F390;
    v6 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ChronoServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("CHSExtensionIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSExtensionIdentityClass_block_invoke_cold_1();
  }

  getCHSExtensionIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t CLKComplicationFamilyFromString(void *a1, void *a2)
{
  v3 = a1;
  if (v3 && (_BoxedComplicationFamiliesByName(), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKey:v3], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    if (a2)
    {
      *a2 = [v5 integerValue];
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id _BoxedComplicationFamiliesByName()
{
  if (_BoxedComplicationFamiliesByName_onceToken != -1)
  {
    _BoxedComplicationFamiliesByName_cold_1();
  }

  v1 = _BoxedComplicationFamiliesByName_complicationFamiliesByName;

  return v1;
}

id CLKStringForComplicationFamily(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = @"unknown-family";
  v2 = _BoxedComplicationFamiliesByName();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __CLKStringForComplicationFamily_block_invoke;
  v5[3] = &unk_278A1F3D0;
  v5[4] = &v6;
  v5[5] = a1;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_23706C790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CLKStringForComplicationFamily_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 integerValue] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t CLKIsClockFaceApp()
{
  if (CLKIsClockFaceApp_onceToken != -1)
  {
    CLKIsClockFaceApp_cold_1();
  }

  return CLKIsClockFaceApp___isClockFaceApp;
}

void __CLKIsClockFaceApp_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  CLKIsClockFaceApp___isClockFaceApp = [v0 isEqualToString:@"com.apple.clockface"];
}

uint64_t CLKIsBridge()
{
  if (CLKIsBridge_onceToken != -1)
  {
    CLKIsBridge_cold_1();
  }

  return CLKIsBridge___result;
}

void __CLKIsBridge_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  CLKIsBridge___result = [v0 isEqualToString:@"com.apple.Bridge"];
}

uint64_t CLKIsCreateWatchFace()
{
  if (CLKIsCreateWatchFace_onceToken != -1)
  {
    CLKIsCreateWatchFace_cold_1();
  }

  return CLKIsCreateWatchFace___result;
}

void __CLKIsCreateWatchFace_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  CLKIsCreateWatchFace___result = [v0 isEqualToString:@"com.apple.NanoTimeKit.CreateWatchFace"];
}

uint64_t CLKIsCLKCompanionWatchFaceLibraryServiceProcess()
{
  if (CLKIsCLKCompanionWatchFaceLibraryServiceProcess_onceToken != -1)
  {
    CLKIsCLKCompanionWatchFaceLibraryServiceProcess_cold_1();
  }

  return CLKIsCLKCompanionWatchFaceLibraryServiceProcess___result;
}

void __CLKIsCLKCompanionWatchFaceLibraryServiceProcess_block_invoke()
{
  if (CLKInternalBuild())
  {
    v0 = [MEMORY[0x277CCAC38] processInfo];
    v1 = [v0 processName];

    CLKIsCLKCompanionWatchFaceLibraryServiceProcess___result = [v1 isEqualToString:@"CLKCompanionWatchFaceLibraryService"];
  }

  else
  {
    CLKIsCLKCompanionWatchFaceLibraryServiceProcess___result = 0;
  }
}

uint64_t CLKIsNTKCLITool()
{
  if (CLKIsNTKCLITool_onceToken != -1)
  {
    CLKIsNTKCLITool_cold_1();
  }

  return CLKIsNTKCLITool___result;
}

void __CLKIsNTKCLITool_block_invoke()
{
  if (CLKInternalBuild())
  {
    v0 = [MEMORY[0x277CCAC38] processInfo];
    v1 = [v0 processName];

    CLKIsNTKCLITool___result = [v1 isEqualToString:@"NTKCLITool"];
  }

  else
  {
    CLKIsNTKCLITool___result = 0;
  }
}

uint64_t CLKIsNTKXCTests()
{
  if (CLKIsNTKXCTests_onceToken != -1)
  {
    CLKIsNTKXCTests_cold_1();
  }

  return CLKIsNTKXCTests___result;
}

void __CLKIsNTKXCTests_block_invoke()
{
  if (CLKInternalBuild())
  {
    v0 = [MEMORY[0x277CCAC38] processInfo];
    v2 = [v0 processName];

    if ([v2 isEqualToString:@"xctest"])
    {
      v1 = 1;
    }

    else
    {
      v1 = [v2 isEqualToString:@"NanoTimeKitTests-Runner"];
    }

    CLKIsNTKXCTests___result = v1;
  }

  else
  {
    CLKIsNTKXCTests___result = 0;
  }
}

uint64_t CLKIsGreenfieldTool()
{
  if (CLKIsGreenfieldTool_onceToken != -1)
  {
    CLKIsGreenfieldTool_cold_1();
  }

  return CLKIsGreenfieldTool___result;
}

void __CLKIsGreenfieldTool_block_invoke()
{
  if (CLKInternalBuild())
  {
    v0 = [MEMORY[0x277CCAC38] processInfo];
    v1 = [v0 processName];

    CLKIsGreenfieldTool___result = [v1 isEqualToString:@"GreenfieldTool"];
  }

  else
  {
    CLKIsGreenfieldTool___result = 0;
  }
}

uint64_t CLKIsNTKDaemon()
{
  if (CLKIsNTKDaemon_onceToken != -1)
  {
    CLKIsNTKDaemon_cold_1();
  }

  return CLKIsNTKDaemon___isDaemon;
}

void __CLKIsNTKDaemon_block_invoke()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];

  CLKIsNTKDaemon___isDaemon = [v1 isEqualToString:@"nanotimekitcompaniond"];
}

uint64_t CLKIsFaceSnapshotService()
{
  if (CLKIsFaceSnapshotService_onceToken != -1)
  {
    CLKIsFaceSnapshotService_cold_1();
  }

  return CLKIsFaceSnapshotService___isFaceSnapshotService;
}

void __CLKIsFaceSnapshotService_block_invoke()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v2 = [v0 processName];

  if ([v2 isEqualToString:@"NTKFaceSnapshotService"])
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"NTKComplicationSnapshotService"];
  }

  CLKIsFaceSnapshotService___isFaceSnapshotService = v1;
}

uint64_t CLKIsUVPreviewApp()
{
  if (CLKIsUVPreviewApp_onceToken != -1)
  {
    CLKIsUVPreviewApp_cold_1();
  }

  return CLKIsUVPreviewApp___isUVPreview;
}

void __CLKIsUVPreviewApp_block_invoke()
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v3 bundleIdentifier];
  if ([v0 isEqualToString:@"com.apple.dt.XcodePreviews"])
  {
    CLKIsUVPreviewApp___isUVPreview = 1;
  }

  else
  {
    v1 = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CLKIsUVPreviewApp___isUVPreview = [v2 isEqualToString:@"com.apple.PreviewShell"];
  }
}

BOOL CLKRunningInProcess(uint64_t a1)
{
  if ((a1 & 0x40) != 0)
  {
    if (CLKIsBridge_onceToken != -1)
    {
      CLKIsBridge_cold_1();
    }

    if (CLKIsBridge___result)
    {
      return 1;
    }
  }

  if ((a1 & 0x100) != 0)
  {
    if (CLKIsCreateWatchFace_onceToken != -1)
    {
      CLKIsCreateWatchFace_cold_1();
    }

    if (CLKIsCreateWatchFace___result)
    {
      return 1;
    }
  }

  if ((a1 & 0x1000) != 0)
  {
    if (CLKIsCLKCompanionWatchFaceLibraryServiceProcess_onceToken != -1)
    {
      CLKIsCLKCompanionWatchFaceLibraryServiceProcess_cold_1();
    }

    if (CLKIsCLKCompanionWatchFaceLibraryServiceProcess___result)
    {
      return 1;
    }
  }

  if ((a1 & 0x200) != 0)
  {
    if (CLKIsNTKCLITool_onceToken != -1)
    {
      CLKIsNTKCLITool_cold_1();
    }

    if (CLKIsNTKCLITool___result)
    {
      return 1;
    }
  }

  if ((a1 & 0x400) != 0)
  {
    if (CLKIsNTKXCTests_onceToken != -1)
    {
      CLKIsNTKXCTests_cold_1();
    }

    if (CLKIsNTKXCTests___result)
    {
      return 1;
    }
  }

  if ((a1 & 0x800) != 0)
  {
    if (CLKIsGreenfieldTool_onceToken != -1)
    {
      CLKIsGreenfieldTool_cold_1();
    }

    if (CLKIsGreenfieldTool___result)
    {
      return 1;
    }
  }

  if ((a1 & 4) != 0)
  {
    if (CLKIsUVPreviewApp_onceToken != -1)
    {
      CLKIsUVPreviewApp_cold_1();
    }

    if (CLKIsUVPreviewApp___isUVPreview)
    {
      return 1;
    }
  }

  if ((a1 & 2) != 0)
  {
    if (CLKIsFaceSnapshotService_onceToken != -1)
    {
      CLKIsFaceSnapshotService_cold_1();
    }

    if (CLKIsFaceSnapshotService___isFaceSnapshotService)
    {
      return 1;
    }
  }

  if ((a1 & 1) == 0)
  {
    return a1 == 0;
  }

  if (CLKIsNTKDaemon_onceToken != -1)
  {
    CLKIsNTKDaemon_cold_1();
  }

  return (CLKIsNTKDaemon___isDaemon & 1) != 0 || a1 == 0;
}

uint64_t CLKIsBeingDebugged()
{
  v0 = getpid();

  return CLKPIDIsBeingDebugged(v0);
}

uint64_t CLKPIDIsBeingDebugged(int a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  LODWORD(v4) = 0;
  *v34 = 0xE00000001;
  v35 = 1;
  v36 = a1;
  v2 = 648;
  if (sysctl(v34, 4u, v3, &v2, 0, 0))
  {
    CLKPIDIsBeingDebugged_cold_1();
  }

  return (v4 >> 11) & 1;
}

__CFString *CLKComplicationFamilyDescription(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return &stru_284A20458;
  }

  else
  {
    return off_278A1F468[a1];
  }
}

uint64_t CLKComplicationIconAssetName(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return *(&off_278A1F4D0 + a1);
  }
}

double __CLKWidgetGroupSafeAreaInsets_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&CLKRichRectangularCornerRadius_block_invoke_3_lock);
  if (CLKRichRectangularCornerRadius_block_invoke_3___cachedDevice)
  {
    v3 = CLKRichRectangularCornerRadius_block_invoke_3___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == CLKRichRectangularCornerRadius_block_invoke_3___previousCLKDeviceVersion))
  {
    v5 = CLKRichRectangularCornerRadius_block_invoke_3_value_0;
  }

  else
  {
    CLKRichRectangularCornerRadius_block_invoke_3___cachedDevice = v2;
    CLKRichRectangularCornerRadius_block_invoke_3___previousCLKDeviceVersion = [v2 version];
    v5 = __CLKWidgetGroupSafeAreaInsets_block_invoke_2(CLKRichRectangularCornerRadius_block_invoke_3___previousCLKDeviceVersion, v2);
    CLKRichRectangularCornerRadius_block_invoke_3_value_0 = v5;
    CLKRichRectangularCornerRadius_block_invoke_3_value_1 = v6;
    CLKRichRectangularCornerRadius_block_invoke_3_value_2 = v7;
    CLKRichRectangularCornerRadius_block_invoke_3_value_3 = v8;
  }

  os_unfair_lock_unlock(&CLKRichRectangularCornerRadius_block_invoke_3_lock);

  return *&v5;
}

double __CLKWidgetGroupSafeAreaInsets_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  v4 = [v3 scaledValue:6.0];
  v6 = v5;
  ___CLKWidgetGroupHorizontalMargin_block_invoke(v4, v2);
  ___CLKWidgetGroupBottomMargin_block_invoke(v7, v2);

  return v6;
}

double __CLKWidgetGroupNestedContentDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&CLKRichRectangularCornerRadius_block_invoke_4_lock);
  if (CLKRichRectangularCornerRadius_block_invoke_4___cachedDevice)
  {
    v3 = CLKRichRectangularCornerRadius_block_invoke_4___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == CLKRichRectangularCornerRadius_block_invoke_4___previousCLKDeviceVersion))
  {
    v5 = CLKRichRectangularCornerRadius_block_invoke_4_value;
  }

  else
  {
    CLKRichRectangularCornerRadius_block_invoke_4___cachedDevice = v2;
    CLKRichRectangularCornerRadius_block_invoke_4___previousCLKDeviceVersion = [v2 version];
    v5 = __CLKWidgetGroupNestedContentDiameter_block_invoke_2(CLKRichRectangularCornerRadius_block_invoke_4___previousCLKDeviceVersion, v2);
    CLKRichRectangularCornerRadius_block_invoke_4_value = v5;
  }

  os_unfair_lock_unlock(&CLKRichRectangularCornerRadius_block_invoke_4_lock);

  return *&v5;
}

double __CLKWidgetGroupNestedContentDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v7[0] = &unk_284A34A58;
  v7[1] = &unk_284A34A70;
  v8[0] = &unk_284A34FC8;
  v8[1] = &unk_284A34FD8;
  v7[2] = &unk_284A34A88;
  v7[3] = &unk_284A34AA0;
  v8[2] = &unk_284A34FE8;
  v8[3] = &unk_284A34FE8;
  v7[4] = &unk_284A34AB8;
  v7[5] = &unk_284A34AD0;
  v8[4] = &unk_284A34FC8;
  v8[5] = &unk_284A34FF8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  [v2 scaledValue:v3 withOverrides:42.0];
  v5 = v4;

  return v5;
}

double __CLKWidgetGroupSquareContentCornerRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&CLKRichRectangularCornerRadius_block_invoke_5_lock);
  if (CLKRichRectangularCornerRadius_block_invoke_5___cachedDevice)
  {
    v3 = CLKRichRectangularCornerRadius_block_invoke_5___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == CLKRichRectangularCornerRadius_block_invoke_5___previousCLKDeviceVersion))
  {
    v5 = CLKRichRectangularCornerRadius_block_invoke_5_value;
  }

  else
  {
    CLKRichRectangularCornerRadius_block_invoke_5___cachedDevice = v2;
    CLKRichRectangularCornerRadius_block_invoke_5___previousCLKDeviceVersion = [v2 version];
    v5 = __CLKWidgetGroupSquareContentCornerRadius_block_invoke_2(CLKRichRectangularCornerRadius_block_invoke_5___previousCLKDeviceVersion, v2);
    CLKRichRectangularCornerRadius_block_invoke_5_value = v5;
  }

  os_unfair_lock_unlock(&CLKRichRectangularCornerRadius_block_invoke_5_lock);

  return *&v5;
}

double __CLKWidgetGroupSquareContentCornerRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_284A34A58;
  v7[1] = &unk_284A34A70;
  v8[0] = &unk_284A34F78;
  v8[1] = &unk_284A34F78;
  v7[2] = &unk_284A34A88;
  v7[3] = &unk_284A34AA0;
  v8[2] = &unk_284A35008;
  v8[3] = &unk_284A35008;
  v7[4] = &unk_284A34AB8;
  v7[5] = &unk_284A34AD0;
  v8[4] = &unk_284A34F78;
  v8[5] = &unk_284A35008;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  [v2 scaledValue:v3 withOverrides:3.0];
  v5 = v4;

  return v5;
}

id _AlternatePunctuationAttributes()
{
  if (_AlternatePunctuationAttributes_onceToken != -1)
  {
    _AlternatePunctuationAttributes_cold_1();
  }

  v1 = _AlternatePunctuationAttributes___altPunctAttr;

  return v1;
}

void sub_23706F7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_23706FA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double CLKContrastRatioForColors(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CLKRelativeLuminanceForColor(a1);
  v5 = _CLKRelativeLuminanceForColor(v3);

  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 + 0.05;
  if (v4 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  return v7 / (v8 + 0.05);
}

double _CLKRelativeLuminanceForColor(void *a1)
{
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0;
  v6 = 0.0;
  [a1 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  if (v8 <= 0.03928)
  {
    v1 = v8 / 12.92;
  }

  else
  {
    v1 = pow((v8 + 0.055) / 1.055, 2.4);
  }

  if (v7 <= 0.03928)
  {
    v2 = v7 / 12.92;
  }

  else
  {
    v2 = pow((v7 + 0.055) / 1.055, 2.4);
  }

  if (v6 <= 0.03928)
  {
    v3 = v6 / 12.92;
  }

  else
  {
    v3 = pow((v6 + 0.055) / 1.055, 2.4);
  }

  return v2 * 0.7152 + v1 * 0.2126 + v3 * 0.0722;
}

BOOL CLKIsBlackColor(void *a1)
{
  v4 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  [a1 getRed:&v4 green:&v3 blue:&v2 alpha:0];
  result = 0;
  if (v4 == 0.0 && v3 == 0.0)
  {
    return v2 == 0.0;
  }

  return result;
}

__n128 __copy_helper_block_e8_48n12_8_8_s0_t8w32(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = result;
  return result;
}

void CLKClockTimerDateForNow(uint64_t a1@<X8>)
{
  v2 = +[CLKClockTimer now];
  CLKClockTimerDateForDate(v2, a1);
}

double CLKClockTimerDateForDate@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  [v4 getHour:&v13 minute:&v12 second:&v11 nanosecond:&v10 fromDate:v3];

  v5 = v10;
  v6 = v12;
  v7 = v13;
  *a2 = v3;
  *(a2 + 8) = v7;
  v8 = v11;
  result = v5 / 1000000000.0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = result;
  return result;
}

void CLKClockTimerDateConvertTo12Hour(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8) % 0xCuLL;
  if (!v5)
  {
    v5 = 12;
  }

  *(a1 + 8) = v5;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  v6 = *a1;
}

id _CLKFormatTimeIntervalSeconds(_BYTE *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int8x16_t a9, char a10)
{
  v13 = +[_CLKTimeFormatData instanceForCurrentLocale];
  +[_CLKTimeFormatSentinel listenForLocaleChangesIfNecessary];
  v14 = v13;
  v15 = v14;
  v16 = *a9.i64;
  v17 = *a9.i64 / 0x3C;
  if (*a9.i64 > 0xE0F)
  {
    v18 = 1;
  }

  else
  {
    v18 = a2;
  }

  v19 = [v14 singleWidthNumberFormatter];
  if (a6)
  {
    v20 = [v15 doubleWidthNumberFormatter];

    v19 = v20;
  }

  if (v18)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16 / 0xE10];
    v22 = [v19 stringFromNumber:v21];
  }

  else
  {
    v22 = &stru_284A20458;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  v23 = [v15 doubleWidthNumberFormatter];

  v19 = v23;
LABEL_10:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17 - 60 * (((v17 * 0x888888888888889uLL) >> 64) >> 1)];
  v25 = [v19 stringFromNumber:v24];

  if (a4)
  {
    v27 = v16 - 60 * v17;
    v28 = [v15 doubleWidthNumberFormatter];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
    v30 = [v28 stringFromNumber:v29];
  }

  else
  {
    v30 = &stru_284A20458;
  }

  if (a3)
  {
    *v26.i64 = *a9.i64 - trunc(*a9.i64);
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v32 = (*vbslq_s8(vnegq_f64(v31), v26, a9).i64 * 100.0);
    v33 = [v15 doubleWidthNumberFormatter];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    v35 = [v33 stringFromNumber:v34];
  }

  else
  {
    v35 = &stru_284A20458;
  }

  v36 = v22;
  v37 = v25;
  v38 = v30;
  v39 = v35;

  v40 = v22;
  v41 = v25;
  v42 = v30;
  v43 = v35;
  if (v18)
  {
    if (!a4 || a7)
    {
      v44 = [v15 formatHourMin];
    }

    else
    {
      if (a3)
      {
        [v15 formatHourMinSecSubsec];
      }

      else
      {
        [v15 formatHourMinSec];
      }
      v44 = ;
    }
  }

  else if (a4)
  {
    if (a7 || (a3 & 1) == 0)
    {
      v44 = [v15 formatMinSec];
    }

    else
    {
      v44 = [v15 formatMinSecSubsec];
    }
  }

  else
  {
    v44 = [v15 formatMin];
  }

  v45 = v44;
  if (a1)
  {
    *a1 = v18;
  }

  if ((v18 & 1) == 0)
  {
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"HH%@", v44];

    v45 = v46;
  }

  v47 = [v45 stringByReplacingOccurrencesOfString:@"HH" withString:@"%1$@"];

  v48 = [v47 stringByReplacingOccurrencesOfString:@"H" withString:@"%1$@"];

  v49 = [v48 stringByReplacingOccurrencesOfString:@"mm" withString:@"%2$@"];

  v50 = [v49 stringByReplacingOccurrencesOfString:@"m" withString:@"%2$@"];

  v51 = [v50 stringByReplacingOccurrencesOfString:@"ss" withString:@"%3$@"];

  v52 = [v51 stringByReplacingOccurrencesOfString:@"SS" withString:@"%4$@"];

  if (a8)
  {
    if ([(__CFString *)v43 length])
    {

      v43 = @"−−";
    }

    v53 = 60.0;
    v54 = *a9.i64;
    if (*a9.i64 >= 60.0 && [(__CFString *)v42 length:60.0]&& (a10 & 1) == 0)
    {

      v42 = @"−−";
    }
  }

  v55 = [MEMORY[0x277CCACA8] stringWithFormat:v52, v53, v54, v40, v41, v42, v43];

  return v55;
}

id _MonospaceNumbersFeatureSettings()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D74388];
  v5[0] = *MEMORY[0x277D74398];
  v5[1] = v0;
  v6[0] = &unk_284A34BA8;
  v6[1] = &unk_284A34BC0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:1];

  return v2;
}

id _StylisticSet(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  if ((a1 - 21) >= 0xFFFFFFFFFFFFFFECLL)
  {
    v2 = *MEMORY[0x277D74388];
    v7[0] = *MEMORY[0x277D74398];
    v7[1] = v2;
    v8[0] = &unk_284A34B48;
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2 * a1];
    v8[1] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

    v6 = v4;
    v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
  }

  else
  {
    v1 = MEMORY[0x277CBEBF8];
  }

  return v1;
}

double CLKKernValueForDesignSpecTrackingValue(void *a1, double a2)
{
  v3 = a1;
  v4 = a2 / CTFontGetUnitsPerEm(v3);
  [(__CTFont *)v3 pointSize];
  v6 = v5;

  return v6 * v4;
}

void sub_23707922C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void _ForceDateFormatterLocaleToUseNumberSystem(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a1;
  v5 = [v4 locale];
  v6 = [v5 localeIdentifier];
  v7 = [v3 componentsFromLocaleIdentifier:v6];
  v11 = [v7 mutableCopy];

  v8 = CLKLocaleNumberSystemIdentifier(a2);
  [v11 setObject:v8 forKeyedSubscript:@"numbers"];

  v9 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v11];
  v10 = _CFLocaleCopyAsIfCurrent();
  [v4 setLocale:v10];

  CFRelease(v10);
}

id _BasicTimeFormat()
{
  v0 = MEMORY[0x277CCA968];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v0 dateFormatFromTemplate:@"j:mm" options:0 locale:v1];

  return v2;
}

uint64_t CLKWidgetFamilyForComplicationFamily(uint64_t a1)
{
  if ((a1 - 3) > 9)
  {
    return 0;
  }

  else
  {
    return qword_2370A4B18[a1 - 3];
  }
}

uint64_t CLKWidgetInternalFamilyForComplicationFamily(uint64_t a1)
{
  if (a1 == 12)
  {
    return 9;
  }

  else
  {
    return CLKWidgetFamilyForComplicationFamily(a1);
  }
}

void *CLKComplicationFamiliesForWidgetFamily(uint64_t a1)
{
  if (CLKComplicationFamiliesForWidgetFamily_onceToken != -1)
  {
    CLKComplicationFamiliesForWidgetFamily_cold_1();
  }

  v2 = CLKComplicationFamiliesForWidgetFamily__widgetToCLKFamilyLookup;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

void __CLKComplicationFamiliesForWidgetFamily_block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v1 = CLKAllComplicationFamilies();
  v2 = [v1 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v18 + 1) + 8 * v5) integerValue];
        v7 = CLKWidgetFamilyForComplicationFamily(v6);
        if (v7)
        {
          v8 = v7;
          v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
          v10 = [v0 objectForKeyedSubscript:v9];

          if (!v10)
          {
            v11 = objc_opt_new();
            v12 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
            [v0 setObject:v11 forKeyedSubscript:v12];
          }

          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
          v14 = [v0 objectForKeyedSubscript:v13];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
          [v14 addObject:v15];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  v16 = [v0 copy];
  v17 = CLKComplicationFamiliesForWidgetFamily__widgetToCLKFamilyLookup;
  CLKComplicationFamiliesForWidgetFamily__widgetToCLKFamilyLookup = v16;
}

id CLKComplicationFamiliesForWidgetFamilies(uint64_t a1)
{
  v2 = objc_opt_new();
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __CLKComplicationFamiliesForWidgetFamilies_block_invoke;
  v12 = &unk_278A1F680;
  v3 = v2;
  v13 = v3;
  v4 = &v9;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v5 = getCHSWidgetFamilyMaskEnumerateFamiliesSymbolLoc_ptr;
  v18 = getCHSWidgetFamilyMaskEnumerateFamiliesSymbolLoc_ptr;
  if (!getCHSWidgetFamilyMaskEnumerateFamiliesSymbolLoc_ptr)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getCHSWidgetFamilyMaskEnumerateFamiliesSymbolLoc_block_invoke;
    v14[3] = &unk_278A1E6A0;
    v14[4] = &v15;
    __getCHSWidgetFamilyMaskEnumerateFamiliesSymbolLoc_block_invoke(v14);
    v5 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v5)
  {
    v8 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v8);
  }

  v5(a1, v4);

  v6 = [v3 copy];

  return v6;
}

void __CLKComplicationFamiliesForWidgetFamilies_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CLKComplicationFamiliesForWidgetFamily(a2);
  [v2 addObjectsFromArray:v3];
}

void *__getCHSWidgetFamilyMaskEnumerateFamiliesSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ChronoServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278A1F6A0;
    v7 = 0;
    ChronoServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = ChronoServicesLibraryCore_frameworkLibrary_0;
    if (ChronoServicesLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
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

  v2 = ChronoServicesLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "CHSWidgetFamilyMaskEnumerateFamilies");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHSWidgetFamilyMaskEnumerateFamiliesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_23707AF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CLKActiveComplicationsFromActivePairedDevice()
{
  v0 = +[CLKDevice activePDRDevice];
  v1 = CLKActiveComplicationsFromPairedDevice(v0);

  return v1;
}

__CFString *CLKActiveComplicationsFromPairedDevice(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  [CLKDevice PDRProductVersionForPDRDevice:v1];
  IsGreaterThanOrEqual = PDRVersionIsGreaterThanOrEqual();
  if (IsGreaterThanOrEqual)
  {
    v3 = @"CLKActiveComplications";
  }

  else
  {
    v3 = @"activeComplications";
  }

  if (IsGreaterThanOrEqual)
  {
    v4 = @"com.apple.ClockKit.activeComplications";
  }

  else
  {
    v4 = @"com.apple.sockpuppet.activeComplications";
  }

  v5 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v1;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_23702D000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving active complication list from NPS for (%@). domain=%@ key=%@", &v11, 0x20u);
  }

  v6 = [objc_alloc(getNPSDomainAccessorClass()) initWithDomain:v4 pdrDevice:v1];
  v7 = [v6 synchronize];
  v8 = [v6 objectForKey:v3];
  v9 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = @"CLKActiveComplications";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_23702D000, v9, OS_LOG_TYPE_DEFAULT, "Retrieved NPS %@ (%@)", &v11, 0x16u);
  }

  return v8;
}

id getNPSDomainAccessorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNPSDomainAccessorClass_softClass;
  v7 = getNPSDomainAccessorClass_softClass;
  if (!getNPSDomainAccessorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNPSDomainAccessorClass_block_invoke;
    v3[3] = &unk_278A1E6A0;
    v3[4] = &v4;
    __getNPSDomainAccessorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23707B894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CLKSetActiveComplicationsForLocalDevice(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = @"CLKActiveComplications";
    *&buf[12] = 2112;
    *&buf[14] = v1;
    _os_log_impl(&dword_23702D000, v2, OS_LOG_TYPE_DEFAULT, "Setting NPS %@ to (%@)", buf, 0x16u);
  }

  v3 = [objc_alloc(getNPSDomainAccessorClass()) initWithDomain:@"com.apple.ClockKit.activeComplications"];
  [v3 setObject:v1 forKey:@"CLKActiveComplications"];
  v4 = [v3 synchronize];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = getNPSManagerClass_softClass;
  v12 = getNPSManagerClass_softClass;
  if (!getNPSManagerClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getNPSManagerClass_block_invoke;
    v14 = &unk_278A1E6A0;
    v15 = &v9;
    __getNPSManagerClass_block_invoke(buf);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x277CBEB98] setWithObject:{@"CLKActiveComplications", v9}];
  [v7 synchronizeUserDefaultsDomain:@"com.apple.ClockKit.activeComplications" keys:v8 cloudEnabled:1];
}

void __getNPSDomainAccessorClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSDomainAccessor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSDomainAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1();
    NanoPreferencesSyncLibrary();
  }
}

void NanoPreferencesSyncLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278A1F8F0;
    v3 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  return result;
}

CLKFullColorSymbolImageProvider *__getNPSManagerClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNPSManagerClass_block_invoke_cold_1();
    return [(CLKFullColorSymbolImageProvider *)v3 initWithSystemName:v4, v5];
  }

  return result;
}

void sub_23707ED14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_23708058C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23708081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id _AssetBundleSuffixesForSizeClass()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithObject:&stru_284A20458];
  [v0 addObject:@"-sunscreen"];

  return v0;
}

void sub_237081A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINIntentClass_block_invoke_1(uint64_t a1)
{
  IntentsLibrary_0();
  result = objc_getClass("INIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getINIntentClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getINIntentClass_block_invoke_cold_1();
    return IntentsLibrary_0();
  }

  return result;
}

uint64_t IntentsLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IntentsLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278A1FA08;
    v5 = 0;
    IntentsLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = IntentsLibraryCore_frameworkLibrary_1;
  v1 = v3[0];
  if (!IntentsLibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IntentsLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getINIntentWithTypedIntentSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = IntentsLibrary_0();
  result = dlsym(v2, "INIntentWithTypedIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getINIntentWithTypedIntentSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2370828C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_237082E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _ValidateTemplate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if ([v3 isCompatibleWithFamily:a2])
    {
      v5 = [v4 validateWithError:0];
    }

    else
    {
      v6 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        _ValidateTemplate_cold_1(a2, v4, v6);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t _ValidateEntry(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 validateWithError:0])
  {
    v4 = [v3 validateComplicationFamily:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _ValidateEntries(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ValidateEntries_block_invoke;
  v6[3] = &unk_278A1FC88;
  v6[4] = &v7;
  v6[5] = a2;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_237084EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id CLKget_AVAudioSessionMediaServicesWereResetNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVAudioSessionMediaServicesWereResetNotificationSymbolLoc_ptr;
  v8 = getAVAudioSessionMediaServicesWereResetNotificationSymbolLoc_ptr;
  if (!getAVAudioSessionMediaServicesWereResetNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary();
    v6[3] = dlsym(v1, "AVAudioSessionMediaServicesWereResetNotification");
    getAVAudioSessionMediaServicesWereResetNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

__n128 CLKget_kCMTimeZero@<Q0>(__n128 *a1@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getkCMTimeZeroSymbolLoc_ptr;
  v9 = getkCMTimeZeroSymbolLoc_ptr;
  if (!getkCMTimeZeroSymbolLoc_ptr)
  {
    v3 = CoreMediaLibrary();
    v7[3] = dlsym(v3, "kCMTimeZero");
    getkCMTimeZeroSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v2[1].n128_u64[0];
  return result;
}

__n128 CLKget_kCMTimeInvalid@<Q0>(__n128 *a1@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getkCMTimeInvalidSymbolLoc_ptr;
  v9 = getkCMTimeInvalidSymbolLoc_ptr;
  if (!getkCMTimeInvalidSymbolLoc_ptr)
  {
    v3 = CoreMediaLibrary();
    v7[3] = dlsym(v3, "kCMTimeInvalid");
    getkCMTimeInvalidSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v2[1].n128_u64[0];
  return result;
}

__n128 getkCMTimePositiveInfinity@<Q0>(__n128 *a1@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getkCMTimePositiveInfinitySymbolLoc_ptr;
  v9 = getkCMTimePositiveInfinitySymbolLoc_ptr;
  if (!getkCMTimePositiveInfinitySymbolLoc_ptr)
  {
    v3 = CoreMediaLibrary();
    v7[3] = dlsym(v3, "kCMTimePositiveInfinity");
    getkCMTimePositiveInfinitySymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v2[1].n128_u64[0];
  return result;
}

id CLKget_AVSynchronizedLayerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSynchronizedLayerClass_softClass;
  v7 = getAVSynchronizedLayerClass_softClass;
  if (!getAVSynchronizedLayerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVSynchronizedLayerClass_block_invoke;
    v3[3] = &unk_278A1E6A0;
    v3[4] = &v4;
    __getAVSynchronizedLayerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_237086994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CMTimeMakeWithSeconds(uint64_t a1, double a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getCMTimeMakeWithSecondsSymbolLoc_ptr;
  v11 = getCMTimeMakeWithSecondsSymbolLoc_ptr;
  if (!getCMTimeMakeWithSecondsSymbolLoc_ptr)
  {
    v5 = CoreMediaLibrary();
    v9[3] = dlsym(v5, "CMTimeMakeWithSeconds");
    getCMTimeMakeWithSecondsSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    v7 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2);
}

void sub_237086B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVAudioSessionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioSessionClass_softClass;
  v7 = getAVAudioSessionClass_softClass;
  if (!getAVAudioSessionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVAudioSessionClass_block_invoke;
    v3[3] = &unk_278A1E6A0;
    v3[4] = &v4;
    __getAVAudioSessionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2370870D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVAudioSessionCategoryAmbient()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVAudioSessionCategoryAmbientSymbolLoc_ptr;
  v8 = getAVAudioSessionCategoryAmbientSymbolLoc_ptr;
  if (!getAVAudioSessionCategoryAmbientSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary();
    v6[3] = dlsym(v1, "AVAudioSessionCategoryAmbient");
    getAVAudioSessionCategoryAmbientSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t _CMTimeCompare(__int128 *a1, __int128 *a2)
{
  *&v12 = 0;
  *(&v12 + 1) = &v12;
  v13 = 0x2020000000;
  v4 = getCMTimeCompareSymbolLoc_ptr;
  v14 = getCMTimeCompareSymbolLoc_ptr;
  if (!getCMTimeCompareSymbolLoc_ptr)
  {
    *&v8 = MEMORY[0x277D85DD0];
    *(&v8 + 1) = 3221225472;
    v9 = __getCMTimeCompareSymbolLoc_block_invoke;
    v10 = &unk_278A1E6A0;
    v11 = &v12;
    v5 = CoreMediaLibrary();
    *(*(&v12 + 1) + 24) = dlsym(v5, "CMTimeCompare");
    getCMTimeCompareSymbolLoc_ptr = *(*(v11 + 1) + 24);
    v4 = *(*(&v12 + 1) + 24);
  }

  _Block_object_dispose(&v12, 8);
  if (!v4)
  {
    v7 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v7);
  }

  v8 = *a1;
  v9 = *(a1 + 2);
  v12 = *a2;
  v13 = *(a2 + 2);
  return v4(&v8, &v12);
}

void sub_237088730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVAudioSessionMediaServicesWereResetNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVAudioSessionMediaServicesWereResetNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionMediaServicesWereResetNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AVFoundationLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AVFoundationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278A1FD58;
    v5 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCMTimeZeroSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "kCMTimeZero");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMTimeZeroSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreMediaLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreMediaLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreMediaLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278A1FD70;
    v5 = 0;
    CoreMediaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreMediaLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreMediaLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreMediaLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreMediaLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCMTimeInvalidSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "kCMTimeInvalid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMTimeInvalidSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCMTimePositiveInfinitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "kCMTimePositiveInfinity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMTimePositiveInfinitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVSynchronizedLayerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVSynchronizedLayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSynchronizedLayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVSynchronizedLayerClass_block_invoke_cold_1();
    return __getCMTimeMakeWithSecondsSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getCMTimeMakeWithSecondsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeMakeWithSeconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeMakeWithSecondsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVPlayerLayerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVPlayerLayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVPlayerLayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVPlayerLayerClass_block_invoke_cold_1();
    return __getAVAudioSessionClass_block_invoke(v3);
  }

  return result;
}

Class __getAVAudioSessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVAudioSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVAudioSessionClass_block_invoke_cold_1();
    return __getAVAudioSessionCategoryAmbientSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAVAudioSessionCategoryAmbientSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVAudioSessionCategoryAmbient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionCategoryAmbientSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVQueuePlayerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVQueuePlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVQueuePlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVQueuePlayerClass_block_invoke_cold_1();
    return __getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVPlayerItemDidPlayToEndTimeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVLayerVideoGravityResizeAspectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVLayerVideoGravityResizeAspect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLayerVideoGravityResizeAspectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVLayerVideoGravityResizeAspectFillSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVLayerVideoGravityResizeAspectFill");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCMTimeCompareSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeCompare");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeCompareSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVURLAssetClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVURLAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVURLAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVURLAssetClass_block_invoke_cold_1();
    return __getAVPlayerItemClass_block_invoke(v3);
  }

  return result;
}

CLKTimeIntervalTextProvider *__getAVPlayerItemClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVPlayerItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVPlayerItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVPlayerItemClass_block_invoke_cold_1();
    return [(CLKTimeIntervalTextProvider *)v3 initWithStartDate:v4 endDate:v5, v6];
  }

  return result;
}

void sub_23708A028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CLKForcedTime()
{
  v12 = *MEMORY[0x277D85DE8];
  if (!CLKInternalBuild())
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (CLKForcedTime_onceToken != -1)
  {
    CLKForcedTime_cold_1();
  }

  if ((CLKForcedTime_needsUpdate & 1) == 0)
  {
    v0 = __forcedTime;
    v1 = CFPreferencesCopyAppValue(@"com.apple.ClockKit.forcedTime", *MEMORY[0x277CBF008]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    v4 = __forcedTime;
    __forcedTime = v2;

    CLKForcedTime_needsUpdate = 1;
    if (__forcedTime)
    {
      v5 = CLKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = __forcedTime;
        v6 = "Using forced time: %@";
        v7 = v5;
        v8 = 12;
LABEL_15:
        _os_log_impl(&dword_23702D000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
      }
    }

    else
    {
      if (!v0)
      {
LABEL_17:

        goto LABEL_18;
      }

      v5 = CLKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        v6 = "No longer using forced time";
        v7 = v5;
        v8 = 2;
        goto LABEL_15;
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  v3 = __forcedTime;
LABEL_19:

  return v3;
}

uint64_t __CLKForcedTime_block_invoke()
{
  v0 = [@"CLKForcedTimeChangedNotification" UTF8String];
  v1 = MEMORY[0x277D85CD0];

  return notify_register_dispatch(v0, &CLKForcedTime_notifyToken, v1, &__block_literal_global_7_0);
}

void __CLKForcedTime_block_invoke_2()
{
  v0 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23702D000, v0, OS_LOG_TYPE_DEFAULT, "Changed forced time notification", v2, 2u);
  }

  CLKForcedTime_needsUpdate = 0;
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"CLKForcedTimeChangedNotification" object:0];
}

id CLKStartOfDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 startOfDayForDate:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id CLKStartOfNextDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 dateByAddingUnit:16 value:1 toDate:v2 options:0];

    v5 = [v3 startOfDayForDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id CLKStartOfPreviousDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 dateByAddingUnit:16 value:-1 toDate:v2 options:0];

    v5 = [v3 startOfDayForDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id CLKStartOfNthDayForDate(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CBEA80];
    v4 = a1;
    v5 = [v3 currentCalendar];
    v6 = [v5 dateByAddingUnit:16 value:a2 toDate:v4 options:0];

    v7 = [v5 startOfDayForDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

double CLKPercentageOfDayDoneForDate(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = 0.0;
  if (v1)
  {
    v4 = CLKStartOfDayForDate(v1);
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;

    v7 = CLKStartOfNextDayForDate(v2);
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;

    [v2 timeIntervalSinceReferenceDate];
    if (v9 - v6 > 0.0)
    {
      v3 = (v10 - v6) / (v9 - v6);
    }
  }

  return v3;
}

id CLKEndOfDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 components:28 fromDate:v2];

    v5 = [v3 dateFromComponents:v4];
    v6 = [v3 dateByAddingUnit:16 value:1 toDate:v5 options:1026];
    v7 = [v3 dateByAddingUnit:64 value:-1 toDate:v6 options:1026];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL CLKIsDateAfter5PM(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 component:32 fromDate:v2];

  return v4 > 16;
}

id CLKDateFor5PMOnDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 components:28 fromDate:v2];

    [v4 setHour:17];
    v5 = [v3 dateFromComponents:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id CLKDateFor9AMOnDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 components:60 fromDate:v2];

    [v4 setHour:9];
    v5 = [v3 dateFromComponents:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t CLKDatesHaveSameTimeDesignatorPeriod(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (CLKDatesHaveSameTimeDesignatorPeriod_onceToken != -1)
  {
    CLKDatesHaveSameTimeDesignatorPeriod_cold_1();
  }

  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v3 isSameDayAsDate:v4 inCalendar:v5];

  if (v6)
  {
    [CLKDatesHaveSameTimeDesignatorPeriod___timeFormatter setOverrideDate:v3];
    v7 = [CLKDatesHaveSameTimeDesignatorPeriod___timeFormatter designatorText];
    [CLKDatesHaveSameTimeDesignatorPeriod___timeFormatter setOverrideDate:v4];
    v8 = [CLKDatesHaveSameTimeDesignatorPeriod___timeFormatter designatorText];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __CLKDatesHaveSameTimeDesignatorPeriod_block_invoke()
{
  v0 = objc_alloc_init(CLKTimeFormatter);
  v1 = CLKDatesHaveSameTimeDesignatorPeriod___timeFormatter;
  CLKDatesHaveSameTimeDesignatorPeriod___timeFormatter = v0;

  [CLKDatesHaveSameTimeDesignatorPeriod___timeFormatter setSuppressesDesignatorWhitespace:1];
  v2 = CLKDatesHaveSameTimeDesignatorPeriod___timeFormatter;

  return [v2 setPaused:1 forReason:@"AlwaysPaused"];
}

id CLKRoundDateToNearestInterval(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v5 = MEMORY[0x277CBEA80];
    v6 = a1;
    v7 = [v5 currentCalendar];
    v8 = [v7 startOfDayForDate:v6];
    [v8 timeIntervalSince1970];
    v10 = v9;
    [v6 timeIntervalSince1970];
    v12 = v11;

    v13 = llround((v12 - v10) / a2) * a2;
    if (a3)
    {
      v14 = (v12 - v10) / a2 * a2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v7 dateByAddingUnit:128 value:v14 toDate:v8 options:2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id CLKRoundDateToMinuteGranularity(void *a1, unint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  return CLKRoundDateToNearestInterval(a1, 60 * v2, 0);
}

id CLKRoundDateDownToNearestSecond(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEAA8];
    [a1 timeIntervalSinceReferenceDate];
    a1 = [v2 dateWithTimeIntervalSinceReferenceDate:floor(v3)];
    v1 = vars8;
  }

  return a1;
}

double CLKHourMinuteSecondAnglesForTime(double *a1, double *a2, double *a3, uint64_t a4, void *a5)
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [a5 getHour:&v12 minute:&v11 second:&v10 nanosecond:&v9 fromDate:a4];
  if (a1)
  {
    result = (v10 + v11 * 60.0 + (v12 % 12) * 60.0 * 60.0) / 43200.0 * 6.28318531;
    *a1 = result;
  }

  if (a2)
  {
    result = (v10 + v11 * 60.0) / 3600.0 * 6.28318531;
    *a2 = result;
  }

  if (a3)
  {
    result = (v10 / 60.0 + v9 / 6.0e10) * 6.28318531;
    *a3 = result;
  }

  return result;
}

id CLKCompanionDisplayDate()
{
  if (CLKCompanionDisplayDate_onceToken != -1)
  {
    CLKCompanionDisplayDate_cold_1();
  }

  if (__overrideCompanionDisplayDate)
  {
    v1 = __overrideCompanionDisplayDate;
  }

  else
  {
    v1 = CLKCompanionDisplayDate__date;
  }

  return v1;
}

void __CLKCompanionDisplayDate_block_invoke()
{
  v0 = CLKDebugCompanionDisplayDateOverride();
  v1 = CLKCompanionDisplayDate__date;
  CLKCompanionDisplayDate__date = v0;

  if (!CLKCompanionDisplayDate__date)
  {
    v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    v2 = objc_opt_new();
    [v2 setYear:2016];
    [v2 setMonth:9];
    [v2 setDay:23];
    [v2 setHour:10];
    [v2 setMinute:9];
    [v2 setSecond:30];
    v3 = [v5 dateFromComponents:v2];
    v4 = CLKCompanionDisplayDate__date;
    CLKCompanionDisplayDate__date = v3;
  }
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id CLKWatchFaceLibraryServerInterface()
{
  if (CLKWatchFaceLibraryServerInterface_onceToken != -1)
  {
    CLKWatchFaceLibraryServerInterface_cold_1();
  }

  v1 = CLKWatchFaceLibraryServerInterface_interface;

  return v1;
}

uint64_t __CLKWatchFaceLibraryServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A375B8];
  v1 = CLKWatchFaceLibraryServerInterface_interface;
  CLKWatchFaceLibraryServerInterface_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void _CLKSetViewBoundsAndPositionFromFrame(void *a1, double a2, double a3, double a4, double a5)
{
  v14 = a1;
  [v14 bounds];
  [v14 setBounds:?];
  v9 = [v14 layer];
  [v9 anchorPoint];
  v11 = v10;
  v13 = v12;

  [v14 setCenter:{a2 + v11 * a4, a3 + v13 * a5}];
}

void sub_23708EED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double __CLKSceneSizeForDevice_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_0);
  if (_block_invoke___cachedDevice_0)
  {
    v3 = _block_invoke___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_0))
  {
    v5 = _block_invoke_value_0;
  }

  else
  {
    _block_invoke___cachedDevice_0 = v2;
    _block_invoke___previousCLKDeviceVersion_0 = [v2 version];
    v5 = __CLKSceneSizeForDevice_block_invoke_2(_block_invoke___previousCLKDeviceVersion_0, v2);
    _block_invoke_value_0 = v5;
    _block_invoke_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_0);

  return *&v5;
}

double __CLKSceneSizeForDevice_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_284A34CE0;
  v7[1] = &unk_284A34CF8;
  v8[0] = &unk_284A35038;
  v8[1] = &unk_284A35048;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v3 withOverrides:156.0];
  v5 = v4;

  return v5;
}

double CLKDialDiameterForDeviceWithRoundingBehavior(uint64_t a1, uint64_t a2)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 setRoundingBehavior:a2];
  v8[0] = &unk_284A34CE0;
  v8[1] = &unk_284A34D10;
  v9[0] = &unk_284A35038;
  v9[1] = &unk_284A35058;
  v8[2] = &unk_284A34CF8;
  v8[3] = &unk_284A34D28;
  v9[2] = &unk_284A35068;
  v9[3] = &unk_284A35078;
  v8[4] = &unk_284A34D40;
  v9[4] = &unk_284A35088;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];
  [v3 scaledValue:v4 withOverrides:155.0];
  v6 = v5;

  return v6;
}

double __CLKDialDiameterForDevice_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock);
  if (_block_invoke_2___cachedDevice)
  {
    v3 = _block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_2___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_2_value;
  }

  else
  {
    _block_invoke_2___cachedDevice = v2;
    _block_invoke_2___previousCLKDeviceVersion = [v2 version];
    v5 = CLKDialDiameterForDeviceWithRoundingBehavior(v2, 2);
    _block_invoke_2_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock);

  return *&v5;
}

double __CLKLargeDialDiameterForDevice_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock);
  if (_block_invoke_3___cachedDevice)
  {
    v3 = _block_invoke_3___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_3___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_3_value;
  }

  else
  {
    _block_invoke_3___cachedDevice = v2;
    _block_invoke_3___previousCLKDeviceVersion = [v2 version];
    v5 = __CLKLargeDialDiameterForDevice_block_invoke_2(_block_invoke_3___previousCLKDeviceVersion, v2);
    _block_invoke_3_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_3_lock);

  return *&v5;
}

double __CLKLargeDialDiameterForDevice_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v7[0] = &unk_284A34CF8;
  v7[1] = &unk_284A34D28;
  v8[0] = &unk_284A35098;
  v8[1] = &unk_284A350A8;
  v7[2] = &unk_284A34D40;
  v8[2] = &unk_284A350B8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v3 withOverrides:161.0];
  v5 = v4;

  return v5;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CLKLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CLKBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_284A20458 table:@"ClockKit"];

  return v3;
}

id CLKBundle()
{
  if (CLKBundle_onceToken != -1)
  {
    CLKBundle_cold_1();
  }

  v1 = CLKBundle___bundle;

  return v1;
}

id CLKWorldClockLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CLKBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_284A20458 table:@"WorldClockFormats"];

  return v3;
}

id CLKGreenfieldLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CLKBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_284A20458 table:@"ClockKit-greenfield"];

  return v3;
}

uint64_t CLKLocaleCurrentNumberSystem()
{
  if (CLKLocaleCurrentNumberSystem_onceToken != -1)
  {
    CLKLocaleCurrentNumberSystem_cold_1();
  }

  return numberSystem;
}

void __CLKLocaleCurrentNumberSystem_block_invoke()
{
  +[CLKCurrentLocaleSentinel shared];

  _CLKUpdateNumberSystem();
}

void _CLKUpdateNumberSystem()
{
  v0 = MEMORY[0x277D218D0];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v1 localeIdentifier];
  v5 = [v0 numberingSystemForLocaleID:v2];

  if ([v5 isEqualToString:@"arab"])
  {
    v3 = 1;
  }

  else if ([v5 isEqualToString:@"deva"])
  {
    v3 = 2;
  }

  else if ([v5 isEqualToString:@"beng"])
  {
    v3 = 3;
  }

  else if ([v5 isEqualToString:@"guru"])
  {
    v3 = 4;
  }

  else if ([v5 isEqualToString:@"gujr"])
  {
    v3 = 5;
  }

  else if ([v5 isEqualToString:@"telu"])
  {
    v3 = 6;
  }

  else if ([v5 isEqualToString:@"mlym"])
  {
    v3 = 7;
  }

  else if ([v5 isEqualToString:@"knda"])
  {
    v3 = 8;
  }

  else if ([v5 isEqualToString:@"orya"])
  {
    v3 = 9;
  }

  else if ([v5 isEqualToString:@"olck"])
  {
    v3 = 10;
  }

  else if ([v5 isEqualToString:@"arabext"])
  {
    v3 = 11;
  }

  else if ([v5 isEqualToString:@"mtei"])
  {
    v3 = 12;
  }

  else if ([v5 isEqualToString:@"mymr"])
  {
    v3 = 13;
  }

  else
  {
    v4 = [v5 isEqualToString:@"khmr"];
    v3 = 14;
    if (!v4)
    {
      v3 = 0;
    }
  }

  numberSystem = v3;
}

__CFString *CLKLocaleNumberSystemIdentifier(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"latn";
  }

  else
  {
    return off_278A20010[a1 - 1];
  }
}

__CFString *CLKLocaleRenderingHintLanguageIdentifierForNumberingSystem(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"en";
  }

  else
  {
    return off_278A20080[a1 - 1];
  }
}

uint64_t CLKLocaleNumberSystemForFirstLanguage()
{
  v0 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v1 = [v0 firstObject];
  v2 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v1];
  v3 = [v2 numberingSystem];
  if ([v3 isEqualToString:@"latn"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"arab"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"deva"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"beng"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"guru"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"gujr"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"telu"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"mlym"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"knda"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"orya"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"olck"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"arabext"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"mtei"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"mymr"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"khmr"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *CLKLocaleNumberSystemPrefix()
{
  if (CLKLocaleCurrentNumberSystem_onceToken != -1)
  {
    CLKLocaleCurrentNumberSystem_cold_1();
  }

  return off_278A200F0[numberSystem];
}

uint64_t CLKLayoutIsRTL()
{
  if (CLKLayoutIsRTL_onceToken != -1)
  {
    CLKLayoutIsRTL_cold_1();
  }

  return isLayoutRTL;
}

void __CLKLayoutIsRTL_block_invoke()
{
  +[CLKCurrentLocaleSentinel shared];

  _CLKUpdateIsLayoutRTL();
}

void _CLKUpdateIsLayoutRTL()
{
  v0 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  v6 = v0;
  if (v0)
  {
    v1 = [v0 effectiveUserInterfaceLayoutDirection] == 1;
    v2 = v6;
    v3 = v1;
    isLayoutRTL = v3;
  }

  else
  {
    if (*MEMORY[0x277D76620])
    {
      isLayoutRTL = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 0;
    }

    else
    {
      v4 = [MEMORY[0x277CBEAF8] currentLocale];
      v5 = [v4 objectForKey:*MEMORY[0x277CBE6C8]];

      isLayoutRTL = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v5] == 2;
    }

    v2 = 0;
  }
}

uint64_t CLKLanguageIsTallScript()
{
  if (CLKLanguageIsTallScript_onceToken != -1)
  {
    CLKLanguageIsTallScript_cold_1();
  }

  return languageIsTallScript;
}

void __CLKLanguageIsTallScript_block_invoke()
{
  +[CLKCurrentLocaleSentinel shared];

  _CLKUpdateLanguageIsTallScript();
}

void _CLKUpdateLanguageIsTallScript()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x277CBE6C8]];

  languageIsTallScript = [&unk_284A351A0 containsObject:v1];
}

uint64_t CLKCurrentLocaleIs24HourMode()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = CLKLocaleIs24HourMode(v0);

  return v1;
}

uint64_t CLKLocaleIs24HourMode(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = v2;
  if (!v1 || v2 == v1)
  {
    os_unfair_lock_lock(&CLKLocaleIs24HourMode_lock);
    if (CLKLocaleIs24HourMode_cachedLocale != v3)
    {
      objc_storeStrong(&CLKLocaleIs24HourMode_cachedLocale, v3);
      CLKLocaleIs24HourMode_cachedIs24Hour = [MEMORY[0x277CBEAF8] _usesTwelveHourClock] ^ 1;
    }

    os_unfair_lock_unlock(&CLKLocaleIs24HourMode_lock);
    LOBYTE(v6) = CLKLocaleIs24HourMode_cachedIs24Hour;
  }

  else
  {
    v4 = CFDateFormatterCreate(0, v1, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
    Format = CFDateFormatterGetFormat(v4);
    v6 = Format;
    if (Format)
    {
      LOBYTE(v6) = CFStringFind(Format, @"H", 0).location != -1 || CFStringFind(v6, @"k", 0).location != -1;
    }

    CFRelease(v4);
  }

  return v6 & 1;
}

uint64_t CLKIsCurrentLocaleCJK()
{
  if (CLKIsCurrentLocaleCJK_onceToken != -1)
  {
    CLKIsCurrentLocaleCJK_cold_1();
  }

  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x277CBE6C8]];

  v2 = [CLKIsCurrentLocaleCJK__cjkSet containsObject:v1];
  return v2;
}

uint64_t __CLKIsCurrentLocaleCJK_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"zh", @"ja", @"ko", 0}];
  v1 = CLKIsCurrentLocaleCJK__cjkSet;
  CLKIsCurrentLocaleCJK__cjkSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t CLKIsCurrentLocaleNonLatin()
{
  if (CLKIsCurrentLocaleNonLatin_onceToken != -1)
  {
    CLKIsCurrentLocaleNonLatin_cold_1();
  }

  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x277CBE6C8]];

  v2 = [CLKIsCurrentLocaleNonLatin__nonLatinSet containsObject:v1];
  return v2;
}

uint64_t __CLKIsCurrentLocaleNonLatin_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"zh", @"ja", @"ko", @"hi", @"th", @"ar", 0}];
  v1 = CLKIsCurrentLocaleNonLatin__nonLatinSet;
  CLKIsCurrentLocaleNonLatin__nonLatinSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t CLKDesignatorRequiresWhitespace()
{
  if (CLKDesignatorRequiresWhitespace_onceToken != -1)
  {
    CLKDesignatorRequiresWhitespace_cold_1();
  }

  return CLKDesignatorRequiresWhitespace_requiresWhitespace;
}

void __CLKDesignatorRequiresWhitespace_block_invoke()
{
  v0 = CLKLocalizedString(@"DESIGNATOR_REQUIRES_WHITESPACE");
  CLKDesignatorRequiresWhitespace_requiresWhitespace = [v0 BOOLValue];
}

uint64_t CLKUsesFauxSmallCaps()
{
  if (CLKUsesFauxSmallCaps_onceToken != -1)
  {
    CLKUsesFauxSmallCaps_cold_1();
  }

  return CLKUsesFauxSmallCaps_fauxSmallCaps;
}

void __CLKUsesFauxSmallCaps_block_invoke()
{
  v0 = CLKLocalizedString(@"INTERVAL_ALLOW_FAUX_SMALL_CAPS_FOR_FIT");
  CLKUsesFauxSmallCaps_fauxSmallCaps = [v0 BOOLValue];
}

BOOL CLKSmallCapsAllowed()
{
  if (CLKSmallCapsAllowed_onceToken != -1)
  {
    CLKSmallCapsAllowed_cold_1();
  }

  return (CLKSmallCapsAllowed_smallCapsAllowed & 1) == 0;
}

void __CLKSmallCapsAllowed_block_invoke()
{
  v0 = CLKLocalizedString(@"SMALL_CAPS_FONT_ALLOWED");
  if ([v0 isEqualToString:@"0"])
  {
    CLKSmallCapsAllowed_smallCapsAllowed = 1;
  }
}

BOOL CLKDropLeftRedundantDesignator()
{
  if (CLKDropLeftRedundantDesignator_onceToken != -1)
  {
    CLKDropLeftRedundantDesignator_cold_1();
  }

  return (CLKDropLeftRedundantDesignator_dropLeft & 1) == 0;
}

uint64_t __CLKDropLeftRedundantDesignator_block_invoke()
{
  v0 = CLKLocalizedString(@"INTERVAL_DROP_LEFTMOST_REDUNDANT_DESIGNATOR");
  v1 = v0;
  if (v0)
  {
    v3 = v0;
    v0 = [v0 BOOLValue];
    v1 = v3;
    if ((v0 & 1) == 0)
    {
      CLKDropLeftRedundantDesignator_dropLeft = 1;
    }
  }

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t CLKRemovesPunctuationFromWeekdayDay()
{
  if (CLKRemovesPunctuationFromWeekdayDay_onceToken != -1)
  {
    CLKRemovesPunctuationFromWeekdayDay_cold_1();
  }

  return CLKRemovesPunctuationFromWeekdayDay_removesPunctuation;
}

void __CLKRemovesPunctuationFromWeekdayDay_block_invoke()
{
  v0 = CLKLocalizedString(@"DATE_WEEKDAY_DAY_REMOVE_PUNCTUATION");
  CLKRemovesPunctuationFromWeekdayDay_removesPunctuation = [v0 BOOLValue];
}

uint64_t CLKEqualObjects(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

void CLKValidateArray(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"Array validation failed: putative array is a %@", objc_opt_class()}];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __CLKValidateArray_block_invoke;
  v4[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24lu32l8;
  v4[4] = a2;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __CLKValidateArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"Array validation failed: expected object class %@, found %@", *(a1 + 32), v3}];
  }
}

void CLKRecursivelyValidateArray(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"Array validation failed: putative array is a %@", objc_opt_class()}];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __CLKRecursivelyValidateArray_block_invoke;
  v6[3] = &unk_278A1FF88;
  v7 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:v6];
}

void __CLKRecursivelyValidateArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = *(a1 + 32);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __CLKRecursivelyValidateArray_block_invoke_2;
  v9 = &unk_278A1FF60;
  v5 = v3;
  v10 = v5;
  v11 = &v12;
  [v4 enumerateObjectsUsingBlock:&v6];
  if ((v13[3] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"Array validation failed: expected object in classes %@, found %@", *(a1 + 32), v5, v6, v7, v8, v9}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CLKRecursivelyValidateArray(v5, *(a1 + 32));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CLKRecursivelyValidateDictionary(v5, *(a1 + 32));
    }
  }

  _Block_object_dispose(&v12, 8);
}

void sub_237093C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CLKRecursivelyValidateArray_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void CLKRecursivelyValidateDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"Dictionary validation failed: putative dictionary is a %@", objc_opt_class()}];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __CLKRecursivelyValidateDictionary_block_invoke;
  v6[3] = &unk_278A1FFD8;
  v7 = v4;
  v5 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
}

void __CLKRecursivelyValidateDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __CLKRecursivelyValidateDictionary_block_invoke_2;
  v10[3] = &unk_278A1FFB0;
  v13 = &v19;
  v8 = v5;
  v11 = v8;
  v14 = &v15;
  v9 = v6;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v10];
  if (*(v20 + 24) != 1 || (v16[3] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"Dictionary validation failed: expected key and value in classes %@, found [%@: %@]", *(a1 + 32), v8, v9}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CLKRecursivelyValidateArray(v8, *(a1 + 32));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CLKRecursivelyValidateDictionary(v8, *(a1 + 32));
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CLKRecursivelyValidateArray(v9, *(a1 + 32));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CLKRecursivelyValidateDictionary(v9, *(a1 + 32));
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void sub_237093FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __CLKRecursivelyValidateDictionary_block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = result;
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    result = objc_opt_isKindOfClass();
    if (result)
    {
      *(*(*(v4 + 48) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(v4 + 56) + 8) + 24) & 1) == 0)
  {
    result = objc_opt_isKindOfClass();
    if (result)
    {
      *(*(*(v4 + 56) + 8) + 24) = 1;
    }
  }

  if (*(*(*(v4 + 48) + 8) + 24) == 1 && *(*(*(v4 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void CLKRequestConcreteImplementation(void *a1)
{
  v1 = a1;
  if (CLKInternalBuild_onceToken != -1)
  {
    CLKInternalBuild_cold_1();
  }

  if (CLKInternalBuild_internal == 1)
  {
    NSRequestConcreteImplementation();
  }
}

void sub_237094170(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 reason];
      CLKRequestConcreteImplementation_cold_2(v4, va, v3);
    }

    objc_end_catch();
    JUMPOUT(0x237094134);
  }

  _Unwind_Resume(exception_object);
}

void _CLKGenerateSimulatedCrash(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v11 = a2;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11 arguments:&a9];
  v13 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    _CLKGenerateSimulatedCrash_cold_1(v12, v13);
  }

  v14 = getpid();
  v15 = v12;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v16 = getSimulateCrashSymbolLoc_ptr;
  v22 = getSimulateCrashSymbolLoc_ptr;
  if (!getSimulateCrashSymbolLoc_ptr)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getSimulateCrashSymbolLoc_block_invoke;
    v18[3] = &unk_278A1E6A0;
    v18[4] = &v19;
    __getSimulateCrashSymbolLoc_block_invoke(v18);
    v16 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v16)
  {
    v17 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v17);
  }

  v16(v14, 464371934, v15);
}

id CLKUniqueBundle(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [[v1 alloc] _initUniqueWithURL:v2];

  return v3;
}

id CLKBuildVersion()
{
  if (CLKBuildVersion_onceToken != -1)
  {
    CLKBuildVersion_cold_1();
  }

  v1 = CLKBuildVersion___buildVersion;

  return v1;
}

uint64_t __CLKBuildVersion_block_invoke()
{
  v0 = MGGetStringAnswer();
  v1 = CLKBuildVersion___buildVersion;
  CLKBuildVersion___buildVersion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __CLKBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = CLKBundle___bundle;
  CLKBundle___bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void *__getSimulateCrashSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CrashReporterSupportLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278A1FFF8;
    v7 = 0;
    CrashReporterSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
    if (CrashReporterSupportLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SimulateCrash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSimulateCrashSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CrashReporterSupportLibraryCore_frameworkLibrary = result;
  return result;
}

id CLKDebugCompanionDisplayDateOverride()
{
  if (CLKDebugCompanionDisplayDateOverride_onceToken != -1)
  {
    CLKDebugCompanionDisplayDateOverride_cold_1();
  }

  v1 = CLKDebugCompanionDisplayDateOverride___overrideDate;

  return v1;
}

void __CLKDebugCompanionDisplayDateOverride_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"IdealizedDateOverride", @"com.apple.ClockKit");
  v1 = CLKDebugCompanionDisplayDateOverride___overrideDate;
  CLKDebugCompanionDisplayDateOverride___overrideDate = v0;

  if (CLKDebugCompanionDisplayDateOverride___overrideDate)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v2 = CLKDebugCompanionDisplayDateOverride___overrideDate;
      CLKDebugCompanionDisplayDateOverride___overrideDate = 0;
    }
  }
}

CGPoint __swiftcall CLKDeviceMetrics.scaledPoint(_:overrides:)(CGPoint _, Swift::OpaquePointer overrides)
{
  sub_23709490C(overrides._rawValue, &selRef_scaledPoint_withOverrides_, &selRef_valueWithCGPoint_, _.x, _.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGSize __swiftcall CLKDeviceMetrics.scaledSize(_:overrides:)(CGSize _, Swift::OpaquePointer overrides)
{
  sub_23709490C(overrides._rawValue, &selRef_scaledSize_withOverrides_, &selRef_valueWithCGSize_, _.width, _.height);
  result.height = v3;
  result.width = v2;
  return result;
}

void sub_23709490C(uint64_t a1, SEL *a2, SEL *a3, double a4, double a5)
{
  v5 = a1;
  v48 = MEMORY[0x277D84F98];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v46 = v13;
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      sub_237095D50(0, &qword_27DE91870);
      sub_237095D50(0, &qword_27DE91878);
      sub_237095D98();
      v43 = sub_23709A0CC();

      [v45 *a2];

      return;
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v18 = v17 | (v16 << 6);
        v19 = *(*(v5 + 48) + 8 * v18);
        v20 = (*(v5 + 56) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
        v24 = [objc_opt_self() *a3];
        if (!v24)
        {
          v15 = sub_237095244(v23, &qword_27DE918A8, &unk_2370A4CD8, sub_2370953AC);

          v14 = v16;
          if (!v11)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }

        v25 = v24;
        v26 = v48;
        if ((v48 & 0xC000000000000001) != 0)
        {
          if (v48 < 0)
          {
            v27 = v48;
          }

          else
          {
            v27 = v48 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = sub_23709A14C();
          if (__OFADD__(v28, 1))
          {
            goto LABEL_34;
          }

          v26 = sub_2370953AC(v27, v28 + 1);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = sub_23709584C(v23);
        v32 = v26[2];
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_33;
        }

        v35 = v30;
        if (v26[3] >= v34)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v30)
            {
              goto LABEL_25;
            }
          }

          else
          {
            sub_237095E00(&qword_27DE918A8);
            if (v35)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          sub_237095890(v34, isUniquelyReferenced_nonNull_native, &qword_27DE918A8);
          v36 = sub_23709584C(v23);
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_36;
          }

          v31 = v36;
          if (v35)
          {
LABEL_25:
            v38 = v26[7];
            v39 = *(v38 + 8 * v31);
            *(v38 + 8 * v31) = v25;

            goto LABEL_29;
          }
        }

        v26[(v31 >> 6) + 8] |= 1 << v31;
        *(v26[6] + 8 * v31) = v23;
        *(v26[7] + 8 * v31) = v25;
        v40 = v26[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_35;
        }

        v26[2] = v42;
LABEL_29:
        v48 = v26;
        v14 = v16;
        v5 = v46;
        if (!v11)
        {
          goto LABEL_6;
        }

LABEL_10:
        v16 = v14;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_237095D50(0, &qword_27DE91870);
  sub_23709A1BC();
  __break(1u);
}

void CLKDeviceMetrics.scaledValue(_:overrides:)(uint64_t a1, double a2)
{
  v36 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_237095D50(0, &qword_27DE91870);
      sub_237095D98();
      v34 = sub_23709A0CC();

      [v35 scaledValue:v34 withOverrides:a2];

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = (v11 << 9) | (8 * v12);
        v14 = *(*(a1 + 56) + v13);
        v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
        v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        if (!v16)
        {
          v10 = sub_237095244(v15, &qword_27DE918A0, "\b}", sub_237095608);

          v9 = v11;
          if (!v7)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }

        v17 = v16;
        v18 = v36;
        if ((v36 & 0xC000000000000001) != 0)
        {
          if (v36 >= 0)
          {
            v18 = (v36 & 0xFFFFFFFFFFFFFF8);
          }

          v19 = sub_23709A14C();
          if (__OFADD__(v19, 1))
          {
            goto LABEL_32;
          }

          v18 = sub_237095608(v18, v19 + 1);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = sub_23709584C(v15);
        v23 = v18[2];
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_31;
        }

        v27 = v22;
        if (v18[3] < v26)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }

        v31 = v21;
        sub_237095E00(&qword_27DE918A0);
        v21 = v31;
        if (v27)
        {
LABEL_23:
          v29 = v18[7];
          v30 = *(v29 + 8 * v21);
          *(v29 + 8 * v21) = v17;

          goto LABEL_27;
        }

LABEL_25:
        v18[(v21 >> 6) + 8] |= 1 << v21;
        *(v18[6] + 8 * v21) = v15;
        *(v18[7] + 8 * v21) = v17;
        v32 = v18[2];
        v25 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v25)
        {
          goto LABEL_33;
        }

        v18[2] = v33;
LABEL_27:
        v36 = v18;
        v9 = v11;
        if (!v7)
        {
          goto LABEL_6;
        }

LABEL_10:
        v11 = v9;
      }

      sub_237095890(v26, isUniquelyReferenced_nonNull_native, &qword_27DE918A0);
      v21 = sub_23709584C(v15);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_34;
      }

LABEL_22:
      if (v27)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_237095D50(0, &qword_27DE91870);
  sub_23709A1BC();
  __break(1u);
}

id CLKDeviceMetrics.with(roundingBehavior:_:)(uint64_t a1, void (*a2)(id))
{
  v5 = [v2 roundingBehavior];
  a2([v2 setRoundingBehavior_]);

  return [v2 setRoundingBehavior_];
}

uint64_t sub_237095244(void *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v13 = a2;
    v17 = sub_23709584C(a1);
    if (v18)
    {
      v6 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v22 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v16 = *(*(v20 + 56) + 8 * v6);
        sub_237095AF0(v6, v20);
        *v5 = v20;
        return v16;
      }

LABEL_14:
      sub_237095E00(v13);
      v20 = v22;
      goto LABEL_10;
    }

    return 0;
  }

  if (v6 < 0)
  {
    v8 = *v4;
  }

  else
  {
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = a1;
  v10 = sub_23709A15C();

  if (!v10)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v11 = sub_23709A14C();
  v12 = a4(v8, v11);

  v13 = sub_23709584C(v9);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(*(v12 + 56) + 8 * v13);
  sub_237095AF0(v13, v12);

  *v5 = v12;
  return v16;
}

uint64_t sub_2370953AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE918A8);
    v2 = sub_23709A1AC();
    v19 = v2;
    sub_23709A13C();
    v3 = sub_23709A16C();
    if (v3)
    {
      v4 = v3;
      sub_237095D50(0, &qword_27DE91870);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_237095D50(0, &qword_27DE91878);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_237095890(v12 + 1, 1, &qword_27DE918A8);
        }

        v2 = v19;
        result = sub_23709A0EC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_23709A16C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_237095608(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE918A0);
    v2 = sub_23709A1AC();
    v19 = v2;
    sub_23709A13C();
    v3 = sub_23709A16C();
    if (v3)
    {
      v4 = v3;
      sub_237095D50(0, &qword_27DE91870);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_237095890(v12 + 1, 1, &qword_27DE918A0);
        }

        v2 = v19;
        result = sub_23709A0EC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_23709A16C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_23709584C(uint64_t a1)
{
  v2 = sub_23709A0EC();

  return sub_237095C7C(a1, v2);
}

uint64_t sub_237095890(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_23709A19C();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_23709A0EC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

void sub_237095AF0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23709A11C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_23709A0EC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_237095C7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_237095D50(0, &qword_27DE91870);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23709A0FC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_237095D50(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_237095D98()
{
  result = qword_27DE91880;
  if (!qword_27DE91880)
  {
    sub_237095D50(255, &qword_27DE91870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE91880);
  }

  return result;
}

id sub_237095E00(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_23709A18C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_237095F9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static Interpolatable.interpolate(start:end:fraction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v33 = a4;
  v34 = a5;
  v10 = *(a3 - 8);
  v11 = (MEMORY[0x28223BE20])();
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = sub_23709A10C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v19 = &v31 - v18;
  v20 = *(v17 + 56);
  v21 = *(*(v15 - 8) + 16);
  v21(&v31 - v18, a1, v15);
  v21(&v19[v20], a2, v15);
  v22 = *(v10 + 48);
  LODWORD(a2) = v22(v19, 1, a3);
  v23 = v22(&v19[v20], 1, a3);
  if (a2 != 1)
  {
    v26 = *(v10 + 32);
    if (v23 == 1)
    {
      v25 = v34;
      v26(v34, v19, a3);
    }

    else
    {
      v26(v14, v19, a3);
      v27 = &v19[v20];
      v28 = v32;
      v26(v32, v27, a3);
      v25 = v34;
      (*(v33 + 8))(v14, v28, a3, a6);
      v29 = *(v10 + 8);
      v29(v28, a3);
      v29(v14, a3);
    }

    goto LABEL_8;
  }

  if (v23 != 1)
  {
    v25 = v34;
    (*(v10 + 32))(v34, &v19[v20], a3);
LABEL_8:
    v24 = 0;
    return (*(v10 + 56))(v25, v24, 1, a3);
  }

  v24 = 1;
  v25 = v34;
  return (*(v10 + 56))(v25, v24, 1, a3);
}

uint64_t static Interpolatable.trilinearInterpolation(a:b:c:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v16 = sub_23709A10C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  static Interpolatable.interpolate(start:end:fraction:)(a1, a2, a4, a5, &v25 - v21, a7);
  static Interpolatable.interpolate(start:end:fraction:)(a2, a3, a4, a5, v20, a7);
  static Interpolatable.interpolate(start:end:fraction:)(v22, v20, a4, a5, a6, a8);
  v23 = *(v17 + 8);
  v23(v20, v16);
  return (v23)(v22, v16);
}

id static UIColor.interpolate(start:end:fraction:)(void *a1, void *a2, double a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = 0.0;
  v13[0] = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  [a1 getRed:v13 green:&v12 blue:&v11 alpha:&v10];
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  [a2 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:(1.0 - a3) * v13[0] + v9 * a3 green:(1.0 - a3) * v12 + v8 * a3 blue:(1.0 - a3) * v11 + v7 * a3 alpha:(1.0 - a3) * v10 + v6 * a3];
}

id sub_23709669C@<X0>(void **a1@<X0>, void **a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  result = static UIColor.interpolate(start:end:fraction:)(*a1, *a2, a4);
  *a3 = result;
  return result;
}

NSArray *sub_2370966E4@<X0>(NSArray **a1@<X8>)
{
  result = _sSo21CLKComplicationFamilyV8ClockKitE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

char *sub_23709672C(char *a1, int64_t a2, char a3)
{
  result = sub_23709674C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23709674C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE918C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

NSArray *_sSo21CLKComplicationFamilyV8ClockKitE8allCasesSayABGvgZ_0()
{
  result = CLKAllComplicationFamilies();
  if (!result)
  {
    goto LABEL_17;
  }

  v1 = result;
  sub_237096B70();
  v2 = sub_23709A0DC();

  if (v2 >> 62)
  {
    v3 = sub_23709A14C();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = MEMORY[0x277D84F90];
  result = sub_23709672C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v11;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2383C41F0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_23709672C((v9 > 1), v10 + 1, 1);
      }

      ++v4;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8;
    }

    while (v3 != v4);

    return v5;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_2370969D4()
{
  result = qword_27DE918B0;
  if (!qword_27DE918B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE918B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE918B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_237096A94(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_237096AE4(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_237096B70()
{
  result = qword_27DE91870;
  if (!qword_27DE91870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE91870);
  }

  return result;
}

void _ValidateTemplate_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = CLKStringForComplicationFamily(a1);
  v6 = CLKStringForComplicationFamily([a2 compatibleFamily]);
  v7 = 138412546;
  v8 = v5;
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_23702D000, a3, OS_LOG_TYPE_FAULT, "Data handler called with incompatible template for complication family. Expected template for '%@', but received one for '%@'.", &v7, 0x16u);
}

void CLKRequestConcreteImplementation_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_23702D000, log, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
}

void _CLKGenerateSimulatedCrash_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = [a1 UTF8String];
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "Simulated exception: %s", &v3, 0xCu);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}