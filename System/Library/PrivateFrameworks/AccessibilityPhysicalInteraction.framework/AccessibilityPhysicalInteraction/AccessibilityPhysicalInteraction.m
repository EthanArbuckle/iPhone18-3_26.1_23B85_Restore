void sub_23D744B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AXPIEventRepresentationFromTouches_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a3;
  v5 = a2;
  [v33 normalizedLocation];
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x277CE7D58]);
  [v10 setPathIndex:{objc_msgSend(v5, "unsignedIntegerValue")}];
  v11 = [v5 unsignedIntegerValue];

  [v10 setPathIdentity:v11];
  v12 = fmin(v9, 1.0);
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = fmin(v7, 1.0);
  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  [*(a1 + 32) _referenceBounds];
  v17 = v15 * v16;
  v19 = v13 * v18;
  [*(a1 + 32) scale];
  v21 = v20 * v17;
  v22 = roundf(v21);
  *&v20 = v20 * v19;
  v23 = roundf(*&v20);
  v24 = [*(a1 + 32) currentMode];
  [v24 size];
  v26 = v25;
  v28 = v27;

  [v10 setPathLocation:{v22 / v26, v23 / v28}];
  [v10 setTransducerType:2];
  if ((*(a1 + 48) - 1) > 1)
  {
    [v10 setPathMajorRadius:0.0];
    [v10 setPathPressure:0.0];
  }

  else
  {
    LODWORD(v29) = 1028443341;
    [v10 setPathMajorRadius:v29];
    [v33 force];
    *&v30 = v30;
    [v10 setPathPressure:v30];
    [v33 force];
    *&v31 = v31;
    [v10 setOrbValue:v31];
    [v33 force];
    if (v32 > 0.0)
    {
      [v10 setPathProximity:3];
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
}

void sub_23D745444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSiriSimpleActivationSourceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSiriSimpleActivationSourceClass_softClass;
  v7 = getSiriSimpleActivationSourceClass_softClass;
  if (!getSiriSimpleActivationSourceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSiriSimpleActivationSourceClass_block_invoke;
    v3[3] = &unk_278BE65B8;
    v3[4] = &v4;
    __getSiriSimpleActivationSourceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23D7465C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D747638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D749618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void rebootAlertCallBack(const void *a1, uint64_t a2)
{
  CFRelease(a1);
  if (!a2)
  {
    v3 = [MEMORY[0x277CE7E58] server];
    [v3 rebootDevice];
  }
}

Class __getSiriSimpleActivationSourceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriActivationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278BE65D8;
    v6 = 0;
    SiriActivationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SiriActivationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SiriSimpleActivationSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSiriSimpleActivationSourceClass_block_invoke_cold_1();
  }

  getSiriSimpleActivationSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriActivationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SiriActivationLibraryCore_frameworkLibrary = result;
  return result;
}

id AXPILocalizedString(void *a1)
{
  v1 = AXPILocalizedString_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXPILocalizedString_cold_1();
  }

  v3 = [AXPILocalizedString_Bundle localizedStringForKey:v2 value:&stru_284FC59F0 table:@"AXPIStrings"];

  return v3;
}

uint64_t __AXPILocalizedString_block_invoke()
{
  AXPILocalizedString_Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id AXPIDefaultAppearanceForDevice()
{
  if (AXPIDefaultAppearanceForDevice_onceToken != -1)
  {
    AXPIDefaultAppearanceForDevice_cold_1();
  }

  v1 = AXPIDefaultAppearanceForDevice_defaultAppearance;

  return v1;
}

void __AXPIDefaultAppearanceForDevice_block_invoke()
{
  v0 = [MEMORY[0x277CE7E18] sharedInstance];
  v1 = [v0 laserEnabled];

  if (v1)
  {
    v2 = objc_opt_new();
    v3 = AXPIDefaultAppearanceForDevice_defaultAppearance;
    AXPIDefaultAppearanceForDevice_defaultAppearance = v2;
  }

  if (!AXPIDefaultAppearanceForDevice_defaultAppearance)
  {
    AXDeviceIsPad();
    AXPIDefaultAppearanceForDevice_defaultAppearance = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

void sub_23D753288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _frameCenteredAroundPointForView(void *a1)
{
  v1 = a1;
  [v1 frame];
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  CGRectGetWidth(v7);
  UIRoundToViewScale();
  x = v8.origin.x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGRectGetHeight(v8);
  UIRoundToViewScale();

  return x;
}

uint64_t _s26AccessibilitySharedSupport0A20FeatureActionHandlerP0A19PhysicalInteractionE23handleToggleHapticMusicAA0aeF6ResultOyF_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE7618];
  v3 = sub_23D758540();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_23D7554FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  [objc_opt_self() toggleAccessibilityShortcutOption_];
  v3 = *MEMORY[0x277CE7620];
  v4 = sub_23D758540();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_23D7555A4@<X0>(SEL *a1@<X2>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  sub_23D7585E0();
  v6 = MEMORY[0x23EEEA8C0]();
  [v6 *a2];

  v7 = *MEMORY[0x277CE7620];
  v8 = sub_23D758540();
  v9 = *(*(v8 - 8) + 104);

  return v9(a3, v7, v8);
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

uint64_t sub_23D755750@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E3D10);
  MEMORY[0x28223BE20]();
  v8 = &v17 - v7;
  v9 = [objc_opt_self() sharedInstance];
  [v9 turnDigitalCrown_];

  v10 = sub_23D7585B0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_23D758590();
  v11 = sub_23D758580();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v17;
  sub_23D7564AC(0, 0, v8, a2, v12);

  v14 = *MEMORY[0x277CE7620];
  v15 = sub_23D758540();
  return (*(*(v15 - 8) + 104))(a3, v14, v15);
}

uint64_t sub_23D7558F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E3D10);
  v5[4] = swift_task_alloc();
  v5[5] = sub_23D758590();
  v5[6] = sub_23D758580();
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = sub_23D7559E4;

  return MEMORY[0x282200480](a4);
}

uint64_t sub_23D7559E4()
{
  *(*v1 + 64) = v0;

  v3 = sub_23D758570();
  if (v0)
  {
    v4 = sub_23D755C94;
  }

  else
  {
    v4 = sub_23D755B40;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23D755B40()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = [objc_opt_self() sharedInstance];
  [v4 turnDigitalCrown_];

  v5 = sub_23D7585B0();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = sub_23D758580();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v3;
  v7[5] = v2;
  sub_23D7564AC(0, 0, v1, &unk_23D75AEC8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23D755C94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D755D04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D755D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D756E6C;

  return sub_23D7558F8(a1, v4, v5, v7, v6);
}

uint64_t sub_23D755DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E3D10);
  v5[4] = swift_task_alloc();
  v5[5] = sub_23D758590();
  v5[6] = sub_23D758580();
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = sub_23D755EE8;

  return MEMORY[0x282200480](a4);
}

uint64_t sub_23D755EE8()
{
  *(*v1 + 64) = v0;

  v3 = sub_23D758570();
  if (v0)
  {
    v4 = sub_23D756E5C;
  }

  else
  {
    v4 = sub_23D756044;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23D756044()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = [objc_opt_self() sharedInstance];
  [v4 turnDigitalCrown_];

  v5 = sub_23D7585B0();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = sub_23D758580();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v3;
  v7[5] = v2;
  sub_23D7564AC(0, 0, v1, &unk_23D75AED8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23D756198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = sub_23D758590();
  v5[4] = sub_23D758580();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_23D75624C;

  return MEMORY[0x282200480](a4);
}

uint64_t sub_23D75624C()
{
  *(*v1 + 48) = v0;

  v3 = sub_23D758570();
  if (v0)
  {
    v4 = sub_23D756448;
  }

  else
  {
    v4 = sub_23D7563A8;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23D7563A8()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() sharedInstance];
  [v2 turnDigitalCrown_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23D756448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D7564AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E3D10);
  MEMORY[0x28223BE20]();
  v9 = v21 - v8;
  sub_23D756C04(a3, v21 - v8);
  v10 = sub_23D7585B0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_23D756C74(v9);
  }

  else
  {
    sub_23D7585A0();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_23D758570();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_23D758560() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_23D756C74(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D756C74(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_23D756718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D7567D8;

  return sub_23D7558F8(a1, v4, v5, v7, v6);
}

uint64_t sub_23D7567D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id AccessibilityDeviceActionHandler.handleHomeButton(isDown:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = v4;
  if ((a1 & 1) == 0)
  {
    [v4 liftHomeButtonUp];

    result = [objc_opt_self() server];
    if (result)
    {
      v7 = result;
      [result setCancelGestureActivation:8 cancelEnabled:0];
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  [v4 pressHomeButtonDown];

  result = [objc_opt_self() server];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  [result setCancelGestureActivation:8 cancelEnabled:1];
LABEL_6:

  v8 = *MEMORY[0x277CE7620];
  v9 = sub_23D758540();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

uint64_t sub_23D756A64@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 *a1];

  v5 = *MEMORY[0x277CE7620];
  v6 = sub_23D758540();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_23D756B3C@<X0>(char a1@<W0>, SEL *a2@<X3>, SEL *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = v8;
  if (a1)
  {
    v10 = a2;
  }

  else
  {
    v10 = a3;
  }

  [v8 *v10];

  v11 = *MEMORY[0x277CE7620];
  v12 = sub_23D758540();
  v13 = *(*(v12 - 8) + 104);

  return v13(a4, v11, v12);
}

uint64_t sub_23D756C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E3D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D756C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E3D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D756CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D756E6C;

  return sub_23D755DFC(a1, v4, v5, v7, v6);
}

uint64_t sub_23D756D9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D756E6C;

  return sub_23D756198(a1, v4, v5, v7, v6);
}

uint64_t sub_23D756ECC()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 toggleAppSwitcher];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D756F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E3D10);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_23D756C04(a3, v24 - v9);
  v11 = sub_23D7585B0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23D756C74(v10);
  }

  else
  {
    sub_23D7585A0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23D758570();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23D758560() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_23D756C74(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D756C74(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23D757218(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D7572E8()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 toggleControlCenter];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D757380@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 performActionForSystemAction_];

  v5 = *MEMORY[0x277CE7620];
  v6 = sub_23D758540();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t AccessibilitySystemActionHandler.handleMute(isMuted:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 toggleRingerSwitch_];

  v5 = *MEMORY[0x277CE7620];
  v6 = sub_23D758540();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_23D757520@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();
  v11[4] = a1;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23D757218;
  v11[3] = a2;
  v7 = _Block_copy(v11);
  [v6 ensureAssertionsHaveBeenProcessedWithCompletion_];
  _Block_release(v7);
  v8 = *MEMORY[0x277CE7620];
  v9 = sub_23D758540();
  return (*(*(v9 - 8) + 104))(a3, v8, v9);
}

uint64_t sub_23D757638(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E3D10);
  MEMORY[0x28223BE20]();
  v4 = &v8 - v3;
  v5 = sub_23D7585B0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_23D756F58(0, 0, v4, a2, v6);
}

uint64_t sub_23D757740()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 toggleNotificationCenter];

  v2 = *(v0 + 8);

  return v2();
}

id AccessibilitySystemActionHandler.handleOrientationLock(isLocked:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = [objc_opt_self() server];
  if (result)
  {
    v5 = result;
    [result setOrientationLocked_];

    v6 = *MEMORY[0x277CE7620];
    v7 = sub_23D758540();
    v8 = *(*(v7 - 8) + 104);

    return v8(a2, v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AccessibilitySystemActionHandler.handleSysdiagnose()@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v7[4] = nullsub_1;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23D7579F0;
  v7[3] = &block_descriptor_9;
  v3 = _Block_copy(v7);
  [v2 performSysdiagnoseWithStatusUpdateHandler_];
  _Block_release(v3);

  v4 = *MEMORY[0x277CE7620];
  v5 = sub_23D758540();
  return (*(*(v5 - 8) + 104))(a1, v4, v5);
}

uint64_t sub_23D7579F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23D758550();
  v4 = v3;

  v1(v2, v4);
}

uint64_t sub_23D757A80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D757AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23D756E6C;

  return sub_23D757724();
}

uint64_t sub_23D757B64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23D757C5C;

  return v6(a1);
}

uint64_t sub_23D757C5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23D757D54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D757D8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D756E6C;

  return sub_23D757B64(a1, v4);
}

uint64_t sub_23D757E44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D7567D8;

  return sub_23D757B64(a1, v4);
}

uint64_t sub_23D757EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23D756E6C;

  return sub_23D7572CC();
}

uint64_t sub_23D757FA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23D7567D8;

  return sub_23D756EB0();
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2821DE300](string);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}