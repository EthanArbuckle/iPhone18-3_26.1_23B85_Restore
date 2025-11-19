id __UIAccessibilityCastAsClass(objc_class *a1, void *a2, int a3, char *a4)
{
  v7 = a2;
  if (!v7)
  {
    goto LABEL_12;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (a3)
  {
    if (isKindOfClass & 1 | ((AXPerformValidationChecks() & 1) == 0))
    {
      goto LABEL_7;
    }

    v9 = AXShouldCrashOnValidationErrors();
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromClass(a1);
    v22 = [MEMORY[0x1E696AF00] callStackSymbols];
    v18 = __UIAccessibilityHandleValidationErrorWithDescription(v9, 0, @"Failed to cast object <%@: %p> as class %@ %@", v13, v14, v15, v16, v17, v11);

    if (!v18)
    {
LABEL_7:
      if (!a4)
      {
        goto LABEL_10;
      }

      v19 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v19 = 1;
    }

    *a4 = v19;
  }

LABEL_10:
  if (isKindOfClass)
  {
    v20 = v7;
    goto LABEL_13;
  }

LABEL_12:
  v20 = 0;
LABEL_13:

  return v20;
}

uint64_t AXPerformValidationChecks()
{
  if (AXPerformValidationChecks_onceToken != -1)
  {
    AXPerformValidationChecks_cold_1();
  }

  return AXPerformValidationChecks_CachedSetting;
}

uint64_t __UIAccessibilityGetAssociatedBool(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 BOOLValue];

  return v3;
}

void __UIAccessibilitySetAssociatedBool(void *a1, const void *a2, int a3)
{
  object = a1;
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v5 = 0;
  }

  objc_setAssociatedObject(object, a2, v5, 1);
}

void AXPerformBlockOnMainThread(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void AX_PERFORM_WITH_LOCK(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v3[2](v3);

  os_unfair_lock_unlock(a1);
}

id AXRuntimeLogPID()
{
  if (AXRuntimeLogPID_onceToken != -1)
  {
    AXRuntimeLogPID_cold_1();
  }

  v1 = AXRuntimeLogPID___logObj;

  return v1;
}

void AXPerformBlockOnMainThreadAfterDelay(void *a1, double a2)
{
  v2 = (a2 * 1000000000.0);
  block = a1;
  v3 = dispatch_time(0, v2);
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

void AXPerformSafeBlockWithErrorHandler(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v3[2](v3);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19159D288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t aBlock, uint64_t a11, id (*a12)(uint64_t a1), void *a13, void *a14, uint8_t a15, uint64_t a16, uint8_t buf)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    aBlock = MEMORY[0x1E69E9820];
    a11 = 3221225472;
    a12 = __AXPerformSafeBlockWithErrorHandler_block_invoke;
    a13 = &unk_1E735BD38;
    v19 = v18;
    a14 = v19;
    v20 = _Block_copy(&aBlock);
    if (v17)
    {
      (*(v17 + 16))(v17, v19);
    }

    if (AXShouldLogValidationErrors())
    {
      v21 = AXLogValidations();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = v20[2](v20);
        AXPerformSafeBlockWithErrorHandler_cold_1(v22, &buf, v21);
      }
    }

    if (AXShouldReportValidationErrors())
    {
      v23 = +[AXValidationManager sharedInstance];
      v24 = v20[2](v20);
      [v23 sendExceptionForSafeBlock:v24 overrideProcessName:0];
    }

    if (AXShouldCrashOnValidationErrors())
    {
      v25 = AXLogValidations();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v26 = v20[2](v20);
        AXPerformSafeBlockWithErrorHandler_cold_2(v26, &a15, v25);
      }
    }

    objc_end_catch();
    JUMPOUT(0x19159D24CLL);
  }

  _Unwind_Resume(exception_object);
}

id __UIAccessibilityCastAsSafeCategory(void *a1, void *a2, int a3, char *a4)
{
  v7 = a2;
  if (!v7)
  {
    v19 = 0;
    goto LABEL_38;
  }

  v8 = [a1 safeCategoryTargetClassName];
  v9 = v8;
  if (!a3)
  {
    if (v8 && NSClassFromString(v8) && (objc_opt_isKindOfClass() & 1) != 0)
    {
      goto LABEL_35;
    }

LABEL_36:
    v19 = 0;
    goto LABEL_37;
  }

  if (AXPerformValidationChecks() && !v9 && (v10 = AXShouldCrashOnValidationErrors(), NSStringFromClass(a1), v11 = objc_claimAutoreleasedReturnValue(), v17 = __UIAccessibilityHandleValidationErrorWithDescription(v10, 0, @"Couldn't find target class name for safe category class %@", v12, v13, v14, v15, v16, v11), v11, v17))
  {
    if (!a4)
    {
      goto LABEL_41;
    }

    v18 = 1;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v18 = 0;
  }

  *a4 = v18;
LABEL_16:
  if (!v9)
  {
    goto LABEL_36;
  }

  v20 = NSClassFromString(v9);
  if (AXPerformValidationChecks() && !v20 && (v21 = AXShouldCrashOnValidationErrors(), NSStringFromClass(a1), v42 = objc_claimAutoreleasedReturnValue(), v27 = __UIAccessibilityHandleValidationErrorWithDescription(v21, 0, @"Couldn't find target class named %@ for safe category class %@", v22, v23, v24, v25, v26, v9), v42, v27))
  {
    if (!a4)
    {
      goto LABEL_41;
    }

    v28 = 1;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_25;
    }

    v28 = 0;
  }

  *a4 = v28;
LABEL_25:
  if (!v20)
  {
    goto LABEL_36;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (!(isKindOfClass & 1 | ((AXPerformValidationChecks() & 1) == 0)))
  {
    v30 = AXShouldCrashOnValidationErrors();
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = NSStringFromClass(a1);
    v43 = [MEMORY[0x1E696AF00] callStackSymbols];
    v39 = __UIAccessibilityHandleValidationErrorWithDescription(v30, 0, @"Failed to cast object <%@: %p> as safe category %@ %@", v34, v35, v36, v37, v38, v32);

    if (v39)
    {
      if (a4)
      {
        v40 = 1;
        goto LABEL_33;
      }

LABEL_41:
      abort();
    }
  }

  if (!a4)
  {
    goto LABEL_34;
  }

  v40 = 0;
LABEL_33:
  *a4 = v40;
LABEL_34:
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  v19 = v7;
LABEL_37:

LABEL_38:

  return v19;
}

id __UIAccessibilitySafeClass(void *a1, void *a2, int a3, char *a4)
{
  v7 = a1;
  v8 = a2;
  if (!v8)
  {
    goto LABEL_12;
  }

  NSClassFromString(v7);
  isKindOfClass = objc_opt_isKindOfClass();
  if (a3)
  {
    if (isKindOfClass & 1 | ((AXPerformValidationChecks() & 1) == 0) || (v10 = AXShouldCrashOnValidationErrors(), [MEMORY[0x1E696AF00] callStackSymbols], v20 = objc_claimAutoreleasedReturnValue(), v16 = __UIAccessibilityHandleValidationErrorWithDescription(v10, 0, @"Failed to cast object <%@: %p> as class %@ %@", v11, v12, v13, v14, v15, v8), v20, !v16))
    {
      if (!a4)
      {
        goto LABEL_10;
      }

      v17 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v17 = 1;
    }

    *a4 = v17;
  }

LABEL_10:
  if (isKindOfClass)
  {
    v18 = v8;
    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:

  return v18;
}

id AXGuaranteedMutableArray(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 mutableCopy];
    if (v2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 allObjects];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 array];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 allKeys];
LABEL_10:
    v4 = v3;
    v2 = [v3 mutableCopy];

    if (v2)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v2 = [MEMORY[0x1E695DF70] array];
LABEL_12:

  return v2;
}

uint64_t AXCUProcessIsAXUIServer()
{
  if (AXCUProcessIsAXUIServer_onceToken != -1)
  {
    AXProcessIsLiveSpeech_cold_1();
  }

  return AXCUProcessIsAXUIServer__IsAXUIServer;
}

double AXBaseSettings.objectValue(forPreferenceKey:of:defaultValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if ([v4 forceNewSettingsUsage] & 1) != 0 || (*(&v41 + 1) = &type metadata for AccessibilityFeatureFlags, v42 = sub_19159DF0C(), LOBYTE(v40) = 14, v9 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(&v40), (v9))
  {
    v10 = sub_19166B718();
    v11 = [v4 domainNameForPreferenceKey_];

    if (v11)
    {
      v12 = sub_19166B748();
      v14 = v13;

      v37 = &type metadata for AXConcreteKey;
      v38 = &protocol witness table for AXConcreteKey;
      v15 = swift_allocObject();
      *&v36 = v15;
      *(v15 + 16) = a1;
      *(v15 + 24) = a2;
      *(v15 + 32) = v12;
      *(v15 + 40) = v14;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 80) = 2;
      *(v15 + 88) = 0;
      sub_1915A04D0(&v36, &v40);
      v16 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v4 + v16, &v36);
      v17 = v37;
      v18 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      v19 = v18[1];

      v19(v35, &v40, v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      if (swift_dynamicCast())
      {
        v20 = v34;
        __swift_destroy_boxed_opaque_existential_1(&v36);
        ObjectType = swift_getObjectType();
        if ([v34 isKindOfClass_])
        {
          *(a4 + 24) = ObjectType;
          *a4 = v20;
          __swift_destroy_boxed_opaque_existential_1(&v40);
          return result;
        }

        __swift_destroy_boxed_opaque_existential_1(&v40);
        swift_unknownObjectRelease();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v40);
        __swift_destroy_boxed_opaque_existential_1(&v36);
      }
    }

    sub_19159E224(a3, a4);
  }

  else
  {
    v23 = sub_19166B718();
    sub_19159E224(a3, &v40);
    v24 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      v25 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v26 = *(v24 - 8);
      v27 = *(v26 + 64);
      MEMORY[0x1EEE9AC00](v25, v25);
      v29 = &v35[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v29);
      v30 = sub_19166C5D8();
      (*(v26 + 8))(v29, v24);
      __swift_destroy_boxed_opaque_existential_1(&v40);
    }

    else
    {
      v30 = 0;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39.receiver = v4;
    v39.super_class = AXBaseSettings;
    v32 = objc_msgSendSuper2(&v39, sel_objectValueForPreferenceKey_ofClass_defaultValue_, v23, ObjCClassFromMetadata, v30);

    swift_unknownObjectRelease();
    if (v32)
    {
      sub_19166BFC8();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    result = *&v40;
    v33 = v41;
    *a4 = v40;
    *(a4 + 16) = v33;
  }

  return result;
}

unint64_t sub_19159DF0C()
{
  result = qword_1ED5A8268;
  if (!qword_1ED5A8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5A8268);
  }

  return result;
}

const char *AccessibilityFeatureFlags.feature.getter()
{
  result = "PersonalVoiceForAssistiveTechnologies";
  switch(*v0)
  {
    case 1:
      result = "PersonalVoiceShortPhraseTraining";
      break;
    case 2:
      result = "PassthroughZoom";
      break;
    case 3:
      result = "GuestPass";
      break;
    case 4:
      result = "Magnifier_Infinite_VQA";
      break;
    case 5:
      result = "AccessibilityReader";
      break;
    case 6:
      result = "LiveRecognitionForVisionOS";
      break;
    case 7:
      result = "WatchControl_AXFocusSystem";
      break;
    case 8:
      result = "PersonalVoiceVersion2";
      break;
    case 9:
      result = "Tadmor";
      break;
    case 0xA:
      result = "TrackpadDeadRegionCustomization";
      break;
    case 0xB:
      result = "LiveCaptionsForAll";
      break;
    case 0xC:
      result = "LiveCaptionsLanguageExpansion";
      break;
    case 0xD:
      result = "LiveCaptionsLanguageExpansionV2";
      break;
    case 0xE:
      result = "ShouldUseSwiftSettingsStore";
      break;
    case 0xF:
      result = "MotionCuesCustomization";
      break;
    case 0x10:
      result = "HoverTextTouch";
      break;
    case 0x11:
      result = "VoiceOverCoreSynthesizer_iOS";
      break;
    case 0x12:
      result = "VoiceOverCoreSynthesizer_macOS";
      break;
    case 0x13:
      result = "LiveSpeechLanguageAwareness";
      break;
    case 0x14:
      result = "LiveRecognitionSpeechAnnouncements";
      break;
    case 0x15:
      result = "CoreSynthesizerSpeechDeconfliction";
      break;
    case 0x16:
      result = "CoreSynthBackedAVSS";
      break;
    case 0x17:
      result = "SiriSSMLPassthrough";
      break;
    case 0x18:
      result = "VoiceDatabase";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_19159E224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double AXBaseSettings.value(forPreferenceKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  if ([v4 forceNewSettingsUsage] & 1) != 0 || (*(&v34 + 1) = &type metadata for AccessibilityFeatureFlags, v35 = sub_19159DF0C(), LOBYTE(v33) = 14, v8 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(&v33), (v8))
  {
    v9 = sub_19166B718();
    v10 = [v4 domainNameForPreferenceKey_];

    if (v10)
    {
      v11 = sub_19166B748();
      v13 = v12;

      *(&v30 + 1) = &type metadata for AXConcreteKey;
      v31 = &protocol witness table for AXConcreteKey;
      v14 = swift_allocObject();
      *&v29 = v14;
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      *(v14 + 32) = v11;
      *(v14 + 40) = v13;
      *(v14 + 48) = 0u;
      *(v14 + 64) = 0u;
      *(v14 + 80) = 2;
      *(v14 + 88) = 0;
      sub_1915A04D0(&v29, &v33);
      v15 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v4 + v15, v26);
      v16 = v27;
      v17 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v18 = *(v17 + 8);

      v18(&v29, &v33, v16, v17);
      if (*(&v30 + 1))
      {
        v19 = swift_allocObject();
        v20 = v30;
        *(v19 + 16) = v29;
        *(v19 + 32) = v20;
        *(v19 + 48) = v31;
        __swift_destroy_boxed_opaque_existential_1(&v33);
        __swift_destroy_boxed_opaque_existential_1(v26);
        v22 = MEMORY[0x1E69E69B8];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v33);
        __swift_destroy_boxed_opaque_existential_1(v26);
        sub_19159E780(&v29, &qword_1EADAF4A8, &qword_191672420);
        v19 = 0;
        v22 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      *a3 = v19;
      a3[3] = v22;
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 1) = 0u;
    }
  }

  else
  {
    v23 = sub_19166B718();
    v32.receiver = v4;
    v32.super_class = AXBaseSettings;
    v24 = objc_msgSendSuper2(&v32, sel_valueForPreferenceKey_, v23);

    if (v24)
    {
      sub_19166BFC8();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v33 = 0u;
    }

    result = *&v33;
    v25 = v34;
    *a3 = v33;
    *(a3 + 1) = v25;
  }

  return result;
}

uint64_t sub_19159E6F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1915DB1C0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_19159E740()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19159E780(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void destructor(id a1)
{
  if (a1)
  {
  }
}

uint64_t AXBaseSettings.forwardingTarget(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = AXBaseSettings.selectorToPrefGroups.getter();
    if (*(v4 + 16) && (v5 = sub_19159EC10(v2), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 16 * v5);
      swift_unknownObjectRetain();

      result = swift_getObjectType();
      *(a2 + 24) = result;
      *a2 = v7;
    }

    else
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AXBaseSettings.selectorToPrefGroups.getter()
{
  v1 = OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups;
  if (*(v0 + OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups))
  {
    v2 = *(v0 + OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups);
  }

  else
  {
    v2 = sub_19159FC38();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_19159EC10(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_19166C778();
  sub_19166B3E8();
  v4 = sub_19166C7B8();

  return sub_19159EC7C(a1, v4);
}

unint64_t sub_19159EC7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      if (sub_19166B3D8())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void _axmonitor_dyld_image_callback()
{
  v0 = dyld_image_path_containing_address();
  if (v0 && *v0)
  {
    v1 = strdup(v0);
    if (v1)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___axmonitor_dyld_image_callback_block_invoke;
      v2[3] = &__block_descriptor_40_e5_v8__0l;
      v2[4] = v1;
      AXPerformBlockOnMainThreadAfterDelay(v2, 0.5);
    }
  }
}

void ___axmonitor_dyld_image_callback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E696AEC0] stringWithCString:*(a1 + 32) encoding:4];
  v4 = +[AXBinaryMonitor sharedInstance];
  [v4 _handleLoadedImagePath:v3];

  free(*(a1 + 32));

  objc_autoreleasePoolPop(v2);
}

id AXLogCommon()
{
  if (AXLogCommon_onceToken != -1)
  {
    AXLogCommon_cold_1();
  }

  v1 = AXLogCommon___logObj;

  return v1;
}

uint64_t AXDeviceGetType()
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType;
}

id AXLogAppAccessibility()
{
  if (AXLogAppAccessibility_onceToken != -1)
  {
    AXLogAppAccessibility_cold_1();
  }

  v1 = AXLogAppAccessibility___logObj;

  return v1;
}

id AXLogPunctuationStorage()
{
  if (AXLogPunctuationStorage_onceToken != -1)
  {
    AXLogPunctuationStorage_cold_1();
  }

  v1 = AXLogPunctuationStorage___logObj;

  return v1;
}

id AXLogRTT()
{
  if (AXLogRTT_onceToken != -1)
  {
    AXLogRTT_cold_1();
  }

  v1 = AXLogRTT___logObj;

  return v1;
}

uint64_t sub_19159F050@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_19166BF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v19 - v12;
  sub_19159F354(v19 - v12);
  v14 = *(v3 - 8);
  if ((*(v14 + 48))(v13, 1, v3) == 1)
  {
    v15 = *(v5 + 8);
    v15(v13, v4);
    sub_1915DD4F0(a1);
    (*(v14 + 16))(v10, a1, v3);
    (*(v14 + 56))(v10, 0, 1, v3);
    sub_1915DFD9C(v10);
    return (v15)(v10, v4);
  }

  else
  {
    v17 = (*(v14 + 32))(a1, v13, v3);
    v19[1] = v1;
    MEMORY[0x1EEE9AC00](v17, v18);
    v19[-2] = v3;
    swift_getKeyPath();
    type metadata accessor for AXSettingRecord();
    swift_getWitnessTable();
    sub_19166B428();
  }
}

uint64_t sub_19159F2F0(uint64_t a1, uint64_t *a2)
{
  sub_1915E0A90(a1, v5, &qword_1EADAF4A8, &qword_191672420);
  v3 = *a2;
  return sub_1915DDFD4(v5);
}

id sub_19159F354@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + qword_1EADB6DB0);
  sub_1915E0B84();
  v5 = *(v3 + 80);
  sub_19166BF58();
  [v4 lock];
  sub_19159F3F0(a1);

  return [v4 unlock];
}

uint64_t sub_19159F418@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_19166BF58();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_19159F504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_19159F5CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_19159F740(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &v9[OBJC_IVAR___AXCVoiceSelection_voiceId];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR___AXCVoiceSelection_rate;
  *&v9[OBJC_IVAR___AXCVoiceSelection_rate] = 0;
  v14 = OBJC_IVAR___AXCVoiceSelection_pitch;
  *&v9[OBJC_IVAR___AXCVoiceSelection_pitch] = 0;
  v15 = OBJC_IVAR___AXCVoiceSelection_volume;
  *&v9[OBJC_IVAR___AXCVoiceSelection_volume] = 0;
  v16 = OBJC_IVAR___AXCVoiceSelection_voiceSettings;
  *&v9[OBJC_IVAR___AXCVoiceSelection_voiceSettings] = 0;
  v17 = OBJC_IVAR___AXCVoiceSelection_effects;
  *&v9[OBJC_IVAR___AXCVoiceSelection_effects] = 0;
  v18 = &v9[OBJC_IVAR___AXCVoiceSelection_boundLanguage];
  *v18 = 0;
  *(v18 + 1) = 0;
  swift_beginAccess();
  *v12 = a1;
  *(v12 + 1) = a2;
  swift_beginAccess();
  *&v9[v13] = a3;
  swift_beginAccess();
  *&v9[v14] = a4;
  swift_beginAccess();
  v19 = *&v9[v15];
  *&v9[v15] = a5;
  v20 = a3;
  v21 = a4;
  v22 = a5;

  swift_beginAccess();
  v23 = *&v9[v16];
  *&v9[v16] = a6;

  swift_beginAccess();
  v24 = *&v9[v17];
  *&v9[v17] = a7;

  swift_beginAccess();
  v25 = *(v18 + 1);
  *v18 = a8;
  *(v18 + 1) = a9;

  v33.receiver = v9;
  v33.super_class = AXCVoiceSelection;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_19159F914(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_19166B748();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

id VOTLogActivities()
{
  if (VOTLogActivities_onceToken != -1)
  {
    VOTLogActivities_cold_1();
  }

  v1 = VOTLogActivities___logObj;

  return v1;
}

uint64_t __VOTLogActivities_block_invoke()
{
  VOTLogActivities___logObj = os_log_create("com.apple.Accessibility", "VOTActivities");

  return MEMORY[0x1EEE66BB8]();
}

id sub_19159FB50(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_19166B718();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_19159FC38()
{
  v1 = v0;
  v79 = sub_19166C7E8();
  v78 = *(v79 - 8);
  v2 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79, v3);
  v80 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = MEMORY[0x1E69E7CD0];
  v7 = 1 << *(MEMORY[0x1E69E7CD0] + 32);
  v8 = *(MEMORY[0x1E69E7CD0] + 56);
  v9 = -1;
  if (v7 < 64)
  {
    v9 = ~(-1 << v7);
  }

  v10 = v9 & v8;
  v11 = (v7 + 63) >> 6;
  v12 = MEMORY[0x1E69E7CC8];
  if ((v9 & v8) != 0)
  {
LABEL_8:
    while (1)
    {
      v14 = *(*(v6 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v10)))));
      v15 = v1;
      v16 = v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v91 = v12;
      v18 = sub_19159EC10(v14);
      v20 = v12[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v12[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = v18;
          sub_1916484DC();
          v18 = v31;
        }
      }

      else
      {
        sub_1916463AC(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_19159EC10(v14);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_68;
        }
      }

      v1 = v15;
      v10 &= v10 - 1;
      v12 = v91;
      if (v24)
      {
        v26 = (*(v91 + 56) + 16 * v18);
        v27 = *v26;
        *v26 = v16;
        v26[1] = &protocol witness table for AXBaseSettings;
        swift_unknownObjectRelease();
      }

      else
      {
        *(v91 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        *(v12[6] + 8 * v18) = v14;
        v28 = (v12[7] + 16 * v18);
        *v28 = v16;
        v28[1] = &protocol witness table for AXBaseSettings;
        v29 = v12[2];
        v22 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v22)
        {
          goto LABEL_67;
        }

        v12[2] = v30;
      }

      v6 = MEMORY[0x1E69E7CD0];
      if (!v10)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_4:
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v13 + 56);
      ++v5;
      if (v10)
      {
        v5 = v13;
        goto LABEL_8;
      }
    }

    v94 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v32, v33);
    v81 = &v76 - 4;
    *(&v76 - 2) = &v94;
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    if (v34 && v1)
    {
      ObjectType = swift_getObjectType();
      v36 = v1;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF638, &qword_191672AA0);
      sub_19164ABF4(sub_19165DF38, v81, 1, ObjectType, v37);
    }

    else
    {
      v77 = &v76;
      *(&v92 + 1) = type metadata accessor for AXBaseSettings(v34);
      *&v91 = v1;
      v38 = v1;
      sub_19166C7C8();
      sub_19166C7D8();
      sub_19166C1D8();

      sub_19166C258();
      while (v93)
      {
        v89 = v91;
        sub_1915E4370(&v92, v90);
        sub_1915DFD18(v90, v86);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF638, &qword_191672AA0);
        if (swift_dynamicCast())
        {
          v82 = v83[0];
          v40 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_1915F4BC0(0, v40[2] + 1, 1, v40);
          }

          v42 = v40[2];
          v41 = v40[3];
          if (v42 >= v41 >> 1)
          {
            v40 = sub_1915F4BC0((v41 > 1), v42 + 1, 1, v40);
          }

          v40[2] = v42 + 1;
          *&v40[2 * v42 + 4] = v82;
          v94 = v40;
        }

        sub_1915DFD18(v90, v85);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0340, &unk_191676040);
        if (swift_dynamicCast())
        {
          sub_1915A04D0(v83, v86);
          v43 = v87;
          v44 = v88;
          __swift_project_boxed_opaque_existential_1(v86, v87);
          sub_19164AE00(sub_19165DF38, v81, 1, v43, v39, v44);
          sub_19159E780(&v89, &qword_1EADB0358, &unk_191675470);
          __swift_destroy_boxed_opaque_existential_1(v86);
        }

        else
        {
          sub_19159E780(&v89, &qword_1EADB0358, &unk_191675470);
          memset(v83, 0, sizeof(v83));
          v84 = 0;
          sub_19159E780(v83, &qword_1EADB0348, &unk_191676050);
        }

        sub_19166C258();
      }

      (*(v78 + 8))(v80, v79);
    }

    v45 = v94;
    v78 = v94[2];
    if (!v78)
    {
LABEL_60:

      return v12;
    }

    v46 = 0;
    v77 = v94 + 4;
    v76 = v94;
    while (v46 < v45[2])
    {
      v47 = &v77[2 * v46];
      v80 = v46 + 1;
      v49 = *v47;
      v48 = v47[1];
      v50 = swift_getObjectType();
      swift_unknownObjectRetain();
      v79 = v49;
      v51 = sub_191606640(v50, v48);
      v52 = 0;
      v54 = v51 + 8;
      v53 = v51[8];
      v81 = v51;
      v55 = 1 << *(v51 + 32);
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v57 = v56 & v53;
      v58 = (v55 + 63) >> 6;
      if ((v56 & v53) != 0)
      {
        while (1)
        {
          v59 = v52;
LABEL_48:
          v60 = __clz(__rbit64(v57)) | (v59 << 6);
          v61 = *(v81[6] + 8 * v60);
          v82 = *(v81[7] + 16 * v60);
          swift_unknownObjectRetain_n();
          v62 = swift_isUniquelyReferenced_nonNull_native();
          *&v91 = v12;
          v63 = sub_19159EC10(v61);
          v65 = v12[2];
          v66 = (v64 & 1) == 0;
          v22 = __OFADD__(v65, v66);
          v67 = v65 + v66;
          if (v22)
          {
            break;
          }

          v68 = v64;
          if (v12[3] >= v67)
          {
            if ((v62 & 1) == 0)
            {
              v74 = v63;
              sub_1916484DC();
              v63 = v74;
            }
          }

          else
          {
            sub_1916463AC(v67, v62);
            v63 = sub_19159EC10(v61);
            if ((v68 & 1) != (v69 & 1))
            {
              goto LABEL_68;
            }
          }

          v57 &= v57 - 1;
          v12 = v91;
          if (v68)
          {
            v70 = *(v91 + 56);
            v71 = *(v70 + 16 * v63);
            *(v70 + 16 * v63) = v82;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v52 = v59;
            if (!v57)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(v91 + 8 * (v63 >> 6) + 64) |= 1 << v63;
            *(v12[6] + 8 * v63) = v61;
            *(v12[7] + 16 * v63) = v82;
            swift_unknownObjectRelease();
            v72 = v12[2];
            v22 = __OFADD__(v72, 1);
            v73 = v72 + 1;
            if (v22)
            {
              goto LABEL_64;
            }

            v12[2] = v73;
            v52 = v59;
            if (!v57)
            {
              goto LABEL_45;
            }
          }
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      while (1)
      {
LABEL_45:
        v59 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
          goto LABEL_62;
        }

        if (v59 >= v58)
        {
          break;
        }

        v57 = v54[v59];
        ++v52;
        if (v57)
        {
          goto LABEL_48;
        }
      }

      swift_unknownObjectRelease();
      v46 = v80;
      v45 = v76;
      if (v80 == v78)
      {
        goto LABEL_60;
      }
    }

LABEL_65:
    __break(1u);
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

uint64_t sub_1915A04D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id AXLogIDS()
{
  if (AXLogIDS_onceToken != -1)
  {
    AXLogIDS_cold_1();
  }

  v1 = AXLogIDS___logObj;

  return v1;
}

void AXPerformBlockSynchronouslyOnMainThread(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

Swift::Bool __swiftcall AXBaseSettings.BOOLValue(forPreferenceKey:defaultValue:)(Swift::String forPreferenceKey, Swift::Bool defaultValue)
{
  v3 = v2;
  object = forPreferenceKey._object;
  countAndFlagsBits = forPreferenceKey._countAndFlagsBits;
  if ([v3 forceNewSettingsUsage] & 1) != 0 || (v26[3] = &type metadata for AccessibilityFeatureFlags, v26[4] = sub_19159DF0C(), LOBYTE(v26[0]) = 14, v7 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v26), (v7))
  {
    v8 = sub_19166B718();
    v9 = [v3 domainNameForPreferenceKey_];

    if (v9)
    {
      v10 = sub_19166B748();
      v12 = v11;

      v23 = &type metadata for AXConcreteKey;
      v24 = &protocol witness table for AXConcreteKey;
      v13 = swift_allocObject();
      *&v22 = v13;
      *(v13 + 16) = countAndFlagsBits;
      *(v13 + 24) = object;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 2;
      *(v13 + 88) = 0;
      sub_1915A04D0(&v22, v26);
      v14 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v3 + v14, &v22);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, v23);
      v17 = v16[1];

      v17(v21, v26, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      if (swift_dynamicCast())
      {
        defaultValue = v20;
      }

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }
  }

  else
  {
    v18 = sub_19166B718();
    v25.receiver = v3;
    v25.super_class = AXBaseSettings;
    defaultValue = objc_msgSendSuper2(&v25, sel_BOOLValueForPreferenceKey_defaultValue_, v18, defaultValue);
  }

  return defaultValue;
}

uint64_t AXRuntimeCheck_SupportsMedina()
{
  if (AXRuntimeCheck_SupportsMedina_onceToken != -1)
  {
    AXRuntimeCheck_SupportsMedina_cold_1();
  }

  return AXRuntimeCheck_SupportsMedina__supportsMedina;
}

BOOL AXDeviceIsPhone()
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType == 1;
}

void __AXCUProcessIsAXUIServer_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"AccessibilityUIServer"];

  if (v2)
  {
    AXCUProcessIsAXUIServer__IsAXUIServer = 1;
  }
}

id AXLogAssetLoader()
{
  if (AXLogAssetLoader_onceToken != -1)
  {
    AXLogAssetLoader_cold_1();
  }

  v1 = AXLogAssetLoader___logObj;

  return v1;
}

uint64_t __AXLogAssetLoader_block_invoke()
{
  AXLogAssetLoader___logObj = os_log_create("com.apple.Accessibility", "AXAssetLoader");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogIPC()
{
  if (AXLogIPC_onceToken != -1)
  {
    AXLogIPC_cold_1();
  }

  v1 = AXLogIPC___logObj;

  return v1;
}

uint64_t __AXLogIPC_block_invoke()
{
  AXLogIPC___logObj = os_log_create("com.apple.Accessibility", "AXIPC");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1915A0DC4(uint64_t a1, int a2)
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

uint64_t sub_1915A0DE4(uint64_t result, int a2, int a3)
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

void *sub_1915A0E2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1915A0E50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_19166B748();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1915A0E7C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1915A0EC4()
{
  v1 = sub_19166B1C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1915A0F98()
{
  v1 = sub_19166B1C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1915A1090()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A10C8()
{
  v1 = sub_19166B1C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1915A1194()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1915A11DC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v2 = sub_19166BAA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v4 | 7);
}

uint64_t sub_1915A12E8()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v2 = sub_19166BAA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v2);
  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v4 | 7);
}

uint64_t sub_1915A13FC()
{
  v1 = *(v0 + 32);
  v2 = sub_19166BBC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v4 | 7);
}

uint64_t sub_1915A14F0()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for AXFetchableStream() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 40);

  v7 = sub_19166BC08();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);
  v8 = *(v0 + v4 + v2[9] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1915A15F8()
{
  v1 = *(v0 + 32);
  v2 = sub_19166BC08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = sub_19166BBC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v11, v12 | 7);
}

uint64_t sub_1915A1754()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A178C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_19166BC08();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 28));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1915A184C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = sub_19166BC08();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1915A1908()
{
  v1 = *(v0 + 16);
  v2 = sub_19166BBC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1915A1A10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1915A1A50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1915DB1C0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1915A1AA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1915A1AD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A1B10()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1915A1BA0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1915A1C30()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1915A1D4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A1D84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1915A1DD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1915A1E24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1915A1E64()
{
  v1 = *(v0 + 32);
  v2 = sub_19166BBC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v4 | 7);
}

uint64_t sub_1915A1F4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A1F8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1915A2090()
{
  v1 = sub_19166B158();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1915A2180()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A2234()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1915A226C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1915A22A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1915A2308()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A234C()
{
  v1 = *(v0 + 4);
  v2 = sub_19166BBC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1915A241C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1915FCF54();
  *a2 = v4;
  a2[1] = v5;

  return sub_1915A4734(v4);
}

uint64_t sub_1915A2458(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1915A4734(*a1);
  return sub_1915FBAE0(v2, v3);
}

uint64_t sub_1915A24B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A2564()
{
  if (*(v0 + 24))
  {

    v1 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1915A25A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4[1] = *a1;
  result = AXSettingsAttributes.traits.getter(v4);
  *a2 = v4[0];
  return result;
}

_OWORD *sub_1915A25EC(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = &type metadata for AXSettingsTrait;
  v3[0] = v1;
  return sub_1915E0E80(v3, &type metadata for AXTraitsKey);
}

double sub_1915A2638@<D0>(uint64_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  sub_1915DFC58(*a1, v5);
  result = *v5[0].i64;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1915A2678()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A26B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1915A2740@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rate];
  *a2 = result;
  return result;
}

id sub_1915A2790@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pitch];
  *a2 = result;
  return result;
}

id sub_1915A27E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 volume];
  *a2 = result;
  return result;
}

uint64_t sub_1915A2880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1915A288C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return VoiceSelection.voiceId.setter(v1, v2);
}

uint64_t sub_1915A28D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1915A2984()
{
  v1 = *(v0 + 56);

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1915A29D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1915A2A1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC80, &qword_1916731E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1915A2B1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A2B54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC90, &qword_191673200);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1915A2CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166B1C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1915A2D94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19166B1C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

id sub_1915A2E4C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1915A2E5C()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1915A2EA4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1915A2EB8()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1915A2EF8()
{
  if (*(v0 + 16) != 1)
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1915A2F38()
{
  if (*(v0 + 24) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A2FF8()
{
  if (*(v0 + 40) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1915A315C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1915A31A4()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1915A31DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A3234(uint64_t a1, uint64_t a2)
{
  v4 = sub_19166B088();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1915A32A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_19166B088();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1915A3310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166B088();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1915A33CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19166B088();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1915A348C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1915A355C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  type metadata accessor for SWEAXStructuredDataFileHandleReader.Event();
  v4 = sub_19166BBC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 5);

  (*(v5 + 8))(&v0[v7], v4);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

uint64_t sub_1915A36C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1915A3708(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_19166B188();
  [v2 setIdentifier_];
}

void sub_1915A3768(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_19166B718();
  [v4 setEffectName_];
}

id sub_1915A37CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enabled];
  *a2 = result;
  return result;
}

uint64_t sub_1915A395C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_19164A1AC;
  a2[1] = v5;
}

uint64_t sub_1915A39CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A3A14()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1915A3A4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1915A3A9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1915A3AEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1915A3B34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1915A3B84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1915A3BD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1915A3C24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1915A3C5C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1915A3C94()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1915A3CD4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceNewSettingsUsage];
  *a2 = result;
  return result;
}

uint64_t sub_1915A3D1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AXBaseSettings.selectorToPrefGroups.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1915A3D48(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups);
  *(*a2 + OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups) = *a1;
}

uint64_t sub_1915A3D94()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1915A3DCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A3E04()
{
  MEMORY[0x193AFED00](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1915A3E3C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1915A3EA0()
{
  MEMORY[0x193AFED00](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1915A3ED8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1915A3FC0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1915A4040()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = sub_19166BC08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_19166BBC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  v14 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], v3);
  v15 = *&v0[v7 + 8];

  (*(v9 + 8))(&v0[v11], v8);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v12, v13 | 7);
}

uint64_t sub_1915A41B0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1915A41E8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = sub_19166BC08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_19166BBC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = v5 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], v3);
  (*(v9 + 8))(&v0[v11], v8);
  v15 = *&v0[v13];

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v12 | 7);
}

uint64_t sub_1915A4354()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = sub_19166BC08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_19166BBC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = v5 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], v3);
  (*(v9 + 8))(&v0[v11], v8);
  v15 = *&v0[v13 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v13 + 16, v12 | 7);
}

uint64_t sub_1915A44D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1915A4508@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AudioEffectConfiguration();
  *a2 = *(a1 + *(result + 32));
  return result;
}

unint64_t sub_1915A4540(char *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + *(type metadata accessor for AudioEffectConfiguration() + 32)) = v2;
  return sub_191664AE8();
}

uint64_t sub_1915A4578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166B1C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1915A4638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19166B1C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1915A4734(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id getAXSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXSettingsClass_softClass;
  v7 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXSettingsClass_block_invoke;
    v3[3] = &unk_1E735AD40;
    v3[4] = &v4;
    __getAXSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1915A4B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E735AD60;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1915A5BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__5(uint64_t a1)
{
}

{
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

uint64_t AXCurrentProcessExistsInLoginSessionSBOnly()
{
  if (AXDeviceIsMultiUser())
  {
    return MKBUserSessionIsLoginWindow();
  }

  else
  {
    return 0;
  }
}

uint64_t AXDeviceIsMultiUser()
{
  v0 = MKBUserTypeDeviceMode();
  v1 = [v0 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69B1A18]];

  return v2;
}

uint64_t AXProcessIsPreBoard()
{
  if (AXProcessIsPreBoard_onceToken != -1)
  {
    AXProcessIsPreBoard_cold_1();
  }

  return AXProcessIsPreBoard_AXProcessIsPreBoard;
}

void __AXProcessIsPreBoard_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.PreBoard"];

  if (v1)
  {
    AXProcessIsPreBoard_AXProcessIsPreBoard = 1;
  }
}

id AXApplicationGetMainBundleIdentifier()
{
  if (AXApplicationGetMainBundleIdentifier__AXApplicationMainBundleIdentifierOnceToken != -1)
  {
    AXApplicationGetMainBundleIdentifier_cold_1();
  }

  v1 = AXApplicationGetMainBundleIdentifier__AXApplicationMainBundleIdentifier;

  return v1;
}

uint64_t AXProcessIsPreferences()
{
  if (AXProcessIsPreferences_token != -1)
  {
    AXProcessIsPreferences_cold_1();
  }

  return AXProcessIsPreferences__AXIsProcess;
}

void __AXProcessIsPreferences_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.Preferences"];

  if (v1)
  {
    AXProcessIsPreferences__AXIsProcess = 1;
  }
}

uint64_t AXProcessIsCarPlay()
{
  if (AXProcessIsCarPlay_onceToken != -1)
  {
    AXProcessIsCarPlay_cold_1();
  }

  return AXProcessIsCarPlay__AXProcessIsCarPlay;
}

void __AXProcessIsCarPlay_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.CarPlayApp"];

  if (v1)
  {
    AXProcessIsCarPlay__AXProcessIsCarPlay = 1;
  }
}

uint64_t AXProcessIsMobileMail()
{
  if (AXProcessIsMobileMail__AXProcessIsMobileMailOnceToken != -1)
  {
    AXProcessIsMobileMail_cold_1();
  }

  return AXProcessIsMobileMail__AXProcessIsMobileMail;
}

void __AXProcessIsMobileMail_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.mobilemail"];

  if (v1)
  {
    AXProcessIsMobileMail__AXProcessIsMobileMail = 1;
  }
}

uint64_t AXProcessIsMomentsUIService()
{
  if (AXProcessIsMomentsUIService__AXProcessIsMobileMailOnceToken != -1)
  {
    AXProcessIsMomentsUIService_cold_1();
  }

  return AXProcessIsMomentsUIService__AXProcessIsMomentsUIService;
}

void __AXProcessIsMomentsUIService_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.MomentsUIService"];

  if (v1)
  {
    AXProcessIsMomentsUIService__AXProcessIsMomentsUIService = 1;
  }
}

uint64_t AXProcessIsSpringBoard()
{
  if (AXProcessIsSpringBoard__AXProcessIsSpringBoardOnceToken != -1)
  {
    AXProcessIsSpringBoard_cold_1();
  }

  return AXProcessIsSpringBoard__AXProcessIsSpringBoard;
}

void __AXProcessIsSpringBoard_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.springboard"];

  if (v1)
  {
    AXProcessIsSpringBoard__AXProcessIsSpringBoard = 1;
  }
}

uint64_t AXProcessIsChronod()
{
  if (AXProcessIsChronod__AXProcessIsChronodOnceToken != -1)
  {
    AXProcessIsChronod_cold_1();
  }

  return AXProcessIsChronod__AXProcessIsChronod;
}

void __AXProcessIsChronod_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.chronod"];

  if (v1)
  {
    AXProcessIsChronod__AXProcessIsChronod = 1;
  }
}

uint64_t AXProcessIsPosterBoard()
{
  if (AXProcessIsPosterBoard__AXProcessIsPosterBoardOnceToken != -1)
  {
    AXProcessIsPosterBoard_cold_1();
  }

  return AXProcessIsPosterBoard__AXProcessIsPosterBoard;
}

void __AXProcessIsPosterBoard_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.PosterBoard"];

  if (v1)
  {
    AXProcessIsPosterBoard__AXProcessIsPosterBoard = 1;
  }
}

uint64_t AXProcessIsAXSettingsShortcutsPlugin()
{
  if (AXProcessIsAXSettingsShortcutsPlugin__AXProcessIsAXSettingsShortcutsPluginOnceToken != -1)
  {
    AXProcessIsAXSettingsShortcutsPlugin_cold_1();
  }

  return AXProcessIsAXSettingsShortcutsPlugin__AXProcessIsAXSettingsShortcutsPlugin;
}

void __AXProcessIsAXSettingsShortcutsPlugin_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.AccessibilityUtilities.AXSettingsShortcuts"];

  if (v1)
  {
    AXProcessIsAXSettingsShortcutsPlugin__AXProcessIsAXSettingsShortcutsPlugin = 1;
  }
}

uint64_t AXProcessIsPineBoard()
{
  if (AXProcessIsPineBoard__AXProcessIsPineBoardOnceToken != -1)
  {
    AXProcessIsPineBoard_cold_1();
  }

  return AXProcessIsPineBoard__AXProcessIsPineBoard;
}

void __AXProcessIsPineBoard_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.PineBoard"];

  if (v1)
  {
    AXProcessIsPineBoard__AXProcessIsPineBoard = 1;
  }
}

uint64_t AXProcessIsClarityBoard()
{
  if (AXProcessIsClarityBoard__AXProcessIsClarityBoardOnceToken != -1)
  {
    AXProcessIsClarityBoard_cold_1();
  }

  return AXProcessIsClarityBoard__AXProcessIsClarityBoard;
}

void __AXProcessIsClarityBoard_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.ClarityBoard"];

  if (v1)
  {
    AXProcessIsClarityBoard__AXProcessIsClarityBoard = 1;
  }
}

uint64_t AXProcessIsSurfBoard()
{
  if (AXProcessIsSurfBoard__AXProcessIsPineBoardOnceToken != -1)
  {
    AXProcessIsSurfBoard_cold_1();
  }

  return AXProcessIsSurfBoard__AXProcessIsSurfBoard;
}

void __AXProcessIsSurfBoard_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.SurfBoard"];

  if (v1)
  {
    AXProcessIsSurfBoard__AXProcessIsSurfBoard = 1;
  }
}

uint64_t AXProcessIsCheckerBoard()
{
  if (AXProcessIsCheckerBoard__AXProcessIsCheckerBoardOnceToken != -1)
  {
    AXProcessIsCheckerBoard_cold_1();
  }

  return AXProcessIsCheckerBoard__AXProcessIsCheckerBoard;
}

void __AXProcessIsCheckerBoard_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.CheckerBoard"];

  if (v1)
  {
    AXProcessIsCheckerBoard__AXProcessIsCheckerBoard = 1;
  }
}

uint64_t AXProcessIsSystemApplication()
{
  if (AXProcessIsSystemApplication__OnceToken != -1)
  {
    AXProcessIsSystemApplication_cold_1();
  }

  if (AXProcessIsSpringBoard__AXProcessIsSpringBoardOnceToken != -1)
  {
    AXProcessIsSpringBoard_cold_1();
  }

  if (AXProcessIsSpringBoard__AXProcessIsSpringBoard)
  {
    return 1;
  }

  if (AXProcessIsPineBoard__AXProcessIsPineBoardOnceToken != -1)
  {
    AXProcessIsPineBoard_cold_1();
  }

  if (AXProcessIsPineBoard__AXProcessIsPineBoard)
  {
    return 1;
  }

  if (AXProcessIsCarousel__AXProcessIsCarouselOnceToken != -1)
  {
    AXProcessIsSystemApplication_cold_4();
  }

  if (AXProcessIsCarousel__AXProcessIsCarousel)
  {
    return 1;
  }

  if (AXProcessIsClarityBoard__AXProcessIsClarityBoardOnceToken != -1)
  {
    AXProcessIsClarityBoard_cold_1();
  }

  if (AXProcessIsClarityBoard__AXProcessIsClarityBoard)
  {
    return 1;
  }

  if (AXProcessIsSurfBoard__AXProcessIsPineBoardOnceToken != -1)
  {
    AXProcessIsSurfBoard_cold_1();
  }

  if (AXProcessIsSurfBoard__AXProcessIsSurfBoard)
  {
    return 1;
  }

  v1 = AXProcessIsSystemApplication_app;

  return [v1 _accessibilityInterposesAsSystemApplication];
}

uint64_t __AXProcessIsSystemApplication_block_invoke()
{
  AXProcessIsSystemApplication_app = [NSClassFromString(&cfstr_Uiapplication.isa) safeValueForKey:@"sharedApplication"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AXProcessIsCarousel()
{
  if (AXProcessIsCarousel__AXProcessIsCarouselOnceToken != -1)
  {
    AXProcessIsSystemApplication_cold_4();
  }

  return AXProcessIsCarousel__AXProcessIsCarousel;
}

uint64_t AXProcessIsSiri()
{
  if (AXProcessIsSiri__AXProcessIsSiriOnceToken != -1)
  {
    AXProcessIsSiri_cold_1();
  }

  return AXProcessIsSiri__AXProcessIsSiri;
}

void __AXProcessIsSiri_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.siri"];

  if (v1)
  {
    AXProcessIsSiri__AXProcessIsSiri = 1;
  }
}

uint64_t AXProcessIsSpotlight()
{
  if (AXProcessIsSpotlight__AXProcessIsSpotlightOnceToken != -1)
  {
    AXProcessIsSpotlight_cold_1();
  }

  return AXProcessIsSpotlight__AXProcessIsSpotlight;
}

void __AXProcessIsSpotlight_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.Spotlight"];

  if (v1)
  {
    AXProcessIsSpotlight__AXProcessIsSpotlight = 1;
  }
}

uint64_t AXProcessIsInCallService()
{
  if (AXProcessIsInCallService_onceToken != -1)
  {
    AXProcessIsInCallService_cold_1();
  }

  return AXProcessIsInCallService_AXIsInCallService;
}

void __AXProcessIsInCallService_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  AXProcessIsInCallService_AXIsInCallService = [v0 isEqualToString:@"com.apple.InCallService"];
}

uint64_t AXProcessIsRTTNotificationContentExtension()
{
  if (AXProcessIsRTTNotificationContentExtension_onceToken != -1)
  {
    AXProcessIsRTTNotificationContentExtension_cold_1();
  }

  return AXProcessIsRTTNotificationContentExtension_AXIsRTTNotificationContentExtension;
}

void __AXProcessIsRTTNotificationContentExtension_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  AXProcessIsRTTNotificationContentExtension_AXIsRTTNotificationContentExtension = [v0 isEqualToString:@"com.apple.accessibility.RTTUI.RTTNotifications"];
}

uint64_t AXProcessIsSafari()
{
  if (AXProcessIsSafari_onceToken != -1)
  {
    AXProcessIsSafari_cold_1();
  }

  return AXProcessIsSafari_AXIsSafari;
}

void __AXProcessIsSafari_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  AXProcessIsSafari_AXIsSafari = [v0 isEqualToString:@"com.apple.mobilesafari"];
}

uint64_t AXProcessIsWidgetRenderer()
{
  if (AXProcessIsWidgetRenderer_onceToken != -1)
  {
    AXProcessIsWidgetRenderer_cold_1();
  }

  return AXProcessIsWidgetRenderer__AXProcessIsWidgetRenderer;
}

void __AXProcessIsWidgetRenderer_block_invoke()
{
  v0 = AXProcessGetName();
  v1 = [v0 isEqualToString:@"WidgetRenderer_Default"];

  if (v1)
  {
    AXProcessIsWidgetRenderer__AXProcessIsWidgetRenderer = 1;
  }
}

id AXProcessGetName()
{
  if (AXProcessGetName__AXProcessNameOnceToken != -1)
  {
    AXProcessGetName_cold_1();
  }

  v1 = AXProcessGetName__AXProcessName;

  return v1;
}

uint64_t AXProcessIsWidgetRendererWatchFaces()
{
  if (AXProcessIsWidgetRendererWatchFaces_onceToken != -1)
  {
    AXProcessIsWidgetRendererWatchFaces_cold_1();
  }

  return AXProcessIsWidgetRendererWatchFaces__AXProcessIsWidgetRendererWatchFaces;
}

void __AXProcessIsWidgetRendererWatchFaces_block_invoke()
{
  v0 = AXProcessGetName();
  v1 = [v0 isEqualToString:@"WidgetRenderer_WatchFaces"];

  if (v1)
  {
    AXProcessIsWidgetRendererWatchFaces__AXProcessIsWidgetRendererWatchFaces = 1;
  }
}

uint64_t AXProcessIsInputUI()
{
  if (AXProcessIsInputUI_onceToken != -1)
  {
    AXProcessIsInputUI_cold_1();
  }

  return AXProcessIsInputUI_AXProcessIsInputUI;
}

void __AXProcessIsInputUI_block_invoke()
{
  v0 = AXProcessGetName();
  AXProcessIsInputUI_AXProcessIsInputUI = [v0 isEqualToString:@"InputUI"];
}

uint64_t AXProcessIsShortcuts()
{
  if (AXProcessIsShortcuts_onceToken != -1)
  {
    AXProcessIsShortcuts_cold_1();
  }

  return AXProcessIsShortcuts_AXProcessIsShortcuts;
}

void __AXProcessIsShortcuts_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  AXProcessIsShortcuts_AXProcessIsShortcuts = [v0 isEqualToString:@"com.apple.shortcuts"];
}

uint64_t AXProcessIsStickerPickerService()
{
  if (AXProcessIsStickerPickerService_onceToken != -1)
  {
    AXProcessIsStickerPickerService_cold_1();
  }

  return AXProcessIsStickerPickerService_AXProcessIsStickerPickerService;
}

void __AXProcessIsStickerPickerService_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  AXProcessIsStickerPickerService_AXProcessIsStickerPickerService = [v0 isEqualToString:@"com.apple.StickerKit.StickerPickerService"];
}

void __AXProcessIsCarousel_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.Carousel"];

  if (v1)
  {
    AXProcessIsCarousel__AXProcessIsCarousel = 1;
  }
}

uint64_t AXProcessIsClockFace()
{
  if (AXProcessIsClockFace__AXProcessIsClockFaceOnceToken != -1)
  {
    AXProcessIsClockFace_cold_1();
  }

  return AXProcessIsClockFace__AXProcessIsClockFace;
}

void __AXProcessIsClockFace_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.clockface"];

  if (v1)
  {
    AXProcessIsClockFace__AXProcessIsClockFace = 1;
  }
}

uint64_t AXProcessIsBackboard()
{
  if (AXProcessIsBackboard_Once != -1)
  {
    AXProcessIsBackboard_cold_1();
  }

  return AXProcessIsBackboard__AXProcessIsBackboard;
}

void __AXProcessIsBackboard_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.backboardd"];

  if (v1)
  {
    AXProcessIsBackboard__AXProcessIsBackboard = 1;
  }
}

uint64_t AXProcessIsAccessibilityAppIntents()
{
  if (AXProcessIsAccessibilityAppIntents_onceToken != -1)
  {
    AXProcessIsAccessibilityAppIntents_cold_1();
  }

  return AXProcessIsAccessibilityAppIntents__IsAccessibilityAppIntents;
}

void __AXProcessIsAccessibilityAppIntents_block_invoke()
{
  v0 = AXProcessGetName();
  v1 = [v0 isEqualToString:@"AccessibilityAppIntents"];

  if (v1)
  {
    AXProcessIsAccessibilityAppIntents__IsAccessibilityAppIntents = 1;
  }
}

uint64_t AXProcessIsCommandAndControl()
{
  if (AXProcessIsCommandAndControl_onceToken != -1)
  {
    AXProcessIsCommandAndControl_cold_1();
  }

  return AXProcessIsCommandAndControl__IsCommandAndControl;
}

void __AXProcessIsCommandAndControl_block_invoke()
{
  v0 = AXProcessGetName();
  v1 = [v0 isEqualToString:@"CommandAndControl"];

  if (v1)
  {
    AXProcessIsCommandAndControl__IsCommandAndControl = 1;
  }
}

uint64_t AXProcessIsFullKeyboardAccess()
{
  if (AXProcessIsFullKeyboardAccess_onceToken != -1)
  {
    AXProcessIsFullKeyboardAccess_cold_1();
  }

  return AXProcessIsFullKeyboardAccess__IsFullKeyboardAccess;
}

void __AXProcessIsFullKeyboardAccess_block_invoke()
{
  v0 = AXProcessGetName();
  v1 = [v0 isEqualToString:@"com.apple.FullKeyboardAccess"];

  if (v1)
  {
    AXProcessIsFullKeyboardAccess__IsFullKeyboardAccess = 1;
  }
}

uint64_t AXProcessIsAppleTVApp()
{
  if (AXProcessIsAppleTVApp_onceToken != -1)
  {
    AXProcessIsAppleTVApp_cold_1();
  }

  return AXProcessIsAppleTVApp__IsAppleTVApp;
}

void __AXProcessIsAppleTVApp_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.tv"];

  if (v1)
  {
    AXProcessIsAppleTVApp__IsAppleTVApp = 1;
  }
}

uint64_t AXProcessIsPhotos()
{
  if (AXProcessIsPhotos_onceToken != -1)
  {
    AXProcessIsPhotos_cold_1();
  }

  return AXProcessIsPhotos__IsPhotos;
}

void __AXProcessIsPhotos_block_invoke()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.mobileslideshow"];

  if (v1)
  {
    AXProcessIsPhotos__IsPhotos = 1;
  }
}

BOOL AXApplicationIsForeground()
{
  v0 = [(objc_class *)AXSafeClassFromString(&cfstr_Uiapplication.isa) safeValueForKey:@"sharedApplication"];
  v1 = [v0 safeValueForKey:@"applicationState"];
  v2 = [v1 integerValue] == 0;

  return v2;
}

uint64_t AXApplicationIsViewService()
{
  if (AXApplicationIsViewService_onceToken != -1)
  {
    AXApplicationIsViewService_cold_1();
  }

  return AXApplicationIsViewService_IsViewService;
}

void __AXApplicationIsViewService_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v2 = [v1 objectForKey:@"SBMachServices"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 containsString:{@"com.apple.uikit.viewservice", v10}])
          {
            AXApplicationIsViewService_IsViewService = 1;
            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __AXProcessGetName_block_invoke()
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v3 processName];
  v1 = [v0 copy];
  v2 = AXProcessGetName__AXProcessName;
  AXProcessGetName__AXProcessName = v1;
}

void __AXApplicationGetMainBundleIdentifier_block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v3 bundleIdentifier];
  v1 = [v0 copy];
  v2 = AXApplicationGetMainBundleIdentifier__AXApplicationMainBundleIdentifier;
  AXApplicationGetMainBundleIdentifier__AXApplicationMainBundleIdentifier = v1;
}

id AXProcessGetCurrentUserDescription()
{
  v0 = getuid();
  v1 = getpwuid(v0);
  if (v1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"user named '%s'", v1->pw_name];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"user with identifier '%lu'", v0];
  }
  v2 = ;

  return v2;
}

uint64_t AXSafeEqual(unint64_t cf1, unint64_t a2)
{
  if (!(cf1 | a2))
  {
    return 1;
  }

  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2);
    }
  }

  return result;
}

uint64_t AXSystemGetVersion()
{
  if (AXSystemGetVersion__AXSystemVersionOnceToken != -1)
  {
    AXSystemGetVersion_cold_1();
  }

  return AXSystemGetVersion__AXSystemVersion;
}

void __AXSystemGetVersion_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = v1;
      if ([v3 hasPrefix:@"5.0"])
      {
        v4 = 2;
      }

      else if ([v3 hasPrefix:@"5.1"])
      {
        v4 = 1;
      }

      else if ([v3 hasPrefix:@"6.0"])
      {
        v4 = 3;
      }

      else if ([v3 hasPrefix:@"6.1"])
      {
        v4 = 4;
      }

      else if ([v3 hasPrefix:@"7.0"])
      {
        v4 = 5;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    v4 = 0;
  }

  AXSystemGetVersion__AXSystemVersion = v4;
}

BOOL AXIsLanguageRTL()
{
  v0 = MEMORY[0x1E695DF58];
  v1 = [MEMORY[0x1E695DF58] preferredLanguages];
  v2 = [v1 objectAtIndex:0];
  v3 = [v0 characterDirectionForLanguage:v2];

  return v3 == 2;
}

uint64_t AXIsAnyPreferredLanguageRTL()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = [MEMORY[0x1E695DF58] preferredLanguages];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __AXIsAnyPreferredLanguageRTL_block_invoke;
  v3[3] = &unk_1E735B0D0;
  v3[4] = &v4;
  [v0 enumerateObjectsUsingBlock:v3];

  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1915A807C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXIsAnyPreferredLanguageRTL_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [MEMORY[0x1E695DF58] characterDirectionForLanguage:a2];
  if (result == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

BOOL AXSystemVersionEqualTo(uint64_t a1)
{
  if (AXSystemGetVersion__AXSystemVersionOnceToken != -1)
  {
    AXSystemGetVersion_cold_1();
  }

  return AXSystemGetVersion__AXSystemVersion == a1;
}

BOOL AXSystemVersionEqualToOrGreaterThan(unint64_t a1)
{
  if (AXSystemGetVersion__AXSystemVersionOnceToken != -1)
  {
    AXSystemGetVersion_cold_1();
  }

  return AXSystemGetVersion__AXSystemVersion >= a1;
}

BOOL AXSystemVersionEqualToOrLessThan(unint64_t a1)
{
  if (AXSystemGetVersion__AXSystemVersionOnceToken != -1)
  {
    AXSystemGetVersion_cold_1();
  }

  return AXSystemGetVersion__AXSystemVersion <= a1;
}

BOOL AXSystemIsSundance()
{
  if (AXSystemGetVersion__AXSystemVersionOnceToken != -1)
  {
    AXSystemGetVersion_cold_1();
  }

  return AXSystemGetVersion__AXSystemVersion == 3;
}

BOOL AXSystemIsBrighton()
{
  if (AXSystemGetVersion__AXSystemVersionOnceToken != -1)
  {
    AXSystemGetVersion_cold_1();
  }

  return AXSystemGetVersion__AXSystemVersion == 4;
}

BOOL AXSystemIsInnsbruck()
{
  if (AXSystemGetVersion__AXSystemVersionOnceToken != -1)
  {
    AXSystemGetVersion_cold_1();
  }

  return AXSystemGetVersion__AXSystemVersion == 5;
}

uint64_t AXIsInternalInstall()
{
  if (AXIsInternalInstall__AXIsInternalInstallOnceToken != -1)
  {
    AXIsInternalInstall_cold_1();
  }

  return AXIsInternalInstall__AXIsInternalInstall;
}

void __AXIsInternalInstall_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      AXIsInternalInstall__AXIsInternalInstall = CFBooleanGetValue(v1) != 0;
    }

    CFRelease(v1);
  }
}

uint64_t AXCurrentRootLooksLikeBNI()
{
  if (AXCurrentRootLooksLikeBNI_onceToken != -1)
  {
    AXCurrentRootLooksLikeBNI_cold_1();
  }

  return AXCurrentRootLooksLikeBNI_looksLikeBNI;
}

uint64_t __AXCurrentRootLooksLikeBNI_block_invoke()
{
  v7 = [@"/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries" lastPathComponent];
  if ([v7 hasPrefix:@"AccessibilityFrameworks-"])
  {
    v0 = [v7 rangeOfString:@"AccessibilityFrameworks-"];
    v2 = [v7 substringFromIndex:v0 + v1];
    v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"1234567890.-"];
    v4 = [v3 invertedSet];
    v5 = [v2 rangeOfCharacterFromSet:v4];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      AXCurrentRootLooksLikeBNI_looksLikeBNI = 1;
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

id AXCurrentRootDescription()
{
  if (AXCurrentRootDescription_onceToken != -1)
  {
    AXCurrentRootDescription_cold_1();
  }

  v1 = AXCurrentRootDescription_rootDescription;

  return v1;
}

uint64_t __AXCurrentRootDescription_block_invoke()
{
  v10 = [@"/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries" lastPathComponent];
  objc_storeStrong(&AXCurrentRootDescription_rootDescription, v10);
  if ([v10 isEqualToString:@"Accessibility"])
  {
    v0 = AXCurrentRootDescription_rootDescription;
    AXCurrentRootDescription_rootDescription = @"Release Root";
  }

  if (AXCurrentRootLooksLikeBNI_onceToken != -1)
  {
    AXCurrentRootLooksLikeBNI_cold_1();
  }

  if (AXCurrentRootLooksLikeBNI_looksLikeBNI == 1)
  {
    v1 = v10;
    v2 = AXCurrentRootDescription_rootDescription;
    AXCurrentRootDescription_rootDescription = v1;
LABEL_7:

    goto LABEL_14;
  }

  if ([v10 hasPrefix:@"AccessibilityFrameworks-SHA__"] && objc_msgSend(v10, "hasSuffix:", @"_Frameworks_Accessibility"))
  {
    v3 = [v10 rangeOfString:@"_Frameworks_Accessibility"];
    v4 = [@"AccessibilityFrameworks-SHA__" length];
    v5 = [@"AccessibilityFrameworks-SHA__" length];
    if ((v3 - v5) >= 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = v3 - v5;
    }

    v2 = [v10 substringWithRange:{v4, v6}];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ATP Root: %@", v2];
    v8 = AXCurrentRootDescription_rootDescription;
    AXCurrentRootDescription_rootDescription = v7;

    goto LABEL_7;
  }

LABEL_14:

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AXSpawnProcess(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 count];
  v37[1] = v37;
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (v37 - v11);
  if (v10 >= 0x200)
  {
    v13 = 512;
  }

  else
  {
    v13 = v10;
  }

  bzero(v37 - v11, v13);
  *v12 = [v5 UTF8String];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    v18 = 1;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v12[v18++] = [*(*(&v42 + 1) + 8 * i) UTF8String];
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 1;
  }

  v12[v18] = 0;
  v20 = [v7 count];
  MEMORY[0x1EEE9AC00](v20, v21);
  v24 = (v37 - v23);
  if (v22 >= 0x200)
  {
    v25 = 512;
  }

  else
  {
    v25 = v22;
  }

  bzero(v37 - v23, v25);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v7;
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v39;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v24[v29++] = [*(*(&v38 + 1) + 8 * j) UTF8String];
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v24[v29] = 0;
  v32 = *v12;
  if ([v26 count])
  {
    v33 = v24;
  }

  else
  {
    v33 = 0;
  }

  v34 = posix_spawn(0, v32, 0, 0, v12, v33);

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t AXPidForLaunchLabel(void *a1)
{
  v1 = a1;
  v2 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  v3 = [v1 UTF8String];

  v4 = MEMORY[0x193AFE010](v3);
  launch_data_dict_insert(v2, v4, "GetJob");
  v5 = launch_msg(v2);
  MEMORY[0x193AFDFE0](v2);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (launch_data_get_type(v5) == LAUNCH_DATA_DICTIONARY && (v6 = launch_data_dict_lookup(v5, "PID")) != 0 && (v7 = v6, launch_data_get_type(v6) == LAUNCH_DATA_INTEGER))
  {
    v8 = MEMORY[0x193AFDFF0](v7);
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  MEMORY[0x193AFDFE0](v5);
  return v8;
}

void AXLoadAccessibilityDebuggerIfNeeded()
{
  if (AXIsInternalInstall__AXIsInternalInstallOnceToken != -1)
  {
    AXIsInternalInstall_cold_1();
  }

  if (AXIsInternalInstall__AXIsInternalInstall == 1)
  {
    if (AXProcessIsBackboard_Once != -1)
    {
      AXLoadAccessibilityDebuggerIfNeeded_cold_2();
    }

    if ((AXProcessIsBackboard__AXProcessIsBackboard & 1) == 0)
    {
      v0 = [MEMORY[0x1E696AC08] defaultManager];
      v1 = [v0 fileExistsAtPath:@"/System/Library/PrivateFrameworks/AccessibilityDebuggerTarget.framework"];

      if (v1)
      {
        v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/AccessibilityDebuggerTarget.framework"];
        v3 = v2;
        if (v2 && ([v2 isLoaded] & 1) == 0)
        {
          v7 = 0;
          v4 = [v3 loadAndReturnError:&v7];
          v5 = v7;
          if (v4)
          {
            v6 = [v3 principalClass];
            if (objc_opt_respondsToSelector())
            {
              [v6 performSelector:sel_target];
            }

            else
            {
              _AXLogWithFacility(0, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, @"Principal class :%@. does not respond to expected 'target' class method");
            }
          }

          else
          {
            _AXLogWithFacility(0, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, @"Error: Unable to load AccessibilityDebuggerTarget framework: %@ ");
          }
        }
      }
    }
  }
}

uint64_t AXIsLookingGlassAvailable()
{
  if (AXIsInternalInstall__AXIsInternalInstallOnceToken != -1)
  {
    AXIsInternalInstall_cold_1();
  }

  return AXIsInternalInstall__AXIsInternalInstall;
}

unint64_t AXMachTimeToNanoseconds(unint64_t a1)
{
  if (AXMachTimeToNanoseconds_onceToken != -1)
  {
    AXMachTimeToNanoseconds_cold_1();
  }

  return (*&AXMachTimeToNanoseconds_scale * a1);
}

double __AXMachTimeToNanoseconds_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1;
    AXMachTimeToNanoseconds_scale = *&result;
  }

  return result;
}

id AXInstalledAppIDs(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = AXInstalledApps(a1);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

id AXInstalledApps(int a1)
{
  v1 = [MEMORY[0x1E69635F0] enumeratorWithOptions:0];
  v19 = objc_opt_new();
  v2 = [v1 nextObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = [v3 URL];
      v5 = [v4 pathComponents];

      v6 = [v3 infoDictionary];
      v7 = [v6 objectForKey:@"SBIconVisibilityDefaultVisible" ofClass:objc_opt_class()];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 containsObject:@"AppleInternal"] & 1) == 0 && (objc_msgSend(v5, "containsObject:", @"CoreServices") & 1) == 0 && (objc_msgSend(v3, "isLaunchProhibited") & 1) == 0)
      {
        v8 = [v3 appTags];
        if (![v8 containsObject:@"hidden"])
        {
          v9 = [v3 appTags];
          if (([v9 containsObject:@"Hidden"] & 1) == 0 && (!v7 || objc_msgSend(v7, "BOOLValue")))
          {
            v10 = [v3 bundleIdentifier];
            if (v10)
            {
              v16 = v10;
              v11 = [v3 bundleIdentifier];
              v17 = v11;
              if (AXShowInstalledApp_onceToken == -1)
              {
                v12 = v11;
              }

              else
              {
                AXInstalledApps_cold_1();
                v12 = v17;
              }

              v15 = [AXShowInstalledApp_AXHiddenApps containsObject:v12];

              if ((v15 & 1) == 0)
              {
                [v19 addObject:v3];
              }

              goto LABEL_18;
            }
          }
        }
      }

LABEL_18:

      v13 = [v1 nextObject];

      v3 = v13;
    }

    while (v13);
  }

  if (a1)
  {
    [v19 sortUsingComparator:&__block_literal_global_425];
  }

  return v19;
}

id AXAppNameForBundleId(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.springboard"])
  {
    v2 = @"HOME_SCREEN";
LABEL_5:
    v3 = soft_AXSettingsLocalizedStringForKey(v2);
    goto LABEL_11;
  }

  if ([v1 isEqualToString:@"com.apple.UIKit.activity.AirDrop"])
  {
    v2 = @"AIRDROP";
    goto LABEL_5;
  }

  v8 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F0]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = AXLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      AXAppNameForBundleId_cold_1(v5);
    }
  }

  v3 = [v4 localizedName];

LABEL_11:

  return v3;
}

id soft_AXSettingsLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getAXSettingsLocalizedStringForKeySymbolLoc_ptr;
  v11 = getAXSettingsLocalizedStringForKeySymbolLoc_ptr;
  if (!getAXSettingsLocalizedStringForKeySymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getAXSettingsLocalizedStringForKeySymbolLoc_block_invoke;
    v7[3] = &unk_1E735AD40;
    v7[4] = &v8;
    __getAXSettingsLocalizedStringForKeySymbolLoc_block_invoke(v7);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    soft_AXSettingsLocalizedStringForKey_cold_1();
    v6 = v5;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v3 = v2(v1);

  return v3;
}

uint64_t AXIsHiddenAppWithBundleId(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.springboard"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.UIKit.activity.AirDrop"))
  {
    v2 = 0;
  }

  else
  {
    v7 = 0;
    v3 = [objc_alloc(MEMORY[0x1E69635F0]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = AXLogSettings();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        AXIsHiddenAppWithBundleId_cold_1(v4);
      }
    }

    v2 = [v3 appProtectionHidden];
  }

  return v2;
}

id AXWatchAppNameForBundleId(void *a1)
{
  v1 = a1;
  v2 = AXAppNameForBundleId(v1);
  if (!v2)
  {
    if (getCSLPRFApplicationLibraryClass())
    {
      v3 = [getCSLPRFApplicationLibraryClass() sharedLibraryForLocation:0];
      v4 = [v3 applicationWithBundleIdentifier:v1];

      v2 = [v4 localizedName];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id getCSLPRFApplicationLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSLPRFApplicationLibraryClass_softClass;
  v7 = getCSLPRFApplicationLibraryClass_softClass;
  if (!getCSLPRFApplicationLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCSLPRFApplicationLibraryClass_block_invoke;
    v3[3] = &unk_1E735AD40;
    v3[4] = &v4;
    __getCSLPRFApplicationLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1915A94A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXInstalledApps_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedName];
  v6 = [v4 localizedName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

double AXRGBToHSB(void *a1, double *a2, double *a3, int8x16_t a4, int8x16_t a5, double a6)
{
  if (*a4.i64 < *a5.i64 || *a4.i64 < a6)
  {
    if (*a5.i64 >= *a4.i64)
    {
      v7 = *a4.i64;
    }

    else
    {
      v7 = *a5.i64;
    }

    if (*a4.i64 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = *a4.i64;
    }

    v9 = *a5.i64 < *a4.i64 || *a5.i64 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = *a5.i64;
    }
  }

  else
  {
    if (*a5.i64 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = *a5.i64;
    }

    v11 = *a4.i64;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - *a5.i64) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == *a4.i64)
      {
        if (v10 == *a5.i64)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == *a5.i64;
        v19 = (v11 - *a4.i64) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == *a4.i64)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  *a4.i64 = v12 / 6.0;
  *a5.i64 = v12 / 6.0 - trunc(v12 / 6.0);
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v17), a5, a4).u64[0];
  *a1 = a4.i64[0];
  *a2 = v14;
  return *a4.i64;
}

uint64_t _AXTriggerStackshot()
{
  v0 = _AXTriggerStackshot___gWriteStackshotReportFunction;
  if (_AXTriggerStackshot___gWriteStackshotReportFunction)
  {
    goto LABEL_5;
  }

  result = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  if (result)
  {
    v2 = result;
    _AXTriggerStackshot___gWriteStackshotReportFunction = dlsym(result, "WriteStackshotReport");
    result = dlclose(v2);
  }

  v0 = _AXTriggerStackshot___gWriteStackshotReportFunction;
  if (_AXTriggerStackshot___gWriteStackshotReportFunction)
  {
LABEL_5:

    return v0(@"Accessibility triggered", 3131746989);
  }

  return result;
}

uint64_t AXProcessIsSetup()
{
  if (AXProcessIsSetup_onceToken != -1)
  {
    AXProcessIsSetup_cold_1();
  }

  return AXProcessIsSetup_AXIsSetupProcess;
}

void __AXProcessIsSetup_block_invoke()
{
  v1 = AXApplicationGetMainBundleIdentifier();
  v0 = +[AXUtilitiesCommonStringRuntimeOverrides setupProcessName];
  AXProcessIsSetup_AXIsSetupProcess = [v1 isEqualToString:v0];
}

void *__getAXSettingsLocalizedStringForKeySymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!VoiceOverServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __VoiceOverServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E735B110;
    v8 = 0;
    VoiceOverServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = VoiceOverServicesLibraryCore_frameworkLibrary;
    if (VoiceOverServicesLibraryCore_frameworkLibrary)
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

  v2 = VoiceOverServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXSettingsLocalizedStringForKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSettingsLocalizedStringForKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __VoiceOverServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceOverServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCSLPRFApplicationLibraryClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CarouselPreferenceServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CarouselPreferenceServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E735B128;
    v7 = 0;
    CarouselPreferenceServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CarouselPreferenceServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CSLPRFApplicationLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSLPRFApplicationLibraryClass_block_invoke_cold_1();
  }

  getCSLPRFApplicationLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CarouselPreferenceServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarouselPreferenceServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __AXShowInstalledApp_block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.PosterBoard";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = AXShowInstalledApp_AXHiddenApps;
  AXShowInstalledApp_AXHiddenApps = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

CGColorRef AXSAssistiveTouchCursorColor(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 > 4)
  {
    switch(a1)
    {
      case 5:
        components = 0.298039216;
        _Q0 = xmmword_191670D90;
        goto LABEL_15;
      case 6:
        components = 1.0;
        _Q0 = xmmword_191670D80;
        goto LABEL_15;
      case 7:
        components = 1.0;
        _Q0 = xmmword_191670DA0;
        goto LABEL_15;
    }

LABEL_12:
    components = 0.0;
    _Q0 = xmmword_191670DB0;
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    components = 0.6;
    _Q0 = vdupq_n_s64(0x3FE3333333333333uLL);
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    components = 1.0;
    __asm { FMOV            V0.2D, #1.0 }

    goto LABEL_15;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  components = 1.0;
  _Q0 = xmmword_191670D70;
LABEL_15:
  v11 = _Q0;
  v12 = 0x3FF0000000000000;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v7 = CGColorCreate(DeviceRGB, &components);
  CGColorSpaceRelease(DeviceRGB);
  CFAutorelease(v7);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

CGColorRef AXSpeakHighlightColor(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 <= 2)
  {
    if (!a1)
    {
      v7 = 0uLL;
      v8 = 0;
LABEL_16:
      v9 = 0x3FF0000000000000;
      goto LABEL_17;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v7 = xmmword_191670DF0;
        v1 = 0x3FDADADADADADADBLL;
LABEL_15:
        v8 = v1;
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v2 = xmmword_191670DC0;
LABEL_14:
    v7 = v2;
    v1 = 0x3FF0000000000000;
    goto LABEL_15;
  }

  switch(a1)
  {
    case 3:
      v7 = xmmword_191670DE0;
      v1 = 0x3FDC9C9C9C9C9C9DLL;
      goto LABEL_15;
    case 4:
      v2 = xmmword_191670DD0;
      goto LABEL_14;
    case 5:
      v7 = xmmword_191670E00;
      v1 = 0x3FE9595959595959;
      goto LABEL_15;
  }

LABEL_17:
  v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  v4 = CGColorCreate(v3, &v7);
  CGColorSpaceRelease(v3);
  CFAutorelease(v4);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

__CFString *AXSCalibrationStrategyName(uint64_t a1)
{
  if (a1)
  {
    return @"Dual Matrix";
  }

  else
  {
    return @"Singular Matrix";
  }
}

float AXSLinearValueForLogarithmicValue(float a1)
{
  v2 = fabsf(a1);
  v3 = __exp10f(v2 + v2) + -1.0;
  if (a1 < 0.0)
  {
    v3 = -v3;
  }

  return (v3 / 198.0) + 0.5;
}

float AXSVoiceOverTapticChimesVolumeForSoundType(uint64_t a1)
{
  result = 0.6;
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 1.0;
  }

  return result;
}

uint64_t AXCArrayCreate(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  if (_AXCArrayRegisterClass__AXCArrayRegisterClassToken != -1)
  {
    AXCArrayCreate_cold_1();
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 24) = a1;
    if (a2 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a2;
    }

    *(result + 48) = v6;
  }

  return result;
}

uint64_t AXCArrayGetTypeID()
{
  if (_AXCArrayRegisterClass__AXCArrayRegisterClassToken != -1)
  {
    AXCArrayCreate_cold_1();
  }

  return _AXCArrayTypeID;
}

uint64_t AXCArrayCreateWithCoder(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __AXCArrayCreateWithCoder_block_invoke;
  aBlock[3] = &unk_1E735B490;
  v5 = v4;
  v24 = v5;
  v6 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __AXCArrayCreateWithCoder_block_invoke_2;
  v20[3] = &unk_1E735B4E0;
  v7 = v6;
  v22 = v7;
  v8 = v3;
  v21 = v8;
  v9 = _Block_copy(v20);
  v10 = v9[2](v9, @"AXCArrayArchivingKeyElementSize");
  v11 = v9[2](v9, @"AXCArrayArchivingKeyInitialCapacity");
  if (v10)
  {
    v12 = AXCArrayCreate(v10, v11);
    v26[3] = v12;
    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __AXCArrayCreateWithCoder_block_invoke_4;
      v17[3] = &unk_1E735B508;
      v18 = v8;
      v19 = &v25;
      (*(v7 + 2))(v7, @"AXCArrayArchivingKeyArray", v17);
      if (v26[3])
      {
        v13 = v9[2](v9, @"AXCArrayArchivingKeyCursor");
        v14 = v26[3];
        v14[4] = v13;
        v14[5] = v13;
        if (v13)
        {
          if (!v14[2])
          {
            CFRelease(v14);
            v26[3] = 0;
          }
        }
      }
    }
  }

  v15 = v26[3];

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __AXCArrayCreateWithCoder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"%@.%@", *(a1 + 32), v7];

  v6[2](v6, v8);
}

uint64_t __AXCArrayCreateWithCoder_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __AXCArrayCreateWithCoder_block_invoke_3;
  v7[3] = &unk_1E735B4B8;
  v9 = &v10;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  (*(v4 + 16))(v4, v3, v7);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_1915AABD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXCArrayCreateWithCoder_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) decodeInt32ForKey:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __AXCArrayCreateWithCoder_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsValueForKey:v3])
  {
    size = 0;
    v4 = [*(a1 + 32) decodeBytesForKey:v3 returnedLength:&size];
    *(*(*(*(a1 + 40) + 8) + 24) + 16) = malloc_type_malloc(size, 0xE23B8FC4uLL);
    v5 = *(*(*(*(a1 + 40) + 8) + 24) + 16);
    if (v5)
    {
      memcpy(v5, v4, size);
    }

    else
    {
      CFRelease(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

void AXCArrayEncodeWithCoder(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __AXCArrayEncodeWithCoder_block_invoke;
  aBlock[3] = &unk_1E735B490;
  v7 = v6;
  v19 = v7;
  v8 = _Block_copy(aBlock);
  if (a1[2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AXCArrayEncodeWithCoder_block_invoke_2;
    v15[3] = &unk_1E735B530;
    v16 = v5;
    v17 = a1;
    v8[2](v8, @"AXCArrayArchivingKeyArray", v15);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __AXCArrayEncodeWithCoder_block_invoke_3;
  v12[3] = &unk_1E735B558;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v8;
  v11 = _Block_copy(v12);
  v11[2](v11, a1[3], @"AXCArrayArchivingKeyElementSize");
  v11[2](v11, a1[4], @"AXCArrayArchivingKeyCursor");
  v11[2](v11, a1[6], @"AXCArrayArchivingKeyInitialCapacity");
}

void __AXCArrayEncodeWithCoder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"%@.%@", *(a1 + 32), v7];

  v6[2](v6, v8);
}

void __AXCArrayEncodeWithCoder_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __AXCArrayEncodeWithCoder_block_invoke_4;
  v6[3] = &unk_1E735B530;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = a2;
  (*(v5 + 16))(v5, a3, v6);
}

BOOL _AXCArrayPrepareForInsertingElementAtIndex(void *a1, unint64_t a2)
{
  v4 = a1[5];
  if (v4 <= a2)
  {
    v6 = a1[2];
    do
    {
      v7 = a1[3];
      if (v6)
      {
        v4 *= 2;
        v6 = malloc_type_realloc(v6, v7 * v4, 0xCA48F88DuLL);
      }

      else
      {
        v4 = a1[6];
        v6 = malloc_type_malloc(v7 * v4, 0xAC18386uLL);
      }

      v5 = v6 != 0;
      if (!v6)
      {
        break;
      }

      a1[2] = v6;
      a1[5] = v4;
    }

    while (v4 <= a2);
  }

  else
  {
    v5 = 1;
  }

  if (a1[4] <= a2)
  {
    a1[4] = a2 + 1;
  }

  return v5;
}

void _AXCArrayDestroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    free(v1);
  }
}

void sub_1915ABD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t AXRuntimeCheck_HasANE()
{
  if (AXRuntimeCheck_HasANE_onceToken != -1)
  {
    AXRuntimeCheck_HasANE_cold_1();
  }

  return AXRuntimeCheck_HasANE__hasANE;
}

id get_ANEDeviceInfoClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_ANEDeviceInfoClass_softClass;
  v7 = get_ANEDeviceInfoClass_softClass;
  if (!get_ANEDeviceInfoClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_ANEDeviceInfoClass_block_invoke;
    v3[3] = &unk_1E735AD40;
    v3[4] = &v4;
    __get_ANEDeviceInfoClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1915ACA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXRuntimeCheck_isANEDeviceH13plus()
{
  if (AXRuntimeCheck_isANEDeviceH13plus_onceToken != -1)
  {
    AXRuntimeCheck_isANEDeviceH13plus_cold_1();
  }

  return AXRuntimeCheck_isANEDeviceH13plus_isANEH13plus;
}

uint64_t AXRuntimeCheck_SupportsNearbyDeviceControl()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (AXDeviceIsPhone() || AXDeviceIsPod())
    {
      return 1;
    }

    else
    {

      return AXDeviceIsWatch();
    }
  }

  return result;
}

uint64_t AXRuntimeCheck_SupportsMacAXV2()
{
  if (AXRuntimeCheck_SupportsMacAXV2_onceToken != -1)
  {
    AXRuntimeCheck_SupportsMacAXV2_cold_1();
  }

  return AXRuntimeCheck_SupportsMacAXV2__supportsMacAXV2;
}

uint64_t AXRuntimeCheck_VoiceOverSupportsNeuralVoices()
{
  if (AXRuntimeCheck_VoiceOverSupportsNeuralVoices_onceToken != -1)
  {
    AXRuntimeCheck_VoiceOverSupportsNeuralVoices_cold_1();
  }

  return AXRuntimeCheck_VoiceOverSupportsNeuralVoices__supportsMacAXV2;
}

uint64_t AXRuntimeCheck_MauiSSE()
{
  if (AXRuntimeCheck_MauiSSE_onceToken != -1)
  {
    AXRuntimeCheck_MauiSSE_cold_1();
  }

  if (AXRuntimeCheck_MauiSSE__mauiSSE)
  {
    v0 = 1;
  }

  else
  {
    if (AXRuntimeCheck_MauiSSEOnly_onceToken_MauiSSEOnly != -1)
    {
      AXRuntimeCheck_MauiSSE_cold_2();
    }

    v0 = AXRuntimeCheck_MauiSSEOnly__ffEnabled_MauiSSEOnly;
  }

  return v0 & 1;
}

uint64_t AXRuntimeCheck_MauiSSEOnly()
{
  if (AXRuntimeCheck_MauiSSEOnly_onceToken_MauiSSEOnly != -1)
  {
    AXRuntimeCheck_MauiSSE_cold_2();
  }

  return AXRuntimeCheck_MauiSSEOnly__ffEnabled_MauiSSEOnly;
}

uint64_t AXRuntimeCheck_PerVoiceSettings()
{
  if (AXRuntimeCheck_PerVoiceSettings_onceToken_PerVoiceSettings != -1)
  {
    AXRuntimeCheck_PerVoiceSettings_cold_1();
  }

  return AXRuntimeCheck_PerVoiceSettings__ffEnabled_PerVoiceSettings;
}

uint64_t AXRuntimeCheck_SiriSSEOnly()
{
  if (AXRuntimeCheck_SiriSSEOnly_onceToken_SiriSSEOnly != -1)
  {
    AXRuntimeCheck_SiriSSEOnly_cold_1();
  }

  return AXRuntimeCheck_SiriSSEOnly__ffEnabled_SiriSSEOnly;
}

uint64_t AXRuntimeCheck_SpeakUp()
{
  if (AXRuntimeCheck_SpeakUp_onceToken_SpeakUp != -1)
  {
    AXRuntimeCheck_SpeakUp_cold_1();
  }

  return AXRuntimeCheck_SpeakUp__ffEnabled_SpeakUp;
}

uint64_t AXRuntimeCheck_DwellKeyboardKeyTimer()
{
  if (AXRuntimeCheck_DwellKeyboardKeyTimer_onceToken_DwellKeyboardKeyTimer != -1)
  {
    AXRuntimeCheck_DwellKeyboardKeyTimer_cold_1();
  }

  return AXRuntimeCheck_DwellKeyboardKeyTimer__ffEnabled_DwellKeyboardKeyTimer;
}

uint64_t AXRuntimeCheck_DwellKeyboardSwipe_iPad()
{
  if (AXRuntimeCheck_DwellKeyboardSwipe_iPad_onceToken_DwellKeyboardSwipe_iPad != -1)
  {
    AXRuntimeCheck_DwellKeyboardSwipe_iPad_cold_1();
  }

  return AXRuntimeCheck_DwellKeyboardSwipe_iPad__ffEnabled_DwellKeyboardSwipe_iPad;
}

uint64_t AXRuntimeCheck_DwellKeyboardSwipeContinuous()
{
  if (AXRuntimeCheck_DwellKeyboardSwipeContinuous_onceToken_DwellKeyboardSwipeContinuous != -1)
  {
    AXRuntimeCheck_DwellKeyboardSwipeContinuous_cold_1();
  }

  return AXRuntimeCheck_DwellKeyboardSwipeContinuous__ffEnabled_DwellKeyboardSwipeContinuous;
}

uint64_t AXRuntimeCheck_DwellKeyboardSwipe()
{
  if (!AXDeviceIsPad())
  {
    goto LABEL_5;
  }

  if (AXRuntimeCheck_DwellKeyboardSwipe_iPad_onceToken_DwellKeyboardSwipe_iPad != -1)
  {
    AXRuntimeCheck_DwellKeyboardSwipe_iPad_cold_1();
  }

  if (AXRuntimeCheck_DwellKeyboardSwipe_iPad__ffEnabled_DwellKeyboardSwipe_iPad != 1)
  {
    v0 = 0;
  }

  else
  {
LABEL_5:
    if (AXRuntimeCheck_DwellKeyboardSwipe_onceToken_DwellKeyboardSwipe != -1)
    {
      AXRuntimeCheck_DwellKeyboardSwipe_cold_2();
    }

    v0 = AXRuntimeCheck_DwellKeyboardSwipe__ffEnabled_DwellKeyboardSwipe;
  }

  return v0 & 1;
}

uint64_t AXRuntimeCheck_MediaAnalysisSupport()
{
  if (AXRuntimeCheck_MediaAnalysisSupport_onceToken != -1)
  {
    AXRuntimeCheck_MediaAnalysisSupport_cold_1();
  }

  return AXRuntimeCheck_MediaAnalysisSupport__supportsMediaAnalysisServices;
}

uint64_t AXRuntimeCheck_ScreenRecognitionSupport()
{
  if (AXRuntimeCheck_ScreenRecognitionSupport_onceToken != -1)
  {
    AXRuntimeCheck_ScreenRecognitionSupport_cold_1();
  }

  return AXRuntimeCheck_ScreenRecognitionSupport__supportsScreenRecognition;
}

uint64_t AXRuntimeCheck_LiveCaptionsSupportsLanguageExpansion()
{
  v5 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (AXRuntimeCheck_isANEDeviceH13plus_onceToken != -1)
    {
      AXRuntimeCheck_isANEDeviceH13plus_cold_1();
    }

    v0 = AXRuntimeCheck_isANEDeviceH13plus_isANEH13plus;
    v1 = AXLogLiveTranscription();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67109120;
      v4[1] = v0;
      _os_log_impl(&dword_19159B000, v1, OS_LOG_TYPE_DEFAULT, "Live Captions supports language expansion %d", v4, 8u);
    }
  }

  else
  {
    v0 = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t AXRuntimeCheck_SupportsLiveCaptions()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v1 = [v0 isEqualToString:@"en"];

  v2 = _os_feature_enabled_impl();
  v3 = _os_feature_enabled_impl();
  if (v3 && (v1 & 1) == 0)
  {
    v1 = AXRuntimeCheck_LiveCaptionsSupportsLanguageExpansion();
  }

  if ((v2 & v1) == 1)
  {
    if (AXRuntimeCheck_HasANE_onceToken != -1)
    {
      AXRuntimeCheck_HasANE_cold_1();
    }

    v4 = AXRuntimeCheck_HasANE__hasANE;
  }

  else
  {
    v4 = 0;
  }

  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4 & 1];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v2];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v1];
    v10 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v11 = MEMORY[0x1E696AD98];
    if (AXRuntimeCheck_HasANE_onceToken != -1)
    {
      AXRuntimeCheck_HasANE_cold_1();
    }

    v12 = [v11 numberWithBool:AXRuntimeCheck_HasANE__hasANE];
    v15 = 138413570;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_19159B000, v5, OS_LOG_TYPE_DEFAULT, "Live Captions supported: %@ [%@,%@,%@,%@,%@]", &v15, 0x3Eu);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t AXRuntimeCheck_SupportsOnDeviceEyeTracking()
{
  if (AXRuntimeCheck_isANEDeviceH13plus_onceToken != -1)
  {
    AXRuntimeCheck_isANEDeviceH13plus_cold_1();
  }

  if (AXRuntimeCheck_isANEDeviceH13plus_isANEH13plus != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t AXRuntimeCheck_SoundRecognitionMedinaSupportEnabled()
{
  if (AXRuntimeCheck_SupportsMedina_onceToken != -1)
  {
    AXRuntimeCheck_SupportsMedina_cold_1();
  }

  if (AXRuntimeCheck_SupportsMedina__supportsMedina != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t AXRuntimeCheck_SoundRecognitionMedinaKShotEnrollmentEnabled()
{
  if (AXRuntimeCheck_SupportsMedina_onceToken != -1)
  {
    AXRuntimeCheck_SupportsMedina_cold_1();
  }

  return 0;
}

uint64_t AXRuntimeCheck_SupportsIncreaseBrightnessFloor()
{
  if (AXRuntimeCheck_SupportsIncreaseBrightnessFloor_onceToken != -1)
  {
    AXRuntimeCheck_SupportsIncreaseBrightnessFloor_cold_1();
  }

  return AXRuntimeCheck_SupportsIncreaseBrightnessFloor__supportsIncreaseBrightnessFloor;
}

uint64_t AXRuntimeCheck_SupportsDoseAnalysis()
{
  if (AXRuntimeCheck_SupportsDoseAnalysis_onceToken != -1)
  {
    AXRuntimeCheck_SupportsDoseAnalysis_cold_1();
  }

  return AXRuntimeCheck_SupportsDoseAnalysis__supportsDoseAnalysis;
}

uint64_t AXRuntimeCheck_SupportsVoiceoverIndepedentVolume()
{
  if (AXRuntimeCheck_SupportsVoiceoverIndepedentVolume_onceToken != -1)
  {
    AXRuntimeCheck_SupportsVoiceoverIndepedentVolume_cold_1();
  }

  return AXRuntimeCheck_SupportsVoiceoverIndepedentVolume__supportsVoiceoverIndepedentVolume;
}

uint64_t AXRuntimeCheck_SupportsBrailleUI()
{
  if (AXRuntimeCheck_SupportsBrailleUI_onceToken != -1)
  {
    AXRuntimeCheck_SupportsBrailleUI_cold_1();
  }

  return AXRuntimeCheck_SupportsBrailleUI__supportsBrailleUI;
}

uint64_t AXRuntimeCheck_SupportsWatchControlAXFocusSystem()
{
  if (AXRuntimeCheck_SupportsWatchControlAXFocusSystem_onceToken != -1)
  {
    AXRuntimeCheck_SupportsWatchControlAXFocusSystem_cold_1();
  }

  return AXRuntimeCheck_SupportsWatchControlAXFocusSystem__supportsWatchControlAXFocusSystem;
}

uint64_t AXRuntimeCheck_SupportsVoiceOverReadPrefixes()
{
  if (AXRuntimeCheck_SupportsVoiceOverReadPrefixes_onceToken != -1)
  {
    AXRuntimeCheck_SupportsVoiceOverReadPrefixes_cold_1();
  }

  return AXRuntimeCheck_SupportsVoiceOverReadPrefixes__supportsVoiceOverReadPrefixes;
}

uint64_t AppleNeuralEngineLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AppleNeuralEngineLibraryCore_frameworkLibrary)
  {
    AppleNeuralEngineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AppleNeuralEngineLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppleNeuralEngineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleNeuralEngineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = libMobileGestaltLibraryCore_frameworkLibrary;
  v12 = libMobileGestaltLibraryCore_frameworkLibrary;
  if (!libMobileGestaltLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __libMobileGestaltLibraryCore_block_invoke;
    v6[4] = &unk_1E735B668;
    v7 = &v9;
    v8 = v6;
    v13 = xmmword_1E735B648;
    v14 = 0;
    v10[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary = *(v7[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  v3 = v6[0];
  if (!v2)
  {
    v3 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1915ADCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AXDeviceIsTallPhoneIdiom()
{
  if (AXDeviceIsTallPhoneIdiom_onceToken[0] != -1)
  {
    AXDeviceIsTallPhoneIdiom_cold_1();
  }

  return AXDeviceIsTallPhoneIdiom_isTallBoy;
}

uint64_t __AXDeviceIsTallPhoneIdiom_block_invoke()
{
  result = soft_MGGetSInt32Answer();
  if (result == 5)
  {
    AXDeviceIsTallPhoneIdiom_isTallBoy = 1;
  }

  return result;
}

uint64_t soft_MGGetSInt32Answer()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMGGetSInt32AnswerSymbolLoc_ptr;
  v8 = getMGGetSInt32AnswerSymbolLoc_ptr;
  if (!getMGGetSInt32AnswerSymbolLoc_ptr)
  {
    v1 = libMobileGestaltLibrary();
    v6[3] = dlsym(v1, "MGGetSInt32Answer");
    getMGGetSInt32AnswerSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    soft_AXSettingsLocalizedStringForKey_cold_1();
    v4 = v3;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  return v0(@"main-screen-class", 0xFFFFFFFFLL);
}

uint64_t AXDeviceIsSmallPhoneIdiom()
{
  if (AXDeviceIsSmallPhoneIdiom_onceToken != -1)
  {
    AXDeviceIsSmallPhoneIdiom_cold_1();
  }

  return AXDeviceIsSmallPhoneIdiom_isSmall;
}

uint64_t __AXDeviceIsSmallPhoneIdiom_block_invoke()
{
  result = soft_MGGetSInt32Answer();
  if (result == 8)
  {
    AXDeviceIsSmallPhoneIdiom_isSmall = 1;
  }

  return result;
}

uint64_t AXDeviceIsPadMiniIdiom()
{
  if (AXDeviceIsPadMiniIdiom_onceToken != -1)
  {
    AXDeviceIsPadMiniIdiom_cold_1();
  }

  return AXDeviceIsPadMiniIdiom_isIpadMini;
}

uint64_t __AXDeviceIsPadMiniIdiom_block_invoke()
{
  result = soft_MGGetSInt32Answer();
  if ((result & 0xFFFFFFFE) == 6)
  {
    AXDeviceIsPadMiniIdiom_isIpadMini = 1;
  }

  return result;
}

uint64_t AXDeviceIsBigPadIdiom()
{
  if (AXDeviceIsBigPadIdiom_onceToken != -1)
  {
    AXDeviceIsBigPadIdiom_cold_1();
  }

  return AXDeviceIsBigPadIdiom_isBigPad;
}

uint64_t __AXDeviceIsBigPadIdiom_block_invoke()
{
  result = soft_MGGetSInt32Answer();
  if (result == 11)
  {
    AXDeviceIsBigPadIdiom_isBigPad = 1;
  }

  return result;
}

uint64_t AXDeviceIsSmallWatchIdiom()
{
  if (AXDeviceIsSmallWatchIdiom_onceToken != -1)
  {
    AXDeviceIsSmallWatchIdiom_cold_1();
  }

  return 0;
}

uint64_t AXDeviceIsBigWatchIdiom()
{
  if (AXDeviceIsBigWatchIdiom_onceToken != -1)
  {
    AXDeviceIsBigWatchIdiom_cold_1();
  }

  return 0;
}

uint64_t AXDeviceIsPhoneIdiom()
{
  if (AXDeviceIsPhoneIdiom_onceToken != -1)
  {
    AXDeviceIsPhoneIdiom_cold_1();
  }

  return AXDeviceIsPhoneIdiom_isPhoneIdiom;
}

BOOL __AXDeviceIsPhoneIdiom_block_invoke()
{
  result = AXDeviceIsPhone() || AXDeviceIsPod();
  AXDeviceIsPhoneIdiom_isPhoneIdiom = result;
  return result;
}

uint64_t AXDeviceIsD22()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = -337121064;
  v4 = xmmword_191671180;
  if (soft_MGIsDeviceOfType(&v4))
  {
    result = 1;
  }

  else
  {
    v3 = 450980336;
    v2 = xmmword_191671194;
    result = soft_MGIsDeviceOfType(&v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t soft_MGIsDeviceOfType(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMGIsDeviceOfTypeSymbolLoc_ptr;
  v10 = getMGIsDeviceOfTypeSymbolLoc_ptr;
  if (!getMGIsDeviceOfTypeSymbolLoc_ptr)
  {
    v3 = libMobileGestaltLibrary();
    v8[3] = dlsym(v3, "MGIsDeviceOfType");
    getMGIsDeviceOfTypeSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    soft_AXSettingsLocalizedStringForKey_cold_1();
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1);
}

uint64_t AXDeviceIsD42()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = -61007701;
  v2 = xmmword_1916711A8;
  result = soft_MGIsDeviceOfType(&v2);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AXDeviceIsD32()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = -232427879;
  v2 = xmmword_1916711BC;
  result = soft_MGIsDeviceOfType(&v2);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AXDeviceIsD43()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = -235416490;
  v2 = xmmword_1916711D0;
  result = soft_MGIsDeviceOfType(&v2);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AXDeviceIsD33()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = -427474227;
  v4 = xmmword_1916711E4;
  if (soft_MGIsDeviceOfType(&v4))
  {
    result = 1;
  }

  else
  {
    v3 = 1477534141;
    v2 = xmmword_1916711F8;
    result = soft_MGIsDeviceOfType(&v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AXDeviceIsD7x()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = -1820426635;
  v4 = xmmword_19167120C;
  if (soft_MGIsDeviceOfType(&v4))
  {
    result = 1;
  }

  else
  {
    v3 = -937652876;
    v2 = xmmword_191671220;
    result = soft_MGIsDeviceOfType(&v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AXDeviceIsD2y()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 533419158;
  v4 = xmmword_191671234;
  if (soft_MGIsDeviceOfType(&v4))
  {
    result = 1;
  }

  else
  {
    v3 = 1106979518;
    v2 = xmmword_191671248;
    result = soft_MGIsDeviceOfType(&v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AXDeviceIsJ3XX()
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 2030516999;
  v16 = xmmword_19167125C;
  if (soft_MGIsDeviceOfType(&v16))
  {
    goto LABEL_8;
  }

  v15 = -1276010597;
  v14 = xmmword_191671270;
  if (soft_MGIsDeviceOfType(&v14))
  {
    goto LABEL_8;
  }

  v13 = -762483149;
  v12 = xmmword_191671284;
  if (soft_MGIsDeviceOfType(&v12))
  {
    goto LABEL_8;
  }

  v11 = -1926937532;
  v10 = xmmword_191671298;
  if (soft_MGIsDeviceOfType(&v10) & 1) != 0 || (v9 = -1902732724, v8 = xmmword_1916712AC, (soft_MGIsDeviceOfType(&v8)) || (v7 = -342357580, v6 = xmmword_1916712C0, (soft_MGIsDeviceOfType(&v6)) || (v5 = 300442574, v4 = xmmword_1916712D4, (soft_MGIsDeviceOfType(&v4)))
  {
LABEL_8:
    result = 1;
  }

  else
  {
    v3 = -1294188889;
    v2 = xmmword_1916712E8;
    result = soft_MGIsDeviceOfType(&v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AXDeviceIsJ42()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 1839812531;
  v2 = xmmword_1916712FC;
  result = soft_MGIsDeviceOfType(&v2);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t soft_MGGetBoolAnswer(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMGGetBoolAnswerSymbolLoc_ptr_0;
  v10 = getMGGetBoolAnswerSymbolLoc_ptr_0;
  if (!getMGGetBoolAnswerSymbolLoc_ptr_0)
  {
    v3 = libMobileGestaltLibrary();
    v8[3] = dlsym(v3, "MGGetBoolAnswer");
    getMGGetBoolAnswerSymbolLoc_ptr_0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    soft_AXSettingsLocalizedStringForKey_cold_1();
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1);
}

uint64_t AXDeviceHasJindo()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"backboardd"];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    if (AXDeviceHasJindo_onceToken != -1)
    {
      AXDeviceHasJindo_cold_1();
    }

    v3 = AXDeviceHasJindo_HasJindo;
  }

  return v3 & 1;
}

uint64_t __AXDeviceHasJindo_block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSBUIIsSystemApertureEnabledSymbolLoc_ptr;
  v8 = getSBUIIsSystemApertureEnabledSymbolLoc_ptr;
  if (!getSBUIIsSystemApertureEnabledSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke;
    v4[3] = &unk_1E735AD40;
    v4[4] = &v5;
    __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    soft_AXSettingsLocalizedStringForKey_cold_1();
    v3 = v2;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  result = v0();
  AXDeviceHasJindo_HasJindo = result;
  return result;
}

uint64_t _AXDeviceIsVoicebankingAllowedForLocale(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.accessibility.voicebanking"];
  v3 = [v2 objectForKey:@"ServerConfiguration"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = AXTTSLogVoiceBank();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if ((isKindOfClass & 1) == 0)
  {
    if (v6)
    {
      v12 = 138412290;
      v13 = v1;
      _os_log_impl(&dword_19159B000, v5, OS_LOG_TYPE_DEFAULT, "No ServerConfig was found for voicebanking. Assuming IsAllowed=1 for ID=%@", &v12, 0xCu);
    }

    goto LABEL_11;
  }

  if (v6)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_19159B000, v5, OS_LOG_TYPE_DEFAULT, "ServerConfig was found for voicebanking", &v12, 2u);
  }

  v5 = [v3 objectForKeyedSubscript:v1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:
    v9 = 1;
    goto LABEL_14;
  }

  v7 = [v5 objectForKeyedSubscript:@"IsAllowed"];
  v8 = AXTTSLogVoiceBank();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v1;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_19159B000, v8, OS_LOG_TYPE_DEFAULT, "voicebanking ServerConfig found for ID=%@. IsAllowed=%@", &v12, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL AXDeviceSupportsVoiceBankingSpeech()
{
  if (AXDeviceSupportsVoiceBankingSpeech_onceToken != -1)
  {
    AXDeviceSupportsVoiceBankingSpeech_cold_1();
  }

  return (AXDeviceSupportsVoiceBankingSpeech__AXDeviceSupportsVoiceBankingSpeech & 1) == 0;
}

uint64_t __AXDeviceSupportsVoiceBankingSpeech_block_invoke()
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    AXDeviceSupportsVoiceBankingSpeech__AXDeviceSupportsVoiceBankingSpeech = 1;
  }

  if (soft_MGGetBoolAnswer(@"green-tea") && (_AXDeviceIsVoicebankingAllowedForLocale(@"cmn") & 1) == 0)
  {
    AXDeviceSupportsVoiceBankingSpeech__AXDeviceSupportsVoiceBankingSpeech = 1;
  }

  result = AXRuntimeCheck_HasANE();
  if ((result & 1) == 0)
  {
    AXDeviceSupportsVoiceBankingSpeech__AXDeviceSupportsVoiceBankingSpeech = 1;
  }

  return result;
}

uint64_t AXDeviceSupportsVoiceBankingTraining()
{
  if (AXDeviceSupportsVoiceBankingTraining_onceToken != -1)
  {
    AXDeviceSupportsVoiceBankingTraining_cold_1();
  }

  return AXDeviceSupportsVoiceBankingTraining__AXDeviceSupportsVoiceBankingTraining;
}

uint64_t __AXDeviceSupportsVoiceBankingTraining_block_invoke()
{
  result = _get_cpu_capabilities();
  AXDeviceSupportsVoiceBankingTraining__AXDeviceSupportsVoiceBankingTraining = (result & 0x70000000) != 0;
  return result;
}

BOOL AXDeviceSupportsAdaptiveVoiceShortcuts()
{
  if (AXDeviceSupportsAdaptiveVoiceShortcuts_onceToken != -1)
  {
    AXDeviceSupportsAdaptiveVoiceShortcuts_cold_1();
  }

  return (AXDeviceSupportsAdaptiveVoiceShortcuts__AXDeviceSupportsAdaptiveVoiceShortcuts & 1) == 0;
}

uint64_t __AXDeviceSupportsAdaptiveVoiceShortcuts_block_invoke()
{
  result = _os_feature_enabled_impl();
  if ((result & 1) == 0)
  {
    AXDeviceSupportsAdaptiveVoiceShortcuts__AXDeviceSupportsAdaptiveVoiceShortcuts = 1;
  }

  return result;
}

uint64_t AXDeviceSupportsOnDeviceEyeTracking()
{
  if (AXDeviceSupportsOnDeviceEyeTracking_onceToken != -1)
  {
    AXDeviceSupportsOnDeviceEyeTracking_cold_1();
  }

  return AXDeviceSupportsOnDeviceEyeTracking__AXDeviceSupportsOnDeviceEyeTracking;
}

uint64_t __AXDeviceSupportsOnDeviceEyeTracking_block_invoke()
{
  result = AXRuntimeCheck_isANEDeviceH13plus();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  AXDeviceSupportsOnDeviceEyeTracking__AXDeviceSupportsOnDeviceEyeTracking = result;
  return result;
}

uint64_t AXDeviceSupportsNameRecognition()
{
  if (AXDeviceSupportsNameRecognition_onceToken != -1)
  {
    AXDeviceSupportsNameRecognition_cold_1();
  }

  return AXDeviceSupportsNameRecognition__AXDeviceSupportsNameRecognition;
}

void __AXDeviceSupportsNameRecognition_block_invoke()
{
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  v0 = [v2 firstObject];
  v1 = [v0 hasPrefix:@"en"];

  AXDeviceSupportsNameRecognition__AXDeviceSupportsNameRecognition = _os_feature_enabled_impl() & v1;
}

uint64_t AXDeviceSupportsPulseWidthMaximization()
{
  if (AXDeviceSupportsPulseWidthMaximization_onceToken != -1)
  {
    AXDeviceSupportsPulseWidthMaximization_cold_1();
  }

  return AXDeviceSupportsPulseWidthMaximization_SupportsPWM;
}

uint64_t __AXDeviceSupportsPulseWidthMaximization_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = MGIsDeviceOfType();
    v2 = MGIsDeviceOfType();
    v3 = MGIsDeviceOfType();
    result = MGIsDeviceOfType();
    v4 = 0;
    if (v1 & 1) != 0 || (v2 & 1) != 0 || (v3 & 1) != 0 || (result)
    {
      goto LABEL_10;
    }

    result = MGIsDeviceOneOfType();
    if (result)
    {
      v4 = 0;
LABEL_10:
      AXDeviceSupportsPulseWidthMaximization_SupportsPWM = v4;
      goto LABEL_11;
    }

    result = MGGetBoolAnswer();
    if (result)
    {
      v4 = 1;
      goto LABEL_10;
    }
  }

LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AXDeviceSupportsAccessibilityReader()
{
  if (AXDeviceSupportsAccessibilityReader_onceToken != -1)
  {
    AXDeviceSupportsAccessibilityReader_cold_1();
  }

  return (AXDeviceSupportsAccessibilityReader__AXDeviceSupportsAccessibilityReader & 1) == 0;
}

uint64_t __AXDeviceSupportsAccessibilityReader_block_invoke()
{
  result = _os_feature_enabled_impl();
  if ((result & 1) == 0)
  {
    AXDeviceSupportsAccessibilityReader__AXDeviceSupportsAccessibilityReader = 1;
  }

  return result;
}

uint64_t AXDeviceSupportsTadmor()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  if (!v0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v1 = v0;
  [v0 operatingSystemVersion];
  v2 = v6;

  if (v2 <= 18)
  {
LABEL_7:
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Accessibility"];
    v3 = [v4 BOOLForKey:@"TadmorEnabledViaProfile"];

    return v3;
  }

  if (AXDeviceSupportsTadmor_onceToken != -1)
  {
    AXDeviceSupportsTadmor_cold_1();
  }

  return AXDeviceSupportsTadmor__AXDeviceSupportsTadmor;
}

uint64_t __AXDeviceSupportsTadmor_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    AXDeviceSupportsTadmor__AXDeviceSupportsTadmor = 1;
  }

  return result;
}

uint64_t AXDeviceIsVM()
{
  if (AXDeviceIsVM_onceToken != -1)
  {
    AXDeviceIsVM_cold_1();
  }

  return AXDeviceIsVM_result;
}

uint64_t __AXDeviceIsVM_block_invoke()
{
  result = MGGetBoolAnswer();
  AXDeviceIsVM_result = result;
  return result;
}

void *__getMGGetSInt32AnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libMobileGestaltLibrary();
  result = dlsym(v2, "MGGetSInt32Answer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetSInt32AnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libMobileGestaltLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = libMobileGestaltLibraryCore_frameworkLibrary_0;
  v10 = libMobileGestaltLibraryCore_frameworkLibrary_0;
  if (!libMobileGestaltLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __libMobileGestaltLibraryCore_block_invoke_0;
    v4[4] = &unk_1E735B668;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E735B700;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary_0 = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  v1 = v4[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1915AFE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke_0(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMGIsDeviceOfTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libMobileGestaltLibrary();
  result = dlsym(v2, "MGIsDeviceOfType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGIsDeviceOfTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = libMobileGestaltLibrary();
  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardUIServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E735B718;
    v8 = 0;
    SpringBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardUIServicesLibraryCore_frameworkLibrary;
    if (SpringBoardUIServicesLibraryCore_frameworkLibrary)
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

  v2 = SpringBoardUIServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBUIIsSystemApertureEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUIIsSystemApertureEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardUIServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void UIAXAppendValidationError(void *a1)
{
  v1 = a1;
  if (!UIAXAppendValidationError_ValidationErrors)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = UIAXAppendValidationError_ValidationErrors;
    UIAXAppendValidationError_ValidationErrors = v2;

    AXPerformBlockOnMainThreadAfterDelay(&__block_literal_global_5, 0.1);
  }

  v4 = [MEMORY[0x1E696AF00] callStackSymbols];
  v5 = [v4 objectAtIndex:1];
  if ([v5 rangeOfString:@"_installSafeCategoryOnClassNamed"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v4 objectAtIndex:4];

    v5 = v6;
  }

  v7 = AXLogValidations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    UIAXAppendValidationError_cold_1(v1, v5, v7);
  }

  [UIAXAppendValidationError_ValidationErrors addObject:v1];
}

void __AXPerformValidationChecks_block_invoke()
{
  v2 = [getAXSettingsClass_0() sharedInstance];
  if ([v2 appValidationTestingMode])
  {
    AXPerformValidationChecks_CachedSetting = 1;
  }

  else
  {
    v0 = [getAXSettingsClass_0() sharedInstance];
    if ([v0 shouldPerformValidationsAtRuntime])
    {
      AXPerformValidationChecks_CachedSetting = 1;
    }

    else
    {
      v1 = [getAXSettingsClass_0() sharedInstance];
      AXPerformValidationChecks_CachedSetting = [v1 isAXValidationRunnerCollectingValidations];
    }
  }
}

id getAXSettingsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXSettingsClass_softClass_0;
  v7 = getAXSettingsClass_softClass_0;
  if (!getAXSettingsClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXSettingsClass_block_invoke_0;
    v3[3] = &unk_1E735AD40;
    v3[4] = &v4;
    __getAXSettingsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1915B03F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXShouldLogValidationErrors()
{
  if (AXIsInternalInstall())
  {
    if (AXPerformValidationChecks_onceToken != -1)
    {
      AXPerformValidationChecks_cold_1();
    }

    v0 = AXPerformValidationChecks_CachedSetting;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

Class __getAXSettingsClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E735B730;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIAccessibilityHandleValidationErrorWithDescription(int a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a1;
  v11 = MEMORY[0x1E696AEC0];
  v12 = a3;
  v13 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  if (AXShouldLogValidationErrors())
  {
    v14 = AXLogValidations();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __UIAccessibilityHandleValidationErrorWithDescription_cold_1(v13, v14);
    }
  }

  if (v13)
  {
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1 && a2 != 0)
  {
    if (__UIAccessibilityHandleValidationErrorWithDescription__UIAccessibilityValidationCrashOnceToken != -1)
    {
      __UIAccessibilityHandleValidationErrorWithDescription_cold_2();
    }

    v10 = 0;
  }

  return v10;
}

id AXSharedInertMetric()
{
  if (AXSharedInertMetric_onceToken != -1)
  {
    AXSharedInertMetric_cold_1();
  }

  v1 = AXSharedInertMetric__InertMetric;

  return v1;
}

uint64_t __AXSharedInertMetric_block_invoke()
{
  AXSharedInertMetric__InertMetric = [(AXMetric *)[AXBookendMetric alloc] _initWithName:@"Intert" session:0];

  return MEMORY[0x1EEE66BB8]();
}

id AXCUApplicationGetMainBundleIdentifier()
{
  if (AXCUApplicationGetMainBundleIdentifier__AXApplicationMainBundleIdentifierOnceToken != -1)
  {
    AXCUApplicationGetMainBundleIdentifier_cold_1();
  }

  v1 = AXCUApplicationGetMainBundleIdentifier__AXApplicationMainBundleIdentifier;

  return v1;
}

void __AXCUApplicationGetMainBundleIdentifier_block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v3 bundleIdentifier];
  v1 = [v0 copy];
  v2 = AXCUApplicationGetMainBundleIdentifier__AXApplicationMainBundleIdentifier;
  AXCUApplicationGetMainBundleIdentifier__AXApplicationMainBundleIdentifier = v1;
}

id AXDiagnosticReportsDirectory()
{
  v0 = AXSystemRootDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"var/mobile/Library/Logs/Accessibility"];

  return v1;
}

id AXInternalAccessibilityBundlesDirectory()
{
  v0 = AXSystemRootDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"AppleInternal/Library/AccessibilityBundles"];

  return v1;
}

id AXAccessibilityPrivateFrameworksDirectory()
{
  v0 = AXSystemRootDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/"];

  return v1;
}

id AXVoiceServicesTTSResourcesDirectory()
{
  v0 = AXSystemRootDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/VoiceServices.framework/TTSResources"];

  return v1;
}

id AXBrailleTablesDirectory()
{
  v0 = AXSystemRootDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"System/Library/ScreenReader/BrailleTables"];

  return v1;
}

uint64_t AXProcessIsAXAssetsd()
{
  if (AXProcessIsAXAssetsd_onceToken != -1)
  {
    AXProcessIsAXAssetsd_cold_1();
  }

  return AXProcessIsAXAssetsd__IsAXAssetsd;
}

void __AXProcessIsAXAssetsd_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"axassetsd"];

  if (v2)
  {
    AXProcessIsAXAssetsd__IsAXAssetsd = 1;
  }
}

uint64_t AXProcessIsVoicebankingd()
{
  if (AXProcessIsVoicebankingd_onceToken != -1)
  {
    AXProcessIsVoicebankingd_cold_1();
  }

  return AXProcessIsVoicebankingd__IsVoicebankingd;
}

void __AXProcessIsVoicebankingd_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"voicebankingd"];

  if (v2)
  {
    AXProcessIsVoicebankingd__IsVoicebankingd = 1;
  }
}

uint64_t AXProcessIsAxctl()
{
  if (AXProcessIsAxctl_onceToken != -1)
  {
    AXProcessIsAxctl_cold_1();
  }

  return AXProcessIsAxctl__IsAxctl;
}

void __AXProcessIsAxctl_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"axctl"];

  if (v2)
  {
    AXProcessIsAxctl__IsAxctl = 1;
  }
}

uint64_t AXCUProcessIsAssistiveTouch()
{
  if (AXCUProcessIsAssistiveTouch__AXProcessIsAssistiveTouchOnceToken != -1)
  {
    AXCUProcessIsAssistiveTouch_cold_1();
  }

  return AXCUProcessIsAssistiveTouch__AXProcessIsAssistiveTouch;
}

void __AXCUProcessIsAssistiveTouch_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"assistivetouchd"];

  if (v2)
  {
    AXCUProcessIsAssistiveTouch__AXProcessIsAssistiveTouch = 1;
  }
}

uint64_t AXCUProcessIsMagnifierAngel()
{
  if (AXCUProcessIsMagnifierAngel__AXProcessIsMagnifierAngelOnceToken != -1)
  {
    AXCUProcessIsMagnifierAngel_cold_1();
  }

  return AXCUProcessIsMagnifierAngel__AXProcessIsMagnifierAngel;
}

void __AXCUProcessIsMagnifierAngel_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"MagnifierAngel"];

  if (v2)
  {
    AXCUProcessIsMagnifierAngel__AXProcessIsMagnifierAngel = 1;
  }
}

uint64_t AXProcessIsLiveSpeech()
{
  if (AXCUProcessIsAXUIServer_onceToken != -1)
  {
    AXProcessIsLiveSpeech_cold_1();
  }

  return AXCUProcessIsAXUIServer__IsAXUIServer;
}

uint64_t AXCUProcessIsVoiceOverTouch()
{
  if (AXCUProcessIsVoiceOverTouch_onceToken != -1)
  {
    AXCUProcessIsVoiceOverTouch_cold_1();
  }

  return AXCUProcessIsVoiceOverTouch__IsVoiceOverTouch;
}

void __AXCUProcessIsVoiceOverTouch_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"vot"];

  if (v2)
  {
    AXCUProcessIsVoiceOverTouch__IsVoiceOverTouch = 1;
  }
}

uint64_t AXCUProcessIsPreferences()
{
  if (AXCUProcessIsPreferences_token != -1)
  {
    AXCUProcessIsPreferences_cold_1();
  }

  return AXCUProcessIsPreferences__IsPreferences;
}

void __AXCUProcessIsPreferences_block_invoke()
{
  v0 = AXCUApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.Preferences"];

  if (v1)
  {
    AXCUProcessIsPreferences__IsPreferences = 1;
  }
}

uint64_t AXCUProcessIsVoiceOverUtilityApp()
{
  if (AXCUProcessIsVoiceOverUtilityApp_token != -1)
  {
    AXCUProcessIsVoiceOverUtilityApp_cold_1();
  }

  return AXCUProcessIsVoiceOverUtilityApp__IsVoiceOverUtility;
}

void __AXCUProcessIsVoiceOverUtilityApp_block_invoke()
{
  v0 = AXCUApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.VoiceOverUtility"];

  if (v1)
  {
    AXCUProcessIsVoiceOverUtilityApp__IsVoiceOverUtility = 1;
  }
}

void sub_1915B31B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1915B352C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

BOOL AXDeviceIsPad()
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType == 3;
}

uint64_t __AXDeviceGetType_block_invoke()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMGGetSInt32AnswerSymbolLoc_ptr_0;
  v9 = getMGGetSInt32AnswerSymbolLoc_ptr_0;
  if (!getMGGetSInt32AnswerSymbolLoc_ptr_0)
  {
    v1 = libMobileGestaltLibrary_0();
    v7[3] = dlsym(v1, "MGGetSInt32Answer");
    getMGGetSInt32AnswerSymbolLoc_ptr_0 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    soft_AXSettingsLocalizedStringForKey_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  result = v0(@"DeviceClassNumber", 0xFFFFFFFFLL);
  v3 = result - 1;
  if (result - 1) <= 0xA && ((0x46Fu >> v3))
  {
    AXDeviceGetType__AXDeviceType = qword_191671488[v3];
  }

  return result;
}

BOOL AXDeviceIsPod()
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType == 2;
}

BOOL AXDeviceIsWatch()
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType == 5;
}

uint64_t AXDeviceSupportsHapticMusic()
{
  if (AXDeviceSupportsHapticMusic_onceToken != -1)
  {
    AXDeviceSupportsHapticMusic_cold_1();
  }

  return AXDeviceSupportsHapticMusic_Supported;
}

uint64_t __AXDeviceSupportsHapticMusic_block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  if (result)
  {
    v19 = -1431778695;
    v18 = xmmword_1916713D0;
    if (soft_MGIsDeviceOfType_0(&v18))
    {
      goto LABEL_11;
    }

    v17 = -121925081;
    v16 = xmmword_1916713E4;
    if (soft_MGIsDeviceOfType_0(&v16))
    {
      goto LABEL_11;
    }

    v15 = -820493242;
    v14 = xmmword_1916713F8;
    if (soft_MGIsDeviceOfType_0(&v14))
    {
      goto LABEL_11;
    }

    v13 = -235416490;
    v12 = xmmword_19167140C;
    if (soft_MGIsDeviceOfType_0(&v12))
    {
      goto LABEL_11;
    }

    v11 = -61007701;
    v10 = xmmword_191671420;
    if (soft_MGIsDeviceOfType_0(&v10))
    {
      goto LABEL_11;
    }

    v9 = -1843102369;
    v8 = xmmword_191671434;
    if (soft_MGIsDeviceOfType_0(&v8) & 1) != 0 || (v7 = -427474227, v6 = xmmword_191671448, (soft_MGIsDeviceOfType_0(&v6)) || (v5 = 1477534141, v4 = xmmword_19167145C, (soft_MGIsDeviceOfType_0(&v4)) || (v3 = -232427879, v2 = xmmword_191671470, (soft_MGIsDeviceOfType_0(&v2)))
    {
LABEL_11:
      result = 0;
    }

    else
    {
      result = soft_MGGetBoolAnswer_0();
    }

    AXDeviceSupportsHapticMusic_Supported = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t soft_MGIsDeviceOfType_0(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMGIsDeviceOfTypeSymbolLoc_ptr_0;
  v10 = getMGIsDeviceOfTypeSymbolLoc_ptr_0;
  if (!getMGIsDeviceOfTypeSymbolLoc_ptr_0)
  {
    v3 = libMobileGestaltLibrary_0();
    v8[3] = dlsym(v3, "MGIsDeviceOfType");
    getMGIsDeviceOfTypeSymbolLoc_ptr_0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    soft_AXSettingsLocalizedStringForKey_cold_1();
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1);
}

uint64_t soft_MGGetBoolAnswer_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMGGetBoolAnswerSymbolLoc_ptr_1;
  v8 = getMGGetBoolAnswerSymbolLoc_ptr_1;
  if (!getMGGetBoolAnswerSymbolLoc_ptr_1)
  {
    v1 = libMobileGestaltLibrary_0();
    v6[3] = dlsym(v1, "MGGetBoolAnswer");
    getMGGetBoolAnswerSymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    soft_AXSettingsLocalizedStringForKey_cold_1();
    v4 = v3;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  return v0(@"cBy4BcYs5YWtFHbBpt4C6A");
}

uint64_t AXDeviceSupportsLiveRecognition()
{
  if (AXDeviceSupportsLiveRecognition_onceToken != -1)
  {
    AXDeviceSupportsLiveRecognition_cold_1();
  }

  return AXDeviceSupportsLiveRecognition_Supported;
}

uint64_t __AXDeviceSupportsLiveRecognition_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    AXDeviceSupportsLiveRecognition_Supported = 1;
  }

  return result;
}

void *__getMGGetSInt32AnswerSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = libMobileGestaltLibrary_0();
  result = dlsym(v2, "MGGetSInt32Answer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetSInt32AnswerSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libMobileGestaltLibrary_0()
{
  v13 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = libMobileGestaltLibraryCore_frameworkLibrary_1;
  v10 = libMobileGestaltLibraryCore_frameworkLibrary_1;
  if (!libMobileGestaltLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __libMobileGestaltLibraryCore_block_invoke_1;
    v4[4] = &unk_1E735B668;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E735B7A0;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary_1 = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  v1 = v4[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1915B4044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary_1 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMGIsDeviceOfTypeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = libMobileGestaltLibrary_0();
  result = dlsym(v2, "MGIsDeviceOfType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGIsDeviceOfTypeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = libMobileGestaltLibrary_0();
  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AXImageMonitor_dyld_image_callback()
{
  v0 = dyld_image_path_containing_address();
  if (v0)
  {
    v1 = v0;
    v2 = strlen(v0);
    if (v2)
    {
      v3 = v2;
      v4 = malloc_type_malloc(v2 + 1, 0x4EBEE755uLL);
      if (v4)
      {
        v5 = v4;
        strlcpy(v4, v1, v3 + 1);
        v6 = *(_Shared + 16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __AXImageMonitor_dyld_image_callback_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = v5;
        dispatch_async(v6, block);
      }
    }
  }
}

void *_loadOrderForInfo(void *result, unint64_t a2)
{
  if (result)
  {
    LOWORD(result) = [result unsignedIntegerValue];
  }

  else
  {
    if (a2 <= 0x12)
    {
      if (((1 << a2) & 0x6FF84) != 0)
      {
        LOWORD(result) = AXCodeItemLoadOrderBundle;
        return result;
      }

      if (((1 << a2) & 0x10070) != 0)
      {
        LOWORD(result) = AXCodeItemLoadOrderMainProgram;
        return result;
      }

      if (a2 == 3)
      {
        LOWORD(result) = AXCodeItemLoadOrderFramework;
        return result;
      }
    }

    if (a2 + 1 >= 2)
    {
      if (a2 == 1)
      {
        LOWORD(result) = AXCodeItemLoadOrderDylib;
      }
    }

    else
    {
      LOWORD(result) = AXCodeItemLoadOrderNotApplicable;
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1915B65F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void _AXLogWithFacility(int a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8, uint64_t a9, char a10, void *a11)
{
  v19 = _AXLogInitialize__AXLogInitializeOnceToken;
  v20 = a11;
  v21 = a2;
  if (v19 != -1)
  {
    _AXLogWithFacility_cold_1();
  }

  _AXLogWithFacilityV(a1, v21, a3, a4, a5, a6, a7, a8, 0, a10, v20);
}

void _AXLogWithFacilityV(int a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8, uint64_t a9, char a10, void *a11)
{
  v18 = a2;
  v19 = a11;
  if (_AXLogInitialize__AXLogInitializeOnceToken != -1)
  {
    _AXLogWithFacility_cold_1();
  }

  if (a6 && a4 && a10 && a3)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a4];
    v21 = [v20 lastPathComponent];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"|%@:%lu %s|", v21, a5, a6];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v22, v19];
  }

  else
  {
    if (a3)
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v19];
    }

    else
    {
      v24 = v19;
    }

    v23 = v24;
  }

  if (a7)
  {
    goto LABEL_16;
  }

  if (_AXLogShouldIncludeBacktrace_onceToken != -1)
  {
    _AXLogWithFacilityV_cold_2();
  }

  if (_AXLogShouldIncludeBacktrace_IncludeBacktraceInLogs == 1)
  {
LABEL_16:
    v25 = MEMORY[0x1E696AEC0];
    v26 = v23;
    v27 = [v25 alloc];
    v28 = [MEMORY[0x1E696AF00] callStackSymbols];
    v23 = [v27 initWithFormat:@"%@\n%@", v26, v28];
  }

  v29 = AXColorizeFormatLog(a1, v23);
  v30 = v18;
  v31 = v29;
  v32 = AXLoggerForFacility(v30);
  if (a8 <= 0.0)
  {
    [v31 UTF8String];
    os_log_with_args();
    v34 = v31;
  }

  else
  {
    [_AXLogThresholdCleanupTimer cancel];
    [_AXLogThresholdCleanupTimer afterDelay:&__block_literal_global_49_0 processBlock:15.0];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v33 = _AXLogThresholdQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___AXLogWithThreshold_block_invoke_2;
    block[3] = &unk_1E735BBD8;
    v34 = v31;
    v40 = v34;
    v41 = &v44;
    v42 = &v48;
    v43 = a8;
    dispatch_sync(v33, block);
    if (*(v45 + 24) == 1)
    {
      if (v49[3])
      {
        v35 = MEMORY[0x1E696AEC0];
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        v37 = [v35 stringWithFormat:@"(repeated %@ times(s)): %@", v36, v34];

        v34 = v37;
      }

      [v34 UTF8String];
      v38 = *(**vars0 + 8);
      os_log_with_args();
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
  }
}

void sub_1915B9F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

id AXColorizeFormatLog(int a1, void *a2)
{
  v3 = a2;
  v4 = +[AXLogColorizer defaultColorizer];
  v5 = v4;
  if (a1 == 3)
  {
    v6 = [v4 debugString:v3];
  }

  else if (a1 == 1)
  {
    v6 = [v4 warningString:v3];
  }

  else
  {
    if (a1)
    {
      [v4 infoString:v3];
    }

    else
    {
      [v4 errorString:v3];
    }
    v6 = ;
  }

  v7 = v6;

  return v7;
}

uint64_t AXOSLogLevelFromAXLogLevel(unsigned int a1)
{
  v1 = 0x2010010u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

id _AXStringForArgs(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [a1 stringByReplacingOccurrencesOfString:@"%{public}@" withString:@"%@"];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"%{public}s" withString:@"%s"];

  if (AXIsInternalInstall())
  {
    v11 = @"%@";
  }

  else
  {
    v11 = @"{redacted}";
  }

  v12 = [v10 stringByReplacingOccurrencesOfString:@"%{private}@" withString:v11];

  if (AXIsInternalInstall())
  {
    v13 = @"%s";
  }

  else
  {
    v13 = @"{redacted}";
  }

  v14 = [v12 stringByReplacingOccurrencesOfString:@"%{private}s" withString:v13];

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v14 arguments:&a9];

  return v15;
}

id AXLoggerForFacility(void *a1)
{
  v1 = a1;
  if (_AXLogInitialize__AXLogInitializeOnceToken != -1)
  {
    _AXLogWithFacility_cold_1();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v2 = _AXLogThresholdQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __AXLoggerForFacility_block_invoke;
  v6[3] = &unk_1E735B908;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AXLoggerForFacility_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"Accessibility";
  }

  v12 = v3;
  v4 = [_OSLogCache objectForKeyedSubscript:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [*MEMORY[0x1E69E4BA8] UTF8String];
    v8 = v12;
    v9 = os_log_create(v7, [(__CFString *)v12 UTF8String]);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [_OSLogCache setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v12];
  }
}

void AXPrintLine(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  AXPrintString(a1, v12);
}

void AXPrintString(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v5 = v3;
        goto LABEL_18;
      case 1:
        v6 = +[AXLogColorizer defaultColorizer];
        v7 = [v6 redString:v4];
        break;
      case 2:
        v6 = +[AXLogColorizer defaultColorizer];
        v7 = [v6 greenString:v4];
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      v6 = +[AXLogColorizer defaultColorizer];
      v7 = [v6 cyanString:v4];
    }

    else
    {
      if (a1 != 6)
      {
        goto LABEL_18;
      }

      v6 = +[AXLogColorizer defaultColorizer];
      v7 = [v6 magentaString:v4];
    }
  }

  else
  {
    +[AXLogColorizer defaultColorizer];
    if (a1 == 3)
      v6 = {;
      [v6 yellowString:v4];
    }

    else
      v6 = {;
      [v6 blueString:v4];
    }
    v7 = ;
  }

  v5 = v7;

LABEL_18:
  v8 = AXPrintString_AXEngineeringLog;
  if (!AXPrintString_AXEngineeringLog)
  {
    v9 = os_log_create([*MEMORY[0x1E69E4BA8] UTF8String], "axprintln");
    v10 = AXPrintString_AXEngineeringLog;
    AXPrintString_AXEngineeringLog = v9;

    v8 = AXPrintString_AXEngineeringLog;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v5;
    v12 = v8;
    v14 = 136315138;
    v15 = [v5 UTF8String];
    _os_log_impl(&dword_19159B000, v12, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

BOOL AXWillLogInfoWithFacility(void *a1)
{
  v1 = AXLoggerForFacility(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_INFO);

  return v2;
}

BOOL AXWillLogDebugWithFacility(void *a1)
{
  v1 = AXLoggerForFacility(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG);

  return v2;
}

id getAXSettingsClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXSettingsClass_softClass_1;
  v7 = getAXSettingsClass_softClass_1;
  if (!getAXSettingsClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXSettingsClass_block_invoke_1;
    v3[3] = &unk_1E735AD40;
    v3[4] = &v4;
    __getAXSettingsClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1915BA880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXSettingsClass_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E735BBB8;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_1)
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
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *_AXNameForCodeItemType(uint64_t a1)
{
  if ((a1 + 1) > 0x13)
  {
    return @"Unexpected!";
  }

  else
  {
    return off_1E735BC68[a1 + 1];
  }
}

void sub_1915BBAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1915BBC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t UIAccessibilitySymbolWithName(void *a1)
{
  v1 = a1;
  if (!_Symbols || (Value = CFDictionaryGetValue(_Symbols, v1)) == 0)
  {
    v3 = dlsym(8, [v1 UTF8String]);
    if (v3 || (v3 = dlsym(0xFFFFFFFFFFFFFFFELL, [v1 UTF8String])) != 0)
    {
      Value = v3;
    }

    else
    {
      v6 = AXLogValidations();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        UIAccessibilitySymbolWithName_cold_1(v1, v6);
      }

      Value = 1;
    }

    Mutable = _Symbols;
    if (!_Symbols)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], 0);
      _Symbols = Mutable;
    }

    CFDictionarySetValue(Mutable, v1, Value);
  }

  if (Value == 1)
  {
    Value = 0;
  }

  return Value;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1915BDA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1915BDBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __AXPerformSafeBlockWithErrorHandler_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 32) reason];
  v5 = [*(a1 + 32) callStackSymbols];
  v6 = [v2 stringWithFormat:@"Caught exception '%@' while performing safe block reason: '%@'. Stacktrace: %@.", v3, v4, v5];;

  return v6;
}

id __UIAccessibilityCastAsProtocol(void *a1, void *a2, int a3, char *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = [v8 conformsToProtocol:v7];
  if (a3)
  {
    if (v10 & 1 | ((AXPerformValidationChecks() & 1) == 0))
    {
      goto LABEL_7;
    }

    v11 = AXShouldCrashOnValidationErrors();
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromProtocol(v7);
    v24 = [MEMORY[0x1E696AF00] callStackSymbols];
    v20 = __UIAccessibilityHandleValidationErrorWithDescription(v11, 0, @"Failed to cast object <%@: %p> as protocol %@ %@", v15, v16, v17, v18, v19, v13);

    if (!v20)
    {
LABEL_7:
      if (!a4)
      {
        goto LABEL_10;
      }

      v21 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v21 = 1;
    }

    *a4 = v21;
  }

LABEL_10:
  if (v10)
  {
    v22 = v9;
    goto LABEL_13;
  }

LABEL_12:
  v22 = 0;
LABEL_13:

  return v22;
}

id __UIAccessibilityGetAssociatedNonRetainedObject(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 nonRetainedObject];

  return v3;
}

void __UIAccessibilitySetAssociatedNonRetainedObject(void *a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  value = [[NonRetainedObjectContainer alloc] initWithObject:v5];

  objc_setAssociatedObject(v6, a2, value, 1);
}

uint64_t __UIAccessibilityGetAssociatedInteger(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 integerValue];

  return v3;
}

void __UIAccessibilitySetAssociatedInteger(void *a1, const void *a2, void *a3)
{
  object = a1;
  if (a3)
  {
    a3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  }

  objc_setAssociatedObject(object, a2, a3, 1);
}

uint64_t __UIAccessibilityGetAssociatedInt(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 intValue];

  return v3;
}

void __UIAccessibilitySetAssociatedInt(void *a1, const void *a2, uint64_t a3)
{
  object = a1;
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  }

  else
  {
    v5 = 0;
  }

  objc_setAssociatedObject(object, a2, v5, 1);
}

uint64_t __UIAccessibilityGetAssociatedUnsignedInt(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 unsignedIntValue];

  return v3;
}

void __UIAccessibilitySetAssociatedUnsignedInt(void *a1, const void *a2, uint64_t a3)
{
  object = a1;
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  }

  else
  {
    v5 = 0;
  }

  objc_setAssociatedObject(object, a2, v5, 1);
}

uint64_t __UIAccessibilityGetAssociatedLong(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 longValue];

  return v3;
}

void __UIAccessibilitySetAssociatedLong(void *a1, const void *a2, void *a3)
{
  object = a1;
  if (a3)
  {
    a3 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  }

  objc_setAssociatedObject(object, a2, a3, 1);
}

uint64_t __UIAccessibilityGetAssociatedUnsignedInteger(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

void __UIAccessibilitySetAssociatedUnsignedInteger(void *a1, const void *a2, void *a3)
{
  object = a1;
  if (a3)
  {
    a3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  }

  objc_setAssociatedObject(object, a2, a3, 1);
}

uint64_t __UIAccessibilityGetAssociatedRange(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rangeValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __UIAccessibilitySetAssociatedRange(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  object = a1;
  if (a3 | a4)
  {
    v7 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
  }

  else
  {
    v7 = 0;
  }

  objc_setAssociatedObject(object, a2, v7, 1);
}

double __UIAccessibilityGetAssociatedTimeInterval(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void __UIAccessibilitySetAssociatedTimeInterval(void *a1, const void *a2, double a3)
{
  object = a1;
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a3];
  }

  objc_setAssociatedObject(object, a2, v5, 1);
}

double __UIAccessibilityGetAssociatedCGFloat(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void __UIAccessibilitySetAssociatedCGFloat(void *a1, const void *a2, double a3)
{
  object = a1;
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  }

  objc_setAssociatedObject(object, a2, v5, 1);
}

double __UIAccessibilityGetAssociatedCGPoint(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 pointValue];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  return v5;
}

void __UIAccessibilitySetAssociatedCGPoint(void *a1, const void *a2, double a3, double a4)
{
  object = a1;
  if (a3 == *MEMORY[0x1E695EFF8] && a4 == *(MEMORY[0x1E695EFF8] + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696B098] valueWithPoint:{a3, a4}];
  }

  objc_setAssociatedObject(object, a2, v8, 1);
}

double __UIAccessibilityGetAssociatedCGRect(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 rectValue];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  return v5;
}

void __UIAccessibilitySetAssociatedCGRect(void *a1, const void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  object = a1;
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (CGRectEqualToRect(v14, *MEMORY[0x1E695F058]))
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696B098] valueWithRect:{a3, a4, a5, a6}];
  }

  objc_setAssociatedObject(object, a2, v11, 1);
}

void sub_1915BECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1915BF05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void _AXInitializeSafeSwiftValueSupport()
{
  if (_AXInitializeSafeSwiftValueSupport_onceToken != -1)
  {
    _AXInitializeSafeSwiftValueSupport_cold_1();
  }
}

void _bulkAddMethodsFromClass(objc_class *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  outCount = 0;
  v4 = class_copyMethodList(a1, &outCount);
  v5 = v4;
  v6 = outCount;
  if (!outCount)
  {
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v7 = 8 * outCount;
  if (outCount <= 0x55)
  {
    v21 = a2;
    MEMORY[0x1EEE9AC00](v4, 48 * outCount);
    v9 = &v20 - ((v8 + 15) & 0x7FFFFFFFF0);
    bzero(v9, v8);
    v10 = &v9[v7];
    v11 = &v9[16 * v6];
    goto LABEL_8;
  }

  v9 = malloc_type_malloc(48 * outCount, 0xD271B80FuLL);
  v10 = &v9[v7];
  v11 = &v9[16 * v6];
  if (outCount)
  {
    v21 = a2;
LABEL_8:
    v12 = 0;
    v13 = 0;
    do
    {
      Name = method_getName(v5[v12]);
      TypeEncoding = method_getTypeEncoding(v5[v12]);
      InstanceMethod = class_getInstanceMethod(a1, Name);
      if (InstanceMethod)
      {
        Implementation = method_getImplementation(InstanceMethod);
        if (Implementation)
        {
          *&v9[8 * v13] = Name;
          *&v10[8 * v13] = Implementation;
          *&v11[8 * v13++] = TypeEncoding;
        }
      }

      ++v12;
    }

    while (v12 < outCount);
    goto LABEL_13;
  }

  if (v5)
  {
LABEL_13:
    free(v5);
  }

  v22 = 0;
  v18 = class_addMethodsBulk();
  if (v18)
  {
    free(v18);
  }

  if (v6 >= 0x56)
  {
    v4 = v9;
LABEL_18:
    free(v4);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

__CFString *__UIAccessibilityCastAsSwiftStruct(void *a1, void *a2, int a3, char *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  IsStructWithTypeName = _AXSafeSwiftIsStructWithTypeName(v8, v7);
  if (a3)
  {
    if (IsStructWithTypeName & 1 | ((AXPerformValidationChecks() & 1) == 0))
    {
      goto LABEL_7;
    }

    v11 = AXShouldCrashOnValidationErrors();
    v12 = _AXSafeSwiftTypeName(v9);
    v22 = [MEMORY[0x1E696AF00] callStackSymbols];
    v18 = __UIAccessibilityHandleValidationErrorWithDescription(v11, 0, @"Failed to cast object <%@: %p> as struct %@ %@", v13, v14, v15, v16, v17, v12);

    if (!v18)
    {
LABEL_7:
      if (!a4)
      {
        goto LABEL_10;
      }

      v19 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v19 = 1;
    }

    *a4 = v19;
  }

LABEL_10:
  if (IsStructWithTypeName)
  {
    v20 = v9;
    goto LABEL_13;
  }

LABEL_12:
  v20 = &stru_1F0579798;
LABEL_13:

  return v20;
}

__CFString *__UIAccessibilityCastAsSwiftEnum(void *a1, void *a2, int a3, char *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  IsEnumWithTypeName = _AXSafeSwiftIsEnumWithTypeName(v8, v7);
  if (a3)
  {
    if (IsEnumWithTypeName & 1 | ((AXPerformValidationChecks() & 1) == 0))
    {
      goto LABEL_7;
    }

    v11 = AXShouldCrashOnValidationErrors();
    v12 = _AXSafeSwiftTypeName(v9);
    v22 = [MEMORY[0x1E696AF00] callStackSymbols];
    v18 = __UIAccessibilityHandleValidationErrorWithDescription(v11, 0, @"Failed to cast object <%@: %p> as enum %@ %@", v13, v14, v15, v16, v17, v12);

    if (!v18)
    {
LABEL_7:
      if (!a4)
      {
        goto LABEL_10;
      }

      v19 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v19 = 1;
    }

    *a4 = v19;
  }

LABEL_10:
  if (IsEnumWithTypeName)
  {
    v20 = v9;
    goto LABEL_13;
  }

LABEL_12:
  v20 = &stru_1F0579798;
LABEL_13:

  return v20;
}

__CFString *__UIAccessibilityCastAsSwiftTuple(void *a1, int a2, char *a3)
{
  v5 = a1;
  if (!v5)
  {
    goto LABEL_12;
  }

  IsTuple = _AXSafeSwiftIsTuple();
  if (a2)
  {
    if (IsTuple | ((AXPerformValidationChecks() & 1) == 0))
    {
      goto LABEL_7;
    }

    v7 = AXShouldCrashOnValidationErrors();
    v8 = _AXSafeSwiftTypeName(v5);
    v18 = [MEMORY[0x1E696AF00] callStackSymbols];
    v14 = __UIAccessibilityHandleValidationErrorWithDescription(v7, 0, @"Failed to cast object <%@: %p> as tuple %@", v9, v10, v11, v12, v13, v8);

    if (!v14)
    {
LABEL_7:
      if (!a3)
      {
        goto LABEL_10;
      }

      v15 = 0;
    }

    else
    {
      if (!a3)
      {
        abort();
      }

      v15 = 1;
    }

    *a3 = v15;
  }

LABEL_10:
  if (IsTuple)
  {
    v16 = v5;
    goto LABEL_13;
  }

LABEL_12:
  v16 = &stru_1F0579798;
LABEL_13:

  return v16;
}

void _AXAssert(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30[3] = *MEMORY[0x1E69E9840];
  v13 = a5;
  if (_AXSInUnitTestMode())
  {
    *buf = &a9;
    [MEMORY[0x1E695DF30] raise:@"AccessibilityUnitTestingException" format:v13 arguments:&a9];
  }

  else
  {
    if (a1)
    {
      v14 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v14 = OS_LOG_TYPE_FAULT;
    }

    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
    v16 = [v15 lastPathComponent];
    v24 = &a9;
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13 arguments:&a9];
    v18 = AXLogCommon();
    if (os_log_type_enabled(v18, v14))
    {
      *buf = 136315906;
      *&buf[4] = a4;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2048;
      v29 = a3;
      LOWORD(v30[0]) = 2112;
      *(v30 + 2) = v17;
      _os_log_impl(&dword_19159B000, v18, v14, "*** Assertion failure in %s, %@:%lu: %@", buf, 0x2Au);
    }

    if (a1)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v19 = getAXSettingsClass_softClass_2;
      v27 = getAXSettingsClass_softClass_2;
      if (!getAXSettingsClass_softClass_2)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAXSettingsClass_block_invoke_2;
        v29 = &unk_1E735AD40;
        v30[0] = &v24;
        __getAXSettingsClass_block_invoke_2(buf);
        v19 = v25[3];
      }

      v20 = v19;
      _Block_object_dispose(&v24, 8);
      v21 = [v19 sharedInstance];
      v22 = [v21 ignoreAXAsserts];

      if ((v22 & 1) == 0)
      {
        _AXAssert_cold_1();
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

Class __getAXSettingsClass_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E735BD78;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_2)
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
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void AXValidationManagerSendExceptionForSafeValueKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[AXValidationManager sharedInstance];
  [v5 sendExceptionForSafeValueKey:v4 onTarget:v3 overrideProcessName:0];
}

void _UIValidationAXAppendError(void *a1)
{
  v1 = a1;
  if (AXShouldLogValidationErrors())
  {
    UIAXAppendValidationError(v1);
  }
}

void _UIReportSenderError(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (AXShouldReportValidationErrors())
  {
    v4 = +[AXValidationManager sharedInstance];
    [v4 sendExceptionForInstallingSafeCategory:v3 onTarget:v5 overrideProcessName:0];
  }
}

Class _AXClassFromStringWithFallback(void *a1)
{
  v1 = a1;
  v2 = NSClassFromString(v1);
  if (!v2)
  {
    v3 = [(NSString *)v1 componentsSeparatedByString:@"."];
    v4 = _AXGetSwiftMangledClassNameWithItems();
    v2 = NSClassFromString(v4);
  }

  v5 = v2;

  return v2;
}

void sub_1915C43E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1915C5418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

objc_ivar *__ax_verbose_encode_with_type_encoding_group_class(objc_class *a1, const char *a2)
{
  result = class_getInstanceVariable(a1, a2);
  if (result)
  {

    return ivar_getTypeEncoding(result);
  }

  return result;
}

Class __getAXSettingsClass_block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_3)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_3;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E735BEA8;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_3)
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
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *AXCFormattedString(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v20[1] = &a9;
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v20[0] = 0;
  v14 = [v12 initWithValidatedFormat:v10 validFormatSpecifiers:v11 locale:v13 arguments:&a9 error:v20];
  v15 = v20[0];

  if (v15)
  {
    v16 = AXLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v22 = v15;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_fault_impl(&dword_19159B000, v16, OS_LOG_TYPE_FAULT, "Error creating string: %@ [%@/%@]", buf, 0x20u);
    }

    v17 = &stru_1F0579798;
  }

  else
  {
    v17 = v14;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id AXCLanguageCanonicalFormToGeneralLanguageUsingFallback(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = AXCRemapLanguageCodeToFallbackIfNeccessary(v3);

    v4 = v5;
  }

  v6 = [v4 lowercaseString];

  v7 = AXCLanguageToLocales();
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = v8;

    v6 = v9;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [&unk_1F0585160 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(&unk_1F0585160);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([v6 rangeOfString:v14] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = [v6 substringToIndex:{objc_msgSend(v6, "rangeOfString:", v14)}];
          goto LABEL_15;
        }
      }

      v11 = [&unk_1F0585160 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = v6;
LABEL_15:
  v16 = v15;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id AXCRemapLanguageCodeToFallbackIfNeccessary(void *a1)
{
  v1 = a1;
  v2 = AXCLanguageToFallbacks();
  v3 = [v1 lowercaseString];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v4 = v1;
  }

  return v4;
}

__CFString *AXCLanguageConvertToCanonicalForm(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v4 = v1;
    v6 = v4;
    goto LABEL_27;
  }

  v2 = AXCRemapLanguageCodeToFallbackIfNeccessary(v1);

  v3 = AXCLanguageToLocales();
  v4 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v5 = [(__CFString *)v4 lowercaseString];
  v6 = [v3 objectForKey:v5];
  if (!v6)
  {
    v7 = [(__CFString *)v4 rangeOfString:@"-"];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v4;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = v7;
      v9 = [(__CFString *)v4 substringToIndex:v7];
      v10 = [(__CFString *)v4 substringFromIndex:v8 + 1];
      v11 = [v10 uppercaseString];
      v6 = [v9 stringByAppendingFormat:@"-%@", v11];

      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  if ((![v5 isEqualToString:@"zh"] || (-[__CFString hasPrefix:](v6, "hasPrefix:", @"zh") & 1) == 0) && (!objc_msgSend(v5, "isEqualToString:", @"pt") || (-[__CFString hasPrefix:](v6, "hasPrefix:", @"pt") & 1) == 0) && (!objc_msgSend(v5, "isEqualToString:", @"fr") || (-[__CFString hasPrefix:](v6, "hasPrefix:", @"fr") & 1) == 0) && (!objc_msgSend(v5, "isEqualToString:", @"en") || !-[__CFString hasPrefix:](v6, "hasPrefix:", @"en")))
  {
    goto LABEL_26;
  }

LABEL_16:
  v12 = [v5 isEqualToString:@"zh"];
  v13 = CFLocaleCopyPreferredLanguages();
  v14 = [(__CFArray *)v13 firstObject];
  if (!v12)
  {

    if (v14)
    {
      v16 = [(__CFString *)v14 lowercaseString];
      v17 = [v3 objectForKeyedSubscript:v16];
      if (!v17)
      {
LABEL_23:

        goto LABEL_25;
      }

      v18 = v17;
      v19 = [(__CFString *)v14 lowercaseString];
      v20 = [v19 hasPrefix:v5];

      if (v20)
      {
        v16 = v6;
        v6 = v14;
        goto LABEL_23;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  v15 = [(__CFString *)v14 stringByReplacingOccurrencesOfString:@"-Hans" withString:&stru_1F0579798];

  v14 = [v15 stringByReplacingOccurrencesOfString:@"-Hant" withString:&stru_1F0579798];

  if (([(__CFString *)v14 hasPrefix:@"zh"]& 1) == 0)
  {
    v6 = @"zh-CN";
    goto LABEL_25;
  }

  v6 = v14;
LABEL_26:

LABEL_27:

  return v6;
}

id AXCLocString(void *a1)
{
  v1 = a1;
  v2 = AXCBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"AXCoreUtilities"];

  return v3;
}

id AXFormatNumber(void *a1)
{
  v1 = AXFormatNumber__AXNumberFormatterOnceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXFormatNumber_cold_1();
  }

  v3 = [AXFormatNumber__AXNumberFormatter stringFromNumber:v2];

  return v3;
}

uint64_t __AXFormatNumber_block_invoke()
{
  AXFormatNumber__AXNumberFormatter = objc_alloc_init(MEMORY[0x1E696ADA0]);

  return MEMORY[0x1EEE66BB8]();
}