uint64_t type metadata accessor for WorkoutPlan.Workout(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutPlan()
{
  type metadata accessor for WorkoutPlan.Workout(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutPlan.Route?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for [UUID]?();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for WorkoutPlan.Workout()
{
  result = type metadata accessor for SingleGoalWorkout();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CustomWorkout();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PacerWorkout();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SingleGoalWorkout()
{
  result = type metadata singleton initialization cache for SingleGoalWorkout;
  if (!type metadata singleton initialization cache for SingleGoalWorkout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SingleGoalWorkout()
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKWorkoutSessionLocationType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKWorkoutSwimmingLocationType(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WorkoutGoal();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for HKWorkoutSwimmingLocationType(uint64_t a1, unint64_t *a2)
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

uint64_t type metadata accessor for WorkoutGoal()
{
  result = type metadata singleton initialization cache for WorkoutGoal;
  if (!type metadata singleton initialization cache for WorkoutGoal)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutGoal()
{
  type metadata accessor for (Double, NSUnitLength)(319, &lazy cache variable for type metadata for (Double, NSUnitLength), &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (Double, NSUnitLength)(319, &lazy cache variable for type metadata for (Double, NSUnitDuration), &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (Double, NSUnitLength)(319, &lazy cache variable for type metadata for (Double, NSUnitEnergy), &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for (Measurement<NSUnitLength>, Measurement<NSUnitDuration>)();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (Double, NSUnitLength)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    _sSo14NSUnitDurationCMaTm_0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for NSUnitDuration(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo14NSUnitDurationCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo14NSUnitDurationCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t storeEnumTagSinglePayload for WorkoutPlan.Route(uint64_t result, int a2, int a3)
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

void type metadata accessor for (Measurement<NSUnitLength>, Measurement<NSUnitDuration>)()
{
  if (!lazy cache variable for type metadata for (Measurement<NSUnitLength>, Measurement<NSUnitDuration>))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Measurement<NSUnitLength>, Measurement<NSUnitDuration>));
    }
  }
}

uint64_t type metadata accessor for CustomWorkout()
{
  result = type metadata singleton initialization cache for CustomWorkout;
  if (!type metadata singleton initialization cache for CustomWorkout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CustomWorkout()
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKWorkoutSessionLocationType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WorkoutStep?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for [IntervalBlock], &type metadata for IntervalBlock, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for WorkoutStep?()
{
  if (!lazy cache variable for type metadata for WorkoutStep?)
  {
    type metadata accessor for WorkoutStep();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WorkoutStep?);
    }
  }
}

uint64_t type metadata accessor for WorkoutStep()
{
  result = type metadata singleton initialization cache for WorkoutStep;
  if (!type metadata singleton initialization cache for WorkoutStep)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutStep()
{
  type metadata accessor for WorkoutGoal();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutAlert?();
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

void type metadata accessor for WorkoutAlert?()
{
  if (!lazy cache variable for type metadata for WorkoutAlert?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WorkoutAlert?);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata accessor for PacerWorkout()
{
  result = type metadata singleton initialization cache for PacerWorkout;
  if (!type metadata singleton initialization cache for PacerWorkout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PacerWorkout()
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKWorkoutSessionLocationType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutGoal();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for WorkoutPlan.Route?()
{
  if (!lazy cache variable for type metadata for WorkoutPlan.Route?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WorkoutPlan.Route?);
    }
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

void type metadata accessor for [UUID]?()
{
  if (!lazy cache variable for type metadata for [UUID]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UUID]?);
    }
  }
}

void *_sSo28HKWorkoutSessionLocationTypeVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B5E91F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B5E9288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5E9384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5E948C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5E9588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5E9690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23B5E9790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_23B5E98B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B5E9930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23B5E99AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for WorkoutStep();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_23B5E9A50(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for WorkoutStep();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5E9F48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for CustomWorkout() + 32));
}

uint64_t sub_23B5EA00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23B5EA0D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B5EA1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EA29C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EA3A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EA4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EA5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23B5EA6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV6TargetOwet_0(uint64_t a1, int a2)
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

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV6TargetOwst_0(uint64_t result, int a2, int a3)
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

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV6TargetOwug_0(uint64_t a1)
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

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV6TargetOwui_0(uint64_t result, int a2)
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

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueV0D4UnitOwet_0(uint64_t a1, int a2)
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

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueV0D4UnitOwst_0(uint64_t result, int a2, int a3)
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

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueV0D4UnitOwug_0(uint64_t a1)
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

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueV0D4UnitOwui_0(uint64_t result, int a2)
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

uint64_t sub_23B5EA928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23B5EAA80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23B5EACD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23B5EAD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23B5EADC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_23B5EAE84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_23B5EAF3C(uint64_t result)
{
  *(result + 16) = 0x3FF0000000000000;
  *result = 1;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_23B5EAFCC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B5EB00C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B5EB054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutPlan(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23B5EB1A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WorkoutPlan(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23B5EB410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EB50C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EB614(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EB710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EB818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23B5EB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23B5EB920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EBA1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EBB24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EBC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EBD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23B5EBE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23B5EC000(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[8];

  return v14(v15, a2, v13);
}

uint64_t sub_23B5EC154(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t _s10WorkoutKit26CompositionValidationErrorOwet_0(uint64_t a1, int a2)
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

uint64_t _s10WorkoutKit26CompositionValidationErrorOwst_0(uint64_t result, int a2, int a3)
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

uint64_t _s10WorkoutKit26CompositionValidationErrorOwug_0(uint64_t a1)
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

uint64_t _s10WorkoutKit26CompositionValidationErrorOwui_0(uint64_t result, int a2)
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

uint64_t sub_23B5EC4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23B5EC5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_23B5EC7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PacerWorkout() + 24);

  return outlined init with copy of WorkoutGoal(v3, a2);
}

uint64_t sub_23B5EC820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PacerWorkout() + 28);

  return outlined init with copy of WorkoutGoal(v3, a2);
}

uint64_t sub_23B5EC894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutGoal();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_23B5EC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WorkoutGoal();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_23B5EC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutGoal();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23B5ECA5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutGoal();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_23B5ECB18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23B5ECB30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B5ECBDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ECC80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5ECD7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5ECF7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B5ED028(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ED0CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_23B5ED248(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23B5ED3CC(uint64_t result)
{
  *(result + 16) = 0x3FF0000000000000;
  *result = 2;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_23B5ED3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23B5ED4E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 32);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_23B5ED604(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B5ED6B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ED7CC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_23B5ED950(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23B5EDAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for WorkoutGoal();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23B5EDB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for WorkoutGoal();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23B5EDBE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WorkoutPlan.Workout(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_23B5EDD6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for WorkoutPlan.Workout(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for UUID();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t HKWorkout.workoutPlan.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](HKWorkout.workoutPlan.getter, 0, 0);
}

uint64_t HKWorkout.workoutPlan.getter()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanVSgMd, &_s10WorkoutKit0A4PlanVSgMR);
  *v4 = v0;
  v4[1] = HKWorkout.workoutPlan.getter;
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x5074756F6B726F77, 0xEB000000006E616CLL, partial apply for closure #1 in HKWorkout.workoutPlan.getter, v2, v5);
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](HKWorkout.workoutPlan.getter, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void closure #1 in HKWorkout.workoutPlan.getter(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedInstance];
  v15 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v9);
  (*(v5 + 16))(v8, a1, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in HKWorkout.workoutPlan.getter;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  [v14 retrieveWorkoutCompositionFromWorkoutUUID:isa completion:v19];
  _Block_release(v19);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in closure #1 in HKWorkout.workoutPlan.getter(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v30 = a1;
  v7 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = type metadata accessor for WorkoutPlan(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v29 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanVSgMd, &_s10WorkoutKit0A4PlanVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v29 - v24;
  if (a3)
  {
    v31 = a3;
    v26 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v29[1] = a4;
    if (a2 >> 60 == 15)
    {
      (*(v15 + 56))(v25, 1, 1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
      return CheckedContinuation.resume(returning:)();
    }

    else
    {
      v28 = v30;
      outlined copy of Data._Representation(v30, a2);
      static WorkoutPlan.protoComposition(from:)(v28, a2, v13);
      outlined init with copy of Apple_Workout_WorkoutPlan(v13, v11, type metadata accessor for Apple_Workout_WorkoutPlan);
      WorkoutPlan.init(from:)(v11, v19);
      outlined destroy of Apple_Workout_WorkoutPlan(v13, type metadata accessor for Apple_Workout_WorkoutPlan);
      outlined init with take of WorkoutPlan(v19, v21);
      outlined init with copy of Apple_Workout_WorkoutPlan(v21, v25, type metadata accessor for WorkoutPlan);
      (*(v15 + 56))(v25, 0, 1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      outlined consume of Data?(v30, a2);
      return outlined destroy of Apple_Workout_WorkoutPlan(v21, type metadata accessor for WorkoutPlan);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  outlined consume of Data?(v4, v9);
}

uint64_t HKWorkout.deserializeWorkoutPlan()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = [v1 metadata];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x800000023B67EEA0), (v15 & 1) == 0))
  {

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v14, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v19 = 1;
    return swift_willThrow();
  }

  v16 = v20;
  v17 = v21;
  static WorkoutPlan.protoComposition(from:)(v20, v21, v10);
  if (!v2)
  {
    outlined init with copy of Apple_Workout_WorkoutPlan(v10, v8, type metadata accessor for Apple_Workout_WorkoutPlan);
    WorkoutPlan.init(from:)(v8, a1);
    outlined destroy of Apple_Workout_WorkoutPlan(v10, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  return outlined consume of Data._Representation(v16, v17);
}

unint64_t lazy protocol witness table accessor for type ImportError and conformance ImportError()
{
  result = lazy protocol witness table cache variable for type ImportError and conformance ImportError;
  if (!lazy protocol witness table cache variable for type ImportError and conformance ImportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportError and conformance ImportError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HKWorkoutActivityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HKWorkoutActivityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for WKPrivateMetadataKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WKPrivateMetadataKeys(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type HKWorkoutActivityType and conformance HKWorkoutActivityType(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t partial apply for closure #1 in closure #1 in HKWorkout.workoutPlan.getter(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in closure #1 in HKWorkout.workoutPlan.getter(a1, a2, a3, v8);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with take of WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for Apple_Workout_CadenceAlert()
{
  type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget()
{
  result = type metadata accessor for Apple_Workout_CadenceValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_CadenceRange(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_CadenceAlert(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_CadenceRange()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_CadenceValue?, type metadata accessor for Apple_Workout_CadenceValue);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for Apple_Workout_CadenceValue()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_TimeValue?, type metadata accessor for Apple_Workout_TimeValue);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_CadenceAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_CadenceAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cadenceSingleTarget";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cadenceRangeTarget";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_CadenceValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_CadenceValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "steps";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_CadenceRange._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_CadenceRange._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minCadence";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxCadence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_HeartRateAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_HeartRateAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zoneTarget";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "heartRateRangeTarget";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_HeartRateRange._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_HeartRateRange._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minHeartRate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxHeartRate";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metric";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "speedAlert";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cadenceAlert";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "powerAlert";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "heartRateAlert";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutAlert.Metric._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutAlert.Metric._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23B678DE0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "UNKNOWN_METRIC";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "AVERAGE_SPEED";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CURRENT_SPEED";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CURRENT_CADENCE";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CURRENT_POWER";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CURRENT_HEART_RATE";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "AVERAGE_POWER";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutAlert.Target._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutAlert.Target._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_ALERT_TARGET_TYPE";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VALUE";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RANGE";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ZONE";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_DistanceValue.DistanceUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_DistanceValue.DistanceUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23B678DD0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "METERS";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "KILOMETERS";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "FEET";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "YARDS";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "MILES";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_TimeValue.TimeUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_TimeValue.TimeUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SECONDS";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MINUTES";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "HOURS";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_EnergyValue.EnergyUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_EnergyValue.EnergyUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KILOCALORIES";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "KILOJOULES";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutConfiguration._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutConfiguration._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "swimmingLocation";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Internal_ScheduledWorkoutPlan._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Internal_ScheduledWorkoutPlan._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "plan";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scheduledTimestamp";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "lastCompletedTimestamp";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PowerAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PowerAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "powerSingleTarget";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "powerRangeTarget";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "zoneTarget";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PowerValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PowerValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "power";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PowerValue.PowerUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PowerValue.PowerUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WATTS";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PowerRange._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PowerRange._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minPower";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxPower";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_SpeedAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_SpeedAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "speedSingleTarget";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speedRangeTarget";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PacerWorkoutComposition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PacerWorkoutComposition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "distance";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "time";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutGoal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutGoal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B67CAE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeValue";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "energyValue";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distanceValue";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "poolSwimDistanceWithTimeValue";
  *(v15 + 8) = 29;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutGoal.GoalType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutGoal.GoalType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TIME";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ENERGY";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISTANCE";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "OPEN";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DISTANCE_WITH_TIME";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_RoutePoint._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_RoutePoint._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "coordinate";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "altitude";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutRoute._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutRoute._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "routePoints";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "routeSnapshot";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_CustomWorkoutComposition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_CustomWorkoutComposition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23B678DD0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "activity";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "location";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "warmup";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "blocks";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "cooldown";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutStep._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutStep._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "goal";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alert";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayName";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_IntervalBlock._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_IntervalBlock._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "steps";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iterations";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_IntervalStep._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_IntervalStep._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "purpose";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "step";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_IntervalStep.Purpose._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_IntervalStep.Purpose._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WORK";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "RECOVERY";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_GoalWorkoutComposition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_GoalWorkoutComposition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "swimmingLocation";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "goal";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_SwimBikeRunWorkoutComposition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_SwimBikeRunWorkoutComposition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "subConfigurations";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutPlan._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutPlan._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23B67E560;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 9;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 10;
  *v9 = "goalComposition";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 11;
  *v11 = "customComposition";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 13;
  *v13 = "pacerComposition";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 14;
  *v15 = "swimBikeRunComposition";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 100;
  *v17 = "route";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 101;
  *v19 = "referenceId";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 102;
  *v21 = "alternativeUUIDs";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 1000;
  *v22 = "majorVersion";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 1001;
  *v24 = "minorVersion";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 1002;
  *v26 = "privateVersion";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutPlan.Version._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutPlan.Version._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "V1";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
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
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v14, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_CadenceValue(v14, v22, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
    outlined init with take of Apple_Workout_CadenceValue(v22, v20, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v20, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
      v33 = v48;
    }

    else
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_CadenceValue(v20, v44, type metadata accessor for Apple_Workout_CadenceValue);
      outlined init with take of Apple_Workout_CadenceValue(v35, v28, type metadata accessor for Apple_Workout_CadenceValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  }

  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, v36, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v36, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_CadenceValue(v36, v43, type metadata accessor for Apple_Workout_CadenceValue);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v42, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_CadenceValue(v39, v40, type metadata accessor for Apple_Workout_CadenceValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
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
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v14, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_CadenceValue(v14, v22, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
    outlined init with take of Apple_Workout_CadenceValue(v22, v20, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_CadenceValue(v20, v44, type metadata accessor for Apple_Workout_CadenceRange);
      outlined init with take of Apple_Workout_CadenceValue(v35, v28, type metadata accessor for Apple_Workout_CadenceRange);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v20, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
  }

  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, v36, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v36, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_CadenceValue(v36, v43, type metadata accessor for Apple_Workout_CadenceRange);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v42, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_CadenceValue(v39, v40, type metadata accessor for Apple_Workout_CadenceRange);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Apple_Workout_CadenceAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v3, &v15 - v10, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v12 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Apple_Workout_CadenceAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Apple_Workout_CadenceAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v11, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Apple_Workout_CadenceAlert(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v8, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Apple_Workout_CadenceValue(v8, v12, type metadata accessor for Apple_Workout_CadenceValue);
    lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v12, type metadata accessor for Apple_Workout_CadenceValue);
  }

  result = outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v8, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_CadenceAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v8, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_CadenceValue(v8, v12, type metadata accessor for Apple_Workout_CadenceRange);
    lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v12, type metadata accessor for Apple_Workout_CadenceRange);
  }

  result = outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v8, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_CadenceAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_CadenceAlert(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_CadenceAlert;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_CadenceAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_CadenceAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_CadenceAlert()
{
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_CadenceValue.decodeMessage<A>(decoder:)()
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

    else if (result == 2)
    {
      closure #2 in Apple_Workout_CadenceValue.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_CadenceValue.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_CadenceValue(0) + 24);
  type metadata accessor for Apple_Workout_TimeValue(0);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_CadenceValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_CadenceValue.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Apple_Workout_CadenceValue(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Apple_Workout_CadenceValue(0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1 + *(v14 + 24), v8, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v8, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  outlined init with take of Apple_Workout_CadenceValue(v8, v13, type metadata accessor for Apple_Workout_TimeValue);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v13, type metadata accessor for Apple_Workout_TimeValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_CadenceValue@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Workout_TimeValue(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_CadenceAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_CadenceAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_CadenceValue(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_CadenceValue;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_CadenceValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_CadenceValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_CadenceValue()
{
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)()
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
      closure #1 in Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_CadenceRange(0) + 20);
  type metadata accessor for Apple_Workout_CadenceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_CadenceRange(0) + 24);
  type metadata accessor for Apple_Workout_CadenceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_CadenceRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_CadenceRange.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_CadenceRange.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_CadenceRange(0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1 + *(v14 + 20), v8, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v8, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  }

  outlined init with take of Apple_Workout_CadenceValue(v8, v13, type metadata accessor for Apple_Workout_CadenceValue);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v13, type metadata accessor for Apple_Workout_CadenceValue);
}

uint64_t closure #2 in Apple_Workout_CadenceRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_CadenceRange(0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1 + *(v14 + 24), v8, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v8, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  }

  outlined init with take of Apple_Workout_CadenceValue(v8, v13, type metadata accessor for Apple_Workout_CadenceValue);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v13, type metadata accessor for Apple_Workout_CadenceValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_CadenceRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_CadenceRange@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_CadenceRange(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_CadenceRange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_CadenceAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_CadenceRange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_CadenceAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_CadenceRange()
{
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_CadenceAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_CadenceValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t specialized static Apple_Workout_CadenceRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v35 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v34 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSg_ADtMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v37 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v38 = v14;
  v20 = *(v37 + 20);
  v21 = *(v14 + 48);
  v40 = a1;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1 + v20, v19, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  v41 = a2;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a2 + v20, &v19[v21], &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v19, v13, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v24 = v36;
      outlined init with take of Apple_Workout_CadenceValue(&v19[v21], v36, type metadata accessor for Apple_Workout_CadenceValue);
      v25 = specialized static Apple_Workout_CadenceValue.== infix(_:_:)(v13, v24);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v24, type metadata accessor for Apple_Workout_CadenceValue);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v13, type metadata accessor for Apple_Workout_CadenceValue);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v19, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v13, type metadata accessor for Apple_Workout_CadenceValue);
LABEL_6:
    v23 = v19;
LABEL_14:
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v23, &_s10WorkoutKit06Apple_A13_CadenceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSg_ADtMR);
    goto LABEL_15;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v19, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
LABEL_8:
  v26 = *(v37 + 24);
  v27 = *(v38 + 48);
  v28 = v39;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v40 + v26, v39, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v41 + v26, v28 + v27, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if (v22(v28, 1, v4) == 1)
  {
    if (v22((v28 + v27), 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v30 & 1;
    }

    goto LABEL_13;
  }

  v29 = v35;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, v35, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if (v22((v28 + v27), 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v29, type metadata accessor for Apple_Workout_CadenceValue);
LABEL_13:
    v23 = v28;
    goto LABEL_14;
  }

  v32 = v36;
  outlined init with take of Apple_Workout_CadenceValue(v28 + v27, v36, type metadata accessor for Apple_Workout_CadenceValue);
  v33 = specialized static Apple_Workout_CadenceValue.== infix(_:_:)(v29, v32);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v32, type metadata accessor for Apple_Workout_CadenceValue);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v29, type metadata accessor for Apple_Workout_CadenceValue);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v28, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if (v33)
  {
    goto LABEL_18;
  }

LABEL_15:
  v30 = 0;
  return v30 & 1;
}

uint64_t specialized static Apple_Workout_CadenceAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, &v24 - v16, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a2, &v17[v18], &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v17, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_CadenceAlert(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v17, v12, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v12, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
LABEL_6:
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v17, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_CadenceValue(&v17[v18], v8, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  v21 = specialized static Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v8, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v12, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v17, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_CadenceValue.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_TimeValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 24);
  v21 = *(v13 + 48);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v18 + v20, v16, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v19 + v20, &v16[v21], &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v16, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
LABEL_11:
      v26 = *(v27[0] + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v16, v12, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v12, type metadata accessor for Apple_Workout_TimeValue);
LABEL_7:
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v16, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of Apple_Workout_CadenceValue(&v16[v21], v8, type metadata accessor for Apple_Workout_TimeValue);
  v25 = static Apple_Workout_TimeValue.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v8, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v12, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v16, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetO_AEtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(a1, &v31 - v22);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(a2, &v23[v24]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v23, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Apple_Workout_CadenceValue(&v23[v24], v7, type metadata accessor for Apple_Workout_CadenceRange);
      v25 = specialized static Apple_Workout_CadenceRange.== infix(_:_:)(v16, v7);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v7, type metadata accessor for Apple_Workout_CadenceRange);
      v26 = v16;
      v27 = type metadata accessor for Apple_Workout_CadenceRange;
LABEL_9:
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v26, v27);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v23, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
      return v25 & 1;
    }

    v28 = type metadata accessor for Apple_Workout_CadenceRange;
    v29 = v16;
  }

  else
  {
    outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v23, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Apple_Workout_CadenceValue(&v23[v24], v11, type metadata accessor for Apple_Workout_CadenceValue);
      v25 = specialized static Apple_Workout_CadenceValue.== infix(_:_:)(v18, v11);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v11, type metadata accessor for Apple_Workout_CadenceValue);
      v26 = v18;
      v27 = type metadata accessor for Apple_Workout_CadenceValue;
      goto LABEL_9;
    }

    v28 = type metadata accessor for Apple_Workout_CadenceValue;
    v29 = v18;
  }

  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v29, v28);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v23, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetO_AEtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of ClosedRange<Measurement<NSUnitFrequency>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static HeartRateRangeAlert.== infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  result = 0;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t HeartRateRangeAlert.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int HeartRateRangeAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance HeartRateRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  result = 0;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateRangeAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HeartRateRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateRangeAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance HeartRateRangeAlert()
{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance HeartRateRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  Measurement.value.getter();
  v2 = v1;
  v3 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  Measurement.value.getter();
  specialized WorkoutAlertValidating.validateRangeValue(_:_:)(v2, v4);
}

uint64_t static WorkoutAlert<>.heartRate(_:unit:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  type metadata accessor for NSUnitFrequency();
  v19 = a1;
  Measurement.init(value:unit:)();
  v20 = v19;
  Measurement.init(value:unit:)();
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v22 = v4;
    v23 = v12[4];
    v23(v10, v18, v11);
    v23(&v10[*(v22 + 48)], v16, v11);
    outlined init with copy of ClosedRange<Measurement<NSUnitFrequency>>(v10, v8, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v24 = *(v22 + 48);
    v23(a2, v8, v11);
    v25 = v12[1];
    v25(&v8[v24], v11);
    outlined init with take of ClosedRange<Measurement<NSUnitFrequency>>(v10, v8, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v26 = *(v22 + 48);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
    v23(&a2[*(v27 + 36)], &v8[v26], v11);
    return (v25)(v8, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for NSUnitFrequency()
{
  result = lazy cache variable for type metadata for NSUnitFrequency;
  if (!lazy cache variable for type metadata for NSUnitFrequency)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitFrequency);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ClosedRange<Measurement<NSUnitFrequency>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of ClosedRange<Measurement<NSUnitFrequency>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int HeartRateZoneAlert.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateZoneAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateZoneAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance HeartRateZoneAlert()
{
  v1 = *v0;
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance HeartRateZoneAlert()
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

uint64_t instantiation function for generic protocol witness table for HeartRateRangeAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert, type metadata accessor for HeartRateRangeAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert, type metadata accessor for HeartRateRangeAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for HeartRateRangeAlert()
{
  result = type metadata singleton initialization cache for HeartRateRangeAlert;
  if (!type metadata singleton initialization cache for HeartRateRangeAlert)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for HeartRateZoneAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HeartRateZoneAlert and conformance HeartRateZoneAlert();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type HeartRateZoneAlert and conformance HeartRateZoneAlert();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateZoneAlert and conformance HeartRateZoneAlert()
{
  result = lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert;
  if (!lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert;
  if (!lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert;
  if (!lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert);
  }

  return result;
}

void type metadata completion function for HeartRateRangeAlert()
{
  type metadata accessor for ClosedRange<Measurement<NSUnitFrequency>>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for ClosedRange<Measurement<NSUnitFrequency>>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitFrequency>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitFrequency>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for HeartRateZoneAlert(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateZoneAlert(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError()
{
  result = lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError;
  if (!lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int IntervalStep.Purpose.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalStep.Purpose()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalStep.Purpose()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

uint64_t IntervalStep.step.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntervalStep() + 20);

  return outlined init with copy of WorkoutStep(v3, a1);
}

uint64_t type metadata accessor for IntervalStep()
{
  result = type metadata singleton initialization cache for IntervalStep;
  if (!type metadata singleton initialization cache for IntervalStep)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutStep();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IntervalStep.step.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntervalStep() + 20);

  return outlined assign with take of WorkoutStep(a1, v3);
}

uint64_t outlined assign with take of WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutStep();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IntervalStep.init(_:step:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = type metadata accessor for IntervalStep();
  return outlined init with take of WorkoutStep(a2, &a3[*(v5 + 20)], type metadata accessor for WorkoutStep);
}

uint64_t IntervalStep.init(_:goal:alert:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  v8 = &a4[*(type metadata accessor for IntervalStep() + 20)];
  v9 = type metadata accessor for WorkoutStep();
  v10 = v8 + *(v9 + 20);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = (v8 + *(v9 + 24));
  *v11 = 0;
  v11[1] = 0;
  outlined init with take of WorkoutStep(a2, v8, type metadata accessor for WorkoutGoal);
  result = outlined assign with take of WorkoutAlert?(a3, v10, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  *a4 = v7;
  return result;
}

uint64_t static IntervalStep.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(type metadata accessor for IntervalStep() + 20);

  return static WorkoutStep.== infix(_:_:)(&a1[v6], &a2[v6]);
}

uint64_t closure #1 in IntervalStep.protoRepresentation.getter(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v32 - v6;
  v8 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(type metadata accessor for Apple_Workout_IntervalStep(0) + 20);
  v15 = *(a1 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Apple_Workout_IntervalStep._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = Apple_Workout_IntervalStep._StorageClass.init(copying:)(v17);
    *(a1 + v14) = v17;
  }

  swift_beginAccess();
  *(v17 + 16) = v13;
  *(v17 + 24) = 1;
  v21 = type metadata accessor for IntervalStep();
  v22 = &a2[*(v21 + 20)];
  MEMORY[0x28223BE20](v21);
  v32[-2] = v23;
  lazy protocol witness table accessor for type IntervalStep and conformance IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep);
  static Message.with(_:)();
  v24 = *(a1 + v14);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a1 + v14);
  if ((v25 & 1) == 0)
  {
    v27 = type metadata accessor for Apple_Workout_IntervalStep._StorageClass(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v26 = Apple_Workout_IntervalStep._StorageClass.init(copying:)(v26);
    *(a1 + v14) = v26;
  }

  outlined init with take of WorkoutStep(v12, v7, type metadata accessor for Apple_Workout_WorkoutStep);
  (*(v9 + 56))(v7, 0, 1, v8);
  v30 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  outlined assign with take of WorkoutAlert?(v7, v26 + v30, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  return swift_endAccess();
}

uint64_t IntervalStep.hash(into:)()
{
  MEMORY[0x23EEA0D50](*v0);
  v1 = &v0[*(type metadata accessor for IntervalStep() + 20)];
  return WorkoutStep.hash(into:)();
}

Swift::Int IntervalStep.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  v1 = &v0[*(type metadata accessor for IntervalStep() + 20)];
  WorkoutStep.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IntervalStep(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return static WorkoutStep.== infix(_:_:)(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalStep(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v1);
  v3 = &v1[*(a1 + 20)];
  WorkoutStep.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IntervalStep(uint64_t a1, uint64_t a2)
{
  MEMORY[0x23EEA0D50](*v2);
  v4 = &v2[*(a2 + 20)];
  return WorkoutStep.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalStep(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v2);
  v4 = &v2[*(a2 + 20)];
  WorkoutStep.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type IntervalStep.Purpose and conformance IntervalStep.Purpose()
{
  result = lazy protocol witness table cache variable for type IntervalStep.Purpose and conformance IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type IntervalStep.Purpose and conformance IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStep.Purpose and conformance IntervalStep.Purpose);
  }

  return result;
}

uint64_t type metadata completion function for IntervalStep()
{
  result = type metadata accessor for WorkoutStep();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalStep.Purpose(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervalStep.Purpose(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IntervalStep and conformance IntervalStep(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of WorkoutStep(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of WorkoutAlert?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11[-v6];
  *a1 = 5;
  *(a1 + 8) = 1;
  *(a1 + 16) = 2;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v12 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v7, a1 + *(v9 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_HeartRateRange(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v7, a1, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v4 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue);
  static Message.with(_:)();
  v9 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v10 = *(v9 + 20);
  outlined destroy of Apple_Workout_HeartRateValue?(a1 + v10);
  outlined init with take of Apple_Workout_HeartRateValue(v8, a1 + v10);
  v11 = *(v5 + 56);
  v11(a1 + v10, 0, 1, v4);
  v15 = v17;
  static Message.with(_:)();
  v12 = *(v9 + 24);
  outlined destroy of Apple_Workout_HeartRateValue?(a1 + v12);
  outlined init with take of Apple_Workout_HeartRateValue(v8, a1 + v12);
  return (v11)(a1 + v12, 0, 1, v4);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v8 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v9 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v10 = [v8 initWithSymbol:v9 converter:v7];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v12 = v11;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v12;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  v8 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v9 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v10 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v11 = [v9 initWithSymbol:v10 converter:v8];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v13 = v12;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v13;
  return result;
}

uint64_t closure #1 in static Apple_Workout_HeartRateAlert.zoneAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11[-v6];
  *a1 = 5;
  *(a1 + 8) = 1;
  *(a1 + 16) = 3;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v12 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v7, a1 + *(v9 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.zoneAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_ZoneValue(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v7, a1, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
}

_DWORD *partial apply for closure #1 in closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.zoneAlert(_:)(_DWORD *result)
{
  v2 = *(v1 + 16);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_HeartRateValue?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WKPercentileAnalytics.min.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 16);
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v2 < MEMORY[0x23EEA0C00](v4))
    {
      return 0;
    }
  }

  else if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v5 = *(v0 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v8 = *(v0 + 16);
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x23EEA0C00](v8);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x23EEA0B80](0, v5);

    goto LABEL_13;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);

LABEL_13:
    v7 = *(v6 + 24);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t WKPercentileAnalytics.max.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 16);
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v2 < MEMORY[0x23EEA0C00](v4))
    {
      return 0;
    }
  }

  else if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v5 = *(v0 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v9 = *(v0 + 16);
    }

    else
    {
      v9 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x23EEA0C00](v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v7 = MEMORY[0x23EEA0B80](v6, v5);

    goto LABEL_15;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 8 * v6 + 32);

LABEL_15:
    v8 = *(v7 + 24);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t WKPercentileAnalytics.p50.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v0 + 16);
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v9 = *(v0 + 16);
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v0 = MEMORY[0x23EEA0C00](v9);
      }

      else
      {
        v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEA0B80](v3, v2);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        if (*(v4 + 32) == 0.5)
        {

          v7 = *(v4 + 24);

          return v7;
        }

        ++v3;
        if (v5 == v0)
        {
          goto LABEL_16;
        }
      }

      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 < v1)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (v1 < 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 < MEMORY[0x23EEA0C00](v8))
      {
        return 0;
      }
    }

    v4 = *(v2 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t WKPercentileAnalytics.p90.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v0 + 16);
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v9 = *(v0 + 16);
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v0 = MEMORY[0x23EEA0C00](v9);
      }

      else
      {
        v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEA0B80](v3, v2);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        if (*(v4 + 32) == 0.9)
        {

          v7 = *(v4 + 24);

          return v7;
        }

        ++v3;
        if (v5 == v0)
        {
          goto LABEL_16;
        }
      }

      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 < v1)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (v1 < 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 < MEMORY[0x23EEA0C00](v8))
      {
        return 0;
      }
    }

    v4 = *(v2 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t WKPercentileAnalytics.p95.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v0 + 16);
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v9 = *(v0 + 16);
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v0 = MEMORY[0x23EEA0C00](v9);
      }

      else
      {
        v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEA0B80](v3, v2);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        if (*(v4 + 32) == 0.95)
        {

          v7 = *(v4 + 24);

          return v7;
        }

        ++v3;
        if (v5 == v0)
        {
          goto LABEL_16;
        }
      }

      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 < v1)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (v1 < 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 < MEMORY[0x23EEA0C00](v8))
      {
        return 0;
      }
    }

    v4 = *(v2 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t WKPercentileAnalytics.p99.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v0 + 16);
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v9 = *(v0 + 16);
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v0 = MEMORY[0x23EEA0C00](v9);
      }

      else
      {
        v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEA0B80](v3, v2);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        if (*(v4 + 32) == 0.99)
        {

          v7 = *(v4 + 24);

          return v7;
        }

        ++v3;
        if (v5 == v0)
        {
          goto LABEL_16;
        }
      }

      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 < v1)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (v1 < 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 < MEMORY[0x23EEA0C00](v8))
      {
        return 0;
      }
    }

    v4 = *(v2 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t WKPercentileAnalytics.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  WKPercentileAnalytics.reset()();
  return v0;
}

uint64_t WKPercentileAnalytics.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  WKPercentileAnalytics.reset()();
  return v0;
}

Swift::Void __swiftcall WKPercentileAnalytics.reset()()
{
  v14 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for WKPercentileAnalytics.Marker();
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0x3FF0000000000000;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v2 = *(v14 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = xmmword_23B678800;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v4 = *(v14 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = xmmword_23B678810;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v6 = *(v14 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = xmmword_23B678820;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v8 = *(v14 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = xmmword_23B678830;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v10 = *(v14 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = xmmword_23B678840;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v12 = *(v14 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v13 = *(v0 + 16);
  *(v0 + 16) = v14;

  *(v0 + 24) = 0;
}

Swift::Void __swiftcall WKPercentileAnalytics.addSamples(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 32);
    do
    {
      v3 = *v2++;
      WKPercentileAnalytics.addSample(_:)(v3);
      --v1;
    }

    while (v1);
  }
}

Swift::Void __swiftcall WKPercentileAnalytics.addSample(_:)(Swift::Double a1)
{
  v3 = v1;
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  if (v5 >> 62)
  {
    goto LABEL_36;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v4 >= *(v6 + 16))
  {
    goto LABEL_40;
  }

LABEL_3:
  v4 = *(v3 + 16);
  v2 = *(v3 + 24);
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2 < v6)
      {
        v7 = a1;
        v2 = *(v4 + 8 * v2 + 32);

        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  while (1)
  {
    v7 = a1;

    v2 = MEMORY[0x23EEA0B80](v2, v4);

LABEL_7:
    *(v2 + 24) = v7;

    v6 = *(v3 + 24);
    v4 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_46;
    }

    v6 = *(v3 + 16);
    if (v6 >> 62)
    {
LABEL_48:
      if (v6 < 0)
      {
        v28 = v6;
      }

      else
      {
        v28 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      if (v4 != MEMORY[0x23EEA0C00](v28))
      {
        goto LABEL_41;
      }
    }

    else if (v4 != *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v8 = *(v3 + 16);
    if (v8 >> 62)
    {
      v29 = v8 < 0 ? *(v3 + 16) : v8 & 0xFFFFFFFFFFFFFF8;
      v9 = MEMORY[0x23EEA0C00](v29);
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      break;
    }

LABEL_22:
    v31 = v10;

    specialized MutableCollection<>.sort(by:)(&v31);

    v2 = v31;
    v4 = *(v3 + 16);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v30 = *(v3 + 16);
      }

      else
      {
        v30 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = MEMORY[0x23EEA0C00](v30);
    }

    else
    {
      v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v17)
    {
      v18 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x23EEA0B80](v18, v4);
        }

        else
        {
          v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18 >= v5)
          {
            goto LABEL_35;
          }

          v19 = *(v4 + 8 * v18 + 32);
        }

        v21 = v18 + 1;
        *(v20 + 16) = v18 + 1;
        v5 = *(v2 + 16);
        if (v18 >= v5)
        {
          break;
        }

        *(v20 + 24) = *(v2 + 32 + 8 * v18);

        ++v18;
        if (v17 == v21)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      if ((v5 & 0x8000000000000000) != 0)
      {
        v22 = v5;
      }

      else
      {
        v22 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = a1;
      v24 = MEMORY[0x23EEA0C00](v22);
      a1 = v23;
      if (v4 < v24)
      {
        goto LABEL_3;
      }

LABEL_40:
      v4 = v3;
      WKPercentileAnalytics.update(with:)(a1);
    }

    else
    {
LABEL_33:
    }

LABEL_41:
    v25 = *(v3 + 24);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      *(v3 + 24) = v27;
      return;
    }

    __break(1u);
  }

  v31 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v10 = v31;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x23EEA0B80](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = *(v12 + 24);

      v31 = v10;
      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v10 = v31;
      }

      ++v11;
      *(v10 + 2) = v16 + 1;
      *&v10[8 * v16 + 32] = v14;
    }

    while (v9 != v11);

    goto LABEL_22;
  }

  __break(1u);

  __break(1u);
}

uint64_t WKPercentileAnalytics.update(with:)(double a1)
{
  v4 = *(v1 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_136;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_138;
  }

  v5 = *(v4 + 32);

  while (1)
  {
    v6 = *(v5 + 24);

    v4 = *(v1 + 16);
    if (v6 <= a1)
    {
      if (v4 >> 62)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          v72 = *(v1 + 16);
        }

        else
        {
          v72 = v4 & 0xFFFFFFFFFFFFFF8;
        }

        v73 = MEMORY[0x23EEA0C00](v72);
        v5 = v73 - 1;
        if (!__OFSUB__(v73, 1))
        {
LABEL_11:
          v4 = *(v1 + 16);
          if ((v4 & 0xC000000000000001) != 0)
          {
            goto LABEL_157;
          }

          if (v5 < 0)
          {
            __break(1u);
          }

          else if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v4 + 8 * v5 + 32);

            goto LABEL_15;
          }

          __break(1u);
          goto LABEL_160;
        }
      }

      else
      {
        v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v5 = v8 - 1;
        if (!__OFSUB__(v8, 1))
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_156;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_149:

    v7 = MEMORY[0x23EEA0B80](0, v4);

LABEL_8:
    *(v7 + 24) = a1;

LABEL_37:
    v4 = 1;
LABEL_38:
    v2 = *(v1 + 16);
    if (v2 >> 62)
    {
LABEL_138:
      if (v2 < 0)
      {
        v70 = v2;
      }

      else
      {
        v70 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = MEMORY[0x23EEA0C00](v70);
    }

    else
    {
      v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v19)
    {
      goto LABEL_53;
    }

    v20 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x23EEA0B80](v20, v2);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_52:
        __break(1u);
LABEL_53:

        v27 = *(v1 + 16);
        if (!(v27 >> 62))
        {
          result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v28 = result - 1;
          if (!__OFSUB__(result, 1))
          {
            goto LABEL_55;
          }

LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (v27 < 0)
        {
          v71 = *(v1 + 16);
        }

        else
        {
          v71 = v27 & 0xFFFFFFFFFFFFFF8;
        }

        result = MEMORY[0x23EEA0C00](v71);
        v28 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_147;
        }

LABEL_55:
        if (v28 >= 1)
        {
          if (v28 == 1)
          {
            return result;
          }

          v4 = 0;
          v29 = result - 2;
          a1 = -1.0;
          while (2)
          {
            v30 = v4 + 1;
            v31 = *(v1 + 16);
            if ((v31 & 0xC000000000000001) != 0)
            {
              v38 = *(v1 + 16);

              v32 = MEMORY[0x23EEA0B80](v4 + 1, v31);

              if (v4 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_113;
              }

              v33 = (v32 + 16);
              v34 = *(v32 + 40) - *(v32 + 16);
            }

            else
            {
              if (v30 < 0)
              {
                goto LABEL_112;
              }

              if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_114;
              }

              v32 = *(v31 + 8 * v4 + 40);
              v33 = (v32 + 16);
              v34 = *(v32 + 40) - *(v32 + 16);
            }

            v35 = *(v1 + 16);
            if ((v35 & 0xC000000000000001) != 0)
            {
              v39 = *(v1 + 16);

              v36 = MEMORY[0x23EEA0B80](v4, v35);

              if (v34 > -1.0)
              {
                goto LABEL_69;
              }
            }

            else
            {
              if (v30 < 1)
              {
                goto LABEL_115;
              }

              if (v4 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v36 = *(v35 + 8 * v4 + 32);

              if (v34 > -1.0)
              {
LABEL_69:
                v37 = 0;
                goto LABEL_75;
              }
            }

            v40 = *(v36 + 16);
            v25 = __OFSUB__(v40, *v33);
            v41 = v40 - *v33;
            if (v25)
            {
              goto LABEL_120;
            }

            v37 = v41 < -1;
LABEL_75:
            v42 = v4 + 2;
            v43 = *(v1 + 16);
            if ((v43 & 0xC000000000000001) != 0)
            {
              v45 = *(v1 + 16);

              v44 = MEMORY[0x23EEA0B80](v4 + 2, v43);

              if (v34 < 1.0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              if ((v42 & 0x8000000000000000) != 0)
              {
                goto LABEL_117;
              }

              if (v42 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v44 = *(v43 + 8 * v4 + 48);

              if (v34 < 1.0)
              {
LABEL_79:
                if (v37)
                {
                  goto LABEL_87;
                }

LABEL_59:

                goto LABEL_60;
              }
            }

            v46 = *(v44 + 16);
            v25 = __OFSUB__(v46, *v33);
            v47 = v46 - *v33;
            if (v25)
            {
              goto LABEL_121;
            }

            v48 = v47 > 1 || v37;
            if ((v48 & 1) == 0)
            {
              goto LABEL_59;
            }

LABEL_87:
            v49 = v34 / fabs(v34);
            if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_122;
            }

            if (v49 <= -9.22337204e18)
            {
              goto LABEL_123;
            }

            if (v49 >= 9.22337204e18)
            {
              goto LABEL_124;
            }

            v50 = *(v44 + 16);
            v51 = *v33;
            v52 = v50 - *v33;
            if (__OFSUB__(v50, *v33))
            {
              goto LABEL_125;
            }

            v53 = v49;
            if (__OFSUB__(v52, v49))
            {
              goto LABEL_126;
            }

            v54 = *(v36 + 16);
            v25 = __OFSUB__(v51, v54);
            v55 = v51 - v54;
            if (v25)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v55, v53))
            {
              goto LABEL_128;
            }

            v25 = __OFSUB__(v50, v54);
            v56 = v50 - v54;
            if (v25)
            {
              goto LABEL_129;
            }

            v57 = *(v36 + 24);
            v58 = *(v44 + 24);
            v59 = *(v32 + 24) + v53 / v56 * ((*(v32 + 24) - v57) * (v52 - v49) / v55 + (v58 - *(v32 + 24)) * (v55 + v53) / v52);
            if (v57 < v59 && v59 < v58)
            {

              v67 = *v33;
            }

            else
            {
              v25 = __OFADD__(v30, v53);
              v61 = v30 + v53;
              if (v25)
              {
                goto LABEL_131;
              }

              v62 = *(v1 + 16);
              if ((v62 & 0xC000000000000001) != 0)
              {
                v69 = *(v1 + 16);

                v63 = MEMORY[0x23EEA0B80](v61, v62);
              }

              else
              {
                if ((v61 & 0x8000000000000000) != 0)
                {
                  goto LABEL_132;
                }

                if (v61 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_134;
                }

                v63 = *(v62 + 8 * v61 + 32);
              }

              v64 = *(v32 + 24);
              v65 = *(v63 + 24);
              v66 = *(v63 + 16);

              v67 = *v33;
              if (__OFSUB__(v66, *v33))
              {
                goto LABEL_133;
              }

              v59 = v64 + (v65 - v64) * v53 / (v66 - *v33);
            }

            *(v32 + 24) = v59;
            v25 = __OFADD__(v67, v53);
            v68 = v67 + v53;
            if (v25)
            {
              goto LABEL_130;
            }

            *v33 = v68;
LABEL_60:

            if (v29 == ++v4)
            {
              return result;
            }

            continue;
          }
        }

LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

LABEL_46:
      *(v22 + 40) = *(v22 + 32) + *(v22 + 40);
      if (v20 >= v4)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_119;
        }

        *(v22 + 16) = v26;
      }

      ++v20;
      if (v23 == v19)
      {
        goto LABEL_53;
      }
    }

    if (v20 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v2 + 8 * v20 + 32);

      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_52;
      }

      goto LABEL_46;
    }

    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:

    v5 = MEMORY[0x23EEA0B80](0, v4);
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 32);

    goto LABEL_8;
  }

LABEL_156:
  __break(1u);
LABEL_157:

  v9 = MEMORY[0x23EEA0B80](v5, v4);

LABEL_15:
  v10 = *(v9 + 24);

  v5 = *(v1 + 16);
  v11 = v5 >> 62;
  if (v10 <= a1)
  {
    goto LABEL_29;
  }

  if (!v11)
  {
    v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_160:
  if (v5 < 0)
  {
    v74 = v5;
  }

  else
  {
    v74 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  v12 = MEMORY[0x23EEA0C00](v74);
LABEL_18:

  if (!v12)
  {
LABEL_36:

    goto LABEL_37;
  }

  v4 = 0;
  while (2)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x23EEA0B80](v4, v5);
      v15 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_28;
      }

LABEL_23:
      v16 = *(v14 + 24);

      if (v16 > a1)
      {

        goto LABEL_38;
      }

      ++v4;
      if (v15 == v12)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_135;
  }

  v13 = *(v5 + 8 * v4 + 32);

  v15 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  if (!v11)
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_31;
    }

LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  if (v5 < 0)
  {
    v75 = v5;
  }

  else
  {
    v75 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x23EEA0C00](v75);
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_169;
  }

LABEL_31:
  v5 = *(v1 + 16);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_170:

    v18 = MEMORY[0x23EEA0B80](v4, v5);

    goto LABEL_35;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v5 + 8 * v4 + 32);

LABEL_35:
    *(v18 + 24) = a1;

    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t WKPercentileAnalytics.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WKPercentileAnalytics.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit12IntervalStepVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit12IntervalStepVGMR, type metadata accessor for IntervalStep);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D14_IntervalBlockVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D14_IntervalBlockVGMR, type metadata accessor for Apple_Workout_IntervalBlock);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_d1_D13ConfigurationVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_d1_D13ConfigurationVGMR, type metadata accessor for Apple_Workout_WorkoutConfiguration);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D13_IntervalStepVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D13_IntervalStepVGMR, type metadata accessor for Apple_Workout_IntervalStep);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D11_RoutePointVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D11_RoutePointVGMR, type metadata accessor for Apple_Workout_RoutePoint);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit13IntervalBlockVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit13IntervalBlockVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit011SwimBikeRunD0V8ActivityOGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit011SwimBikeRunD0V8ActivityOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit10RoutePointVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit10RoutePointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size(v17);
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

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unint64_t Apple_Workout_WorkoutAlert.workoutKitRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v3 = *v1;
  if (*v1 <= 1)
  {
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else if ((v3 - 2) < 4)
  {
    LOBYTE(v2) = 0;
  }

  if (*(v1 + 24) != 1)
  {
LABEL_10:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  v4 = *(v1 + 16);
  if (v4 <= 1)
  {
    if (v4)
    {
      v7 = v2;
      return Apple_Workout_WorkoutAlert.workoutKitTargetRepresentation(alertMetric:)(&v7, a1);
    }

    goto LABEL_10;
  }

  if (v4 != 2)
  {
    return Apple_Workout_WorkoutAlert.workoutKitZoneRepresentation(alertMetric:)(a1);
  }

  v8 = v2;
  return Apple_Workout_WorkoutAlert.workoutKitRangedRepresentation(alertMetric:)(&v8, a1);
}

uint64_t Apple_Workout_WorkoutAlert.workoutKitTargetRepresentation(alertMetric:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v134 = a1;
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v132 = &v114 - v5;
  v6 = type metadata accessor for Apple_Workout_PowerValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v125 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_PowerAlert(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v133 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v114 = *(v12 - 8);
  v115 = v12;
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v12);
  v123 = &v114 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v130 = &v114 - v17;
  v120 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v18 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v121 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v131 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v116 = *(v23 - 8);
  v117 = v23;
  v24 = *(v116 + 64);
  MEMORY[0x28223BE20](v23);
  v118 = &v114 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v119 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v124 = &v114 - v30;
  v31 = type metadata accessor for Apple_Workout_TimeValue(0);
  v127 = *(v31 - 8);
  v128 = v31;
  v32 = *(v127 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v122 = (&v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v36 = &v114 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v114 - v39;
  v41 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v114 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v49 = &v114 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v114 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v114 - v53;
  v55 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = &v114 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 8) != 1)
  {
    goto LABEL_10;
  }

  v59 = *v134;
  v60 = *v2;
  if (*v2 > 3)
  {
    if (v60 == 5)
    {
      goto LABEL_34;
    }

    v64 = *v134;
    v65 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v2 + *(v65 + 24), v49, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v66 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v66 - 8) + 48))(v49, 1, v66) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v49, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_34;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v73 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
      v74 = v49;
      goto LABEL_33;
    }

    v68 = v133;
    outlined init with take of Apple_Workout_PowerAlert(v49, v133, type metadata accessor for Apple_Workout_PowerAlert);
    v69 = v132;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v68, v132, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v70 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v68, type metadata accessor for Apple_Workout_PowerAlert);
      v71 = &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd;
      v72 = &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR;
LABEL_22:
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v69, v71, v72);
      goto LABEL_34;
    }

    if (!swift_getEnumCaseMultiPayload())
    {
      v83 = v125;
      outlined init with take of Apple_Workout_PowerAlert(v69, v125, type metadata accessor for Apple_Workout_PowerValue);
      v84 = *(v83 + 16);
      v85 = [objc_opt_self() watts];
      v86 = type metadata accessor for PowerThresholdAlert(0);
      v87 = v126;
      v126[3] = v86;
      v87[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, type metadata accessor for PowerThresholdAlert);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
      type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
      Measurement.init(value:unit:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v83, type metadata accessor for Apple_Workout_PowerValue);
      result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v68, type metadata accessor for Apple_Workout_PowerAlert);
      *(boxed_opaque_existential_1 + *(v86 + 20)) = v64;
      return result;
    }

    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v68, type metadata accessor for Apple_Workout_PowerAlert);
    v80 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget;
LABEL_32:
    v73 = v80;
    v74 = v69;
    goto LABEL_33;
  }

  if ((v60 - 1) >= 2)
  {
    if (!v60)
    {
LABEL_10:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v67 = 0;
      return swift_willThrow();
    }

    v75 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v2 + *(v75 + 24), v52, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v76 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v76 - 8) + 48))(v52, 1, v76) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v52, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_34;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v73 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
      v74 = v52;
      goto LABEL_33;
    }

    v77 = v131;
    outlined init with take of Apple_Workout_PowerAlert(v52, v131, type metadata accessor for Apple_Workout_CadenceAlert);
    v69 = v130;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v77, v130, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    v78 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
    if ((*(*(v78 - 8) + 48))(v69, 1, v78) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v77, type metadata accessor for Apple_Workout_CadenceAlert);
      v71 = &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd;
      v72 = &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR;
      goto LABEL_22;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v93 = v121;
      outlined init with take of Apple_Workout_PowerAlert(v69, v121, type metadata accessor for Apple_Workout_CadenceValue);
      v94 = v119;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v93 + *(v120 + 24), v119, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      v95 = v128;
      v96 = *(v127 + 48);
      if (v96(v94, 1, v128) == 1)
      {
        v97 = v122;
        *v122 = 0;
        *(v97 + 8) = 1;
        v97[2] = 0;
        v98 = v97 + *(v95 + 24);
        UnknownStorage.init()();
        v99 = v96(v94, 1, v95);
        v100 = v129;
        v101 = v123;
        if (v99 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v94, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
        }
      }

      else
      {
        v97 = v122;
        outlined init with take of Apple_Workout_PowerAlert(v94, v122, type metadata accessor for Apple_Workout_TimeValue);
        v100 = v129;
        v101 = v123;
      }

      v109 = *(v97 + 2);
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v97, type metadata accessor for Apple_Workout_TimeValue);
      if (v109 <= 0.0)
      {
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v113 = 1;
        swift_willThrow();
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v93, type metadata accessor for Apple_Workout_CadenceValue);
        return outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v77, type metadata accessor for Apple_Workout_CadenceAlert);
      }

      else
      {
        Apple_Workout_CadenceValue.measurement.getter(v101);
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v93, type metadata accessor for Apple_Workout_CadenceValue);
        result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v77, type metadata accessor for Apple_Workout_CadenceAlert);
        if (!v100)
        {
          v110 = type metadata accessor for CadenceThresholdAlert(0);
          v111 = v126;
          v126[3] = v110;
          v111[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, type metadata accessor for CadenceThresholdAlert);
          v112 = __swift_allocate_boxed_opaque_existential_1(v111);
          return (*(v114 + 32))(v112, v101, v115);
        }
      }

      return result;
    }

    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v77, type metadata accessor for Apple_Workout_CadenceAlert);
    v80 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget;
    goto LABEL_32;
  }

  v61 = *v134;
  v62 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v2 + *(v62 + 24), v54, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v63 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v63 - 8) + 48))(v54, 1, v63) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v54, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
LABEL_34:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v81 = 1;
    return swift_willThrow();
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v73 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
    v74 = v54;
LABEL_33:
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v74, v73);
    goto LABEL_34;
  }

  outlined init with take of Apple_Workout_PowerAlert(v54, v58, type metadata accessor for Apple_Workout_SpeedAlert);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v58, v40, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v79 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  if ((*(*(v79 - 8) + 48))(v40, 1, v79) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v58, type metadata accessor for Apple_Workout_SpeedAlert);
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v40, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    goto LABEL_34;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v58, type metadata accessor for Apple_Workout_SpeedAlert);
    v73 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget;
    v74 = v40;
    goto LABEL_33;
  }

  outlined init with take of Apple_Workout_PowerAlert(v40, v44, type metadata accessor for Apple_Workout_SpeedValue);
  v89 = v124;
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v44[*(v41 + 24)], v124, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v90 = v128;
  v91 = *(v127 + 48);
  if (v91(v89, 1, v128) == 1)
  {
    *v36 = 0;
    v36[8] = 1;
    *(v36 + 2) = 0;
    v92 = &v36[*(v90 + 24)];
    UnknownStorage.init()();
    if (v91(v89, 1, v90) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v89, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_PowerAlert(v89, v36, type metadata accessor for Apple_Workout_TimeValue);
  }

  v102 = *(v36 + 2);
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v36, type metadata accessor for Apple_Workout_TimeValue);
  if (v102 <= 0.0)
  {
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v108 = 1;
    swift_willThrow();
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v44, type metadata accessor for Apple_Workout_SpeedValue);
    return outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v58, type metadata accessor for Apple_Workout_SpeedAlert);
  }

  else
  {
    v103 = v118;
    v104 = v129;
    Apple_Workout_SpeedValue.measurement.getter(v118);
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v44, type metadata accessor for Apple_Workout_SpeedValue);
    result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v58, type metadata accessor for Apple_Workout_SpeedAlert);
    if (!v104)
    {
      v105 = type metadata accessor for SpeedThresholdAlert(0);
      v106 = v126;
      v126[3] = v105;
      v106[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, type metadata accessor for SpeedThresholdAlert);
      v107 = __swift_allocate_boxed_opaque_existential_1(v106);
      result = (*(v116 + 32))(v107, v103, v117);
      *(v107 + *(v105 + 20)) = v61;
    }
  }

  return result;
}

uint64_t Apple_Workout_WorkoutAlert.workoutKitRangedRepresentation(alertMetric:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v442 = a2;
  v460 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v409 = &v375 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v407 = &v375 - v6;
  v435 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v408 = *(v435 - 8);
  v7 = *(v408 + 64);
  v8 = MEMORY[0x28223BE20](v435);
  v414 = (&v375 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v413 = (&v375 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v449 = &v375 - v13;
  v433 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v14 = *(*(v433 - 8) + 64);
  MEMORY[0x28223BE20](v433);
  v440 = &v375 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v453 = &v375 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
  v19 = *(*(v428 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v428);
  v427 = &v375 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v425 = &v375 - v22;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v426 = *(v436 - 8);
  v23 = *(v426 + 64);
  v24 = MEMORY[0x28223BE20](v436);
  v434 = &v375 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v447 = &v375 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v431 = &v375 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v429 = &v375 - v31;
  v446 = type metadata accessor for Apple_Workout_PowerValue(0);
  v456 = *(v446 - 8);
  v32 = *(v456 + 64);
  v33 = MEMORY[0x28223BE20](v446);
  v432 = &v375 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v430 = (&v375 - v35);
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v36 = *(*(v424 - 8) + 64);
  MEMORY[0x28223BE20](v424);
  v444 = &v375 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v458 = &v375 - v40;
  v445 = type metadata accessor for Apple_Workout_PowerRange(0);
  v41 = *(*(v445 - 8) + 64);
  MEMORY[0x28223BE20](v445);
  v457 = &v375 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Apple_Workout_PowerAlert(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v459 = &v375 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
  v46 = *(*(v417 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v417);
  v418 = &v375 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v416 = &v375 - v49;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v419 = *(v420 - 8);
  v50 = *(v419 + 64);
  v51 = MEMORY[0x28223BE20](v420);
  v406 = &v375 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v405 = &v375 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v384 = &v375 - v56;
  MEMORY[0x28223BE20](v55);
  v392 = &v375 - v57;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v58 = *(*(v415 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v415);
  v423 = &v375 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v381 = &v375 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v383 = &v375 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v391 = &v375 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v412 = &v375 - v69;
  MEMORY[0x28223BE20](v68);
  v404 = &v375 - v70;
  v437 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v439 = *(v437 - 8);
  v71 = *(v439 + 64);
  v72 = MEMORY[0x28223BE20](v437);
  v382 = &v375 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v390 = &v375 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v396 = &v375 - v77;
  MEMORY[0x28223BE20](v76);
  v411 = &v375 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v448 = &v375 - v81;
  v422 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v82 = *(*(v422 - 8) + 64);
  MEMORY[0x28223BE20](v422);
  v438 = &v375 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  v85 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84 - 8);
  v450 = &v375 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
  v87 = *(*(v380 - 8) + 64);
  v88 = MEMORY[0x28223BE20](v380);
  v379 = &v375 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v378 = &v375 - v90;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v385 = *(v389 - 8);
  v91 = *(v385 + 64);
  v92 = MEMORY[0x28223BE20](v389);
  v388 = &v375 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v398 = &v375 - v94;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  v95 = *(*(v376 - 8) + 64);
  MEMORY[0x28223BE20](v376);
  v377 = &v375 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v98 = *(*(v97 - 8) + 64);
  v99 = MEMORY[0x28223BE20](v97 - 8);
  v397 = &v375 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x28223BE20](v99);
  v403 = &v375 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v401 = &v375 - v104;
  MEMORY[0x28223BE20](v103);
  v421 = &v375 - v105;
  v455 = type metadata accessor for Apple_Workout_TimeValue(0);
  v452 = *(v455 - 8);
  v106 = *(v452 + 64);
  v107 = MEMORY[0x28223BE20](v455);
  v395 = (&v375 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = MEMORY[0x28223BE20](v107);
  v410 = (&v375 - v110);
  v111 = MEMORY[0x28223BE20](v109);
  v400 = (&v375 - v112);
  MEMORY[0x28223BE20](v111);
  v114 = &v375 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v116 = *(*(v115 - 8) + 64);
  v117 = MEMORY[0x28223BE20](v115 - 8);
  v387 = &v375 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x28223BE20](v117);
  v393 = &v375 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v402 = &v375 - v122;
  MEMORY[0x28223BE20](v121);
  v124 = &v375 - v123;
  v441 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v454 = *(v441 - 8);
  v125 = *(v454 + 64);
  v126 = MEMORY[0x28223BE20](v441);
  v386 = &v375 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = MEMORY[0x28223BE20](v126);
  v394 = &v375 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v399 = &v375 - v131;
  MEMORY[0x28223BE20](v130);
  v133 = &v375 - v132;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v135 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134 - 8);
  v137 = &v375 - v136;
  v138 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v139 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v451 = &v375 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v142 = *(*(v141 - 8) + 64);
  v143 = MEMORY[0x28223BE20](v141 - 8);
  v145 = &v375 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = MEMORY[0x28223BE20](v143);
  v148 = &v375 - v147;
  v149 = MEMORY[0x28223BE20](v146);
  v151 = &v375 - v150;
  MEMORY[0x28223BE20](v149);
  v153 = &v375 - v152;
  v154 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  v155 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154 - 8);
  v157 = &v375 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v461 + 8) != 1)
  {
    goto LABEL_12;
  }

  v158 = *v460;
  v159 = *v461;
  if (*v461 <= 3)
  {
    if ((v159 - 1) < 2)
    {
      v160 = v157;
      LODWORD(v460) = *v460;
      v161 = v461;
      v162 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v161[*(v162 + 24)], v153, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      v163 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
      if ((*(*(v163 - 8) + 48))(v153, 1, v163) == 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v153, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
LABEL_62:
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v247 = 1;
        return swift_willThrow();
      }

      if (swift_getEnumCaseMultiPayload())
      {
        v175 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
        v176 = v153;
LABEL_61:
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v176, v175);
        goto LABEL_62;
      }

      outlined init with take of Apple_Workout_PowerAlert(v153, v160, type metadata accessor for Apple_Workout_SpeedAlert);
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v160, v137, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
      v185 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
      if ((*(*(v185 - 8) + 48))(v137, 1, v185) == 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v160, type metadata accessor for Apple_Workout_SpeedAlert);
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v137, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
        goto LABEL_62;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v160, type metadata accessor for Apple_Workout_SpeedAlert);
        v175 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget;
        v176 = v137;
        goto LABEL_61;
      }

      v197 = v451;
      outlined init with take of Apple_Workout_PowerAlert(v137, v451, type metadata accessor for Apple_Workout_SpeedRange);
      v459 = *(v138 + 20);
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v197 + v459, v124, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      v199 = v454 + 48;
      v198 = *(v454 + 48);
      v200 = v441;
      v201 = v198(v124, 1, v441);
      v461 = v198;
      v454 = v199;
      if (v201 == 1)
      {
        UnknownStorage.init()();
        v202 = *(v200 + 20);
        v203 = type metadata accessor for Apple_Workout_DistanceValue(0);
        (*(*(v203 - 8) + 56))(&v133[v202], 1, 1, v203);
        (*(v452 + 56))(&v133[*(v200 + 24)], 1, 1, v455);
        if (v198(v124, 1, v200) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v124, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
        }
      }

      else
      {
        outlined init with take of Apple_Workout_PowerAlert(v124, v133, type metadata accessor for Apple_Workout_SpeedValue);
      }

      v248 = &v133[*(v200 + 24)];
      v249 = v421;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v248, v421, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      v250 = *(v452 + 48);
      v251 = v455;
      if (v250(v249, 1, v455) == 1)
      {
        *v114 = 0;
        v114[8] = 1;
        *(v114 + 2) = 0;
        v252 = &v114[*(v251 + 24)];
        UnknownStorage.init()();
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v133, type metadata accessor for Apple_Workout_SpeedValue);
        if (v250(v249, 1, v251) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v249, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
        }
      }

      else
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v133, type metadata accessor for Apple_Workout_SpeedValue);
        outlined init with take of Apple_Workout_PowerAlert(v249, v114, type metadata accessor for Apple_Workout_TimeValue);
      }

      v253 = *(v114 + 2);
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v114, type metadata accessor for Apple_Workout_TimeValue);
      v254 = v441;
      v255 = v461;
      if (v253 <= 0.0)
      {
        goto LABEL_99;
      }

      v256 = v250;
      v458 = *(v138 + 24);
      v257 = v402;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v451 + v458, v402, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      if (v255(v257, 1, v254) == 1)
      {
        v258 = v399;
        UnknownStorage.init()();
        v259 = *(v254 + 20);
        v260 = type metadata accessor for Apple_Workout_DistanceValue(0);
        v261 = v258 + v259;
        v262 = v258;
        (*(*(v260 - 8) + 56))(v261, 1, 1, v260);
        (*(v452 + 56))(v258 + *(v254 + 24), 1, 1, v455);
        v263 = v255(v257, 1, v254);
        v264 = v401;
        if (v263 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v257, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
        }
      }

      else
      {
        v262 = v399;
        outlined init with take of Apple_Workout_PowerAlert(v257, v399, type metadata accessor for Apple_Workout_SpeedValue);
        v264 = v401;
      }

      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v262 + *(v254 + 24), v264, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      v308 = v262;
      v309 = v455;
      if (v256(v264, 1, v455) == 1)
      {
        v310 = v400;
        *v400 = 0;
        *(v310 + 8) = 1;
        v311 = v310;
        v310[2] = 0;
        v312 = v310 + *(v309 + 24);
        UnknownStorage.init()();
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v308, type metadata accessor for Apple_Workout_SpeedValue);
        if (v256(v264, 1, v309) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v264, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
        }
      }

      else
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v262, type metadata accessor for Apple_Workout_SpeedValue);
        v311 = v400;
        outlined init with take of Apple_Workout_PowerAlert(v264, v400, type metadata accessor for Apple_Workout_TimeValue);
      }

      v313 = v311[2];
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v311, type metadata accessor for Apple_Workout_TimeValue);
      v314 = v455;
      if (v313 <= 0.0)
      {
LABEL_99:
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v324 = 1;
        swift_willThrow();
LABEL_100:
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v451, type metadata accessor for Apple_Workout_SpeedRange);
        return outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v160, type metadata accessor for Apple_Workout_SpeedAlert);
      }

      v315 = v393;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v451 + v459, v393, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      if (v255(v315, 1, v254) == 1)
      {
        v316 = v394;
        UnknownStorage.init()();
        v317 = v255;
        v318 = *(v254 + 20);
        v319 = type metadata accessor for Apple_Workout_DistanceValue(0);
        (*(*(v319 - 8) + 56))(v316 + v318, 1, 1, v319);
        (*(v452 + 56))(v316 + *(v254 + 24), 1, 1, v314);
        v320 = v317;
        v321 = v317(v315, 1, v254);
        v322 = v443;
        v323 = v398;
        if (v321 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v315, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
        }
      }

      else
      {
        v320 = v255;
        v316 = v394;
        outlined init with take of Apple_Workout_PowerAlert(v315, v394, type metadata accessor for Apple_Workout_SpeedValue);
        v322 = v443;
        v323 = v398;
      }

      Apple_Workout_SpeedValue.measurement.getter(v323);
      if (v322)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v316, type metadata accessor for Apple_Workout_SpeedValue);
        goto LABEL_100;
      }

      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v316, type metadata accessor for Apple_Workout_SpeedValue);
      v339 = v387;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v451 + v458, v387, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      if (v320(v339, 1, v254) == 1)
      {
        v340 = v254;
        v341 = v386;
        UnknownStorage.init()();
        v342 = *(v340 + 20);
        v343 = type metadata accessor for Apple_Workout_DistanceValue(0);
        (*(*(v343 - 8) + 56))(v341 + v342, 1, 1, v343);
        (*(v452 + 56))(v341 + *(v340 + 24), 1, 1, v314);
        v344 = v320(v339, 1, v340);
        v345 = v341;
        v346 = v389;
        if (v344 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v339, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
        }
      }

      else
      {
        v345 = v386;
        outlined init with take of Apple_Workout_PowerAlert(v339, v386, type metadata accessor for Apple_Workout_SpeedValue);
        v346 = v389;
      }

      v353 = v388;
      Apple_Workout_SpeedValue.measurement.getter(v388);
      v443 = 0;
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v345, type metadata accessor for Apple_Workout_SpeedValue);
      lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
      v354 = v398;
      v355 = dispatch thunk of static Comparable.<= infix(_:_:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v451, type metadata accessor for Apple_Workout_SpeedRange);
      result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v160, type metadata accessor for Apple_Workout_SpeedAlert);
      if (v355)
      {
        v356 = v385;
        v357 = *(v385 + 32);
        v358 = v378;
        v357(v378, v354, v346);
        v359 = v380;
        v357((v358 + *(v380 + 48)), v353, v346);
        v360 = v379;
        outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v358, v379, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
        v461 = *(v359 + 48);
        v361 = v377;
        v357(v377, v360, v346);
        v362 = *(v356 + 8);
        v362(v461 + v360, v346);
        outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v358, v360, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
        v357(&v361[*(v376 + 36)], (v360 + *(v359 + 48)), v346);
        v362(v360, v346);
        v241 = type metadata accessor for SpeedRangeAlert(0);
        v363 = v442;
        v442[3] = v241;
        v363[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, type metadata accessor for SpeedRangeAlert);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v363);
        v244 = &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd;
        v245 = &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR;
        v246 = v361;
        goto LABEL_57;
      }

      goto LABEL_132;
    }

    if (!v159)
    {
LABEL_12:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v169 = 0;
      return swift_willThrow();
    }

    v177 = v461;
    v178 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v177[*(v178 + 24)], v151, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v179 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v179 - 8) + 48))(v151, 1, v179) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v151, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_62;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v175 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
      v176 = v151;
      goto LABEL_61;
    }

    v182 = v450;
    outlined init with take of Apple_Workout_PowerAlert(v151, v450, type metadata accessor for Apple_Workout_CadenceAlert);
    v183 = v448;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v182, v448, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    v184 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
    if ((*(*(v184 - 8) + 48))(v183, 1, v184) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v182, type metadata accessor for Apple_Workout_CadenceAlert);
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v183, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
      goto LABEL_62;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v182, type metadata accessor for Apple_Workout_CadenceAlert);
      v175 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget;
      v176 = v183;
      goto LABEL_61;
    }

    v211 = v438;
    outlined init with take of Apple_Workout_PowerAlert(v183, v438, type metadata accessor for Apple_Workout_CadenceRange);
    v461 = *(v422 + 20);
    v212 = v404;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v461 + v211, v404, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v214 = v439 + 48;
    v213 = *(v439 + 48);
    v215 = v437;
    v216 = v213(v212, 1, v437);
    v439 = v214;
    if (v216 == 1)
    {
      v217 = v411;
      *v411 = 0;
      v218 = &v217[*(v215 + 20)];
      UnknownStorage.init()();
      v219 = v455;
      (*(v452 + 56))(&v217[*(v215 + 24)], 1, 1, v455);
      v220 = v213;
      if (v213(v212, 1, v215) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v212, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      }
    }

    else
    {
      v220 = v213;
      v217 = v411;
      outlined init with take of Apple_Workout_PowerAlert(v212, v411, type metadata accessor for Apple_Workout_CadenceValue);
      v219 = v455;
    }

    v293 = v403;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v217[*(v215 + 24)], v403, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v294 = *(v452 + 48);
    if (v294(v293, 1, v219) == 1)
    {
      v295 = v410;
      *v410 = 0;
      *(v295 + 8) = 1;
      v295[2] = 0;
      v296 = v295 + *(v219 + 24);
      UnknownStorage.init()();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v217, type metadata accessor for Apple_Workout_CadenceValue);
      v297 = v294(v293, 1, v219);
      v298 = v412;
      if (v297 != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v293, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v217, type metadata accessor for Apple_Workout_CadenceValue);
      v295 = v410;
      outlined init with take of Apple_Workout_PowerAlert(v293, v410, type metadata accessor for Apple_Workout_TimeValue);
      v298 = v412;
    }

    v299 = *(v295 + 2);
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v295, type metadata accessor for Apple_Workout_TimeValue);
    v300 = v438;
    v301 = v220;
    if (v299 <= 0.0)
    {
      goto LABEL_110;
    }

    v460 = *(v422 + 24);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v460[v438], v298, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v302 = v437;
    if (v220(v298, 1, v437) == 1)
    {
      v303 = v396;
      *v396 = 0;
      v304 = &v303[*(v302 + 20)];
      UnknownStorage.init()();
      v305 = v455;
      (*(v452 + 56))(&v303[*(v302 + 24)], 1, 1, v455);
      v306 = v302;
      v307 = v303;
      if (v220(v298, 1, v306) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v298, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      }
    }

    else
    {
      v307 = v396;
      outlined init with take of Apple_Workout_PowerAlert(v298, v396, type metadata accessor for Apple_Workout_CadenceValue);
      v305 = v455;
    }

    v325 = v397;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v307[*(v437 + 24)], v397, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    if (v294(v325, 1, v305) == 1)
    {
      v326 = v395;
      *v395 = 0;
      *(v326 + 8) = 1;
      v327 = v326;
      v326[2] = 0;
      v328 = v326 + *(v305 + 24);
      UnknownStorage.init()();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v307, type metadata accessor for Apple_Workout_CadenceValue);
      v329 = v294(v325, 1, v305);
      v300 = v438;
      if (v329 != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v325, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v307, type metadata accessor for Apple_Workout_CadenceValue);
      v327 = v395;
      outlined init with take of Apple_Workout_PowerAlert(v325, v395, type metadata accessor for Apple_Workout_TimeValue);
      v300 = v438;
    }

    v330 = v327[2];
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v327, type metadata accessor for Apple_Workout_TimeValue);
    if (v330 <= 0.0)
    {
LABEL_110:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v338 = 1;
      swift_willThrow();
LABEL_111:
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v300, type metadata accessor for Apple_Workout_CadenceRange);
      return outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v182, type metadata accessor for Apple_Workout_CadenceAlert);
    }

    v331 = v391;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v461 + v300, v391, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v332 = v437;
    if (v220(v331, 1, v437) == 1)
    {
      v333 = v390;
      *v390 = 0;
      v334 = &v333[*(v332 + 20)];
      UnknownStorage.init()();
      (*(v452 + 56))(&v333[*(v332 + 24)], 1, 1, v455);
      v335 = v220(v331, 1, v332);
      v336 = v443;
      v337 = v392;
      if (v335 != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v331, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      }
    }

    else
    {
      v333 = v390;
      outlined init with take of Apple_Workout_PowerAlert(v331, v390, type metadata accessor for Apple_Workout_CadenceValue);
      v336 = v443;
      v337 = v392;
    }

    Apple_Workout_CadenceValue.measurement.getter(v337);
    if (v336)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v333, type metadata accessor for Apple_Workout_CadenceValue);
      goto LABEL_111;
    }

    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v333, type metadata accessor for Apple_Workout_CadenceValue);
    v347 = v383;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v460[v300], v383, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v348 = v437;
    if (v301(v347, 1, v437) == 1)
    {
      v349 = v382;
      *v382 = 0;
      v350 = &v349[*(v348 + 20)];
      UnknownStorage.init()();
      (*(v452 + 56))(&v349[*(v348 + 24)], 1, 1, v455);
      v351 = v301(v347, 1, v348);
      v352 = v420;
      if (v351 != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v347, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      }
    }

    else
    {
      v349 = v382;
      outlined init with take of Apple_Workout_PowerAlert(v347, v382, type metadata accessor for Apple_Workout_CadenceValue);
      v352 = v420;
    }

    v364 = v384;
    Apple_Workout_CadenceValue.measurement.getter(v384);
    v443 = 0;
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v349, type metadata accessor for Apple_Workout_CadenceValue);
    lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    v365 = v392;
    v366 = dispatch thunk of static Comparable.<= infix(_:_:)();
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v300, type metadata accessor for Apple_Workout_CadenceRange);
    result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v182, type metadata accessor for Apple_Workout_CadenceAlert);
    if ((v366 & 1) == 0)
    {
      goto LABEL_133;
    }

    v367 = v419;
    v368 = *(v419 + 32);
    v369 = v416;
    v368(v416, v365, v352);
    v370 = v417;
    v368((v369 + *(v417 + 48)), v364, v352);
    v371 = v418;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v369, v418, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v372 = *(v370 + 48);
    v368(v381, v371, v352);
    v373 = *(v367 + 8);
    v373(v371 + v372, v352);
    outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v369, v371, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v287 = v381;
    v368(&v381[*(v415 + 36)], (v371 + *(v370 + 48)), v352);
    v373(v371, v352);
    v374 = type metadata accessor for CadenceRangeAlert(0);
    v289 = v442;
    v442[3] = v374;
    v290 = &lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert;
    v291 = type metadata accessor for CadenceRangeAlert;
LABEL_80:
    v289[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(v290, v291);
    v292 = __swift_allocate_boxed_opaque_existential_1(v289);
    return outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v287, v292, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  }

  v164 = v461;
  if (v159 != 5)
  {
    LODWORD(v460) = *v460;
    v167 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v164[*(v167 + 24)], v148, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v168 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v168 - 8) + 48))(v148, 1, v168) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v148, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_62;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v175 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
      v176 = v148;
      goto LABEL_61;
    }

    v170 = v459;
    outlined init with take of Apple_Workout_PowerAlert(v148, v459, type metadata accessor for Apple_Workout_PowerAlert);
    v171 = v458;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v170, v458, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v172 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
    if ((*(*(v172 - 8) + 48))(v171, 1, v172) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v170, type metadata accessor for Apple_Workout_PowerAlert);
      v173 = &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd;
      v174 = &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR;
LABEL_24:
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v171, v173, v174);
      goto LABEL_62;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v186 = v457;
      outlined init with take of Apple_Workout_PowerAlert(v171, v457, type metadata accessor for Apple_Workout_PowerRange);
      v187 = v429;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v186 + *(v445 + 20), v429, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      v188 = v456 + 48;
      v189 = *(v456 + 48);
      v190 = v446;
      v191 = v189(v187, 1, v446);
      v456 = v188;
      if (v191 == 1)
      {
        v192 = v430;
        *v430 = 0;
        *(v192 + 8) = 1;
        v192[2] = 0;
        v193 = v192 + *(v190 + 24);
        UnknownStorage.init()();
        v194 = v189(v187, 1, v190);
        v195 = v436;
        v196 = v432;
        if (v194 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v187, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
        }
      }

      else
      {
        v192 = v430;
        outlined init with take of Apple_Workout_PowerAlert(v187, v430, type metadata accessor for Apple_Workout_PowerValue);
        v195 = v436;
        v196 = v432;
      }

      v221 = v192[2];
      v222 = objc_opt_self();
      v223 = [v222 watts];
      type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
      Measurement.init(value:unit:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v192, type metadata accessor for Apple_Workout_PowerValue);
      v224 = v431;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v457 + *(v445 + 24), v431, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      v225 = v446;
      if (v189(v224, 1, v446) == 1)
      {
        *v196 = 0;
        *(v196 + 8) = 1;
        *(v196 + 16) = 0;
        v226 = v196 + *(v225 + 24);
        UnknownStorage.init()();
        if (v189(v224, 1, v225) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v224, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
        }
      }

      else
      {
        outlined init with take of Apple_Workout_PowerAlert(v224, v196, type metadata accessor for Apple_Workout_PowerValue);
      }

      v227 = *(v196 + 16);
      v228 = [v222 watts];
      v229 = v434;
      Measurement.init(value:unit:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v196, type metadata accessor for Apple_Workout_PowerValue);
      lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
      v230 = v447;
      v231 = dispatch thunk of static Comparable.<= infix(_:_:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v457, type metadata accessor for Apple_Workout_PowerRange);
      result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v459, type metadata accessor for Apple_Workout_PowerAlert);
      if (v231)
      {
        v233 = v426;
        v234 = *(v426 + 32);
        v235 = v425;
        v234(v425, v230, v195);
        v236 = v428;
        v234((v235 + *(v428 + 48)), v229, v195);
        v237 = v427;
        outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v235, v427, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
        v238 = *(v236 + 48);
        v234(v444, v237, v195);
        v239 = *(v233 + 8);
        v239(v237 + v238, v195);
        outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v235, v237, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
        v240 = v444;
        v234(&v444[*(v424 + 36)], (v237 + *(v236 + 48)), v195);
        v239(v237, v195);
        v241 = type metadata accessor for PowerRangeAlert(0);
        v242 = v442;
        v442[3] = v241;
        v242[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, type metadata accessor for PowerRangeAlert);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v242);
        v244 = &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd;
        v245 = &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR;
        v246 = v240;
LABEL_57:
        result = outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v246, boxed_opaque_existential_1, v244, v245);
        *(boxed_opaque_existential_1 + *(v241 + 20)) = v460;
        return result;
      }

      __break(1u);
      goto LABEL_131;
    }

    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v170, type metadata accessor for Apple_Workout_PowerAlert);
    v204 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget;
LABEL_59:
    v175 = v204;
    v176 = v171;
    goto LABEL_61;
  }

  v165 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v164[*(v165 + 24)], v145, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v166 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v166 - 8) + 48))(v145, 1, v166) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v145, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    goto LABEL_62;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v175 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
    v176 = v145;
    goto LABEL_61;
  }

  v180 = v453;
  outlined init with take of Apple_Workout_PowerAlert(v145, v453, type metadata accessor for Apple_Workout_HeartRateAlert);
  v171 = v449;
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v180, v449, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v181 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v181 - 8) + 48))(v171, 1, v181) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v180, type metadata accessor for Apple_Workout_HeartRateAlert);
    v173 = &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd;
    v174 = &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR;
    goto LABEL_24;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v180, type metadata accessor for Apple_Workout_HeartRateAlert);
    v204 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget;
    goto LABEL_59;
  }

  v205 = v440;
  outlined init with take of Apple_Workout_PowerAlert(v171, v440, type metadata accessor for Apple_Workout_HeartRateRange);
  v206 = v407;
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v205 + *(v433 + 20), v407, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v207 = *(v408 + 48);
  v208 = v435;
  if (v207(v206, 1, v435) == 1)
  {
    v209 = v413;
    *v413 = 0;
    v210 = v209 + *(v208 + 20);
    UnknownStorage.init()();
    if (v207(v206, 1, v208) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v206, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    }
  }

  else
  {
    v209 = v413;
    outlined init with take of Apple_Workout_PowerAlert(v206, v413, type metadata accessor for Apple_Workout_HeartRateValue);
  }

  v265 = *v209;
  v266 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v267 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v268 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  [v267 initWithSymbol:v268 converter:v266];

  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  v269 = v405;
  Measurement.init(value:unit:)();
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v209, type metadata accessor for Apple_Workout_HeartRateValue);
  v270 = v409;
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v440 + *(v433 + 24), v409, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v271 = v435;
  if (v207(v270, 1, v435) == 1)
  {
    v272 = v414;
    *v414 = 0;
    v273 = v272 + *(v271 + 20);
    UnknownStorage.init()();
    if (v207(v270, 1, v271) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v270, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    }
  }

  else
  {
    v272 = v414;
    outlined init with take of Apple_Workout_PowerAlert(v270, v414, type metadata accessor for Apple_Workout_HeartRateValue);
  }

  v274 = *v272;
  v275 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v276 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v277 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  [v276 initWithSymbol:v277 converter:v275];

  v278 = v406;
  Measurement.init(value:unit:)();
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v272, type metadata accessor for Apple_Workout_HeartRateValue);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v279 = v420;
  LOBYTE(v277) = dispatch thunk of static Comparable.<= infix(_:_:)();
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v440, type metadata accessor for Apple_Workout_HeartRateRange);
  result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v453, type metadata accessor for Apple_Workout_HeartRateAlert);
  if (v277)
  {
    v280 = v419;
    v281 = *(v419 + 32);
    v282 = v416;
    v281(v416, v269, v279);
    v283 = v417;
    v281((v282 + *(v417 + 48)), v278, v279);
    v284 = v418;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v282, v418, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v285 = *(v283 + 48);
    v281(v423, v284, v279);
    v286 = *(v280 + 8);
    v286(v284 + v285, v279);
    outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v282, v284, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v287 = v423;
    v281(&v423[*(v415 + 36)], (v284 + *(v283 + 48)), v279);
    v286(v284, v279);
    v288 = type metadata accessor for HeartRateRangeAlert();
    v289 = v442;
    v442[3] = v288;
    v290 = &lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert;
    v291 = type metadata accessor for HeartRateRangeAlert;
    goto LABEL_80;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}