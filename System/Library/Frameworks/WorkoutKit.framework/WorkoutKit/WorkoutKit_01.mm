unint64_t Apple_Workout_WorkoutAlert.workoutKitZoneRepresentation(alertMetric:)@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v46 - v4;
  v5 = type metadata accessor for Apple_Workout_PowerAlert(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v46 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  v27 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8) != 1)
  {
    goto LABEL_4;
  }

  v31 = *v1;
  if (*v1 <= 3)
  {
    if ((v31 - 1) >= 3)
    {
LABEL_4:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      v33 = 0;
LABEL_21:
      *v32 = v33;
      return swift_willThrow();
    }

LABEL_20:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    v33 = 1;
    goto LABEL_21;
  }

  if (v31 == 4)
  {
    v36 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v1 + *(v36 + 24), v24, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v37 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v37 - 8) + 48))(v24, 1, v37) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v24, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_20;
    }

    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of Apple_Workout_PowerAlert(v24, v8, type metadata accessor for Apple_Workout_PowerAlert);
      v38 = v48;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v8, v48, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v8, type metadata accessor for Apple_Workout_PowerAlert);
      v39 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v38, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
        goto LABEL_20;
      }

      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v41 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget;
        v42 = v38;
        goto LABEL_19;
      }

      outlined init with take of Apple_Workout_PowerAlert(v38, v17, type metadata accessor for Apple_Workout_ZoneValue);
      v44 = *v17;
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v17, type metadata accessor for Apple_Workout_ZoneValue);
      v45 = v47;
      v47[3] = &type metadata for PowerZoneAlert;
      result = lazy protocol witness table accessor for type PowerZoneAlert and conformance PowerZoneAlert();
      goto LABEL_28;
    }

    v41 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
    v42 = v24;
LABEL_19:
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v42, v41);
    goto LABEL_20;
  }

  if (v31 != 5)
  {
    goto LABEL_20;
  }

  v34 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v1 + *(v34 + 24), v26, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v35 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v35 - 8) + 48))(v26, 1, v35) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v26, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v41 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
    v42 = v26;
    goto LABEL_19;
  }

  outlined init with take of Apple_Workout_PowerAlert(v26, v30, type metadata accessor for Apple_Workout_HeartRateAlert);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v30, v12, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v30, type metadata accessor for Apple_Workout_HeartRateAlert);
  v40 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v40 - 8) + 48))(v12, 1, v40) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v12, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget;
    v42 = v12;
    goto LABEL_19;
  }

  outlined init with take of Apple_Workout_PowerAlert(v12, v19, type metadata accessor for Apple_Workout_ZoneValue);
  v44 = *v19;
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v19, type metadata accessor for Apple_Workout_ZoneValue);
  v45 = v47;
  v47[3] = &type metadata for HeartRateZoneAlert;
  result = lazy protocol witness table accessor for type HeartRateZoneAlert and conformance HeartRateZoneAlert();
LABEL_28:
  v45[4] = result;
  *v45 = v44;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for NSUnitPower(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PowerZoneAlert and conformance PowerZoneAlert()
{
  result = lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert;
  if (!lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert;
  if (!lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert;
  if (!lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert);
  }

  return result;
}

uint64_t Apple_Workout_Internal_ScheduledWorkoutPlan.workoutKitRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v54 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v50 - v8;
  v9 = type metadata accessor for Date();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - v14;
  v16 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WorkoutPlan(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + *(type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0) + 20));
  v26 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutPlan?(v25 + v26, v15);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v20 = 0;
    *(v20 + 1) = 0xE000000000000000;
    v28 = v16[5];
    v29 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
    (*(*(v29 - 8) + 56))(&v20[v28], 1, 1, v29);
    *&v20[v16[6]] = MEMORY[0x277D84F90];
    v30 = &v20[v16[7]];
    *v30 = 0;
    v30[8] = 1;
    *&v20[v16[8]] = 0;
    *&v20[v16[9]] = 0;
    v31 = &v20[v16[10]];
    UnknownStorage.init()();
    v32 = v16[11];
    v33 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
    v34 = &v20[v32];
    v3 = v2;
    (*(*(v33 - 8) + 56))(v34, 1, 1, v33);
    v35 = &v20[v16[12]];
    *v35 = 0;
    *(v35 + 1) = 0;
    if (v27(v15, 1, v16) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutPlan?(v15);
    }
  }

  else
  {
    outlined init with take of WorkoutPlan(v15, v20, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  result = WorkoutPlan.init(from:)(v20, v24);
  if (!v3)
  {
    v37 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
    swift_beginAccess();
    v38 = *(v25 + v37);
    Date.init(timeIntervalSince1970:)();
    v39 = (v25 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp);
    swift_beginAccess();
    if (v39[1])
    {
      v40 = 1;
      v41 = v50;
    }

    else
    {
      v42 = *v39;
      v41 = v50;
      Date.init(timeIntervalSince1970:)();
      v40 = 0;
    }

    v44 = v51;
    v43 = v52;
    v45 = *(v51 + 56);
    v45(v41, v40, 1, v52);
    v46 = v54;
    outlined init with take of WorkoutPlan(v24, v54, type metadata accessor for WorkoutPlan);
    v47 = v53;
    outlined init with take of Date?(v41, v53);
    v48 = type metadata accessor for ScheduledWorkoutPlan();
    v49 = *(v48 + 24);
    v45(v46 + v49, 1, 1, v43);
    (*(v44 + 32))(v46 + *(v48 + 20), v55, v43);
    return outlined assign with take of Date?(v47, v46 + v49);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutPlan?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutPlan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(a1, a2, a3);
  if (!v4)
  {
    v7 = type metadata accessor for WorkoutStep();
    outlined init with copy of WorkoutStep?(v3 + *(v7 + 20), v10, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
      if (swift_dynamicCast())
      {
        v8 = *(&v13 + 1);
        if (*(&v13 + 1))
        {
          v9 = v14;
          __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
          (*(v9 + 32))(a1, a2, 1, v8, v9);
          __swift_destroy_boxed_opaque_existential_0Tm(&v12);
          return;
        }
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {
      outlined destroy of WorkoutStep?(v10, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    outlined destroy of WorkoutStep?(&v12, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
  }
}

uint64_t static CustomWorkout.supportsActivity(_:)(uint64_t a1)
{
  if (qword_284E21CD8 == a1 || unk_284E21CE0 == a1 || qword_284E21CE8 == a1)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v4 = swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 0;
  }

  else
  {
    if (a1 != 46)
    {
      return 1;
    }

    v19[3] = &type metadata for WorkoutKitFeatures;
    v19[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v19[0]) = 0;
    v16 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    if (v16)
    {
      return 1;
    }

    type metadata accessor for CustomValidationError(0);
    lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError);
    v4 = swift_allocError();
    *v18 = 46;
    swift_storeEnumTagMultiPayload();
  }

  swift_willThrow();
  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WorkoutKitLog.validations);
  v7 = v4;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    v19[5] = v4;
    v12 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B5E7000, v8, v9, "Not supported due to %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEA1330](v11, -1, -1);
    MEMORY[0x23EEA1330](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t static CustomWorkout.supportsAlert(_:activity:location:)(void *a1, uint64_t a2, uint64_t a3)
{
  specialized static CustomWorkout.validateActivity(_:)(a2);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return (*(v7 + 24))(a2, a3, v6, v7) & 1;
}

void _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v68 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v66 = *(v65 - 8);
  v4 = *(v66 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v60 = *(v10 - 8);
  v11 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v67 = *(v64 - 8);
  v14 = *(v67 + 64);
  v15 = MEMORY[0x28223BE20](v64);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  v20 = type metadata accessor for WorkoutGoal();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v3;
  outlined init with copy of WorkoutStep(v3, v23, type metadata accessor for WorkoutGoal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v44 = *v23;
      v45 = *(v23 + 1);
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v46 = v45;
      Measurement.init(value:unit:)();
      v47 = v65;
      Measurement.value.getter();
      if (v48 <= 0.0)
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v66 + 8))(v9, v47);
      }

      else
      {
        (*(v66 + 8))(v9, v47);
      }
    }

    else
    {
      v29 = *v23;
      v30 = *(v23 + 1);
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
      v31 = v30;
      Measurement.init(value:unit:)();
      switch(v68)
      {
        case 1:
        case 3:
        case 13:
        case 21:
        case 24:
        case 27:
        case 31:
        case 36:
        case 37:
        case 46:
        case 52:
        case 60:
        case 61:
        case 67:
        case 70:
        case 71:
        case 75:
          goto LABEL_11;
        case 25:
        case 35:
        case 39:
        case 41:
          if (v61 == 2)
          {
            type metadata accessor for GoalValidationError(0);
            lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
            swift_allocError();
            *v54 = v68;
            v54[1] = 2;
LABEL_26:
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            (*(v67 + 8))(v19, v64);
          }

          else
          {
LABEL_11:
            v32 = v64;
            Measurement.value.getter();
            if (v33 <= 0.0)
            {
              type metadata accessor for GoalValidationError(0);
              lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
              swift_allocError();
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              (*(v67 + 8))(v19, v32);
            }

            else
            {
              (*(v67 + 8))(v19, v32);
            }
          }

          break;
        default:
          type metadata accessor for GoalValidationError(0);
          lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
          swift_allocError();
          v56 = v55;
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
          v58 = *(v57 + 48);
          v59 = *(v57 + 64);
          outlined init with copy of WorkoutStep(v63, v56, type metadata accessor for WorkoutGoal);
          *(v56 + v58) = v68;
          *(v56 + v59) = v61;
          goto LABEL_26;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = *v23;
      v35 = *(v23 + 1);
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      v36 = v35;
      Measurement.init(value:unit:)();
      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError);
      swift_allocError();
      v38 = v37;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v40 = *(v39 + 48);
      v41 = *(v39 + 64);
      outlined init with copy of WorkoutStep(v63, v38, type metadata accessor for WorkoutGoal);
      *(v38 + v40) = v68;
      *(v38 + v41) = v61;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v42 = *(v60 + 8);
      v43 = v13;
LABEL_20:
      v42(v43, v10);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
      v10 = v64;
      (*(v67 + 32))(v17, v23, v64);
      v26 = v65;
      (*(v66 + 32))(v7, &v23[v25], v65);
      if (v68 == 46 && v62 == 1)
      {
        Measurement.value.getter();
        if (v27 > 0.0)
        {
          Measurement.value.getter();
          if (v28 > 0.0)
          {
            goto LABEL_19;
          }
        }

        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
      }

      else
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
        v50 = v49;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMR);
        v52 = *(v51 + 48);
        v53 = *(v51 + 64);
        outlined init with copy of WorkoutStep(v63, v50, type metadata accessor for WorkoutGoal);
        *(v50 + v52) = v68;
        *(v50 + v53) = v62;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_19:
      (*(v66 + 8))(v7, v26);
      v42 = *(v67 + 8);
      v43 = v17;
      goto LABEL_20;
    }
  }
}

void _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v52 = *(v50 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v15 = &v47 - v14;
  v16 = type metadata accessor for WorkoutGoal();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v3;
  outlined init with copy of WorkoutStep(v3, v19, type metadata accessor for WorkoutGoal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
        (*(v52 + 8))(v19, v50);
        (*(v51 + 8))(&v19[v21], v5);
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
        v23 = v22;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMR);
        v25 = *(v24 + 48);
        v26 = *(v24 + 64);
        outlined init with copy of WorkoutStep(v49, v23, type metadata accessor for WorkoutGoal);
        *(v23 + v25) = v53;
        *(v23 + v26) = v48;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      return;
    }

    v34 = *v19;
    v35 = *(v19 + 1);
    type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    v30 = v35;
    Measurement.init(value:unit:)();
    Measurement.value.getter();
    if (v36 <= 0.0)
    {
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v47 + 8))(v12, v9);
      return;
    }

    (*(v47 + 8))(v12, v9);
LABEL_13:

    return;
  }

  if (EnumCaseMultiPayload)
  {
    v37 = *v19;
    v38 = *(v19 + 1);
    type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    v30 = v38;
    Measurement.init(value:unit:)();
    Measurement.value.getter();
    if (v39 <= 0.0)
    {
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v51 + 8))(v8, v5);
      return;
    }

    (*(v51 + 8))(v8, v5);
    goto LABEL_13;
  }

  v27 = a2;
  v28 = *v19;
  v29 = *(v19 + 1);
  type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v30 = v29;
  Measurement.init(value:unit:)();
  v31 = v53;
  switch(v53)
  {
    case 1:
    case 3:
    case 13:
    case 21:
    case 24:
    case 27:
    case 31:
    case 36:
    case 37:
    case 46:
    case 52:
    case 60:
    case 61:
    case 67:
    case 70:
    case 71:
    case 75:
      goto LABEL_7;
    case 25:
    case 35:
    case 39:
    case 41:
      if (a2 == 2)
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
        *v40 = v31;
        v40[1] = 2;
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v46 = v50;
        swift_willThrow();

        (*(v52 + 8))(v15, v46);
      }

      else
      {
LABEL_7:
        v32 = v50;
        Measurement.value.getter();
        if (v33 > 0.0)
        {
          (*(v52 + 8))(v15, v32);
          goto LABEL_13;
        }

        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v52 + 8))(v15, v32);
      }

      break;
    default:
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
      swift_allocError();
      v42 = v41;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v44 = *(v43 + 48);
      v45 = *(v43 + 64);
      outlined init with copy of WorkoutStep(v49, v42, type metadata accessor for WorkoutGoal);
      *(v42 + v44) = v31;
      *(v42 + v45) = v27;
      goto LABEL_20;
  }
}

uint64_t CustomWorkout.activity.setter(uint64_t result)
{
  *v1 = result;
  if (qword_284E21CD8 == result || unk_284E21CE0 == result || qword_284E21CE8 == result)
  {
    v5 = result;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v6 = swift_allocError();
    *v7 = v5;
    *(v7 + 8) = 0;
LABEL_13:
    swift_willThrow();
    v10[0] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (result == 46)
  {
    v10[3] = &type metadata for WorkoutKitFeatures;
    v10[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v10[0]) = 0;
    v4 = isFeatureEnabled(_:)();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v10);
    if ((v4 & 1) == 0)
    {
      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError);
      v6 = swift_allocError();
      *v8 = 46;
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }
  }

  return result;
}

void (*CustomWorkout.activity.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  return CustomWorkout.activity.modify;
}

void CustomWorkout.activity.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = **(v2 + 40);
    if (qword_284E21CD8 == v3 || unk_284E21CE0 == v3 || qword_284E21CE8 == v3)
    {
      lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
      v7 = swift_allocError();
      *v8 = v3;
      *(v8 + 8) = 0;
    }

    else
    {
      if (v3 != 46)
      {
        goto LABEL_11;
      }

      *(v2 + 24) = &type metadata for WorkoutKitFeatures;
      *(v2 + 32) = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
      *v2 = 0;
      v6 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v2);
      if (v6)
      {
        goto LABEL_11;
      }

      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError);
      v7 = swift_allocError();
      *v9 = 46;
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
    *v2 = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_11:

  free(v2);
}

void key path setter for CustomWorkout.location : CustomWorkout(void *a1, uint64_t a2)
{
  *(a2 + 8) = *a1;
  CustomWorkout.validate()();
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void CustomWorkout.location.setter(uint64_t a1)
{
  *(v1 + 8) = a1;
  CustomWorkout.validate()();
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CustomWorkout.validate()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  v2 = *v0;
  [v1 setActivityType_];
  [v1 setLocationType_];
  [v1 setSwimmingLocationType_];
  v3 = type metadata accessor for CustomWorkout();
  specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v1, v0 + v3[7], *(v0 + v3[8]), v0 + v3[9]);
}

void CustomWorkout.location.modify(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = a1[1];
    CustomWorkout.validate()();
    if (v4)
    {
      *a1 = v4;
      v5 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t CustomWorkout.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CustomWorkout.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CustomWorkout.warmup.setter(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutStep();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for CustomWorkout() + 28);
  outlined assign with copy of WorkoutStep?(a1, v1 + v8);
  if ((*(v4 + 48))(v1 + v8, 1, v3))
  {
    return outlined destroy of WorkoutStep?(a1, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  outlined init with copy of WorkoutStep(v1 + v8, v7, type metadata accessor for WorkoutStep);
  _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(*v1, v1[1], *v1 == 46);
  outlined destroy of WorkoutStep?(a1, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  return outlined destroy of WorkoutStep(v7, type metadata accessor for WorkoutStep);
}

void (*CustomWorkout.warmup.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = type metadata accessor for WorkoutStep();
  *(v5 + 16) = v6;
  v7 = *(v6 - 8);
  *(v5 + 24) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = *(type metadata accessor for CustomWorkout() + 28);
  return CustomWorkout.warmup.modify;
}

void CustomWorkout.warmup.modify(uint64_t *a1, char a2)
{
  CustomWorkout.warmup.modify(a1, a2);
}

{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 8);
    if (!(*(*(v2 + 24) + 48))(v4 + v3, 1, *(v2 + 16)))
    {
      outlined init with copy of WorkoutStep(v4 + v3, *(v2 + 32), type metadata accessor for WorkoutStep);
      _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(*v4, v4[1], *v4 == 46);
      outlined destroy of WorkoutStep(*(v2 + 32), type metadata accessor for WorkoutStep);
    }
  }

  free(*(v2 + 32));

  free(v2);
}

uint64_t CustomWorkout.blocks.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomWorkout() + 32));
}

uint64_t key path setter for CustomWorkout.blocks : CustomWorkout(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for CustomWorkout() + 32);
  v5 = *(a2 + v4);

  *(a2 + v4) = v3;

  specialized Sequence.forEach(_:)(v6, a2);
}

uint64_t CustomWorkout.blocks.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomWorkout() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;

  specialized Sequence.forEach(_:)(v5, v1);
}

uint64_t closure #1 in CustomWorkout.blocks.didset(uint64_t *a1, uint64_t *a2)
{
  v22 = type metadata accessor for IntervalStep();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v22);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  v23 = *a2 == 46;
  v21 = *(v10 + 16);
  if (v21)
  {
    v12 = 0;
    v29 = a2[1];
    v13 = &_s10WorkoutKit0A5Alert_pSgMR;
    v19 = v10;
    v20 = v5;
    do
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = v13;
      outlined init with copy of WorkoutStep(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v9, type metadata accessor for IntervalStep);
      v15 = &v9[*(v22 + 20)];
      _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(v11, v29, v23);
      if (v2)
      {
        return outlined destroy of WorkoutStep(v9, type metadata accessor for IntervalStep);
      }

      v16 = &v15[*(type metadata accessor for WorkoutStep() + 20)];
      v13 = v14;
      outlined init with copy of WorkoutStep?(v16, v24, &_s10WorkoutKit0A5Alert_pSgMd, v14);
      if (v25)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
        if (swift_dynamicCast())
        {
          v17 = *(&v27 + 1);
          v13 = v14;
          if (*(&v27 + 1))
          {
            v18 = v28;
            __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
            (*(v18 + 32))(v11, v29, 1, v17, v18);
            __swift_destroy_boxed_opaque_existential_0Tm(&v26);
            v10 = v19;
            v5 = v20;
            v13 = v14;
            goto LABEL_5;
          }
        }

        else
        {
          v28 = 0;
          v26 = 0u;
          v27 = 0u;
          v13 = v14;
        }
      }

      else
      {
        outlined destroy of WorkoutStep?(v24, &_s10WorkoutKit0A5Alert_pSgMd, v14);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      outlined destroy of WorkoutStep?(&v26, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
LABEL_5:
      ++v12;
      result = outlined destroy of WorkoutStep(v9, type metadata accessor for IntervalStep);
    }

    while (v21 != v12);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = (result + 40);
    do
    {
      v7 = v5;
      v8 = *v6;
      v9[0] = *(v6 - 1);
      v9[1] = v8;

      closure #1 in CustomWorkout.blocks.didset(v9, a2);

      if (v2)
      {
        break;
      }

      v5 = v7 - 1;
      v6 += 2;
    }

    while (v7);
  }

  return result;
}

uint64_t (*CustomWorkout.blocks.modify(uint64_t a1))(uint64_t result, char a2)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for CustomWorkout() + 32);
  return CustomWorkout.blocks.modify;
}

uint64_t CustomWorkout.blocks.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 8);
    v3 = *(v2 + *(result + 16));

    specialized Sequence.forEach(_:)(v4, v2);
  }

  return result;
}

uint64_t key path setter for CustomWorkout.warmup : CustomWorkout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  outlined init with copy of WorkoutStep?(a1, &v12 - v9, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  return a5(v10);
}

uint64_t CustomWorkout.cooldown.setter(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutStep();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for CustomWorkout() + 36);
  outlined assign with copy of WorkoutStep?(a1, v1 + v8);
  if ((*(v4 + 48))(v1 + v8, 1, v3))
  {
    return outlined destroy of WorkoutStep?(a1, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  outlined init with copy of WorkoutStep(v1 + v8, v7, type metadata accessor for WorkoutStep);
  _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(*v1, v1[1], *v1 == 46);
  outlined destroy of WorkoutStep?(a1, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  return outlined destroy of WorkoutStep(v7, type metadata accessor for WorkoutStep);
}

void (*CustomWorkout.cooldown.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = type metadata accessor for WorkoutStep();
  *(v5 + 16) = v6;
  v7 = *(v6 - 8);
  *(v5 + 24) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = *(type metadata accessor for CustomWorkout() + 36);
  return CustomWorkout.cooldown.modify;
}

uint64_t CustomWorkout.init(activity:location:displayName:warmup:blocks:cooldown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v32 = a6;
  v35 = a3;
  v36 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v20 setActivityType_];
  [v20 setLocationType_];
  [v20 setSwimmingLocationType_];
  v34 = a5;
  outlined init with copy of WorkoutStep?(a5, v19, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v33 = a7;
  outlined init with copy of WorkoutStep?(a7, v17, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v21 = type metadata accessor for CustomWorkout();
  v22 = v21[7];
  v23 = type metadata accessor for WorkoutStep();
  v24 = *(*(v23 - 8) + 56);
  v31 = v22;
  v24(&a8[v22], 1, 1, v23);
  v25 = v21[9];
  v24(&a8[v25], 1, 1, v23);
  v26 = v32;
  specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v20, v19, v32, v17);
  *a8 = [v20 activityType];
  v27 = [v20 locationType];

  outlined destroy of WorkoutStep?(v33, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  outlined destroy of WorkoutStep?(v34, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v29 = v35;
  v28 = v36;
  *(a8 + 1) = v27;
  *(a8 + 2) = v29;
  *(a8 + 3) = v28;
  outlined assign with take of WorkoutStep?(v19, &a8[v31], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  *&a8[v21[8]] = v26;
  return outlined assign with take of WorkoutStep?(v17, &a8[v25], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
}

uint64_t CustomWorkout.init(configuration:displayName:warmup:blocks:cooldown:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v11 = type metadata accessor for CustomWorkout();
  v12 = v11[7];
  v13 = type metadata accessor for WorkoutStep();
  v14 = *(*(v13 - 8) + 56);
  v14(&a7[v12], 1, 1, v13);
  v21 = v11[9];
  v14(&a7[v21], 1, 1, v13);
  specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(a1, a4, a5, a6);
  if (v19)
  {

    outlined destroy of WorkoutStep?(a6, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    outlined destroy of WorkoutStep?(a4, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    outlined destroy of WorkoutStep?(&a7[v12], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    return outlined destroy of WorkoutStep?(&a7[v21], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  else
  {
    *a7 = [a1 activityType];
    v16 = [a1 locationType];

    *(a7 + 1) = v16;
    *(a7 + 2) = a2;
    *(a7 + 3) = a3;
    outlined assign with take of WorkoutStep?(a4, &a7[v12], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    *&a7[v11[8]] = a5;
    return outlined assign with take of WorkoutStep?(a6, &a7[v21], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }
}

uint64_t CustomWorkout.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v151 = type metadata accessor for CustomWorkout();
  v3 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v152 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for WorkoutStep();
  v159 = *(v164 - 8);
  v5 = *(v159 + 64);
  MEMORY[0x28223BE20](v164);
  v174 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Apple_Workout_IntervalStep(0);
  v178 = *(v175 - 8);
  v7 = *(v178 + 64);
  MEMORY[0x28223BE20](v175);
  v183 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for IntervalStep();
  v171 = *(v172 - 8);
  v9 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v173 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for Apple_Workout_IntervalBlock(0);
  v165 = *(v157 - 8);
  v11 = *(v165 + 64);
  MEMORY[0x28223BE20](v157);
  v160 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v13 = *(v179 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v179);
  v146 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v168 = &v142 - v18;
  MEMORY[0x28223BE20](v17);
  v169 = &v142 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v148 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v180 = &v142 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v153 = &v142 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v166 = &v142 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v142 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v150 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v149 = &v142 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v147 = &v142 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v156 = &v142 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v158 = &v142 - v43;
  MEMORY[0x28223BE20](v42);
  v167 = &v142 - v44;
  v45 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  v46 = *(type metadata accessor for Apple_Workout_CustomWorkoutComposition(0) + 20);
  v161 = a1;
  v47 = *(a1 + v46);
  swift_beginAccess();
  [v45 setActivityType_];
  swift_beginAccess();
  if ((*(v47 + 24) & 1) == 0)
  {
    [v45 setLocationType_];
  }

  v163 = v45;
  v48 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  swift_beginAccess();
  outlined init with copy of WorkoutStep?(v47 + v48, v31, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v49 = *(v13 + 48);
  v50 = v179;
  v51 = v49(v31, 1, v179);
  outlined destroy of WorkoutStep?(v31, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v176 = v13 + 48;
  v162 = v47;
  v177 = v49;
  if (v51 == 1)
  {
    v144 = *(v159 + 56);
    v144(v167, 1, 1, v164);
    v52 = v170;
    v53 = v168;
  }

  else
  {
    v54 = v47 + v48;
    v55 = v166;
    outlined init with copy of WorkoutStep?(v54, v166, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v49(v55, 1, v50) == 1)
    {
      v56 = v169;
      UnknownStorage.init()();
      v57 = v50[5];
      v58 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
      (*(*(v58 - 8) + 56))(v56 + v57, 1, 1, v58);
      v59 = v50[6];
      v60 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
      (*(*(v60 - 8) + 56))(v56 + v59, 1, 1, v60);
      v61 = (v56 + v50[7]);
      *v61 = 0;
      v61[1] = 0;
      v62 = v177(v55, 1, v50);
      v63 = v163;
      v64 = v158;
      v53 = v168;
      if (v62 != 1)
      {
        outlined destroy of WorkoutStep?(v55, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      }
    }

    else
    {
      _s10WorkoutKit0A4StepVWObTm_0(v55, v169, type metadata accessor for Apple_Workout_WorkoutStep);
      v63 = v163;
      v64 = v158;
      v53 = v168;
    }

    v65 = v170;
    Apple_Workout_WorkoutStep.workoutKitRepresentation.getter(v64);
    v52 = v65;
    v66 = v164;
    if (v65)
    {
      outlined destroy of WorkoutStep(v169, type metadata accessor for Apple_Workout_WorkoutStep);

      goto LABEL_51;
    }

    outlined destroy of WorkoutStep(v169, type metadata accessor for Apple_Workout_WorkoutStep);
    v144 = *(v159 + 56);
    v144(v64, 0, 1, v66);
    outlined init with take of WorkoutStep?(v64, v167);
  }

  v67 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  v68 = v162;
  swift_beginAccess();
  v69 = *(v68 + v67);
  v70 = *(v69 + 16);
  v71 = MEMORY[0x277D84F90];
  if (!v70)
  {
    v166 = MEMORY[0x277D84F90];
LABEL_40:
    v104 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
    v105 = v162;
    swift_beginAccess();
    v106 = v153;
    outlined init with copy of WorkoutStep?(v105 + v104, v153, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v107 = v179;
    v108 = v177;
    v109 = v177(v106, 1, v179);
    outlined destroy of WorkoutStep?(v106, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v109 == 1)
    {
      v170 = v52;
      v110 = v156;
      v111 = v164;
      v112 = v144;
      v144(v156, 1, 1, v164);
      v113 = v163;
LABEL_53:
      v128 = v162;
      swift_beginAccess();
      v129 = *(v128 + 32);
      v130 = *(v128 + 40);
      v179 = v129;

      [v113 setSwimmingLocationType_];
      v131 = v149;
      outlined init with copy of WorkoutStep?(v167, v149, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      v132 = v110;
      v133 = v150;
      outlined init with copy of WorkoutStep?(v132, v150, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      v134 = v151;
      v135 = v152;
      v180 = *(v151 + 28);
      v112(&v152[v180], 1, 1, v111);
      v183 = *(v134 + 36);
      v112(&v135[v183], 1, 1, v111);
      v136 = v166;
      v137 = v170;
      specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v113, v131, v166, v133);
      v170 = v137;
      if (!v137)
      {
        *v135 = [v113 activityType];
        v139 = v134;
        v140 = [v113 locationType];

        outlined destroy of WorkoutStep?(v156, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
        outlined destroy of WorkoutStep?(v167, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
        v141 = v179;
        *(v135 + 1) = v140;
        *(v135 + 2) = v141;
        *(v135 + 3) = v130;
        outlined assign with take of WorkoutStep?(v131, &v135[v180], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
        *&v135[*(v139 + 32)] = v136;
        outlined assign with take of WorkoutStep?(v133, &v135[v183], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
        _s10WorkoutKit0A4StepVWObTm_0(v135, v145, type metadata accessor for CustomWorkout);
        return outlined destroy of WorkoutStep(v161, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      }

      outlined destroy of WorkoutStep?(v133, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(v131, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(v156, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(v167, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(&v135[v180], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(&v135[v183], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      v115 = v161;
      return outlined destroy of WorkoutStep(v115, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    }

    v117 = v105 + v104;
    v118 = v148;
    outlined init with copy of WorkoutStep?(v117, v148, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v108(v118, 1, v107) == 1)
    {
      v119 = v146;
      UnknownStorage.init()();
      v120 = v107[5];
      v121 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
      (*(*(v121 - 8) + 56))(v119 + v120, 1, 1, v121);
      v122 = v107[6];
      v123 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
      (*(*(v123 - 8) + 56))(v119 + v122, 1, 1, v123);
      v124 = (v119 + v107[7]);
      *v124 = 0;
      v124[1] = 0;
      v125 = v108(v118, 1, v107);
      v110 = v156;
      v113 = v163;
      if (v125 != 1)
      {
        outlined destroy of WorkoutStep?(v118, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      }
    }

    else
    {
      v119 = v146;
      _s10WorkoutKit0A4StepVWObTm_0(v118, v146, type metadata accessor for Apple_Workout_WorkoutStep);
      v110 = v156;
      v113 = v163;
    }

    v126 = v147;
    Apple_Workout_WorkoutStep.workoutKitRepresentation.getter(v147);
    v127 = v144;
    v111 = v164;
    if (!v52)
    {
      v170 = 0;
      outlined destroy of WorkoutStep(v119, type metadata accessor for Apple_Workout_WorkoutStep);
      v127(v126, 0, 1, v111);
      outlined init with take of WorkoutStep?(v126, v110);
      v112 = v127;
      goto LABEL_53;
    }

    outlined destroy of WorkoutStep(v119, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of WorkoutStep?(v167, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
LABEL_51:
    v115 = v161;
    return outlined destroy of WorkoutStep(v115, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  }

  v182 = MEMORY[0x277D84F90];

  v143 = v70;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
  v72 = 0;
  v73 = v182;
  v155 = v69 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
  v74 = v160;
  v154 = v69;
  while (v72 < *(v69 + 16))
  {
    v166 = v73;
    v75 = *(v165 + 72);
    v158 = v72;
    outlined init with copy of WorkoutStep(v155 + v75 * v72, v74, type metadata accessor for Apple_Workout_IntervalBlock);
    v76 = *v74;
    v77 = *(*v74 + 16);
    if (v77)
    {
      v181 = v71;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77, 0);
      v78 = 0;
      v71 = v181;
      v170 = v76 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
      v169 = v76;
      v168 = v77;
      while (v78 < *(v76 + 16))
      {
        v79 = v183;
        outlined init with copy of WorkoutStep(v170 + *(v178 + 72) * v78, v183, type metadata accessor for Apple_Workout_IntervalStep);
        v80 = *(v79 + *(v175 + 20));
        swift_beginAccess();
        if (*(v80 + 24) != 1)
        {
          goto LABEL_42;
        }

        v81 = *(v80 + 16);
        if (v81 == 1)
        {
          v82 = 0;
        }

        else
        {
          if (v81 != 2)
          {
LABEL_42:

            lazy protocol witness table accessor for type ImportError and conformance ImportError();
            swift_allocError();
            *v114 = 0;
            swift_willThrow();

LABEL_44:
            v115 = v161;
            v116 = v160;
            outlined destroy of WorkoutStep?(v167, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
            outlined destroy of WorkoutStep(v183, type metadata accessor for Apple_Workout_IntervalStep);
            outlined destroy of WorkoutStep(v116, type metadata accessor for Apple_Workout_IntervalBlock);

            return outlined destroy of WorkoutStep(v115, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
          }

          v82 = 1;
        }

        v83 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
        swift_beginAccess();
        v84 = v80 + v83;
        v85 = v180;
        outlined init with copy of WorkoutStep?(v84, v180, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
        v86 = v179;
        v87 = v177;
        if (v177(v85, 1, v179) == 1)
        {
          UnknownStorage.init()();
          v88 = v86[5];
          v89 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
          (*(*(v89 - 8) + 56))(v53 + v88, 1, 1, v89);
          v90 = v86[6];
          v91 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
          v92 = v53 + v90;
          v93 = v180;
          (*(*(v91 - 8) + 56))(v92, 1, 1, v91);
          v94 = (v53 + v86[7]);
          *v94 = 0;
          v94[1] = 0;
          if (v87(v93, 1, v86) != 1)
          {
            outlined destroy of WorkoutStep?(v93, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
          }
        }

        else
        {
          _s10WorkoutKit0A4StepVWObTm_0(v85, v53, type metadata accessor for Apple_Workout_WorkoutStep);
        }

        v95 = v174;
        Apple_Workout_WorkoutStep.workoutKitRepresentation.getter(v174);
        if (v52)
        {

          outlined destroy of WorkoutStep(v53, type metadata accessor for Apple_Workout_WorkoutStep);
          goto LABEL_44;
        }

        outlined destroy of WorkoutStep(v53, type metadata accessor for Apple_Workout_WorkoutStep);
        outlined destroy of WorkoutStep(v183, type metadata accessor for Apple_Workout_IntervalStep);
        v96 = v173;
        _s10WorkoutKit0A4StepVWObTm_0(v95, &v173[*(v172 + 20)], type metadata accessor for WorkoutStep);
        *v96 = v82;
        v181 = v71;
        v98 = *(v71 + 16);
        v97 = *(v71 + 24);
        if (v98 >= v97 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v97 > 1, v98 + 1, 1);
          v96 = v173;
          v71 = v181;
        }

        ++v78;
        *(v71 + 16) = v98 + 1;
        _s10WorkoutKit0A4StepVWObTm_0(v96, v71 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v98, type metadata accessor for IntervalStep);
        v76 = v169;
        if (v168 == v78)
        {
          v74 = v160;
          goto LABEL_32;
        }
      }

      __break(1u);
      break;
    }

LABEL_32:
    v99 = (v74 + *(v157 + 24));
    if (v99[1])
    {
      v100 = 1;
    }

    else
    {
      v100 = *v99;
      if (!v100)
      {
        goto LABEL_59;
      }
    }

    outlined destroy of WorkoutStep(v74, type metadata accessor for Apple_Workout_IntervalBlock);
    v73 = v166;
    v182 = v166;
    v102 = *(v166 + 16);
    v101 = *(v166 + 24);
    if (v102 >= v101 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
      v74 = v160;
      v73 = v182;
    }

    v72 = (v158 + 1);
    *(v73 + 16) = v102 + 1;
    v103 = v73 + 16 * v102;
    *(v103 + 32) = v71;
    *(v103 + 40) = v100;
    v69 = v154;
    v71 = MEMORY[0x277D84F90];
    if (v72 == v143)
    {
      v166 = v73;

      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_59:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in CustomWorkout.protoComposition.getter(uint64_t a1, void *a2)
{
  v117 = type metadata accessor for Apple_Workout_IntervalBlock(0);
  v115 = *(v117 - 8);
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v102 - v9;
  v109 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v108 = *(v109 - 8);
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v103 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v102 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v102 - v20;
  v112 = type metadata accessor for WorkoutStep();
  v22 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v107 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = &v102 - v26;
  v27 = *a2;
  if (HIDWORD(*a2))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v114 = v25;
  v105 = v18;
  v28 = *(type metadata accessor for Apple_Workout_CustomWorkoutComposition(0) + 20);
  v29 = *(a1 + v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(a1 + v28);
  v113 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v31 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v31);
    *(a1 + v28) = v31;
  }

  swift_beginAccess();
  *(v31 + 16) = v27;
  v35 = a2[1];
  if (v35 == 1)
  {
    goto LABEL_10;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if (HIDWORD(v35))
  {
LABEL_34:
    __break(1u);
    return;
  }

  v36 = v113;
  v37 = *(a1 + v113);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a1 + v36);
  if ((v38 & 1) == 0)
  {
    v40 = type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v39 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v39);
    *(a1 + v36) = v39;
  }

  swift_beginAccess();
  *(v39 + 20) = v35;
  *(v39 + 24) = 0;
LABEL_10:
  v43 = a2;
  v44 = a2[3];
  v110 = v10;
  if (v44)
  {
    v45 = v43;
    v46 = v43[2];

    v47 = v113;
    v48 = *(a1 + v113);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(a1 + v47);
    if ((v49 & 1) == 0)
    {
      v51 = type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      v50 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v50);
      *(a1 + v47) = v50;
    }

    swift_beginAccess();
    v54 = *(v50 + 40);
    *(v50 + 32) = v46;
    *(v50 + 40) = v44;

    v43 = v45;
    v10 = v110;
  }

  v55 = type metadata accessor for CustomWorkout();
  outlined init with copy of WorkoutStep?(v43 + *(v55 + 28), v21, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v56 = *(v114 + 48);
  v114 += 48;
  v57 = v56(v21, 1, v112);
  v58 = v43;
  v104 = v56;
  v111 = v55;
  if (v57 == 1)
  {
    outlined destroy of WorkoutStep?(v21, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  else
  {
    v59 = v106;
    v60 = _s10WorkoutKit0A4StepVWObTm_0(v21, v106, type metadata accessor for WorkoutStep);
    MEMORY[0x28223BE20](v60);
    *(&v102 - 2) = v59;
    lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep);
    v61 = v102;
    v62 = v109;
    static Message.with(_:)();
    v63 = v113;
    v64 = *(a1 + v113);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(a1 + v63);
    if ((v65 & 1) == 0)
    {
      v67 = type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      v66 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v66);
      *(a1 + v63) = v66;
    }

    _s10WorkoutKit0A4StepVWObTm_0(v61, v10, type metadata accessor for Apple_Workout_WorkoutStep);
    (*(v108 + 56))(v10, 0, 1, v62);
    v70 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
    swift_beginAccess();
    outlined assign with take of WorkoutStep?(v10, v66 + v70, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    swift_endAccess();
    outlined destroy of WorkoutStep(v106, type metadata accessor for WorkoutStep);
    v55 = v111;
  }

  v71 = *&v58[*(v55 + 32)];
  v72 = *(v71 + 16);
  v73 = MEMORY[0x277D84F90];
  if (v72)
  {
    v102 = v58;
    v106 = a1;
    v116 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
    v73 = v116;
    v74 = lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock);
    v75 = (v71 + 40);
    do
    {
      v77 = *(v75 - 1);
      v76 = *v75;
      MEMORY[0x28223BE20](v74);
      *(&v102 - 2) = v77;
      *(&v102 - 1) = v78;

      static Message.with(_:)();

      v116 = v73;
      v80 = *(v73 + 16);
      v79 = *(v73 + 24);
      if (v80 >= v79 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79 > 1, v80 + 1, 1);
        v73 = v116;
      }

      v75 += 2;
      *(v73 + 16) = v80 + 1;
      v74 = _s10WorkoutKit0A4StepVWObTm_0(v6, v73 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v80, type metadata accessor for Apple_Workout_IntervalBlock);
      --v72;
    }

    while (v72);
    v10 = v110;
    a1 = v106;
    v58 = v102;
  }

  v81 = v113;
  v82 = *(a1 + v113);
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *(a1 + v81);
  if ((v83 & 1) == 0)
  {
    v85 = type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    swift_allocObject();
    v84 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v84);
    *(a1 + v81) = v84;
  }

  v88 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  swift_beginAccess();
  v89 = *(v84 + v88);
  *(v84 + v88) = v73;

  v90 = v105;
  outlined init with copy of WorkoutStep?(&v58[*(v111 + 36)], v105, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  if (v104(v90, 1, v112) == 1)
  {
    outlined destroy of WorkoutStep?(v90, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  else
  {
    v91 = v107;
    v92 = _s10WorkoutKit0A4StepVWObTm_0(v90, v107, type metadata accessor for WorkoutStep);
    MEMORY[0x28223BE20](v92);
    *(&v102 - 2) = v91;
    lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep);
    v93 = v103;
    v94 = v109;
    static Message.with(_:)();
    v95 = *(a1 + v81);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(a1 + v81);
    if ((v96 & 1) == 0)
    {
      v98 = type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      swift_allocObject();
      v97 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v97);
      *(a1 + v81) = v97;
    }

    _s10WorkoutKit0A4StepVWObTm_0(v93, v10, type metadata accessor for Apple_Workout_WorkoutStep);
    (*(v108 + 56))(v10, 0, 1, v94);
    v101 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
    swift_beginAccess();
    outlined assign with take of WorkoutStep?(v10, v97 + v101, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    swift_endAccess();
    outlined destroy of WorkoutStep(v107, type metadata accessor for WorkoutStep);
  }
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void CustomWorkout.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutStep();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  if (v1[3])
  {
    v17 = v3;
    v18 = v1[2];
    Hasher._combine(_:)(1u);
    v3 = v17;
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = type metadata accessor for CustomWorkout();
  outlined init with copy of WorkoutStep?(v1 + v19[7], v16, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v20 = *(v4 + 48);
  if (v20(v16, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    _s10WorkoutKit0A4StepVWObTm_0(v16, v9, type metadata accessor for WorkoutStep);
    Hasher._combine(_:)(1u);
    WorkoutGoal.hash(into:)();
    outlined init with copy of WorkoutStep?(&v9[*(v3 + 20)], &v33, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v34)
    {
      outlined init with take of WorkoutAlert(&v33, v35);
      v31 = v14;
      v21 = v20;
      v22 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v23 = *(v22 + 8);
      v20 = v21;
      v14 = v31;
      dispatch thunk of Hashable.hash(into:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    else
    {
      outlined destroy of WorkoutStep?(&v33, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    }

    v24 = &v9[*(v3 + 24)];
    if (*(v24 + 1))
    {
      v25 = *v24;
      String.hash(into:)();
    }

    outlined destroy of WorkoutStep(v9, type metadata accessor for WorkoutStep);
  }

  specialized Array<A>.hash(into:)(a1, *(v1 + v19[8]));
  outlined init with copy of WorkoutStep?(v1 + v19[9], v14, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  if (v20(v14, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v26 = v32;
    _s10WorkoutKit0A4StepVWObTm_0(v14, v32, type metadata accessor for WorkoutStep);
    Hasher._combine(_:)(1u);
    WorkoutGoal.hash(into:)();
    outlined init with copy of WorkoutStep?(v26 + *(v3 + 20), &v33, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v34)
    {
      outlined init with take of WorkoutAlert(&v33, v35);
      v27 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v28 = *(v27 + 8);
      dispatch thunk of Hashable.hash(into:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    else
    {
      outlined destroy of WorkoutStep?(&v33, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    }

    v29 = (v32 + *(v3 + 24));
    if (v29[1])
    {
      v30 = *v29;
      String.hash(into:)();
    }

    outlined destroy of WorkoutStep(v32, type metadata accessor for WorkoutStep);
  }
}

Swift::Int CustomWorkout.hashValue.getter()
{
  Hasher.init(_seed:)();
  CustomWorkout.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomWorkout()
{
  Hasher.init(_seed:)();
  CustomWorkout.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomWorkout()
{
  Hasher.init(_seed:)();
  CustomWorkout.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError()
{
  result = lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError;
  if (!lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError);
  }

  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IntervalStep();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x23EEA0D50](v9, v6);
  if (v9)
  {
    v11 = &v8[*(v3 + 20)];
    v12 = type metadata accessor for WorkoutStep();
    v13 = *(v12 + 24);
    v24 = *(v12 + 20);
    v14 = &v11[v13];
    v15 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    v22 = v11;
    v23 = v16;
    while (1)
    {
      outlined init with copy of WorkoutStep(v15, v8, type metadata accessor for IntervalStep);
      MEMORY[0x23EEA0D50](*v8);
      v17 = v22;
      WorkoutGoal.hash(into:)();
      outlined init with copy of WorkoutStep?(&v17[v24], &v25, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      if (v26)
      {
        break;
      }

      outlined destroy of WorkoutStep?(&v25, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      if (*(v14 + 1))
      {
        goto LABEL_8;
      }

LABEL_3:
      result = outlined destroy of WorkoutStep(v8, type metadata accessor for IntervalStep);
      v15 += v23;
      if (!--v9)
      {
        return result;
      }
    }

    outlined init with take of WorkoutAlert(&v25, v27);
    v18 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v19 = *(v18 + 8);
    dispatch thunk of Hashable.hash(into:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    if (!*(v14 + 1))
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = *v14;
    String.hash(into:)();
    goto LABEL_3;
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EEA0D50](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      MEMORY[0x23EEA0D50](v7);
      result = MEMORY[0x23EEA0D50](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v3 = *(v56 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v40 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v40 - v8;
  v9 = type metadata accessor for WorkoutGoal();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for IntervalStep();
  v41 = *(v42 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v42);
  v59 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x23EEA0D50](v15);
  v44 = v15;
  if (v15)
  {
    v17 = 0;
    v43 = a2 + 32;
    v51 = (v6 + 32);
    v50 = (v3 + 32);
    v49 = (v3 + 8);
    v48 = (v6 + 8);
    v52 = v9;
    while (1)
    {
      v47 = v17;
      v18 = (v43 + 16 * v17);
      v19 = *v18;
      v45 = v18[1];
      MEMORY[0x23EEA0D50](*(v19 + 16));
      v20 = *(v19 + 16);
      v46 = v19;
      if (v20)
      {
        break;
      }

LABEL_4:
      v17 = v47 + 1;
      MEMORY[0x23EEA0D50](v45);

      if (v17 == v44)
      {
        return result;
      }
    }

    v21 = &v59[*(v42 + 20)];
    v22 = type metadata accessor for WorkoutStep();
    v23 = *(v22 + 24);
    v58 = *(v22 + 20);
    v60 = v21;
    v24 = (v21 + v23);
    v25 = v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v57 = *(v41 + 72);
    v26 = v59;

    while (1)
    {
      outlined init with copy of WorkoutStep(v25, v26, type metadata accessor for IntervalStep);
      MEMORY[0x23EEA0D50](*v26);
      outlined init with copy of WorkoutStep(v60, v12, type metadata accessor for WorkoutGoal);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v33 = *v12;
        v34 = *(v12 + 1);
        v35 = 3;
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
        v29 = v53;
        v30 = v54;
        (*v51)(v53, v12, v54);
        v32 = v55;
        v31 = v56;
        (*v50)(v55, &v12[v28], v56);
        MEMORY[0x23EEA0D50](4);
        lazy protocol witness table accessor for type Measurement<NSUnitLength> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
        dispatch thunk of Hashable.hash(into:)();
        lazy protocol witness table accessor for type Measurement<NSUnitLength> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
        dispatch thunk of Hashable.hash(into:)();
        (*v49)(v32, v31);
        (*v48)(v29, v30);
      }

      else
      {
        MEMORY[0x23EEA0D50](0);
      }

LABEL_21:
      outlined init with copy of WorkoutStep?(v60 + v58, &v61, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      if (v62)
      {
        outlined init with take of WorkoutAlert(&v61, v63);
        v37 = v63[4];
        __swift_project_boxed_opaque_existential_1(v63, v63[3]);
        v38 = *(v37 + 8);
        dispatch thunk of Hashable.hash(into:)();
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
      }

      else
      {
        outlined destroy of WorkoutStep?(&v61, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      }

      v26 = v59;
      if (v24[1])
      {
        v39 = *v24;
        String.hash(into:)();
      }

      outlined destroy of WorkoutStep(v26, type metadata accessor for IntervalStep);
      v25 += v57;
      if (!--v20)
      {
        goto LABEL_4;
      }
    }

    v33 = *v12;
    v34 = *(v12 + 1);
    if (EnumCaseMultiPayload)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

LABEL_17:
    MEMORY[0x23EEA0D50](v35);
    if (v33 == 0.0)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v33;
    }

    MEMORY[0x23EEA0D70](*&v36);
    NSObject.hash(into:)();

    goto LABEL_21;
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x23EEA0D50](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      MEMORY[0x23EEA0D70](*&v5);
      if (v6 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x23EEA0D70](*&v9);
      if (v8 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = v7;
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x23EEA0D70](v10);
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

uint64_t specialized static CustomWorkout.validateActivity(_:)(uint64_t result)
{
  v1 = result;
  if (qword_284E21CD8 == result || unk_284E21CE0 == result || qword_284E21CE8 == result)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    swift_allocError();
    *v4 = v1;
    *(v4 + 8) = 0;
    return swift_willThrow();
  }

  if (result == 46)
  {
    v7[3] = &type metadata for WorkoutKitFeatures;
    v7[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v7[0]) = 0;
    v5 = isFeatureEnabled(_:)();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v7);
    if ((v5 & 1) == 0)
    {
      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError);
      swift_allocError();
      *v6 = 46;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined assign with copy of WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v133 = a4;
  v137 = a3;
  v139 = a2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v132 = *(v136 - 8);
  v5 = *(v132 + 8);
  v6 = MEMORY[0x28223BE20](v136);
  v143 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = &v112 - v8;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v125 = *(v126 - 8);
  v9 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v112 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v130 = *(v138 - 8);
  v11 = *(v130 + 8);
  v12 = MEMORY[0x28223BE20](v138);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v112 - v15;
  v17 = type metadata accessor for WorkoutGoal();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for IntervalStep();
  v141 = *(v21 - 8);
  v22 = *(v141 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v112 - v30;
  v32 = [a1 activityType];
  v33 = v144;
  result = specialized static CustomWorkout.validateActivity(_:)(v32);
  if (v33)
  {
    return result;
  }

  v140 = v21;
  v144 = v17;
  v117 = v29;
  v128 = v14;
  v142 = v24;
  v123 = a1;
  v129 = v16;
  v135 = 0;
  outlined init with copy of WorkoutStep?(v139, v31, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v35 = type metadata accessor for WorkoutStep();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v139 = v35;
  v116 = v37;
  v115 = v36 + 48;
  if (v37(v31, 1) == 1)
  {
    outlined destroy of WorkoutStep?(v31, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    v38 = v129;
    v39 = v123;
    result = v133;
    v40 = &off_278B84000;
  }

  else
  {
    v40 = &off_278B84000;
    v39 = v123;
    v41 = [v123 activityType];
    v42 = [v39 locationType];
    v43 = [v39 swimmingLocationType];
    v44 = v135;
    _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(v41, v42, v43);
    outlined destroy of WorkoutStep(v31, type metadata accessor for WorkoutStep);
    v38 = v129;
    result = v133;
    if (v44)
    {
      return result;
    }

    v135 = 0;
  }

  v46 = v142;
  v45 = v143;
  v118 = *(v137 + 16);
  if (!v118)
  {
LABEL_43:
    v85 = v117;
    outlined init with copy of WorkoutStep?(result, v117, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    if (v116(v85, 1, v139) == 1)
    {
      return outlined destroy of WorkoutStep?(v85, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    }

    _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5([v39 v40[96]], objc_msgSend(v39, sel_locationType), objc_msgSend(v39, sel_swimmingLocationType));
    return outlined destroy of WorkoutStep(v85, type metadata accessor for WorkoutStep);
  }

  v47 = 0;
  v48 = v137 + 32;
  v121 = (v130 + 32);
  v120 = (v132 + 32);
  v131 = (v132 + 8);
  v132 = v130 + 8;
  v49 = &off_278B84000;
  v114 = v137 + 32;
  while (1)
  {
    v119 = v47;
    v50 = *(v48 + 16 * v47);

    v51 = [v39 v40[96]];
    v127 = [v39 locationType];
    v52 = [v39 v49[98]];
    v53 = v50;
    v54 = *(v50 + 16);
    if (v54)
    {
      break;
    }

LABEL_8:
    v47 = v119 + 1;

    v39 = v123;
    result = v133;
    v40 = &off_278B84000;
    v48 = v114;
    v49 = &off_278B84000;
    if (v47 == v118)
    {
      goto LABEL_43;
    }
  }

  v55 = v52;
  v56 = v51;
  v57 = 0;
  v130 = v56;
  v113 = v55;
  v59 = v56 == 46 && v55 == 1;
  v122 = v59;
  v137 = v50;
  while (1)
  {
    if (v57 >= *(v53 + 16))
    {
      __break(1u);
LABEL_55:
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
      v135 = swift_allocError();
      v107 = v106;
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v109 = *(v108 + 48);
      v110 = *(v108 + 64);
      outlined init with copy of WorkoutStep(v46, v107, type metadata accessor for WorkoutGoal);
      *(v107 + v109) = v130;
      *(v107 + v110) = v127;
LABEL_56:
      swift_storeEnumTagMultiPayload();
      v111 = v142;
      swift_willThrow();

      (*v132)(v38, v138);

      v105 = v111;
      return outlined destroy of WorkoutStep(v105, type metadata accessor for IntervalStep);
    }

    outlined init with copy of WorkoutStep(v53 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v57, v46, type metadata accessor for IntervalStep);
    v46 += *(v140 + 20);
    outlined init with copy of WorkoutStep(v46, v20, type metadata accessor for WorkoutGoal);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v65 = *v20;
        v66 = *(v20 + 1);
        type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
        v67 = v66;
        v68 = v134;
        Measurement.init(value:unit:)();
        v69 = v136;
        Measurement.value.getter();
        if (v70 <= 0.0)
        {
          type metadata accessor for GoalValidationError(0);
          lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
          v97 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v135 = v97;
          swift_willThrow();

          (*v131)(v68, v69);
          goto LABEL_50;
        }

        (*v131)(v68, v69);
      }

      else
      {
        v61 = *v20;
        v62 = *(v20 + 1);
        type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
        v45 = v62;
        Measurement.init(value:unit:)();
        switch(v130)
        {
          case 1uLL:
          case 3uLL:
          case 0xDuLL:
          case 0x15uLL:
          case 0x18uLL:
          case 0x1BuLL:
          case 0x1FuLL:
          case 0x24uLL:
          case 0x25uLL:
          case 0x2EuLL:
          case 0x34uLL:
          case 0x3CuLL:
          case 0x3DuLL:
          case 0x43uLL:
          case 0x46uLL:
          case 0x47uLL:
          case 0x4BuLL:
            goto LABEL_27;
          case 0x19uLL:
          case 0x23uLL:
          case 0x27uLL:
          case 0x29uLL:
            if (v127 == 2)
            {
              type metadata accessor for GoalValidationError(0);
              lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
              v135 = swift_allocError();
              *v84 = v130;
              v84[1] = 2;
              goto LABEL_56;
            }

LABEL_27:
            v63 = v138;
            Measurement.value.getter();
            if (v64 <= 0.0)
            {
              type metadata accessor for GoalValidationError(0);
              lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
              v104 = swift_allocError();
              swift_storeEnumTagMultiPayload();
              v135 = v104;
              swift_willThrow();

              (*v132)(v38, v63);
              goto LABEL_50;
            }

            (*v132)(v38, v63);

            break;
          default:
            goto LABEL_55;
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
      v72 = v128;
      v73 = v45;
      v74 = v138;
      (*v121)(v128, v20, v138);
      v75 = v73;
      v76 = v136;
      (*v120)(v75, &v20[v71], v136);
      if (!v122)
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        v98 = swift_allocError();
        v100 = v99;
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMR);
        v102 = *(v101 + 48);
        v103 = *(v101 + 64);
        outlined init with copy of WorkoutStep(v46, v100, type metadata accessor for WorkoutGoal);
        *(v100 + v102) = v130;
        *(v100 + v103) = v113;
        swift_storeEnumTagMultiPayload();
        v135 = v98;
        swift_willThrow();
        (*v131)(v143, v136);
        (*v132)(v72, v74);
        goto LABEL_50;
      }

      Measurement.value.getter();
      v77 = v143;
      if (v78 <= 0.0 || (Measurement.value.getter(), v79 <= 0.0))
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        v86 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v135 = v86;
        swift_willThrow();
        (*v131)(v77, v76);
        (*v132)(v72, v138);
        goto LABEL_50;
      }

      (*v131)(v77, v76);
      (*v132)(v72, v138);
      v38 = v129;
    }

    else if (EnumCaseMultiPayload != 4)
    {
      v87 = *v20;
      v88 = *(v20 + 1);
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      v89 = v88;
      v90 = v124;
      Measurement.init(value:unit:)();
      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError);
      v91 = swift_allocError();
      v93 = v92;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v95 = *(v94 + 48);
      v96 = *(v94 + 64);
      outlined init with copy of WorkoutStep(v46, v93, type metadata accessor for WorkoutGoal);
      *(v93 + v95) = v130;
      *(v93 + v96) = v127;
      swift_storeEnumTagMultiPayload();
      v135 = v91;
      swift_willThrow();

      (*(v125 + 8))(v90, v126);
      goto LABEL_50;
    }

    outlined init with copy of WorkoutStep?(v46 + *(v139 + 20), v145, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (!v146)
    {
      outlined destroy of WorkoutStep?(v145, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v147 = 0u;
      v148 = 0u;
      v149 = 0;
      v46 = v142;
      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
    v80 = swift_dynamicCast();
    v46 = v142;
    if ((v80 & 1) == 0)
    {
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      goto LABEL_18;
    }

    v81 = *(&v148 + 1);
    if (*(&v148 + 1))
    {
      break;
    }

LABEL_18:
    outlined destroy of WorkoutStep?(&v147, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
LABEL_19:
    ++v57;
    outlined destroy of WorkoutStep(v46, type metadata accessor for IntervalStep);
    v53 = v137;
    v45 = v143;
    if (v54 == v57)
    {
      goto LABEL_8;
    }
  }

  v82 = v149;
  __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
  v83 = v135;
  (*(v82 + 32))(v130, v127, 1, v81, v82);
  v135 = v83;
  if (!v83)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v147);
    v46 = v142;
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v147);
LABEL_50:

  v105 = v142;
  return outlined destroy of WorkoutStep(v105, type metadata accessor for IntervalStep);
}

BOOL specialized static CustomWorkout.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for WorkoutStep();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v41 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSg_ADtMd, &_s10WorkoutKit0A4StepVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v41 - v22;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v24 = a1[3];
  v25 = a2[3];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v46 = v21;
    if ((a1[2] != a2[2] || v24 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v46 = v21;
    if (v25)
    {
      return 0;
    }
  }

  v44 = v13;
  v43 = type metadata accessor for CustomWorkout();
  v26 = *(v43 + 28);
  v27 = *(v46 + 48);
  outlined init with copy of WorkoutStep?(a1 + v26, v23, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v45 = v27;
  outlined init with copy of WorkoutStep?(a2 + v26, &v23[v27], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v30 = *(v5 + 48);
  v29 = v5 + 48;
  v28 = v30;
  if (v30(v23, 1, v4) != 1)
  {
    outlined init with copy of WorkoutStep?(v23, v15, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    v33 = v28(&v23[v45], 1, v4);
    v32 = v44;
    if (v33 != 1)
    {
      v42 = v29;
      _s10WorkoutKit0A4StepVWObTm_0(&v23[v45], v8, type metadata accessor for WorkoutStep);
      LODWORD(v45) = static WorkoutStep.== infix(_:_:)(v15, v8);
      outlined destroy of WorkoutStep(v8, type metadata accessor for WorkoutStep);
      outlined destroy of WorkoutStep(v15, type metadata accessor for WorkoutStep);
      outlined destroy of WorkoutStep?(v23, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    outlined destroy of WorkoutStep(v15, type metadata accessor for WorkoutStep);
LABEL_15:
    v34 = v23;
LABEL_16:
    outlined destroy of WorkoutStep?(v34, &_s10WorkoutKit0A4StepVSg_ADtMd, &_s10WorkoutKit0A4StepVSg_ADtMR);
    return 0;
  }

  v31 = v28(&v23[v45], 1, v4);
  v32 = v44;
  if (v31 != 1)
  {
    goto LABEL_15;
  }

  v42 = v29;
  outlined destroy of WorkoutStep?(v23, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
LABEL_18:
  v35 = v43;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit13IntervalBlockV_Tt1g5(*(a1 + *(v43 + 32)), *(a2 + *(v43 + 32))) & 1) == 0)
  {
    return 0;
  }

  v36 = *(v35 + 36);
  v37 = a1 + v36;
  v38 = *(v46 + 48);
  outlined init with copy of WorkoutStep?(v37, v20, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  outlined init with copy of WorkoutStep?(a2 + v36, &v20[v38], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  if (v28(v20, 1, v4) == 1)
  {
    if (v28(&v20[v38], 1, v4) == 1)
    {
      outlined destroy of WorkoutStep?(v20, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      return 1;
    }

    goto LABEL_24;
  }

  outlined init with copy of WorkoutStep?(v20, v32, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  if (v28(&v20[v38], 1, v4) == 1)
  {
    outlined destroy of WorkoutStep(v32, type metadata accessor for WorkoutStep);
LABEL_24:
    v34 = v20;
    goto LABEL_16;
  }

  _s10WorkoutKit0A4StepVWObTm_0(&v20[v38], v8, type metadata accessor for WorkoutStep);
  v39 = static WorkoutStep.== infix(_:_:)(v32, v8);
  outlined destroy of WorkoutStep(v8, type metadata accessor for WorkoutStep);
  outlined destroy of WorkoutStep(v32, type metadata accessor for WorkoutStep);
  outlined destroy of WorkoutStep?(v20, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  return (v39 & 1) != 0;
}

uint64_t outlined init with take of WorkoutAlert(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of WorkoutStep?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitLength> and conformance Measurement<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutStep?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of WorkoutStep?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of WorkoutStep(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of WorkoutStep(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit0A4StepVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for Apple_Workout_HeartRateAlert()
{
  type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget()
{
  result = type metadata accessor for Apple_Workout_ZoneValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_HeartRateRange(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_HeartRateRange()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_HeartRateValue?, type metadata accessor for Apple_Workout_HeartRateValue);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v14, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_ZoneValue(v14, v22, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
    outlined init with take of Apple_Workout_ZoneValue(v22, v20, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v20, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
      v33 = v48;
    }

    else
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_ZoneValue(v20, v44, type metadata accessor for Apple_Workout_ZoneValue);
      outlined init with take of Apple_Workout_ZoneValue(v35, v28, type metadata accessor for Apple_Workout_ZoneValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  }

  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, v36, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v36, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_ZoneValue(v36, v43, type metadata accessor for Apple_Workout_ZoneValue);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v42, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    outlined init with take of Apple_Workout_ZoneValue(v39, v40, type metadata accessor for Apple_Workout_ZoneValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v14, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_ZoneValue(v14, v22, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
    outlined init with take of Apple_Workout_ZoneValue(v22, v20, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_ZoneValue(v20, v44, type metadata accessor for Apple_Workout_HeartRateRange);
      outlined init with take of Apple_Workout_ZoneValue(v35, v28, type metadata accessor for Apple_Workout_HeartRateRange);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v20, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
  }

  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, v36, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v36, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_ZoneValue(v36, v43, type metadata accessor for Apple_Workout_HeartRateRange);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v42, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    outlined init with take of Apple_Workout_ZoneValue(v39, v40, type metadata accessor for Apple_Workout_HeartRateRange);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v3, &v15 - v10, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v12 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v11, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Apple_Workout_HeartRateAlert(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v8, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Apple_Workout_ZoneValue(v8, v12, type metadata accessor for Apple_Workout_ZoneValue);
    lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v12, type metadata accessor for Apple_Workout_ZoneValue);
  }

  result = outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v8, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v8, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_ZoneValue(v8, v12, type metadata accessor for Apple_Workout_HeartRateRange);
    lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v12, type metadata accessor for Apple_Workout_HeartRateRange);
  }

  result = outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v8, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_HeartRateAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_HeartRateAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_HeartRateAlert;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_HeartRateAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_HeartRateAlert()
{
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_HeartRateRange(0) + 20);
  type metadata accessor for Apple_Workout_HeartRateValue(0);
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_HeartRateRange(0) + 24);
  type metadata accessor for Apple_Workout_HeartRateValue(0);
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_HeartRateRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_HeartRateRange.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_HeartRateRange.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_HeartRateRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1 + *(v14 + 20), v8, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v8, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  }

  outlined init with take of Apple_Workout_ZoneValue(v8, v13, type metadata accessor for Apple_Workout_HeartRateValue);
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v13, type metadata accessor for Apple_Workout_HeartRateValue);
}

uint64_t closure #2 in Apple_Workout_HeartRateRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1 + *(v14 + 24), v8, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v8, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  }

  outlined init with take of Apple_Workout_ZoneValue(v8, v13, type metadata accessor for Apple_Workout_HeartRateValue);
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v13, type metadata accessor for Apple_Workout_HeartRateValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_HeartRateRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_HeartRateRange@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_HeartRateRange(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_HeartRateRange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_HeartRateAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_HeartRateRange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_HeartRateAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_HeartRateRange()
{
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_HeartRateAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_ZoneValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static Apple_Workout_HeartRateRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v41 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v43 = (&v41 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v42 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = (&v41 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v44 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v45 = v16;
  v22 = *(v44 + 20);
  v23 = *(v16 + 48);
  v47 = a1;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1 + v22, v21, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v48 = a2;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a2 + v22, &v21[v23], &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v24 = *(v5 + 48);
  if (v24(v21, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v21, v15, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    if (v24(&v21[v23], 1, v4) != 1)
    {
      v29 = v43;
      outlined init with take of Apple_Workout_ZoneValue(&v21[v23], v43, type metadata accessor for Apple_Workout_HeartRateValue);
      if (*v15 == *v29)
      {
        v25 = v4;
        v30 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v29, type metadata accessor for Apple_Workout_HeartRateValue);
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v15, type metadata accessor for Apple_Workout_HeartRateValue);
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v21, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
        if ((v31 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v29, type metadata accessor for Apple_Workout_HeartRateValue);
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v15, type metadata accessor for Apple_Workout_HeartRateValue);
      v26 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd;
      v27 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR;
LABEL_7:
      v28 = v21;
LABEL_17:
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v28, v26, v27);
      goto LABEL_18;
    }

    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v15, type metadata accessor for Apple_Workout_HeartRateValue);
LABEL_6:
    v26 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMd;
    v27 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMR;
    goto LABEL_7;
  }

  if (v24(&v21[v23], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v25 = v4;
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v21, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
LABEL_10:
  v32 = *(v44 + 24);
  v33 = *(v45 + 48);
  v34 = v46;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v47 + v32, v46, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v48 + v32, v34 + v33, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if (v24(v34, 1, v25) == 1)
  {
    if (v24((v34 + v33), 1, v25) == 1)
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v34, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
LABEL_23:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v36 & 1;
    }

    goto LABEL_15;
  }

  v35 = v42;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v34, v42, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if (v24((v34 + v33), 1, v25) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v35, type metadata accessor for Apple_Workout_HeartRateValue);
LABEL_15:
    v26 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMd;
    v27 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMR;
LABEL_16:
    v28 = v34;
    goto LABEL_17;
  }

  v38 = v34 + v33;
  v39 = v41;
  outlined init with take of Apple_Workout_ZoneValue(v38, v41, type metadata accessor for Apple_Workout_HeartRateValue);
  if (*v35 != *v39)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v39, type metadata accessor for Apple_Workout_HeartRateValue);
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v35, type metadata accessor for Apple_Workout_HeartRateValue);
    v26 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd;
    v27 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR;
    goto LABEL_16;
  }

  v40 = *(v25 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  LOBYTE(v40) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v39, type metadata accessor for Apple_Workout_HeartRateValue);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v35, type metadata accessor for Apple_Workout_HeartRateValue);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v34, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if (v40)
  {
    goto LABEL_23;
  }

LABEL_18:
  v36 = 0;
  return v36 & 1;
}

uint64_t specialized static Apple_Workout_HeartRateAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, &v24 - v16, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a2, &v17[v18], &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v17, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_HeartRateAlert(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v17, v12, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v12, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
LABEL_6:
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v17, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_ZoneValue(&v17[v18], v8, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  v21 = specialized static Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v8, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v12, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v17, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetO_AEtMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetO_AEtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(a1, &v31 - v22);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(a2, &v23[v24]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v23, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Apple_Workout_ZoneValue(&v23[v24], v11, type metadata accessor for Apple_Workout_ZoneValue);
      if (*v18 == *v11)
      {
        v28 = *(v8 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v11, type metadata accessor for Apple_Workout_ZoneValue);
        if (v29)
        {
          outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v18, type metadata accessor for Apple_Workout_ZoneValue);
          outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v23, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
          v25 = 1;
          return v25 & 1;
        }
      }

      else
      {
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v11, type metadata accessor for Apple_Workout_ZoneValue);
      }

      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v18, type metadata accessor for Apple_Workout_ZoneValue);
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v23, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
LABEL_13:
      v25 = 0;
      return v25 & 1;
    }

    v26 = type metadata accessor for Apple_Workout_ZoneValue;
    v27 = v18;
LABEL_7:
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v27, v26);
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v23, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetO_AEtMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetO_AEtMR);
    goto LABEL_13;
  }

  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v23, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for Apple_Workout_HeartRateRange;
    v27 = v16;
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_ZoneValue(&v23[v24], v7, type metadata accessor for Apple_Workout_HeartRateRange);
  v25 = specialized static Apple_Workout_HeartRateRange.== infix(_:_:)(v16, v7);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v7, type metadata accessor for Apple_Workout_HeartRateRange);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v16, type metadata accessor for Apple_Workout_HeartRateRange);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v23, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  return v25 & 1;
}

uint64_t outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata completion function for Apple_Workout_WorkoutAlert()
{
  type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_WorkoutAlert.OneOf_AlertValue?)
  {
    type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_WorkoutAlert.OneOf_AlertValue?);
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t type metadata completion function for Apple_Workout_WorkoutAlert.OneOf_AlertValue()
{
  result = type metadata accessor for Apple_Workout_SpeedAlert(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_CadenceAlert(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_PowerAlert(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_HeartRateAlert(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "ntrackerapp.sharing";
      v3 = 0xD00000000000002ELL;
    }

    else
    {
      v4 = "ntrackerapp.insession.platters";
      v3 = 0xD000000000000023;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000023;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2)
    {
      v4 = "com.apple.WorkoutKit.api";
    }

    else
    {
      v4 = &unk_23B67ECE0;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD00000000000002ELL;
    }

    else
    {
      v5 = 0xD000000000000023;
    }

    if (a2 == 2)
    {
      v6 = "ntrackerapp.sharing";
    }

    else
    {
      v6 = "ntrackerapp.insession.platters";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000023;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a2)
    {
      v6 = "com.apple.WorkoutKit.api";
    }

    else
    {
      v6 = &unk_23B67ECE0;
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutAlert.Metric(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric);
  }

  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_WorkoutAlert.Metric@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_WorkoutAlert.Metric@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutAlert.Metric()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutAlert.Target(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutAlert.Metric()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_WorkoutAlert.Metric] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        switch(result)
        {
          case 5:
            closure #4 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 6:
            closure #5 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 7:
            closure #6 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v11 = v4;
            lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric();
LABEL_18:
            v4 = v11;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            v11 = v4;
            lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target();
            goto LABEL_18;
          case 4:
            closure #3 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Apple_Workout_WorkoutAlert(0) + 24);
  v47 = a1;
  v45 = v32;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v32, v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert(v14, v22, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    outlined init with take of Apple_Workout_SpeedAlert(v22, v20, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v20, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
      v35 = v53;
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
      v36 = v20;
      v37 = v48;
      outlined init with take of Apple_Workout_SpeedAlert(v36, v48, type metadata accessor for Apple_Workout_SpeedAlert);
      outlined init with take of Apple_Workout_SpeedAlert(v37, v28, type metadata accessor for Apple_Workout_SpeedAlert);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v28, v38, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v38, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
  }

  else
  {
    v41 = v49;
    outlined init with take of Apple_Workout_SpeedAlert(v38, v49, type metadata accessor for Apple_Workout_SpeedAlert);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
    v42 = v47;
    v43 = v45;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v47 + v45, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert(v41, v42 + v43, type metadata accessor for Apple_Workout_SpeedAlert);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t closure #4 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Apple_Workout_WorkoutAlert(0) + 24);
  v47 = a1;
  v45 = v32;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v32, v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert(v14, v22, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    outlined init with take of Apple_Workout_SpeedAlert(v22, v20, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
      v35 = v20;
      v36 = v49;
      outlined init with take of Apple_Workout_SpeedAlert(v35, v49, type metadata accessor for Apple_Workout_CadenceAlert);
      outlined init with take of Apple_Workout_SpeedAlert(v36, v28, type metadata accessor for Apple_Workout_CadenceAlert);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v20, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v28, v38, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v38, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
  }

  else
  {
    v41 = v48;
    outlined init with take of Apple_Workout_SpeedAlert(v38, v48, type metadata accessor for Apple_Workout_CadenceAlert);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
    v42 = v47;
    v43 = v45;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v47 + v45, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert(v41, v42 + v43, type metadata accessor for Apple_Workout_CadenceAlert);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t closure #5 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Apple_Workout_PowerAlert(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Apple_Workout_WorkoutAlert(0) + 24);
  v47 = a1;
  v45 = v32;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v32, v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert(v14, v22, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    outlined init with take of Apple_Workout_SpeedAlert(v22, v20, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
      v35 = v20;
      v36 = v49;
      outlined init with take of Apple_Workout_SpeedAlert(v35, v49, type metadata accessor for Apple_Workout_PowerAlert);
      outlined init with take of Apple_Workout_SpeedAlert(v36, v28, type metadata accessor for Apple_Workout_PowerAlert);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v20, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v28, v38, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v38, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
  }

  else
  {
    v41 = v48;
    outlined init with take of Apple_Workout_SpeedAlert(v38, v48, type metadata accessor for Apple_Workout_PowerAlert);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
    v42 = v47;
    v43 = v45;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v47 + v45, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert(v41, v42 + v43, type metadata accessor for Apple_Workout_PowerAlert);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t closure #6 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Apple_Workout_WorkoutAlert(0) + 24);
  v47 = a1;
  v45 = v32;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v32, v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert(v14, v22, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    outlined init with take of Apple_Workout_SpeedAlert(v22, v20, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
      v35 = v20;
      v36 = v49;
      outlined init with take of Apple_Workout_SpeedAlert(v35, v49, type metadata accessor for Apple_Workout_HeartRateAlert);
      outlined init with take of Apple_Workout_SpeedAlert(v36, v28, type metadata accessor for Apple_Workout_HeartRateAlert);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v20, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v28, v38, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v38, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
  }

  else
  {
    v41 = v48;
    outlined init with take of Apple_Workout_SpeedAlert(v38, v48, type metadata accessor for Apple_Workout_HeartRateAlert);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v28, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
    v42 = v47;
    v43 = v45;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v47 + v45, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert(v41, v42 + v43, type metadata accessor for Apple_Workout_HeartRateAlert);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  if (*v3)
  {
    v14 = *(v3 + 8);
    v22 = *v3;
    v23 = v14;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3 + 16))
  {
    v16 = *(v3 + 24);
    v22 = *(v3 + 16);
    v23 = v16;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v17 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v6 + *(v17 + 24), v13, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v18 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
  {
    goto LABEL_16;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v20 = v5;
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #4 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  else
  {
    v20 = v5;
    if (EnumCaseMultiPayload)
    {
      closure #2 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #1 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v13, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  if (!v20)
  {
LABEL_16:
    v21 = v6 + *(v17 + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + *(v13 + 24), v8, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v8, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_SpeedAlert(v8, v12, type metadata accessor for Apple_Workout_SpeedAlert);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_SpeedAlert);
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v8, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + *(v13 + 24), v8, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v8, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_SpeedAlert(v8, v12, type metadata accessor for Apple_Workout_CadenceAlert);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_CadenceAlert);
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v8, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_PowerAlert(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + *(v13 + 24), v8, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v8, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_SpeedAlert(v8, v12, type metadata accessor for Apple_Workout_PowerAlert);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_PowerAlert);
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v8, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + *(v13 + 24), v8, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v8, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_SpeedAlert(v8, v12, type metadata accessor for Apple_Workout_HeartRateAlert);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_HeartRateAlert);
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v8, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutAlert;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutAlert()
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_WorkoutAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized static Apple_Workout_WorkoutAlert.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v19 <= 2)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          if (v18 != 1)
          {
            goto LABEL_44;
          }
        }

        else if (v18 != 2)
        {
          goto LABEL_44;
        }
      }

      else if (v18)
      {
        goto LABEL_44;
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        if (v18 != 5)
        {
          goto LABEL_44;
        }
      }

      else if (v18 != 6)
      {
        goto LABEL_44;
      }
    }

    else if (v19 == 3)
    {
      if (v18 != 3)
      {
        goto LABEL_44;
      }
    }

    else if (v18 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_44;
  }

  v20 = a1[2];
  v21 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v20 != 2)
        {
          goto LABEL_44;
        }
      }

      else if (v20 != 3)
      {
        goto LABEL_44;
      }
    }

    else if (v21)
    {
      if (v20 != 1)
      {
        goto LABEL_44;
      }
    }

    else if (v20)
    {
      goto LABEL_44;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_44;
  }

  v22 = v15;
  v23 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v24 = *(v23 + 24);
  v25 = *(v22 + 48);
  v31[0] = v23;
  v31[1] = a1;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v24, v17, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a2 + v24, &v17[v25], &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v26 = *(v5 + 48);
  if (v26(v17, 1, v4) != 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v17, v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    if (v26(&v17[v25], 1, v4) == 1)
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
      goto LABEL_29;
    }

    outlined init with take of Apple_Workout_SpeedAlert(&v17[v25], v8, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v27 = specialized static Apple_Workout_WorkoutAlert.OneOf_AlertValue.== infix(_:_:)(v12, v8);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v8, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v17, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    if (v27)
    {
      goto LABEL_43;
    }

LABEL_44:
    v29 = 0;
    return v29 & 1;
  }

  if (v26(&v17[v25], 1, v4) != 1)
  {
LABEL_29:
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v17, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSg_AFtMR);
    goto LABEL_44;
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v17, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
LABEL_43:
  v28 = *(v31[0] + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v29 & 1;
}

uint64_t specialized static Apple_Workout_WorkoutAlert.OneOf_AlertValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v2 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_PowerAlert(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v45 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueO_AEtMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueO_AEtMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v45 - v32;
  v35 = *(v34 + 56);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v47, &v45 - v32);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v48, &v33[v35]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v33, v23);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v37 = type metadata accessor for Apple_Workout_PowerAlert;
        v38 = v23;
        goto LABEL_15;
      }

      outlined init with take of Apple_Workout_SpeedAlert(&v33[v35], v8, type metadata accessor for Apple_Workout_PowerAlert);
      v39 = static Apple_Workout_PowerAlert.== infix(_:_:)(v23, v8);
      v40 = type metadata accessor for Apple_Workout_PowerAlert;
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v8, type metadata accessor for Apple_Workout_PowerAlert);
      v41 = v23;
    }

    else
    {
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v33, v20);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v37 = type metadata accessor for Apple_Workout_HeartRateAlert;
        v38 = v20;
        goto LABEL_15;
      }

      v43 = v46;
      outlined init with take of Apple_Workout_SpeedAlert(&v33[v35], v46, type metadata accessor for Apple_Workout_HeartRateAlert);
      v39 = static Apple_Workout_HeartRateAlert.== infix(_:_:)(v20, v43);
      v40 = type metadata accessor for Apple_Workout_HeartRateAlert;
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v43, type metadata accessor for Apple_Workout_HeartRateAlert);
      v41 = v20;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v33, v26);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = type metadata accessor for Apple_Workout_CadenceAlert;
      v38 = v26;
      goto LABEL_15;
    }

    outlined init with take of Apple_Workout_SpeedAlert(&v33[v35], v12, type metadata accessor for Apple_Workout_CadenceAlert);
    v39 = static Apple_Workout_CadenceAlert.== infix(_:_:)(v26, v12);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_CadenceAlert);
    v41 = v26;
    v42 = type metadata accessor for Apple_Workout_CadenceAlert;
LABEL_18:
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v41, v42);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v33, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    return v39 & 1;
  }

  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v33, v29);
  if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_SpeedAlert(&v33[v35], v16, type metadata accessor for Apple_Workout_SpeedAlert);
    v39 = static Apple_Workout_SpeedAlert.== infix(_:_:)(v29, v16);
    v40 = type metadata accessor for Apple_Workout_SpeedAlert;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v16, type metadata accessor for Apple_Workout_SpeedAlert);
    v41 = v29;
LABEL_17:
    v42 = v40;
    goto LABEL_18;
  }

  v37 = type metadata accessor for Apple_Workout_SpeedAlert;
  v38 = v29;
LABEL_15:
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v38, v37);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v33, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueO_AEtMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueO_AEtMR);
  v39 = 0;
  return v39 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t WorkoutPlan.presentPreview()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlan.presentPreview(), 0, 0);
}

{
  v1 = v0[2];
  WorkoutPlan.validate()();
  if (v2 || (v3 = v0[2], WorkoutPlan.validate()(), v4))
  {
    v13 = v0[4];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    *(swift_task_alloc() + 16) = v7;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan();
    static Message.with(_:)();

    v8 = v0[3];
    v9 = v0[4];
    v10 = Message.serializedData(partial:)();
    v12 = v11;
    v0[5] = v10;
    v0[6] = v11;
    outlined destroy of Apple_Workout_WorkoutPlan(v9);
    v16 = swift_task_alloc();
    v0[7] = v16;
    *(v16 + 16) = v10;
    *(v16 + 24) = v12;
    v17 = *(MEMORY[0x277D85A40] + 4);
    v18 = swift_task_alloc();
    v0[8] = v18;
    *v18 = v0;
    v18[1] = WorkoutPlan.presentPreview();
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v18, 0, 0, 0xD000000000000010, 0x800000023B67F270, partial apply for closure #1 in WorkoutPlan.presentPreview(), v16, v19);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = WorkoutPlan.presentPreview();
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = WorkoutPlan.presentPreview();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t WorkoutPlan.openInWorkoutApp()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = WorkoutPlan.openInWorkoutApp();

  return WorkoutPlan.openWorkoutApp()();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WorkoutPlan.openWorkoutApp()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlan.openWorkoutApp(), 0, 0);
}

{
  v1 = v0[2];
  WorkoutPlan.validate()();
  if (v2 || (v3 = v0[2], WorkoutPlan.validate()(), v4))
  {
    v13 = v0[4];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    *(swift_task_alloc() + 16) = v7;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan();
    static Message.with(_:)();

    v8 = v0[3];
    v9 = v0[4];
    v10 = Message.serializedData(partial:)();
    v12 = v11;
    v0[5] = v10;
    v0[6] = v11;
    outlined destroy of Apple_Workout_WorkoutPlan(v9);
    v16 = swift_task_alloc();
    v0[7] = v16;
    *(v16 + 16) = v10;
    *(v16 + 24) = v12;
    v17 = *(MEMORY[0x277D85A40] + 4);
    v18 = swift_task_alloc();
    v0[8] = v18;
    *v18 = v0;
    v18[1] = WorkoutPlan.openWorkoutApp();
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v18, 0, 0, 0xD000000000000010, 0x800000023B67F290, partial apply for closure #1 in WorkoutPlan.openWorkoutApp(), v16, v19);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = WorkoutPlan.openWorkoutApp();
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = WorkoutPlan.openWorkoutApp();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[4];
  outlined consume of Data._Representation(v0[5], v0[6]);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[7];
  outlined consume of Data._Representation(v0[5], v0[6]);

  v2 = v0[9];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t WorkoutPlan.save()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlan.save(), 0, 0);
}

{
  v1 = v0[2];
  WorkoutPlan.validate()();
  if (v2 || (v3 = v0[2], WorkoutPlan.validate()(), v4))
  {
    v13 = v0[4];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    *(swift_task_alloc() + 16) = v7;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan();
    static Message.with(_:)();

    v8 = v0[3];
    v9 = v0[4];
    v10 = Message.serializedData(partial:)();
    v12 = v11;
    v0[5] = v10;
    v0[6] = v11;
    outlined destroy of Apple_Workout_WorkoutPlan(v9);
    v16 = swift_task_alloc();
    v0[7] = v16;
    *(v16 + 16) = v10;
    *(v16 + 24) = v12;
    v17 = *(MEMORY[0x277D85A40] + 4);
    v18 = swift_task_alloc();
    v0[8] = v18;
    *v18 = v0;
    v18[1] = WorkoutPlan.save();
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v18, 0, 0, 0x292865766173, 0xE600000000000000, partial apply for closure #1 in WorkoutPlan.save(), v16, v19);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = WorkoutPlan.save();
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = WorkoutPlan.save();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void closure #1 in WorkoutPlan.presentPreview()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v19 = a6;
  v20 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v13, v9);
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = v19;
  v18 = _Block_copy(aBlock);

  [v14 *v20];
  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in WorkoutPlan.presentPreview()(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan)
  {
    type metadata accessor for Apple_Workout_WorkoutPlan(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t closure #1 in WorkoutPlan.protoComposition.getterpartial apply(uint64_t *a1)
{
  return partial apply for closure #1 in WorkoutPlan.protoComposition.getter(a1);
}

{
  return partial apply for closure #1 in WorkoutPlan.protoComposition.getter(a1);
}

{
  return _s10WorkoutKit0A4PlanV16protoCompositionAA06Apple_a1_aC0VvgyAFzKXEfU_TA_0(a1);
}

{
  return _s10WorkoutKit0A4PlanV16protoCompositionAA06Apple_a1_aC0VvgyAFzKXEfU_TA_1(a1);
}

{
  return _s10WorkoutKit0A4PlanV16protoCompositionAA06Apple_a1_aC0VvgyAFzKXEfU_TA_1(a1);
}

uint64_t type metadata completion function for Apple_Workout_HeartRateValue()
{
  return type metadata completion function for Apple_Workout_HeartRateValue();
}

{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata completion function for Apple_Workout_TimeValue()
{
  return type metadata completion function for Apple_Workout_TimeValue();
}

{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_PoolSwimDistanceWithTimeValue()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_DistanceValue?(319, &lazy cache variable for type metadata for Apple_Workout_DistanceValue?, type metadata accessor for Apple_Workout_DistanceValue);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_DistanceValue?(319, &lazy cache variable for type metadata for Apple_Workout_TimeValue?, type metadata accessor for Apple_Workout_TimeValue);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_DistanceValue?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for Apple_Workout_HeartRateValue(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_DistanceValue.DistanceUnit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_DistanceValue.DistanceUnit@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_DistanceValue.DistanceUnit@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_TimeValue.TimeUnit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_EnergyValue.EnergyUnit@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_EnergyValue.EnergyUnit@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_DistanceValue.DistanceUnit()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_EnergyValue.EnergyUnit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_DistanceValue.DistanceUnit()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_EnergyValue.EnergyUnit] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_DistanceValue._protobuf_nameMap, "distance", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_HeartRateValue._protobuf_nameMap, "beatsPerMinute", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_TimeValue._protobuf_nameMap, "time", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_EnergyValue._protobuf_nameMap, "energy", 6);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_ZoneValue._protobuf_nameMap, "zone", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_LocationCoordinate2D._protobuf_nameMap, "latitude", 8, "longitude");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_PoolSwimDistanceWithTimeValue._protobuf_nameMap, "distanceValue", 13, "timeValue");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_SpeedValue._protobuf_nameMap, "distance", "time", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_SpeedRange._protobuf_nameMap, "minSpeed", "maxSpeed", 8);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_DistanceValue(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_DistanceValue;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_DistanceValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_DistanceValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_DistanceValue()
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_HeartRateValue.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_HeartRateValue.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Workout_HeartRateValue(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_HeartRateValue@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_HeartRateValue;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_HeartRateValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_HeartRateValue()
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_HeartRateValue(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_DistanceValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(void))
{
  if (!*v6 || (v11 = *v6, v12 = *(v6 + 8), a4(a1, a2), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v7))
  {
    if (!v6[2] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v7))
    {
      v10 = v6 + *(a6(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_TimeValue(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_TimeValue;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_TimeValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_TimeValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_TimeValue()
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23B677F60;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "unit";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23B6792F0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Apple_Workout_DistanceValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_DistanceValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_EnergyValue(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_EnergyValue;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_EnergyValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_EnergyValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_EnergyValue()
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_ZoneValue.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_ZoneValue.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Workout_ZoneValue(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_ZoneValue@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_HeartRateValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_ZoneValue(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_ZoneValue;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_ZoneValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_ZoneValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_ZoneValue()
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_ZoneValue(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23B677F60;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = type metadata accessor for _NameMap.NameDescription();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 9;
  v18[16] = 2;
  v17();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23B677F60;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Apple_Workout_LocationCoordinate2D.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_LocationCoordinate2D.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_LocationCoordinate2D(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_LocationCoordinate2D@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_DistanceValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_DistanceValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_LocationCoordinate2D(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_LocationCoordinate2D;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_LocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_LocationCoordinate2D(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_LocationCoordinate2D()
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_LocationCoordinate2D(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
  type metadata accessor for Apple_Workout_DistanceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 24);
  type metadata accessor for Apple_Workout_TimeValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  outlined init with copy of Apple_Workout_TimeValue?(a1 + *(v14 + 20), v8, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_TimeValue?(v8, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  outlined init with take of Apple_Workout_TimeValue(v8, v13, type metadata accessor for Apple_Workout_DistanceValue);
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_TimeValue(v13, type metadata accessor for Apple_Workout_DistanceValue);
}

uint64_t closure #2 in Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_TimeValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  outlined init with copy of Apple_Workout_TimeValue?(a1 + *(v14 + 24), v8, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_TimeValue?(v8, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  outlined init with take of Apple_Workout_TimeValue(v8, v13, type metadata accessor for Apple_Workout_TimeValue);
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_TimeValue(v13, type metadata accessor for Apple_Workout_TimeValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PoolSwimDistanceWithTimeValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_DistanceValue(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Workout_TimeValue(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PoolSwimDistanceWithTimeValue@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_DistanceValue@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_DistanceValue()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PoolSwimDistanceWithTimeValue()
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_DistanceValue()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static Apple_Workout_PoolSwimDistanceWithTimeValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Apple_Workout_TimeValue(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = (&v43 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v43 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  outlined init with copy of Apple_Workout_TimeValue?(a1 + v25, v24, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with copy of Apple_Workout_TimeValue?(v52 + v25, &v24[v26], &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    outlined init with copy of Apple_Workout_TimeValue?(v24, v19, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      outlined init with take of Apple_Workout_TimeValue(&v24[v26], v15, type metadata accessor for Apple_Workout_DistanceValue);
      v31 = specialized static Apple_Workout_DistanceValue.== infix(_:_:)(v19, v15);
      outlined destroy of Apple_Workout_TimeValue(v15, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of Apple_Workout_TimeValue(v19, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of Apple_Workout_TimeValue?(v24, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_TimeValue(v19, type metadata accessor for Apple_Workout_DistanceValue);
LABEL_6:
    v28 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd;
    v29 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR;
    v30 = v24;
LABEL_14:
    outlined destroy of Apple_Workout_TimeValue?(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_TimeValue?(v24, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  outlined init with copy of Apple_Workout_TimeValue?(v51 + v32, v50, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with copy of Apple_Workout_TimeValue?(v52 + v32, v34 + v33, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      outlined destroy of Apple_Workout_TimeValue?(v34, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  outlined init with copy of Apple_Workout_TimeValue?(v34, v45, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    outlined destroy of Apple_Workout_TimeValue(v37, type metadata accessor for Apple_Workout_TimeValue);
LABEL_13:
    v28 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd;
    v29 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  outlined init with take of Apple_Workout_TimeValue(v40, v44, type metadata accessor for Apple_Workout_TimeValue);
  v42 = specialized static Apple_Workout_TimeValue.== infix(_:_:)(v37, v41);
  outlined destroy of Apple_Workout_TimeValue(v41, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_TimeValue(v37, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_TimeValue?(v34, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static Apple_Workout_EnergyValue.== infix(_:_:)(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (*&v2 != 1)
        {
          return 0;
        }
      }

      else if (*&v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 0.0)
    {
      return 0;
    }
  }

  else if (*&v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 2))
  {
    v4 = *(type metadata accessor for Apple_Workout_EnergyValue(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_DistanceValue.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (*&v2 != 3)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (*&v2 != 4)
        {
          return 0;
        }
      }

      else if (*&v2 != 5)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        if (*&v2 != 1)
        {
          return 0;
        }
      }

      else if (*&v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 0.0)
    {
      return 0;
    }
  }

  else if (*&v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16))
  {
    v4 = *(type metadata accessor for Apple_Workout_DistanceValue(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_TimeValue.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (*&v2 != 2)
        {
          return 0;
        }
      }

      else if (*&v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (*&v2 != 1)
      {
        return 0;
      }
    }

    else if (v2 != 0.0)
    {
      return 0;
    }
  }

  else if (*&v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16))
  {
    v4 = *(type metadata accessor for Apple_Workout_TimeValue(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t outlined init with copy of Apple_Workout_TimeValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_TimeValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_TimeValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_TimeValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation14DateComponentsVG_10WorkoutKit09ScheduledG4PlanVs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for ScheduledWorkoutPlan();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v22;
  v13 = *(type metadata accessor for DateComponents() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    outlined init with take of ScheduledWorkoutPlan(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t WorkoutScheduler.scheduledWorkouts.getter()
{
  return MEMORY[0x2822009F8](WorkoutScheduler.scheduledWorkouts.getter, 0, 0);
}

{
  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[4] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit09ScheduledA4PlanVGMd, &_sSay10WorkoutKit09ScheduledA4PlanVGMR);
  *v5 = v0;
  v5[1] = WorkoutScheduler.scheduledWorkouts.getter;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x800000023B67F480, partial apply for closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:), v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = WorkoutScheduler.scheduledWorkouts.getter;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = WorkoutScheduler.scheduledWorkouts.getter;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  v19 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 56);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WorkoutKitLog.scheduling);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v0 + 24) = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_23B5E7000, v6, v7, "failed to retrieve scheduled plans due to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA1330](v10, -1, -1);
    MEMORY[0x23EEA1330](v9, -1, -1);
  }

  v15 = *(v0 + 8);
  v16 = MEMORY[0x277D84F90];

  return v15(v16);
}

uint64_t static WorkoutScheduler.retrieveScheduledWorkouts(from:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](static WorkoutScheduler.retrieveScheduledWorkouts(from:), 0, 0);
}

uint64_t static WorkoutScheduler.retrieveScheduledWorkouts(from:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit09ScheduledA4PlanVGMd, &_sSay10WorkoutKit09ScheduledA4PlanVGMR);
  *v5 = v0;
  v5[1] = static WorkoutScheduler.retrieveScheduledWorkouts(from:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x800000023B67F480, closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = static WorkoutScheduler.retrieveScheduledWorkouts(from:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = static WorkoutScheduler.retrieveScheduledWorkouts(from:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t WorkoutScheduler.schedule(_:at:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](WorkoutScheduler.schedule(_:at:), 0, 0);
}

uint64_t WorkoutScheduler.schedule(_:at:)()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR);
  v2 = type metadata accessor for DateComponents();
  *(v0 + 32) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 40) = v3;
  v5 = *(v3 + 72);
  v6 = *(v4 + 80);
  *(v0 + 64) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 48) = v8;
  *(v8 + 16) = xmmword_23B6792F0;
  (*(v4 + 16))(v8 + v7, v1, v2);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = WorkoutScheduler.schedule(_:at:);
  v10 = *(v0 + 16);

  return specialized WorkoutScheduler.schedule(_:dateComponents:)(v10, v8);
}

uint64_t WorkoutScheduler.schedule(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = WorkoutScheduler.schedule(_:dateComponents:);

  return specialized WorkoutScheduler.schedule(_:dateComponents:)(a1, a2);
}

uint64_t WorkoutScheduler.remove(_:at:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](WorkoutScheduler.remove(_:at:), 0, 0);
}

uint64_t WorkoutScheduler.remove(_:at:)()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR);
  v2 = type metadata accessor for DateComponents();
  *(v0 + 32) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 40) = v3;
  v5 = *(v3 + 72);
  v6 = *(v4 + 80);
  *(v0 + 64) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 48) = v8;
  *(v8 + 16) = xmmword_23B6792F0;
  (*(v4 + 16))(v8 + v7, v1, v2);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = WorkoutScheduler.remove(_:at:);
  v10 = *(v0 + 16);

  return specialized WorkoutScheduler.remove(_:dateComponents:)(v10, v8);
}

uint64_t WorkoutScheduler.remove(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = WorkoutScheduler.remove(_:dateComponents:);

  return specialized WorkoutScheduler.remove(_:dateComponents:)(a1, a2);
}

uint64_t WorkoutScheduler.markComplete(_:at:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](WorkoutScheduler.markComplete(_:at:), 0, 0);
}

uint64_t WorkoutScheduler.markComplete(_:at:)()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR);
  v2 = type metadata accessor for DateComponents();
  *(v0 + 32) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 40) = v3;
  v5 = *(v3 + 72);
  v6 = *(v4 + 80);
  *(v0 + 64) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 48) = v8;
  *(v8 + 16) = xmmword_23B6792F0;
  (*(v4 + 16))(v8 + v7, v1, v2);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = WorkoutScheduler.markComplete(_:at:);
  v10 = *(v0 + 16);

  return specialized WorkoutScheduler.markComplete(_:dateComponents:)(v10, v8);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = (*(*v0 + 64) + 32) & ~*(*v0 + 64);
  v8 = *v0;

  swift_setDeallocating();
  (*(v3 + 8))(v2 + v5, v4);
  swift_deallocClassInstance();
  v6 = *(v8 + 8);

  return v6();
}

uint64_t WorkoutScheduler.markComplete(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = WorkoutScheduler.markComplete(_:dateComponents:);

  return specialized WorkoutScheduler.markComplete(_:dateComponents:)(a1, a2);
}

uint64_t WorkoutScheduler.markComplete(_:dateComponents:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WorkoutScheduler.removeAllWorkouts()()
{
  return MEMORY[0x2822009F8](WorkoutScheduler.removeAllWorkouts(), 0, 0);
}

{
  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v1, static WorkoutKitLog.scheduling);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B5E7000, v2, v3, "removing all scheduled workouts", v4, 2u);
    MEMORY[0x23EEA1330](v4, -1, -1);
  }

  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v6 = static WorkoutScheduler.bundleId;
  v5 = unk_27E168D50;
  v0[4] = unk_27E168D50;

  v7 = swift_task_alloc();
  v0[5] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = WorkoutScheduler.removeAllWorkouts();
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD00000000000001ALL, 0x800000023B67F4B0, partial apply for closure #1 in static WorkoutScheduler.removeAll(sourceBundleId:), v7, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = WorkoutScheduler.removeAllWorkouts();
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = WorkoutScheduler.removeAllWorkouts();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v0[2] = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_23B5E7000, v6, v7, "failed to remove all workouts due to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA1330](v10, -1, -1);
    MEMORY[0x23EEA1330](v9, -1, -1);
  }

  else
  {
    v15 = v0[7];
  }

  v16 = v0[1];

  return v16();
}

uint64_t static WorkoutScheduler.removeAll(sourceBundleId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](static WorkoutScheduler.removeAll(sourceBundleId:), 0, 0);
}

uint64_t static WorkoutScheduler.removeAll(sourceBundleId:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = static WorkoutScheduler.removeAll(sourceBundleId:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000001ALL, 0x800000023B67F4B0, closure #1 in static WorkoutScheduler.removeAll(sourceBundleId:)partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = static WorkoutScheduler.removeAll(sourceBundleId:);
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = static WorkoutScheduler.removeAll(sourceBundleId:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t one-time initialization function for bundleId()
{
  result = closure #1 in variable initialization expression of static WorkoutScheduler.bundleId();
  static WorkoutScheduler.bundleId = result;
  unk_27E168D50 = v1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static WorkoutScheduler.bundleId()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      return v2;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(a2 + 16) < result)
    {
      v3 = *(a2 + 16);
    }

    v4 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t static WorkoutScheduler.remove(scheduledWorkouts:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static WorkoutScheduler.remove(scheduledWorkouts:for:);

  return specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)(a1, a2, a3);
}

uint64_t static WorkoutScheduler.add(scheduledWorkouts:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static WorkoutScheduler.add(scheduledWorkouts:for:);

  return specialized static WorkoutScheduler.add(scheduledWorkouts:for:)(a1, a2, a3);
}

uint64_t static WorkoutScheduler.add(scheduledWorkouts:for:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t closure #1 in WorkoutScheduler.schedule(_:dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutPlan(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ScheduledWorkoutPlan(a2, v14, type metadata accessor for WorkoutPlan);
  (*(v7 + 16))(v10, a1, v6);
  return ScheduledWorkoutPlan.init(_:date:)(v14, v10, a3);
}

uint64_t closure #1 in WorkoutScheduler.markComplete(_:dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutPlan(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ScheduledWorkoutPlan(a2, v18, type metadata accessor for WorkoutPlan);
  (*(v11 + 16))(v14, a1, v10);
  ScheduledWorkoutPlan.init(_:date:)(v18, v14, a3);
  static Date.now.getter();
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  v20 = type metadata accessor for ScheduledWorkoutPlan();
  return outlined assign with take of Date?(v9, a3 + *(v20 + 24));
}

WorkoutKit::WorkoutScheduler::AuthorizationState_optional __swiftcall WorkoutScheduler.AuthorizationState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutScheduler.AuthorizationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutScheduler.AuthorizationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

uint64_t WorkoutScheduler.authorizationState.getter()
{
  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[4] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = WorkoutScheduler.authorizationState.getter;
  v6 = v0[3];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000018, 0x800000023B67F4D0, partial apply for closure #1 in static WorkoutScheduler.authorizationState(for:), v3, &type metadata for WorkoutScheduler.AuthorizationState);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](WorkoutScheduler.authorizationState.getter, 0, 0);
  }

  else
  {
    v4 = v3[4];
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

{
  v19 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 56);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WorkoutKitLog.scheduling);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 56);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v0 + 16) = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B5E7000, v6, v7, "failed to retrieve authorization state due to %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEA1330](v11, -1, -1);
    MEMORY[0x23EEA1330](v10, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t static WorkoutScheduler.authorizationState(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](static WorkoutScheduler.authorizationState(for:), 0, 0);
}

uint64_t static WorkoutScheduler.authorizationState(for:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = static WorkoutScheduler.authorizationState(for:);
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000018, 0x800000023B67F4D0, closure #1 in static WorkoutScheduler.authorizationState(for:)partial apply, v3, &type metadata for WorkoutScheduler.AuthorizationState);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static WorkoutScheduler.authorizationState(for:), 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t WorkoutScheduler.requestAuthorization()()
{
  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[4] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = WorkoutScheduler.requestAuthorization();
  v6 = v0[3];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001ALL, 0x800000023B67F4F0, partial apply for closure #1 in static WorkoutScheduler.requestAuthorization(for:), v3, &type metadata for WorkoutScheduler.AuthorizationState);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](WorkoutScheduler.requestAuthorization(), 0, 0);
  }

  else
  {
    v4 = v3[4];
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

{
  v19 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 56);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WorkoutKitLog.scheduling);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 56);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v0 + 16) = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B5E7000, v6, v7, "failed to request authorization state due to %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEA1330](v11, -1, -1);
    MEMORY[0x23EEA1330](v10, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t static WorkoutScheduler.requestAuthorization(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](static WorkoutScheduler.requestAuthorization(for:), 0, 0);
}

uint64_t static WorkoutScheduler.requestAuthorization(for:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = static WorkoutScheduler.requestAuthorization(for:);
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001ALL, 0x800000023B67F4F0, closure #1 in static WorkoutScheduler.requestAuthorization(for:)partial apply, v3, &type metadata for WorkoutScheduler.AuthorizationState);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static WorkoutScheduler.requestAuthorization(for:), 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

void closure #2 in static WorkoutScheduler.add(scheduledWorkouts:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v21 = [objc_opt_self() sharedInstance];
  v13 = *a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = MEMORY[0x23EEA0A00](a3, a4);
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #2 in static WorkoutScheduler.add(scheduledWorkouts:for:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_46;
  v18 = _Block_copy(aBlock);

  v19 = v21;
  [v21 addScheduledWorkouts:isa sourceBundleId:v15 completion:v18];
  _Block_release(v18);
}

void closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = *a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = MEMORY[0x23EEA0A00](a3, a4);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_55;
  v19 = _Block_copy(aBlock);

  [v13 removeScheduledWorkouts:isa sourceBundleId:v16 completion:v19];
  _Block_release(v19);
}

uint64_t closure #1 in closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:)(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMd, &_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = MEMORY[0x23EEA0A00](a2, a3);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [Data], @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_76;
  v15 = _Block_copy(aBlock);

  [v11 retrieveScheduledWorkoutCompositionsForSourceBundleId:v12 completion:v15];
  _Block_release(v15);
}

uint64_t closure #1 in closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for ScheduledWorkoutPlan();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = a2;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMd, &_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v19 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v12 = v19;
      v13 = (a1 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        outlined copy of Data._Representation(v14, *v13);
        static ScheduledWorkoutPlan.importFromData(_:)(v14, v15, v8);
        outlined consume of Data._Representation(v14, v15);
        v19 = v12;
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
          v12 = v19;
        }

        v13 += 2;
        v12[2] = v17 + 1;
        outlined init with take of ScheduledWorkoutPlan(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17);
        --v11;
      }

      while (v11);
    }

    v19 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMd, &_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [Data], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

void closure #1 in static WorkoutScheduler.removeAll(sourceBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = MEMORY[0x23EEA0A00](a2, a3);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in static WorkoutScheduler.removeAll(sourceBundleId:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_61;
  v15 = _Block_copy(aBlock);

  [v11 deleteScheduledWorkoutCompositionsForSourceBundleId:v12 completion:v15];
  _Block_release(v15);
}

uint64_t closure #1 in closure #2 in static WorkoutScheduler.add(scheduledWorkouts:for:)(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a2)
  {
    v11 = a6;
    v9 = a2;
    specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v12 = a7;
    specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void closure #1 in static WorkoutScheduler.authorizationState(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = MEMORY[0x23EEA0A00](a2, a3);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in static WorkoutScheduler.authorizationState(for:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_38;
  v15 = _Block_copy(aBlock);

  [v11 retrieveAuthorizationStateForBundleId:v12 completion:v15];
  _Block_release(v15);
}

void closure #1 in closure #1 in static WorkoutScheduler.authorizationState(for:)(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!a1)
  {
    lazy protocol witness table accessor for type AuthorizationError and conformance AuthorizationError();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  v3 = a1;
  if ([v3 unsignedIntegerValue] >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void closure #1 in static WorkoutScheduler.requestAuthorization(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = MEMORY[0x23EEA0A00](a2, a3);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in static WorkoutScheduler.requestAuthorization(for:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);

  [v11 requestAuthorizationForBundleId:v12 completion:v15];
  _Block_release(v15);
}

void closure #1 in closure #1 in static WorkoutScheduler.requestAuthorization(for:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    LOBYTE(v12) = 4;
    v7 = a2;
    specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4, &v12);
    v12 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!a1)
  {
    LOBYTE(v12) = 4;
    specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4, &v12);
    lazy protocol witness table accessor for type AuthorizationError and conformance AuthorizationError();
    v10 = swift_allocError();
    *v11 = 1;
    v12 = v10;
    goto LABEL_3;
  }

  v8 = a1;
  v9 = [v8 unsignedIntegerValue];
  LOBYTE(v12) = 1;
  specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4, &v12);
  if (v9 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v12) = 0x30200u >> (8 * v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR);
      v7 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ScheduledWorkoutPlan();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ScheduledWorkoutPlan();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      outlined init with copy of ScheduledWorkoutPlan(v23, v17, type metadata accessor for ScheduledWorkoutPlan);
      outlined init with copy of ScheduledWorkoutPlan(v20, v13, type metadata accessor for ScheduledWorkoutPlan);
      v24 = *(v8 + 20);
      v25 = static Date.< infix(_:_:)();
      outlined destroy of ScheduledWorkoutPlan(v13, type metadata accessor for ScheduledWorkoutPlan);
      outlined destroy of ScheduledWorkoutPlan(v17, type metadata accessor for ScheduledWorkoutPlan);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      outlined init with take of ScheduledWorkoutPlan(v23, v36);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of ScheduledWorkoutPlan(v26, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}