uint64_t PacerWorkout.distanceGoal.setter(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutGoal();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for PacerWorkout() + 24);
  outlined assign with copy of WorkoutGoal(a1, v1 + v7);
  outlined init with copy of WorkoutGoal(v1 + v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of WorkoutGoal(v6, type metadata accessor for WorkoutGoal);
  if (EnumCaseMultiPayload)
  {
    type metadata accessor for GoalValidationError(0);
    _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
    v10 = swift_allocError();
    v12 = v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
    v14 = *(v13 + 48);
    v15 = *(v13 + 64);
    outlined init with copy of WorkoutGoal(v1 + v7, v12);
    *(v12 + v14) = *v1;
    *(v12 + v15) = v1[1];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5(*v1, v1[1], 0);
    return outlined destroy of WorkoutGoal(a1, type metadata accessor for WorkoutGoal);
  }

  return result;
}

void (*PacerWorkout.distance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for WorkoutGoal();
  v5[1] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[2] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v5[6] = v12;
  PacerWorkout.distance.getter();
  return PacerWorkout.distance.modify;
}

uint64_t PacerWorkout.time.getter()
{
  v1 = type metadata accessor for WorkoutGoal();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v13 - v6);
  v8 = *(type metadata accessor for PacerWorkout() + 28);
  outlined init with copy of WorkoutGoal(v0 + v8, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v7;
    v10 = v7[1];
    _sSo12NSUnitLengthCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    return Measurement.init(value:unit:)();
  }

  else
  {
    outlined destroy of WorkoutGoal(v7, type metadata accessor for WorkoutGoal);
    v13 = 0;
    v14 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v13 = 0xD000000000000020;
    v14 = 0x800000023B67FD30;
    outlined init with copy of WorkoutGoal(v0 + v8, v5);
    v12 = String.init<A>(describing:)();
    MEMORY[0x23EEA0A50](v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t key path setter for PacerWorkout.distance : PacerWorkout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(void *))
{
  v12 = type metadata accessor for WorkoutGoal();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  (*(v17 + 16))(&v25 - v19, a1, v16);
  Measurement.value.getter();
  v22 = v21;
  v23 = Measurement.unit.getter();
  *v15 = v22;
  v15[1] = v23;
  swift_storeEnumTagMultiPayload();
  a8(v15);
  return (*(v17 + 8))(v20, v16);
}

uint64_t PacerWorkout.distance.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void *))
{
  v9 = type metadata accessor for WorkoutGoal();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Measurement.value.getter();
  v15 = v14;
  v16 = Measurement.unit.getter();
  *v12 = v15;
  v12[1] = v16;
  swift_storeEnumTagMultiPayload();
  a5(v12);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t PacerWorkout.timeGoal.setter(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutGoal();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for PacerWorkout() + 28);
  outlined assign with copy of WorkoutGoal(a1, v1 + v7);
  outlined init with copy of WorkoutGoal(v1 + v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of WorkoutGoal(v6, type metadata accessor for WorkoutGoal);
  if (EnumCaseMultiPayload == 1)
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5(*v1, v1[1], 0);
    return outlined destroy of WorkoutGoal(a1, type metadata accessor for WorkoutGoal);
  }

  else
  {
    type metadata accessor for GoalValidationError(0);
    _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
    v10 = swift_allocError();
    v12 = v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
    v14 = *(v13 + 48);
    v15 = *(v13 + 64);
    outlined init with copy of WorkoutGoal(v1 + v7, v12);
    *(v12 + v14) = *v1;
    *(v12 + v15) = v1[1];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*PacerWorkout.time.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for WorkoutGoal();
  v5[1] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[2] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v5[6] = v12;
  PacerWorkout.time.getter();
  return PacerWorkout.time.modify;
}

void PacerWorkout.distance.modify(uint64_t **a1, char a2, uint64_t a3, void (*a4)(void *))
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    Measurement.value.getter();
    v13 = v12;
    v14 = Measurement.unit.getter();
    *v9 = v13;
    v9[1] = v14;
    swift_storeEnumTagMultiPayload();
    a4(v9);
    v15 = *(v8 + 8);
    v15(v5, v7);
    v15(v6, v7);
  }

  else
  {
    v16 = (*a1)[3];
    Measurement.value.getter();
    v18 = v17;
    v19 = Measurement.unit.getter();
    *v9 = v18;
    v9[1] = v19;
    swift_storeEnumTagMultiPayload();
    a4(v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v4);
}

uint64_t PacerWorkout.distanceGoal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PacerWorkout() + 24);

  return outlined init with copy of WorkoutGoal(v3, a1);
}

void (*PacerWorkout.distanceGoal.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = type metadata accessor for WorkoutGoal();
  *(v5 + 16) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  *(v5 + 24) = v8;
  *(v5 + 32) = *(type metadata accessor for PacerWorkout() + 24);
  return PacerWorkout.distanceGoal.modify;
}

void PacerWorkout.distanceGoal.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + 3);
    outlined init with copy of WorkoutGoal(*(v2 + 1) + v2[8], v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of WorkoutGoal(v3, type metadata accessor for WorkoutGoal);
    v5 = v2[8];
    if (EnumCaseMultiPayload)
    {
      v6 = *(v2 + 1);
      v7 = v2[8];
      type metadata accessor for GoalValidationError(0);
      _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
      v8 = swift_allocError();
      v10 = v9;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v12 = *(v11 + 48);
      v13 = *(v11 + 64);
      outlined init with copy of WorkoutGoal(v6 + v7, v10);
      *(v10 + v12) = *v6;
      *(v10 + v13) = v6[1];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      *v2 = v8;
      v14 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5(**(v2 + 1), *(*(v2 + 1) + 8), 0);
  }

  free(*(v2 + 3));

  free(v2);
}

uint64_t PacerWorkout.timeGoal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PacerWorkout() + 28);

  return outlined init with copy of WorkoutGoal(v3, a1);
}

uint64_t key path setter for PacerWorkout.distanceGoal : PacerWorkout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for WorkoutGoal();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(a1, v10);
  return a5(v10);
}

void (*PacerWorkout.timeGoal.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = type metadata accessor for WorkoutGoal();
  *(v5 + 16) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  *(v5 + 24) = v8;
  *(v5 + 32) = *(type metadata accessor for PacerWorkout() + 28);
  return PacerWorkout.timeGoal.modify;
}

void PacerWorkout.timeGoal.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + 3);
    outlined init with copy of WorkoutGoal(*(v2 + 1) + v2[8], v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of WorkoutGoal(v3, type metadata accessor for WorkoutGoal);
    v5 = v2[8];
    if (EnumCaseMultiPayload != 1)
    {
      v6 = *(v2 + 1);
      v7 = v2[8];
      type metadata accessor for GoalValidationError(0);
      _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
      v8 = swift_allocError();
      v10 = v9;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v12 = *(v11 + 48);
      v13 = *(v11 + 64);
      outlined init with copy of WorkoutGoal(v6 + v7, v10);
      *(v10 + v12) = *v6;
      *(v10 + v13) = v6[1];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      *v2 = v8;
      v14 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5(**(v2 + 1), *(*(v2 + 1) + 8), 0);
  }

  free(*(v2 + 3));

  free(v2);
}

uint64_t PacerWorkout.init(activity:location:distance:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for WorkoutGoal();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (v29 - v15);
  v17 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v17 setActivityType_];
  [v17 setLocationType_];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  Measurement.value.getter();
  v20 = v19;
  v21 = Measurement.unit.getter();
  *v16 = v20;
  v16[1] = v21;
  swift_storeEnumTagMultiPayload();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  Measurement.value.getter();
  v24 = v23;
  v25 = Measurement.unit.getter();
  *v13 = v24;
  v13[1] = v25;
  swift_storeEnumTagMultiPayload();
  specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(v17);
  *a5 = [v17 activityType];
  v26 = [v17 locationType];

  (*(*(v22 - 8) + 8))(a4, v22);
  (*(*(v18 - 8) + 8))(a3, v18);
  a5[1] = v26;
  v27 = type metadata accessor for PacerWorkout();
  outlined init with take of WorkoutGoal(v16, a5 + *(v27 + 24), type metadata accessor for WorkoutGoal);
  return outlined init with take of WorkoutGoal(v13, a5 + *(v27 + 28), type metadata accessor for WorkoutGoal);
}

uint64_t PacerWorkout.init(configuration:distanceGoal:timeGoal:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(a1);
  if (v4)
  {

    outlined destroy of WorkoutGoal(a3, type metadata accessor for WorkoutGoal);
    return outlined destroy of WorkoutGoal(a2, type metadata accessor for WorkoutGoal);
  }

  else
  {
    *a4 = [a1 activityType];
    v10 = [a1 locationType];

    a4[1] = v10;
    v11 = type metadata accessor for PacerWorkout();
    outlined init with take of WorkoutGoal(a2, a4 + *(v11 + 24), type metadata accessor for WorkoutGoal);
    return outlined init with take of WorkoutGoal(a3, a4 + *(v11 + 28), type metadata accessor for WorkoutGoal);
  }
}

uint64_t PacerWorkout.init(from:)@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v66 = a2;
  v67 = type metadata accessor for WorkoutGoal();
  v3 = *(*(v67 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v67);
  v71 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v70 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v65 - v9;
  v10 = type metadata accessor for Apple_Workout_TimeValue(0);
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v75 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13);
  v80 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v65 - v18;
  v20 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v76 = *(v25 - 8);
  v77 = v25;
  v26 = *(v76 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v65 - v27;
  v29 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v29 setActivityType_];
  v30 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  v31 = (a1 + v30[6]);
  if ((v31[1] & 1) == 0)
  {
    [v29 setLocationType_];
  }

  v79 = v29;
  v32 = a1;
  _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(a1 + v30[7], v19, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v33 = *(v21 + 48);
  if (v33(v19, 1, v20) == 1)
  {
    *v24 = 0;
    v24[8] = 1;
    *(v24 + 2) = 0;
    v34 = &v24[*(v20 + 24)];
    UnknownStorage.init()();
    v35 = v33(v19, 1, v20);
    v36 = v80;
    if (v35 != 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(v19, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    }
  }

  else
  {
    outlined init with take of WorkoutGoal(v19, v24, type metadata accessor for Apple_Workout_DistanceValue);
    v36 = v80;
  }

  v37 = v28;
  v38 = v78;
  Apple_Workout_DistanceValue.measurement.getter();
  if (v38)
  {

    outlined destroy of WorkoutGoal(v32, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    return outlined destroy of WorkoutGoal(v24, type metadata accessor for Apple_Workout_DistanceValue);
  }

  outlined destroy of WorkoutGoal(v24, type metadata accessor for Apple_Workout_DistanceValue);
  v40 = v74;
  _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(v32 + v30[8], v74, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v41 = v73;
  v42 = *(v72 + 48);
  if (v42(v40, 1, v73) == 1)
  {
    v43 = v75;
    *v75 = 0;
    *(v43 + 8) = 1;
    v43[2] = 0;
    v44 = v43 + *(v41 + 24);
    UnknownStorage.init()();
    v45 = v42(v40, 1, v41);
    v46 = v77;
    if (v45 != 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(v40, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    v43 = v75;
    outlined init with take of WorkoutGoal(v40, v75, type metadata accessor for Apple_Workout_TimeValue);
    v46 = v77;
  }

  if (*(v43 + 8) != 1)
  {
    goto LABEL_16;
  }

  v47 = *v43;
  if (*v43 > 1)
  {
    if (v47 == 2)
    {
      v49 = &selRef_minutes;
    }

    else
    {
      v49 = &selRef_hours;
    }
  }

  else
  {
    if (!v47)
    {
LABEL_16:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v48 = 0;
      swift_willThrow();

      outlined destroy of WorkoutGoal(v32, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      outlined destroy of WorkoutGoal(v43, type metadata accessor for Apple_Workout_TimeValue);
      return (*(v76 + 8))(v37, v46);
    }

    v49 = &selRef_seconds;
  }

  v50 = v70;
  v51 = v43[2];
  v52 = [objc_opt_self() *v49];
  _sSo12NSUnitLengthCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  Measurement.init(value:unit:)();
  outlined destroy of WorkoutGoal(v43, type metadata accessor for Apple_Workout_TimeValue);
  Measurement.value.getter();
  v54 = v53;
  v55 = Measurement.unit.getter();
  *v50 = v54;
  v50[1] = v55;
  v80 = v37;
  swift_storeEnumTagMultiPayload();
  v56 = v69;
  Measurement.value.getter();
  v58 = v57;
  v59 = Measurement.unit.getter();
  v60 = v71;
  *v71 = v58;
  *(v60 + 8) = v59;
  swift_storeEnumTagMultiPayload();
  v61 = v79;
  specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(v79);
  v62 = [v61 activityType];
  v63 = v66;
  *v66 = v62;
  v78 = [v61 locationType];

  outlined destroy of WorkoutGoal(v32, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
  (*(v68 + 8))(v36, v56);
  (*(v76 + 8))(v80, v46);
  v63[1] = v78;
  v64 = type metadata accessor for PacerWorkout();
  outlined init with take of WorkoutGoal(v50, v63 + *(v64 + 24), type metadata accessor for WorkoutGoal);
  return outlined init with take of WorkoutGoal(v60, v63 + *(v64 + 28), type metadata accessor for WorkoutGoal);
}

void closure #1 in PacerWorkout.protoComposition.getter(char *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Workout_TimeValue(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v55 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v24 = *a2;
  if (HIDWORD(*a2))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v52 = v14;
  *a1 = v24;
  v25 = a2[1];
  if (v25 == 1)
  {
    goto LABEL_6;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (!HIDWORD(v25))
  {
    v26 = &a1[*(type metadata accessor for Apple_Workout_PacerWorkoutComposition() + 24)];
    *v26 = v25;
    v26[4] = 0;
LABEL_6:
    v50 = v7;
    v51 = v4;
    v48 = type metadata accessor for PacerWorkout();
    v49 = a2;
    v27 = a2 + *(v48 + 24);
    MEMORY[0x28223BE20](v48);
    *(&v47 - 2) = v28;
    v47 = _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
    v29 = v53;
    static Message.with(_:)();
    v53 = v29;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(&v23[*(v18 + 20)], v13, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v30 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    v31 = *(*(v30 - 8) + 48);
    if (v31(v13, 1, v30) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(v13, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        outlined destroy of WorkoutGoal(v23, type metadata accessor for Apple_Workout_WorkoutGoal);
        outlined init with take of WorkoutGoal(v13, v17, type metadata accessor for Apple_Workout_DistanceValue);
        v32 = v52;
        goto LABEL_12;
      }

      outlined destroy of WorkoutGoal(v13, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    }

    *v17 = 0;
    v17[8] = 1;
    *(v17 + 2) = 0;
    v32 = v52;
    v33 = &v17[*(v52 + 24)];
    UnknownStorage.init()();
    outlined destroy of WorkoutGoal(v23, type metadata accessor for Apple_Workout_WorkoutGoal);
LABEL_12:
    v34 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
    v35 = *(v34 + 28);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(&a1[v35], &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    outlined init with take of WorkoutGoal(v17, &a1[v35], type metadata accessor for Apple_Workout_DistanceValue);
    v36 = (*(v54 + 56))(&a1[v35], 0, 1, v32);
    v37 = v49 + *(v48 + 28);
    MEMORY[0x28223BE20](v36);
    *(&v47 - 2) = v38;
    v39 = v55;
    static Message.with(_:)();
    v40 = v39 + *(v18 + 20);
    v41 = v56;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(v40, v56, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    if (v31(v41, 1, v30) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(v41, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      v43 = v50;
      v42 = v51;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v43 = v50;
      v42 = v51;
      if (!EnumCaseMultiPayload)
      {
        outlined destroy of WorkoutGoal(v39, type metadata accessor for Apple_Workout_WorkoutGoal);
        outlined init with take of WorkoutGoal(v41, v43, type metadata accessor for Apple_Workout_TimeValue);
        goto LABEL_17;
      }

      outlined destroy of WorkoutGoal(v41, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    }

    *v43 = 0;
    *(v43 + 8) = 1;
    *(v43 + 16) = 0;
    v45 = v43 + *(v42 + 24);
    UnknownStorage.init()();
    outlined destroy of WorkoutGoal(v39, type metadata accessor for Apple_Workout_WorkoutGoal);
LABEL_17:
    v46 = *(v34 + 32);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(&a1[v46], &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    outlined init with take of WorkoutGoal(v43, &a1[v46], type metadata accessor for Apple_Workout_TimeValue);
    (*(v57 + 56))(&a1[v46], 0, 1, v42);
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t static PacerWorkout.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v4 = type metadata accessor for PacerWorkout();
  if ((specialized static WorkoutGoal.== infix(_:_:)((a1 + *(v4 + 24)), a2 + *(v4 + 24)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);

  return specialized static WorkoutGoal.== infix(_:_:)((a1 + v5), a2 + v5);
}

void PacerWorkout.hash(into:)()
{
  v1 = v0;
  MEMORY[0x23EEA0D50](*v0);
  MEMORY[0x23EEA0D50](v0[1]);
  v2 = type metadata accessor for PacerWorkout();
  v3 = v0 + *(v2 + 24);
  WorkoutGoal.hash(into:)();
  v4 = v1 + *(v2 + 28);
  WorkoutGoal.hash(into:)();
}

Swift::Int PacerWorkout.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  MEMORY[0x23EEA0D50](v0[1]);
  v2 = type metadata accessor for PacerWorkout();
  v3 = v0 + *(v2 + 24);
  WorkoutGoal.hash(into:)();
  v4 = v1 + *(v2 + 28);
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PacerWorkout(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (specialized static WorkoutGoal.== infix(_:_:)((a1 + *(a3 + 24)), a2 + *(a3 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 28);

  return specialized static WorkoutGoal.== infix(_:_:)((a1 + v6), a2 + v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PacerWorkout(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  v4 = v1 + *(a1 + 24);
  WorkoutGoal.hash(into:)();
  v5 = v3 + *(a1 + 28);
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PacerWorkout(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  MEMORY[0x23EEA0D50](*v2);
  MEMORY[0x23EEA0D50](v2[1]);
  v5 = v2 + *(a2 + 24);
  WorkoutGoal.hash(into:)();
  v6 = v4 + *(a2 + 28);
  WorkoutGoal.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PacerWorkout(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v2);
  MEMORY[0x23EEA0D50](v2[1]);
  v5 = v2 + *(a2 + 24);
  WorkoutGoal.hash(into:)();
  v6 = v4 + *(a2 + 28);
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined assign with copy of WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoal();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _sSo12NSUnitLengthCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(void *a1)
{
  v3 = [a1 activityType];
  v4 = v3;
  if (qword_284E21CD8 == v3 || unk_284E21CE0 == v3 || qword_284E21CE8 == v3)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    swift_allocError();
    *v7 = v4;
    v8 = v7 + 1;
LABEL_10:
    *v8 = 0;
    swift_willThrow();
    return;
  }

  if ((v3 - 13) > 0x3A || ((1 << (v3 - 13)) & 0x400000001000001) == 0)
  {
    lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
    swift_allocError();
    *v10 = v4;
    v10[1] = 0;
    v8 = v10 + 2;
    goto LABEL_10;
  }

  _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5([a1 activityType], objc_msgSend(a1, sel_locationType), objc_msgSend(a1, sel_swimmingLocationType));
  if (!v1)
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5([a1 activityType], objc_msgSend(a1, sel_locationType), objc_msgSend(a1, sel_swimmingLocationType));
  }
}

uint64_t _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of WorkoutGoal(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of WorkoutGoal(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutStep.init(goal:alert:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WorkoutStep();
  v7 = a3 + *(v6 + 20);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = (a3 + *(v6 + 24));
  *v8 = 0;
  v8[1] = 0;
  _s10WorkoutKit0A4GoalOWObTm_0(a1, a3, type metadata accessor for WorkoutGoal);

  return outlined assign with take of WorkoutAlert?(a2, v7);
}

uint64_t static WorkoutStep.== infix(_:_:)(void (*a1)(char *, uint64_t *, uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for WorkoutStep();
  v5 = *(v4 + 20);
  outlined init with copy of WorkoutAlert?(a1 + v5, &v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  if (v30)
  {
    sub_23B5ECB18(&v29, v31);
    v6 = v32;
    v7 = v33;
    v8 = __swift_project_boxed_opaque_existential_1(v31, v32);
    outlined init with copy of WorkoutAlert?(a2 + *(v4 + 20), &v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    v9 = v30;
    if (v30)
    {
      v10 = __swift_project_boxed_opaque_existential_1(&v29, v30);
      *(&v28 + 1) = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v10, v9);
      __swift_destroy_boxed_opaque_existential_1(&v29);
    }

    else
    {
      outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v27 = 0u;
      v28 = 0u;
    }

    v12 = static WorkoutStep.alertEquatable<A>(_:_:)(v8, &v27, v6, v7);
    outlined destroy of WorkoutAlert?(&v27, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if ((v12 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  }

  outlined init with copy of WorkoutAlert?(a2 + *(v4 + 20), &v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  if (v30)
  {
    sub_23B5ECB18(&v29, v31);
    v13 = v32;
    v14 = v33;
    v15 = __swift_project_boxed_opaque_existential_1(v31, v32);
    outlined init with copy of WorkoutAlert?(a1 + v5, &v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    v16 = v30;
    if (v30)
    {
      v17 = __swift_project_boxed_opaque_existential_1(&v29, v30);
      *(&v28 + 1) = v16;
      v18 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v16 - 8) + 16))(v18, v17, v16);
      __swift_destroy_boxed_opaque_existential_1(&v29);
    }

    else
    {
      outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v27 = 0u;
      v28 = 0u;
    }

    v19 = static WorkoutStep.alertEquatable<A>(_:_:)(v15, &v27, v13, v14);
    outlined destroy of WorkoutAlert?(&v27, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  }

  if ((specialized static WorkoutGoal.== infix(_:_:)(a1, a2) & 1) == 0)
  {
LABEL_19:
    v25 = 0;
    return v25 & 1;
  }

  v20 = *(v4 + 24);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  v25 = (v22 | v24) == 0;
  if (v22 && v24)
  {
    if (*v21 == *v23 && v22 == v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v25 & 1;
}

void WorkoutStep.validate<A>(for:location:swimmingLocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WorkoutGoal.validate<A>(for:location:swimmingLocation:kind:)(a1, a2, a3, a4, a5);
  if (!v6)
  {
    v9 = type metadata accessor for WorkoutStep();
    outlined init with copy of WorkoutAlert?(v5 + *(v9 + 20), v12, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
      if (swift_dynamicCast())
      {
        v10 = *(&v15 + 1);
        if (*(&v15 + 1))
        {
          v11 = v16;
          __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
          (*(v11 + 32))(a1, a2, 1, v10, v11);
          __swift_destroy_boxed_opaque_existential_1(&v14);
          return;
        }
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }
    }

    else
    {
      outlined destroy of WorkoutAlert?(v12, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
    }

    outlined destroy of WorkoutAlert?(&v14, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
  }
}

uint64_t WorkoutStep.alert.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WorkoutStep() + 20);

  return outlined assign with take of WorkoutAlert?(a1, v3);
}

uint64_t WorkoutStep.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutStep() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutStep.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WorkoutStep() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WorkoutStep.init(goal:alert:displayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WorkoutStep();
  v11 = a5 + *(v10 + 20);
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = (a5 + *(v10 + 24));
  _s10WorkoutKit0A4GoalOWObTm_0(a1, a5, type metadata accessor for WorkoutGoal);
  result = outlined assign with take of WorkoutAlert?(a2, v11);
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t static WorkoutStep.alertEquatable<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v45 = a2;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v41 = &v37 - v13;
  v43 = *(v9 - 8);
  v14 = v43;
  v15 = *(v43 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v46 = v6;
  (*(v6 + 16))(&v37 - v21, a1, a3);
  v23 = *(v6 + 56);
  v23(v22, 0, 1, a3);
  outlined init with copy of WorkoutAlert?(v45, v47, &_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v24 = swift_dynamicCast();
  v23(v20, v24 ^ 1u, 1, a3);
  v40 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = v41;
  v45 = v14;
  v27 = *(v14 + 16);
  v27(v41, v22, v9);
  v44 = v20;
  v27(&v26[v25], v20, v9);
  v28 = *(v46 + 48);
  if (v28(v26, 1, a3) != 1)
  {
    v27(v42, v26, v9);
    if (v28(&v26[v25], 1, a3) != 1)
    {
      v31 = v46;
      v32 = v37;
      (*(v46 + 32))(v37, &v26[v25], a3);
      v33 = *(*(v38 + 8) + 8);
      v34 = v42;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v31 + 8);
      v35(v32, a3);
      v29 = *(v43 + 8);
      v29(v22, v9);
      v35(v34, a3);
      v29(v26, v9);
      goto LABEL_8;
    }

    v29 = *(v43 + 8);
    v29(v22, v9);
    (*(v46 + 8))(v42, a3);
    goto LABEL_6;
  }

  v29 = *(v43 + 8);
  v29(v22, v9);
  if (v28(&v26[v25], 1, a3) != 1)
  {
LABEL_6:
    (*(v39 + 8))(v26, v40);
    v30 = 0;
    goto LABEL_8;
  }

  v29(v26, v9);
  v30 = 1;
LABEL_8:
  v29(v44, v9);
  return v30 & 1;
}

uint64_t WorkoutStep.hash(into:)()
{
  WorkoutGoal.hash(into:)();
  v1 = type metadata accessor for WorkoutStep();
  outlined init with copy of WorkoutAlert?(v0 + *(v1 + 20), &v7, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  if (v8)
  {
    sub_23B5ECB18(&v7, v9);
    v2 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v3 = *(v2 + 8);
    dispatch thunk of Hashable.hash(into:)();
    result = __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    result = outlined destroy of WorkoutAlert?(&v7, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  }

  v5 = (v0 + *(v1 + 24));
  if (v5[1])
  {
    v6 = *v5;
    return String.hash(into:)();
  }

  return result;
}

uint64_t closure #1 in WorkoutStep.protoRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
  static Message.with(_:)();
  v35 = v2;
  v14 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v15 = v14[5];
  outlined destroy of WorkoutAlert?(a1 + v15, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  _s10WorkoutKit0A4GoalOWObTm_0(v13, a1 + v15, type metadata accessor for Apple_Workout_WorkoutGoal);
  (*(v10 + 56))(a1 + v15, 0, 1, v9);
  v16 = type metadata accessor for WorkoutStep();
  outlined init with copy of WorkoutAlert?(a2 + *(v16 + 20), v32, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
    if (swift_dynamicCast())
    {
      if (*(&v30 + 1))
      {
        sub_23B5ECB18(&v29, v32);
        v18 = v33;
        v17 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v17 + 24))(v18, v17);
        v19 = v14[6];
        outlined destroy of WorkoutAlert?(a1 + v19, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
        _s10WorkoutKit0A4GoalOWObTm_0(v8, a1 + v19, type metadata accessor for Apple_Workout_WorkoutAlert);
        (*(v27 + 56))(a1 + v19, 0, 1, v5);
        result = __swift_destroy_boxed_opaque_existential_1(v32);
        goto LABEL_8;
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(v32, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  result = outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
LABEL_8:
  v21 = (a2 + *(v16 + 24));
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    v24 = (a1 + v14[7]);
    v25 = v24[1];

    *v24 = v23;
    v24[1] = v22;
  }

  return result;
}

Swift::Int WorkoutStep.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutStep.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutStep()
{
  Hasher.init(_seed:)();
  WorkoutStep.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutStep()
{
  Hasher.init(_seed:)();
  WorkoutStep.hash(into:)();
  return Hasher._finalize()();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined assign with take of WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoal();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of WorkoutAlert?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit0A4GoalOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WorkoutAlert?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

objc_class *one-time initialization function for WorkoutKitBundle()
{
  type metadata accessor for WorkoutKitBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  WorkoutKitBundle.super.isa = result;
  return result;
}

void type metadata completion function for Apple_Workout_WorkoutRoute()
{
  type metadata accessor for [Apple_Workout_RoutePoint](319, &lazy cache variable for type metadata for [Apple_Workout_RoutePoint], type metadata accessor for Apple_Workout_RoutePoint, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_WorkoutRoute(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_RoutePoint()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Apple_Workout_RoutePoint](319, &lazy cache variable for type metadata for Apple_Workout_LocationCoordinate2D?, type metadata accessor for Apple_Workout_LocationCoordinate2D, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Apple_Workout_RoutePoint](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t Apple_Workout_RoutePoint.decodeMessage<A>(decoder:)()
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
      closure #1 in Apple_Workout_RoutePoint.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for Apple_Workout_RoutePoint(0) + 24);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_RoutePoint.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_RoutePoint(0) + 20);
  type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_RoutePoint.traverse<A>(visitor:)()
{
  result = closure #1 in Apple_Workout_RoutePoint.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    closure #2 in Apple_Workout_RoutePoint.traverse<A>(visitor:)(v0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_RoutePoint.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_RoutePoint(0);
  outlined init with copy of Apple_Workout_LocationCoordinate2D?(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of Apple_Workout_LocationCoordinate2D?(v5, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  }

  outlined init with take of Apple_Workout_LocationCoordinate2D(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_LocationCoordinate2D(v10);
}

uint64_t closure #2 in Apple_Workout_RoutePoint.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_RoutePoint(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_RoutePoint@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_RoutePoint@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_RoutePoint(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_RoutePoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_RoutePoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_RoutePoint()
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_WorkoutRoute.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_RoutePoint(0);
        lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for Apple_Workout_WorkoutRoute(0) + 24);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_WorkoutRoute.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Workout_RoutePoint(0), lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_WorkoutRoute.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_WorkoutRoute(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutRoute.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

double protocol witness for Message.init() in conformance Apple_Workout_WorkoutRoute@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 24)) = xmmword_23B67CF80;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutRoute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutRoute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutRoute(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutRoute;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutRoute(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_RoutePoint@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutRoute(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_RoutePoint()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutRoute()
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_RoutePoint()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_LocationCoordinate2D(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x23EEA04C0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x23EEA04C0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x23EEA04C0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static Apple_Workout_WorkoutRoute.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B11_RoutePointV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
      outlined consume of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      if (v12)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_6;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
LABEL_9:
  v13 = *(v4 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_RoutePoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMd, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMR);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v19 = *(v18 + 20);
  v20 = *(v14 + 56);
  outlined init with copy of Apple_Workout_LocationCoordinate2D?(a1 + v19, v17);
  outlined init with copy of Apple_Workout_LocationCoordinate2D?(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_LocationCoordinate2D?(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      outlined init with take of Apple_Workout_LocationCoordinate2D(&v17[v20], v8);
      if (*v12 == *v8 && v12[1] == v8[1])
      {
        v29 = *(v4 + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_LocationCoordinate2D(v8);
        outlined destroy of Apple_Workout_LocationCoordinate2D(v12);
        outlined destroy of Apple_Workout_LocationCoordinate2D?(v17, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
        if ((v30 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_4;
      }

      outlined destroy of Apple_Workout_LocationCoordinate2D(v8);
      outlined destroy of Apple_Workout_LocationCoordinate2D(v12);
      v27 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd;
      v28 = "4?";
LABEL_15:
      outlined destroy of Apple_Workout_LocationCoordinate2D?(v17, v27, v28);
      goto LABEL_16;
    }

    outlined destroy of Apple_Workout_LocationCoordinate2D(v12);
LABEL_9:
    v27 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMd;
    v28 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMR;
    goto LABEL_15;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of Apple_Workout_LocationCoordinate2D?(v17, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
LABEL_4:
  v22 = *(v18 + 24);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 8);
  if (v24)
  {
    if (v26)
    {
LABEL_21:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v31 & 1;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t outlined destroy of Apple_Workout_LocationCoordinate2D?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Apple_Workout_WorkoutGoal.workoutKitRepresentation.getter@<X0>(void *a1@<X8>)
{
  v140 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v135 = &v121 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v137 = &v121 - v8;
  v138 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  v9 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v139 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v124 = *(v11 - 8);
  v125 = v11;
  v12 = *(v124 + 64);
  MEMORY[0x28223BE20](v11);
  v123 = &v121 - v13;
  v14 = type metadata accessor for Apple_Workout_EnergyValue(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v136 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v128 = *(v17 - 8);
  v129 = v17;
  v18 = *(v128 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v121 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v122 = &v121 - v21;
  v22 = type metadata accessor for Apple_Workout_TimeValue(0);
  v126 = *(v22 - 8);
  v127 = v22;
  v23 = *(v126 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v130 = (&v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v131 = &v121 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v132 = *(v27 - 8);
  v133 = v27;
  v28 = *(v132 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v134 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v121 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v121 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v121 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v121 - v44;
  v46 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v53 = &v121 - v52;
  if (*(v2 + 8) != 1)
  {
    goto LABEL_7;
  }

  v54 = *v2;
  if (*v2 > 2)
  {
    if (v54 == 3)
    {
      v59 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v2 + *(v59 + 20), v45, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      v60 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
      if ((*(*(v60 - 8) + 48))(v45, 1, v60) == 1)
      {
        _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v45, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
        goto LABEL_35;
      }

      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v67 = v45;
        goto LABEL_34;
      }

      _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v45, v53, type metadata accessor for Apple_Workout_DistanceValue);
      v66 = v141;
      Apple_Workout_DistanceValue.measurement.getter();
      if (v66)
      {
        return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v53, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v84 = v133;
      Measurement.value.getter();
      v86 = v85;
      v87 = Measurement.unit.getter();
      (*(v132 + 8))(v32, v84);
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v53, type metadata accessor for Apple_Workout_DistanceValue);
      v88 = v140;
      *v140 = v86;
      v88[1] = v87;
      type metadata accessor for WorkoutGoal();
      return swift_storeEnumTagMultiPayload();
    }

    if (v54 == 4)
    {
      type metadata accessor for WorkoutGoal();
      return swift_storeEnumTagMultiPayload();
    }

    v63 = v51;
    v64 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v2 + *(v64 + 20), v37, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v65 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    if ((*(*(v65 - 8) + 48))(v37, 1, v65) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v37, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v67 = v37;
      goto LABEL_34;
    }

    v70 = v37;
    v68 = v139;
    _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v70, v139, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    v72 = v137;
    v71 = v138;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v68 + *(v138 + 20), v137, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    v73 = *(v63 + 48);
    if (v73(v72, 1, v46) == 1)
    {
      *v50 = 0;
      v50[8] = 1;
      *(v50 + 2) = 0;
      v74 = &v50[*(v46 + 24)];
      UnknownStorage.init()();
      v75 = v73(v72, 1, v46);
      v77 = v134;
      v76 = v135;
      if (v75 != 1)
      {
        _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v72, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      }
    }

    else
    {
      _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v72, v50, type metadata accessor for Apple_Workout_DistanceValue);
      v77 = v134;
      v76 = v135;
    }

    v83 = v141;
    Apple_Workout_DistanceValue.measurement.getter();
    if (v83)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v50, type metadata accessor for Apple_Workout_DistanceValue);
LABEL_56:
      v81 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue;
      return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v68, v81);
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v50, type metadata accessor for Apple_Workout_DistanceValue);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v68 + *(v71 + 24), v76, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v89 = v127;
    v90 = *(v126 + 48);
    if (v90(v76, 1, v127) == 1)
    {
      v91 = v130;
      *v130 = 0;
      *(v91 + 8) = 1;
      v92 = v91;
      v91[2] = 0;
      v93 = v91 + *(v89 + 24);
      UnknownStorage.init()();
      if (v90(v76, 1, v89) != 1)
      {
        _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v76, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v92 = v130;
      _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v76, v130, type metadata accessor for Apple_Workout_TimeValue);
    }

    if (*(v92 + 8) == 1)
    {
      v95 = *v92;
      if (*v92 > 1)
      {
        if (v95 == 2)
        {
          v114 = &selRef_minutes;
        }

        else
        {
          v114 = &selRef_hours;
        }
      }

      else
      {
        if (!v95)
        {
          goto LABEL_55;
        }

        v114 = &selRef_seconds;
      }

      v115 = v130;
      v116 = v130[2];
      v117 = [objc_opt_self() *v114];
      _sSo14NSUnitDurationCMaTm_1(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v118 = v121;
      Measurement.init(value:unit:)();
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v115, type metadata accessor for Apple_Workout_TimeValue);
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v68, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
      v120 = v140;
      (*(v132 + 32))(v140, v77, v133);
      (*(v128 + 32))(&v120[v119], v118, v129);
      type metadata accessor for WorkoutGoal();
      return swift_storeEnumTagMultiPayload();
    }

LABEL_55:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v96 = 0;
    swift_willThrow();
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v92, type metadata accessor for Apple_Workout_TimeValue);
    (*(v132 + 8))(v77, v133);
    goto LABEL_56;
  }

  if (!v54)
  {
LABEL_7:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v57 = 0;
    return swift_willThrow();
  }

  if (v54 == 1)
  {
    v55 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v2 + *(v55 + 20), v43, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v56 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    if ((*(*(v56 - 8) + 48))(v43, 1, v56) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v43, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
LABEL_35:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v78 = 1;
      return swift_willThrow();
    }

    if (swift_getEnumCaseMultiPayload())
    {
      v67 = v43;
LABEL_34:
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v67, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
      goto LABEL_35;
    }

    v68 = v131;
    _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v43, v131, type metadata accessor for Apple_Workout_TimeValue);
    if (*(v68 + 8) != 1)
    {
      goto LABEL_40;
    }

    v79 = *v68;
    if (*v68 > 1)
    {
      if (v79 == 2)
      {
        v94 = &selRef_minutes;
      }

      else
      {
        v94 = &selRef_hours;
      }
    }

    else
    {
      if (!v79)
      {
LABEL_40:
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v80 = 0;
        swift_willThrow();
        v81 = type metadata accessor for Apple_Workout_TimeValue;
        return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v68, v81);
      }

      v94 = &selRef_seconds;
    }

    v106 = *(v68 + 16);
    v107 = [objc_opt_self() *v94];
    _sSo14NSUnitDurationCMaTm_1(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    v108 = v122;
    Measurement.init(value:unit:)();
    v109 = v129;
    Measurement.value.getter();
    v111 = v110;
    v112 = Measurement.unit.getter();
    (*(v128 + 8))(v108, v109);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v68, type metadata accessor for Apple_Workout_TimeValue);
    v113 = v140;
    *v140 = v111;
    v113[1] = v112;
    type metadata accessor for WorkoutGoal();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v61 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v2 + *(v61 + 20), v40, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v62 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    if ((*(*(v62 - 8) + 48))(v40, 1, v62) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v40, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v67 = v40;
      goto LABEL_34;
    }

    v68 = v136;
    _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v40, v136, type metadata accessor for Apple_Workout_EnergyValue);
    if (*(v68 + 8) != 1 || !*v68)
    {
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v82 = 0;
      swift_willThrow();
      v81 = type metadata accessor for Apple_Workout_EnergyValue;
      return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v68, v81);
    }

    if (*v68 == 1)
    {
      v69 = &selRef_kilocalories;
    }

    else
    {
      v69 = &selRef_kilojoules;
    }

    v98 = v124;
    v97 = v125;
    v99 = v123;
    v100 = *(v68 + 16);
    v101 = [objc_opt_self() *v69];
    _sSo14NSUnitDurationCMaTm_1(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    Measurement.init(value:unit:)();
    Measurement.value.getter();
    v103 = v102;
    v104 = Measurement.unit.getter();
    (*(v98 + 8))(v99, v97);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v68, type metadata accessor for Apple_Workout_EnergyValue);
    v105 = v140;
    *v140 = v103;
    v105[1] = v104;
    type metadata accessor for WorkoutGoal();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PowerThresholdAlert.init(target:metric:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PowerThresholdAlert(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t PowerRangeAlert.init(target:metric:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  outlined init with take of ClosedRange<Measurement<NSUnitPower>>(a1, a3, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  result = type metadata accessor for PowerRangeAlert(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t type metadata accessor for PowerThresholdAlert(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PowerThresholdAlert.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PowerThresholdAlert.target.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PowerThresholdAlert.metric.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PowerThresholdAlert(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PowerThresholdAlert.metric.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PowerThresholdAlert(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*PowerThresholdAlert.metric.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for PowerThresholdAlert(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return PowerThresholdAlert.metric.modify;
}

uint64_t PowerThresholdAlert.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = type metadata accessor for PowerThresholdAlert(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t static PowerThresholdAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSUnitPower();
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v4 = type metadata accessor for PowerThresholdAlert(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t type metadata accessor for NSUnitPower()
{
  result = lazy cache variable for type metadata for NSUnitPower;
  if (!lazy cache variable for type metadata for NSUnitPower)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitPower);
  }

  return result;
}

uint64_t PowerThresholdAlert.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PowerThresholdAlert(0);
  return MEMORY[0x23EEA0D50](*(v0 + *(v1 + 20)));
}

Swift::Int PowerThresholdAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PowerThresholdAlert(0);
  MEMORY[0x23EEA0D50](*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PowerThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSUnitPower();
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerThresholdAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PowerThresholdAlert(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerThresholdAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance PowerThresholdAlert()
{
  return protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance PowerThresholdAlert();
}

{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

uint64_t protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance PowerThresholdAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  result = Measurement.value.getter();
  if (v1 <= 0.0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v2 = xmmword_23B6784C0;
    *(v2 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t static WorkoutAlert<>.power(_:unit:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NSUnitPower();
  v4 = a1;
  Measurement.init(value:unit:)();
  result = type metadata accessor for PowerThresholdAlert(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t static WorkoutAlert<>.power(_:unit:metric:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for NSUnitPower();
  v6 = a1;
  Measurement.init(value:unit:)();
  result = type metadata accessor for PowerThresholdAlert(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t outlined assign with take of ClosedRange<Measurement<NSUnitPower>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PowerRangeAlert.metric.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PowerRangeAlert(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PowerRangeAlert.metric.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PowerRangeAlert(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*PowerRangeAlert.metric.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for PowerRangeAlert(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return PowerRangeAlert.metric.modify;
}

uint64_t PowerRangeAlert.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of ClosedRange<Measurement<NSUnitPower>>(a1, a2, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  result = type metadata accessor for PowerRangeAlert(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

id PowerThresholdAlert.targetQuantity.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;

  v5 = [objc_opt_self() wattUnit];
  v6 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = [objc_opt_self() quantityWithUnit:v5 doubleValue:v8];

  return v9;
}

id PowerRangeAlert.targetQuantityUpperBound.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36);

  v6 = [objc_opt_self() wattUnit];
  v7 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  v10 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v9];

  return v10;
}

uint64_t static PowerRangeAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v5 = type metadata accessor for PowerRangeAlert(0);
    v6 = *(a1 + *(v5 + 20)) ^ *(a2 + *(v5 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t PowerRangeAlert.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v2 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for PowerRangeAlert(0);
  return MEMORY[0x23EEA0D50](*(v1 + *(v3 + 20)));
}

Swift::Int PowerRangeAlert.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v2 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for PowerRangeAlert(0);
  MEMORY[0x23EEA0D50](*(v1 + *(v3 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PowerRangeAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v7 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerRangeAlert(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v3 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PowerRangeAlert(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEA0D50](*(v4 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerRangeAlert(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v4 + *(a2 + 20)));
  return Hasher._finalize()();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance PowerRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  Measurement.value.getter();
  v2 = v1;
  v3 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36);
  Measurement.value.getter();
  specialized WorkoutAlertValidating.validateRangeValue(_:_:)(v2, v4);
}

uint64_t static WorkoutAlert<>.power(_:unit:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  type metadata accessor for NSUnitPower();
  v19 = a1;
  Measurement.init(value:unit:)();
  v20 = v19;
  Measurement.init(value:unit:)();
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v22 = v4;
    v23 = v12[4];
    v23(v10, v18, v11);
    v23(&v10[*(v22 + 48)], v15, v11);
    outlined init with copy of ClosedRange<Measurement<NSUnitPower>>(v10, v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
    v24 = *(v22 + 48);
    v23(a2, v7, v11);
    v25 = v12[1];
    v25(&v7[v24], v11);
    outlined init with take of ClosedRange<Measurement<NSUnitPower>>(v10, v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
    v26 = *(v22 + 48);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
    v23(&a2[*(v27 + 36)], &v7[v26], v11);
    v25(v7, v11);
    result = type metadata accessor for PowerRangeAlert(0);
    a2[*(result + 20)] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static WorkoutAlert<>.power(_:unit:metric:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v30[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v30[-v19];
  v31 = *a2;
  type metadata accessor for NSUnitPower();
  v21 = a1;
  Measurement.init(value:unit:)();
  v22 = v21;
  Measurement.init(value:unit:)();
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = v6;
    v25 = v14[4];
    v25(v12, v20, v13);
    v25(&v12[*(v24 + 48)], v17, v13);
    outlined init with copy of ClosedRange<Measurement<NSUnitPower>>(v12, v9, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
    v26 = *(v24 + 48);
    v25(a3, v9, v13);
    v27 = v14[1];
    v27(&v9[v26], v13);
    outlined init with take of ClosedRange<Measurement<NSUnitPower>>(v12, v9, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
    v28 = *(v24 + 48);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
    v25(&a3[*(v29 + 36)], &v9[v28], v13);
    v27(v9, v13);
    result = type metadata accessor for PowerRangeAlert(0);
    a3[*(result + 20)] = v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ClosedRange<Measurement<NSUnitPower>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of ClosedRange<Measurement<NSUnitPower>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int PowerZoneAlert.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZoneAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZoneAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance PowerZoneAlert()
{
  v1 = *v0;
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance PowerZoneAlert()
{
  if (*v0 < 1)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v1 = xmmword_23B6784C0;
    *(v1 + 16) = 3;
    swift_willThrow();
  }
}

uint64_t instantiation function for generic protocol witness table for PowerThresholdAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, type metadata accessor for PowerThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, type metadata accessor for PowerThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PowerRangeAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, type metadata accessor for PowerRangeAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, type metadata accessor for PowerRangeAlert);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PowerZoneAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PowerZoneAlert and conformance PowerZoneAlert();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type PowerZoneAlert and conformance PowerZoneAlert();
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(0);
  *a3 = *(a1 + *(result + 20));
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = a5(0);
  *(a2 + *(result + 20)) = v6;
  return result;
}

void type metadata accessor for Measurement<NSUnitPower>()
{
  if (!lazy cache variable for type metadata for Measurement<NSUnitPower>)
  {
    type metadata accessor for NSUnitPower();
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Measurement<NSUnitPower>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for PowerThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for ClosedRange<Measurement<NSUnitPower>>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitPower>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitPower>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for PowerZoneAlert(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PowerZoneAlert(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_IntervalStep.Purpose@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_IntervalStep.Purpose@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_IntervalStep.Purpose()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_IntervalStep.Purpose(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_IntervalStep.Purpose()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v22 - v5;
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  v6 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  v23 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  v7 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  *(v1 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks) = MEMORY[0x277D84F90];
  v25 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
  v8(v1 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown, 1, 1, v7);
  swift_beginAccess();
  LODWORD(v8) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v8;
  swift_beginAccess();
  LODWORD(v8) = *(a1 + 20);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v8;
  *(v1 + 24) = v10;
  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;
  v13 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  swift_beginAccess();
  v14 = v24;
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v13, v24, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v15 = v23;
  swift_beginAccess();

  outlined assign with take of Apple_Workout_WorkoutStep?(v14, v1 + v15);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  swift_beginAccess();
  v17 = *(a1 + v16);
  swift_beginAccess();
  v18 = *(v1 + v9);
  *(v1 + v9) = v17;

  v19 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v19, v14, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);

  v20 = v25;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_WorkoutStep?(v14, v1 + v20);
  swift_endAccess();
  return v1;
}

uint64_t Apple_Workout_CustomWorkoutComposition._StorageClass.__deallocating_deinit()
{
  v1 = v0[5];

  outlined destroy of Apple_Workout_WorkoutStep?(v0 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks);

  outlined destroy of Apple_Workout_WorkoutStep?(v0 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void type metadata completion function for Apple_Workout_CustomWorkoutComposition._StorageClass()
{
  type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutStep?, type metadata accessor for Apple_Workout_WorkoutStep, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
LABEL_17:
          closure #4 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
          goto LABEL_5;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
          goto LABEL_17;
        }

        closure #5 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)();
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)();
            break;
          case 2:
            closure #2 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)();
            break;
          case 3:
            closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_IntervalBlock(0);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1);
    if (!v4)
    {
      closure #2 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1);
      closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup, 4);
      v10 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
      swift_beginAccess();
      if (*(*(a1 + v10) + 16))
      {
        type metadata accessor for Apple_Workout_IntervalBlock(0);
        lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      return closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown, 6);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 20);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static Apple_Workout_CustomWorkoutComposition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v53 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  swift_beginAccess();
  v25 = *(a1 + 16);
  swift_beginAccess();
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  v55 = v10;
  swift_beginAccess();
  v26 = *(a1 + 20);
  v27 = *(a1 + 24);
  swift_beginAccess();
  v28 = *(a2 + 24);
  if (v27)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v26 != *(a2 + 20))
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  swift_beginAccess();
  v31 = *(a2 + 40);
  if (v30)
  {
    if (!v31 || (v29 != *(a2 + 32) || v30 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v32, v24, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v33 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  swift_beginAccess();
  v34 = *(v7 + 48);
  outlined init with copy of Apple_Workout_WorkoutStep?(v24, v13, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v54 = v34;
  outlined init with copy of Apple_Workout_WorkoutStep?(a2 + v33, &v13[v34], &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v35 = v59 + 48;
  v36 = *(v59 + 48);
  if (v36(v13, 1, v4) == 1)
  {

    outlined destroy of Apple_Workout_WorkoutStep?(v24, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v36(&v13[v54], 1, v4) == 1)
    {
      v53 = v36;
      v59 = v35;
      outlined destroy of Apple_Workout_WorkoutStep?(v13, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  outlined init with copy of Apple_Workout_WorkoutStep?(v13, v21, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if (v36(&v13[v54], 1, v4) == 1)
  {

    outlined destroy of Apple_Workout_WorkoutStep?(v24, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_WorkoutStep(v21, type metadata accessor for Apple_Workout_WorkoutStep);
LABEL_20:
    outlined destroy of Apple_Workout_WorkoutStep?(v13, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
LABEL_26:

    return 0;
  }

  v53 = v36;
  v59 = v35;
  v37 = v58;
  outlined init with take of Apple_Workout_WorkoutStep(&v13[v54], v58, type metadata accessor for Apple_Workout_WorkoutStep);

  LODWORD(v54) = specialized static Apple_Workout_WorkoutStep.== infix(_:_:)(v21, v37);
  outlined destroy of Apple_Workout_WorkoutStep(v37, type metadata accessor for Apple_Workout_WorkoutStep);
  outlined destroy of Apple_Workout_WorkoutStep?(v24, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined destroy of Apple_Workout_WorkoutStep(v21, type metadata accessor for Apple_Workout_WorkoutStep);
  outlined destroy of Apple_Workout_WorkoutStep?(v13, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if ((v54 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v38 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  swift_beginAccess();
  v41 = *(a2 + v40);

  v42 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B14_IntervalBlockV_Tt1g5(v39, v41);

  if ((v42 & 1) == 0)
  {
    goto LABEL_26;
  }

  v43 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
  swift_beginAccess();
  v44 = v57;
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v43, v57, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v45 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
  swift_beginAccess();
  v46 = *(v7 + 48);
  v47 = v55;
  outlined init with copy of Apple_Workout_WorkoutStep?(v44, v55, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined init with copy of Apple_Workout_WorkoutStep?(a2 + v45, v47 + v46, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v48 = v53;
  if (v53(v47, 1, v4) != 1)
  {
    v50 = v56;
    outlined init with copy of Apple_Workout_WorkoutStep?(v47, v56, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v48(v47 + v46, 1, v4) == 1)
    {

      outlined destroy of Apple_Workout_WorkoutStep?(v57, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      outlined destroy of Apple_Workout_WorkoutStep(v50, type metadata accessor for Apple_Workout_WorkoutStep);
      goto LABEL_30;
    }

    v51 = v58;
    outlined init with take of Apple_Workout_WorkoutStep(v47 + v46, v58, type metadata accessor for Apple_Workout_WorkoutStep);
    v52 = specialized static Apple_Workout_WorkoutStep.== infix(_:_:)(v50, v51);

    outlined destroy of Apple_Workout_WorkoutStep(v51, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of Apple_Workout_WorkoutStep?(v57, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_WorkoutStep(v50, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of Apple_Workout_WorkoutStep?(v47, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    return (v52 & 1) != 0;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v44, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if (v48(v47 + v46, 1, v4) != 1)
  {
LABEL_30:
    outlined destroy of Apple_Workout_WorkoutStep?(v47, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
    return 0;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v47, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_CustomWorkoutComposition()
{
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v3 = *(type metadata accessor for Apple_Workout_WorkoutStep(0) + 28);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 2:
        closure #2 in Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)();
        break;
      case 1:
        closure #1 in Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)();
        break;
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_WorkoutStep(0) + 20);
  type metadata accessor for Apple_Workout_WorkoutGoal(0);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_WorkoutStep(0) + 24);
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + *(v14 + 20), v8, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutStep?(v8, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutStep(v8, v13, type metadata accessor for Apple_Workout_WorkoutGoal);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutStep(v13, type metadata accessor for Apple_Workout_WorkoutGoal);
}

uint64_t closure #2 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + *(v14 + 24), v8, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutStep?(v8, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutStep(v8, v13, type metadata accessor for Apple_Workout_WorkoutAlert);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutStep(v13, type metadata accessor for Apple_Workout_WorkoutAlert);
}

uint64_t closure #3 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutStep@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutStep(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutStep()
{
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_IntervalBlock.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_IntervalStep(0);
        lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for Apple_Workout_IntervalBlock(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_IntervalBlock.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Workout_IntervalStep(0), lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_IntervalBlock.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_IntervalBlock(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_IntervalBlock.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_IntervalBlock(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_IntervalBlock@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_IntervalBlock@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_IntervalBlock(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_IntervalBlock(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_IntervalBlock;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_IntervalBlock(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_IntervalBlock(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_IntervalBlock()
{
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_IntervalStep._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-v5];
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v7 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  v8 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  v11 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v11, v6, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);

  swift_beginAccess();
  outlined assign with take of Apple_Workout_WorkoutStep?(v6, v1 + v7);
  swift_endAccess();
  return v1;
}

uint64_t Apple_Workout_IntervalStep._StorageClass.__deallocating_deinit()
{
  outlined destroy of Apple_Workout_WorkoutStep?(v0 + OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void type metadata completion function for Apple_Workout_IntervalStep._StorageClass()
{
  type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutStep?, type metadata accessor for Apple_Workout_WorkoutStep, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for Apple_Workout_IntervalStep.Purpose(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_IntervalStep.Purpose(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_IntervalStep.Purpose(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_IntervalStep.Purpose(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_IntervalBlock()
{
  type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for [Apple_Workout_IntervalStep], type metadata accessor for Apple_Workout_IntervalStep, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_WorkoutStep?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for Apple_Workout_WorkoutStep()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutGoal?, type metadata accessor for Apple_Workout_WorkoutGoal, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutAlert?, type metadata accessor for Apple_Workout_WorkoutAlert, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_IntervalStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_IntervalStep.Purpose] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_IntervalStep.Purpose] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_IntervalStep.Purpose] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10WorkoutKit06Apple_A13_IntervalStepV7PurposeOGMd, &_sSay10WorkoutKit06Apple_A13_IntervalStepV7PurposeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_IntervalStep.Purpose] and conformance [A]);
  }

  return result;
}

uint64_t Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_IntervalStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        closure #1 in closure #1 in Apple_Workout_IntervalStep.decodeMessage<A>(decoder:)();
      }

      else if (result == 2)
      {
        closure #4 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_IntervalStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for Apple_Workout_WorkoutStep(0);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_IntervalStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    return closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step, 2);
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose();
  result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  if (!v4)
  {
    return closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step, 2);
  }

  return result;
}

uint64_t closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v17, v11, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutStep?(v11, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutStep(v11, v16, type metadata accessor for Apple_Workout_WorkoutStep);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutStep(v16, type metadata accessor for Apple_Workout_WorkoutStep);
}

BOOL closure #1 in static Apple_Workout_IntervalStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  v21 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        if (v20 != 1)
        {
          return 0;
        }
      }

      else if (v20 != 2)
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }
  }

  else if (v20 != v21)
  {
    return 0;
  }

  v30 = v8;
  v31 = v16;
  v22 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v22, v19, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v23 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  v24 = *(v9 + 48);
  outlined init with copy of Apple_Workout_WorkoutStep?(v19, v12, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined init with copy of Apple_Workout_WorkoutStep?(a2 + v23, &v12[v24], &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v25 = *(v5 + 48);
  if (v25(v12, 1, v4) != 1)
  {
    v26 = v31;
    outlined init with copy of Apple_Workout_WorkoutStep?(v12, v31, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v25(&v12[v24], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutStep?(v19, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      outlined destroy of Apple_Workout_WorkoutStep(v26, type metadata accessor for Apple_Workout_WorkoutStep);
      goto LABEL_16;
    }

    v28 = v30;
    outlined init with take of Apple_Workout_WorkoutStep(&v12[v24], v30, type metadata accessor for Apple_Workout_WorkoutStep);
    v29 = specialized static Apple_Workout_WorkoutStep.== infix(_:_:)(v26, v28);
    outlined destroy of Apple_Workout_WorkoutStep(v28, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of Apple_Workout_WorkoutStep?(v19, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_WorkoutStep(v26, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of Apple_Workout_WorkoutStep?(v12, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    return (v29 & 1) != 0;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v19, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if (v25(&v12[v24], 1, v4) != 1)
  {
LABEL_16:
    outlined destroy of Apple_Workout_WorkoutStep?(v12, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
    return 0;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v12, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  return 1;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_CustomWorkoutComposition@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_CustomWorkoutComposition@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_IntervalStep(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_IntervalStep(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_CustomWorkoutComposition()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_IntervalStep()
{
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_CustomWorkoutComposition()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_CustomWorkoutComposition@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static Apple_Workout_IntervalBlock.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B13_IntervalStepV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Workout_IntervalBlock(0);
  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v11 = *(v4 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_WorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = (&v52 - v8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMR);
  v9 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v52 - v10;
  v11 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v52 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  v56 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v25 = *(v56 + 20);
  v26 = *(v21 + 56);
  v60 = a1;
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v25, v24, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v27 = v61 + v25;
  v28 = v61;
  outlined init with copy of Apple_Workout_WorkoutStep?(v27, &v24[v26], &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) == 1)
  {
    if (v29(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutStep?(v24, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v30 = &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd;
    v31 = &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR;
    v32 = v24;
LABEL_14:
    outlined destroy of Apple_Workout_WorkoutStep?(v32, v30, v31);
    goto LABEL_15;
  }

  outlined init with copy of Apple_Workout_WorkoutStep?(v24, v19, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if (v29(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutStep(v19, type metadata accessor for Apple_Workout_WorkoutGoal);
    goto LABEL_6;
  }

  outlined init with take of Apple_Workout_WorkoutStep(&v24[v26], v15, type metadata accessor for Apple_Workout_WorkoutGoal);
  v33 = specialized static Apple_Workout_WorkoutGoal.== infix(_:_:)(v19, v15);
  outlined destroy of Apple_Workout_WorkoutStep(v15, type metadata accessor for Apple_Workout_WorkoutGoal);
  outlined destroy of Apple_Workout_WorkoutStep(v19, type metadata accessor for Apple_Workout_WorkoutGoal);
  outlined destroy of Apple_Workout_WorkoutStep?(v24, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v34 = v56;
  v35 = *(v56 + 24);
  v36 = *(v55 + 48);
  v38 = v59;
  v37 = v60;
  outlined init with copy of Apple_Workout_WorkoutStep?(v60 + v35, v59, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  outlined init with copy of Apple_Workout_WorkoutStep?(v28 + v35, v38 + v36, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  v39 = v58;
  v40 = *(v57 + 48);
  if (v40(v38, 1, v58) != 1)
  {
    v41 = v54;
    outlined init with copy of Apple_Workout_WorkoutStep?(v38, v54, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    if (v40(v38 + v36, 1, v39) != 1)
    {
      v44 = v38 + v36;
      v45 = v53;
      outlined init with take of Apple_Workout_WorkoutStep(v44, v53, type metadata accessor for Apple_Workout_WorkoutAlert);
      v46 = specialized static Apple_Workout_WorkoutAlert.== infix(_:_:)(v41, v45);
      outlined destroy of Apple_Workout_WorkoutStep(v45, type metadata accessor for Apple_Workout_WorkoutAlert);
      outlined destroy of Apple_Workout_WorkoutStep(v41, type metadata accessor for Apple_Workout_WorkoutAlert);
      outlined destroy of Apple_Workout_WorkoutStep?(v38, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      if ((v46 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of Apple_Workout_WorkoutStep(v41, type metadata accessor for Apple_Workout_WorkoutAlert);
    goto LABEL_13;
  }

  if (v40(v38 + v36, 1, v39) != 1)
  {
LABEL_13:
    v30 = &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMd;
    v31 = &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMR;
    v32 = v38;
    goto LABEL_14;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v38, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
LABEL_18:
  v47 = *(v34 + 28);
  v48 = (v37 + v47);
  v49 = *(v37 + v47 + 8);
  v50 = (v28 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (v51 && (*v48 == *v50 && v49 == v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_25;
    }
  }

  else if (!v51)
  {
LABEL_25:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v42 & 1;
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutStep?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutStep?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_WorkoutStep(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_WorkoutStep(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Apple_Workout_CustomWorkoutComposition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

id Measurement<>.hkQuantity.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - v3;

  v5 = [objc_opt_self() _countPerMinuteUnit];
  v6 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v7 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v8 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v9 = [v7 initWithSymbol:v8 converter:v6];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v11 = v10;
  (*(v1 + 8))(v4, v0);
  v12 = [objc_opt_self() quantityWithUnit:v5 doubleValue:v11];

  return v12;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;

  v5 = [objc_opt_self() wattUnit];
  v6 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = [objc_opt_self() quantityWithUnit:v5 doubleValue:v8];

  return v9;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v31 - v3;
  v5 = Measurement.unit.getter();
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 kilometers];
  _sSo12NSUnitLengthCMaTm_1(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {

    v10 = [objc_opt_self() meterUnitWithMetricPrefix_];
    Measurement.value.getter();
    v12 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v11];
  }

  else
  {
    v13 = v7;
    v14 = [v6 feet];
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {

      v10 = [objc_opt_self() footUnit];
      Measurement.value.getter();
      v12 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v16];
    }

    else
    {
      v17 = v13;
      v18 = [v6 yards];
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {

        v10 = [objc_opt_self() yardUnit];
        Measurement.value.getter();
        v12 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v20];
      }

      else
      {
        v21 = [v6 miles];
        v22 = static NSObject.== infix(_:_:)();

        v23 = objc_opt_self();
        if ((v22 & 1) == 0)
        {
          v27 = [v23 meterUnit];
          v28 = [v6 meters];
          Measurement<>.converted(to:)();

          Measurement.value.getter();
          v30 = v29;
          (*(v1 + 8))(v4, v0);
          v25 = [objc_opt_self() quantityWithUnit:v27 doubleValue:v30];

          return v25;
        }

        v10 = [v23 mileUnit];
        Measurement.value.getter();
        v12 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v24];
      }
    }
  }

  v25 = v12;

  return v25;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v23 - v3;
  v5 = Measurement.unit.getter();
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 hours];
  _sSo12NSUnitLengthCMaTm_1(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {

    v10 = [objc_opt_self() hourUnit];
    Measurement.value.getter();
    v12 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v11];
  }

  else
  {
    v13 = [v6 minutes];
    v14 = static NSObject.== infix(_:_:)();

    v15 = objc_opt_self();
    if ((v14 & 1) == 0)
    {
      v18 = [v15 secondUnit];
      v19 = [v6 seconds];
      Measurement<>.converted(to:)();

      Measurement.value.getter();
      v21 = v20;
      (*(v1 + 8))(v4, v0);
      v17 = [objc_opt_self() quantityWithUnit:v18 doubleValue:v21];

      return v17;
    }

    v10 = [v15 minuteUnit];
    Measurement.value.getter();
    v12 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v16];
  }

  v17 = v12;

  return v17;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - v3;
  v5 = Measurement.unit.getter();
  v6 = objc_opt_self();
  v7 = [v6 kilojoules];
  _sSo12NSUnitLengthCMaTm_1(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
  v8 = static NSObject.== infix(_:_:)();

  v9 = objc_opt_self();
  if (v8)
  {
    v10 = [v9 jouleUnitWithMetricPrefix_];
    Measurement.value.getter();
    v12 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v11];
  }

  else
  {
    v13 = [v9 kilocalorieUnit];
    v14 = [v6 kilocalories];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v16 = v15;
    (*(v1 + 8))(v4, v0);
    v12 = [objc_opt_self() quantityWithUnit:v13 doubleValue:v16];
  }

  return v12;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - v3;

  v5 = objc_opt_self();
  v6 = [v5 meterUnit];
  v7 = [v5 secondUnit];
  v8 = [v6 unitDividedByUnit_];

  v9 = [objc_opt_self() metersPerSecond];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v11 = v10;
  (*(v1 + 8))(v4, v0);
  v12 = [objc_opt_self() quantityWithUnit:v8 doubleValue:v11];

  return v12;
}

uint64_t _sSo12NSUnitLengthCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit12IntervalStepV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStep();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_IntervalBlock(v14, v11, type metadata accessor for IntervalStep);
      outlined init with copy of Apple_Workout_IntervalBlock(v15, v7, type metadata accessor for IntervalStep);
      if (*v11 != *v7)
      {
        break;
      }

      v17 = static WorkoutStep.== infix(_:_:)(&v11[*(v4 + 20)], &v7[*(v4 + 20)]);
      outlined destroy of Apple_Workout_IntervalBlock(v7, type metadata accessor for IntervalStep);
      outlined destroy of Apple_Workout_IntervalBlock(v11, type metadata accessor for IntervalStep);
      if (v17)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    outlined destroy of Apple_Workout_IntervalBlock(v7, type metadata accessor for IntervalStep);
    outlined destroy of Apple_Workout_IntervalBlock(v11, type metadata accessor for IntervalStep);
    goto LABEL_11;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit10RoutePointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2); i += 32)
    {
      v5 = *i;
      if (*v3)
      {
        if (!*i)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(i - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v4);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = *v19;
    (*v19)(v8, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit13IntervalBlockV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v67 = type metadata accessor for IntervalStep();
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v67);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v50 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = a1 + 32;
  v15 = a2 + 32;
  v65 = v11;
  v66 = v8;
  while (1)
  {
    if (v13 == v12)
    {
      goto LABEL_45;
    }

    v16 = (v14 + 16 * v13);
    v17 = *v16;
    v18 = (v15 + 16 * v13);
    v19 = *v18;
    v20 = *(*v16 + 16);
    if (v20 != *(*v18 + 16))
    {
      return 0;
    }

    v21 = v16[1];
    v22 = v18[1];
    if (v20)
    {
      if (v17 != v19)
      {
        break;
      }
    }

LABEL_35:
    if (v21 != v22)
    {
      return 0;
    }

    ++v13;
    result = 1;
    if (v13 == v12)
    {
      return result;
    }
  }

  v51 = v22;
  v52 = v21;
  v53 = v15;
  v54 = v14;
  v55 = v13;
  v56 = v12;
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v62 = v17 + v23;
  v60 = v19 + v23;

  v24 = 0;
  v59 = v19;
  v58 = v4;
  v61 = v17;
  v57 = v20;
  while (v24 < *(v17 + 16))
  {
    v26 = *(v4 + 72) * v24;
    result = outlined init with copy of Apple_Workout_IntervalBlock(v62 + v26, v11, type metadata accessor for IntervalStep);
    if (v24 >= *(v19 + 16))
    {
      goto LABEL_44;
    }

    outlined init with copy of Apple_Workout_IntervalBlock(v60 + v26, v8, type metadata accessor for IntervalStep);
    if (*v11 != *v8)
    {
LABEL_39:
      outlined destroy of Apple_Workout_IntervalBlock(v8, type metadata accessor for IntervalStep);
      outlined destroy of Apple_Workout_IntervalBlock(v11, type metadata accessor for IntervalStep);
LABEL_40:

      return 0;
    }

    v27 = *(v67 + 20);
    v28 = &v11[v27];
    v29 = &v8[v27];
    v30 = type metadata accessor for WorkoutStep();
    v31 = *(v30 + 20);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v28 + v31, &v70, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v71)
    {
      outlined init with take of WorkoutAlert(&v70, v72);
      v32 = v73;
      v33 = v74;
      v64 = __swift_project_boxed_opaque_existential_1(v72, v73);
      _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v29 + *(v30 + 20), &v70, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v34 = v71;
      if (v71)
      {
        v35 = v33;
        v36 = __swift_project_boxed_opaque_existential_1(&v70, v71);
        *(&v69 + 1) = v34;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v68);
        v38 = v36;
        v33 = v35;
        (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v38, v34);
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v70);
      }

      else
      {
        _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v70, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        v68 = 0u;
        v69 = 0u;
      }

      v39 = static WorkoutStep.alertEquatable<A>(_:_:)(v64, &v68, v32, v33);
      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v68, &_sypSgMd, &_sypSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v72);
      v11 = v65;
      v8 = v66;
      if ((v39 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v70, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v29 + *(v30 + 20), &v70, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v71)
    {
      outlined init with take of WorkoutAlert(&v70, v72);
      v40 = v73;
      v64 = v74;
      v63 = __swift_project_boxed_opaque_existential_1(v72, v73);
      _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v28 + v31, &v70, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v41 = v71;
      if (v71)
      {
        v42 = __swift_project_boxed_opaque_existential_1(&v70, v71);
        *(&v69 + 1) = v41;
        v43 = __swift_allocate_boxed_opaque_existential_0(&v68);
        (*(*(v41 - 8) + 16))(v43, v42, v41);
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v70);
      }

      else
      {
        _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v70, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        v68 = 0u;
        v69 = 0u;
      }

      v8 = v66;
      v19 = v59;
      v44 = static WorkoutStep.alertEquatable<A>(_:_:)(v63, &v68, v40, v64);
      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v68, &_sypSgMd, &_sypSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v72);
      v11 = v65;
      if ((v44 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v70, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v19 = v59;
    }

    if ((specialized static WorkoutGoal.== infix(_:_:)(v28, v29) & 1) == 0)
    {
      goto LABEL_39;
    }

    v45 = *(v30 + 24);
    v46 = (v28 + v45);
    v47 = *(v28 + v45 + 8);
    v48 = (v29 + v45);
    v49 = v48[1];
    v25 = v49 == 0;
    if (v47)
    {
      if (!v49)
      {
        goto LABEL_39;
      }

      if (*v46 == *v48 && v47 == v49)
      {
        outlined destroy of Apple_Workout_IntervalBlock(v8, type metadata accessor for IntervalStep);
        result = outlined destroy of Apple_Workout_IntervalBlock(v11, type metadata accessor for IntervalStep);
        v4 = v58;
        goto LABEL_12;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v4 = v58;
    outlined destroy of Apple_Workout_IntervalBlock(v8, type metadata accessor for IntervalStep);
    result = outlined destroy of Apple_Workout_IntervalBlock(v11, type metadata accessor for IntervalStep);
    if ((v25 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_12:
    ++v24;
    v17 = v61;
    if (v57 == v24)
    {

      v12 = v56;
      v13 = v55;
      v14 = v54;
      v15 = v53;
      v21 = v52;
      v22 = v51;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B11_RoutePointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v46 - v11);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMd, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMR);
  v13 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v15 = &v46 - v14;
  v54 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v16 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v22 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v51 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v49 = &v46 - v20;
  v50 = (v5 + 48);
  v47 = *(v19 + 72);
  v48 = v15;
  v46 = v8;
  while (1)
  {
    outlined init with copy of Apple_Workout_IntervalBlock(v24, v21, type metadata accessor for Apple_Workout_RoutePoint);
    v53 = v24;
    v26 = v55;
    outlined init with copy of Apple_Workout_IntervalBlock(v25, v55, type metadata accessor for Apple_Workout_RoutePoint);
    v27 = *(v54 + 20);
    v28 = *(v52 + 48);
    v29 = v48;
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(&v21[v27], v48, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v26 + v27, v29 + v28, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    v30 = v51;
    v31 = *v50;
    if ((*v50)(v29, 1, v51) != 1)
    {
      break;
    }

    v32 = v31(v29 + v28, 1, v30);
    v21 = v49;
    if (v32 != 1)
    {
      goto LABEL_24;
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
LABEL_12:
    v36 = *(v54 + 24);
    v37 = &v21[v36];
    v38 = v21[v36 + 8];
    v39 = (v55 + v36);
    v40 = *(v55 + v36 + 8);
    if (v38)
    {
      if (!v40)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (*v37 != *v39)
      {
        LOBYTE(v40) = 1;
      }

      if (v40)
      {
        goto LABEL_26;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v41 = v55;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v41, type metadata accessor for Apple_Workout_RoutePoint);
    outlined destroy of Apple_Workout_IntervalBlock(v21, type metadata accessor for Apple_Workout_RoutePoint);
    if (v42)
    {
      v25 += v47;
      v24 = v53 + v47;
      if (--v22)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v29, v12, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  if (v31(v29 + v28, 1, v30) != 1)
  {
    v33 = v46;
    _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v29 + v28, v46, type metadata accessor for Apple_Workout_LocationCoordinate2D);
    v21 = v49;
    if (*v12 != *v33 || v12[1] != v33[1])
    {
      outlined destroy of Apple_Workout_IntervalBlock(v33, type metadata accessor for Apple_Workout_LocationCoordinate2D);
      outlined destroy of Apple_Workout_IntervalBlock(v12, type metadata accessor for Apple_Workout_LocationCoordinate2D);
      v43 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd;
      v44 = "4?";
      goto LABEL_25;
    }

    v34 = *(v51 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v33, type metadata accessor for Apple_Workout_LocationCoordinate2D);
    outlined destroy of Apple_Workout_IntervalBlock(v12, type metadata accessor for Apple_Workout_LocationCoordinate2D);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    if ((v35 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  outlined destroy of Apple_Workout_IntervalBlock(v12, type metadata accessor for Apple_Workout_LocationCoordinate2D);
  v21 = v49;
LABEL_24:
  v43 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMd;
  v44 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMR;
LABEL_25:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v29, v43, v44);
LABEL_26:
  outlined destroy of Apple_Workout_IntervalBlock(v55, type metadata accessor for Apple_Workout_RoutePoint);
  outlined destroy of Apple_Workout_IntervalBlock(v21, type metadata accessor for Apple_Workout_RoutePoint);
LABEL_27:
  v42 = 0;
  return v42 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_b1_B13ConfigurationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutConfiguration();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v30 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_23:
    v28 = 0;
    return v28 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_IntervalBlock(v14, v11, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      outlined init with copy of Apple_Workout_IntervalBlock(v15, v7, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      if (*v11 != *v7)
      {
        break;
      }

      v17 = v4[6];
      v18 = (v11 + v17);
      v19 = *(v11 + v17 + 4);
      v20 = (v7 + v17);
      v21 = *(v7 + v17 + 4);
      if (v19)
      {
        if (!v21)
        {
          break;
        }
      }

      else
      {
        if (*v18 != *v20)
        {
          LOBYTE(v21) = 1;
        }

        if (v21)
        {
          break;
        }
      }

      v22 = v4[7];
      v23 = (v11 + v22);
      v24 = *(v11 + v22 + 4);
      v25 = (v7 + v22);
      v26 = *(v7 + v22 + 4);
      if (v24)
      {
        if (!v26)
        {
          break;
        }
      }

      else
      {
        if (*v23 != *v25)
        {
          LOBYTE(v26) = 1;
        }

        if (v26)
        {
          break;
        }
      }

      v27 = v4[5];
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_IntervalBlock(v7, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      outlined destroy of Apple_Workout_IntervalBlock(v11, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      if (v28)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v28 & 1;
    }

    outlined destroy of Apple_Workout_IntervalBlock(v7, type metadata accessor for Apple_Workout_WorkoutConfiguration);
    outlined destroy of Apple_Workout_IntervalBlock(v11, type metadata accessor for Apple_Workout_WorkoutConfiguration);
    goto LABEL_23;
  }

  v28 = 1;
  return v28 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B13_IntervalStepV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  v9 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v48 - v17;
  v18 = type metadata accessor for Apple_Workout_IntervalStep(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v60 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  if (!v25 || a1 == a2)
  {
    return 1;
  }

  v49 = v8;
  v54 = v4;
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v52 = (v5 + 48);
  v55 = *(v22 + 72);
  v50 = v15;
  v53 = &v48 - v23;
  v51 = v18;
  while (1)
  {
    outlined init with copy of Apple_Workout_IntervalBlock(v27, v24, type metadata accessor for Apple_Workout_IntervalStep);
    v29 = v60;
    outlined init with copy of Apple_Workout_IntervalBlock(v28, v60, type metadata accessor for Apple_Workout_IntervalStep);
    v30 = *(v18 + 20);
    v31 = *&v24[v30];
    v32 = *(v29 + v30);
    if (v31 == v32)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v33 = *(v31 + 16);
    swift_beginAccess();
    v34 = *(v32 + 16);
    if (*(v32 + 24) == 1)
    {
      if (v34)
      {
        if (v34 == 1)
        {
          if (v33 != 1)
          {
            goto LABEL_28;
          }
        }

        else if (v33 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v33)
      {
        goto LABEL_28;
      }
    }

    else if (v33 != v34)
    {
      goto LABEL_28;
    }

    v57 = v28;
    v58 = v27;
    v35 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
    swift_beginAccess();
    v36 = v59;
    v37 = v11;
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v31 + v35, v59, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v38 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
    swift_beginAccess();
    v39 = *(v56 + 48);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v36, v11, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v32 + v38, &v11[v39], &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v40 = *v52;
    v41 = v11;
    v42 = v54;
    if ((*v52)(v41, 1, v54) == 1)
    {

      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v36, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      v43 = v40(v37 + v39, 1, v42);
      v11 = v37;
      if (v43 != 1)
      {
        goto LABEL_26;
      }

      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v37, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      v24 = v53;
      goto LABEL_21;
    }

    v44 = v50;
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v37, v50, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v40(v41 + v39, 1, v42) == 1)
    {
      break;
    }

    v45 = v49;
    _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v41 + v39, v49, type metadata accessor for Apple_Workout_WorkoutStep);

    v46 = static Apple_Workout_WorkoutStep.== infix(_:_:)(v44, v45);
    outlined destroy of Apple_Workout_IntervalBlock(v45, type metadata accessor for Apple_Workout_WorkoutStep);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v59, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_IntervalBlock(v44, type metadata accessor for Apple_Workout_WorkoutStep);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v41, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v11 = v41;
    v24 = v53;
    if ((v46 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_21:

    v18 = v51;
    v28 = v57;
    v27 = v58;
LABEL_22:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_28;
    }

    outlined destroy of Apple_Workout_IntervalBlock(v60, type metadata accessor for Apple_Workout_IntervalStep);
    outlined destroy of Apple_Workout_IntervalBlock(v24, type metadata accessor for Apple_Workout_IntervalStep);
    v28 += v55;
    v27 += v55;
    if (!--v25)
    {
      return 1;
    }
  }

  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v59, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined destroy of Apple_Workout_IntervalBlock(v44, type metadata accessor for Apple_Workout_WorkoutStep);
  v11 = v41;
LABEL_26:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v11, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  v24 = v53;
LABEL_27:

LABEL_28:
  outlined destroy of Apple_Workout_IntervalBlock(v60, type metadata accessor for Apple_Workout_IntervalStep);
  outlined destroy of Apple_Workout_IntervalBlock(v24, type metadata accessor for Apple_Workout_IntervalStep);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit011SwimBikeRunB0V8ActivityO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3)
      {
        if (*v3 == 1)
        {
          if (v8 != 1 || v6 != v7)
          {
            return 0;
          }
        }

        else if (v8 != 2 || v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        if (*v4)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B14_IntervalBlockV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v158 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v165 = &v146 - v10;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMR);
  v11 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v167 = &v146 - v12;
  v161 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v13 = *(v161 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v161);
  v157 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v162 = &v146 - v18;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMR);
  v19 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v160 = &v146 - v20;
  v178 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v21 = *(v178 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v178);
  v173 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v168 = (&v146 - v26);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR);
  v27 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v174 = &v146 - v28;
  v187 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v29 = *(v187 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v187);
  v186 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  v32 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v34 = &v146 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v184 = &v146 - v40;
  v183 = type metadata accessor for Apple_Workout_IntervalStep(0);
  v163 = *(v183 - 8);
  v41 = *(v163 + 64);
  MEMORY[0x28223BE20](v183);
  v43 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v188 = &v146 - v45;
  v176 = type metadata accessor for Apple_Workout_IntervalBlock(0);
  v46 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v185 = &v146 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v182 = &v146 - v50;
  v51 = *(a1 + 16);
  if (v51 != *(a2 + 16))
  {
    goto LABEL_100;
  }

  if (!v51 || a1 == a2)
  {
    v139 = 1;
    return v139 & 1;
  }

  v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v53 = a1 + v52;
  v54 = 0;
  v152 = a2 + v52;
  v155 = (v29 + 48);
  v151 = (v21 + 48);
  v146 = (v13 + 48);
  v149 = (v5 + 48);
  v55 = *(v49 + 72);
  v56 = v188;
  v57 = v182;
  v150 = v4;
  v177 = v34;
  v175 = v38;
  v156 = v51;
  v148 = v53;
  v147 = v55;
  while (1)
  {
    v58 = v55 * v54;
    result = outlined init with copy of Apple_Workout_IntervalBlock(v53 + v55 * v54, v57, type metadata accessor for Apple_Workout_IntervalBlock);
    if (v54 == v156)
    {
      __break(1u);
      return result;
    }

    v153 = v54;
    v60 = v152 + v58;
    v61 = v185;
    outlined init with copy of Apple_Workout_IntervalBlock(v60, v185, type metadata accessor for Apple_Workout_IntervalBlock);
    v62 = *v57;
    v63 = *v61;
    v64 = *(*v57 + 16);
    if (v64 != *(*v61 + 16))
    {
      goto LABEL_99;
    }

    if (v64 && v62 != v63)
    {
      break;
    }

LABEL_72:
    v132 = *(v176 + 24);
    v133 = (v182 + v132);
    v134 = *(v182 + v132 + 4);
    v135 = (v185 + v132);
    v136 = *(v185 + v132 + 4);
    if (v134)
    {
      if (!v136)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (*v133 != *v135)
      {
        LOBYTE(v136) = 1;
      }

      if (v136)
      {
        goto LABEL_99;
      }
    }

    v137 = *(v176 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v57 = v182;
    v138 = v185;
    v139 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v138, type metadata accessor for Apple_Workout_IntervalBlock);
    outlined destroy of Apple_Workout_IntervalBlock(v57, type metadata accessor for Apple_Workout_IntervalBlock);
    if (v139)
    {
      v54 = v153 + 1;
      v53 = v148;
      v55 = v147;
      if (v153 + 1 != v156)
      {
        continue;
      }
    }

    return v139 & 1;
  }

  v65 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v66 = v62 + v65;
  v67 = v63 + v65;
  v164 = *(v163 + 72);
  v154 = v43;
  while (1)
  {
    outlined init with copy of Apple_Workout_IntervalBlock(v66, v56, type metadata accessor for Apple_Workout_IntervalStep);
    v68 = v187;
    outlined init with copy of Apple_Workout_IntervalBlock(v67, v43, type metadata accessor for Apple_Workout_IntervalStep);
    v69 = *(v183 + 20);
    v70 = *(v56 + v69);
    v71 = *&v43[v69];
    if (v70 != v71)
    {
      break;
    }

LABEL_57:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v56 = v188;
    v131 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v43, type metadata accessor for Apple_Workout_IntervalStep);
    outlined destroy of Apple_Workout_IntervalBlock(v56, type metadata accessor for Apple_Workout_IntervalStep);
    if ((v131 & 1) == 0)
    {
      goto LABEL_99;
    }

    v67 += v164;
    v66 += v164;
    if (!--v64)
    {
      goto LABEL_72;
    }
  }

  swift_beginAccess();
  v72 = *(v70 + 16);
  swift_beginAccess();
  v73 = *(v71 + 16);
  if (*(v71 + 24) == 1)
  {
    v74 = v184;
    if (v73)
    {
      if (v73 == 1)
      {
        if (v72 != 1)
        {
          goto LABEL_98;
        }
      }

      else if (v72 != 2)
      {
        goto LABEL_98;
      }
    }

    else if (v72)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v74 = v184;
    if (v72 != v73)
    {
      goto LABEL_98;
    }
  }

  v170 = v64;
  v171 = v67;
  v172 = v66;
  v75 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v70 + v75, v74, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v76 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  v77 = *(v179 + 48);
  v78 = v177;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v74, v177, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v71 + v76, v78 + v77, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v79 = *v155;
  v80 = (*v155)(v78, 1, v68);
  v180 = v71;
  v181 = v70;
  if (v80 == 1)
  {

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v74, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v79(v78 + v77, 1, v68) != 1)
    {
      goto LABEL_83;
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v78, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v43 = v154;
LABEL_56:

    v66 = v172;
    v67 = v171;
    v64 = v170;
    goto LABEL_57;
  }

  v81 = v175;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v78, v175, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if (v79(v78 + v77, 1, v68) == 1)
  {

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v74, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_IntervalBlock(v81, type metadata accessor for Apple_Workout_WorkoutStep);
LABEL_83:
    v140 = &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd;
    v141 = &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR;
    v142 = v78;
    goto LABEL_96;
  }

  v82 = v186;
  _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v78 + v77, v186, type metadata accessor for Apple_Workout_WorkoutStep);
  v83 = v68[5];
  v84 = *(v169 + 48);
  v85 = v174;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v81 + v83, v174, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v86 = v82 + v83;
  v87 = v85;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v86, v85 + v84, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v88 = *v151;
  v89 = v178;
  if ((*v151)(v85, 1, v178) == 1)
  {
    v90 = v88(v85 + v84, 1, v89);

    v91 = v177;
    if (v90 != 1)
    {
      goto LABEL_85;
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v85, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    v92 = v175;
    goto LABEL_42;
  }

  v93 = v168;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v85, v168, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if (v88(v85 + v84, 1, v89) == 1)
  {

    outlined destroy of Apple_Workout_IntervalBlock(v93, type metadata accessor for Apple_Workout_WorkoutGoal);
    v87 = v85;
    v91 = v177;
LABEL_85:
    v143 = &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd;
    v144 = &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR;
    v145 = v87;
    goto LABEL_93;
  }

  v94 = v85 + v84;
  v95 = v173;
  _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v94, v173, type metadata accessor for Apple_Workout_WorkoutGoal);
  v96 = *v93;
  v97 = *v95;
  if (*(v95 + 8) == 1)
  {
    v98 = v162;
    v99 = v178;
    v68 = v187;
    v100 = v146;
    if (v97 > 2)
    {
      if (v97 == 3)
      {
        if (v96 != 3)
        {
          goto LABEL_86;
        }
      }

      else if (v97 == 4)
      {
        if (v96 != 4)
        {
          goto LABEL_86;
        }
      }

      else if (v96 != 5)
      {
LABEL_86:

        goto LABEL_91;
      }
    }

    else if (v97)
    {
      if (v97 == 1)
      {
        if (v96 != 1)
        {
          goto LABEL_86;
        }
      }

      else if (v96 != 2)
      {
        goto LABEL_86;
      }
    }

    else if (v96)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v98 = v162;
    v99 = v178;
    v68 = v187;
    v100 = v146;
    if (v96 != v97)
    {
      goto LABEL_86;
    }
  }

  v101 = *(v99 + 20);
  v102 = *(v159 + 48);
  v103 = v160;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v93 + v101, v160, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v173 + v101, v103 + v102, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v104 = *v100;
  v105 = v161;
  if ((*v100)(v103, 1, v161) == 1)
  {
    v106 = v104(v103 + v102, 1, v105);

    if (v106 != 1)
    {
      goto LABEL_90;
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v103, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v91 = v177;
LABEL_41:
    v109 = *(v178 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v110 = v168;
    v111 = v173;
    v112 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v111, type metadata accessor for Apple_Workout_WorkoutGoal);
    outlined destroy of Apple_Workout_IntervalBlock(v110, type metadata accessor for Apple_Workout_WorkoutGoal);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v174, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    v92 = v175;
    v113 = v184;
    if ((v112 & 1) == 0)
    {
      goto LABEL_95;
    }

LABEL_42:
    v114 = v165;
    v115 = v68[6];
    v116 = *(v166 + 48);
    v117 = v167;
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v92 + v115, v167, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v186 + v115, v117 + v116, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    v118 = *v149;
    v119 = v150;
    if ((*v149)(v117, 1, v150) == 1)
    {
      v120 = v118(v117 + v116, 1, v119) == 1;
      v91 = v177;
      v121 = v117;
      v92 = v175;
      if (!v120)
      {
        goto LABEL_88;
      }

      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v117, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      v113 = v184;
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v117, v114, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      if (v118(v117 + v116, 1, v119) == 1)
      {
        outlined destroy of Apple_Workout_IntervalBlock(v114, type metadata accessor for Apple_Workout_WorkoutAlert);
        v91 = v177;
        v121 = v117;
        v92 = v175;
LABEL_88:
        _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v121, &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMR);
        goto LABEL_94;
      }

      v122 = v158;
      _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v117 + v116, v158, type metadata accessor for Apple_Workout_WorkoutAlert);
      v123 = static Apple_Workout_WorkoutAlert.== infix(_:_:)(v114, v122);
      outlined destroy of Apple_Workout_IntervalBlock(v122, type metadata accessor for Apple_Workout_WorkoutAlert);
      outlined destroy of Apple_Workout_IntervalBlock(v114, type metadata accessor for Apple_Workout_WorkoutAlert);
      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v117, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      v91 = v177;
      v92 = v175;
      v113 = v184;
      if ((v123 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    v124 = v68[7];
    v125 = (v92 + v124);
    v126 = *(v92 + v124 + 8);
    v127 = (v186 + v124);
    v128 = v127[1];
    if (v126)
    {
      if (!v128 || (*v125 != *v127 || v126 != v128) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v128)
    {
      goto LABEL_95;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v129 = v186;
    v130 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v129, type metadata accessor for Apple_Workout_WorkoutStep);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v113, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_IntervalBlock(v175, type metadata accessor for Apple_Workout_WorkoutStep);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v91, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v43 = v154;
    if ((v130 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_56;
  }

  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v103, v98, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  if (v104(v103 + v102, 1, v105) != 1)
  {
    v107 = v157;
    _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v103 + v102, v157, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);

    v108 = static Apple_Workout_WorkoutGoal.OneOf_GoalValue.== infix(_:_:)(v98, v107);
    outlined destroy of Apple_Workout_IntervalBlock(v107, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    outlined destroy of Apple_Workout_IntervalBlock(v98, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v103, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v91 = v177;
    if ((v108 & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_41;
  }

  outlined destroy of Apple_Workout_IntervalBlock(v98, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
LABEL_90:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v103, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMR);
LABEL_91:
  v91 = v177;
LABEL_92:
  outlined destroy of Apple_Workout_IntervalBlock(v173, type metadata accessor for Apple_Workout_WorkoutGoal);
  outlined destroy of Apple_Workout_IntervalBlock(v168, type metadata accessor for Apple_Workout_WorkoutGoal);
  v143 = &_s10WorkoutKit06Apple_a1_A4GoalVSgMd;
  v144 = &_s10WorkoutKit06Apple_a1_A4GoalVSgMR;
  v145 = v174;
LABEL_93:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v145, v143, v144);
  v92 = v175;
LABEL_94:
  v113 = v184;
LABEL_95:
  outlined destroy of Apple_Workout_IntervalBlock(v186, type metadata accessor for Apple_Workout_WorkoutStep);
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v113, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined destroy of Apple_Workout_IntervalBlock(v92, type metadata accessor for Apple_Workout_WorkoutStep);
  v142 = v91;
  v140 = &_s10WorkoutKit06Apple_a1_A4StepVSgMd;
  v141 = &_s10WorkoutKit06Apple_a1_A4StepVSgMR;
LABEL_96:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v142, v140, v141);
  v43 = v154;
LABEL_97:

LABEL_98:
  outlined destroy of Apple_Workout_IntervalBlock(v43, type metadata accessor for Apple_Workout_IntervalStep);
  outlined destroy of Apple_Workout_IntervalBlock(v188, type metadata accessor for Apple_Workout_IntervalStep);
LABEL_99:
  outlined destroy of Apple_Workout_IntervalBlock(v185, type metadata accessor for Apple_Workout_IntervalBlock);
  outlined destroy of Apple_Workout_IntervalBlock(v182, type metadata accessor for Apple_Workout_IntervalBlock);
LABEL_100:
  v139 = 0;
  return v139 & 1;
}

id SwimBikeRunWorkout.Activity.hkConfiguration.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  v4 = qword_23B67DF50[v2];
  v5 = off_278B84220[v2];
  [v3 setActivityType_];
  [v3 *v5];
  return v3;
}

uint64_t SwimBikeRunWorkout.Activity.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x23EEA0D50](*(v0 + 8));
  return MEMORY[0x23EEA0D50](v1);
}

Swift::Int SwimBikeRunWorkout.Activity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwimBikeRunWorkout.Activity()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SwimBikeRunWorkout.Activity()
{
  v1 = *v0;
  MEMORY[0x23EEA0D50](*(v0 + 8));
  return MEMORY[0x23EEA0D50](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwimBikeRunWorkout.Activity()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

uint64_t key path setter for SwimBikeRunWorkout.activities : SwimBikeRunWorkout(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  v5 = a2[2];

  specialized static SwimBikeRunWorkout.validateActivities(_:)(v6);
}

uint64_t SwimBikeRunWorkout.activities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  v4 = v1[2];

  specialized static SwimBikeRunWorkout.validateActivities(_:)(v5);
}

uint64_t SwimBikeRunWorkout.activities.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 8);
    v3 = *v2;
    v4 = v2[2];

    specialized static SwimBikeRunWorkout.validateActivities(_:)(v5);
  }

  return result;
}

uint64_t SwimBikeRunWorkout.displayName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SwimBikeRunWorkout.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

WorkoutKit::SwimBikeRunWorkout __swiftcall SwimBikeRunWorkout.init(activities:displayName:)(Swift::OpaquePointer activities, Swift::String_optional displayName)
{
  object = displayName.value._object;
  countAndFlagsBits = displayName.value._countAndFlagsBits;
  v6 = v2;
  v7 = *(activities._rawValue + 2);
  if (v7)
  {
    v23 = v2;
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = activities._rawValue + 40;
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      v12 = qword_23B67DF50[v10];
      v13 = off_278B84220[v10];
      [v11 setActivityType_];
      [v11 *v13];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = v24[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 16;
      --v7;
    }

    while (v7);

    v15._rawValue = v24;
    object = displayName.value._object;
    v6 = v23;
    countAndFlagsBits = displayName.value._countAndFlagsBits;
  }

  else
  {

    v15._rawValue = MEMORY[0x277D84F90];
  }

  v16.value._countAndFlagsBits = countAndFlagsBits;
  v16.value._object = object;
  SwimBikeRunWorkout.init(configurations:displayName:)(v15, v16);
  if (v17)
  {
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    v18 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    *v6 = v25;
    *(v6 + 8) = v26;
  }

  result.displayName.value._object = v20;
  result.displayName.value._countAndFlagsBits = v19;
  result.activities._rawValue = v18;
  return result;
}

WorkoutKit::SwimBikeRunWorkout __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SwimBikeRunWorkout.init(configurations:displayName:)(Swift::OpaquePointer configurations, Swift::String_optional displayName)
{
  object = displayName.value._object;
  countAndFlagsBits = displayName.value._countAndFlagsBits;
  v7 = v2;
  specialized static SwimBikeRunWorkout.validateConfigurations(_:)(configurations._rawValue);
  v8 = v3;
  if (v3)
  {
  }

  else
  {
    if (configurations._rawValue >> 62)
    {
      goto LABEL_26;
    }

    v12 = *((configurations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      while (1)
      {
        v25 = v7;
        v26 = countAndFlagsBits;
        v27 = v8;
        v28 = object;
        v29 = MEMORY[0x277D84F90];
        v9 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          break;
        }

        v13 = 0;
        v14 = v29;
        v7 = v12;
        while (1)
        {
          v8 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if ((configurations._rawValue & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x23EEA0B80](v13, configurations._rawValue);
          }

          else
          {
            if (v13 >= *((configurations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v15 = *(configurations._rawValue + v13 + 4);
          }

          v16 = v15;
          v17 = [v15 activityType];
          if (v17 == 46)
          {
            object = 0;
            v18 = &selRef_swimmingLocationType;
          }

          else
          {
            if (v17 == 37)
            {
              object = 2;
            }

            else
            {
              if (v17 != 13)
              {

                v22 = [v16 activityType];
                lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
                swift_allocError();
                *v23 = v22;
                *(v23 + 8) = 2;
                swift_willThrow();

                goto LABEL_33;
              }

              object = 1;
            }

            v18 = &selRef_locationType;
          }

          countAndFlagsBits = [v16 *v18];

          v20 = *(v29 + 16);
          v19 = *(v29 + 24);
          if (v20 >= v19 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          }

          *(v29 + 16) = v20 + 1;
          v21 = v29 + 16 * v20;
          *(v21 + 32) = countAndFlagsBits;
          *(v21 + 40) = object;
          ++v13;
          if (v8 == v7)
          {

            object = v28;
            v7 = v25;
            countAndFlagsBits = v26;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        if (configurations._rawValue < 0)
        {
          rawValue = configurations._rawValue;
        }

        else
        {
          rawValue = configurations._rawValue & 0xFFFFFFFFFFFFFF8;
        }

        v12 = MEMORY[0x23EEA0C00](rawValue);
        if (!v12)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_30:

      v14 = MEMORY[0x277D84F90];
LABEL_31:
      *v7 = v14;
      v7[1] = countAndFlagsBits;
      v7[2] = object;
    }
  }

LABEL_33:
  result.displayName.value._object = v11;
  result.displayName.value._countAndFlagsBits = v10;
  result.activities._rawValue = v9;
  return result;
}

__n128 SwimBikeRunWorkout.init(from:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Apple_Workout_WorkoutConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12._rawValue = MEMORY[0x277D84F90];
  if (v11)
  {
    v25[1] = v2;
    v26 = a1;
    v29 = a2;
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    do
    {
      outlined init with copy of Apple_Workout_IntervalBlock(v13, v9, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      v16 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      [v16 setActivityType_];
      v17 = (v9 + *(v5 + 24));
      if ((v17[1] & 1) == 0)
      {
        [v16 setLocationType_];
      }

      v18 = (v9 + *(v5 + 28));
      if ((v18[1] & 1) == 0)
      {
        [v16 setSwimmingLocationType_];
      }

      outlined destroy of Apple_Workout_IntervalBlock(v9, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = v27[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v13 += v14;
      --v11;
    }

    while (v11);
    a1 = v26;
    v12._rawValue = v27;
    a2 = v29;
  }

  v19 = (a1 + *(type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition() + 24));
  v20 = *v19;
  v21 = v19[1];

  v22.value._countAndFlagsBits = v20;
  v22.value._object = v21;
  SwimBikeRunWorkout.init(configurations:displayName:)(v12, v22);
  outlined destroy of Apple_Workout_IntervalBlock(a1, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
  if (!v24)
  {
    result = v28;
    *a2 = v27;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t closure #1 in SwimBikeRunWorkout.protoComposition.getter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v29 = type metadata accessor for Apple_Workout_WorkoutConfiguration();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v12 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = (a1 + *(type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition() + 24));
      v14 = v13[1];

      *v13 = a3;
      v13[1] = a4;
    }
  }

  v15 = *(a2 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v28 = a1;
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v17 = (a2 + 40);
    v16 = v30;
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      v21 = qword_23B67DF50[v19];
      v22 = off_278B84220[v19];
      [v20 setActivityType_];
      v23 = [v20 *v22];
      MEMORY[0x28223BE20](v23);
      *(&v28 - 2) = v20;
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      static Message.with(_:)();

      v30 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
        v16 = v30;
      }

      v17 += 16;
      *(v16 + 16) = v25 + 1;
      _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v11, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      --v15;
    }

    while (v15);
    a1 = v28;
  }

  v26 = *a1;

  *a1 = v16;
  return result;
}

uint64_t static SwimBikeRunWorkout.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit011SwimBikeRunB0V8ActivityO_Tt1g5(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void SwimBikeRunWorkout.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int SwimBikeRunWorkout.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SwimBikeRunWorkout(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit011SwimBikeRunB0V8ActivityO_Tt1g5(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwimBikeRunWorkout()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SwimBikeRunWorkout(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwimBikeRunWorkout()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void specialized static SwimBikeRunWorkout.validateConfigurations(_:)(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v2;
    if (v2 < 2)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x23EEA0C00](v6);
  if (v3 < 2)
  {
LABEL_3:
    lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0;
LABEL_4:
    swift_willThrow();
    return;
  }

  v7 = MEMORY[0x23EEA0C00](v6);
  if (v7)
  {
    v2 = v7;
LABEL_11:
    v26 = v3;
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x23EEA0B80](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v10 activityType];
      if (qword_284E21D38 != v12 && unk_284E21D40 != v12 && qword_284E21D48 != v12)
      {
        v15 = [v11 activityType];
        lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
        swift_allocError();
        *v16 = v15;
        *(v16 + 8) = 2;
        swift_willThrow();

        return;
      }

      ++v8;
      if (v3 == v2)
      {
        v3 = v26;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  v9 = a1 & 0xC000000000000001;
LABEL_27:
  v17 = 0;
  v18 = v3 - 1;
  v27 = (v3 - 1) & ~((v3 - 1) >> 63);
  v19 = (a1 + 40);
  while (v18 != v17)
  {
    if (v27 == v17)
    {
      goto LABEL_43;
    }

    if (v9)
    {
      v23 = MEMORY[0x23EEA0B80](v17, a1);
    }

    else
    {
      if (v17 >= *(v5 + 16))
      {
        goto LABEL_44;
      }

      v23 = *(v19 - 1);
    }

    v24 = v23;
    v3 = [v23 activityType];

    if (v9)
    {
      v20 = MEMORY[0x23EEA0B80](v17 + 1, a1);
    }

    else
    {
      if (v17 + 1 >= *(v5 + 16))
      {
        goto LABEL_45;
      }

      v20 = *v19;
    }

    v21 = v20;
    v22 = [v20 activityType];

    ++v19;
    ++v17;
    if (v3 == v22)
    {
      lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
      swift_allocError();
      *v25 = v3;
      *(v25 + 8) = 1;
      goto LABEL_4;
    }
  }
}

uint64_t specialized static SwimBikeRunWorkout.validateActivities(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      v8 = qword_23B67DF50[v6];
      v9 = off_278B84220[v6];
      [v7 setActivityType_];
      [v7 *v9];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v12 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 16;
      --v1;
    }

    while (v1);
    v2 = v12;
  }

  specialized static SwimBikeRunWorkout.validateConfigurations(_:)(v2);
}

unint64_t lazy protocol witness table accessor for type SwimBikeRunWorkout.Activity and conformance SwimBikeRunWorkout.Activity()
{
  result = lazy protocol witness table cache variable for type SwimBikeRunWorkout.Activity and conformance SwimBikeRunWorkout.Activity;
  if (!lazy protocol witness table cache variable for type SwimBikeRunWorkout.Activity and conformance SwimBikeRunWorkout.Activity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimBikeRunWorkout.Activity and conformance SwimBikeRunWorkout.Activity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwimBikeRunWorkout and conformance SwimBikeRunWorkout()
{
  result = lazy protocol witness table cache variable for type SwimBikeRunWorkout and conformance SwimBikeRunWorkout;
  if (!lazy protocol witness table cache variable for type SwimBikeRunWorkout and conformance SwimBikeRunWorkout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimBikeRunWorkout and conformance SwimBikeRunWorkout);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SwimBikeRunWorkout(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SwimBikeRunWorkout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwimBikeRunWorkout.Activity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SwimBikeRunWorkout.Activity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_IntervalBlock(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined destroy of Apple_Workout_IntervalBlock(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in closure #1 in static Apple_Workout_CadenceAlert.targetAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_CadenceValue(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_2(v7, a1, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in static Apple_Workout_CadenceAlert.targetAlert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13[-v8];
  *a1 = 3;
  *(a1 + 8) = 1;
  *(a1 + 16) = a3;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_CadenceAlert(0);
  v14 = a2;
  lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert);
  static Message.with(_:)();
  v10 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_2(v9, a1 + *(v11 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_CadenceAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_CadenceRange(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_2(v7, a1, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_CadenceAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v5 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);
  static Message.with(_:)();
  v16 = v2;
  v10 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v11 = *(v10 + 20);
  outlined destroy of Apple_Workout_CadenceValue?(a1 + v11, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(v9, a1 + v11, type metadata accessor for Apple_Workout_CadenceValue);
  v12 = *(v6 + 56);
  v12(a1 + v11, 0, 1, v5);
  v17 = v19;
  static Message.with(_:)();
  v13 = *(v10 + 24);
  outlined destroy of Apple_Workout_CadenceValue?(a1 + v13, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(v9, a1 + v13, type metadata accessor for Apple_Workout_CadenceValue);
  return (v12)(a1 + v13, 0, 1, v5);
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_CadenceAlert.targetAlert(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = type metadata accessor for Apple_Workout_TimeValue(0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = objc_allocWithZone(MEMORY[0x277CCADC0]);
  v13 = [v12 initWithCoefficient_];
  v14 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v15 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v16 = [v14 initWithSymbol:v15 converter:v13];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v18 = v17;
  v19 = v17;
  result = (*(v8 + 8))(v11, v7);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v18 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v18 < 4294967300.0)
  {
    *a1 = v18;
    lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
    v21 = v24;
    static Message.with(_:)();
    v22 = *(type metadata accessor for Apple_Workout_CadenceValue(0) + 24);
    outlined destroy of Apple_Workout_CadenceValue?(&a1[v22], &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(v21, &a1[v22], type metadata accessor for Apple_Workout_TimeValue);
    return (*(v25 + 56))(&a1[v22], 0, 1, v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in static Apple_Workout_CadenceAlert.rangeAlert(_:)(char *a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for Apple_Workout_TimeValue(0);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  v12 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v13 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v14 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v15 = [v13 initWithSymbol:v14 converter:v12];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v17 = v16;
  v18 = v16;
  result = (*(v7 + 8))(v10, v6);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v17 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v17 < 4294967300.0)
  {
    *a1 = v17;
    lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
    v20 = v23;
    static Message.with(_:)();
    v21 = *(type metadata accessor for Apple_Workout_CadenceValue(0) + 24);
    outlined destroy of Apple_Workout_CadenceValue?(&a1[v21], &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(v20, &a1[v21], type metadata accessor for Apple_Workout_TimeValue);
    return (*(v24 + 56))(&a1[v21], 0, 1, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_CadenceValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_GoalWorkoutComposition()
{
  result = type metadata singleton initialization cache for Apple_Workout_GoalWorkoutComposition;
  if (!type metadata singleton initialization cache for Apple_Workout_GoalWorkoutComposition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_GoalWorkoutComposition()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_WorkoutGoal?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_WorkoutGoal?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_WorkoutGoal?)
  {
    type metadata accessor for Apple_Workout_WorkoutGoal(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_WorkoutGoal?);
    }
  }
}

uint64_t Apple_Workout_GoalWorkoutComposition.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v4 = *(type metadata accessor for Apple_Workout_GoalWorkoutComposition() + 28);
LABEL_13:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 4)
      {
        closure #4 in Apple_Workout_GoalWorkoutComposition.decodeMessage<A>(decoder:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for Apple_Workout_GoalWorkoutComposition() + 24);
      goto LABEL_13;
    }
  }
}

uint64_t closure #4 in Apple_Workout_GoalWorkoutComposition.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_GoalWorkoutComposition() + 32);
  type metadata accessor for Apple_Workout_WorkoutGoal(0);
  lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      closure #2 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(v0);
      closure #3 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(v0);
      v3 = v0 + *(type metadata accessor for Apple_Workout_GoalWorkoutComposition() + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  outlined init with copy of Apple_Workout_WorkoutGoal?(a1 + *(v11 + 32), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(v5, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutGoal(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutGoal(v10);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_GoalWorkoutComposition@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = &a2[a1[6]];
  *v6 = 0;
  v6[4] = 1;
  v7 = &a2[v5];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[8];
  v9 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v8], 1, 1, v9);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_GoalWorkoutComposition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_GoalWorkoutComposition;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_GoalWorkoutComposition@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_GoalWorkoutComposition._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_GoalWorkoutComposition()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_GoalWorkoutComposition()
{
  lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_GoalWorkoutComposition()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_GoalWorkoutComposition.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_20;
  }

  v17 = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_20;
    }
  }

  v23 = v17[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_20;
    }
  }

  v28 = v17;
  v29 = v17[8];
  v30 = *(v13 + 48);
  outlined init with copy of Apple_Workout_WorkoutGoal?(a1 + v29, v16);
  outlined init with copy of Apple_Workout_WorkoutGoal?(a2 + v29, &v16[v30]);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v30], 1, v4) == 1)
    {
      outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(v16, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
LABEL_23:
      v35 = v28[5];
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_19;
  }

  outlined init with copy of Apple_Workout_WorkoutGoal?(v16, v12);
  if (v31(&v16[v30], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutGoal(v12);
LABEL_19:
    outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(v16, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR);
    goto LABEL_20;
  }

  outlined init with take of Apple_Workout_WorkoutGoal(&v16[v30], v8);
  v34 = static Apple_Workout_WorkoutGoal.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_WorkoutGoal(v8);
  outlined destroy of Apple_Workout_WorkoutGoal(v12);
  outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(v16, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if (v34)
  {
    goto LABEL_23;
  }

LABEL_20:
  v32 = 0;
  return v32 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutGoal?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_WorkoutGoal(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(unint64_t *a1, void (*a2)(uint64_t))
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

WorkoutKit::IntervalBlock __swiftcall IntervalBlock.init(steps:iterations:)(Swift::OpaquePointer steps, Swift::Int iterations)
{
  v2->_rawValue = steps._rawValue;
  v2[1]._rawValue = iterations;
  result.iterations = iterations;
  result.steps = steps;
  return result;
}

uint64_t IntervalBlock.iterations.setter(uint64_t result)
{
  *(v1 + 8) = result;
  if (result < 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t IntervalBlock.steps.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t *key path setter for IntervalBlock.iterations : IntervalBlock(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 8) = *result;
  if (v2 < 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t IntervalBlock.iterations.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0 && *(*result + 8) <= 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in IntervalBlock.protoRepresentation.getter(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IntervalStep();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_IntervalStep(0);
  v31 = *(v13 - 8);
  v32 = v13;
  v14 = *(v31 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v28 = a1;
    v29 = a3;
    v33 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v33;
    v19 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v30 = *(v9 + 72);
    do
    {
      v20 = outlined init with copy of IntervalStep(v19, v12);
      MEMORY[0x28223BE20](v20);
      *(&v27 - 2) = v12;
      lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep();
      v21 = v4;
      static Message.with(_:)();
      outlined destroy of IntervalStep(v12);
      v33 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
        v18 = v33;
      }

      *(v18 + 16) = v23 + 1;
      outlined init with take of Apple_Workout_IntervalStep(v16, v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23);
      v19 += v30;
      --v17;
      v4 = v21;
    }

    while (v17);
    a1 = v28;
    a3 = v29;
  }

  v24 = *a1;

  *a1 = v18;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    result = type metadata accessor for Apple_Workout_IntervalBlock(0);
    v26 = a1 + *(result + 24);
    *v26 = a3;
    v26[4] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static IntervalBlock.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit12IntervalStepV_Tt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t IntervalBlock.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Array<A>.hash(into:)(a1, v2);
  return MEMORY[0x23EEA0D50](v3);
}

Swift::Int IntervalBlock.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IntervalBlock(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit12IntervalStepV_Tt1g5(*a1, *a2) & (v2 == v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalBlock()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IntervalBlock(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Array<A>.hash(into:)(a1, v2);
  return MEMORY[0x23EEA0D50](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalBlock()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type IntervalBlock and conformance IntervalBlock()
{
  result = lazy protocol witness table cache variable for type IntervalBlock and conformance IntervalBlock;
  if (!lazy protocol witness table cache variable for type IntervalBlock and conformance IntervalBlock)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalBlock and conformance IntervalBlock);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalBlock(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervalBlock(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of IntervalStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStep();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep)
  {
    type metadata accessor for Apple_Workout_IntervalStep(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep);
  }

  return result;
}

uint64_t outlined destroy of IntervalStep(uint64_t a1)
{
  v2 = type metadata accessor for IntervalStep();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_IntervalStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_IntervalStep(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition()
{
  result = type metadata singleton initialization cache for Apple_Workout_SwimBikeRunWorkoutComposition;
  if (!type metadata singleton initialization cache for Apple_Workout_SwimBikeRunWorkoutComposition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_SwimBikeRunWorkoutComposition()
{
  type metadata accessor for [Apple_Workout_WorkoutConfiguration]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Apple_Workout_WorkoutConfiguration]()
{
  if (!lazy cache variable for type metadata for [Apple_Workout_WorkoutConfiguration])
  {
    type metadata accessor for Apple_Workout_WorkoutConfiguration();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Apple_Workout_WorkoutConfiguration]);
    }
  }
}

uint64_t Apple_Workout_SwimBikeRunWorkoutComposition.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_WorkoutConfiguration();
        lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition() + 24);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_SwimBikeRunWorkoutComposition.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Workout_WorkoutConfiguration(), lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_SwimBikeRunWorkoutComposition.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition() + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SwimBikeRunWorkoutComposition.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition();
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_SwimBikeRunWorkoutComposition@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_SwimBikeRunWorkoutComposition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_SwimBikeRunWorkoutComposition;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_SwimBikeRunWorkoutComposition@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_SwimBikeRunWorkoutComposition._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_SwimBikeRunWorkoutComposition()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_SwimBikeRunWorkoutComposition()
{
  lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_SwimBikeRunWorkoutComposition()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_SwimBikeRunWorkoutComposition.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_b1_B13ConfigurationV_Tt1g5(*a1, *a2))
  {
    v4 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition();
    v5 = *(v4 + 24);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        if (*v6 == *v8 && v7 == v9)
        {
          goto LABEL_9;
        }

        v11 = v4;
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v4 = v11;
        if (v12)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v9)
    {
LABEL_9:
      v13 = *(v4 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized WorkoutAlertValidating.validateRangeValue(_:_:)(double a1, double a2)
{
  if (a1 <= 0.0 || a2 <= 0.0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v5 = xmmword_23B6784C0;
    v4 = v5 + 1;
  }

  else
  {
    if (a1 < a2)
    {
      return;
    }

    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    v3 = v2;
    v4 = (v2 + 16);
    *v3 = 0;
    v3[1] = 0;
  }

  *v4 = 3;
  swift_willThrow();
}

{
  sub_23B5ED754(a1, a2);
}

{
  sub_23B5ED754(a1, a2);
}

{
  sub_23B5ED754(a1, a2);
}

uint64_t SpeedThresholdAlert.init(target:metric:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SpeedThresholdAlert(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t SpeedRangeAlert.init(target:metric:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  outlined init with take of ClosedRange<Measurement<NSUnitSpeed>>(a1, a3, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  result = type metadata accessor for SpeedRangeAlert(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t type metadata accessor for SpeedThresholdAlert(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpeedThresholdAlert.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SpeedThresholdAlert.target.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SpeedThresholdAlert.metric.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SpeedThresholdAlert(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SpeedThresholdAlert.metric.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SpeedThresholdAlert(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t static SpeedThresholdAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSUnitSpeed();
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v4 = type metadata accessor for SpeedThresholdAlert(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t type metadata accessor for NSUnitSpeed()
{
  result = lazy cache variable for type metadata for NSUnitSpeed;
  if (!lazy cache variable for type metadata for NSUnitSpeed)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitSpeed);
  }

  return result;
}

uint64_t SpeedThresholdAlert.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for SpeedThresholdAlert(0);
  return MEMORY[0x23EEA0D50](*(v0 + *(v1 + 20)));
}

Swift::Int SpeedThresholdAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for SpeedThresholdAlert(0);
  MEMORY[0x23EEA0D50](*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SpeedThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSUnitSpeed();
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpeedThresholdAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpeedThresholdAlert(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpeedThresholdAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance SpeedThresholdAlert()
{
  return protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance SpeedThresholdAlert();
}

{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

uint64_t protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance SpeedThresholdAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  result = Measurement.value.getter();
  if (v1 <= 0.0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v2 = xmmword_23B6784C0;
    *(v2 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t static WorkoutAlert<>.speed(_:unit:metric:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for NSUnitSpeed();
  v6 = a1;
  Measurement.init(value:unit:)();
  result = type metadata accessor for SpeedThresholdAlert(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t outlined assign with take of ClosedRange<Measurement<NSUnitSpeed>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SpeedRangeAlert.metric.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SpeedRangeAlert(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SpeedRangeAlert.metric.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SpeedRangeAlert(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t static SpeedRangeAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v5 = type metadata accessor for SpeedRangeAlert(0);
    v6 = *(a1 + *(v5 + 20)) ^ *(a2 + *(v5 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t SpeedRangeAlert.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v2 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for SpeedRangeAlert(0);
  return MEMORY[0x23EEA0D50](*(v1 + *(v3 + 20)));
}

Swift::Int SpeedRangeAlert.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v2 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for SpeedRangeAlert(0);
  MEMORY[0x23EEA0D50](*(v1 + *(v3 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SpeedRangeAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v7 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpeedRangeAlert(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v3 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpeedRangeAlert(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEA0D50](*(v4 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpeedRangeAlert(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v4 + *(a2 + 20)));
  return Hasher._finalize()();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance SpeedRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  Measurement.value.getter();
  v2 = v1;
  v3 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36);
  Measurement.value.getter();
  specialized WorkoutAlertValidating.validateRangeValue(_:_:)(v2, v4);
}

uint64_t static WorkoutAlert<>.speed(_:unit:metric:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v30[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v30[-v19];
  v31 = *a2;
  type metadata accessor for NSUnitSpeed();
  v21 = a1;
  Measurement.init(value:unit:)();
  v22 = v21;
  Measurement.init(value:unit:)();
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = v6;
    v25 = v14[4];
    v25(v12, v20, v13);
    v25(&v12[*(v24 + 48)], v17, v13);
    outlined init with copy of ClosedRange<Measurement<NSUnitSpeed>>(v12, v9, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
    v26 = *(v24 + 48);
    v25(a3, v9, v13);
    v27 = v14[1];
    v27(&v9[v26], v13);
    outlined init with take of ClosedRange<Measurement<NSUnitSpeed>>(v12, v9, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
    v28 = *(v24 + 48);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
    v25(&a3[*(v29 + 36)], &v9[v28], v13);
    v27(v9, v13);
    result = type metadata accessor for SpeedRangeAlert(0);
    a3[*(result + 20)] = v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ClosedRange<Measurement<NSUnitSpeed>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of ClosedRange<Measurement<NSUnitSpeed>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for SpeedThresholdAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, type metadata accessor for SpeedThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, type metadata accessor for SpeedThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for SpeedRangeAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, type metadata accessor for SpeedRangeAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, type metadata accessor for SpeedRangeAlert);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Measurement<NSUnitSpeed>()
{
  if (!lazy cache variable for type metadata for Measurement<NSUnitSpeed>)
  {
    type metadata accessor for NSUnitSpeed();
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Measurement<NSUnitSpeed>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for SpeedThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for ClosedRange<Measurement<NSUnitSpeed>>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitSpeed>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitSpeed>>);
    }
  }
}

void type metadata completion function for Apple_Workout_WorkoutPlan()
{
  type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutPlan.OneOf_Content?, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutRoute?, type metadata accessor for Apple_Workout_WorkoutRoute);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [String](319, &lazy cache variable for type metadata for String?, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}